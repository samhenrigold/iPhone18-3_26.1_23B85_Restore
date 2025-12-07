uint64_t sub_297FBA53C(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  memset(v2, 0, 44);
  result = NFDriverGetControllerInfo(a1, v2);
  if (result)
  {
    if ((DWORD1(v2[0]) - 5) > 0xD)
    {
      return 0;
    }

    else
    {
      return dword_297FDB6AC[DWORD1(v2[0]) - 5];
    }
  }

  return result;
}

uint64_t NFDriverTriggerCoreDump(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = sub_297FA0380(a1, 245, 0, 0);
  if (sub_297F9F694(v1))
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to trigger core dump", "NFDriverTriggerCoreDump", 1534);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "NFDriverTriggerCoreDump";
      v9 = 1024;
      v10 = 1534;
      _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to trigger core dump", buf, 0x12u);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_297F9FBDC(v1);
  return v5;
}

uint64_t sub_297FBA6E8(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FBA79C;
  block[3] = &unk_29EE881B0;
  block[4] = &v7;
  block[5] = a1;
  v6 = a2;
  dispatch_async_and_wait(v2, block);
  v3 = *(v8 + 12);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t sub_297FBA79C(uint64_t a1)
{
  result = phLibNfc_Mgt_GetTagID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL NFDriverDisableHeadlessModeMiniNV(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i WARNING !!!\nWARNING !!!\nWriting to Mini NV to disable headless. This is not expected outside factory.\nWARNING !!!", "NFDriverDisableHeadlessModeMiniNV", 1735);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v7 = "NFDriverDisableHeadlessModeMiniNV";
    v8 = 1024;
    v9 = 1735;
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i WARNING !!!\nWARNING !!!\nWriting to Mini NV to disable headless. This is not expected outside factory.\nWARNING !!!", buf, 0x12u);
  }

  return sub_297FBA8E0(a1, 0);
}

BOOL sub_297FBA8E0(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v22 = 0;
  memset(v27, 0, 44);
  if (!NFDriverGetControllerInfo(a1, v27))
  {
    return 0;
  }

  if (DWORD1(v27[0]) <= 6)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Device does not support this feature", "_NFDriverConfigMiniNVForHeadless", 1697);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "_NFDriverConfigMiniNVForHeadless";
      v25 = 1024;
      v26 = 1697;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Device does not support this feature", buf, 0x12u);
    }

    return 0;
  }

  if (DWORD1(v27[0]) == 18)
  {
    return 1;
  }

  v9 = sub_297FBB930(a1, &v22);
  if (v22)
  {
    v10 = a2 ^ 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v12 = NFLogGetLogger();
  if ((a2 ^ 1) != v10)
  {
    if (v12)
    {
      v12(6, "%s:%i Headless mini NV already set", "_NFDriverConfigMiniNVForHeadless", 1727);
    }

    dispatch_get_specific(*v11);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "_NFDriverConfigMiniNVForHeadless";
      v25 = 1024;
      v26 = 1727;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Headless mini NV already set", buf, 0x12u);
    }

    return 1;
  }

  if (v12)
  {
    v12(6, "%s:%i Writing headless mini NV ", "_NFDriverConfigMiniNVForHeadless", 1713);
  }

  dispatch_get_specific(*v11);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "_NFDriverConfigMiniNVForHeadless";
    v25 = 1024;
    v26 = 1713;
    _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Writing headless mini NV ", buf, 0x12u);
  }

  v14 = sub_297FBA6E8(a1, 3);
  v21[0] = HIBYTE(v14);
  v21[1] = v14;
  v21[2] = 1;
  v21[3] = a2;
  v20 = sub_297FA02E4(4u, v21);
  v15 = sub_297FA0380(a1, 37025, v20, 0);
  v16 = sub_297F9F694(v15);
  v7 = v16 == 0;
  if (v16)
  {
    dispatch_get_specific(*v11);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to write miniNV", "_NFDriverConfigMiniNVForHeadless", 1721);
    }

    dispatch_get_specific(*v11);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "_NFDriverConfigMiniNVForHeadless";
      v25 = 1024;
      v26 = 1721;
      _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write miniNV", buf, 0x12u);
    }
  }

  sub_297F9FBDC(v15);
  sub_297FA0714(&v20);
  return v7;
}

BOOL NFDriverSetHeadlessMode(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x29EDCA608];
  memset(v37, 0, 44);
  if (!NFDriverGetControllerInfo(a1, v37))
  {
    return 0;
  }

  if (DWORD1(v37[0]) <= 6)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Device does not support this feature", "NFDriverSetHeadlessMode", 1754);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    *buf = 136446466;
    *&buf[4] = "NFDriverSetHeadlessMode";
    *&buf[12] = 1024;
    *&buf[14] = 1754;
    v7 = "%{public}s:%i Device does not support this feature";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_7;
  }

  if (DWORD1(v37[0]) == 18)
  {
    return 1;
  }

  if ((*(*(a1 + 24) + 588) & 0x20) != 0)
  {
    v34 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v35 = NFLogGetLogger();
    if (v35)
    {
      v35(4, "%s:%i LPEM flash writes disabled! Headless mode will not be updated on the device.", "NFDriverSetHeadlessMode", 1764);
    }

    dispatch_get_specific(*v34);
    v36 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 136446466;
    *&buf[4] = "NFDriverSetHeadlessMode";
    *&buf[12] = 1024;
    *&buf[14] = 1764;
    v7 = "%{public}s:%i LPEM flash writes disabled! Headless mode will not be updated on the device.";
    v8 = v36;
    v9 = OS_LOG_TYPE_ERROR;
LABEL_7:
    _os_log_impl(&dword_297F97000, v8, v9, v7, buf, 0x12u);
    return 1;
  }

  if ((*(a1 + 60) & 1) != 0 || *(a1 + 32) || *(a1 + 36))
  {
    if (!sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0))
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v12(4, "%s:%i Failed to stop discovery", "NFDriverSetHeadlessMode", 1772);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverSetHeadlessMode";
        *&buf[12] = 1024;
        *&buf[14] = 1772;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to stop discovery", buf, 0x12u);
      }
    }

    v14 = 1;
    if (a2)
    {
LABEL_20:
      if (sub_297FBA8E0(a1, 1))
      {
        goto LABEL_21;
      }

      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (a2)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v15 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v16 = NFLogGetLogger();
  if (v16)
  {
    if (a2)
    {
      v17 = "En";
    }

    else
    {
      v17 = "Dis";
    }

    v16(6, "%s:%i %sabling headless mode", "NFDriverSetHeadlessMode", 1780, v17);
  }

  dispatch_get_specific(*v15);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v19 = "En";
    }

    else
    {
      v19 = "Dis";
    }

    *buf = 136446722;
    *&buf[4] = "NFDriverSetHeadlessMode";
    *&buf[12] = 1024;
    *&buf[14] = 1780;
    *&buf[18] = 2080;
    *&buf[20] = v19;
    _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %sabling headless mode", buf, 0x1Cu);
  }

  v20 = sub_297F9DC04();
  pthread_mutex_lock((v20[3] + 8));
  v21 = v20[3];
  ++*v21;
  pthread_mutex_unlock((v21 + 8));
  v22 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FD5678;
  *&buf[24] = &unk_29EE88A60;
  v40 = a2;
  *&buf[32] = a1;
  v39 = v20;
  dispatch_async_and_wait(v22, buf);
  v23 = sub_297F9F694(v20);
  v10 = v23 == 0;
  if (v23)
  {
    dispatch_get_specific(*v15);
    v24 = NFLogGetLogger();
    if (v24)
    {
      if (a2)
      {
        v25 = "en";
      }

      else
      {
        v25 = "dis";
      }

      v24(4, "%s:%i failed to %sable headless mode: 0x%04llX", "NFDriverSetHeadlessMode", 1784, v25, *v20);
    }

    dispatch_get_specific(*v15);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (a2)
      {
        v27 = "en";
      }

      else
      {
        v27 = "dis";
      }

      v28 = *v20;
      *buf = 136446978;
      *&buf[4] = "NFDriverSetHeadlessMode";
      *&buf[12] = 1024;
      *&buf[14] = 1784;
      *&buf[18] = 2080;
      *&buf[20] = v27;
      *&buf[28] = 2048;
      *&buf[30] = v28;
      _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to %sable headless mode: 0x%04llX", buf, 0x26u);
    }

    v29 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FB7B1C;
    *&buf[24] = &unk_29EE880F8;
    *&buf[32] = a1;
    dispatch_async(v29, buf);
  }

  sub_297F9FBDC(v20);
  if (v14)
  {
    v30 = *(a1 + 62) ? 1 : 2;
    if (!sub_297F9D8BC(a1, *(a1 + 32), *(a1 + 36), *(a1 + 60), 0, *(a1 + 61), v30))
    {
      dispatch_get_specific(*v15);
      v31 = NFLogGetLogger();
      if (v31)
      {
        v31(3, "%s:%i Failed to update discovery", "NFDriverSetHeadlessMode", 1792);
      }

      dispatch_get_specific(*v15);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverSetHeadlessMode";
        *&buf[12] = 1024;
        *&buf[14] = 1792;
        _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update discovery", buf, 0x12u);
      }

      return 0;
    }
  }

  return v10;
}

uint64_t NFDriverGetHeadlessModeFlags(uint64_t a1, int *a2)
{
  v53 = *MEMORY[0x29EDCA608];
  memset(v42, 0, 44);
  result = NFDriverGetControllerInfo(a1, v42);
  if (!result)
  {
    return result;
  }

  if (DWORD1(v42[0]) > 6)
  {
    if (DWORD1(v42[0]) == 18)
    {
      return 0;
    }

    v8 = sub_297FBB930(a1, a2);
    v41 = -114;
    v40 = -24575;
    v39 = sub_297FA02E4(3u, &v40);
    v9 = sub_297FA02E4(0x10u, 0);
    v38 = v9;
    v10 = sub_297FA0380(a1, 37026, v39, v9);
    if (sub_297F9F694(v10))
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to read headless", "_NFDriverReadHeadless", 1665);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_NFDriverReadHeadless";
        *&buf[12] = 1024;
        *&buf[14] = 1665;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read headless", buf, 0x12u);
      }

      if (a2)
      {
        v14 = 0;
        v15 = 1;
LABEL_16:
        *a2 = v15;
        goto LABEL_49;
      }
    }

    else
    {
      if (v9)
      {
        v16 = v9[2];
        v17 = *v9;
        if (v16 >= 5 && v17)
        {
          v18 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v19 = NFLogGetLogger();
          if (v19)
          {
            v19(6, "%s:%i Headless is 0x%x (length = %d)", "_NFDriverReadHeadless", 1671, *(*v9 + 4), v9[2]);
          }

          dispatch_get_specific(*v18);
          v20 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(*v9 + 4);
            v22 = v9[2];
            *buf = 136446978;
            *&buf[4] = "_NFDriverReadHeadless";
            *&buf[12] = 1024;
            *&buf[14] = 1671;
            *&buf[18] = 1024;
            *&buf[20] = v21;
            *&buf[24] = 1024;
            *&buf[26] = v22;
            _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Headless is 0x%x (length = %d)", buf, 0x1Eu);
          }

          v14 = *(*v9 + 4);
        }

        else
        {
          v36 = v10;
          v52 = 0u;
          memset(buf, 0, sizeof(buf));
          v26 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v27 = NFLogGetLogger();
          dispatch_get_specific(*v26);
          v28 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = v9[2];
            *v43 = 136315906;
            v44 = "_NFDriverReadHeadless";
            v45 = 1024;
            v46 = 1674;
            v47 = 2082;
            v48 = "Unexpected headless reply";
            v49 = 2048;
            v50 = v29;
            _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v43, 0x26u);
          }

          v37 = v8;
          if (v27)
          {
            v27(3, "%s:%i %s %lu bytes :", "_NFDriverReadHeadless", 1674, "Unexpected headless reply", v9[2]);
          }

          if (v16)
          {
            v30 = 0;
            do
            {
              v31 = 0;
              v32 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v30)];
              do
              {
                v33 = v17[v30++];
                v34 = sprintf(v32, "0x%02X ", v33);
                if (v31 > 6)
                {
                  break;
                }

                v32 += v34;
                ++v31;
              }

              while (v30 < v16);
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v35 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *v43 = 136446210;
                v44 = buf;
                _os_log_impl(&dword_297F97000, v35, OS_LOG_TYPE_ERROR, "%{public}s", v43, 0xCu);
              }

              if (v27)
              {
                v27(3, "%s", buf);
              }
            }

            while (v30 < v16);
          }

          v14 = 0;
          if (a2)
          {
            *a2 = 8;
          }

          v8 = v37;
          v10 = v36;
        }

        goto LABEL_49;
      }

      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i Failed to read headless", "_NFDriverReadHeadless", 1668);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_NFDriverReadHeadless";
        *&buf[12] = 1024;
        *&buf[14] = 1668;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read headless", buf, 0x12u);
      }

      if (a2)
      {
        v14 = 0;
        v15 = 8;
        goto LABEL_16;
      }
    }

    v14 = 0;
LABEL_49:
    sub_297F9FBDC(v10);
    sub_297FA0714(&v39);
    sub_297FA0714(&v38);
    if (v14)
    {
      return v8 | 2;
    }

    else
    {
      return v8;
    }
  }

  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v6(6, "%s:%i Device does not support this feature", "NFDriverGetHeadlessModeFlags", 1811);
  }

  dispatch_get_specific(*v5);
  v7 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 136446466;
    *&buf[4] = "NFDriverGetHeadlessModeFlags";
    *&buf[12] = 1024;
    *&buf[14] = 1811;
    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Device does not support this feature", buf, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_297FBB930(uint64_t a1, int *a2)
{
  v49 = *MEMORY[0x29EDCA608];
  v4 = sub_297FBA6E8(a1, 3);
  v38[0] = 1;
  v38[1] = HIBYTE(v4);
  v38[2] = v4;
  v37 = sub_297FA02E4(3u, v38);
  v5 = sub_297FA02E4(0x10u, 0);
  v36 = v5;
  v6 = sub_297FA0380(a1, 37026, v37, v5);
  if (sub_297F9F694(v6))
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to read miniNV", "_NFDriverReadMiniNVForHeadless", 1635);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverReadMiniNVForHeadless";
      *&buf[12] = 1024;
      *&buf[14] = 1635;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read miniNV", buf, 0x12u);
    }

    if (a2)
    {
      v10 = 0;
      v11 = 1;
LABEL_8:
      *a2 = v11;
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  if (!v5)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(3, "%s:%i Failed to read miniNV", "_NFDriverReadMiniNVForHeadless", 1638);
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverReadMiniNVForHeadless";
      *&buf[12] = 1024;
      *&buf[14] = 1638;
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read miniNV", buf, 0x12u);
    }

    if (a2)
    {
      v10 = 0;
      v11 = 3;
      goto LABEL_8;
    }

LABEL_37:
    v10 = 0;
    goto LABEL_44;
  }

  v12 = v5[2];
  v13 = *v5;
  if (v12 < 5 || v13 == 0)
  {
    v34 = a2;
    v35 = v6;
    v48 = 0u;
    memset(buf, 0, sizeof(buf));
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v5[2];
      *v39 = 136315906;
      v40 = "_NFDriverReadMiniNVForHeadless";
      v41 = 1024;
      v42 = 1644;
      v43 = 2082;
      v44 = "Unexpected mini NV reply";
      v45 = 2048;
      v46 = v18;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v39, 0x26u);
    }

    if (v16)
    {
      v16(3, "%s:%i %s %lu bytes :", "_NFDriverReadMiniNVForHeadless", 1644, "Unexpected mini NV reply", v5[2]);
    }

    if (v12)
    {
      v19 = 0;
      do
      {
        v20 = 0;
        v21 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v19)];
        do
        {
          v22 = v13[v19++];
          v23 = sprintf(v21, "0x%02X ", v22);
          if (v20 > 6)
          {
            break;
          }

          v21 += v23;
          ++v20;
        }

        while (v19 < v12);
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v39 = 136446210;
          v40 = buf;
          _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s", v39, 0xCu);
        }

        if (v16)
        {
          v16(3, "%s", buf);
        }
      }

      while (v19 < v12);
    }

    v10 = 0;
    if (v34)
    {
      *v34 = 8;
    }

    v6 = v35;
  }

  else
  {
    v28 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v29(6, "%s:%i Mini NV headless is 0x%x (length = %d)", "_NFDriverReadMiniNVForHeadless", 1641, *(*v5 + 4), v5[2]);
    }

    dispatch_get_specific(*v28);
    v30 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*v5 + 4);
      v32 = v5[2];
      *buf = 136446978;
      *&buf[4] = "_NFDriverReadMiniNVForHeadless";
      *&buf[12] = 1024;
      *&buf[14] = 1641;
      *&buf[18] = 1024;
      *&buf[20] = v31;
      *&buf[24] = 1024;
      *&buf[26] = v32;
      _os_log_impl(&dword_297F97000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Mini NV headless is 0x%x (length = %d)", buf, 0x1Eu);
    }

    v10 = *(*v5 + 4);
  }

LABEL_44:
  sub_297F9FBDC(v6);
  sub_297FA0714(&v37);
  sub_297FA0714(&v36);
  return v10 & 1;
}

void sub_297FBBE78(uint64_t a1, double a2)
{
  v84 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Invalid logging value", "_NFDriverLogLevel1Updated", 1205);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v65 = "_NFDriverLogLevel1Updated";
    v66 = 1024;
    v67 = 1205;
    v8 = "%{public}s:%i Invalid logging value";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 18;
LABEL_37:
    _os_log_impl(&dword_297F97000, v9, v10, v8, buf, v11);
    return;
  }

  if (*a1)
  {
    LOWORD(a2) = *(a1 + 16);
    v12 = 0x408F400000000000;
    LOWORD(v12) = *(a1 + 18);
    v13 = *&a2 / 1000.0 + v12 / 1000000.0;
    v14 = *(a1 + 24);
    if ((v14 - 8) < 6 || v14 == 1)
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(5, "%s:%i [L1] %0.6f state=0x%x tech=0x%x rssi=0x%x FelicaL1State=0x%x L1DataRxFailure=0x%x AGCRegValue=0x%x vpp=%f ALMPhase=%.3f fs=0x%x RMRobustness=0x%04x", "_NFDriverLogLevel1Updated", 1220, v13, *(a1 + 24), *(a1 + 28), *(a1 + 36), *(a1 + 44), *(a1 + 32), *(a1 + 20), *(a1 + 52), *(a1 + 56), *(a1 + 40), *(a1 + 60));
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v18 = *(a1 + 24);
      v19 = *(a1 + 28);
      v20 = *(a1 + 36);
      v21 = *(a1 + 32);
      v22 = *(a1 + 20);
      v23 = *(a1 + 52);
      v24 = *(a1 + 56);
      v26 = *(a1 + 40);
      v25 = *(a1 + 44);
      v27 = *(a1 + 60);
      *buf = 136449282;
      v65 = "_NFDriverLogLevel1Updated";
      v66 = 1024;
      v67 = 1220;
      v68 = 2048;
      *v69 = v13;
      *&v69[8] = 1024;
      v70 = v18;
      v71 = 1024;
      v72 = v19;
      v73 = 1024;
      v74 = v20;
      v75 = 1024;
      *v76 = v25;
      *&v76[4] = 1024;
      *&v76[6] = v21;
      LOWORD(v77) = 1024;
      *(&v77 + 2) = v22;
      HIWORD(v77) = 2048;
      v78 = v23;
      v79 = 2048;
      *v80 = v24;
      *&v80[8] = 1024;
      v81 = v26;
      v82 = 1024;
      v83 = v27;
      v8 = "%{public}s:%i [L1] %0.6f state=0x%x tech=0x%x rssi=0x%x FelicaL1State=0x%x L1DataRxFailure=0x%x AGCRegValue=0x%x vpp=%f ALMPhase=%.3f fs=0x%x RMRobustness=0x%04x";
      v9 = v17;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 96;
    }

    else
    {
      v39 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v40 = NFLogGetLogger();
      if (v40)
      {
        v40(5, "%s:%i [L1] %0.6f state=0x%x tech=0x%x rssi=0x%x FelicaL1State=0x%x L1DataRxFailure=0x%x AGCRegValue=0x%x vpp=%f fs=0x%x RMRobustness=0x%04x", "_NFDriverLogLevel1Updated", 1227, v13, *(a1 + 24), *(a1 + 28), *(a1 + 36), *(a1 + 44), *(a1 + 32), *(a1 + 20), *(a1 + 52), *(a1 + 40), *(a1 + 60));
      }

      dispatch_get_specific(*v39);
      v41 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v42 = *(a1 + 24);
      v43 = *(a1 + 28);
      v44 = *(a1 + 36);
      v45 = *(a1 + 32);
      v46 = *(a1 + 20);
      v47 = *(a1 + 52);
      v49 = *(a1 + 40);
      v48 = *(a1 + 44);
      v50 = *(a1 + 60);
      *buf = 136449026;
      v65 = "_NFDriverLogLevel1Updated";
      v66 = 1024;
      v67 = 1227;
      v68 = 2048;
      *v69 = v13;
      *&v69[8] = 1024;
      v70 = v42;
      v71 = 1024;
      v72 = v43;
      v73 = 1024;
      v74 = v44;
      v75 = 1024;
      *v76 = v48;
      *&v76[4] = 1024;
      *&v76[6] = v45;
      LOWORD(v77) = 1024;
      *(&v77 + 2) = v46;
      HIWORD(v77) = 2048;
      v78 = v47;
      v79 = 1024;
      *v80 = v49;
      *&v80[4] = 1024;
      *&v80[6] = v50;
      v8 = "%{public}s:%i [L1] %0.6f state=0x%x tech=0x%x rssi=0x%x FelicaL1State=0x%x L1DataRxFailure=0x%x AGCRegValue=0x%x vpp=%f fs=0x%x RMRobustness=0x%04x";
      v9 = v41;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 86;
    }

    goto LABEL_37;
  }

  if ((*a1 & 2) != 0)
  {
    LOWORD(a2) = *(a1 + 16);
    v28 = 0x408F400000000000;
    LOWORD(v28) = *(a1 + 18);
    v29 = *&a2 / 1000.0 + v28 / 1000000.0;
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(5, "%s:%i [L1] %0.6f APCInfo=0x%x tech=0x%x retCode=0x%x vpp=%f ALMPhase=%.3f RMRobustness=0x%04x", "_NFDriverLogLevel1Updated", 1236, v29, *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 52), *(a1 + 56), *(a1 + 60));
    }

    dispatch_get_specific(*v30);
    v32 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v33 = *(a1 + 20);
    v34 = *(a1 + 24);
    v35 = *(a1 + 28);
    v36 = *(a1 + 52);
    v37 = *(a1 + 56);
    v38 = *(a1 + 60);
    *buf = 136448258;
    v65 = "_NFDriverLogLevel1Updated";
    v66 = 1024;
    v67 = 1236;
    v68 = 2048;
    *v69 = v29;
    *&v69[8] = 1024;
    v70 = v33;
    v71 = 1024;
    v72 = v34;
    v73 = 1024;
    v74 = v35;
    v75 = 2048;
    *v76 = v36;
    *&v76[8] = 2048;
    v77 = v37;
    LOWORD(v78) = 1024;
    *(&v78 + 2) = v38;
    v8 = "%{public}s:%i [L1] %0.6f APCInfo=0x%x tech=0x%x retCode=0x%x vpp=%f ALMPhase=%.3f RMRobustness=0x%04x";
    v9 = v32;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 72;
    goto LABEL_37;
  }

  if (!*(a1 + 8))
  {
    return;
  }

  v3 = *(a1 + 16);
  v4 = 255;
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
      goto LABEL_33;
    }

LABEL_32:
    v4 = *(a1 + 20);
    goto LABEL_33;
  }

  if (v3 == 2)
  {
    goto LABEL_32;
  }

  if (v3 == 255)
  {
    v51 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v53 = v52;
      v54 = __error();
      v55 = strerror(*v54);
      v56 = __error();
      v53(3, "%s:%i %s errno=%d Invalid L1 standby wake event 0x%x", "_NFDriverLogLevel1Updated", 1252, v55, *v56, 255);
    }

    dispatch_get_specific(*v51);
    v57 = NFSharedLogGetLogger();
    v4 = 255;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = __error();
      v59 = strerror(*v58);
      v60 = *__error();
      *buf = 136447234;
      v65 = "_NFDriverLogLevel1Updated";
      v66 = 1024;
      v67 = 1252;
      v68 = 2080;
      *v69 = v59;
      *&v69[8] = 1024;
      v70 = v60;
      v71 = 1024;
      v72 = 255;
      _os_log_impl(&dword_297F97000, v57, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Invalid L1 standby wake event 0x%x", buf, 0x28u);
    }
  }

LABEL_33:
  v61 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v62 = NFLogGetLogger();
  if (v62)
  {
    v62(5, "%s:%i [L1] StandbyEventType=0x%x RegValue=0x%x", "_NFDriverLogLevel1Updated", 1256, v3, v4);
  }

  dispatch_get_specific(*v61);
  v63 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v65 = "_NFDriverLogLevel1Updated";
    v66 = 1024;
    v67 = 1256;
    v68 = 1024;
    *v69 = v3;
    *&v69[4] = 1024;
    *&v69[6] = v4;
    v8 = "%{public}s:%i [L1] StandbyEventType=0x%x RegValue=0x%x";
    v9 = v63;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 30;
    goto LABEL_37;
  }
}

void sub_297FBC5D4(unsigned __int8 *a1, double a2, double a3)
{
  *(&v108[2] + 6) = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  if (*a1)
  {
    v5 = 0;
    v6 = 48;
    v7 = 136448002;
    do
    {
      v8 = *(a1 + 2);
      v9 = v8 + v6;
      LOWORD(v7) = *(v8 + v6 - 48);
      LOWORD(a3) = *(v8 + v6 - 46);
      v10 = v7 / 1000.0 + *&a3 / 1000000.0;
      v11 = *(v8 + v6 - 44);
      if (v11 > 13)
      {
        if (v11 == 14)
        {
          if (*(v8 + v6 - 12) != 8)
          {
            goto LABEL_18;
          }
        }

        else if (v11 != 15 || (*(v8 + v6 - 12) & 0xFE) != 6)
        {
LABEL_18:
          dispatch_get_specific(*v4);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v31 = 0;
            v32 = *(v9 - 44);
            if (v32 <= 0xF && ((1 << v32) & 0xE020) != 0)
            {
              v31 = *(v8 + v6 - 12);
            }

            Logger(5, "%s:%i [L2] %0.6f state=0x%02x mod=0x%02x rssi=0x%04x, extraInfo=0x%0x fs=0x%04x RMRobustness=0x%04x", "_NFDriverLogLevel2Updated", 1296, v10, v32, *(v8 + v6 - 32), *(v8 + v6 - 24), v31, *(v8 + v6 - 20), *(v8 + v6));
          }

          dispatch_get_specific(*v4);
          v33 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          v34 = 0;
          v35 = *(v9 - 44);
          if (v35 <= 0xF && ((1 << v35) & 0xE020) != 0)
          {
            v34 = *(v8 + v6 - 12);
          }

          v36 = *(v8 + v6 - 32);
          v37 = *(v8 + v6 - 24);
          v38 = *(v8 + v6 - 20);
          v39 = *(v8 + v6);
          *buf = 136448258;
          v98 = "_NFDriverLogLevel2Updated";
          v99 = 1024;
          v100 = 1296;
          v101 = 2048;
          *v102 = v10;
          *&v102[8] = 1024;
          *v103 = v35;
          *&v103[4] = 1024;
          *v104 = v36;
          *&v104[4] = 1024;
          v105 = v37;
          v106 = 1024;
          *v107 = v34;
          *&v107[4] = 1024;
          *&v107[6] = v38;
          LOWORD(v108[0]) = 1024;
          *(v108 + 2) = v39;
          v20 = v33;
          v21 = "%{public}s:%i [L2] %0.6f state=0x%02x mod=0x%02x rssi=0x%04x, extraInfo=0x%0x fs=0x%04x RMRobustness=0x%04x";
          v22 = 64;
          goto LABEL_28;
        }

        dispatch_get_specific(*v4);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v23(5, "%s:%i [L2] %0.6f state=0x%02x mod=0x%02x sc=0x%04x, extraInfo=0x%0x RMRobustness=0x%04x", "_NFDriverLogLevel2Updated", 1283, v10, *(v9 - 44), *(v8 + v6 - 32), *(v8 + v6 - 16), *(v8 + v6 - 12), *(v8 + v6));
        }

        dispatch_get_specific(*v4);
        v24 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        v25 = *(v9 - 44);
        v26 = *(v8 + v6 - 32);
        v27 = *(v8 + v6 - 16);
        v28 = *(v8 + v6 - 12);
        v29 = *(v8 + v6);
        *buf = 136448002;
        v98 = "_NFDriverLogLevel2Updated";
        v99 = 1024;
        v100 = 1283;
        v101 = 2048;
        *v102 = v10;
        *&v102[8] = 1024;
        *v103 = v25;
        *&v103[4] = 1024;
        *v104 = v26;
        *&v104[4] = 1024;
        v105 = v27;
        v106 = 1024;
        *v107 = v28;
        *&v107[4] = 1024;
        *&v107[6] = v29;
        v20 = v24;
        v21 = "%{public}s:%i [L2] %0.6f state=0x%02x mod=0x%02x sc=0x%04x, extraInfo=0x%0x RMRobustness=0x%04x";
        v22 = 58;
      }

      else
      {
        if (v11 != 7 && v11 != 11)
        {
          goto LABEL_18;
        }

        dispatch_get_specific(*v4);
        v12 = NFLogGetLogger();
        if (v12)
        {
          v12(5, "%s:%i [L2] %0.6f state=0x%02x mod=0x%02x rssi=0x%04x, ALMPhase=%.3f fs=0x%04x RMRobustness=0x%04x", "_NFDriverLogLevel2Updated", 1273, v10, *(v9 - 44), *(v8 + v6 - 32), *(v8 + v6 - 24), *(v8 + v6 - 4), *(v8 + v6 - 20), *(v8 + v6));
        }

        dispatch_get_specific(*v4);
        v13 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        v14 = *(v9 - 44);
        v15 = *(v8 + v6 - 32);
        v16 = *(v8 + v6 - 24);
        v17 = *(v8 + v6 - 4);
        v18 = *(v8 + v6 - 20);
        v19 = *(v8 + v6);
        *buf = 136448258;
        v98 = "_NFDriverLogLevel2Updated";
        v99 = 1024;
        v100 = 1273;
        v101 = 2048;
        *v102 = v10;
        *&v102[8] = 1024;
        *v103 = v14;
        *&v103[4] = 1024;
        *v104 = v15;
        *&v104[4] = 1024;
        v105 = v16;
        v106 = 2048;
        *v107 = v17;
        *&v107[8] = 1024;
        LODWORD(v108[0]) = v18;
        WORD2(v108[0]) = 1024;
        *(v108 + 6) = v19;
        v20 = v13;
        v21 = "%{public}s:%i [L2] %0.6f state=0x%02x mod=0x%02x rssi=0x%04x, ALMPhase=%.3f fs=0x%04x RMRobustness=0x%04x";
        v22 = 68;
      }

LABEL_28:
      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
LABEL_29:
      ++v5;
      v6 += 52;
    }

    while (v5 < *a1);
  }

  if (a1[1])
  {
    v40 = 0;
    v41 = 0;
    v42 = 136447490;
    do
    {
      v43 = *(a1 + 3);
      LOWORD(v42) = *(v43 + v40);
      LOWORD(a3) = *(v43 + v40 + 2);
      v44 = v42 / 1000.0 + *&a3 / 1000000.0;
      dispatch_get_specific(*v4);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v45(5, "%s:%i [L2] %0.6f command=0x%02x debug=0x%02x rssi=0x%04x", "_NFDriverLogLevel2Updated", 1307, v44, *(v43 + v40 + 12), *(v43 + v40 + 13), *(v43 + v40 + 4));
      }

      dispatch_get_specific(*v4);
      v46 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(v43 + v40 + 12);
        v48 = *(v43 + v40 + 13);
        v49 = *(v43 + v40 + 4);
        *buf = 136447490;
        v98 = "_NFDriverLogLevel2Updated";
        v99 = 1024;
        v100 = 1307;
        v101 = 2048;
        *v102 = v44;
        *&v102[8] = 1024;
        *v103 = v47;
        *&v103[4] = 1024;
        *v104 = v48;
        *&v104[4] = 1024;
        v105 = v49;
        _os_log_impl(&dword_297F97000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [L2] %0.6f command=0x%02x debug=0x%02x rssi=0x%04x", buf, 0x2Eu);
      }

      ++v41;
      v40 += 16;
    }

    while (v41 < a1[1]);
  }

  if (a1[2])
  {
    v50 = 0;
    v51 = 0;
    v52 = 136446978;
    do
    {
      v53 = *(a1 + 5);
      LOWORD(v52) = *(v53 + v50);
      LOWORD(a3) = *(v53 + v50 + 2);
      v54 = v52 / 1000.0 + *&a3 / 1000000.0;
      dispatch_get_specific(*v4);
      v55 = NFLogGetLogger();
      if (v55)
      {
        v55(5, "%s:%i [L2] %0.6f code=0x%04x", "_NFDriverLogLevel2Updated", 1315, v54, *(v53 + v50 + 4));
      }

      dispatch_get_specific(*v4);
      v56 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = *(v53 + v50 + 4);
        *buf = 136446978;
        v98 = "_NFDriverLogLevel2Updated";
        v99 = 1024;
        v100 = 1315;
        v101 = 2048;
        *v102 = v54;
        *&v102[8] = 1024;
        *v103 = v57;
        _os_log_impl(&dword_297F97000, v56, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [L2] %0.6f code=0x%04x", buf, 0x22u);
      }

      ++v51;
      v50 += 6;
    }

    while (v51 < a1[2]);
  }

  if (a1[3])
  {
    v58 = 0;
    v59 = 0;
    v60 = 136448002;
    do
    {
      v61 = *(a1 + 4);
      LOWORD(v60) = *(v61 + v58);
      LOWORD(a3) = *(v61 + v58 + 2);
      v62 = v60 / 1000.0 + *&a3 / 1000000.0;
      dispatch_get_specific(*v4);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v63(5, "%s:%i [L2] %0.6f response=0x%02x status=0x%04x debug=0x%02x vpp=%f ALMPhase=%.3f", "_NFDriverLogLevel2Updated", 1327, v62, *(v61 + v58 + 4), *(v61 + v58 + 6), *(v61 + v58 + 8), *(v61 + v58 + 12), *(v61 + v58 + 16));
      }

      dispatch_get_specific(*v4);
      v64 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = *(v61 + v58 + 4);
        v66 = *(v61 + v58 + 6);
        v67 = *(v61 + v58 + 8);
        v68 = *(v61 + v58 + 12);
        v69 = *(v61 + v58 + 16);
        *buf = 136448002;
        v98 = "_NFDriverLogLevel2Updated";
        v99 = 1024;
        v100 = 1327;
        v101 = 2048;
        *v102 = v62;
        *&v102[8] = 1024;
        *v103 = v65;
        *&v103[4] = 1024;
        *v104 = v66;
        *&v104[4] = 1024;
        v105 = v67;
        v106 = 2048;
        *v107 = v68;
        *&v107[8] = 2048;
        *v108 = v69;
        _os_log_impl(&dword_297F97000, v64, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [L2] %0.6f response=0x%02x status=0x%04x debug=0x%02x vpp=%f ALMPhase=%.3f", buf, 0x42u);
      }

      ++v59;
      v58 += 20;
    }

    while (v59 < a1[3]);
  }

  if (a1[4])
  {
    v70 = 0;
    v71 = 0;
    v72 = 136447234;
    do
    {
      v73 = *(a1 + 6);
      LOWORD(v72) = *(v73 + v70);
      LOWORD(a3) = *(v73 + v70 + 2);
      v74 = v72 / 1000.0 + *&a3 / 1000000.0;
      dispatch_get_specific(*v4);
      v75 = NFLogGetLogger();
      if (v75)
      {
        v75(5, "%s:%i [L2] %0.6f event=0x%02x debug=0x%02x", "_NFDriverLogLevel2Updated", 1336, v74, *(v73 + v70 + 4), *(v73 + v70 + 8));
      }

      dispatch_get_specific(*v4);
      v76 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = *(v73 + v70 + 4);
        v78 = *(v73 + v70 + 8);
        *buf = 136447234;
        v98 = "_NFDriverLogLevel2Updated";
        v99 = 1024;
        v100 = 1336;
        v101 = 2048;
        *v102 = v74;
        *&v102[8] = 1024;
        *v103 = v77;
        *&v103[4] = 1024;
        *v104 = v78;
        _os_log_impl(&dword_297F97000, v76, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [L2] %0.6f event=0x%02x debug=0x%02x", buf, 0x28u);
      }

      ++v71;
      v70 += 12;
    }

    while (v71 < a1[4]);
  }

  if (a1[6])
  {
    v79 = 0;
    v80 = 0;
    do
    {
      v81 = *(a1 + 8);
      if (!v81)
      {
        break;
      }

      dispatch_get_specific(*v4);
      v82 = NFLogGetLogger();
      if (v82)
      {
        v82(5, "%s:%i [L2] phase1Abrt=0x%02x phase2Abrt=0x%02x maxRfPulseAbrt=0x%02x successDetect=0x%02x", "_NFDriverLogLevel2Updated", 1345, *(v81 + v79), *(v81 + v79 + 4), *(v81 + v79 + 8), *(v81 + v79 + 12));
      }

      dispatch_get_specific(*v4);
      v83 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = *(v81 + v79);
        v85 = *(v81 + v79 + 4);
        v87 = *(v81 + v79 + 8);
        v86 = *(v81 + v79 + 12);
        *buf = 136447490;
        v98 = "_NFDriverLogLevel2Updated";
        v99 = 1024;
        v100 = 1345;
        v101 = 1024;
        *v102 = v84;
        *&v102[4] = 1024;
        *&v102[6] = v85;
        *v103 = 1024;
        *&v103[2] = v87;
        *v104 = 1024;
        *&v104[2] = v86;
        _os_log_impl(&dword_297F97000, v83, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [L2] phase1Abrt=0x%02x phase2Abrt=0x%02x maxRfPulseAbrt=0x%02x successDetect=0x%02x", buf, 0x2Au);
      }

      ++v80;
      v79 += 16;
    }

    while (v80 < a1[6]);
  }

  if (a1[8])
  {
    v88 = 0;
    v89 = 0;
    do
    {
      v90 = *(a1 + 10);
      dispatch_get_specific(*v4);
      v91 = NFLogGetLogger();
      if (v91)
      {
        v91(5, "%s:%i [L2] ms=0x%02x µs=0x%02x LMA=0x%02x BBA=0x%02x", "_NFDriverLogLevel2Updated", 1355, *(v90 + v88), *(v90 + v88 + 2), *(v90 + v88 + 4), *(v90 + v88 + 6));
      }

      dispatch_get_specific(*v4);
      v92 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = *(v90 + v88);
        v94 = *(v90 + v88 + 2);
        v95 = *(v90 + v88 + 4);
        v96 = *(v90 + v88 + 6);
        *buf = 136447490;
        v98 = "_NFDriverLogLevel2Updated";
        v99 = 1024;
        v100 = 1355;
        v101 = 1024;
        *v102 = v93;
        *&v102[4] = 1024;
        *&v102[6] = v94;
        *v103 = 1024;
        *&v103[2] = v95;
        *v104 = 1024;
        *&v104[2] = v96;
        _os_log_impl(&dword_297F97000, v92, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [L2] ms=0x%02x µs=0x%02x LMA=0x%02x BBA=0x%02x", buf, 0x2Au);
      }

      ++v89;
      v88 += 8;
    }

    while (v89 < a1[8]);
  }
}

void sub_297FBD15C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (*(v2 + 762) == 1)
  {
    v4 = *(v2 + 560);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FB7B1C;
    block[3] = &unk_29EE880F8;
    block[4] = v1;
    dispatch_async(v4, block);
    v5 = *(*(a1 + 32) + 24);
    if (*v5)
    {
      (*v5)(*(v5 + 264), "HW Reset");
    }
  }
}

void sub_297FBD20C(void *a1)
{
  v2 = *(a1[6] + 24);
  if (*(v2 + 762) == 1)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      v4 = *(v2 + 320);
      *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) & 0xFE | ((*(*(a1[5] + 8) + 24) & 2) != 0);
      *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) & 0xFD | (*(*(a1[5] + 8) + 24) >> 1) & 2;
      *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) & 0xFB | (*(*(a1[5] + 8) + 24) >> 1) & 4;
      *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) & 0xF7 | (8 * (*(*(a1[5] + 8) + 24) & 1));
      *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) & 0xEF | (*(*(a1[5] + 8) + 24) >> 4) & 0x10;
      *(*(a1[4] + 8) + 26) = *(*(a1[5] + 8) + 48);
      v3(v4, *(*(a1[4] + 8) + 24), *(*(a1[5] + 8) + 32), *(*(a1[5] + 8) + 40));
    }
  }

  v5 = *(a1[5] + 8);
  v6 = *(v5 + 32);
  if (v6)
  {
    free(v6);
    v5 = *(a1[5] + 8);
  }

  *(v5 + 32) = 0;
}

uint64_t sub_297FBD354(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 80);
    if (v2)
    {
      return v2(*(v1 + 344));
    }
  }

  return result;
}

uint64_t sub_297FBD37C(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    if (*v1)
    {
      return (*v1)(*(v1 + 264), "UART Error");
    }
  }

  return result;
}

uint64_t sub_297FBD3AC(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 144);
    if (v2)
    {
      return v2(*(v1 + 408), *(result + 40), *(result + 52), *(result + 48), *(result + 50));
    }
  }

  return result;
}

void sub_297FBD3E8(uint64_t *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  v2 = *(a1 + 2);
  v3 = *a1;
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 2);
    *buf = 136315906;
    v15 = "_NFDriverLogLPCDDebug";
    v16 = 1024;
    v17 = 1361;
    v18 = 2082;
    v19 = "[lpcd]";
    v20 = 2048;
    v21 = v7;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
  }

  if (Logger)
  {
    Logger(5, "%s:%i %s %lu bytes :", "_NFDriverLogLPCDDebug", 1361, "[lpcd]", *(a1 + 2));
  }

  if (v2)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      v10 = &v22[__sprintf_chk(v22, 0, 0x30uLL, "%04lX: ", v8)];
      do
      {
        v11 = *(v3 + v8++);
        v12 = sprintf(v10, "0x%02X ", v11);
        if (v9 > 6)
        {
          break;
        }

        v10 += v12;
        ++v9;
      }

      while (v8 < v2);
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v15 = v22;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      if (Logger)
      {
        Logger(5, "%s", v22);
      }
    }

    while (v8 < v2);
  }
}

void sub_297FBD628(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (*(v2 + 762) == 1)
  {
    v4 = *(v2 + 560);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FB7B1C;
    block[3] = &unk_29EE880F8;
    block[4] = v1;
    dispatch_async(v4, block);
    v5 = *(*(a1 + 32) + 24);
    if (*v5)
    {
      (*v5)(*(v5 + 264), "CRC Error");
    }
  }
}

uint64_t sub_297FBD6D8(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 152);
    if (v2)
    {
      return v2(*(v1 + 416), *(result + 40));
    }
  }

  return result;
}

void sub_297FBD708(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i %s TEMPERATURE WARNING RECEIVED", "_Callback_NFDriverNotifyGeneral_block_invoke_2", 2160, *(a1 + 32));
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 136446722;
    v9 = "_Callback_NFDriverNotifyGeneral_block_invoke_2";
    v10 = 1024;
    v11 = 2160;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i %s TEMPERATURE WARNING RECEIVED", buf, 0x1Cu);
  }

  v6 = *(*(a1 + 40) + 24);
  v7 = *(v6 + 216);
  if (v7)
  {
    v7(*(v6 + 480), *(a1 + 48), *(a1 + 52));
  }
}

uint64_t sub_297FBD838(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 216);
    if (v2)
    {
      return v2(*(v1 + 480), 3, *(result + 40));
    }
  }

  return result;
}

uint64_t sub_297FBD86C(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 216);
    if (v2)
    {
      return v2(*(v1 + 480), 0, *(result + 40));
    }
  }

  return result;
}

double sub_297FBD8A0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 224);
    if (v2)
    {
      v2(*(v1 + 488), *(a1 + 40));
    }
  }

  NFDataRelease();
  return result;
}

uint64_t sub_297FBD8FC(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 > 16)
  {
    if (a1 <= 20)
    {
      if ((a1 - 17) >= 3)
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }

    else if (a1 > 22)
    {
      if (a1 == 23)
      {
        return 5;
      }

      else if (a1 == 25)
      {
        v7 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i Found Kovio tag", "_NFDriverRFTechToTagType", 1880);
        }

        dispatch_get_specific(*v7);
        v9 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "_NFDriverRFTechToTagType";
          v12 = 1024;
          v13 = 1880;
          _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found Kovio tag", buf, 0x12u);
        }

        return 7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 22)
      {
        v6 = 6;
      }

      else
      {
        v6 = 0;
      }

      if (a1 == 21)
      {
        return 3;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    if (a1 == 16)
    {
      v1 = 4;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 15)
    {
      v2 = 11;
    }

    else
    {
      v2 = v1;
    }

    if (a1 == 14)
    {
      v3 = 10;
    }

    else
    {
      v3 = 0;
    }

    if (a1 == 13)
    {
      v4 = 9;
    }

    else
    {
      v4 = v3;
    }

    if (a1 <= 14)
    {
      v2 = v4;
    }

    if (a1 <= 12)
    {
      return (a1 - 10) < 3;
    }

    else
    {
      return v2;
    }
  }
}

void sub_297FBDAA0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (*(v2 + 762) == 1)
  {
    v3 = *(v2 + 168);
    if (v3)
    {
      v3(*(v2 + 432), *(a1 + 40), *(a1 + 48));
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    free(v4);
  }
}

uint64_t sub_297FBDB10(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 232);
    if (v2)
    {
      return v2(*(v1 + 496));
    }
  }

  return result;
}

uint64_t sub_297FBDB38(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 240);
    if (v2)
    {
      return v2(*(v1 + 504));
    }
  }

  return result;
}

double sub_297FBDB60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (*(v2 + 762) == 1)
  {
    v3 = *(v2 + 256);
    if (v3)
    {
      v3(*(v2 + 520), *(a1 + 40));
    }

    NFDataRelease();
  }

  return result;
}

void sub_297FBDBC0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v55 = *MEMORY[0x29EDCA608];
  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(5, "%s:%i num_dev=%d, status=%d", "_Callback_NFDriverNotifyDiscovery", 2717, a4, a5);
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
    *&buf[12] = 1024;
    *&buf[14] = 2717;
    *&buf[18] = 1024;
    *&buf[20] = a4;
    LOWORD(v53) = 1024;
    *(&v53 + 2) = a5;
    _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i num_dev=%d, status=%d", buf, 0x1Eu);
  }

  if (a5 > 118)
  {
    if (a5 > 120)
    {
      if (a5 == 121)
      {
        dispatch_get_specific(*v10);
        v34 = NFLogGetLogger();
        if (v34)
        {
          v34(5, "%s:%i deactivated", "_Callback_NFDriverNotifyDiscovery", 2829);
        }

        dispatch_get_specific(*v10);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
          *&buf[12] = 1024;
          *&buf[14] = 2829;
          v15 = "%{public}s:%i deactivated";
          goto LABEL_54;
        }

        return;
      }

      if (a5 != 146)
      {
        if (a5 == 188)
        {
          dispatch_get_specific(*v10);
          v13 = NFLogGetLogger();
          if (v13)
          {
            v13(5, "%s:%i Intf activation ntf error", "_Callback_NFDriverNotifyDiscovery", 2832);
          }

          dispatch_get_specific(*v10);
          v14 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
            *&buf[12] = 1024;
            *&buf[14] = 2832;
            v15 = "%{public}s:%i Intf activation ntf error";
LABEL_54:
            v35 = v14;
            v36 = 18;
LABEL_55:
            _os_log_impl(&dword_297F97000, v35, OS_LOG_TYPE_DEFAULT, v15, buf, v36);
            return;
          }

          return;
        }

LABEL_61:
        dispatch_get_specific(*v10);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v39(5, "%s:%i status=0x%04X", "_Callback_NFDriverNotifyDiscovery", 2835, a5);
        }

        dispatch_get_specific(*v10);
        v40 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
          *&buf[12] = 1024;
          *&buf[14] = 2835;
          *&buf[18] = 1024;
          *&buf[20] = a5;
          v15 = "%{public}s:%i status=0x%04X";
          v35 = v40;
          v36 = 24;
          goto LABEL_55;
        }

        return;
      }

      dispatch_get_specific(*v10);
      v37 = NFLogGetLogger();
      if (v37)
      {
        v37(5, "%s:%i target lost", "_Callback_NFDriverNotifyDiscovery", 2796);
      }

      dispatch_get_specific(*v10);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
        *&buf[12] = 1024;
        *&buf[14] = 2796;
        _os_log_impl(&dword_297F97000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s:%i target lost", buf, 0x12u);
      }

      v20 = *(*(a2 + 24) + 568);
      v48[0] = MEMORY[0x29EDCA5F8];
      v48[1] = 0x40000000;
      v48[2] = sub_297FBEB44;
      v48[3] = &unk_29EE883D8;
      v48[4] = a2;
      v21 = v48;
LABEL_73:
      dispatch_async(v20, v21);
      return;
    }

    if (a5 != 119)
    {
      dispatch_get_specific(*v10);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v18(5, "%s:%i tag removed", "_Callback_NFDriverNotifyDiscovery", 2812);
      }

      dispatch_get_specific(*v10);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
        *&buf[12] = 1024;
        *&buf[14] = 2812;
        _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i tag removed", buf, 0x12u);
      }

      v20 = *(*(a2 + 24) + 568);
      v47[0] = MEMORY[0x29EDCA5F8];
      v47[1] = 0x40000000;
      v47[2] = sub_297FBEB6C;
      v47[3] = &unk_29EE883F8;
      v47[4] = a2;
      v21 = v47;
      goto LABEL_73;
    }

    goto LABEL_33;
  }

  if (a5 > 53)
  {
    if (a5 != 54)
    {
      if (a5 == 56)
      {
        dispatch_get_specific(*v10);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v17(5, "%s:%i deselected", "_Callback_NFDriverNotifyDiscovery", 2791);
        }

        dispatch_get_specific(*v10);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
          *&buf[12] = 1024;
          *&buf[14] = 2791;
          v15 = "%{public}s:%i deselected";
          goto LABEL_54;
        }

        return;
      }

      goto LABEL_61;
    }

    goto LABEL_33;
  }

  if (!a5)
  {
LABEL_33:
    if (a4)
    {
      v22 = a4;
      v23 = malloc_type_calloc(a4, 0x60uLL, 0x108004063299CC8uLL);
      if (!v23)
      {
        return;
      }

      v46 = v23;
      if (a3)
      {
        v24 = (a3 + 8);
        v25 = v23;
        while (*(v24 - 1))
        {
          v26 = *v24;
          if (!*v24)
          {
            break;
          }

          v27 = *(v26 + 4);
          v28 = v27 > 0x1B;
          v29 = (1 << v27) & 0xEEFFC00;
          if (v28 || v29 == 0)
          {
            dispatch_get_specific(*v10);
            v31 = NFLogGetLogger();
            if (v31)
            {
              v31(6, "%s:%i Unhandled tag type 0x%04x", "_Callback_NFDriverNotifyDiscovery", 2765, *(*v24 + 4));
            }

            dispatch_get_specific(*v10);
            log = NFSharedLogGetLogger();
            v32 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
            v26 = *v24;
            if (v32)
            {
              v33 = *(v26 + 4);
              *buf = 136446722;
              *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
              *&buf[12] = 1024;
              *&buf[14] = 2765;
              *&buf[18] = 1024;
              *&buf[20] = v33;
              _os_log_impl(&dword_297F97000, log, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Unhandled tag type 0x%04x", buf, 0x18u);
              v26 = *v24;
            }
          }

          sub_297FBE6DC(v25, *(v24 - 1), v26);
          v25 += 96;
          v24 += 2;
          if (!--v22)
          {
            v44 = v46;
            goto LABEL_72;
          }
        }
      }

      dispatch_get_specific(*v10);
      v41 = NFLogGetLogger();
      if (v41)
      {
        v41(3, "%s:%i remote dev list is invalid", "_Callback_NFDriverNotifyDiscovery", 2734);
      }

      dispatch_get_specific(*v10);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
        *&buf[12] = 1024;
        *&buf[14] = 2734;
        _os_log_impl(&dword_297F97000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i remote dev list is invalid", buf, 0x12u);
      }

      v44 = v46;
      if (NFIsInternalBuild())
      {
        sub_297FBE498(a1, 0, 0, 0);
        v43 = *(*(a2 + 24) + 560);
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_297FB7B1C;
        v53 = &unk_29EE880F8;
        v54 = a2;
        dispatch_async(v43, buf);
      }

      LOBYTE(a4) = 0;
    }

    else
    {
      v44 = 0;
    }

LABEL_72:
    v20 = *(*(a2 + 24) + 568);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FBEAB8;
    block[3] = &unk_29EE883B8;
    v51 = a4;
    block[4] = a2;
    block[5] = v44;
    v50 = a5;
    v21 = block;
    goto LABEL_73;
  }

  if (a5 != 7)
  {
    goto LABEL_61;
  }

  dispatch_get_specific(*v10);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v16(5, "%s:%i halted", "_Callback_NFDriverNotifyDiscovery", 2825);
  }

  dispatch_get_specific(*v10);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "_Callback_NFDriverNotifyDiscovery";
    *&buf[12] = 1024;
    *&buf[14] = 2825;
    v15 = "%{public}s:%i halted";
    goto LABEL_54;
  }
}

BOOL sub_297FBE498(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, int *a4)
{
  v29 = *MEMORY[0x29EDCA608];
  DebugInfo = phLibNfc_Mgt_GetDebugInfo();
  if (DebugInfo)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(5, "%s:%i Get Debug Info failed: %04X", "_Dispatched_NFDriverGetStackDebugInfo", 6120, DebugInfo);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v20 = "_Dispatched_NFDriverGetStackDebugInfo";
      v21 = 1024;
      v22 = 6120;
      v23 = 1024;
      v24 = DebugInfo;
      v11 = "%{public}s:%i Get Debug Info failed: %04X";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 24;
LABEL_16:
      _os_log_impl(&dword_297F97000, v12, v13, v11, buf, v14);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 137;
    }

    if (a3)
    {
      *a3 = 0;
    }

    if (a2)
    {
      *a2 = 0;
    }

    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i LastAPI=0x%02X, LastAPIStatus=0x%04X DebugInfo=0x%016llX", "_Dispatched_NFDriverGetStackDebugInfo", 6117, 137, 0, 0);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447234;
      v20 = "_Dispatched_NFDriverGetStackDebugInfo";
      v21 = 1024;
      v22 = 6117;
      v23 = 1024;
      v24 = 137;
      v25 = 1024;
      v26 = 0;
      v27 = 2048;
      v28 = 0;
      v11 = "%{public}s:%i LastAPI=0x%02X, LastAPIStatus=0x%04X DebugInfo=0x%016llX";
      v12 = v17;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 40;
      goto LABEL_16;
    }
  }

  return DebugInfo == 0;
}

char *sub_297FBE6DC(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v26 = *MEMORY[0x29EDCA608];
  *result = a2;
  v5 = *(a3 + 4);
  if (v5 <= 20)
  {
    if (v5 <= 14)
    {
      if ((v5 - 10) < 3)
      {
        *(result + 2) = 1;
        *(result + 3) = dword_297FDB6E4[v5 - 10];
        result[16] = *(a3 + 68);
        *(result + 17) = *(a3 + 69);
        if (*(a3 + 67) >= 0x30u)
        {
          v6 = 48;
        }

        else
        {
          v6 = *(a3 + 67);
        }

        result[67] = v6;
        memcpy(result + 19, (a3 + 19), v6);
        if (*(a3 + 18) >= 0x10u)
        {
          v7 = 16;
        }

        else
        {
          v7 = *(a3 + 18);
        }

        result = memcpy(v4 + 72, (a3 + 8), v7);
        v4[88] = v7;
        v4[68] = *(a3 + 72) & 0xF;
        return result;
      }

      if (v5 == 13)
      {
        v15 = 9;
        goto LABEL_54;
      }

      if (v5 == 14)
      {
        v15 = 10;
LABEL_54:
        *(result + 2) = v15;
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    if ((v5 - 17) < 3)
    {
      *(result + 2) = 2;
      *(result + 3) = v5 - 17;
      v10 = *(a3 + 8);
      *(result + 20) = *(a3 + 16);
      *(result + 9) = v10;
      result[88] = 12;
      result[16] = *(a3 + 72) & 0xF;
      return result;
    }

    if (v5 == 15)
    {
      v15 = 11;
      goto LABEL_54;
    }

    if (v5 != 16)
    {
      goto LABEL_51;
    }

    *(result + 2) = 4;
    result[16] = *(a3 + 68);
    *(result + 17) = *(a3 + 69);
    if (*(a3 + 67) >= 0x30u)
    {
      v16 = 48;
    }

    else
    {
      v16 = *(a3 + 67);
    }

    result[67] = v16;
    v17 = result + 19;
    v18 = (a3 + 19);
LABEL_50:
    memcpy(v17, v18, v16);
LABEL_55:
    if (*(a3 + 18) >= 0x10u)
    {
      v21 = 16;
    }

    else
    {
      v21 = *(a3 + 18);
    }

    result = memcpy(v4 + 72, (a3 + 8), v21);
    v4[88] = v21;
    return result;
  }

  if (v5 > 23)
  {
    if ((v5 - 26) < 2)
    {
      v15 = 8;
      goto LABEL_54;
    }

    if (v5 == 24)
    {
      return result;
    }

    if (v5 != 25)
    {
LABEL_51:
      *(result + 2) = 0;
      return result;
    }

    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Found Kovio tag", "_copyTagInfoFromDevice", 2687);
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v23 = "_copyTagInfoFromDevice";
      v24 = 1024;
      v25 = 2687;
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found Kovio tag", buf, 0x12u);
    }

    *(v4 + 2) = 7;
    if (*(a3 + 8) >= 0x10u)
    {
      v14 = 16;
    }

    else
    {
      v14 = *(a3 + 8);
    }

    v4[28] = v14;
    memcpy(v4 + 12, (a3 + 9), v14);
    v9 = v4[28];
    goto LABEL_31;
  }

  if (v5 != 21)
  {
    if (v5 == 22)
    {
      *(result + 2) = 6;
      result[23] = *(a3 + 19);
      result[24] = *(a3 + 20);
      if (*(a3 + 18) >= 0xAu)
      {
        v16 = 10;
      }

      else
      {
        v16 = *(a3 + 18);
      }

      result[22] = v16;
      v17 = result + 12;
      v18 = (a3 + 8);
      goto LABEL_50;
    }

    *(result + 2) = 5;
    result[21] = *(a3 + 17);
    result[23] = *(a3 + 19);
    result[22] = *(a3 + 18);
    if (*(a3 + 16) >= 8u)
    {
      v8 = 8;
    }

    else
    {
      v8 = *(a3 + 16);
    }

    result[20] = v8;
    memcpy(result + 12, (a3 + 8), v8);
    v9 = v4[20];
LABEL_31:
    result = memcpy(v4 + 72, v4 + 12, v9);
    v4[88] = v9;
    return result;
  }

  *(result + 2) = 3;
  if (*(a3 + 18) >= 0x10u)
  {
    v19 = 16;
  }

  else
  {
    v19 = *(a3 + 18);
  }

  result = memcpy(result + 72, (a3 + 8), v19);
  v4[88] = v19;
  v20 = *(a3 + 16);
  *(v4 + 13) = *(a3 + 8);
  *(v4 + 21) = v20;
  v4[12] = *(a3 + 18);
  *(v4 + 23) = *(a3 + 19);
  *(v4 + 31) = *(a3 + 27);
  return result;
}

void sub_297FBEAB8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (*(v2 + 762) == 1)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      if (*(a1 + 50))
      {
        v4 = *(a1 + 40);
      }

      else
      {
        v4 = 0;
      }

      v3(*(v2 + 352), v4);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    free(v5);
  }
}

uint64_t sub_297FBEB44(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 208);
    if (v2)
    {
      return v2(*(v1 + 472));
    }
  }

  return result;
}

uint64_t sub_297FBEB6C(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 192);
    if (v2)
    {
      return v2(*(v1 + 456));
    }
  }

  return result;
}

uint64_t sub_297FBEB94(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return v2(*(v1 + 272), 0);
    }
  }

  return result;
}

double sub_297FBEBC0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v2(*(v1 + 280), *(a1 + 40));
    }
  }

  NFDataRelease();
  return result;
}

double sub_297FBEC1C(void *a1)
{
  v1 = *(a1[4] + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      v2(*(v1 + 288), a1[5], a1[6]);
    }
  }

  NFDataRelease();

  NFDataRelease();
  return result;
}

void sub_297FBEC80(void *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(a1[4] + 24);
  if (*(v1 + 762) == 1)
  {
    v3 = a1[5];
    v4 = *(v1 + 528);
    if (v4)
    {
      v4 = *(v4 + 8);
    }

    v5 = v3 == v4;
    if (v3 == v4)
    {
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i Embedded SE EVT_RESTRICTED!", "_Callback_NFDriverNotifySE_block_invoke", 2962);
      }

      dispatch_get_specific(*v6);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v17 = "_Callback_NFDriverNotifySE_block_invoke";
        v18 = 1024;
        v19 = 2962;
        _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Embedded SE EVT_RESTRICTED!", buf, 0x12u);
      }
    }

    v9 = *(a1[4] + 24);
    v10 = *(v9 + 32);
    if (v10)
    {
      v11 = *(v9 + 296);
      v12 = *(a1[6] + 32);
      if (v12 == 255)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      if (v12 == 3)
      {
        v13 = 3;
      }

      if (v12 == 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (v12 == 1)
      {
        v14 = 1;
      }

      if (v12 <= 2)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      v10(v11, v5, v15);
    }
  }
}

uint64_t sub_297FBEDF8(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      v3 = *(v1 + 304);
      v4 = *(*(result + 40) + 32);
      if (v4 == 255)
      {
        v5 = 4;
      }

      else
      {
        v5 = 0;
      }

      if (v4 == 3)
      {
        v5 = 3;
      }

      if (v4 == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      if (v4 == 1)
      {
        v6 = 1;
      }

      if (v4 <= 2)
      {
        v7 = v6;
      }

      else
      {
        v7 = v5;
      }

      return v2(v3, 1, v7);
    }
  }

  return result;
}

uint64_t sub_297FBEE5C(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 64);
    if (v2)
    {
      return v2(*(v1 + 328));
    }
  }

  return result;
}

uint64_t sub_297FBEE84(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      return v2(*(v1 + 336));
    }
  }

  return result;
}

uint64_t NFDriverSimulateCrash(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (v5 = *(result + 24), *(v5 + 768) == 1))
  {
    *(v5 + 760) = a2;
  }

  else
  {
    v6 = sub_297FC6B20(result);

    return MEMORY[0x2A1C6E658](2, a2, v6, a3);
  }

  return result;
}

void sub_297FBEF18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if ((*(v3 + 767) & 1) == 0)
  {
    sub_297FBEF8C(v2);
    v3 = *(*(a1 + 32) + 24);
  }

  if (*(v3 + 762) == 1)
  {
    v4 = *(v3 + 96);
    if (v4)
    {
      v5 = *(v3 + 360);
      v6 = *(a1 + 40);
      v7 = *(a1 + 44);

      v4(v5, v6, v7);
    }
  }
}

void sub_297FBEF8C(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004093CA8EA1uLL);
  v2 = sub_297F9DC04();
  pthread_mutex_lock((v2[3] + 8));
  v3 = v2[3];
  ++*v3;
  pthread_mutex_unlock((v3 + 8));
  *v8[3] = v2;
  *(v8[3] + 16) = a1;
  sub_297FB8080(a1);
  v4 = *(*(a1 + 24) + 560);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = sub_297FD5C3C;
  v6[3] = &unk_29EE88A88;
  v6[4] = &v11;
  v6[5] = &v7;
  v6[6] = a1;
  v6[7] = v2;
  dispatch_async(v4, v6);
  if (sub_297F9F694(v2))
  {
    *(v12 + 6) = *v2;
    sub_297F9FBDC(v2);
  }

  else
  {
    *(*(*(a1 + 24) + 528) + 24) = 0;
  }

  v5 = v8[3];
  if (v5)
  {
    free(v5);
  }

  dispatch_semaphore_signal(*(*(a1 + 24) + 552));
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

uint64_t sub_297FBF108(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 200);
    if (v2)
    {
      return v2(*(v1 + 464), *(result + 40), *(result + 44));
    }
  }

  return result;
}

uint64_t sub_297FBF13C(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 104);
    if (v2)
    {
      return v2(*(v1 + 368));
    }
  }

  return result;
}

double sub_297FBF164(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 120);
    if (v2)
    {
      v2(*(v1 + 384), **(a1 + 40), *(*(a1 + 40) + 8));
    }
  }

  NFDataRelease();
  return result;
}

void sub_297FBF1C8(void *a1)
{
  v2 = *(a1[7] + 24);
  if (*(v2 + 762) == 1)
  {
    v3 = *(v2 + 160);
    if (v3)
    {
      v3(*(v2 + 424), *(*(a1[4] + 8) + 24), *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 32), *(*(a1[6] + 8) + 40));
    }
  }

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 32);
  if (v5)
  {
    free(v5);
    v4 = *(a1[6] + 8);
  }

  *(v4 + 32) = 0;
}

uint64_t sub_297FBF250(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 184);
    if (v2)
    {
      return v2(*(v1 + 448), *(result + 40) == 0, *(result + 56), *(result + 52) == 4);
    }
  }

  return result;
}

void sub_297FBF294(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a5 <= 53)
  {
    if (a5)
    {
      if (a5 == 7)
      {
        v9 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(5, "%s:%i halted", "_Callback_NFDriverNotifyHCE", 3349);
        }

        dispatch_get_specific(*v9);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v26 = "_Callback_NFDriverNotifyHCE";
          v27 = 1024;
          v28 = 3349;
          v12 = "%{public}s:%i halted";
LABEL_22:
          v19 = v11;
          v20 = 18;
          goto LABEL_23;
        }

        return;
      }

LABEL_14:
      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v17(5, "%s:%i status=0x%04X", "_Callback_NFDriverNotifyHCE", 3354, a5);
      }

      dispatch_get_specific(*v16);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v26 = "_Callback_NFDriverNotifyHCE";
        v27 = 1024;
        v28 = 3354;
        v29 = 1024;
        v30 = a5;
        v12 = "%{public}s:%i status=0x%04X";
        v19 = v18;
        v20 = 24;
LABEL_23:
        _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_DEFAULT, v12, buf, v20);
        return;
      }

      return;
    }

LABEL_10:
    if (a4)
    {
      v13 = 0;
      v14 = MEMORY[0x29EDCA5F8];
      do
      {
        v15 = *(*(a2 + 24) + 568);
        block[0] = v14;
        block[1] = 0x40000000;
        block[2] = sub_297FBF594;
        block[3] = &unk_29EE885E0;
        block[4] = a2;
        block[5] = a3;
        v24 = v13;
        dispatch_async(v15, block);
        ++v13;
      }

      while (v13 < a4);
    }

    return;
  }

  if (a5 != 56)
  {
    if (a5 != 54)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v21 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v22(5, "%s:%i deselected", "_Callback_NFDriverNotifyHCE", 3344);
  }

  dispatch_get_specific(*v21);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "_Callback_NFDriverNotifyHCE";
    v27 = 1024;
    v28 = 3344;
    v12 = "%{public}s:%i deselected";
    goto LABEL_22;
  }
}

uint64_t sub_297FBF594(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      return v2(*(v1 + 312), *(*(result + 40) + 16 * *(result + 48)));
    }
  }

  return result;
}

uint64_t sub_297FBF5D0(uint64_t a1)
{
  v84 = *MEMORY[0x29EDCA608];
  *(*(a1 + 24) + 763) = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2000000000;
  v78 = 3;
  v2 = malloc_type_calloc(3uLL, 0x10uLL, 0x1080040FC6463CFuLL);
  v71 = 0;
  v72 = &v71;
  v73 = 0x2000000000;
  v74 = 0;
  v3 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FC04F8;
  block[3] = &unk_29EE88608;
  block[6] = a1;
  block[7] = v2;
  block[4] = &v71;
  block[5] = &v75;
  dispatch_async_and_wait(v3, block);
  if (*(v72 + 12))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverEnumerateSecureElements", 3969, *(v72 + 12));
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(v72 + 12);
      *buf = 136446722;
      *&buf[4] = "_NFDriverEnumerateSecureElements";
      *&buf[12] = 1024;
      *&buf[14] = 3969;
      *&buf[18] = 1024;
      *&buf[20] = v7;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    v8 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FB7B1C;
    *&buf[24] = &unk_29EE880F8;
    *&buf[32] = a1;
    dispatch_async(v8, buf);
    free(v2);
    v9 = 1;
    goto LABEL_116;
  }

  if (*(v76 + 24) <= 3u)
  {
    if (*(v76 + 24))
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v69 = v2;
      v19 = v2 + 3;
      v20 = MEMORY[0x29EDC9730];
      while (1)
      {
        v21 = *(v19 - 1);
        dispatch_get_specific(*v20);
        v22 = NFLogGetLogger();
        if (v21 == 5)
        {
          if (v18)
          {
            if (v22)
            {
              v22(4, "%s:%i Host already found", "_NFDriverEnumerateSecureElements", 4024);
            }

            dispatch_get_specific(*v20);
            v25 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "_NFDriverEnumerateSecureElements";
              *&buf[12] = 1024;
              *&buf[14] = 4024;
              _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Host already found", buf, 0x12u);
            }

            v18 = 1;
          }

          else
          {
            if (v22)
            {
              v22(6, "%s:%i Found Host state=%d", "_NFDriverEnumerateSecureElements", 4027, *v19);
            }

            dispatch_get_specific(*v20);
            v34 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = *v19;
              *buf = 136446722;
              *&buf[4] = "_NFDriverEnumerateSecureElements";
              *&buf[12] = 1024;
              *&buf[14] = 4027;
              *&buf[18] = 1024;
              *&buf[20] = v35;
              _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found Host state=%d", buf, 0x18u);
            }

            v18 = sub_297FC0540((*(a1 + 24) + 544), a1, 5, 0, *(v19 - 3));
          }

          goto LABEL_81;
        }

        if (v21 == 2)
        {
          if (v17)
          {
            if (v22)
            {
              v22(4, "%s:%i UICC already found", "_NFDriverEnumerateSecureElements", 4014);
            }

            dispatch_get_specific(*v20);
            v24 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "_NFDriverEnumerateSecureElements";
              *&buf[12] = 1024;
              *&buf[14] = 4014;
              _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i UICC already found", buf, 0x12u);
            }

            v17 = 1;
          }

          else
          {
            if (v22)
            {
              v22(6, "%s:%i Found UICC state=%d", "_NFDriverEnumerateSecureElements", 4017, *v19);
            }

            dispatch_get_specific(*v20);
            v32 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = *v19;
              *buf = 136446722;
              *&buf[4] = "_NFDriverEnumerateSecureElements";
              *&buf[12] = 1024;
              *&buf[14] = 4017;
              *&buf[18] = 1024;
              *&buf[20] = v33;
              _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found UICC state=%d", buf, 0x18u);
            }

            v17 = sub_297FC0540((*(a1 + 24) + 536), a1, 4, 0, *(v19 - 3));
          }

          goto LABEL_81;
        }

        if (v21 != 1)
        {
          break;
        }

        if (v16)
        {
          if (v22)
          {
            v22(4, "%s:%i eSE already found", "_NFDriverEnumerateSecureElements", 3988);
          }

          dispatch_get_specific(*v20);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "_NFDriverEnumerateSecureElements";
            *&buf[12] = 1024;
            *&buf[14] = 3988;
            _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i eSE already found", buf, 0x12u);
          }

          v16 = 1;
          goto LABEL_81;
        }

        if (v22)
        {
          v22(6, "%s:%i Found eSE state=%d", "_NFDriverEnumerateSecureElements", 3991, *v19);
        }

        dispatch_get_specific(*v20);
        v36 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *v19;
          *buf = 136446722;
          *&buf[4] = "_NFDriverEnumerateSecureElements";
          *&buf[12] = 1024;
          *&buf[14] = 3991;
          *&buf[18] = 1024;
          *&buf[20] = v37;
          _os_log_impl(&dword_297F97000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found eSE state=%d", buf, 0x18u);
        }

        memset(buf, 0, 44);
        if ((NFDriverGetControllerInfo(a1, buf) & 1) == 0)
        {
          dispatch_get_specific(*v20);
          v67 = NFLogGetLogger();
          if (v67)
          {
            v67(3, "%s:%i Failed to get controller info", "_NFDriverEnumerateSecureElements", 3994);
          }

          dispatch_get_specific(*v20);
          v68 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            *v80 = 136446466;
            v81 = "_NFDriverEnumerateSecureElements";
            v82 = 1024;
            v83 = 3994;
            _os_log_impl(&dword_297F97000, v68, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get controller info", v80, 0x12u);
          }

          v14 = v69;
          goto LABEL_13;
        }

        v38 = *(a1 + 24);
        v39 = sub_297FA01E8(*(v38 + 620), *(v38 + 624)) - 5;
        if (v39 > 7)
        {
          v40 = 6;
        }

        else
        {
          v40 = dword_297FDB764[v39];
        }

        v41 = sub_297FC0540((v38 + 528), a1, v40, *v19 == 4, *(v19 - 3));
        v16 = v41;
        if (!v41)
        {
          goto LABEL_81;
        }

        v42 = *(*(a1 + 24) + 528);
        if (*(v42 + 24) != 1)
        {
          goto LABEL_81;
        }

        dispatch_get_specific(*v20);
        v43 = NFLogGetLogger();
        if (v43)
        {
          v43(3, "%s:%i Error, trying to power cycle the SE.", "_NFDriverRebootRemovedSE", 3642);
        }

        dispatch_get_specific(*v20);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *v80 = 136446466;
          v81 = "_NFDriverRebootRemovedSE";
          v82 = 1024;
          v83 = 3642;
          _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_ERROR, "%{public}s:%i Error, trying to power cycle the SE.", v80, 0x12u);
        }

        if ((NFDriverSetSecureElementPower(a1, 1) & 1) == 0 && (NFDriverSetSecureElementPower(a1, 1) & 1) == 0)
        {
          dispatch_get_specific(*v20);
          v49 = NFLogGetLogger();
          if (v49)
          {
            v49(6, "%s:%i Power cycling SE success.", "_NFDriverRebootRemovedSE", 3649);
          }

          dispatch_get_specific(*v20);
          v50 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *v80 = 136446466;
            v81 = "_NFDriverRebootRemovedSE";
            v82 = 1024;
            v83 = 3649;
            _os_log_impl(&dword_297F97000, v50, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Power cycling SE success.", v80, 0x12u);
          }

          *(v42 + 24) = 0;
          goto LABEL_81;
        }

        dispatch_get_specific(*v20);
        v45 = NFLogGetLogger();
        if (v45)
        {
          v45(3, "%s:%i Error: Failed to power cycle the SE.", "_NFDriverRebootRemovedSE", 3652);
        }

        dispatch_get_specific(*v20);
        v46 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *v80 = 136446466;
          v81 = "_NFDriverRebootRemovedSE";
          v82 = 1024;
          v83 = 3652;
          _os_log_impl(&dword_297F97000, v46, OS_LOG_TYPE_ERROR, "%{public}s:%i Error: Failed to power cycle the SE.", v80, 0x12u);
        }

        dispatch_get_specific(*v20);
        v47 = NFLogGetLogger();
        if (v47)
        {
          v47(3, "%s:%i Failed to recover SE", "_NFDriverEnumerateSecureElements", 4006);
        }

        dispatch_get_specific(*v20);
        v48 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *v80 = 136446466;
          v81 = "_NFDriverEnumerateSecureElements";
          v82 = 1024;
          v83 = 4006;
          v28 = v80;
          v29 = v48;
          v30 = "%{public}s:%i Failed to recover SE";
          v31 = 18;
LABEL_41:
          _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, v30, v28, v31);
        }

LABEL_81:
        ++v15;
        v19 += 4;
        if (v15 >= *(v76 + 24))
        {
          v2 = v69;
          if ((v16 & 1) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_94;
        }
      }

      if (v22)
      {
        v22(4, "%s:%i Unknown SE: %d", "_NFDriverEnumerateSecureElements", 4033, *(v19 - 1));
      }

      dispatch_get_specific(*v20);
      v26 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_81;
      }

      v27 = *(v19 - 1);
      *buf = 136446722;
      *&buf[4] = "_NFDriverEnumerateSecureElements";
      *&buf[12] = 1024;
      *&buf[14] = 4033;
      *&buf[18] = 1024;
      *&buf[20] = v27;
      v28 = buf;
      v29 = v26;
      v30 = "%{public}s:%i Unknown SE: %d";
      v31 = 24;
      goto LABEL_41;
    }

    v17 = 0;
    v18 = 0;
LABEL_85:
    if (*(*(a1 + 24) + 528))
    {
      v51 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v52(3, "%s:%i eSE did not re-enumerate", "_NFDriverEnumerateSecureElements", 4040);
      }

      dispatch_get_specific(*v51);
      v53 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_NFDriverEnumerateSecureElements";
        *&buf[12] = 1024;
        *&buf[14] = 4040;
        _os_log_impl(&dword_297F97000, v53, OS_LOG_TYPE_ERROR, "%{public}s:%i eSE did not re-enumerate", buf, 0x12u);
      }

      v54 = *(a1 + 24);
      v55 = *(v54 + 528);
      if (v55)
      {
        free(v55);
        v54 = *(a1 + 24);
      }

      *(v54 + 528) = 0;
      if (v17)
      {
        goto LABEL_105;
      }
    }

    else
    {
LABEL_94:
      if (v17)
      {
        goto LABEL_105;
      }

      v54 = *(a1 + 24);
    }

    if (*(v54 + 536))
    {
      v56 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v57 = NFLogGetLogger();
      if (v57)
      {
        v57(3, "%s:%i UICC did not re-enumerate", "_NFDriverEnumerateSecureElements", 4045);
      }

      dispatch_get_specific(*v56);
      v58 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_NFDriverEnumerateSecureElements";
        *&buf[12] = 1024;
        *&buf[14] = 4045;
        _os_log_impl(&dword_297F97000, v58, OS_LOG_TYPE_ERROR, "%{public}s:%i UICC did not re-enumerate", buf, 0x12u);
      }

      v59 = *(a1 + 24);
      v60 = *(v59 + 536);
      if (v60)
      {
        free(v60);
        v59 = *(a1 + 24);
      }

      *(v59 + 536) = 0;
      if (v18)
      {
        goto LABEL_115;
      }

      goto LABEL_107;
    }

LABEL_105:
    if (v18)
    {
LABEL_115:
      free(v2);
      v9 = 0;
      goto LABEL_116;
    }

    v59 = *(a1 + 24);
LABEL_107:
    if (*(v59 + 544))
    {
      v61 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v62 = NFLogGetLogger();
      if (v62)
      {
        v62(3, "%s:%i Host did not re-enumerate", "_NFDriverEnumerateSecureElements", 4050);
      }

      dispatch_get_specific(*v61);
      v63 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_NFDriverEnumerateSecureElements";
        *&buf[12] = 1024;
        *&buf[14] = 4050;
        _os_log_impl(&dword_297F97000, v63, OS_LOG_TYPE_ERROR, "%{public}s:%i Host did not re-enumerate", buf, 0x12u);
      }

      v64 = *(a1 + 24);
      v65 = *(v64 + 544);
      if (v65)
      {
        free(v65);
        v64 = *(a1 + 24);
      }

      *(v64 + 544) = 0;
    }

    goto LABEL_115;
  }

  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(3, "%s:%i Unexpected count of SEs : %d", "_NFDriverEnumerateSecureElements", 3975, *(v76 + 24));
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *(v76 + 24);
    *buf = 136446722;
    *&buf[4] = "_NFDriverEnumerateSecureElements";
    *&buf[12] = 1024;
    *&buf[14] = 3975;
    *&buf[18] = 1024;
    *&buf[20] = v13;
    _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected count of SEs : %d", buf, 0x18u);
  }

  v14 = v2;
LABEL_13:
  free(v14);
  v9 = 8;
LABEL_116:
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  return v9;
}

uint64_t sub_297FC04F8(void *a1)
{
  result = phLibNfc_SE_GetSecureElementList();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_297FC0540(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (v6)
  {

    return sub_297FABA38(v6, a2, a3, a4, a5);
  }

  else
  {
    v8 = sub_297FAB620(a2, a3, a4, a5);
    *a1 = v8;
    return v8 != 0;
  }
}

uint64_t sub_297FC05A4(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i enable=%d", "_NFDriverSetStandbyMode", 4175, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "_NFDriverSetStandbyMode";
    *&buf[12] = 1024;
    *&buf[14] = 4175;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enable=%d", buf, 0x18u);
  }

  if (a2 && (*(*(a1 + 24) + 585) & 8) != 0 && NFIsInternalBuild())
  {
    dispatch_get_specific(*v4);
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(4, "%s:%i Warning : Standby disabled - skipping enablement.", "_NFDriverSetStandbyMode", 4179);
    }

    dispatch_get_specific(*v4);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverSetStandbyMode";
      *&buf[12] = 1024;
      *&buf[14] = 4179;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Warning : Standby disabled - skipping enablement.", buf, 0x12u);
    }

    return 1;
  }

  dispatch_get_specific(*v4);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v9(6, "%s:%i mode=0x%x", "_Async_NFDriverSetStandbyMode", 1035, a2);
  }

  dispatch_get_specific(*v4);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "_Async_NFDriverSetStandbyMode";
    *&buf[12] = 1024;
    *&buf[14] = 1035;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i mode=0x%x", buf, 0x18u);
  }

  v11 = sub_297F9DC04();
  pthread_mutex_lock((v11[3] + 8));
  v12 = v11[3];
  ++*v12;
  pthread_mutex_unlock((v12 + 8));
  v13 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FD6AE0;
  *&buf[24] = &unk_29EE88AC8;
  v23 = a2;
  v21 = a1;
  v22 = v11;
  dispatch_async_and_wait(v13, buf);
  if (!sub_297F9F694(v11))
  {
    sub_297F9FBDC(v11);
    return 1;
  }

  dispatch_get_specific(*v4);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i status=0x%04llX", "_NFDriverSetStandbyMode", 4185, *v11);
  }

  dispatch_get_specific(*v4);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *v11;
    *buf = 136446722;
    *&buf[4] = "_NFDriverSetStandbyMode";
    *&buf[12] = 1024;
    *&buf[14] = 4185;
    *&buf[18] = 2048;
    *&buf[20] = v16;
    _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
  }

  v17 = *(v11 + 6);
  v18 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FB7B1C;
  *&buf[24] = &unk_29EE880F8;
  v21 = a1;
  dispatch_async(v18, buf);
  if (v17 == 44 || v17 == 34)
  {
    NFDriverSimulateCrash(a1, 57005, "_NFDriverSetStandbyMode: CRC error or response timeout");
  }

  sub_297F9FBDC(v11);
  return 0;
}

uint64_t sub_297FC09CC(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x29EDCA608];
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  if (*(a1 + 56))
  {
    return 0;
  }

  memset(v31, 0, 44);
  NFDriverGetControllerInfo(a1, v31);
  v5 = *(a2 + 192);
  if (v5)
  {
    v6 = 0;
    v7 = (a2 + 1);
    do
    {
      v8 = *(v7 - 1);
      if (*(v7 - 1))
      {
        v9 = *(*(a1 + 24) + 544);
        if (v9)
        {
          v9 = *(v9 + 8);
        }

        v10 = v32 + 40 * v6;
        *v10 = v9;
        *(v10 + 2) = 2;
        v10[12] |= 1u;
        v10[32] = v8;
        memcpy(v10 + 16, v7, v8);
        if (++v6 >= 0xCu)
        {
          __assert_rtn("_NFDriverConfigureRoutingTable", "NFDriver.c", 4234, "numRoutes <= MAX_NFCC_ROUTING_ENTRIES");
        }
      }

      v7 += 17;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *(a1 + 24);
  v12 = *(v11 + 528);
  if (v12)
  {
    v12 = *(v12 + 8);
  }

  v13 = v32 + 40 * v6;
  *v13 = v12;
  *(v13 + 2) = 1;
  v13[12] |= 1u;
  *(v13 + 4) = 4;
  if ((v6 + 1) >= 0xCu)
  {
    __assert_rtn("_NFDriverConfigureRoutingTable", "NFDriver.c", 4244, "numRoutes <= MAX_NFCC_ROUTING_ENTRIES");
  }

  v14 = *(v11 + 528);
  if (v14)
  {
    v14 = *(v14 + 8);
  }

  v15 = v32 + 40 * (v6 + 1);
  *v15 = v14;
  *(v15 + 2) = 0;
  v16 = v15[12];
  v15[12] = v16 | 1;
  *(v15 + 4) = 2;
  if (DWORD1(v31[0]) >= 7)
  {
    v15[12] = v16 | 3;
  }

  if ((v6 + 2) >= 0xCu)
  {
    __assert_rtn("_NFDriverConfigureRoutingTable", "NFDriver.c", 4255, "numRoutes <= MAX_NFCC_ROUTING_ENTRIES");
  }

  v17 = *(v11 + 544);
  if (v17)
  {
    v17 = *(v17 + 8);
  }

  v18 = v32 + 40 * (v6 + 2);
  *v18 = v17;
  *(v18 + 2) = 1;
  v18[12] |= 1u;
  *(v18 + 4) = 4;
  if ((v6 + 3) >= 0xCu)
  {
    __assert_rtn("_NFDriverConfigureRoutingTable", "NFDriver.c", 4264, "numRoutes <= MAX_NFCC_ROUTING_ENTRIES");
  }

  v19 = *(v11 + 528);
  if (v19)
  {
    v19 = *(v19 + 8);
  }

  v20 = v32 + 40 * (v6 + 3);
  *v20 = v19;
  *(v20 + 2) = 1;
  v20[12] |= 2u;
  *(v20 + 4) = 4;
  if ((v6 + 4) >= 0xCu)
  {
    __assert_rtn("_NFDriverConfigureRoutingTable", "NFDriver.c", 4274, "numRoutes <= MAX_NFCC_ROUTING_ENTRIES");
  }

  v21 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Routing changed", "_NFDriverConfigureRoutingTable", 4276);
  }

  dispatch_get_specific(*v21);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverConfigureRoutingTable";
    *&buf[12] = 1024;
    *&buf[14] = 4276;
    _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Routing changed", buf, 0x12u);
  }

  v24 = sub_297F9DC04();
  pthread_mutex_lock((v24[3] + 8));
  v25 = v24[3];
  ++*v25;
  pthread_mutex_unlock((v25 + 8));
  v26 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FD6C9C;
  *&buf[24] = &unk_29EE88AE8;
  v38 = v6 + 4;
  v35 = a1;
  v36 = v32;
  v37 = v24;
  dispatch_async_and_wait(v26, buf);
  if (sub_297F9F694(v24))
  {
    dispatch_get_specific(*v21);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(3, "%s:%i Failed to setup routing 0x%04llx", "_NFDriverConfigureRoutingTable", 4279, *v24);
    }

    dispatch_get_specific(*v21);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *v24;
      *buf = 136446722;
      *&buf[4] = "_NFDriverConfigureRoutingTable";
      *&buf[12] = 1024;
      *&buf[14] = 4279;
      *&buf[18] = 2048;
      *&buf[20] = v29;
      _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to setup routing 0x%04llx", buf, 0x1Cu);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_297F9FBDC(v24);
  return v2;
}

uint64_t NFDriverEnableAntiRelay(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v24[0] = 17210017;
  if (*(a1 + 56))
  {
    return 0;
  }

  if (a3 == 5)
  {
    memset(v23, 0, sizeof(v23));
    NFDriverGetControllerInfo(a1, v23);
    if (*&v23[4] < 7u)
    {
      return 0;
    }

    v24[1] = *a2;
    v25 = *(a2 + 4);
    v16 = sub_297FA02E4(9u, v24);
    v7 = sub_297FA0380(a1, 37025, v16, 0);
    if (sub_297F9F694(v7))
    {
      v8 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to set Prox config : 0x%08llx", "NFDriverEnableAntiRelay", 4415, *v7);
      }

      dispatch_get_specific(*v8);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *v7;
        *buf = 136446722;
        v18 = "NFDriverEnableAntiRelay";
        v19 = 1024;
        v20 = 4415;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set Prox config : 0x%08llx", buf, 0x1Cu);
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    sub_297F9FBDC(v7);
    sub_297FA0714(&v16);
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Unexpected size of AID prefix : %d.", "NFDriverEnableAntiRelay", 4401, a3);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136446722;
      *&v23[4] = "NFDriverEnableAntiRelay";
      *&v23[12] = 1024;
      *&v23[14] = 4401;
      *&v23[18] = 1024;
      *&v23[20] = a3;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected size of AID prefix : %d.", v23, 0x18u);
    }

    return 5;
  }

  return v3;
}

_DWORD *NFDriverOpen(uint64_t a1, _BYTE *a2)
{
  v61 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    *a2 = 1;
  }

  v4 = malloc_type_calloc(1uLL, 0x48uLL, 0x10D00401727F4BCuLL);
  if (!v4)
  {
    return v4;
  }

  v5 = malloc_type_calloc(1uLL, 0x308uLL, 0x10A00407C638DA0uLL);
  if (!v5)
  {
LABEL_81:
    free(v4);
    return 0;
  }

  v6 = v5;
  *(v4 + 3) = v5;
  if (a1)
  {
    v7 = *(a1 + 24);
    v5[764] = (v7 & 0x80) != 0;
    *(v4 + 56) = (v7 & 0x80000) != 0;
    v8 = v4 + 14;
    if ((v7 & 0x80000) != 0)
    {
      v5[764] = 0;
    }

    v9 = *(a1 + 8);
    if (*a1)
    {
      *(v4 + 1) = strdup(*a1);
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = 4;
    }

    else
    {
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = 2;
    }

    *&v4[v10] = strdup(v9);
LABEL_16:
    *(v6 + 73) = v7;
    *(v6 + 184) = 0;
    v12 = *(a1 + 32);
    if (!v12)
    {
      v12 = 300;
    }

    *(v6 + 185) = v12;
    *(v6 + 93) = *(a1 + 40);
    v13 = *(a1 + 36);
    if (!v13)
    {
      v13 = 750;
    }

    *(v6 + 188) = v13;
    *(v6 + 768) = 0;
    *(v6 + 380) = 0;
    if ((v7 & 0x80000) != 0)
    {
      goto LABEL_21;
    }

LABEL_12:
    v11 = MEMORY[0x29C27DA30]();
    goto LABEL_22;
  }

  v8 = v4 + 14;
  if ((v4[14] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_21:
  v11 = 3;
LABEL_22:
  if (*(v4 + 1))
  {
    goto LABEL_30;
  }

  if (v11 <= 2)
  {
    if ((v11 - 1) < 2)
    {
      v14 = "com.apple.uart.stockholm";
LABEL_29:
      *(v4 + 1) = strdup(v14);
      goto LABEL_30;
    }

    if (!v11)
    {
      v46 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i HW is not supported", "NFDriverOpen", 4651);
      }

      dispatch_get_specific(*v46);
      v48 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      *buf = 136446466;
      *&buf[4] = "NFDriverOpen";
      *&buf[12] = 1024;
      *&buf[14] = 4651;
      v49 = "%{public}s:%i HW is not supported";
      v50 = v48;
      v51 = OS_LOG_TYPE_DEFAULT;
      v52 = 18;
LABEL_77:
      _os_log_impl(&dword_297F97000, v50, v51, v49, buf, v52);
LABEL_78:
      if (a2)
      {
        *a2 = 0;
      }

      free(v6);
      goto LABEL_81;
    }

LABEL_73:
    v54 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v55(3, "%s:%i Wrong interfaceType %d - cannot continue!", "NFDriverOpen", 4658, v11);
    }

    dispatch_get_specific(*v54);
    v56 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136446722;
    *&buf[4] = "NFDriverOpen";
    *&buf[12] = 1024;
    *&buf[14] = 4658;
    *&buf[18] = 1024;
    *&buf[20] = v11;
    v49 = "%{public}s:%i Wrong interfaceType %d - cannot continue!";
    v50 = v56;
    v51 = OS_LOG_TYPE_ERROR;
    v52 = 24;
    goto LABEL_77;
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v14 = "relay";
      goto LABEL_29;
    }

    goto LABEL_73;
  }

  if (*v8 == 1)
  {
    v53 = NFHardwareSkipSpmiReconfig();
    *(v4 + 1) = strdup("com.apple.spmi.nfc.hammerfest");
    if (!v53)
    {
      *(v4 + 2) = strdup("com.apple.spmi.nfc");
      goto LABEL_30;
    }
  }

  else
  {
    *(v4 + 1) = strdup("com.apple.spmi.nfc");
  }

  *(v4 + 2) = 0;
LABEL_30:
  *v4 = v11;
  if (*(v4 + 56))
  {
    v15 = "com.apple.stockholm.driverQueue.secondary";
  }

  else
  {
    v15 = "com.apple.stockholm.driverQueue.primary";
  }

  if (*(v4 + 56))
  {
    v16 = "com.apple.stockholm.callbackQueue.secondary";
  }

  else
  {
    v16 = "com.apple.stockholm.callbackQueue.primary";
  }

  *(v6 + 70) = dispatch_workloop_create_inactive(v15);
  *(v6 + 71) = dispatch_workloop_create_inactive(v16);
  dispatch_workloop_set_scheduler_priority();
  dispatch_workloop_set_scheduler_priority();
  v17 = *(v6 + 70);
  v18 = MEMORY[0x29EDC9730];
  v19 = *MEMORY[0x29EDC9730];
  if (*(v4 + 56) == 1)
  {
    dispatch_queue_set_specific(v17, v19, 3, 0);
    v20 = *(v6 + 71);
    v21 = *v18;
    v22 = 3;
  }

  else
  {
    dispatch_queue_set_specific(v17, v19, 0, 0);
    v20 = *(v6 + 71);
    v21 = *v18;
    v22 = 0;
  }

  dispatch_queue_set_specific(v20, v21, v22, 0);
  dispatch_activate(*(v6 + 70));
  dispatch_activate(*(v6 + 71));
  if (*v8 == 1)
  {
    *(*(v4 + 3) + 766) = MEMORY[0x29C27DA40]();
    dispatch_get_specific(*v18);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(6, "%s:%i interfaceType:%d path:%s flags:0x%llx  aux path:%s  warmBoot:%d", "NFDriverOpen", 4694, *v4, *(v4 + 1), *(v6 + 73), *(v4 + 2), *(*(v4 + 3) + 766));
    }

    dispatch_get_specific(*v18);
    v24 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v25 = *v4;
    v26 = *(v6 + 73);
    v27 = *(v4 + 1);
    v28 = *(v4 + 2);
    v29 = *(*(v4 + 3) + 766);
    *buf = 136447746;
    *&buf[4] = "NFDriverOpen";
    *&buf[12] = 1024;
    *&buf[14] = 4694;
    *&buf[18] = 1024;
    *&buf[20] = v25;
    *&buf[24] = 2080;
    *&buf[26] = v27;
    *&buf[34] = 2048;
    *&buf[36] = v26;
    *&buf[44] = 2080;
    *&buf[46] = v28;
    v59 = 1024;
    v60 = v29;
    v30 = "%{public}s:%i interfaceType:%d path:%s flags:0x%llx  aux path:%s  warmBoot:%d";
    v31 = v24;
    v32 = 60;
  }

  else
  {
    dispatch_get_specific(*v18);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v33(6, "%s:%i interfaceType:%d path:%s flags:0x%llx", "NFDriverOpen", 4699, *v4, *(v4 + 1), *(v6 + 73));
    }

    dispatch_get_specific(*v18);
    v34 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v35 = *v4;
    v36 = *(v4 + 1);
    v37 = *(v6 + 73);
    *buf = 136447234;
    *&buf[4] = "NFDriverOpen";
    *&buf[12] = 1024;
    *&buf[14] = 4699;
    *&buf[18] = 1024;
    *&buf[20] = v35;
    *&buf[24] = 2080;
    *&buf[26] = v36;
    *&buf[34] = 2048;
    *&buf[36] = v37;
    v30 = "%{public}s:%i interfaceType:%d path:%s flags:0x%llx";
    v31 = v34;
    v32 = 44;
  }

  _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
LABEL_49:
  NFDriverSetPollingConfig(v4, 0, 0);
  *(v6 + 69) = dispatch_semaphore_create(1);
  *(v6 + 762) = 1;
  byte_2A18BD36C = 0;
  v38 = sub_297F9DC04();
  pthread_mutex_lock((v38[3] + 8));
  v39 = v38[3];
  ++*v39;
  pthread_mutex_unlock((v39 + 8));
  v40 = *(*(v4 + 3) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FD6E28;
  *&buf[24] = &unk_29EE88B08;
  *&buf[32] = v4;
  *&buf[40] = v38;
  dispatch_async_and_wait(v40, buf);
  if (sub_297F9F694(v38))
  {
    if (*(v6 + 764) == 1)
    {
      NFDriverGetStackBreadcrumb(v4);
      postAnalyticsMiddlewareExceptionEvent();
    }

    dispatch_get_specific(*v18);
    v41 = NFLogGetLogger();
    if (v41)
    {
      v41(3, "%s:%i status=0x%04llX", "NFDriverOpen", 4724, *v38);
    }

    dispatch_get_specific(*v18);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = *v38;
      *buf = 136446722;
      *&buf[4] = "NFDriverOpen";
      *&buf[12] = 1024;
      *&buf[14] = 4724;
      *&buf[18] = 2048;
      *&buf[20] = v43;
      _os_log_impl(&dword_297F97000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }

    if (*v38 == 51)
    {
      dispatch_get_specific(*v18);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v44(6, "%s:%i Hardware not supported", "NFDriverOpen", 4728);
      }

      dispatch_get_specific(*v18);
      v45 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverOpen";
        *&buf[12] = 1024;
        *&buf[14] = 4728;
        _os_log_impl(&dword_297F97000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hardware not supported", buf, 0x12u);
      }

      if (a2)
      {
        *a2 = 0;
      }
    }

    sub_297F9FBDC(v38);
    NFDriverClose(v4);
    return 0;
  }

  sub_297F9FBDC(v38);
  return v4;
}

void NFDriverSetPollingConfig(uint64_t a1, unsigned int a2, int a3)
{
  v57 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v5 = *(a1 + 24);
    v32 = (a2 >> 2) & 1;
    v6 = (a2 >> 3) & 1;
    v7 = (16 * v6) & 0xFFFDFFFE | (((a2 >> 7) & 1) << 17) | ((4 * v32) | (2 * ((a2 >> 1) & 1))) & 0xFFFE7FF6 | (8 * v32) & 0xFFFE7FFE | (((a2 >> 5) & 1) << 15) & 0xFFFEFFFE | (((a2 >> 6) & 1) << 16) | a2 & 1;
    *(v5 + 688) = v7;
    v8 = MEMORY[0x29EDC9730];
    if ((a2 & 0x10) != 0)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i Polling config is using VAS ECP", "NFDriverSetPollingConfig", 4842);
      }

      v10 = v8;
      dispatch_get_specific(*v8);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v34 = "NFDriverSetPollingConfig";
        v35 = 1024;
        v36 = 4842;
        _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Polling config is using VAS ECP", buf, 0x12u);
      }

      *(v5 + 688) |= 0x1000u;
    }

    else if ((a2 & 3) != 0 && (*(a1 + 40) - 1) >= 4)
    {
      *(v5 + 688) = v7 | 0x800;
      dispatch_get_specific(*v8);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(6, "%s:%i Polling config is using Custom ECP", "NFDriverSetPollingConfig", 4852);
      }

      v10 = v8;
      dispatch_get_specific(*v8);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v34 = "NFDriverSetPollingConfig";
        v35 = 1024;
        v36 = 4852;
        v12 = "%{public}s:%i Polling config is using Custom ECP";
        goto LABEL_22;
      }
    }

    else
    {
      *(v5 + 688) = (16 * v6) & 0xFFFDF7FE | (((a2 >> 7) & 1) << 17) | ((4 * v32) | (2 * ((a2 >> 1) & 1))) & 0xFFFE77F6 | (8 * ((a2 >> 2) & 1)) & 0xFFFE77FE | (((a2 >> 5) & 1) << 15) & 0xFFFEF7FE | (((a2 >> 6) & 1) << 16) | a2 & 1;
      dispatch_get_specific(*v8);
      v9 = NFLogGetLogger();
      if (v9)
      {
        v9(6, "%s:%i Polling config is not using ECP", "NFDriverSetPollingConfig", 4855);
      }

      v10 = v8;
      dispatch_get_specific(*v8);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v34 = "NFDriverSetPollingConfig";
        v35 = 1024;
        v36 = 4855;
        v12 = "%{public}s:%i Polling config is not using ECP";
LABEL_22:
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
      }
    }

    v23 = a2 & 1;
    v24 = (a2 >> 1) & 1;
    v25 = (a2 >> 5) & 1;
    v26 = (a2 >> 6) & 1;
    *(v5 + 600) = a3;
    *(v5 + 765) = (a2 & 0x1000) != 0;
    v27 = (a2 >> 7) & 1;
    dispatch_get_specific(*v10);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v28(6, "%s:%i Polling cfg: A:%d B:%d F:%d 15693:%d S:%d S2:%d S3:%d CustomECP:%d VAS_ECP:%d frameRF:%d", "NFDriverSetPollingConfig", 4873, a2 & 1, (a2 >> 1) & 1, v32, v6, (a2 >> 5) & 1, (a2 >> 6) & 1, (a2 >> 7) & 1, (*(v5 + 688) >> 11) & 1, (*(v5 + 688) >> 12) & 1, *(v5 + 765));
    }

    dispatch_get_specific(*v10);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(v5 + 688);
      v31 = *(v5 + 765);
      *buf = 136449026;
      v34 = "NFDriverSetPollingConfig";
      v35 = 1024;
      v36 = 4873;
      v37 = 1024;
      v38 = v23;
      v39 = 1024;
      v40 = v24;
      v41 = 1024;
      v42 = v32;
      v43 = 1024;
      v44 = v6;
      v45 = 1024;
      v46 = v25;
      v47 = 1024;
      v48 = v26;
      v49 = 1024;
      v50 = v27;
      v51 = 1024;
      v52 = (v30 >> 11) & 1;
      v53 = 1024;
      v54 = (v30 >> 12) & 1;
      v55 = 1024;
      v56 = v31;
      v16 = "%{public}s:%i Polling cfg: A:%d B:%d F:%d 15693:%d S:%d S2:%d S3:%d CustomECP:%d VAS_ECP:%d frameRF:%d";
      v17 = v29;
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 78;
      goto LABEL_27;
    }

    return;
  }

  v13 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i Invalid param", "NFDriverSetPollingConfig", 4826);
  }

  dispatch_get_specific(*v13);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v34 = "NFDriverSetPollingConfig";
    v35 = 1024;
    v36 = 4826;
    v16 = "%{public}s:%i Invalid param";
    v17 = v15;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 18;
LABEL_27:
    _os_log_impl(&dword_297F97000, v17, v18, v16, buf, v19);
  }
}

uint64_t NFDriverGetStackBreadcrumb(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1 && (*(a1 + 57) & 1) != 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v9 = 0;
    v1 = *(*(a1 + 24) + 560);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FC6CE8;
    block[3] = &unk_29EE88690;
    block[4] = buf;
    block[5] = a1;
    dispatch_async_and_wait(v1, block);
    v2 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Driver is null", "NFDriverGetStackBreadcrumb", 6143);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverGetStackBreadcrumb";
      *&buf[12] = 1024;
      *&buf[14] = 6143;
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Driver is null", buf, 0x12u);
    }

    return 0;
  }

  return v2;
}

void NFDriverClose(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFDriverClose", 4744);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "NFDriverClose";
    *&buf[12] = 1024;
    *&buf[14] = 4744;
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  v5 = *(a1 + 24);
  *(v5 + 762) = 0;
  if (*(a1 + 57) == 1)
  {
    NFDriverUnloadStackAndLeaveHWEnabled(a1, 0);
  }

  v6 = *(v5 + 696);
  if (v6)
  {
    free(v6);
    *(v5 + 696) = 0;
  }

  if (*(v5 + 576))
  {
    v7 = sub_297F9DC04();
    pthread_mutex_lock((v7[3] + 8));
    v8 = v7[3];
    ++*v8;
    pthread_mutex_unlock((v8 + 8));
    v9 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FD7478;
    *&buf[24] = &unk_29EE88B48;
    v18 = a1;
    v19 = v7;
    dispatch_async_and_wait(v9, buf);
    if (sub_297F9F694(v7))
    {
      dispatch_get_specific(*v2);
      v10 = NFLogGetLogger();
      if (v10)
      {
        v10(3, "%s:%i status=0x%04llX", "NFDriverClose", 4760, *v7);
      }

      dispatch_get_specific(*v2);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *v7;
        *buf = 136446722;
        *&buf[4] = "NFDriverClose";
        *&buf[12] = 1024;
        *&buf[14] = 4760;
        *&buf[18] = 2048;
        *&buf[20] = v12;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
      }

      v13 = *(*(a1 + 24) + 560);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FB7B1C;
      *&buf[24] = &unk_29EE880F8;
      v18 = a1;
      dispatch_async(v13, buf);
    }

    sub_297F9FBDC(v7);
    *(v5 + 576) = 0;
  }

  byte_2A18BD381 = 0;
  dispatch_release(*(v5 + 552));
  *(v5 + 552) = 0;
  v14 = sub_297F9DC04();
  v15 = *(v5 + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FC23C4;
  block[3] = &unk_29EE88628;
  block[4] = v5;
  block[5] = a1;
  block[6] = v14;
  dispatch_barrier_async(v15, block);
  sub_297F9F694(v14);
  sub_297F9FBDC(v14);
}

uint64_t sub_297FC23C4(uint64_t a1)
{
  dispatch_release(*(*(a1 + 32) + 560));
  *(*(a1 + 32) + 560) = 0;
  dispatch_release(*(*(a1 + 32) + 568));
  *(*(a1 + 32) + 568) = 0;
  *(*(a1 + 40) + 24) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 528);
  if (v3)
  {
    free(v3);
    v2 = *(a1 + 32);
  }

  *(v2 + 528) = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 536);
  if (v5)
  {
    free(v5);
    v4 = *(a1 + 32);
  }

  *(v4 + 536) = 0;
  v6 = *(a1 + 32);
  v7 = *(v6 + 544);
  if (v7)
  {
    free(v7);
    v6 = *(a1 + 32);
  }

  *(v6 + 544) = 0;
  free(*(a1 + 32));
  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  if (v9)
  {
    free(v9);
    v8 = *(a1 + 40);
  }

  *(v8 + 8) = 0;
  v10 = *(a1 + 40);
  v11 = *(v10 + 16);
  if (v11)
  {
    free(v11);
    v10 = *(a1 + 40);
  }

  *(v10 + 16) = 0;
  free(*(a1 + 40));
  v12 = *(a1 + 48);

  return sub_297F9FB20(v12, 0);
}

void NFDriverPreventReset(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Setting prevent reset to %d", "NFDriverPreventReset", 4809, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v11 = "NFDriverPreventReset";
    v12 = 1024;
    v13 = 4809;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting prevent reset to %d", buf, 0x18u);
  }

  v7 = *(a1 + 24);
  *(v7 + 768) = a2;
  byte_2A18BD381 = a2;
  if ((a2 & 1) == 0)
  {
    if (*(v7 + 760))
    {
      v8 = *(v7 + 560);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = sub_297FC262C;
      block[3] = &unk_29EE88648;
      block[4] = a1;
      dispatch_async(v8, block);
    }
  }
}

uint64_t NFDriverSetPollingProfile(uint64_t a1, unsigned int a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i profile: %d", "NFDriverSetPollingProfile", 4878, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v27 = "NFDriverSetPollingProfile";
    v28 = 1024;
    v29 = 4878;
    v30 = 1024;
    LODWORD(v31) = a2;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i profile: %d", buf, 0x18u);
  }

  v7 = *(a1 + 40);
  if (v7 == a2)
  {
    return 1;
  }

  if ((v7 | 4) == 4 && (a2 & 0xFFFFFFFB) == 0)
  {
    *(a1 + 40) = a2;
    return 1;
  }

  if (a2 >= 5)
  {
    dispatch_get_specific(*v4);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i Unknown poll mode profile 0x%0x, using default", "NFDriverSetPollingProfile", 4910, 0);
    }

    dispatch_get_specific(*v4);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v27 = "NFDriverSetPollingProfile";
      v28 = 1024;
      v29 = 4910;
      v30 = 1024;
      LODWORD(v31) = 0;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown poll mode profile 0x%0x, using default", buf, 0x18u);
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = 0x63430100uLL >> (8 * a2);
  }

  if ((*(a1 + 60) & 1) != 0 || *(a1 + 32) || *(a1 + 36))
  {
    if (!sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0))
    {
      dispatch_get_specific(*v4);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v12(3, "%s:%i Failed to stop discovery", "NFDriverSetPollingProfile", 4919);
      }

      dispatch_get_specific(*v4);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v27 = "NFDriverSetPollingProfile";
        v28 = 1024;
        v29 = 4919;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to stop discovery", buf, 0x12u);
      }
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_297FBA6E8(a1, 18);
  v25[0] = HIBYTE(v15);
  v25[1] = v15;
  v25[2] = 1;
  v25[3] = v9;
  v24 = sub_297FA02E4(4u, v25);
  v16 = sub_297FA0380(a1, 37025, v24, 0);
  if (sub_297F9F694(v16))
  {
    dispatch_get_specific(*v4);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i status=0x%04llX", "NFDriverSetPollingProfile", 4930, *v16);
    }

    dispatch_get_specific(*v4);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *v16;
      *buf = 136446722;
      v27 = "NFDriverSetPollingProfile";
      v28 = 1024;
      v29 = 4930;
      v30 = 2048;
      v31 = v19;
      _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }

    sub_297F9FBDC(v16);
    sub_297FA0714(&v24);
    return 0;
  }

  sub_297F9FBDC(v16);
  sub_297FA0714(&v24);
  *(a1 + 40) = a2;
  v8 = 1;
  if (v14)
  {
    v20 = *(a1 + 62) ? 1 : 2;
    if (!sub_297F9D8BC(a1, *(a1 + 32), *(a1 + 36), *(a1 + 60), 0, *(a1 + 61), v20))
    {
      dispatch_get_specific(*v4);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(3, "%s:%i Failed to update discovery", "NFDriverSetPollingProfile", 4942);
      }

      dispatch_get_specific(*v4);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v27 = "NFDriverSetPollingProfile";
        v28 = 1024;
        v29 = 4942;
        _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update discovery", buf, 0x12u);
      }

      return 0;
    }
  }

  return v8;
}

BOOL NFDriverSetFelicaSystemCode(uint64_t a1, __int16 a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v11 = 19616;
  v12 = 2;
  v13 = HIBYTE(a2);
  v14 = a2;
  v10 = sub_297FA02E4(5u, &v11);
  v3 = sub_297FA0380(a1, 37025, v10, 0);
  v4 = sub_297F9F694(v3);
  if (v4)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04llX", "NFDriverSetFelicaSystemCode", 4960, *v3);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *v3;
      *buf = 136446722;
      v16 = "NFDriverSetFelicaSystemCode";
      v17 = 1024;
      v18 = 4960;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }
  }

  sub_297F9FBDC(v3);
  sub_297FA0714(&v10);
  return v4 == 0;
}

void NFDriverSetExpressConfig(uint64_t a1, unsigned int a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (NF_isFeatureSupported())
  {
    if (a1)
    {
      v4 = *(a1 + 24);
      *(v4 + 692) = 0;
      v5 = a2 & 7 | (8 * ((a2 >> 5) & 1)) | (a2 >> 1) & 0x20 | (a2 >> 3) & 0x10;
      if ((a2 & 0x10) != 0)
      {
        LOBYTE(v5) = v5 | 6;
      }

      *(v4 + 692) = v5;
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = *(v4 + 692);
        Logger(6, "%s:%i Express cfg: Transit:%d Access:%d Generic-A:%d SinglePoll:%d Block:%d Debug:%d", "NFDriverSetExpressConfig", 5000, v8 & 1, (v8 >> 1) & 1, (v8 >> 2) & 1, (v8 >> 3) & 1, (v8 >> 5) & 1, (v8 >> 4) & 1);
      }

      dispatch_get_specific(*v6);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v4 + 692);
        *buf = 136448002;
        v19 = "NFDriverSetExpressConfig";
        v20 = 1024;
        v21 = 5000;
        v22 = 1024;
        v23 = v10 & 1;
        v24 = 1024;
        v25 = (v10 >> 1) & 1;
        v26 = 1024;
        v27 = (v10 >> 2) & 1;
        v28 = 1024;
        v29 = (v10 >> 3) & 1;
        v30 = 1024;
        v31 = (v10 >> 5) & 1;
        v32 = 1024;
        v33 = (v10 >> 4) & 1;
        v11 = "%{public}s:%i Express cfg: Transit:%d Access:%d Generic-A:%d SinglePoll:%d Block:%d Debug:%d";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 54;
LABEL_13:
        _os_log_impl(&dword_297F97000, v12, v13, v11, buf, v14);
      }
    }

    else
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i Invalid param", "NFDriverSetExpressConfig", 4976);
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v19 = "NFDriverSetExpressConfig";
        v20 = 1024;
        v21 = 4976;
        v11 = "%{public}s:%i Invalid param";
        v12 = v17;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 18;
        goto LABEL_13;
      }
    }
  }
}

uint64_t NFDriverSetCallback(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *(*(result + 24) + 8 * a2) = a3;
  *(*(result + 24) + 8 * a2 + 264) = a4;
  return result;
}

void sub_297FC2EF4(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverUpdateFirmware(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v29 = sub_297FA02E4(*(a2 + 8), *a2);
  v7 = 0;
  v28 = sub_297FA02E4(2u, 0);
  v8 = MEMORY[0x29EDC9730];
  while (1)
  {
    if (v7 > 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = a4;
    }

    if (v9)
    {
      v10 = 2556;
    }

    else
    {
      v10 = 2559;
    }

    dispatch_get_specific(*v8);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Attempt %d of %d", "NFDriverUpdateFirmware", 5046, v7, a3);
    }

    dispatch_get_specific(*v8);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      *&buf[4] = "NFDriverUpdateFirmware";
      *&buf[12] = 1024;
      *&buf[14] = 5046;
      *&buf[18] = 1024;
      *&buf[20] = v7;
      *&buf[24] = 1024;
      *&buf[26] = a3;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Attempt %d of %d", buf, 0x1Eu);
    }

    v13 = sub_297FA0380(a1, v10, v29, v28);
    if (!sub_297F9F694(v13))
    {
      break;
    }

    v14 = *v13;
    dispatch_get_specific(*v8);
    v15 = NFLogGetLogger();
    if (v14 == 60)
    {
      if (v15)
      {
        v15(6, "%s:%i Already up-to-date", "NFDriverUpdateFirmware", 5057);
      }

      dispatch_get_specific(*v8);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverUpdateFirmware";
        *&buf[12] = 1024;
        *&buf[14] = 5057;
        v24 = "%{public}s:%i Already up-to-date";
        v25 = v27;
        v26 = 18;
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (v15)
    {
      v15(3, "%s:%i status=0x%04llX, previous state %d", "NFDriverUpdateFirmware", 5065, *v13, **v28);
    }

    dispatch_get_specific(*v8);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *v13;
      v18 = **v28;
      *buf = 136446978;
      *&buf[4] = "NFDriverUpdateFirmware";
      *&buf[12] = 1024;
      *&buf[14] = 5065;
      *&buf[18] = 2048;
      *&buf[20] = v17;
      *&buf[28] = 1024;
      *&buf[30] = v18;
      _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX, previous state %d", buf, 0x22u);
    }

    sub_297F9FBDC(v13);
    NFDriverRunIntegrityDebug(a1);
    v19 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FB7B1C;
    *&buf[24] = &unk_29EE880F8;
    *&buf[32] = a1;
    dispatch_async(v19, buf);
    if ((a3 & ~(a3 >> 31)) + 1 == ++v7)
    {
      sub_297FB7E3C(a1);
      sub_297FA0714(&v28);
      sub_297FA0714(&v29);
      return 1;
    }
  }

  dispatch_get_specific(*v8);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v21(6, "%s:%i Update successful, previous session state was %d", "NFDriverUpdateFirmware", 5050, **v28);
  }

  dispatch_get_specific(*v8);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = **v28;
    *buf = 136446722;
    *&buf[4] = "NFDriverUpdateFirmware";
    *&buf[12] = 1024;
    *&buf[14] = 5050;
    *&buf[18] = 1024;
    *&buf[20] = v23;
    v24 = "%{public}s:%i Update successful, previous session state was %d";
    v25 = v22;
    v26 = 24;
LABEL_28:
    _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
  }

LABEL_29:
  sub_297F9FBDC(v13);
  sub_297FA0714(&v28);
  sub_297FA0714(&v29);
  sub_297FC33D0(a1);
  return 0;
}

void sub_297FC33D0(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = NFGetProductType();
  if (v2 <= 9)
  {
    HasVirtualGPIO = 1;
    if (((1 << v2) & 0x206) != 0)
    {
      HasVirtualGPIO = NFHardwareHasVirtualGPIO();
    }

    else if (((1 << v2) & 0x180) == 0)
    {
      return;
    }

    v14 = 2208;
    v15 = 1;
    v16 = HasVirtualGPIO;
    v13 = sub_297FA02E4(4u, &v14);
    v4 = sub_297FA0380(a1, 240, v13, 0);
    v5 = sub_297F9F694(v4);
    v6 = MEMORY[0x29EDC9730];
    if (v5)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i failed to set vGPIO tag (0xA008)", "_NFDriverConfigureHardware", 4526);
      }

      dispatch_get_specific(*v6);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v18 = "_NFDriverConfigureHardware";
        v19 = 1024;
        v20 = 4526;
        _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to set vGPIO tag (0xA008)", buf, 0x12u);
      }
    }

    sub_297F9FBDC(v4);
    sub_297FA0714(&v13);
    dispatch_get_specific(*v6);
    v9 = NFLogGetLogger();
    if (v9)
    {
      if (HasVirtualGPIO)
      {
        v10 = "vGPIO";
      }

      else
      {
        v10 = "physical GPIO";
      }

      v9(6, "%s:%i %s configured successfully", "_NFDriverConfigureHardware", 4531, v10);
    }

    dispatch_get_specific(*v6);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (HasVirtualGPIO)
      {
        v12 = "vGPIO";
      }

      else
      {
        v12 = "physical GPIO";
      }

      *buf = 136446722;
      v18 = "_NFDriverConfigureHardware";
      v19 = 1024;
      v20 = 4531;
      v21 = 2080;
      v22 = v12;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s configured successfully", buf, 0x1Cu);
    }
  }
}

uint64_t NFDriverRestartDiscovery(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a2 && !sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0))
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Failed to stop discovery", "NFDriverRestartDiscovery", 5736);
    }

    dispatch_get_specific(*v10);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v14 = "NFDriverRestartDiscovery";
    v15 = 1024;
    v16 = 5736;
    v9 = "%{public}s:%i Failed to stop discovery";
    goto LABEL_15;
  }

  v4 = 1;
  if (*(a1 + 62))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!sub_297F9D8BC(a1, *(a1 + 32), *(a1 + 36), *(a1 + 60), a2 ^ 1, *(a1 + 61), v5))
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(3, "%s:%i Failed to update discovery", "NFDriverRestartDiscovery", 5747);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v14 = "NFDriverRestartDiscovery";
    v15 = 1024;
    v16 = 5747;
    v9 = "%{public}s:%i Failed to update discovery";
LABEL_15:
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
    return 0;
  }

  return v4;
}

BOOL NFDriverIsSecureElementEnumerated(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v3 = *(*(a1 + 24) + 536);
      return v3 != 0;
    }

    if (a2 == 4)
    {
      v3 = *(*(a1 + 24) + 544);
      return v3 != 0;
    }
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    if (a2 == 1)
    {
      v3 = *(*(a1 + 24) + 528);
      return v3 != 0;
    }
  }

  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Unknown value: %d", "NFDriverIsSecureElementEnumerated", 5775, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v9 = "NFDriverIsSecureElementEnumerated";
    v10 = 1024;
    v11 = 5775;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown value: %d", buf, 0x18u);
    return 0;
  }

  return result;
}

BOOL NFDriverSetSecureElementAlwaysOn(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  if (a2 && *(a1 + 60) != 1)
  {
    v7 = 0;
  }

  else
  {
    if (!sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0))
    {
      dispatch_get_specific(*v4);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(4, "%s:%i Failed to stop polling", "NFDriverSetSecureElementAlwaysOn", 5791);
      }

      dispatch_get_specific(*v4);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverSetSecureElementAlwaysOn";
        *&buf[12] = 1024;
        *&buf[14] = 5791;
        _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to stop polling", buf, 0x12u);
      }
    }

    v7 = 1;
  }

  dispatch_get_specific(*v4);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(6, "%s:%i type=0x%x", "_Async_NFDriverSetSEAlwaysOn", 3449, a2);
  }

  dispatch_get_specific(*v4);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "_Async_NFDriverSetSEAlwaysOn";
    *&buf[12] = 1024;
    *&buf[14] = 3449;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i type=0x%x", buf, 0x18u);
  }

  v10 = sub_297F9DC04();
  pthread_mutex_lock((v10[3] + 8));
  v11 = v10[3];
  ++*v11;
  pthread_mutex_unlock((v11 + 8));
  v12 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FD7FFC;
  *&buf[24] = &unk_29EE88BA8;
  v29 = a2;
  v27 = a1;
  v28 = v10;
  dispatch_async_and_wait(v12, buf);
  v13 = sub_297F9F694(v10);
  if (v13)
  {
    dispatch_get_specific(*v4);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i status=0x%04llX", "NFDriverSetSecureElementAlwaysOn", 5797, *v10);
    }

    dispatch_get_specific(*v4);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *v10;
      *buf = 136446722;
      *&buf[4] = "NFDriverSetSecureElementAlwaysOn";
      *&buf[12] = 1024;
      *&buf[14] = 5797;
      *&buf[18] = 2048;
      *&buf[20] = v16;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }

    v17 = *(v10 + 6);
    v18 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FB7B1C;
    *&buf[24] = &unk_29EE880F8;
    v27 = a1;
    dispatch_async(v18, buf);
    if (v17 == 44 || v17 == 34)
    {
      NFDriverSimulateCrash(a1, 57005, "NFDriverSetSecureElementAlwaysOn: CRC error or response timeout");
    }

    sub_297F9FBDC(v10);
  }

  else
  {
    sub_297F9FBDC(v10);
    if ((a2 & 1) == 0)
    {
      sub_297FC05A4(a1, 1);
    }

    if (v7)
    {
      v19 = *(a1 + 36);
      if (v19 || (*(a1 + 60) & 1) != 0)
      {
        v21 = (v19 == 0) | *(a1 + 60);
        v20 = *(a1 + 32);
      }

      else
      {
        v20 = *(a1 + 32);
        if (!v20)
        {
          return v13 == 0;
        }

        v21 = 0;
      }

      if (*(a1 + 62))
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (!sub_297F9D8BC(a1, v20, v19, v21 & 1, 0, *(a1 + 61), v22))
      {
        dispatch_get_specific(*v4);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v23(4, "%s:%i Failed to restore discoverty configuration", "NFDriverSetSecureElementAlwaysOn", 5821);
        }

        dispatch_get_specific(*v4);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetSecureElementAlwaysOn";
          *&buf[12] = 1024;
          *&buf[14] = 5821;
          _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to restore discoverty configuration", buf, 0x12u);
        }
      }
    }
  }

  return v13 == 0;
}

BOOL NFDriverSetEmbeddedSecureElementPower(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  v8 = 6;
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i eSE, enabled=%d", "NFDriverSetEmbeddedSecureElementPower", 5838, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "NFDriverSetEmbeddedSecureElementPower";
    v13 = 1024;
    v14 = 5838;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i eSE, enabled=%d", buf, 0x18u);
  }

  if (!a2)
  {
    return NFDriverSetConfiguration(a1, v10, &v8);
  }

  LODWORD(v8) = 1;
  result = NFDriverSetConfiguration(a1, v10, &v8);
  if (result)
  {
    usleep(0x7D0u);
    return 1;
  }

  return result;
}

uint64_t NFDriverSecureElementGetResponseStatus(void *a1)
{
  v1 = a1[1];
  if (v1 >= 2)
  {
    return bswap32(*(*a1 + v1 - 2)) >> 16;
  }

  else
  {
    return 0;
  }
}

uint64_t NFDriverSecureElementSendCommandToOS(uint64_t a1, unsigned int a2, unsigned int a3, char a4, char a5, char a6, char a7, char a8, uint64_t a9)
{
  v56 = *MEMORY[0x29EDCA608];
  if (a9)
  {
    v14 = *(a9 + 8);
    if (v14 > 0xFF)
    {
      if (v14 >> 16)
      {
        v37 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v39 = Logger;
          v40 = __error();
          v41 = strerror(*v40);
          v42 = __error();
          v39(3, "%s:%i %s errno=%d Payload length overflow error. ", "NFDriverSecureElementSendCommandToOS", 5895, v41, *v42);
        }

        dispatch_get_specific(*v37);
        v30 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v43 = __error();
        v44 = strerror(*v43);
        v45 = *__error();
        *buf = 136446978;
        v49 = "NFDriverSecureElementSendCommandToOS";
        v50 = 1024;
        v51 = 5895;
        v52 = 2080;
        v53 = v44;
        v54 = 1024;
        v55 = v45;
        v34 = "%{public}s:%i %s errno=%d Payload length overflow error. ";
        goto LABEL_23;
      }

      v15 = a1;
      v47 = a2;
      v16 = a8;
      v17 = v14 + 8;
    }

    else
    {
      v15 = a1;
      v47 = a2;
      v16 = a8;
      v17 = v14 + 6;
    }
  }

  else
  {
    v15 = a1;
    v47 = a2;
    v16 = a8;
    v17 = 5;
  }

  v18 = NFDataCreateWithLength();
  if (v18)
  {
    v19 = v18;
    v46 = a3;
    v20 = *v18;
    *v20 = a4;
    v20[1] = a5;
    v20[2] = a6;
    v20[3] = a7;
    if (a9)
    {
      v21 = *(a9 + 8);
      if (v21 < 0x100)
      {
        v22 = 5;
        v23 = 4;
LABEL_17:
        v20[v23] = v21;
        memcpy(&v20[v22], *a9, *(a9 + 8));
        goto LABEL_18;
      }

      if (!(v21 >> 16))
      {
        v20[4] = 0;
        v20[5] = BYTE1(v21);
        v22 = 7;
        v23 = 6;
        goto LABEL_17;
      }
    }

LABEL_18:
    v20[v17 - 1] = v16;
    v35 = NFDriverSecureElementTransceive(v15, v47, v46, v19, 0, 0);
    NFDataRelease();
    return v35;
  }

  v24 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v26 = v25;
    v27 = __error();
    v28 = strerror(*v27);
    v29 = __error();
    v26(3, "%s:%i %s errno=%d Unable to allocate memory for capdu. ", "NFDriverSecureElementSendCommandToOS", 5902, v28, *v29);
  }

  dispatch_get_specific(*v24);
  v30 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = __error();
    v32 = strerror(*v31);
    v33 = *__error();
    *buf = 136446978;
    v49 = "NFDriverSecureElementSendCommandToOS";
    v50 = 1024;
    v51 = 5902;
    v52 = 2080;
    v53 = v32;
    v54 = 1024;
    v55 = v33;
    v34 = "%{public}s:%i %s errno=%d Unable to allocate memory for capdu. ";
LABEL_23:
    _os_log_impl(&dword_297F97000, v30, OS_LOG_TYPE_ERROR, v34, buf, 0x22u);
  }

  return 0;
}

uint64_t NFDriverSecureElementTransceive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, char a6)
{
  v191 = *MEMORY[0x29EDCA608];
  memset(v186, 0, 44);
  if (*(*(a1 + 24) + 763) == 1)
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i SE in recovery", "NFDriverSecureElementTransceive", 7649);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136446466;
    *&buf[4] = "NFDriverSecureElementTransceive";
    *&buf[12] = 1024;
    *&buf[14] = 7649;
    v10 = "%{public}s:%i SE in recovery";
    goto LABEL_6;
  }

  if ((NFDriverGetControllerInfo(a1, v186) & 1) == 0)
  {
    if (!a5)
    {
      return 0;
    }

    v13 = 0;
    v14 = 1;
    goto LABEL_23;
  }

  if ((*(*(a1 + 24) + 592) & 2) == 0)
  {
    v20 = sub_297FCBF9C(a1, a2);
    if ((sub_297FAC8F4(v20) & 1) == 0)
    {
      v29 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v30(3, "%s:%i Can't send to OS %d. Not available.", "NFDriverSecureElementTransceive", 7662, a3);
      }

      dispatch_get_specific(*v29);
      v31 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 136446722;
      *&buf[4] = "NFDriverSecureElementTransceive";
      *&buf[12] = 1024;
      *&buf[14] = 7662;
      *&buf[18] = 1024;
      *&buf[20] = a3;
      v10 = "%{public}s:%i Can't send to OS %d. Not available.";
      v11 = v31;
      v12 = 24;
      goto LABEL_7;
    }
  }

  v21 = sub_297FCBF9C(a1, a2);
  if (!v21 || !*(v21 + 8))
  {
    v27 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v28(3, "%s:%i No SE for transceive", "NFDriverSecureElementTransceive", 7668);
    }

    dispatch_get_specific(*v27);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136446466;
    *&buf[4] = "NFDriverSecureElementTransceive";
    *&buf[12] = 1024;
    *&buf[14] = 7668;
    v10 = "%{public}s:%i No SE for transceive";
LABEL_6:
    v11 = v9;
    v12 = 18;
LABEL_7:
    _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_8:
    if (!a5)
    {
      return 0;
    }

    v13 = 0;
    v14 = 4;
LABEL_23:
    *a5 = v14;
    return v13;
  }

  v22 = *(*(a1 + 24) + 584);
  if ((v22 & 0x10) != 0)
  {
    if (byte_2A18BD36C)
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(6, "%s:%i [C-APDU>] REDACTED %ld bytes", "NFDriverSecureElementTransceive", 7687, a4[1]);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = a4[1];
        *buf = 136446722;
        *&buf[4] = "NFDriverSecureElementTransceive";
        *&buf[12] = 1024;
        *&buf[14] = 7687;
        *&buf[18] = 2048;
        *&buf[20] = v26;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [C-APDU>] REDACTED %ld bytes", buf, 0x1Cu);
      }
    }

    else
    {
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v166 = *(*(a1 + 24) + 584);
          v167 = a3;
          v188 = 0u;
          memset(buf, 0, sizeof(buf));
          v65 = *a4;
          v66 = a4[1];
          v67 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v176 = NFLogGetLogger();
          dispatch_get_specific(*v67);
          v68 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = a4[1];
            *v178 = 136315906;
            v179 = "NFDriverSecureElementTransceive";
            v180 = 1024;
            v181 = 7680;
            v182 = 2082;
            v183 = "[C-APDU System>]";
            v184 = 2048;
            v185 = v69;
            _os_log_impl(&dword_297F97000, v68, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v178, 0x26u);
          }

          v169 = a5;
          if (v176)
          {
            v176(6, "%s:%i %s %lu bytes :", "NFDriverSecureElementTransceive", 7680, "[C-APDU System>]", a4[1]);
          }

          if (v66)
          {
            v70 = 0;
            do
            {
              v71 = 0;
              v72 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v70)];
              do
              {
                v73 = *(v65 + v70++);
                v74 = sprintf(v72, "0x%02X ", v73);
                if (v71 > 6)
                {
                  break;
                }

                v72 += v74;
                ++v71;
              }

              while (v70 < v66);
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v75 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                *v178 = 136446210;
                v179 = buf;
                _os_log_impl(&dword_297F97000, v75, OS_LOG_TYPE_DEFAULT, "%{public}s", v178, 0xCu);
              }

              if (v176)
              {
                v176(6, "%s", buf);
              }
            }

            while (v70 < v66);
          }
        }

        else
        {
          if (a3 != 3)
          {
            goto LABEL_97;
          }

          v166 = *(*(a1 + 24) + 584);
          v167 = a3;
          v169 = a5;
          v188 = 0u;
          memset(buf, 0, sizeof(buf));
          v43 = *a4;
          v44 = a4[1];
          v45 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v174 = NFLogGetLogger();
          dispatch_get_specific(*v45);
          v46 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = a4[1];
            *v178 = 136315906;
            v179 = "NFDriverSecureElementTransceive";
            v180 = 1024;
            v181 = 7682;
            v182 = 2082;
            v183 = "[C-APDU Guest>]";
            v184 = 2048;
            v185 = v47;
            _os_log_impl(&dword_297F97000, v46, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v178, 0x26u);
          }

          if (v174)
          {
            v174(6, "%s:%i %s %lu bytes :", "NFDriverSecureElementTransceive", 7682, "[C-APDU Guest>]", a4[1]);
          }

          if (v44)
          {
            v48 = 0;
            do
            {
              v49 = 0;
              v50 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v48)];
              do
              {
                v51 = *(v43 + v48++);
                v52 = sprintf(v50, "0x%02X ", v51);
                if (v49 > 6)
                {
                  break;
                }

                v50 += v52;
                ++v49;
              }

              while (v48 < v44);
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v53 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *v178 = 136446210;
                v179 = buf;
                _os_log_impl(&dword_297F97000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s", v178, 0xCu);
              }

              if (v174)
              {
                v174(6, "%s", buf);
              }
            }

            while (v48 < v44);
          }
        }
      }

      else if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_97;
        }

        v166 = *(*(a1 + 24) + 584);
        v167 = a3;
        v188 = 0u;
        memset(buf, 0, sizeof(buf));
        v32 = *a4;
        v33 = a4[1];
        v34 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v173 = NFLogGetLogger();
        dispatch_get_specific(*v34);
        v35 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = a4[1];
          *v178 = 136315906;
          v179 = "NFDriverSecureElementTransceive";
          v180 = 1024;
          v181 = 7684;
          v182 = 2082;
          v183 = "[C-APDU UICC>]";
          v184 = 2048;
          v185 = v36;
          _os_log_impl(&dword_297F97000, v35, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v178, 0x26u);
        }

        v169 = a5;
        if (v173)
        {
          v173(6, "%s:%i %s %lu bytes :", "NFDriverSecureElementTransceive", 7684, "[C-APDU UICC>]", a4[1]);
        }

        if (v33)
        {
          v37 = 0;
          do
          {
            v38 = 0;
            v39 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v37)];
            do
            {
              v40 = *(v32 + v37++);
              v41 = sprintf(v39, "0x%02X ", v40);
              if (v38 > 6)
              {
                break;
              }

              v39 += v41;
              ++v38;
            }

            while (v37 < v33);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v42 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *v178 = 136446210;
              v179 = buf;
              _os_log_impl(&dword_297F97000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s", v178, 0xCu);
            }

            if (v173)
            {
              v173(6, "%s", buf);
            }
          }

          while (v37 < v33);
        }
      }

      else
      {
        v166 = *(*(a1 + 24) + 584);
        v167 = a3;
        v188 = 0u;
        memset(buf, 0, sizeof(buf));
        v54 = *a4;
        v55 = a4[1];
        v56 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v175 = NFLogGetLogger();
        dispatch_get_specific(*v56);
        v57 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = a4[1];
          *v178 = 136315906;
          v179 = "NFDriverSecureElementTransceive";
          v180 = 1024;
          v181 = 7678;
          v182 = 2082;
          v183 = "[C-APDU>]";
          v184 = 2048;
          v185 = v58;
          _os_log_impl(&dword_297F97000, v57, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v178, 0x26u);
        }

        v169 = a5;
        if (v175)
        {
          v175(6, "%s:%i %s %lu bytes :", "NFDriverSecureElementTransceive", 7678, "[C-APDU>]", a4[1]);
        }

        if (v55)
        {
          v59 = 0;
          do
          {
            v60 = 0;
            v61 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v59)];
            do
            {
              v62 = *(v54 + v59++);
              v63 = sprintf(v61, "0x%02X ", v62);
              if (v60 > 6)
              {
                break;
              }

              v61 += v63;
              ++v60;
            }

            while (v59 < v55);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v64 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *v178 = 136446210;
              v179 = buf;
              _os_log_impl(&dword_297F97000, v64, OS_LOG_TYPE_DEFAULT, "%{public}s", v178, 0xCu);
            }

            if (v175)
            {
              v175(6, "%s", buf);
            }
          }

          while (v59 < v55);
        }
      }

      a5 = v169;
      LOBYTE(v22) = v166;
      a3 = v167;
    }
  }

LABEL_97:
  v76 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200406E52F545uLL);
  if (!v76)
  {
    v91 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v92 = NFLogGetLogger();
    if (v92)
    {
      v92(3, "%s:%i failed to allocate Tx context", "NFDriverSecureElementTransceive", 7695);
    }

    dispatch_get_specific(*v91);
    v93 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverSecureElementTransceive";
      *&buf[12] = 1024;
      *&buf[14] = 7695;
      _os_log_impl(&dword_297F97000, v93, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to allocate Tx context", buf, 0x12u);
    }

    if (!a5)
    {
      return 0;
    }

    v13 = 0;
    v14 = 3;
    goto LABEL_23;
  }

  v77 = v76;
  *v76 = 11319;
  *(v76 + 2) = 666;
  v76[2] = a1;
  v78 = malloc_type_calloc(0x2C37uLL, 1uLL, 0x100004077774924uLL);
  if (!v78)
  {
    v94 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v95 = NFLogGetLogger();
    if (v95)
    {
      v95(3, "%s:%i failed to allocate buffer", "NFDriverSecureElementTransceive", 7705);
    }

    dispatch_get_specific(*v94);
    v96 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverSecureElementTransceive";
      *&buf[12] = 1024;
      *&buf[14] = 7705;
      _os_log_impl(&dword_297F97000, v96, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to allocate buffer", buf, 0x12u);
    }

    if (a5)
    {
      *a5 = 3;
    }

    v97 = v77;
    goto LABEL_134;
  }

  v79 = v78;
  v80 = *v77;
  v81 = malloc_type_calloc(1uLL, 0x30uLL, 0x101004089CF3E64uLL);
  if (!v81)
  {
    v98 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v99 = NFLogGetLogger();
    if (v99)
    {
      v99(3, "%s:%i failed to allocate Tx data struct", "NFDriverSecureElementTransceive", 7713);
    }

    dispatch_get_specific(*v98);
    v100 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverSecureElementTransceive";
      *&buf[12] = 1024;
      *&buf[14] = 7713;
      _os_log_impl(&dword_297F97000, v100, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to allocate Tx data struct", buf, 0x12u);
    }

    if (a5)
    {
      *a5 = 3;
    }

    free(v77);
    v97 = v79;
LABEL_134:
    free(v97);
    return 0;
  }

  v170 = a5;
  v81[40] = a6;
  *(v81 + 2) = a4[1];
  *v81 = *a4;
  *(v81 + 6) = v80;
  v177 = v79;
  *(v81 + 2) = v79;
  if (a3 <= 4)
  {
    *(v81 + 9) = dword_297FDB6F0[a3];
  }

  v168 = a3;
  v172 = v81;
  v82 = 1;
  while (1)
  {
    sub_297FB8080(a1);
    v83 = sub_297F9DC04();
    pthread_mutex_lock((v83[3] + 8));
    v84 = v83[3];
    ++*v84;
    pthread_mutex_unlock((v84 + 8));
    v83[2] = v77;
    v85 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FD8754;
    *&buf[24] = &unk_29EE88C28;
    v190 = a2;
    *&v188 = a1;
    *(&v188 + 1) = v172;
    v189 = v83;
    dispatch_async_and_wait(v85, buf);
    v86 = sub_297F9F694(v83);
    dispatch_semaphore_signal(*(*(a1 + 24) + 552));
    if (!v86)
    {
      sub_297F9FBDC(v83);
      v102 = a5;
      v171 = v77;
      if ((v22 & 0x10) != 0)
      {
        if (byte_2A18BD36C)
        {
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v103 = NFLogGetLogger();
          if (v103)
          {
            v103(6, "%s:%i [R-APDU<] REDACTED %ld bytes", "NFDriverSecureElementTransceive", 7835, *v77);
          }

          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v104 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            v105 = *v77;
            *buf = 136446722;
            *&buf[4] = "NFDriverSecureElementTransceive";
            *&buf[12] = 1024;
            *&buf[14] = 7835;
            *&buf[18] = 2048;
            *&buf[20] = v105;
            _os_log_impl(&dword_297F97000, v104, OS_LOG_TYPE_DEFAULT, "%{public}s:%i [R-APDU<] REDACTED %ld bytes", buf, 0x1Cu);
          }

          goto LABEL_239;
        }

        if (v168 > 1)
        {
          if (v168 == 2)
          {
            v188 = 0u;
            memset(buf, 0, sizeof(buf));
            v151 = *v77;
            v152 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v153 = NFLogGetLogger();
            dispatch_get_specific(*v152);
            v154 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
            {
              v155 = *v171;
              *v178 = 136315906;
              v179 = "NFDriverSecureElementTransceive";
              v180 = 1024;
              v181 = 7828;
              v182 = 2082;
              v183 = "[R-APDU System<]";
              v184 = 2048;
              v185 = v155;
              _os_log_impl(&dword_297F97000, v154, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v178, 0x26u);
            }

            if (v153)
            {
              v153(6, "%s:%i %s %lu bytes :", "NFDriverSecureElementTransceive", 7828, "[R-APDU System<]", *v171);
            }

            if (v151)
            {
              v156 = 0;
              do
              {
                v157 = 0;
                v158 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v156)];
                do
                {
                  v159 = v177[v156++];
                  v160 = sprintf(v158, "0x%02X ", v159);
                  if (v157 > 6)
                  {
                    break;
                  }

                  v158 += v160;
                  ++v157;
                }

                while (v156 < v151);
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v161 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
                {
                  *v178 = 136446210;
                  v179 = buf;
                  _os_log_impl(&dword_297F97000, v161, OS_LOG_TYPE_DEFAULT, "%{public}s", v178, 0xCu);
                }

                if (v153)
                {
                  v153(6, "%s", buf);
                }
              }

              while (v156 < v151);
            }

            goto LABEL_238;
          }

          if (v168 == 3)
          {
            v188 = 0u;
            memset(buf, 0, sizeof(buf));
            v128 = *v77;
            v129 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v130 = NFLogGetLogger();
            dispatch_get_specific(*v129);
            v131 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
            {
              v132 = *v171;
              *v178 = 136315906;
              v179 = "NFDriverSecureElementTransceive";
              v180 = 1024;
              v181 = 7830;
              v182 = 2082;
              v183 = "[R-APDU Guest<]";
              v184 = 2048;
              v185 = v132;
              _os_log_impl(&dword_297F97000, v131, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v178, 0x26u);
            }

            if (v130)
            {
              v130(6, "%s:%i %s %lu bytes :", "NFDriverSecureElementTransceive", 7830, "[R-APDU Guest<]", *v171);
            }

            if (v128)
            {
              v133 = 0;
              do
              {
                v134 = 0;
                v135 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v133)];
                do
                {
                  v136 = v134 + 1;
                  v137 = v134 + 1 + v133;
                  v138 = sprintf(v135, "0x%02X ", v177[v133 + v134]);
                  if (v134 > 6)
                  {
                    break;
                  }

                  v135 += v138;
                  ++v134;
                }

                while (v137 < v128);
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v139 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                {
                  *v178 = 136446210;
                  v179 = buf;
                  _os_log_impl(&dword_297F97000, v139, OS_LOG_TYPE_DEFAULT, "%{public}s", v178, 0xCu);
                }

                if (v130)
                {
                  v130(6, "%s", buf);
                }

                v133 += v136;
              }

              while (v137 < v128);
            }

            goto LABEL_238;
          }
        }

        else
        {
          if (!v168)
          {
            v188 = 0u;
            memset(buf, 0, sizeof(buf));
            v140 = *v77;
            v141 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v142 = NFLogGetLogger();
            dispatch_get_specific(*v141);
            v143 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
            {
              v144 = *v171;
              *v178 = 136315906;
              v179 = "NFDriverSecureElementTransceive";
              v180 = 1024;
              v181 = 7826;
              v182 = 2082;
              v183 = "[R-APDU<]";
              v184 = 2048;
              v185 = v144;
              _os_log_impl(&dword_297F97000, v143, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v178, 0x26u);
            }

            if (v142)
            {
              v142(6, "%s:%i %s %lu bytes :", "NFDriverSecureElementTransceive", 7826, "[R-APDU<]", *v171);
            }

            if (v140)
            {
              v145 = 0;
              do
              {
                v146 = 0;
                v147 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v145)];
                do
                {
                  v148 = v177[v145++];
                  v149 = sprintf(v147, "0x%02X ", v148);
                  if (v146 > 6)
                  {
                    break;
                  }

                  v147 += v149;
                  ++v146;
                }

                while (v145 < v140);
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v150 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                {
                  *v178 = 136446210;
                  v179 = buf;
                  _os_log_impl(&dword_297F97000, v150, OS_LOG_TYPE_DEFAULT, "%{public}s", v178, 0xCu);
                }

                if (v142)
                {
                  v142(6, "%s", buf);
                }
              }

              while (v145 < v140);
            }

            goto LABEL_238;
          }

          if (v168 == 1)
          {
            v188 = 0u;
            memset(buf, 0, sizeof(buf));
            v116 = *v77;
            v117 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v118 = NFLogGetLogger();
            dispatch_get_specific(*v117);
            v119 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              v120 = *v171;
              *v178 = 136315906;
              v179 = "NFDriverSecureElementTransceive";
              v180 = 1024;
              v181 = 7832;
              v182 = 2082;
              v183 = "[R-APDU UICC<]";
              v184 = 2048;
              v185 = v120;
              _os_log_impl(&dword_297F97000, v119, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v178, 0x26u);
            }

            if (v118)
            {
              v118(6, "%s:%i %s %lu bytes :", "NFDriverSecureElementTransceive", 7832, "[R-APDU UICC<]", *v171);
            }

            if (v116)
            {
              v121 = 0;
              do
              {
                v122 = 0;
                v123 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v121)];
                do
                {
                  v124 = v122 + 1;
                  v125 = v122 + 1 + v121;
                  v126 = sprintf(v123, "0x%02X ", v177[v121 + v122]);
                  if (v122 > 6)
                  {
                    break;
                  }

                  v123 += v126;
                  ++v122;
                }

                while (v125 < v116);
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v127 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                {
                  *v178 = 136446210;
                  v179 = buf;
                  _os_log_impl(&dword_297F97000, v127, OS_LOG_TYPE_DEFAULT, "%{public}s", v178, 0xCu);
                }

                if (v118)
                {
                  v118(6, "%s", buf);
                }

                v121 += v124;
              }

              while (v125 < v116);
            }

LABEL_238:
            v102 = v170;
            v79 = v177;
          }
        }
      }

LABEL_239:
      v13 = NFDataCreateWithBytesNoCopy();
      if (v13)
      {
        if (v102)
        {
          *v102 = 0;
        }
      }

      else
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v162 = NFLogGetLogger();
        if (v162)
        {
          v162(3, "%s:%i Failed to create data (%lu bytes) with result", "NFDriverSecureElementTransceive", 7841, *v171);
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v163 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          v164 = *v171;
          *buf = 136446722;
          *&buf[4] = "NFDriverSecureElementTransceive";
          *&buf[12] = 1024;
          *&buf[14] = 7841;
          *&buf[18] = 2048;
          *&buf[20] = v164;
          _os_log_impl(&dword_297F97000, v163, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create data (%lu bytes) with result", buf, 0x1Cu);
        }

        if (v102)
        {
          *v102 = 3;
        }

        free(v79);
      }

      free(v172);
      free(v171);
      return v13;
    }

    v87 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FD8E24;
    *&buf[24] = &unk_29EE88C48;
    *&v188 = a1;
    dispatch_async(v87, buf);
    v88 = *v83;
    if (*v83 == 65)
    {
      *(*(a1 + 24) + 763) = 0;
      sub_297FBF5D0(a1);
      v88 = *v83;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v89 = NFLogGetLogger();
    if (v88 != 67)
    {
      break;
    }

    if (v89)
    {
      v89(3, "%s:%i eSE power-on failed! (%d/%d)", "NFDriverSecureElementTransceive", 7737, v82, 3);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v90 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "NFDriverSecureElementTransceive";
      *&buf[12] = 1024;
      *&buf[14] = 7737;
      *&buf[18] = 1024;
      *&buf[20] = v82;
      *&buf[24] = 1024;
      *&buf[26] = 3;
      _os_log_impl(&dword_297F97000, v90, OS_LOG_TYPE_ERROR, "%{public}s:%i eSE power-on failed! (%d/%d)", buf, 0x1Eu);
    }

    sub_297F9FBDC(v83);
    if (++v82 == 4)
    {
      free(v172);
      free(v77);
      free(v79);
      if (!a5)
      {
        return 0;
      }

      v13 = 0;
      *a5 = 4;
      return v13;
    }
  }

  if (v89)
  {
    v89(3, "%s:%i status=0x%04llX", "NFDriverSecureElementTransceive", 7751, *v83);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v106 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
  {
    v107 = *v83;
    *buf = 136446722;
    *&buf[4] = "NFDriverSecureElementTransceive";
    *&buf[12] = 1024;
    *&buf[14] = 7751;
    *&buf[18] = 2048;
    *&buf[20] = v107;
    _os_log_impl(&dword_297F97000, v106, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
  }

  NFDriverDumpUART(a1);
  v108 = *v83;
  if (*v83 == 65)
  {
    v109 = *(a1 + 24);
    if (*(v109 + 762) == 1)
    {
      v110 = *(v109 + 96);
      if (v110)
      {
        v110(*(v109 + 360), a2, 0);
        v108 = *v83;
        goto LABEL_151;
      }
    }

LABEL_171:
    sub_297F9FBDC(v83);
    free(v79);
    free(v172);
    free(v77);
    if (!a5)
    {
      return 0;
    }

    v13 = 0;
    v115 = 1;
LABEL_173:
    *a5 = v115;
    return v13;
  }

LABEL_151:
  if (v108 == 214)
  {
    if ((*(*(a1 + 24) + 756) - 14) > 4)
    {
      goto LABEL_171;
    }

    sub_297FBEF8C(a1);
    v108 = *v83;
  }

  if ((v108 - 36) <= 0x1E && ((1 << (v108 - 36)) & 0x40000101) != 0 || v108 == 218)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v113 = NFLogGetLogger();
    if (v113)
    {
      v113(3, "%s:%i Simulating HW Reset", "NFDriverSecureElementTransceive", 7799);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v114 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverSecureElementTransceive";
      *&buf[12] = 1024;
      *&buf[14] = 7799;
      _os_log_impl(&dword_297F97000, v114, OS_LOG_TYPE_ERROR, "%{public}s:%i Simulating HW Reset", buf, 0x12u);
    }

    if (NFIsInternalBuild() && *v83 == 44 && *(*(a1 + 24) + 769) == 1 && NFDriverCopySMBLog(a1))
    {
      NFDataRelease();
    }

    sleep(1u);
    NFDriverSimulateCrash(a1, 57005, "Transceive Failure");
    goto LABEL_171;
  }

  if (v108 != 217)
  {
    goto LABEL_171;
  }

  v111 = *(a1 + 24);
  if (*(v111 + 762) == 1)
  {
    v112 = *v77 ? *v79 : 0;
    v165 = *(v111 + 200);
    if (v165)
    {
      v165(*(v111 + 464), v168, v112);
    }
  }

  sub_297F9FBDC(v83);
  free(v77);
  free(v172);
  free(v79);
  if (a5)
  {
    v13 = 0;
    v115 = 22;
    goto LABEL_173;
  }

  return 0;
}

BOOL NFDriverSecureElementSelectWithOS(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _WORD *a5)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = NFDriverSecureElementSendCommandToOS(a1, a2, a3, 0, 164, 4, 0, 0, a4);
  if (v6)
  {
    v7 = v6[1];
    if (v7 >= 2)
    {
      v8 = __rev16(*(*v6 + v7 - 2));
    }

    else
    {
      v8 = 0;
    }

    NFDataRelease();
    if (a5)
    {
      *a5 = v8;
    }

    return v8 == 36864;
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to select", "NFDriverSecureElementSelectWithOS", 5952);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "NFDriverSecureElementSelectWithOS";
      v15 = 1024;
      v16 = 5952;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to select", buf, 0x12u);
    }

    result = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  return result;
}

uint64_t NFDriverTriggerDelayedWake(uint64_t a1, char a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 60) & 1) != 0 || *(a1 + 32) || *(a1 + 36))
  {
    if (!sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0))
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to stop discovery", "NFDriverTriggerDelayedWake", 5973);
      }

      dispatch_get_specific(*v4);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverTriggerDelayedWake";
        *&buf[12] = 1024;
        *&buf[14] = 5973;
        _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to stop discovery", buf, 0x12u);
      }
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if ((sub_297FC05A4(a1, 0) & 1) == 0)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Failed to disable standby mode.", "NFDriverTriggerDelayedWake", 5979);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    *&buf[4] = "NFDriverTriggerDelayedWake";
    *&buf[12] = 1024;
    *&buf[14] = 5979;
    v18 = "%{public}s:%i Failed to disable standby mode.";
LABEL_21:
    _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
    return 0;
  }

  v8 = sub_297F9DC04();
  pthread_mutex_lock((v8[3] + 8));
  v9 = v8[3];
  ++*v9;
  pthread_mutex_unlock((v9 + 8));
  v10 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FD81B8;
  *&buf[24] = &unk_29EE88BC8;
  v27 = a2;
  v25 = a1;
  v26 = v8;
  dispatch_async_and_wait(v10, buf);
  if (sub_297F9F694(v8))
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i status=0x%04llX", "NFDriverTriggerDelayedWake", 5985, *v8);
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *v8;
      *buf = 136446722;
      *&buf[4] = "NFDriverTriggerDelayedWake";
      *&buf[12] = 1024;
      *&buf[14] = 5985;
      *&buf[18] = 2048;
      *&buf[20] = v14;
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }

    sub_297F9FBDC(v8);
    return 0;
  }

  sub_297F9FBDC(v8);
  v19 = 1;
  if (v7)
  {
    v21 = *(a1 + 62) ? 1 : 2;
    if (!sub_297F9D8BC(a1, *(a1 + 32), *(a1 + 36), *(a1 + 60), 0, *(a1 + 61), v21))
    {
      v22 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v23(3, "%s:%i Failed to update discovery", "NFDriverTriggerDelayedWake", 5993);
      }

      dispatch_get_specific(*v22);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446466;
      *&buf[4] = "NFDriverTriggerDelayedWake";
      *&buf[12] = 1024;
      *&buf[14] = 5993;
      v18 = "%{public}s:%i Failed to update discovery";
      goto LABEL_21;
    }
  }

  return v19;
}

BOOL NFDriverCrashNFCC(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Crashing in %d ms", "NFDriverCrashNFCC", 6007, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "NFDriverCrashNFCC";
    v18 = 1024;
    v19 = 6007;
    v20 = 1024;
    LODWORD(v21) = a2;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Crashing in %d ms", buf, 0x18u);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = sub_297FC68AC;
  v13[3] = &unk_29EE88668;
  v13[4] = a1;
  v14 = a2 != 0;
  v15 = a2;
  v7 = sub_297FA1B10(a1, v13);
  v8 = sub_297F9F694(v7);
  if (v8)
  {
    dispatch_get_specific(*v4);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i status=0x%04llX", "NFDriverCrashNFCC", 6022, *v7);
    }

    dispatch_get_specific(*v4);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *v7;
      *buf = 136446722;
      v17 = "NFDriverCrashNFCC";
      v18 = 1024;
      v19 = 6022;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }
  }

  sub_297F9FBDC(v7);
  return v8 == 0;
}

BOOL NFDriverEnableHeadlessTestMode(uint64_t a1, int a2, unsigned int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = sub_297FBA6E8(a1, 27);
  v15[0] = HIBYTE(v6);
  v15[1] = v6;
  v16 = 1;
  if (a2)
  {
    v7 = 429496730 * a3;
    if (BYTE4(v7) >= 0x5Bu)
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Interval must be < 900 ms", "NFDriverEnableHeadlessTestMode", 6048);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverEnableHeadlessTestMode";
        v18 = 1024;
        v19 = 6048;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Interval must be < 900 ms", buf, 0x12u);
      }

      return 0;
    }

    HIBYTE(v16) = BYTE4(v7) | 0x80;
  }

  v8 = sub_297FA02E4(4u, v15);
  *buf = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = sub_297FA0380(a1, 37025, v8, 0);
  v10 = sub_297F9F694(v9) == 0;
  sub_297F9FBDC(v9);
  sub_297FA0714(buf);
  return v10;
}

BOOL NFDriverToggleGPIO(uint64_t a1, char a2)
{
  v4 = sub_297FBA6E8(a1, 28);
  v10[0] = HIBYTE(v4);
  v10[1] = v4;
  v10[2] = 1;
  v10[3] = (16 * a2) & 0x8F | ((a2 & 4) != 0);
  v5 = sub_297FA02E4(4u, v10);
  v9 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = sub_297FA0380(a1, 37025, v5, 0);
  v7 = sub_297F9F694(v6) == 0;
  sub_297F9FBDC(v6);
  sub_297FA0714(&v9);
  return v7;
}

uint64_t sub_297FC6B20(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0;
  if (a1 && (*(a1 + 57) & 1) != 0)
  {
    if (!sub_297FBE498(*(*(a1 + 24) + 576), &v8, 0, 0))
    {
      v1 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(5, "%s:%i Get stack breadcrumb failed", "_Dispatched_NFDriverGetStackBreadcrumb", 6134);
      }

      dispatch_get_specific(*v1);
      v3 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v10 = "_Dispatched_NFDriverGetStackBreadcrumb";
        v11 = 1024;
        v12 = 6134;
        _os_log_impl(&dword_297F97000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Get stack breadcrumb failed", buf, 0x12u);
      }
    }

    return v8;
  }

  else
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v6 = NFLogGetLogger();
    if (v6)
    {
      v6(4, "%s:%i Driver is null", "_Dispatched_NFDriverGetStackBreadcrumb", 6130);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "_Dispatched_NFDriverGetStackBreadcrumb";
      v11 = 1024;
      v12 = 6130;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Driver is null", buf, 0x12u);
    }

    return 0;
  }
}

uint64_t sub_297FC6CE8(uint64_t a1)
{
  result = sub_297FC6B20(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t NFDriverDebugDumpMemory(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v20 = 0;
  memset(v21, 0, 44);
  if (a2)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Unknown type: %d", "NFDriverDebugDumpMemory", 6187, a2);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "NFDriverDebugDumpMemory";
      *&buf[12] = 1024;
      *&buf[14] = 6187;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown type: %d", buf, 0x18u);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  if (!NFDriverGetControllerInfo(a1, v21))
  {
    return 0;
  }

  if (DWORD1(v21[0]) == 21)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(6, "%s:%i Device does not support this feature", "NFDriverDebugDumpMemory", 6197);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverDebugDumpMemory";
      *&buf[12] = 1024;
      *&buf[14] = 6197;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Device does not support this feature", buf, 0x12u);
    }

    return 0;
  }

  v11 = sub_297F9DC04();
  pthread_mutex_lock((v11[3] + 8));
  v12 = v11[3];
  ++*v12;
  pthread_mutex_unlock((v12 + 8));
  v11[2] = &v20;
  v13 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FD8424;
  *&buf[24] = &unk_29EE88BE8;
  v23 = v11;
  v24 = a1;
  v25 = v7;
  dispatch_async_and_wait(v13, buf);
  if (sub_297F9F694(v11))
  {
    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(3, "%s:%i status=0x%04llX", "NFDriverDebugDumpMemory", 6203, *v11);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *v11;
      *buf = 136446722;
      *&buf[4] = "NFDriverDebugDumpMemory";
      *&buf[12] = 1024;
      *&buf[14] = 6203;
      *&buf[18] = 2048;
      *&buf[20] = v17;
      _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }

    sub_297F9FBDC(v11);
    if (*v11 != 30)
    {
      v18 = *(*(a1 + 24) + 560);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FB7B1C;
      *&buf[24] = &unk_29EE880F8;
      v23 = a1;
      dispatch_async(v18, buf);
    }

    return 0;
  }

  sub_297F9FBDC(v11);
  return v20;
}

uint64_t NFDriverRemoteDeviceFelicaTransceive(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, double a5)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 5;
  }

  *a4 = 0;
  v10 = malloc_type_calloc(0x10000uLL, 1uLL, 0x100004077774924uLL);
  if (!v10)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to allocate buffer", "NFDriverRemoteDeviceFelicaTransceive", 6315);
    }

    dispatch_get_specific(*v17);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "NFDriverRemoteDeviceFelicaTransceive";
      v29 = 1024;
      v30 = 6315;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer", buf, 0x12u);
    }

    return 3;
  }

  v11 = v10;
  if (!a3)
  {
    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i No command APDU provided", "NFDriverRemoteDeviceFelicaTransceive", 6320);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "NFDriverRemoteDeviceFelicaTransceive";
      v29 = 1024;
      v30 = 6320;
      _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i No command APDU provided", buf, 0x12u);
    }

    free(v11);
    return 5;
  }

  if (a3[1] <= 0x10000uLL)
  {
    v23 = malloc_type_calloc(1uLL, 0x48uLL, 0x1010040DB589B7BuLL);
    if (v23)
    {
      v24 = v23;
      *v23 = 240;
      *(v23 + 4) = *a3;
      v23[10] = a3[1];
      *(v23 + 6) = v11;
      v23[14] = 0x10000;
      v16 = sub_297FC7470(a1, a2, v23, a5);
      if (v16 || (v25 = NFDataCreateWithBytesNoCopy()) == 0)
      {
        free(v11);
      }

      else
      {
        *a4 = v25;
      }

      free(v24);
      return v16;
    }

    free(v11);
    return 3;
  }

  v12 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v13(3, "%s:%i Felica command is too large: %ld bytes", "NFDriverRemoteDeviceFelicaTransceive", 6326, a3[1]);
  }

  dispatch_get_specific(*v12);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = a3[1];
    *buf = 136446722;
    v28 = "NFDriverRemoteDeviceFelicaTransceive";
    v29 = 1024;
    v30 = 6326;
    v31 = 2048;
    v32 = v15;
    _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Felica command is too large: %ld bytes", buf, 0x1Cu);
  }

  free(v11);
  return 8;
}

uint64_t sub_297FC7470(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v54 = *MEMORY[0x29EDCA608];
  v6 = *(*(a1 + 24) + 584);
  if ((v6 & 0x10) != 0)
  {
    v40 = a2;
    v41 = a1;
    v42 = *(*(a1 + 24) + 584);
    v53 = 0u;
    memset(v52, 0, sizeof(v52));
    v7 = *(a3 + 40);
    v8 = *(a3 + 32);
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a3 + 40);
      *buf = 136315906;
      v45 = "_NFDriverRemoteDevTransceive";
      v46 = 1024;
      v47 = 6260;
      v48 = 2082;
      v49 = "[Reader C-APDU>]";
      v50 = 2048;
      v51 = v12;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
    }

    if (Logger)
    {
      Logger(6, "%s:%i %s %lu bytes :", "_NFDriverRemoteDevTransceive", 6260, "[Reader C-APDU>]", *(a3 + 40));
    }

    if (v7)
    {
      v13 = 0;
      do
      {
        v14 = 0;
        v15 = &v52[__sprintf_chk(v52, 0, 0x30uLL, "%04lX: ", v13)];
        do
        {
          v16 = *(v8 + v13++);
          v17 = sprintf(v15, "0x%02X ", v16);
          if (v14 > 6)
          {
            break;
          }

          v15 += v17;
          ++v14;
        }

        while (v13 < v7);
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v45 = v52;
          _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }

        if (Logger)
        {
          Logger(6, "%s", v52);
        }
      }

      while (v13 < v7);
    }

    LOBYTE(v6) = v42;
    a2 = v40;
    a1 = v41;
  }

  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 0x40000000;
  v43[2] = sub_297FD8660;
  v43[3] = &unk_29EE88C08;
  v43[4] = a3;
  *&v43[5] = a4;
  v43[6] = a1;
  v43[7] = a2;
  v19 = sub_297FA1B10(a1, v43);
  v20 = sub_297F9F694(v19);
  if (v20 > 144)
  {
    v21 = 6;
    v22 = v20 + 111;
    if ((v20 - 145) <= 0x27)
    {
      if (((1 << v22) & 0xB200000000) != 0)
      {
LABEL_20:
        v21 = 20;
        goto LABEL_51;
      }

      if (((1 << v22) & 0x21) != 0)
      {
        v21 = 7;
        goto LABEL_51;
      }

      if (v20 == 148)
      {
        goto LABEL_51;
      }
    }

    if (v20 == 255)
    {
      goto LABEL_51;
    }

    goto LABEL_29;
  }

  if (v20)
  {
    if (v20 == 12)
    {
      v21 = 3;
      goto LABEL_51;
    }

    if (v20 == 44)
    {
      goto LABEL_20;
    }

LABEL_29:
    v23 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v24(3, "%s:%i phLibNfc_RemoteDev_Transceive failed 0x%04llx", "_NFDriverRemoteDevTransceive", 6287, *v19);
    }

    dispatch_get_specific(*v23);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *v19;
      *v52 = 136446722;
      *&v52[4] = "_NFDriverRemoteDevTransceive";
      *&v52[12] = 1024;
      *&v52[14] = 6287;
      *&v52[18] = 2048;
      *&v52[20] = v26;
      _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_Transceive failed 0x%04llx", v52, 0x1Cu);
    }

    v21 = 1;
    goto LABEL_51;
  }

  if ((v6 & 0x10) != 0)
  {
    v53 = 0u;
    memset(v52, 0, sizeof(v52));
    v27 = *(a3 + 56);
    v28 = *(a3 + 48);
    v29 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v30 = NFLogGetLogger();
    dispatch_get_specific(*v29);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a3 + 56);
      *buf = 136315906;
      v45 = "_NFDriverRemoteDevTransceive";
      v46 = 1024;
      v47 = 6294;
      v48 = 2082;
      v49 = "[Reader R-APDU<]";
      v50 = 2048;
      v51 = v32;
      _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
    }

    if (v30)
    {
      v30(6, "%s:%i %s %lu bytes :", "_NFDriverRemoteDevTransceive", 6294, "[Reader R-APDU<]", *(a3 + 56));
    }

    if (v27)
    {
      v33 = 0;
      do
      {
        v34 = 0;
        v35 = &v52[__sprintf_chk(v52, 0, 0x30uLL, "%04lX: ", v33)];
        do
        {
          v36 = *(v28 + v33++);
          v37 = sprintf(v35, "0x%02X ", v36);
          if (v34 > 6)
          {
            break;
          }

          v35 += v37;
          ++v34;
        }

        while (v33 < v27);
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v38 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v45 = v52;
          _os_log_impl(&dword_297F97000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }

        if (v30)
        {
          v30(6, "%s", v52);
        }
      }

      while (v33 < v27);
    }
  }

  v21 = 0;
LABEL_51:
  v19[2] = 0;
  sub_297F9FBDC(v19);
  return v21;
}

uint64_t NFDriverRemoteDeviceIso15693Transceive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 5;
  }

  *a4 = 0;
  v10 = malloc_type_calloc(0x10000uLL, 1uLL, 0x100004077774924uLL);
  if (!v10)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to allocate buffer", "NFDriverRemoteDeviceIso15693Transceive", 6372);
    }

    dispatch_get_specific(*v17);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v29 = "NFDriverRemoteDeviceIso15693Transceive";
      v30 = 1024;
      v31 = 6372;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer", buf, 0x12u);
    }

    return 3;
  }

  v11 = v10;
  if (!a3)
  {
    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i No command APDU provided", "NFDriverRemoteDeviceIso15693Transceive", 6377);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v29 = "NFDriverRemoteDeviceIso15693Transceive";
      v30 = 1024;
      v31 = 6377;
      _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i No command APDU provided", buf, 0x12u);
    }

    free(v11);
    return 5;
  }

  if (*(a3 + 8) <= 0x10000uLL)
  {
    v23 = malloc_type_calloc(1uLL, 0x48uLL, 0x1010040DB589B7BuLL);
    if (v23)
    {
      v24 = v23;
      if ((**a3 & 0x40) != 0)
      {
        *(v23 + 4) = 0;
        v25 = 1;
      }

      else
      {
        v25 = 0;
      }

      *v23 = v25;
      *(v23 + 4) = *a3;
      v23[10] = *(a3 + 8);
      *(v23 + 6) = v11;
      v23[14] = 0x10000;
      v16 = sub_297FC7470(a1, a2, v23, a5);
      if (v16 || (v26 = NFDataCreateWithBytesNoCopy()) == 0)
      {
        free(v11);
      }

      else
      {
        *a4 = v26;
      }

      free(v24);
      return v16;
    }

    free(v11);
    return 3;
  }

  v12 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v13(3, "%s:%i Command is too large: %ld bytes", "NFDriverRemoteDeviceIso15693Transceive", 6383, *(a3 + 8));
  }

  dispatch_get_specific(*v12);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a3 + 8);
    *buf = 136446722;
    v29 = "NFDriverRemoteDeviceIso15693Transceive";
    v30 = 1024;
    v31 = 6383;
    v32 = 2048;
    v33 = v15;
    _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Command is too large: %ld bytes", buf, 0x1Cu);
  }

  free(v11);
  return 8;
}

uint64_t NFDriverRemoteDeviceIso14443Transceive(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, double a5)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 5;
  }

  *a4 = 0;
  v10 = malloc_type_calloc(0x10000uLL, 1uLL, 0x100004077774924uLL);
  if (!v10)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to allocate buffer", "NFDriverRemoteDeviceIso14443Transceive", 6437);
    }

    dispatch_get_specific(*v17);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "NFDriverRemoteDeviceIso14443Transceive";
      v29 = 1024;
      v30 = 6437;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer", buf, 0x12u);
    }

    return 3;
  }

  v11 = v10;
  if (!a3)
  {
    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i No command APDU provided", "NFDriverRemoteDeviceIso14443Transceive", 6442);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "NFDriverRemoteDeviceIso14443Transceive";
      v29 = 1024;
      v30 = 6442;
      _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i No command APDU provided", buf, 0x12u);
    }

    free(v11);
    return 5;
  }

  if (a3[1] <= 0x10000uLL)
  {
    v23 = malloc_type_calloc(1uLL, 0x48uLL, 0x1010040DB589B7BuLL);
    if (v23)
    {
      v24 = v23;
      *v23 = 0;
      *(v23 + 4) = *a3;
      v23[10] = a3[1];
      *(v23 + 6) = v11;
      v23[14] = 0x10000;
      v16 = sub_297FC7470(a1, a2, v23, a5);
      if (v16 || (v25 = NFDataCreateWithBytesNoCopy()) == 0)
      {
        free(v11);
      }

      else
      {
        *a4 = v25;
      }

      free(v24);
      return v16;
    }

    free(v11);
    return 3;
  }

  v12 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v13(3, "%s:%i Command is too large: %ld bytes", "NFDriverRemoteDeviceIso14443Transceive", 6448, a3[1]);
  }

  dispatch_get_specific(*v12);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = a3[1];
    *buf = 136446722;
    v28 = "NFDriverRemoteDeviceIso14443Transceive";
    v29 = 1024;
    v30 = 6448;
    v31 = 2048;
    v32 = v15;
    _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Command is too large: %ld bytes", buf, 0x1Cu);
  }

  free(v11);
  return 8;
}

uint64_t NFDriverRemoteDevConnect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 0x40000000;
    v14[2] = sub_297FC83C0;
    v14[3] = &unk_29EE886D8;
    v14[4] = a3;
    v14[5] = a1;
    v14[6] = a2;
    v3 = sub_297FA1B10(a1, v14);
    if (sub_297F9F694(v3))
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i phLibNfc_RemoteDev_Connect failed: 0x%04llx", "NFDriverRemoteDevConnect", 6536, *v3);
      }

      dispatch_get_specific(*v4);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *v3;
        *buf = 136446722;
        v16 = "NFDriverRemoteDevConnect";
        v17 = 1024;
        v18 = 6536;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_Connect failed: 0x%04llx", buf, 0x1Cu);
      }

      if (*v3 == 51)
      {
        v8 = 19;
      }

      else
      {
        v8 = 1;
      }

      if (*v3 == 121)
      {
        v9 = 18;
      }

      else
      {
        v9 = v8;
      }
    }

    else
    {
      v9 = 0;
    }

    sub_297F9FBDC(v3);
  }

  else
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevConnect", 6525);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v16 = "NFDriverRemoteDevConnect";
      v17 = 1024;
      v18 = 6525;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    return 5;
  }

  return v9;
}

void sub_297FC83EC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a2)
  {
    if (a4 && !a5)
    {
      v7 = a2[2];
      if ((*(a4 + 4) & 0xFFFFFFFE) == 0xA && v7 != 0)
      {
        sub_297FBE6DC(v7, a3, a4);
      }
    }

    sub_297F9FB20(a2, a5);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevDisconnect(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (a3)
    {
      v3 = *(a1 + 40);
      v4 = v3 - 1;
      if (v3 == 3)
      {
        v5 = 7;
      }

      else
      {
        v5 = 6;
      }

      if (v4 < 2)
      {
        v5 = 7;
      }
    }

    else
    {
      v5 = 5;
    }

    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 0x40000000;
    v17[2] = sub_297FC8710;
    v17[3] = &unk_29EE886F8;
    v17[4] = a1;
    v17[5] = a2;
    v18 = v5;
    v10 = sub_297FA1B10(a1, v17);
    if (!sub_297F9F694(v10))
    {
      v9 = 0;
      goto LABEL_31;
    }

    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i phLibNfc_RemoteDev_Disconnect failed: 0x%04llx", "NFDriverRemoteDevDisconnect", 6584, *v10);
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *v10;
      *buf = 136446722;
      v20 = "NFDriverRemoteDevDisconnect";
      v21 = 1024;
      v22 = 6584;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_Disconnect failed: 0x%04llx", buf, 0x1Cu);
    }

    v15 = *v10;
    if (*v10 <= 120)
    {
      if (v15 == 51)
      {
        v9 = 19;
        goto LABEL_31;
      }

      if (v15 == 58)
      {
LABEL_24:
        v9 = 6;
LABEL_31:
        sub_297F9FBDC(v10);
        return v9;
      }
    }

    else
    {
      if (v15 == 121)
      {
        v9 = 18;
        goto LABEL_31;
      }

      if (v15 == 146 || v15 == 148)
      {
        goto LABEL_24;
      }
    }

    v9 = 1;
    goto LABEL_31;
  }

  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v7 = NFLogGetLogger();
  if (v7)
  {
    v7(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevDisconnect", 6567);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v20 = "NFDriverRemoteDevDisconnect";
    v21 = 1024;
    v22 = 6567;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
  }

  return 5;
}

void sub_297FC873C(uint64_t a1, void **a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    sub_297F9FB20(a2, a4);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevCheckNdef(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x29EDCA608];
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevCheckNdef", &unk_297FE9C47, buf, 2u);
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x2800000000;
  v30 = 0;
  v31 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2)
  {
    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 0x40000000;
    v26[2] = sub_297FC8B8C;
    v26[3] = &unk_29EE88720;
    v26[4] = buf;
    v26[5] = a1;
    v26[6] = a2;
    v7 = sub_297FA1B10(a1, v26);
    if (!sub_297F9F694(v7))
    {
      v18 = v28;
      v19 = *(v28 + 28);
      *&v20 = v19;
      *(&v20 + 1) = HIDWORD(v19);
      *a3 = v20;
      v21 = v18[24];
      if ((v21 - 1) >= 2)
      {
        if (v21 != 3)
        {
          v13 = 0;
          goto LABEL_34;
        }

        v13 = 0;
        v22 = 1;
      }

      else
      {
        v13 = 0;
        v22 = 257;
      }

      *(a3 + 8) = v22;
LABEL_34:
      v23 = NFSharedSignpostLog();
      if (os_signpost_enabled(v23))
      {
        v24 = *v7;
        *v32 = 134349056;
        v33 = v24;
        _os_signpost_emit_with_name_impl(&dword_297F97000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevCheckNdef", " mutexStatus=%{public, signpost.description:attribute}llu ", v32, 0xCu);
      }

      v7[2] = 0;
      sub_297F9FBDC(v7);
      goto LABEL_37;
    }

    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i phLibNfc_RemoteDev_CheckNdef failed: 0x%04llx", "NFDriverRemoteDevCheckNdef", 6654, *v7);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *v7;
      *v32 = 136446722;
      v33 = "NFDriverRemoteDevCheckNdef";
      v34 = 1024;
      v35 = 6654;
      v36 = 2048;
      v37 = v11;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_CheckNdef failed: 0x%04llx", v32, 0x1Cu);
    }

    v12 = *v7;
    if (*v7 > 148)
    {
      if (v12 == 149)
      {
        v13 = 5;
        goto LABEL_34;
      }

      if (v12 == 152)
      {
        v13 = 12;
        goto LABEL_34;
      }

      if (v12 != 150)
      {
LABEL_13:
        v13 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      if (v12 == 121)
      {
        v13 = 18;
        goto LABEL_34;
      }

      if (v12 != 146 && v12 != 148)
      {
        goto LABEL_13;
      }
    }

    v13 = 6;
    goto LABEL_34;
  }

  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevCheckNdef", 6626);
  }

  dispatch_get_specific(*v14);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v32 = 136446466;
    v33 = "NFDriverRemoteDevCheckNdef";
    v34 = 1024;
    v35 = 6626;
    _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", v32, 0x12u);
  }

  v17 = NFSharedSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *v32 = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevCheckNdef", &unk_297FE9C47, v32, 2u);
  }

  v13 = 5;
LABEL_37:
  _Block_object_dispose(buf, 8);
  return v13;
}

void sub_297FC8BC4(uint64_t a1, void **a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a2)
  {
    if (!a5)
    {
      v6 = a2[2];
      if (v6)
      {
        *v6 = a3;
        v6[2] = a4;
      }
    }

    sub_297F9FB20(a2, a5);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevWriteNdef(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v40 = *MEMORY[0x29EDCA608];
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevWriteNdef", &unk_297FE9C47, buf, 2u);
  }

  if (!a2)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevWriteNdef", 6695);
    }

    dispatch_get_specific(*v17);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "NFDriverRemoteDevWriteNdef";
      v36 = 1024;
      v37 = 6695;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    v20 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v20))
    {
      return 5;
    }

    *buf = 0;
    goto LABEL_28;
  }

  if (!a3)
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i No NDEF write data provided", "NFDriverRemoteDevWriteNdef", 6702);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "NFDriverRemoteDevWriteNdef";
      v36 = 1024;
      v37 = 6702;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i No NDEF write data provided", buf, 0x12u);
    }

    v20 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v20))
    {
      return 5;
    }

    *buf = 0;
LABEL_28:
    _os_signpost_emit_with_name_impl(&dword_297F97000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevWriteNdef", &unk_297FE9C47, buf, 2u);
    return 5;
  }

  v9 = sub_297FA02E4(*(a3 + 8), *a3);
  v33 = v9;
  if (v9)
  {
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 0x40000000;
    v31[2] = sub_297FC91A4;
    v31[3] = &unk_29EE88740;
    v31[4] = a1;
    v31[5] = a2;
    v31[6] = v9;
    v32 = a4;
    v10 = sub_297FA1B10(a1, v31);
    if (sub_297F9F694(v10))
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v12(3, "%s:%i phLibNfc_Ndef_Write failed: 0x%04llx", "NFDriverRemoteDevWriteNdef", 6721, *v10);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *v10;
        *buf = 136446722;
        v35 = "NFDriverRemoteDevWriteNdef";
        v36 = 1024;
        v37 = 6721;
        v38 = 2048;
        v39 = v14;
        _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Ndef_Write failed: 0x%04llx", buf, 0x1Cu);
      }

      v15 = *v10;
      v16 = 6;
      if (*v10 > 148)
      {
        if (v15 == 149)
        {
          v16 = 5;
        }

        else if (v15 != 255)
        {
          if (v15 != 152)
          {
LABEL_48:
            v16 = 1;
            goto LABEL_38;
          }

          v16 = 12;
        }
      }

      else
      {
        switch(v15)
        {
          case 31:
            v16 = 15;
            break;
          case 121:
            v16 = 18;
            break;
          case 148:
            break;
          default:
            goto LABEL_48;
        }
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_38:
    v28 = NFSharedSignpostLog();
    if (os_signpost_enabled(v28))
    {
      v29 = *v10;
      *buf = 134349056;
      v35 = v29;
      _os_signpost_emit_with_name_impl(&dword_297F97000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevWriteNdef", " mutexStatus=%{public, signpost.description:attribute}llu ", buf, 0xCu);
    }

    sub_297F9FBDC(v10);
    sub_297FA0714(&v33);
    return v16;
  }

  v24 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v25(3, "%s:%i Failed to allocate buffer", "NFDriverRemoteDevWriteNdef", 6710);
  }

  dispatch_get_specific(*v24);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v35 = "NFDriverRemoteDevWriteNdef";
    v36 = 1024;
    v37 = 6710;
    _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer", buf, 0x12u);
  }

  v27 = NFSharedSignpostLog();
  if (os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevWriteNdef", &unk_297FE9C47, buf, 2u);
  }

  return 3;
}

void sub_297FC91D8(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevFormatNdef(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2800000000;
  v17 = 0;
  v18 = 0;
  if (a2)
  {
    if (a3)
    {
      v3 = *a3;
      v4 = *(a3 + 2);
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v17 = v3;
    LODWORD(v18) = v4;
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 0x40000000;
    v15[2] = sub_297FC94A8;
    v15[3] = &unk_29EE88768;
    v15[4] = v16;
    v15[5] = a1;
    v15[6] = a2;
    v9 = sub_297FA1B10(a1, v15);
    if (sub_297F9F694(v9))
    {
      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i phLibNfc_RemoteDev_FormatNdef failed: 0x%04llx", "NFDriverRemoteDevFormatNdef", 6777, *v9);
      }

      dispatch_get_specific(*v10);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *v9;
        *buf = 136446722;
        v20 = "NFDriverRemoteDevFormatNdef";
        v21 = 1024;
        v22 = 6777;
        v23 = 2048;
        v24 = v13;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_FormatNdef failed: 0x%04llx", buf, 0x1Cu);
      }

      if (*v9 == 121)
      {
        v8 = 18;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    sub_297F9FBDC(v9);
  }

  else
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v6 = NFLogGetLogger();
    if (v6)
    {
      v6(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevFormatNdef", 6765);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "NFDriverRemoteDevFormatNdef";
      v21 = 1024;
      v22 = 6765;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    v8 = 5;
  }

  _Block_object_dispose(v16, 8);
  return v8;
}

void sub_297FC94EC(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevWriteLockNdef(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = sub_297FC9798;
    v13[3] = &unk_29EE88788;
    v13[4] = a1;
    v13[5] = a2;
    v2 = sub_297FA1B10(a1, v13);
    if (sub_297F9F694(v2))
    {
      v3 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i phLibNfc_RemoteDev_CheckPresence failed: 0x%04llx", "NFDriverRemoteDevWriteLockNdef", 6812, *v2);
      }

      dispatch_get_specific(*v3);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *v2;
        *buf = 136446722;
        v15 = "NFDriverRemoteDevWriteLockNdef";
        v16 = 1024;
        v17 = 6812;
        v18 = 2048;
        v19 = v6;
        _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_CheckPresence failed: 0x%04llx", buf, 0x1Cu);
      }

      v7 = *v2;
      if (*v2 == 121)
      {
        v8 = 18;
      }

      else if (v7 == 150)
      {
        v8 = 6;
      }

      else if (v7 == 152)
      {
        v8 = 12;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    sub_297F9FBDC(v2);
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevWriteLockNdef", 6804);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "NFDriverRemoteDevWriteLockNdef";
      v16 = 1024;
      v17 = 6804;
      _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    return 5;
  }

  return v8;
}

void sub_297FC97C0(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevCheckPresence(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 0x40000000;
    v12[2] = sub_297FC9A48;
    v12[3] = &unk_29EE887A8;
    v12[4] = a1;
    v12[5] = a2;
    v2 = sub_297FA1B10(a1, v12);
    if (sub_297F9F694(v2))
    {
      v3 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i phLibNfc_RemoteDev_CheckPresence failed: 0x%04llx", "NFDriverRemoteDevCheckPresence", 6853, *v2);
      }

      dispatch_get_specific(*v3);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *v2;
        *buf = 136446722;
        v14 = "NFDriverRemoteDevCheckPresence";
        v15 = 1024;
        v16 = 6853;
        v17 = 2048;
        v18 = v6;
        _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_CheckPresence failed: 0x%04llx", buf, 0x1Cu);
      }

      if (*v2 == 121)
      {
        v7 = 18;
      }

      else
      {
        v7 = 6;
      }
    }

    else
    {
      v7 = 0;
    }

    sub_297F9FBDC(v2);
  }

  else
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevCheckPresence", 6845);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "NFDriverRemoteDevCheckPresence";
      v15 = 1024;
      v16 = 6845;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    return 5;
  }

  return v7;
}

void sub_297FC9A6C(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t NFDriverRemoteDevReadNdef(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v44 = *MEMORY[0x29EDCA608];
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", &unk_297FE9C47, buf, 2u);
  }

  if (!a2)
  {
    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevReadNdef", 6884);
    }

    dispatch_get_specific(*v19);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v39 = "NFDriverRemoteDevReadNdef";
      v40 = 1024;
      v41 = 6884;
      _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", buf, 0x12u);
    }

    v18 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v18))
    {
      return 5;
    }

    *buf = 0;
    goto LABEL_26;
  }

  if (!a3 || (v9 = a3[1]) == 0)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Invalid buffer", "NFDriverRemoteDevReadNdef", 6890);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v39 = "NFDriverRemoteDevReadNdef";
      v40 = 1024;
      v41 = 6890;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid buffer", buf, 0x12u);
    }

    v18 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v18))
    {
      return 5;
    }

    *buf = 0;
LABEL_26:
    _os_signpost_emit_with_name_impl(&dword_297F97000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", &unk_297FE9C47, buf, 2u);
    return 5;
  }

  if (v9 > 0x8000)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i Requested read size is over the limit", "NFDriverRemoteDevReadNdef", 6894);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v39 = "NFDriverRemoteDevReadNdef";
      v40 = 1024;
      v41 = 6894;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Requested read size is over the limit", buf, 0x12u);
    }

    v13 = NFSharedSignpostLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_297F97000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", &unk_297FE9C47, buf, 2u);
    }

    return 15;
  }

  v23 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (v23)
  {
    v24 = v23;
    *v23 = *a3;
    v23[2] = a3[1];
    v37[0] = MEMORY[0x29EDCA5F8];
    v37[1] = 0x40000000;
    v37[2] = sub_297FCA15C;
    v37[3] = &unk_29EE887C8;
    v37[4] = a1;
    v37[5] = a2;
    v37[6] = v23;
    v25 = sub_297FA1B10(a1, v37);
    if (sub_297F9F694(v25))
    {
      v26 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(3, "%s:%i phLibNfc_Ndef_Read failed: 0x%04llx", "NFDriverRemoteDevReadNdef", 6916, *v25);
      }

      dispatch_get_specific(*v26);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *v25;
        *buf = 136446722;
        v39 = "NFDriverRemoteDevReadNdef";
        v40 = 1024;
        v41 = 6916;
        v42 = 2048;
        v43 = v29;
        _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Ndef_Read failed: 0x%04llx", buf, 0x1Cu);
      }

      v30 = *v25;
      if (*v25 > 151)
      {
        v14 = 12;
        if (v30 == 152 || v30 == 255)
        {
          goto LABEL_48;
        }

        if (v30 == 157)
        {
          v14 = 0;
          *a4 = 0;
          goto LABEL_48;
        }
      }

      else
      {
        if (v30 == 121)
        {
          v14 = 18;
          goto LABEL_48;
        }

        if (v30 == 148)
        {
          v14 = 6;
          goto LABEL_48;
        }

        if (v30 == 149)
        {
          v14 = 5;
LABEL_48:
          v35 = NFSharedSignpostLog();
          if (os_signpost_enabled(v35))
          {
            v36 = *v25;
            *buf = 134349056;
            v39 = v36;
            _os_signpost_emit_with_name_impl(&dword_297F97000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", " mutexStatus=%{public, signpost.description:attribute}llu ", buf, 0xCu);
          }

          sub_297F9FBDC(v25);
          free(v24);
          return v14;
        }
      }

      v14 = 1;
      goto LABEL_48;
    }

    v14 = 0;
    *a4 = v24[2];
    goto LABEL_48;
  }

  v31 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v32 = NFLogGetLogger();
  if (v32)
  {
    v32(3, "%s:%i Failed to allocate buffer", "NFDriverRemoteDevReadNdef", 6901);
  }

  dispatch_get_specific(*v31);
  v33 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v39 = "NFDriverRemoteDevReadNdef";
    v40 = 1024;
    v41 = 6901;
    _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer", buf, 0x12u);
  }

  v34 = NFSharedSignpostLog();
  if (os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_297F97000, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFDriverRemoteDevReadNdef", &unk_297FE9C47, buf, 2u);
  }

  return 3;
}

uint64_t sub_297FCA15C(void *a1, uint64_t a2)
{
  sub_297F9F5F4(a2, 5.0);
  v4 = a1[5];
  v5 = *(*(a1[4] + 24) + 576);
  v6 = a1[6];

  return MEMORY[0x2A1C6E4F8](v5, v4, v6, 1, sub_297FCA1C4, a2);
}

void sub_297FCA1C4(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

BOOL NFDriverRemoteDevSend(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  *v8 = a3;
  *(v8 + 2) = a4;
  if (!a2)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No remote tag handle provided", "NFDriverRemoteDevSend", 6969);
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v40 = 136446466;
      *&v40[4] = "NFDriverRemoteDevSend";
      *&v40[12] = 1024;
      *&v40[14] = 6969;
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i No remote tag handle provided", v40, 0x12u);
    }

    free(v9);
    return 0;
  }

  if ((*(*(a1 + 24) + 584) & 0x10) != 0)
  {
    v29 = a1;
    v30 = v8;
    v41 = 0u;
    memset(v40, 0, sizeof(v40));
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v33 = "NFDriverRemoteDevSend";
      v34 = 1024;
      v35 = 6976;
      v36 = 2082;
      v37 = "[HCE C-APDU>]";
      v38 = 2048;
      v39 = a4;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
    }

    if (v11)
    {
      v11(6, "%s:%i %s %lu bytes :", "NFDriverRemoteDevSend", 6976, "[HCE C-APDU>]", a4);
    }

    if (a4)
    {
      v13 = 0;
      do
      {
        v14 = 0;
        v15 = &v40[__sprintf_chk(v40, 0, 0x30uLL, "%04lX: ", v13)];
        do
        {
          v16 = *(a3 + v13++);
          v17 = sprintf(v15, "0x%02X ", v16);
          if (v14 > 6)
          {
            break;
          }

          v15 += v17;
          ++v14;
        }

        while (v13 < a4);
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v33 = v40;
          _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }

        if (v11)
        {
          v11(6, "%s", v40);
        }
      }

      while (v13 < a4);
    }

    a1 = v29;
    v9 = v30;
  }

  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 0x40000000;
  v31[2] = sub_297FCA690;
  v31[3] = &unk_29EE887E8;
  v31[4] = a1;
  v31[5] = a2;
  v31[6] = v9;
  v19 = sub_297FA1B10(a1, v31);
  v20 = sub_297F9F694(v19);
  v21 = v20 == 0;
  if (v20)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i phLibNfc_RemoteDev_Send failed 0x%04llx", "NFDriverRemoteDevSend", 6984, *v19);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *v19;
      *v40 = 136446722;
      *&v40[4] = "NFDriverRemoteDevSend";
      *&v40[12] = 1024;
      *&v40[14] = 6984;
      *&v40[18] = 2048;
      *&v40[20] = v24;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_RemoteDev_Send failed 0x%04llx", v40, 0x1Cu);
    }
  }

  sub_297F9FBDC(v19);
  free(v9);
  return v21;
}