void *phOsalNfc_SetMemory(int a1, void *__b, int __c, size_t __len)
{
  if (__b)
  {
    if (__len)
    {
      return memset(__b, __c, __len);
    }
  }

  return result;
}

uint64_t NFHardwareInterfaceReadBlock(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(*a1 + 24);
  if (v1)
  {
    v2 = *(*a1 + 144);

    return v1(v2);
  }

  else
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No interface defined for reading", "NFHardwareInterfaceReadBlock", 395);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "NFHardwareInterfaceReadBlock";
      v9 = 1024;
      v10 = 395;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i No interface defined for reading", buf, 0x12u);
    }

    return 1;
  }
}

uint64_t phOsalNfc_Timer_Stop(uint64_t a1, const char *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = sub_297F52C6C(a1);
  if (v3)
  {
    v4 = v3;
    pthread_mutex_lock((v3 + 176));
    v5 = (v4 + 8);
    v6 = 10;
    do
    {
      if (*v5 == a2)
      {
        v11 = sub_297F52D00(v5, 0);
        goto LABEL_18;
      }

      v5 += 2;
      --v6;
    }

    while (v6);
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get timer %llX from context", "phOsalNfc_Timer_Stop", 365, a2);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "phOsalNfc_Timer_Stop";
      v18 = 1024;
      v19 = 365;
      v20 = 2048;
      v21 = a2;
      _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer %llX from context", buf, 0x1Cu);
    }

    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v17 = a2;
      _os_log_fault_impl(&dword_297F52000, v10, OS_LOG_TYPE_FAULT, "Error: Failed to get timer 0x%llX from context", buf, 0xCu);
    }

    v11 = 1;
LABEL_18:
    pthread_mutex_unlock((v4 + 176));
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to get timer context", "phOsalNfc_Timer_Stop", 358);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "phOsalNfc_Timer_Stop";
      v18 = 1024;
      v19 = 358;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context", buf, 0x12u);
    }

    return 49;
  }

  return v11;
}

uint64_t sub_297F52C6C(int a1)
{
  os_unfair_lock_lock(&unk_2A18BD260);
  v2 = 0;
  v3 = 1;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = qword_2A18BD240[v2];
      if (v5)
      {
        break;
      }

      v3 = 0;
      v2 = 1;
      if ((v4 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_10;
      }
    }

    v3 = 0;
    v6 = *(v5 + 240);
    v2 = 1;
  }

  while ((v4 & (v6 != a1)) != 0);
  if (v6 == a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
  os_unfair_lock_unlock(&unk_2A18BD260);
  return v7;
}

uint64_t sub_297F52D00(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_source_cancel(*(a1 + 8));
      dispatch_release(*(a1 + 8));
      *(a1 + 8) = 0;
    }

    result = 0;
    if (a2)
    {
      *a1 = 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Invalid timer", "_phOsalNfc_Timer_ClearTimer", 179);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "_phOsalNfc_Timer_ClearTimer";
      v11 = 1024;
      v12 = 179;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid timer", buf, 0x12u);
    }

    return 1;
  }

  return result;
}

uint64_t phTmlNfc_IoCtl(uint64_t a1, int a2, int a3)
{
  v118 = *MEMORY[0x29EDCA608];
  v6 = sub_297F557F8(a1);
  v7 = v6;
  if (a2 != 61680 && !v6)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_IoCtl", 913, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    *&buf[4] = "phTmlNfc_IoCtl";
    *&buf[12] = 1024;
    *&buf[14] = 913;
    *&buf[18] = 2080;
    *&buf[20] = "tml!=NULL";
LABEL_7:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  if (a2 <= 47)
  {
    if (a2 > 5)
    {
      if (a2 <= 20)
      {
        if (a2 == 6)
        {
          if (v6)
          {
            if (*(v6 + 36) == 218)
            {
              v59 = 90000;
            }

            else if (*(v6 + 104))
            {
              v59 = 100000;
            }

            else
            {
              v59 = 15000;
            }
          }

          else
          {
            v59 = 15000;
          }

          if (*(v6 + 105) == 1)
          {
            v84 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v85 = NFLogGetLogger();
            if (v85)
            {
              v85(6, "%s:%i phTmlNfc_e_PowerOff", "phTmlNfc_IoCtl", 965);
            }

            dispatch_get_specific(*v84);
            v86 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              *&buf[4] = "phTmlNfc_IoCtl";
              *&buf[12] = 1024;
              *&buf[14] = 965;
              _os_log_impl(&dword_297F52000, v86, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_PowerOff", buf, 0x12u);
            }
          }

          *(v7 + 136) = 0;
          v11 = sub_297F59A90(a1, 0);
          if (!v11)
          {
            usleep(v59);
          }

          return v11;
        }

        if (a2 != 20)
        {
          goto LABEL_118;
        }

        v29 = a1;
        v30 = 0;
      }

      else
      {
        if (a2 != 21)
        {
          if (a2 == 39)
          {
            v48 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v49 = NFLogGetLogger();
            if (v49)
            {
              v49(6, "%s:%i phTmlNfc_e_Nfc_Rst_Client", "phTmlNfc_IoCtl", 1173);
            }

            dispatch_get_specific(*v48);
            v50 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              *&buf[4] = "phTmlNfc_IoCtl";
              *&buf[12] = 1024;
              *&buf[14] = 1173;
              _os_log_impl(&dword_297F52000, v50, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_Nfc_Rst_Client", buf, 0x12u);
            }

            v51 = sub_297F557F8(a1);
            if (!v51)
            {
              dispatch_get_specific(*v48);
              v71 = NFLogGetLogger();
              if (v71)
              {
                v71(3, "%s:%i FAILED: %s", "_phTmlNfc_FollowerReset", 814, "tml!=NULL");
              }

              dispatch_get_specific(*v48);
              v10 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                return 49;
              }

              *buf = 136446722;
              *&buf[4] = "_phTmlNfc_FollowerReset";
              *&buf[12] = 1024;
              *&buf[14] = 814;
              *&buf[18] = 2080;
              *&buf[20] = "tml!=NULL";
              goto LABEL_7;
            }

            v52 = v51;
            v53 = *(v51 + 112);
            if (!v53)
            {
              dispatch_get_specific(*v48);
              v101 = NFLogGetLogger();
              if (v101)
              {
                v101(3, "%s:%i FAILED: %s", "_phTmlNfc_FollowerReset", 815, "tml->ifc!=NULL");
              }

              dispatch_get_specific(*v48);
              v10 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                return 49;
              }

              *buf = 136446722;
              *&buf[4] = "_phTmlNfc_FollowerReset";
              *&buf[12] = 1024;
              *&buf[14] = 815;
              *&buf[18] = 2080;
              *&buf[20] = "tml->ifc!=NULL";
              goto LABEL_7;
            }

            v54 = *v53;
            v55 = *(*v53 + 232);
            if (v55 && v55(*(v54 + 264)))
            {
              v56 = **(v52 + 112);
              v57 = *(v56 + 224);
              v11 = 255;
              if (v57)
              {
                v58 = v57(*(v56 + 264)) & 1;
                if (v58)
                {
                  v11 = 179;
                }

                else
                {
                  v11 = 255;
                }
              }

              else
              {
                v58 = 0;
              }

              dispatch_get_specific(*v48);
              v105 = NFLogGetLogger();
              if (v105)
              {
                v105(3, "%s:%i Failed to issue follower reset. NACK = %d", "_phTmlNfc_FollowerReset", 821, v58);
              }

              dispatch_get_specific(*v48);
              v106 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "_phTmlNfc_FollowerReset";
                *&buf[12] = 1024;
                *&buf[14] = 821;
                *&buf[18] = 1024;
                *&buf[20] = v58;
                _os_log_impl(&dword_297F52000, v106, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to issue follower reset. NACK = %d", buf, 0x18u);
              }

              return v11;
            }

            phTmlNfc_FlushTxRxBuffers(a1);
            usleep(0x2710u);
            return 0;
          }

          if (a2 != 47)
          {
LABEL_118:
            v60 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v61 = NFLogGetLogger();
            if (v61)
            {
              v61(3, "%s:%i Invalid code: %d", "phTmlNfc_IoCtl", 1278, a2);
            }

            dispatch_get_specific(*v60);
            v62 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "phTmlNfc_IoCtl";
              *&buf[12] = 1024;
              *&buf[14] = 1278;
              *&buf[18] = 1024;
              *&buf[20] = a2;
              _os_log_impl(&dword_297F52000, v62, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid code: %d", buf, 0x18u);
            }

            return 1;
          }

          if (a3)
          {
            if (a3 != 1)
            {
              v75 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v76 = NFLogGetLogger();
              if (v76)
              {
                v76(3, "%s:%i Invalid phTmlNfc_e_Driver_CRC_Config", "phTmlNfc_IoCtl", 1167);
              }

              dispatch_get_specific(*v75);
              v73 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                return 255;
              }

              *buf = 136446466;
              *&buf[4] = "phTmlNfc_IoCtl";
              *&buf[12] = 1024;
              *&buf[14] = 1167;
              v74 = "%{public}s:%i Invalid phTmlNfc_e_Driver_CRC_Config";
              goto LABEL_175;
            }

            v16 = a1;
            v17 = 1;
          }

          else
          {
            v16 = a1;
            v17 = 0;
          }

          return sub_297F5A2D4(v16, v17);
        }

        v29 = a1;
        v30 = 1;
      }

      return sub_297F56048(v29, v30);
    }

    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        if (v6)
        {
          if (*(v6 + 36) == 218)
          {
            v13 = 90000;
          }

          else if (*(v6 + 104))
          {
            v13 = 100000;
          }

          else
          {
            v13 = 15000;
          }
        }

        else
        {
          v13 = 15000;
        }

        if (*(v6 + 105) == 1)
        {
          v81 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v82 = NFLogGetLogger();
          if (v82)
          {
            v82(6, "%s:%i phTmlNfc_e_EnableDownloadMode", "phTmlNfc_IoCtl", 1056);
          }

          dispatch_get_specific(*v81);
          v83 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "phTmlNfc_IoCtl";
            *&buf[12] = 1024;
            *&buf[14] = 1056;
            _os_log_impl(&dword_297F52000, v83, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_EnableDownloadMode", buf, 0x12u);
          }
        }

        v47 = sub_297F59CC4(a1, 1);
        if (v47)
        {
          return v47;
        }

        usleep(0x1F4u);
        v47 = sub_297F59A90(a1, 0);
        if (v47)
        {
          return v47;
        }

        if ((NFHardwareInterfaceResetSerial(*(v7 + 112)) & 1) == 0)
        {
          v102 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v103 = NFLogGetLogger();
          if (v103)
          {
            v103(3, "%s:%i failed to reset serial", "phTmlNfc_IoCtl", 1065);
          }

          dispatch_get_specific(*v102);
          v104 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "phTmlNfc_IoCtl";
            *&buf[12] = 1024;
            *&buf[14] = 1065;
            _os_log_impl(&dword_297F52000, v104, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to reset serial", buf, 0x12u);
          }
        }

LABEL_136:
        usleep(v13);
        v11 = sub_297F59A90(a1, 1);
        if (!v11)
        {
          usleep(0x2710u);
          *(v7 + 136) = 1;
        }

        return v11;
      }

      if (a2 != 2)
      {
        goto LABEL_118;
      }

      v24 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v25(6, "%s:%i phTmlNfc_e_EnableDownloadMode_NO_VEN", "phTmlNfc_IoCtl", 1101);
      }

      dispatch_get_specific(*v24);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "phTmlNfc_IoCtl";
        *&buf[12] = 1024;
        *&buf[14] = 1101;
        _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_EnableDownloadMode_NO_VEN", buf, 0x12u);
      }

      v27 = a1;
      v28 = 1;
    }

    else
    {
      if (a2 != 4)
      {
        if (v6)
        {
          if (*(v6 + 36) == 218)
          {
            v13 = 90000;
          }

          else if (*(v6 + 104))
          {
            v13 = 100000;
          }

          else
          {
            v13 = 15000;
          }
        }

        else
        {
          v13 = 15000;
        }

        if (*(v6 + 105) == 1)
        {
          v63 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v64 = NFLogGetLogger();
          if (v64)
          {
            v64(6, "%s:%i phTmlNfc_e_EnableNormalMode", "phTmlNfc_IoCtl", 993);
          }

          dispatch_get_specific(*v63);
          v65 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "phTmlNfc_IoCtl";
            *&buf[12] = 1024;
            *&buf[14] = 993;
            _os_log_impl(&dword_297F52000, v65, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_EnableNormalMode", buf, 0x12u);
          }
        }

        if ((*(v7 + 137) & 1) == 0)
        {
          v47 = sub_297F59CC4(a1, 0);
          if (v47)
          {
            return v47;
          }

          usleep(0x1F4u);
        }

        v47 = sub_297F59A90(a1, 0);
        if (!v47)
        {
          goto LABEL_136;
        }

        return v47;
      }

      if (*(v6 + 137))
      {
LABEL_95:
        v11 = sub_297F59A90(a1, 1);
        if (!v11)
        {
          usleep(0x2710u);
          phTmlNfc_FlushTxRxBuffers(a1);
        }

        return v11;
      }

      v27 = a1;
      v28 = 0;
    }

    v47 = sub_297F59CC4(v27, v28);
    if (v47)
    {
      return v47;
    }

    goto LABEL_95;
  }

  if (a2 > 61442)
  {
    if (a2 > 61681)
    {
      if (a2 == 61682 || a2 == 61683)
      {
        sub_297F5A0C4(v6);
        return 0;
      }

      if (a2 == 61695)
      {
        if (v6)
        {
          v18 = *(v6 + 112);
        }

        else
        {
          v18 = 0;
        }

        if (NFHardwareDebug(v18))
        {
          return 0;
        }

        else
        {
          return 11;
        }
      }

      goto LABEL_118;
    }

    if (a2 != 61443)
    {
      if (a2 == 61680)
      {
        NFHardwareSerialDump_0();
        return 0;
      }

      if (a2 == 61681)
      {
        if (!v6)
        {
          v68 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v69 = NFLogGetLogger();
          if (v69)
          {
            v69(3, "%s:%i FAILED: %s", "_phTmlNfc_DebugMWUnload", 875, "tml!=NULL");
          }

          dispatch_get_specific(*v68);
          v70 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          *buf = 136446722;
          *&buf[4] = "_phTmlNfc_DebugMWUnload";
          *&buf[12] = 1024;
          *&buf[14] = 875;
          *&buf[18] = 2080;
          *&buf[20] = "tml!=NULL";
          goto LABEL_212;
        }

        if (*(v6 + 112))
        {
          v11 = 0;
          *(v6 + 1) = 1;
          return v11;
        }

        v99 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v100 = NFLogGetLogger();
        if (v100)
        {
          v100(3, "%s:%i FAILED: %s", "_phTmlNfc_DebugMWUnload", 876, "tml->ifc!=NULL");
        }

        dispatch_get_specific(*v99);
        v70 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "_phTmlNfc_DebugMWUnload";
          *&buf[12] = 1024;
          *&buf[14] = 876;
          *&buf[18] = 2080;
          *&buf[20] = "tml->ifc!=NULL";
LABEL_212:
          _os_log_impl(&dword_297F52000, v70, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
        }

        return 0;
      }

      goto LABEL_118;
    }

    v33 = sub_297F557F8(a1);
    if (!v33)
    {
      v66 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v67 = NFLogGetLogger();
      if (v67)
      {
        v67(3, "%s:%i FAILED: %s", "_phTmlNfc_QuerySPMIErrors", 850, "tml!=NULL");
      }

      dispatch_get_specific(*v66);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        return 49;
      }

      *buf = 136446722;
      *&buf[4] = "_phTmlNfc_QuerySPMIErrors";
      *&buf[12] = 1024;
      *&buf[14] = 850;
      *&buf[18] = 2080;
      *&buf[20] = "tml!=NULL";
      goto LABEL_7;
    }

    v34 = *(v33 + 112);
    if (!v34)
    {
      v97 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v98 = NFLogGetLogger();
      if (v98)
      {
        v98(3, "%s:%i FAILED: %s", "_phTmlNfc_QuerySPMIErrors", 851, "tml->ifc!=NULL");
      }

      dispatch_get_specific(*v97);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        return 49;
      }

      *buf = 136446722;
      *&buf[4] = "_phTmlNfc_QuerySPMIErrors";
      *&buf[12] = 1024;
      *&buf[14] = 851;
      *&buf[18] = 2080;
      *&buf[20] = "tml->ifc!=NULL";
      goto LABEL_7;
    }

    v116 = 0u;
    v117 = 0u;
    memset(buf, 0, sizeof(buf));
    v107 = 64;
    v35 = *v34;
    v36 = *(*v34 + 128);
    if (v36 && v36(*(v35 + 144), buf, &v107, 31))
    {
      if (v107 >= 3)
      {
        v37 = buf;
        v38 = 3;
        v39 = MEMORY[0x29EDC9730];
        do
        {
          if (!*v37)
          {
            break;
          }

          dispatch_get_specific(*v39);
          v40 = NFLogGetLogger();
          if (v40)
          {
            v40(3, "%s:%i SPMI register 0x%02X = 0x%02X", "_phTmlNfc_QuerySPMIErrors", 866, *v37, v37[2]);
          }

          dispatch_get_specific(*v39);
          v41 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = *v37;
            v43 = v37[2];
            *v108 = 136446978;
            v109 = "_phTmlNfc_QuerySPMIErrors";
            v110 = 1024;
            v111 = 866;
            v112 = 1024;
            *v113 = v42;
            *&v113[4] = 1024;
            *&v113[6] = v43;
            _os_log_impl(&dword_297F52000, v41, OS_LOG_TYPE_ERROR, "%{public}s:%i SPMI register 0x%02X = 0x%02X", v108, 0x1Eu);
          }

          v38 += 3;
          v37 += 3;
        }

        while (v107 >= v38);
      }

      return 0;
    }

    v87 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v88 = NFLogGetLogger();
    if (v88)
    {
      v89 = v88;
      v90 = __error();
      v91 = strerror(*v90);
      v92 = __error();
      v89(3, "%s:%i %s errno=%d Failed to query SPMI error registers", "_phTmlNfc_QuerySPMIErrors", 857, v91, *v92);
    }

    dispatch_get_specific(*v87);
    v93 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      return 255;
    }

    v94 = __error();
    v95 = strerror(*v94);
    v96 = *__error();
    *v108 = 136446978;
    v109 = "_phTmlNfc_QuerySPMIErrors";
    v110 = 1024;
    v111 = 857;
    v112 = 2080;
    *v113 = v95;
    *&v113[8] = 1024;
    v114 = v96;
    v74 = "%{public}s:%i %s errno=%d Failed to query SPMI error registers";
    v78 = v108;
    v79 = v93;
    v80 = 34;
LABEL_176:
    _os_log_impl(&dword_297F52000, v79, OS_LOG_TYPE_ERROR, v74, v78, v80);
    return 255;
  }

  if (a2 < 61440)
  {
    if (a2 == 48)
    {
      v44 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v45(6, "%s:%i phTmlNfc_e_Nfc_Tuning %d", "phTmlNfc_IoCtl", 1181, a3);
      }

      dispatch_get_specific(*v44);
      v46 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "phTmlNfc_IoCtl";
        *&buf[12] = 1024;
        *&buf[14] = 1181;
        *&buf[18] = 1024;
        *&buf[20] = a3;
        _os_log_impl(&dword_297F52000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_Nfc_Tuning %d", buf, 0x18u);
      }

      if (!a3)
      {
        v22 = a1;
        v23 = 24;
        return sub_297F5A4D4(v22, v23);
      }

      if (a3 == 1)
      {
        v22 = a1;
        v23 = 25;
        return sub_297F5A4D4(v22, v23);
      }

      dispatch_get_specific(*v44);
      v77 = NFLogGetLogger();
      if (v77)
      {
        v77(3, "%s:%i Invalid phTmlNfc_e_Nfc_Tuning", "phTmlNfc_IoCtl", 1187);
      }

      dispatch_get_specific(*v44);
      v73 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        return 255;
      }

      *buf = 136446466;
      *&buf[4] = "phTmlNfc_IoCtl";
      *&buf[12] = 1024;
      *&buf[14] = 1187;
      v74 = "%{public}s:%i Invalid phTmlNfc_e_Nfc_Tuning";
    }

    else
    {
      if (a2 != 49)
      {
        goto LABEL_118;
      }

      v19 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v20(6, "%s:%i phTmlNfc_e_Nfc_CoreDump_Trig %d", "phTmlNfc_IoCtl", 1193, a3);
      }

      dispatch_get_specific(*v19);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "phTmlNfc_IoCtl";
        *&buf[12] = 1024;
        *&buf[14] = 1193;
        *&buf[18] = 1024;
        *&buf[20] = a3;
        _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s:%i phTmlNfc_e_Nfc_CoreDump_Trig %d", buf, 0x18u);
      }

      if (!a3)
      {
        v22 = a1;
        v23 = 26;
        return sub_297F5A4D4(v22, v23);
      }

      if (a3 == 1)
      {
        v22 = a1;
        v23 = 27;
        return sub_297F5A4D4(v22, v23);
      }

      dispatch_get_specific(*v19);
      v72 = NFLogGetLogger();
      if (v72)
      {
        v72(3, "%s:%i Invalid phTmlNfc_e_Nfc_CoreDump_Trig", "phTmlNfc_IoCtl", 1199);
      }

      dispatch_get_specific(*v19);
      v73 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        return 255;
      }

      *buf = 136446466;
      *&buf[4] = "phTmlNfc_IoCtl";
      *&buf[12] = 1024;
      *&buf[14] = 1199;
      v74 = "%{public}s:%i Invalid phTmlNfc_e_Nfc_CoreDump_Trig";
    }

LABEL_175:
    v78 = buf;
    v79 = v73;
    v80 = 18;
    goto LABEL_176;
  }

  if (a2 == 61440)
  {
    v31 = a1;
    v32 = 1;
  }

  else
  {
    if (a2 != 61441)
    {
      v14 = **(v6 + 112);
      v15 = *(v14 + 200);
      if (!v15 || !v15(*(v14 + 264)))
      {
        return 51;
      }

      return 0;
    }

    v31 = a1;
    v32 = 0;
  }

  return sub_297F59EC4(v31, v32);
}

uint64_t sub_297F543EC(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  data = dispatch_source_get_data(*(*(*(a1 + 48) + 8) + 112));
  if (data < v2)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Only %lu bytes available, requested %zu !", "NFHardwareSerialReadBlock_block_invoke", 683, data, *(a1 + 40));
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 136446978;
      v36 = "NFHardwareSerialReadBlock_block_invoke";
      v37 = 1024;
      v38 = 683;
      v39 = 2048;
      v40 = data;
      v41 = 2048;
      v42 = v7;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Only %lu bytes available, requested %zu !", buf, 0x26u);
    }
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(3, "%s:%i FAILED: %s", "_NFHardwareSerialRead", 639, "buffer!=((void*)0)");
    }

    dispatch_get_specific(*v30);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v36 = "_NFHardwareSerialRead";
      v37 = 1024;
      v38 = 639;
      v39 = 2080;
      v40 = "buffer!=((void*)0)";
LABEL_31:
      _os_log_impl(&dword_297F52000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

LABEL_32:
    abort();
  }

  if (!v2)
  {
    v33 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v34(3, "%s:%i FAILED: %s", "_NFHardwareSerialRead", 640, "*length>0");
    }

    dispatch_get_specific(*v33);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v36 = "_NFHardwareSerialRead";
      v37 = 1024;
      v38 = 640;
      v39 = 2080;
      v40 = "*length>0";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v9 = *(a1 + 48);
  v10 = read(*v9, *(a1 + 56), v2);
  if (v10 < 0)
  {
    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = __error();
      v18 = strerror(*v17);
      v19 = __error();
      v16(3, "%s:%i %s errno=%d ", "_NFHardwareSerialRead", 646, v18, *v19);
    }

    dispatch_get_specific(*v14);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = __error();
      v22 = strerror(*v21);
      v23 = *__error();
      *buf = 136446978;
      v36 = "_NFHardwareSerialRead";
      v37 = 1024;
      v38 = 646;
      v39 = 2080;
      v40 = v22;
      v41 = 1024;
      LODWORD(v42) = v23;
      _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d ", buf, 0x22u);
    }

    v13 = 0;
  }

  else
  {
    v11 = *(v9 + 8);
    v12 = *(v11 + 80);
    if (v12)
    {
      v12(*(v11 + 96), 7, "[RX<]", v8, v10);
      v11 = *(v9 + 8);
    }

    sub_297F54914(*(v11 + 88), 3, v8, v10);
    v13 = v10;
  }

  dispatch_suspend(*(*(*(a1 + 48) + 8) + 112));
  v24 = *(*(a1 + 48) + 8);
  ++*(v24 + 120);
  *(v24 + 128) = 0;
  if (v13 < *(a1 + 40))
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(6, "%s:%i Only got %zu bytes, requested %zu, available %lu.", "NFHardwareSerialReadBlock_block_invoke", 698, v13, *(a1 + 40), data);
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 40);
      *buf = 136447234;
      v36 = "NFHardwareSerialReadBlock_block_invoke";
      v37 = 1024;
      v38 = 698;
      v39 = 2048;
      v40 = v13;
      v41 = 2048;
      v42 = v28;
      v43 = 2048;
      v44 = data;
      _os_log_impl(&dword_297F52000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Only got %zu bytes, requested %zu, available %lu.", buf, 0x30u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_297F54914(os_unfair_lock_s *a1, int a2, char *a3, unint64_t a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v32.tv_sec = 0;
  *&v32.tv_usec = 0;
  gettimeofday(&v32, 0);
  os_unfair_lock_lock(a1 + 23);
  v8 = *&a1[4]._os_unfair_lock_opaque;
  if (v8)
  {
    v9 = *&a1[10]._os_unfair_lock_opaque;
    v10 = *v9;
    if (!*v9)
    {
      *v9 = v8;
      v10 = v8;
    }

    v11 = &v8[a1[6]._os_unfair_lock_opaque];
    if (a1->_os_unfair_lock_opaque >= a4)
    {
      os_unfair_lock_opaque = a4;
    }

    else
    {
      os_unfair_lock_opaque = a1->_os_unfair_lock_opaque;
    }

    v13 = os_unfair_lock_opaque + 16;
    if (os_unfair_lock_opaque + 16 >= 1)
    {
      v14 = *&a1[8]._os_unfair_lock_opaque;
      v15 = 1;
      v16 = v10;
      while (1)
      {
        v17 = v14 - v16;
        if (v14 < v16 || v14 == v9 && v14 == v16 && v16 == v8)
        {
          break;
        }

        if (v17 >= v13)
        {
          goto LABEL_24;
        }

        v19 = *v14;
        *&a1[8]._os_unfair_lock_opaque = *v14;
        --a1[14]._os_unfair_lock_opaque;
        if (v14 <= v19)
        {
          LODWORD(v17) = v19 - v16;
          v14 = v19;
LABEL_24:
          v18 = v17;
LABEL_16:
          v15 = 0;
          v13 -= v18;
          v16 += v17;
          if (v16 >= v11)
          {
            v16 = v8;
          }

          goto LABEL_18;
        }

        v14 = v19;
LABEL_18:
        if (v13 <= 0)
        {
          goto LABEL_25;
        }
      }

      LODWORD(v17) = v11 - v16;
      if ((v15 & (((v11 - v16) & 0xFFFFFFF0) == 0)) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11 - v16;
      }

      goto LABEL_16;
    }

LABEL_25:
    if ((v10 + 16) > v11)
    {
      *v9 = v8;
      v10 = v8;
    }

    v21 = LOBYTE(a1[22]._os_unfair_lock_opaque) == 1 && (a2 == 3 || a2 == 5);
    tv_usec = v32.tv_usec;
    v26 = a1[20]._os_unfair_lock_opaque;
    if (v32.tv_usec <= v26)
    {
      tv_usec = v32.tv_usec + 1000000;
    }

    *(v10 + 2) = (LODWORD(v32.tv_sec) - a1[18]._os_unfair_lock_opaque - (v32.tv_usec <= v26)) & 0x3FFFFF | ((((274877907 * (tv_usec - v26)) >> 38) + ((274877907 * (tv_usec - v26)) >> 63)) << 22);
    v10[14] = a2;
    *(v10 + 6) = a4;
    v27 = v10 + 15;
    v28 = v11 - (v10 + 15);
    if (os_unfair_lock_opaque >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = os_unfair_lock_opaque;
    }

    if (os_unfair_lock_opaque > v28)
    {
      v30 = v10 + 15;
      if (v21)
      {
        memset(v30, 222, v29);
      }

      else
      {
        memcpy(v30, a3, v29);
      }

      os_unfair_lock_opaque -= v29;
      a3 += v29;
      v27 = *&a1[4]._os_unfair_lock_opaque;
    }

    if (os_unfair_lock_opaque)
    {
      v31 = os_unfair_lock_opaque;
      if (v21)
      {
        memset(v27, 222, os_unfair_lock_opaque);
      }

      else
      {
        memcpy(v27, a3, os_unfair_lock_opaque);
      }
    }

    else
    {
      v31 = 0;
    }

    *v10 = &v27[v31];
    *&a1[10]._os_unfair_lock_opaque = v10;
    ++a1[14]._os_unfair_lock_opaque;
    if (v10[14] == 5)
    {
      *&a1[12]._os_unfair_lock_opaque = v10;
    }
  }

  else
  {
    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Buffers not allocated", "NFHardwareSerialDebugLog", 298);
    }

    dispatch_get_specific(*v22);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v34 = "NFHardwareSerialDebugLog";
      v35 = 1024;
      v36 = 298;
      _os_log_impl(&dword_297F52000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Buffers not allocated", buf, 0x12u);
    }
  }

  os_unfair_lock_unlock(a1 + 23);
}

void sub_297F54C98(void *a1, unsigned __int16 a2, int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 255;
  }

  v16[0] = v5;
  v16[1] = v4;
  v16[2] = a2;
  if ((a3 & 1) == 0)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to read", "phTmlNfc_Read_block_invoke", 487);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "phTmlNfc_Read_block_invoke";
      v19 = 1024;
      LODWORD(v20) = 487;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read", buf, 0x12u);
    }
  }

  v9 = a1[5];
  HIDWORD(v16[0]) = v9[120];
  if (v9[1] == 1)
  {
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = a1[6];
      v12 = a1[7];
      v14 = a1[5];
      v15 = *(v14 + 144);
      LODWORD(v14) = *(v14 + 152);
      *buf = 134218752;
      v18 = v13;
      v19 = 2048;
      v20 = v12;
      v21 = 2048;
      v22 = v15;
      v23 = 1024;
      v24 = v14;
      _os_log_fault_impl(&dword_297F52000, v10, OS_LOG_TYPE_FAULT, "Error : read received after shutdown : %p / %p. Driver context %llu, Controller config type %d", buf, 0x26u);
    }

    v9 = a1[5];
    v9[1] = 0;
  }

  if (*v9 == 1)
  {
    v11 = a1[6];
    if (v11)
    {
      v9[2] = 0;
      v11(a1[7], v16);
    }
  }
}

uint64_t phTmlNfc_Read(uint64_t a1, uint64_t a2, int a3, const char *a4, const void *a5)
{
  v50 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v39 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 468, "pBuffer!=((void*)0)");
    }

    dispatch_get_specific(*v39);
    v41 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v45 = "phTmlNfc_Read";
      v46 = 1024;
      *v47 = 468;
      *&v47[4] = 2080;
      *&v47[6] = "pBuffer!=((void*)0)";
LABEL_66:
      _os_log_impl(&dword_297F52000, v41, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

LABEL_67:
    abort();
  }

  if (!a3)
  {
    v42 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v43 = NFLogGetLogger();
    if (v43)
    {
      v43(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 469, "wLength>0");
    }

    dispatch_get_specific(*v42);
    v41 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v45 = "phTmlNfc_Read";
      v46 = 1024;
      *v47 = 469;
      *&v47[4] = 2080;
      *&v47[6] = "wLength>0";
      goto LABEL_66;
    }

    goto LABEL_67;
  }

  v7 = sub_297F557F8(a1);
  if (!v7)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 472, "tml!=NULL");
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v45 = "phTmlNfc_Read";
    v46 = 1024;
    *v47 = 472;
    *&v47[4] = 2080;
    *&v47[6] = "tml!=NULL";
LABEL_26:
    _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v8 = v7;
  if (!*(v7 + 112))
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 473, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v15);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v45 = "phTmlNfc_Read";
    v46 = 1024;
    *v47 = 473;
    *&v47[4] = 2080;
    *&v47[6] = "tml->ifc!=NULL";
    goto LABEL_26;
  }

  if ((*v7 & 1) == 0)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(3, "%s:%i FAILED: %s", "phTmlNfc_Read", 474, "tml->isRunning");
    }

    dispatch_get_specific(*v17);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v45 = "phTmlNfc_Read";
    v46 = 1024;
    *v47 = 474;
    *&v47[4] = 2080;
    *&v47[6] = "tml->isRunning";
    goto LABEL_26;
  }

  if (*(v7 + 1) == 1)
  {
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v45 = a4;
      v46 = 2048;
      *v47 = a5;
      _os_log_fault_impl(&dword_297F52000, v9, OS_LOG_TYPE_FAULT, "Error : read received after shutdown : %p / %p", buf, 0x16u);
    }
  }

  Block = NFHardwareInterfaceReadBlock(*(v8 + 112));
  if (Block == -1)
  {
    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i Failed to read : busy. Pending read = %d", "phTmlNfc_Read", 514, *(v8 + 2));
    }

    dispatch_get_specific(*v19);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(v8 + 2);
      *buf = 136446722;
      v45 = "phTmlNfc_Read";
      v46 = 1024;
      *v47 = 514;
      *&v47[4] = 1024;
      *&v47[6] = v22;
      _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read : busy. Pending read = %d", buf, 0x18u);
    }

    if (!NFIsInternalBuild())
    {
      return 111;
    }

    dispatch_get_specific(*v19);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(6, "%s:%i Debug : Pending read cb = %p, context = %p", "phTmlNfc_Read", 516, *(v8 + 8), *(v8 + 16));
    }

    dispatch_get_specific(*v19);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v8 + 8);
      v26 = *(v8 + 16);
      *buf = 136446978;
      v45 = "phTmlNfc_Read";
      v46 = 1024;
      *v47 = 516;
      *&v47[4] = 2048;
      *&v47[6] = v25;
      v48 = 2048;
      v49 = v26;
      _os_log_impl(&dword_297F52000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Pending read cb = %p, context = %p", buf, 0x26u);
    }

    dispatch_get_specific(*v19);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(6, "%s:%i Debug : Current read cb = %p, context = %p", "phTmlNfc_Read", 517, a4, a5);
    }

    dispatch_get_specific(*v19);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v45 = "phTmlNfc_Read";
      v46 = 1024;
      *v47 = 517;
      *&v47[4] = 2048;
      *&v47[6] = a4;
      v48 = 2048;
      v49 = a5;
      _os_log_impl(&dword_297F52000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Current read cb = %p, context = %p", buf, 0x26u);
    }

    *(v8 + 2) = 0;
    result = 111;
LABEL_56:
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    return result;
  }

  if (Block)
  {
    v29 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v30(3, "%s:%i Failed to read : not initialized. Pending read = %d", "phTmlNfc_Read", 524, *(v8 + 2));
    }

    dispatch_get_specific(*v29);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(v8 + 2);
      *buf = 136446722;
      v45 = "phTmlNfc_Read";
      v46 = 1024;
      *v47 = 524;
      *&v47[4] = 1024;
      *&v47[6] = v32;
      _os_log_impl(&dword_297F52000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read : not initialized. Pending read = %d", buf, 0x18u);
    }

    if (NFIsInternalBuild())
    {
      dispatch_get_specific(*v29);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v33(6, "%s:%i Debug : Pending read cb = %p, context = %p", "phTmlNfc_Read", 526, *(v8 + 8), *(v8 + 16));
      }

      dispatch_get_specific(*v29);
      v34 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(v8 + 8);
        v36 = *(v8 + 16);
        *buf = 136446978;
        v45 = "phTmlNfc_Read";
        v46 = 1024;
        *v47 = 526;
        *&v47[4] = 2048;
        *&v47[6] = v35;
        v48 = 2048;
        v49 = v36;
        _os_log_impl(&dword_297F52000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Pending read cb = %p, context = %p", buf, 0x26u);
      }

      dispatch_get_specific(*v29);
      v37 = NFLogGetLogger();
      if (v37)
      {
        v37(6, "%s:%i Debug : Current read cb = %p, context = %p", "phTmlNfc_Read", 527, a4, a5);
      }

      dispatch_get_specific(*v29);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v45 = "phTmlNfc_Read";
        v46 = 1024;
        *v47 = 527;
        *&v47[4] = 2048;
        *&v47[6] = a4;
        v48 = 2048;
        v49 = a5;
        _os_log_impl(&dword_297F52000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Current read cb = %p, context = %p", buf, 0x26u);
      }

      *(v8 + 2) = 0;
      result = 49;
      goto LABEL_56;
    }

    return 49;
  }

  if (NFIsInternalBuild())
  {
    *(v8 + 2) = 1;
    *(v8 + 8) = a4;
    *(v8 + 16) = a5;
  }

  return 13;
}

uint64_t sub_297F557F8(uint64_t a1)
{
  os_unfair_lock_lock(&unk_2A18BD210);
  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = &unk_2A18BD210 + 8 * v2;
    v6 = *(v5 + 1);
    if (v6)
    {
      if (*(v6 + 144) == a1)
      {
        break;
      }
    }

    v2 = 1;
    if ((v4 & 1) == 0)
    {
      os_unfair_lock_unlock(&unk_2A18BD210);
      return 0;
    }
  }

  os_unfair_lock_unlock(&unk_2A18BD210);
  return *(v5 + 1);
}

uint64_t NFHardwareSerialReadBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 1;
  }

  v5 = *(a1 + 8);
  if (*(v5 + 120))
  {
    v6 = *(v5 + 112);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = sub_297F543EC;
    handler[3] = &unk_29EE86B08;
    handler[6] = a1;
    handler[7] = a2;
    handler[4] = a4;
    handler[5] = a3;
    dispatch_source_set_event_handler(v6, handler);
    v7 = *(a1 + 8);
    v8 = *(v7 + 120);
    if (v8)
    {
      *(v7 + 120) = v8 - 1;
      v9 = mach_continuous_time();
      v7 = *(a1 + 8);
      *(v7 + 128) = v9;
    }

    dispatch_resume(*(v7 + 112));
    return 0;
  }

  else
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      mach_continuous_time();
      ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
      v13(3, "%s:%i Error : read in progress since %llu", "NFHardwareSerialReadBlock", 670, ElapsedTimeInMillisecondsFromMachTime);
    }

    dispatch_get_specific(*v11);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      mach_continuous_time();
      *buf = 136446722;
      v18 = "NFHardwareSerialReadBlock";
      v19 = 1024;
      v20 = 670;
      v21 = 2048;
      v22 = GetElapsedTimeInMillisecondsFromMachTime();
      _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : read in progress since %llu", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_297F52000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "Error : read already in progress.", buf, 2u);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t phOsalNfc_Timer_Start(int a1, NSObject *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v46 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v10 = sub_297F52C6C(a1);
    if (v10)
    {
      v11 = v10;
      pthread_mutex_lock((v10 + 176));
      v12 = (v11 + 16);
      v13 = 10;
      while (*(v12 - 1) != a2)
      {
        v12 += 2;
        if (!--v13)
        {
          v14 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(3, "%s:%i Failed to get timer %llX from context", "phOsalNfc_Timer_Start", 332, a2);
          }

          dispatch_get_specific(*v14);
          v16 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "phOsalNfc_Timer_Start";
            *&buf[12] = 1024;
            *&buf[14] = 332;
            *&buf[18] = 2048;
            *&buf[20] = a2;
            _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer %llX from context", buf, 0x1Cu);
          }

          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            *&buf[4] = a2;
            _os_log_fault_impl(&dword_297F52000, v17, OS_LOG_TYPE_FAULT, "Error: Failed to get timer 0x%llX from context", buf, 0xCu);
          }

          v18 = 1;
          goto LABEL_42;
        }
      }

      if (*v12)
      {
        v25 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v26(3, "%s:%i timer %llX already started", "_phOsalNfc_Timer_StartTimer", 143, *(v12 - 1));
        }

        dispatch_get_specific(*v25);
        v27 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(v12 - 1);
          *buf = 136446722;
          *&buf[4] = "_phOsalNfc_Timer_StartTimer";
          *&buf[12] = 1024;
          *&buf[14] = 143;
          *&buf[18] = 2048;
          *&buf[20] = v28;
          _os_log_impl(&dword_297F52000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i timer %llX already started", buf, 0x1Cu);
        }

        v18 = 225;
      }

      else
      {
        v39[0] = 0;
        v39[1] = v39;
        v39[2] = 0x2000000000;
        *&v39[3] = a3 / 1000.0 + CFAbsoluteTimeGetCurrent();
        v29 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(v11 + 168));
        *v12 = v29;
        if (v29)
        {
          *buf = MEMORY[0x29EDCA5F8];
          *&buf[8] = 0x40000000;
          *&buf[16] = sub_297F5C58C;
          *&buf[24] = &unk_29EE86AB0;
          v45 = a1;
          v41 = v39;
          v42 = a2;
          v43 = a4;
          v44 = a5;
          dispatch_source_set_event_handler(v29, buf);
          dispatch_activate(*v12);
          v30 = dispatch_time(0, 1000000 * a3);
          v31 = a3 / 0x32;
          if (a3 / 0x32 >= 0xEA60)
          {
            v31 = 60000;
          }

          v32 = 1000000 * v31;
          if (a3 >= 0x32)
          {
            v33 = v32;
          }

          else
          {
            v33 = 1000000;
          }

          dispatch_source_set_timer(*v12, v30, 0xFFFFFFFFFFFFFFFFLL, v33);
          v18 = 0;
        }

        else
        {
          v34 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v35 = NFLogGetLogger();
          if (v35)
          {
            v35(3, "%s:%i Can't start timer %llX", "_phOsalNfc_Timer_StartTimer", 171, *(v12 - 1));
          }

          dispatch_get_specific(*v34);
          v36 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = *(v12 - 1);
            *buf = 136446722;
            *&buf[4] = "_phOsalNfc_Timer_StartTimer";
            *&buf[12] = 1024;
            *&buf[14] = 171;
            *&buf[18] = 2048;
            *&buf[20] = v37;
            _os_log_impl(&dword_297F52000, v36, OS_LOG_TYPE_ERROR, "%{public}s:%i Can't start timer %llX", buf, 0x1Cu);
          }

          v18 = 1;
        }

        _Block_object_dispose(v39, 8);
      }

LABEL_42:
      pthread_mutex_unlock((v11 + 176));
    }

    else
    {
      v22 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v23(3, "%s:%i Failed to get timer context", "phOsalNfc_Timer_Start", 325);
      }

      dispatch_get_specific(*v22);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "phOsalNfc_Timer_Start";
        *&buf[12] = 1024;
        *&buf[14] = 325;
        _os_log_impl(&dword_297F52000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context", buf, 0x12u);
      }

      return 49;
    }
  }

  else
  {
    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i Invalid parameter", "phOsalNfc_Timer_Start", 319);
    }

    dispatch_get_specific(*v19);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "phOsalNfc_Timer_Start";
      *&buf[12] = 1024;
      *&buf[14] = 319;
      _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid parameter", buf, 0x12u);
    }

    return 1;
  }

  return v18;
}

uint64_t sub_297F56048(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetDeviceWake", 727, "tml!=NULL");
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v23 = "_phTmlNfc_SetDeviceWake";
    v24 = 1024;
    v25 = 727;
    v26 = 2080;
    v27 = "tml!=NULL";
    goto LABEL_14;
  }

  v4 = v3;
  v5 = *(v3 + 112);
  if (!v5)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i FAILED: %s", "_phTmlNfc_SetDeviceWake", 728, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v12);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v23 = "_phTmlNfc_SetDeviceWake";
    v24 = 1024;
    v25 = 728;
    v26 = 2080;
    v27 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v6 = *v5;
  v7 = *(*v5 + 152);
  if (v7 && (v7(*(v6 + 264), a2 != 0) & 1) == 0)
  {
    v15 = **(v4 + 112);
    v16 = *(v15 + 224);
    v8 = 255;
    if (v16)
    {
      v17 = v16(*(v15 + 264));
      if (v17)
      {
        v8 = 179;
      }

      else
      {
        v8 = 255;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i Failed to set device wake. NACK = %d", "_phTmlNfc_SetDeviceWake", 734, v17 & 1);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "_phTmlNfc_SetDeviceWake";
      v24 = 1024;
      v25 = 734;
      v26 = 1024;
      LODWORD(v27) = v17 & 1;
      _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set device wake. NACK = %d", buf, 0x18u);
    }

    if (a2 != 0 && (v17 & 1) != 0)
    {
      v21 = *(v4 + 156);
      *(v4 + 156) = v21 + 1;
      if (v21 >= 11)
      {
        NFHardwareSerialDump_0();
        phOsalNfc_RaiseExceptionWithDescription(2, 57005, 0, "SPMI Wake NACKed");
      }
    }
  }

  else
  {
    v8 = 0;
    *(v4 + 156) = 0;
  }

  return v8;
}

BOOL NFHardwareGPIOSetDeviceWake(uint64_t *a1, unsigned int a2)
{
  v4 = *(*a1 + 16);
  if (a2)
  {
    v5 = 7;
  }

  else
  {
    v5 = 8;
  }

  sub_297F54914(v4, v5, 0, 0);
  return sub_297F60DA8(a1, 3u, a2) == 0;
}

uint64_t phTmlNfc_Write(uint64_t a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v23 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 375, "pBuffer!=((void*)0)");
    }

    dispatch_get_specific(*v23);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "phTmlNfc_Write";
      v30 = 1024;
      v31 = 375;
      v32 = 2080;
      v33 = "pBuffer!=((void*)0)";
LABEL_42:
      _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

LABEL_43:
    abort();
  }

  if (!a3)
  {
    v26 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 376, "wLength>0");
    }

    dispatch_get_specific(*v26);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "phTmlNfc_Write";
      v30 = 1024;
      v31 = 376;
      v32 = 2080;
      v33 = "wLength>0";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 379, "tml!=NULL");
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v29 = "phTmlNfc_Write";
    v30 = 1024;
    v31 = 379;
    v32 = 2080;
    v33 = "tml!=NULL";
    v14 = "%{public}s:%i FAILED: %s";
LABEL_25:
    v19 = v13;
    v20 = 28;
    goto LABEL_26;
  }

  v4 = v3;
  v5 = *(v3 + 112);
  if (!v5)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 380, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v15);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v29 = "phTmlNfc_Write";
    v30 = 1024;
    v31 = 380;
    v32 = 2080;
    v33 = "tml->ifc!=NULL";
    v14 = "%{public}s:%i FAILED: %s";
    goto LABEL_25;
  }

  if ((*v4 & 1) == 0)
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(3, "%s:%i FAILED: %s", "phTmlNfc_Write", 381, "tml->isRunning");
    }

    dispatch_get_specific(*v17);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v29 = "phTmlNfc_Write";
    v30 = 1024;
    v31 = 381;
    v32 = 2080;
    v33 = "tml->isRunning";
    v14 = "%{public}s:%i FAILED: %s";
    goto LABEL_25;
  }

  v6 = NFHardwareInterfaceWriteBlock(v5);
  if (!v6)
  {
    return 13;
  }

  v7 = MEMORY[0x29EDC9730];
  if (v6 != -1)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i Not initialized", "phTmlNfc_Write", 400);
    }

    dispatch_get_specific(*v7);
    v22 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446466;
    v29 = "phTmlNfc_Write";
    v30 = 1024;
    v31 = 400;
    v14 = "%{public}s:%i Not initialized";
    v19 = v22;
    v20 = 18;
LABEL_26:
    _os_log_impl(&dword_297F52000, v19, OS_LOG_TYPE_ERROR, v14, buf, v20);
    return 49;
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(3, "%s:%i Busy !", "phTmlNfc_Write", 397);
  }

  dispatch_get_specific(*v7);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v29 = "phTmlNfc_Write";
    v30 = 1024;
    v31 = 397;
    _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Busy !", buf, 0x12u);
  }

  return 111;
}

uint64_t NFHardwareInterfaceWriteBlock(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(*a1 + 40);
  if (v1)
  {
    v2 = *(*a1 + 144);

    return v1(v2);
  }

  else
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No interface defined for writing", "NFHardwareInterfaceWriteBlock", 414);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "NFHardwareInterfaceWriteBlock";
      v9 = 1024;
      v10 = 414;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i No interface defined for writing", buf, 0x12u);
    }

    return 1;
  }
}

uint64_t NFHardwareSerialWriteBlock(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 1;
  }

  if (!a2)
  {
    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 722, "buffer!=((void*)0)");
    }

    dispatch_get_specific(*v22);
    v24 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446722;
    v35 = "NFHardwareSerialWriteBlock";
    v36 = 1024;
    v37 = 722;
    v38 = 2080;
    v39 = "buffer!=((void*)0)";
LABEL_42:
    _os_log_impl(&dword_297F52000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    goto LABEL_43;
  }

  if (!a3)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 723, "length!=0");
    }

    dispatch_get_specific(*v25);
    v24 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446722;
    v35 = "NFHardwareSerialWriteBlock";
    v36 = 1024;
    v37 = 723;
    v38 = 2080;
    v39 = "length!=0";
    goto LABEL_42;
  }

  v7 = *(a1 + 8);
  if (*(v7 + 152))
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i Failed to write, buffer already pending TX. Bytes left = %zu, bytes written = %d, suspend state = %d", "NFHardwareSerialWriteBlock", 727, *(*(a1 + 8) + 160), *(*(a1 + 8) + 168), *(*(a1 + 8) + 144));
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 8);
      v12 = *(v11 + 160);
      v13 = *(v11 + 168);
      LODWORD(v11) = *(v11 + 144);
      *buf = 136447234;
      v35 = "NFHardwareSerialWriteBlock";
      v36 = 1024;
      v37 = 727;
      v38 = 2048;
      v39 = v12;
      v40 = 1024;
      v41 = v13;
      v42 = 1024;
      v43 = v11;
      _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write, buffer already pending TX. Bytes left = %zu, bytes written = %d, suspend state = %d", buf, 0x28u);
    }

    v14 = *(a1 + 8);
    v15 = *(v14 + 80);
    if (v15)
    {
      v15(*(v14 + 96), 7, "[TX>] Failed : Busy", a2, a3);
    }

    return 0xFFFFFFFFLL;
  }

  v18 = *(v7 + 80);
  if (v18)
  {
    v18(*(v7 + 96), 7, "[TX>]", a2, a3);
    v7 = *(a1 + 8);
  }

  sub_297F54914(*(v7 + 88), 5, a2, a3);
  v19 = *(a1 + 8);
  if (*(v19 + 152))
  {
    v27 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v28(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 738, "((NFHardwareSerialInternal*)(serial->internal))->currentWriteBuffer == ((void*)0)");
    }

    dispatch_get_specific(*v27);
    v24 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446722;
    v35 = "NFHardwareSerialWriteBlock";
    v36 = 1024;
    v37 = 738;
    v38 = 2080;
    v39 = "((NFHardwareSerialInternal*)(serial->internal))->currentWriteBuffer == ((void*)0)";
    goto LABEL_42;
  }

  if (*(v19 + 160))
  {
    v29 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v30(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 739, "((NFHardwareSerialInternal*)(serial->internal))->currentWriteBufferSize == 0");
    }

    dispatch_get_specific(*v29);
    v24 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446722;
    v35 = "NFHardwareSerialWriteBlock";
    v36 = 1024;
    v37 = 739;
    v38 = 2080;
    v39 = "((NFHardwareSerialInternal*)(serial->internal))->currentWriteBufferSize == 0";
    goto LABEL_42;
  }

  if (*(v19 + 144) != 1)
  {
    v31 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v32(3, "%s:%i FAILED: %s", "NFHardwareSerialWriteBlock", 740, "((NFHardwareSerialInternal*)(serial->internal))->suspendWriteCount == 1");
    }

    dispatch_get_specific(*v31);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v35 = "NFHardwareSerialWriteBlock";
      v36 = 1024;
      v37 = 740;
      v38 = 2080;
      v39 = "((NFHardwareSerialInternal*)(serial->internal))->suspendWriteCount == 1";
      goto LABEL_42;
    }

LABEL_43:
    abort();
  }

  *(v19 + 152) = a2;
  *(v19 + 160) = a3;
  *(v19 + 168) = 0;
  v20 = *(v19 + 136);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = sub_297F570BC;
  handler[3] = &unk_29EE86B30;
  handler[4] = a4;
  handler[5] = a1;
  dispatch_source_set_event_handler(v20, handler);
  v21 = *(a1 + 8);
  if (*(v21 + 144))
  {
    *(v21 + 144) = 0;
    dispatch_resume(*(v21 + 136));
  }

  return 0;
}

ssize_t sub_297F570BC(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  result = write(**(a1 + 40), *(*(*(a1 + 40) + 8) + 152), *(*(*(a1 + 40) + 8) + 160));
  if (result < 0)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      v9 = __error();
      v10 = strerror(*v9);
      v11 = __error();
      v8(3, "%s:%i %s errno=%d ", "NFHardwareSerialWriteBlock_block_invoke", 752, v10, *v11);
    }

    dispatch_get_specific(*v6);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = __error();
      v14 = strerror(*v13);
      v15 = *__error();
      *buf = 136446978;
      v17 = "NFHardwareSerialWriteBlock_block_invoke";
      v18 = 1024;
      v19 = 752;
      v20 = 2080;
      v21 = v14;
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d ", buf, 0x22u);
    }

    v3 = *(*(a1 + 40) + 8);
    *(v3 + 160) = 0;
    goto LABEL_9;
  }

  *(*(*(a1 + 40) + 8) + 152) += result;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 160);
  *(v3 + 168) += result;
  v5 = v4 - result;
  *(v3 + 160) = v5;
  if (!v5)
  {
LABEL_9:
    *(v3 + 152) = 0;
    dispatch_suspend(*(*(*(a1 + 40) + 8) + 136));
    ++*(*(*(a1 + 40) + 8) + 144);
    return (*(*(a1 + 32) + 16))();
  }

  return result;
}

void *sub_297F572AC(void *result, unsigned __int16 a2, int a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 255;
  }

  v8 = 0;
  v7 = v3;
  v5 = result[4];
  v4 = result[5];
  HIDWORD(v7) = v4[120];
  v8 = v5;
  v9 = a2;
  if (*v4 == 1)
  {
    v6 = result[6];
    if (v6)
    {
      return v6(result[7], &v7);
    }
  }

  return result;
}

void phOsalNfc_FreeMemory(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void *phOsalNfc_GetMemory_Typed(int a1, size_t size, malloc_type_id_t a3)
{
  if (size)
  {
    return malloc_type_calloc(1uLL, size, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t phOsalNfc_Timer_Create(int a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = sub_297F52C6C(a1);
  if (v2)
  {
    v3 = v2;
    pthread_mutex_lock((v2 + 176));
    v4 = 8;
    while (*(v3 + v4) != 0xFFFFFFFFFFFFLL)
    {
      v4 += 16;
      if (v4 == 168)
      {
        v5 = 0xFFFFFFFFFFFFLL;
        goto LABEL_18;
      }
    }

      ;
    }

    v5 = i + 1;
    *v3 = i + 1;
    *(v3 + v4) = i + 1;
LABEL_18:
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFSharedMiddlewareSignpostLog();
    if (!v11)
    {
      v11 = NFSharedSignpostLog();
    }

    if (os_signpost_enabled(v11))
    {
      *buf = 134218240;
      v14 = v5;
      v15 = 1024;
      v16 = a1;
      _os_signpost_emit_with_name_impl(&dword_297F52000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Created Timer", "timerId %llX, ctlr %d", buf, 0x12u);
    }

    pthread_mutex_unlock((v3 + 176));
  }

  else
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get timer context for type %d", "phOsalNfc_Timer_Create", 280, a1);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "phOsalNfc_Timer_Create";
      v15 = 1024;
      v16 = 280;
      v17 = 1024;
      v18 = a1;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context for type %d", buf, 0x18u);
    }

    return 0xFFFFFFFFFFFFLL;
  }

  return v5;
}

void phOsalNfc_SignPostLogTimerEvents(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v30 = *MEMORY[0x29EDCA608];
  v11 = NFSharedMiddlewareSignpostLog();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = sub_297F52C6C(a1);
  v14 = 0;
  v15 = (v13 + 8);
  while (1)
  {
    v17 = *v15;
    v15 += 2;
    v16 = v17;
    if (v17 != 0xFFFFFFFFFFFFLL && v16 == a2)
    {
      break;
    }

    if (++v14 == 10)
    {
      LODWORD(v14) = 61680;
      break;
    }
  }

  if (!a6)
  {
    if (a5)
    {
      if (v14 > 4)
      {
        if (v14 <= 6)
        {
          if (v14 == 5)
          {
            if (!os_signpost_enabled(v12))
            {
              return;
            }

            v24 = 136446722;
            v25 = "-";
            v26 = 2082;
            v27 = a4;
            v28 = 2082;
            v29 = a5;
            v19 = "PHLIBNFC_TIMER_ID6";
            v20 = "%{public}s:%{public}s <- %{public}s";
          }

          else
          {
            if (v14 != 6 || !os_signpost_enabled(v12))
            {
              return;
            }

            v24 = 136446722;
            v25 = "-";
            v26 = 2082;
            v27 = a4;
            v28 = 2082;
            v29 = a5;
            v19 = "PHLIBNFC_TIMER_ID7";
            v20 = "%{public}s:%{public}s <- %{public}s";
          }
        }

        else if (v14 == 7)
        {
          if (!os_signpost_enabled(v12))
          {
            return;
          }

          v24 = 136446722;
          v25 = "-";
          v26 = 2082;
          v27 = a4;
          v28 = 2082;
          v29 = a5;
          v19 = "PHLIBNFC_TIMER_ID8";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }

        else if (v14 == 8)
        {
          if (!os_signpost_enabled(v12))
          {
            return;
          }

          v24 = 136446722;
          v25 = "-";
          v26 = 2082;
          v27 = a4;
          v28 = 2082;
          v29 = a5;
          v19 = "PHLIBNFC_TIMER_ID9";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }

        else
        {
          if (v14 != 9 || !os_signpost_enabled(v12))
          {
            return;
          }

          v24 = 136446722;
          v25 = "-";
          v26 = 2082;
          v27 = a4;
          v28 = 2082;
          v29 = a5;
          v19 = "PHLIBNFC_TIMER_ID10";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }
      }

      else if (v14 <= 1)
      {
        if (v14)
        {
          if (v14 != 1 || !os_signpost_enabled(v12))
          {
            return;
          }

          v24 = 136446722;
          v25 = "-";
          v26 = 2082;
          v27 = a4;
          v28 = 2082;
          v29 = a5;
          v19 = "PHLIBNFC_TIMER_ID2";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }

        else
        {
          if (!os_signpost_enabled(v12))
          {
            return;
          }

          v24 = 136446722;
          v25 = "-";
          v26 = 2082;
          v27 = a4;
          v28 = 2082;
          v29 = a5;
          v19 = "PHLIBNFC_TIMER_ID1";
          v20 = "%{public}s:%{public}s <- %{public}s";
        }
      }

      else if (v14 == 2)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446722;
        v25 = "-";
        v26 = 2082;
        v27 = a4;
        v28 = 2082;
        v29 = a5;
        v19 = "PHLIBNFC_TIMER_ID3";
        v20 = "%{public}s:%{public}s <- %{public}s";
      }

      else if (v14 == 3)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446722;
        v25 = "-";
        v26 = 2082;
        v27 = a4;
        v28 = 2082;
        v29 = a5;
        v19 = "PHLIBNFC_TIMER_ID4";
        v20 = "%{public}s:%{public}s <- %{public}s";
      }

      else
      {
        if (v14 != 4 || !os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446722;
        v25 = "-";
        v26 = 2082;
        v27 = a4;
        v28 = 2082;
        v29 = a5;
        v19 = "PHLIBNFC_TIMER_ID5";
        v20 = "%{public}s:%{public}s <- %{public}s";
      }

      v21 = v12;
      v22 = OS_SIGNPOST_INTERVAL_END;
      goto LABEL_132;
    }

    if (v14 > 4)
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          if (!os_signpost_enabled(v12))
          {
            return;
          }

          v24 = 136446466;
          v25 = "-";
          v26 = 2082;
          v27 = a4;
          v19 = "PHLIBNFC_TIMER_ID6";
          v20 = "%{public}s:%{public}s";
        }

        else
        {
          if (v14 != 6 || !os_signpost_enabled(v12))
          {
            return;
          }

          v24 = 136446466;
          v25 = "-";
          v26 = 2082;
          v27 = a4;
          v19 = "PHLIBNFC_TIMER_ID7";
          v20 = "%{public}s:%{public}s";
        }
      }

      else if (v14 == 7)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446466;
        v25 = "-";
        v26 = 2082;
        v27 = a4;
        v19 = "PHLIBNFC_TIMER_ID8";
        v20 = "%{public}s:%{public}s";
      }

      else if (v14 == 8)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446466;
        v25 = "-";
        v26 = 2082;
        v27 = a4;
        v19 = "PHLIBNFC_TIMER_ID9";
        v20 = "%{public}s:%{public}s";
      }

      else
      {
        if (v14 != 9 || !os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446466;
        v25 = "-";
        v26 = 2082;
        v27 = a4;
        v19 = "PHLIBNFC_TIMER_ID10";
        v20 = "%{public}s:%{public}s";
      }
    }

    else if (v14 <= 1)
    {
      if (!v14)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446466;
        v25 = "-";
        v26 = 2082;
        v27 = a4;
        v19 = "PHLIBNFC_TIMER_ID1";
        v20 = "%{public}s:%{public}s";
        v21 = v12;
        v22 = OS_SIGNPOST_INTERVAL_END;
        goto LABEL_148;
      }

      if (v14 != 1 || !os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446466;
      v25 = "-";
      v26 = 2082;
      v27 = a4;
      v19 = "PHLIBNFC_TIMER_ID2";
      v20 = "%{public}s:%{public}s";
    }

    else if (v14 == 2)
    {
      if (!os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446466;
      v25 = "-";
      v26 = 2082;
      v27 = a4;
      v19 = "PHLIBNFC_TIMER_ID3";
      v20 = "%{public}s:%{public}s";
    }

    else if (v14 == 3)
    {
      if (!os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446466;
      v25 = "-";
      v26 = 2082;
      v27 = a4;
      v19 = "PHLIBNFC_TIMER_ID4";
      v20 = "%{public}s:%{public}s";
    }

    else
    {
      if (v14 != 4 || !os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446466;
      v25 = "-";
      v26 = 2082;
      v27 = a4;
      v19 = "PHLIBNFC_TIMER_ID5";
      v20 = "%{public}s:%{public}s";
    }

LABEL_147:
    v21 = v12;
    v22 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_148:
    v23 = 22;
    goto LABEL_149;
  }

  if (!a5)
  {
    if (v14 > 4)
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          if (!os_signpost_enabled(v12))
          {
            return;
          }

          v24 = 136446466;
          v25 = "+";
          v26 = 2082;
          v27 = a4;
          v19 = "PHLIBNFC_TIMER_ID6";
          v20 = "%{public}s:%{public}s";
        }

        else
        {
          if (v14 != 6 || !os_signpost_enabled(v12))
          {
            return;
          }

          v24 = 136446466;
          v25 = "+";
          v26 = 2082;
          v27 = a4;
          v19 = "PHLIBNFC_TIMER_ID7";
          v20 = "%{public}s:%{public}s";
        }
      }

      else if (v14 == 7)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446466;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v19 = "PHLIBNFC_TIMER_ID8";
        v20 = "%{public}s:%{public}s";
      }

      else if (v14 == 8)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446466;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v19 = "PHLIBNFC_TIMER_ID9";
        v20 = "%{public}s:%{public}s";
      }

      else
      {
        if (v14 != 9 || !os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446466;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v19 = "PHLIBNFC_TIMER_ID10";
        v20 = "%{public}s:%{public}s";
      }
    }

    else if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1 || !os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446466;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v19 = "PHLIBNFC_TIMER_ID2";
        v20 = "%{public}s:%{public}s";
      }

      else
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446466;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v19 = "PHLIBNFC_TIMER_ID1";
        v20 = "%{public}s:%{public}s";
      }
    }

    else if (v14 == 2)
    {
      if (!os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446466;
      v25 = "+";
      v26 = 2082;
      v27 = a4;
      v19 = "PHLIBNFC_TIMER_ID3";
      v20 = "%{public}s:%{public}s";
    }

    else if (v14 == 3)
    {
      if (!os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446466;
      v25 = "+";
      v26 = 2082;
      v27 = a4;
      v19 = "PHLIBNFC_TIMER_ID4";
      v20 = "%{public}s:%{public}s";
    }

    else
    {
      if (v14 != 4 || !os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446466;
      v25 = "+";
      v26 = 2082;
      v27 = a4;
      v19 = "PHLIBNFC_TIMER_ID5";
      v20 = "%{public}s:%{public}s";
    }

    goto LABEL_147;
  }

  if (v14 > 4)
  {
    if (v14 <= 6)
    {
      if (v14 == 5)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446722;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v28 = 2082;
        v29 = a5;
        v19 = "PHLIBNFC_TIMER_ID6";
        v20 = "%{public}s:%{public}s <- %{public}s";
        goto LABEL_100;
      }

      if (v14 == 6 && os_signpost_enabled(v12))
      {
        v24 = 136446722;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v28 = 2082;
        v29 = a5;
        v19 = "PHLIBNFC_TIMER_ID7";
        v20 = "%{public}s:%{public}s <- %{public}s";
        goto LABEL_100;
      }
    }

    else
    {
      if (v14 == 7)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446722;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v28 = 2082;
        v29 = a5;
        v19 = "PHLIBNFC_TIMER_ID8";
        v20 = "%{public}s:%{public}s <- %{public}s";
        goto LABEL_100;
      }

      if (v14 == 8)
      {
        if (!os_signpost_enabled(v12))
        {
          return;
        }

        v24 = 136446722;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v28 = 2082;
        v29 = a5;
        v19 = "PHLIBNFC_TIMER_ID9";
        v20 = "%{public}s:%{public}s <- %{public}s";
        goto LABEL_100;
      }

      if (v14 == 9 && os_signpost_enabled(v12))
      {
        v24 = 136446722;
        v25 = "+";
        v26 = 2082;
        v27 = a4;
        v28 = 2082;
        v29 = a5;
        v19 = "PHLIBNFC_TIMER_ID10";
        v20 = "%{public}s:%{public}s <- %{public}s";
        goto LABEL_100;
      }
    }
  }

  else if (v14 <= 1)
  {
    if (!v14)
    {
      if (!os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446722;
      v25 = "+";
      v26 = 2082;
      v27 = a4;
      v28 = 2082;
      v29 = a5;
      v19 = "PHLIBNFC_TIMER_ID1";
      v20 = "%{public}s:%{public}s <- %{public}s";
      goto LABEL_100;
    }

    if (v14 == 1 && os_signpost_enabled(v12))
    {
      v24 = 136446722;
      v25 = "+";
      v26 = 2082;
      v27 = a4;
      v28 = 2082;
      v29 = a5;
      v19 = "PHLIBNFC_TIMER_ID2";
      v20 = "%{public}s:%{public}s <- %{public}s";
      goto LABEL_100;
    }
  }

  else
  {
    if (v14 == 2)
    {
      if (!os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446722;
      v25 = "+";
      v26 = 2082;
      v27 = a4;
      v28 = 2082;
      v29 = a5;
      v19 = "PHLIBNFC_TIMER_ID3";
      v20 = "%{public}s:%{public}s <- %{public}s";
      goto LABEL_100;
    }

    if (v14 == 3)
    {
      if (!os_signpost_enabled(v12))
      {
        return;
      }

      v24 = 136446722;
      v25 = "+";
      v26 = 2082;
      v27 = a4;
      v28 = 2082;
      v29 = a5;
      v19 = "PHLIBNFC_TIMER_ID4";
      v20 = "%{public}s:%{public}s <- %{public}s";
      goto LABEL_100;
    }

    if (v14 == 4 && os_signpost_enabled(v12))
    {
      v24 = 136446722;
      v25 = "+";
      v26 = 2082;
      v27 = a4;
      v28 = 2082;
      v29 = a5;
      v19 = "PHLIBNFC_TIMER_ID5";
      v20 = "%{public}s:%{public}s <- %{public}s";
LABEL_100:
      v21 = v12;
      v22 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_132:
      v23 = 32;
LABEL_149:
      _os_signpost_emit_with_name_impl(&dword_297F52000, v21, v22, 0xEEEEB0B5B2B2EEEELL, v19, v20, &v24, v23);
    }
  }
}

uint64_t phTmlNfc_Init(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v37 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_Init", 148, "pConfig!=((void*)0)");
    }

    dispatch_get_specific(*v37);
    v39 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    *buf = 136446722;
    v49 = "phTmlNfc_Init";
    v50 = 1024;
    v51 = 148;
    v52 = 2080;
    v53 = "pConfig!=((void*)0)";
    goto LABEL_81;
  }

  if (*a1 == 0)
  {
    v44 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v45(3, "%s:%i FAILED: %s", "phTmlNfc_Init", 149, "pConfig->pDevNameHsu || pConfig->pDevNameSpmi");
    }

    dispatch_get_specific(*v44);
    v39 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    *buf = 136446722;
    v49 = "phTmlNfc_Init";
    v50 = 1024;
    v51 = 149;
    v52 = 2080;
    v53 = "pConfig->pDevNameHsu || pConfig->pDevNameSpmi";
    goto LABEL_81;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v40 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v41 = NFLogGetLogger();
    if (v41)
    {
      v41(3, "%s:%i FAILED: %s", "phTmlNfc_Init", 150, "pConfig->pContext");
    }

    dispatch_get_specific(*v40);
    v39 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    *buf = 136446722;
    v49 = "phTmlNfc_Init";
    v50 = 1024;
    v51 = 150;
    v52 = 2080;
    v53 = "pConfig->pContext";
    goto LABEL_81;
  }

  if (!a2)
  {
    v42 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v43 = NFLogGetLogger();
    if (v43)
    {
      v43(3, "%s:%i FAILED: %s", "phTmlNfc_Init", 151, "pHwRef!=((void*)0)");
    }

    dispatch_get_specific(*v42);
    v39 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    *buf = 136446722;
    v49 = "phTmlNfc_Init";
    v50 = 1024;
    v51 = 151;
    v52 = 2080;
    v53 = "pHwRef!=((void*)0)";
    goto LABEL_81;
  }

  if (*(a1 + 40) == 6)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8 * (*(a1 + 40) == 6));
  v7 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(6, "%s:%i devName: %s  auxDevName: %s", "phTmlNfc_Init", 163, v6, v5);
  }

  dispatch_get_specific(*v7);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v49 = "phTmlNfc_Init";
    v50 = 1024;
    v51 = 163;
    v52 = 2080;
    v53 = v6;
    v54 = 2080;
    v55 = v5;
    _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i devName: %s  auxDevName: %s", buf, 0x26u);
  }

  IsSupported = NFHardwareInterfaceIsSupported(v6);
  if (!IsSupported)
  {
    return 51;
  }

  if (IsSupported < 0)
  {
    return 255;
  }

  if (!v5)
  {
LABEL_17:
    os_unfair_lock_lock(&unk_2A18BD210);
    v12 = 0;
    v13 = *(a1 + 24);
    v14 = 1;
    while (1)
    {
      v15 = &unk_2A18BD210 + 8 * v12;
      if (!*(v15 + 1))
      {
        break;
      }

      v16 = v14;
      v14 = 0;
      v12 = 1;
      if ((v16 & 1) == 0)
      {
        dispatch_get_specific(*v7);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v17(3, "%s:%i Failed to allocate TML context - no space available.", "_phTmlNfc_CreateTMLContext", 127);
        }

        dispatch_get_specific(*v7);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v49 = "_phTmlNfc_CreateTMLContext";
          v50 = 1024;
          v51 = 127;
          _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate TML context - no space available.", buf, 0x12u);
        }

        os_unfair_lock_unlock(&unk_2A18BD210);
        dispatch_get_specific(*v7);
        v19 = NFLogGetLogger();
        if (v19)
        {
          v19(3, "%s:%i Failed to create TML context !", "phTmlNfc_Init", 192);
        }

        dispatch_get_specific(*v7);
        v20 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v49 = "phTmlNfc_Init";
          v50 = 1024;
          v51 = 192;
          v21 = "%{public}s:%i Failed to create TML context !";
          v22 = v20;
          v23 = 18;
          goto LABEL_51;
        }

        return 255;
      }
    }

    v24 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10A00401D1C5D8BuLL);
    *v24 = 0u;
    *(v24 + 1) = 0u;
    *(v24 + 2) = 0u;
    *(v24 + 3) = 0u;
    *(v24 + 4) = 0u;
    *(v24 + 5) = 0u;
    *(v24 + 6) = 0u;
    *(v24 + 7) = 0u;
    *(v24 + 8) = 0u;
    *(v24 + 9) = 0u;
    *(v24 + 38) = v13;
    *(v24 + 18) = (v13 + 1);
    *(v15 + 1) = v24;
    os_unfair_lock_unlock(&unk_2A18BD210);
    pthread_mutex_init((v24 + 40), 0);
    *(v24 + 8) = 0;
    if (!pthread_mutex_lock((v24 + 40)))
    {
      ++*(v24 + 8);
      if (!pthread_mutex_unlock((v24 + 40)))
      {
        v24[2] = 0;
        *(v24 + 1) = 0;
        *(v24 + 2) = 0;
        v25 = *v4;
        if (*v4)
        {
          *(v24 + 3) = v25;
          dispatch_retain(v25);
          v24[104] = *(v4 + 16);
          v24[105] = *(v4 + 18);
          v26 = NFHardwareInterfaceOpen(v6, *(v24 + 3));
          *(v24 + 14) = v26;
          if (v26)
          {
            v27 = *(*v26 + 11);
            if (v27)
            {
              v27(*(*v26 + 18), *(v4 + 8));
            }

            if (!v5)
            {
              goto LABEL_39;
            }

            v28 = NFHardwareInterfaceOpen(v5, *(v24 + 3));
            *(v24 + 16) = v28;
            if (v28)
            {
              v29 = *(*v28 + 11);
              if (v29)
              {
                v29(*(*v28 + 18), *(v4 + 8));
              }

              v24[121] = 1;
LABEL_39:
              if (*(a1 + 24) == 1)
              {
                v24[120] = 1;
                v30 = "hammerfest-spmi";
              }

              else if (v24[120])
              {
                v30 = "hammerfest-spmi";
              }

              else
              {
                v30 = "stockholm-spmi";
              }

              *v24 = 1;
              ModelID = NFHardwareGetModelID(v30);
              result = 0;
              *(v24 + 9) = ModelID;
              *a2 = *(v24 + 18);
              return result;
            }
          }
        }

        phTmlNfc_Shutdown(*(v24 + 18));
        return 255;
      }

      dispatch_get_specific(*v7);
      v47 = NFLogGetLogger();
      if (v47)
      {
        v47(3, "%s:%i FAILED: %s", "retainTML", 278, "!status");
      }

      dispatch_get_specific(*v7);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v49 = "retainTML";
        v50 = 1024;
        v51 = 278;
        v52 = 2080;
        v53 = "!status";
        goto LABEL_81;
      }

LABEL_82:
      abort();
    }

    dispatch_get_specific(*v7);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v46(3, "%s:%i FAILED: %s", "retainTML", 273, "!status");
    }

    dispatch_get_specific(*v7);
    v39 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    *buf = 136446722;
    v49 = "retainTML";
    v50 = 1024;
    v51 = 273;
    v52 = 2080;
    v53 = "!status";
LABEL_81:
    _os_log_impl(&dword_297F52000, v39, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    goto LABEL_82;
  }

  v11 = NFHardwareInterfaceIsSupported(v5);
  if (!v11)
  {
    dispatch_get_specific(*v7);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(3, "%s:%i Interface %s is not supported?!", "phTmlNfc_Init", 179, v5);
    }

    dispatch_get_specific(*v7);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v49 = "phTmlNfc_Init";
      v50 = 1024;
      v51 = 179;
      v52 = 2080;
      v53 = v5;
      _os_log_impl(&dword_297F52000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Interface %s is not supported?!", buf, 0x1Cu);
    }

    return 51;
  }

  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  dispatch_get_specific(*v7);
  v34 = NFLogGetLogger();
  if (v34)
  {
    v34(3, "%s:%i Error detecting interface %s", "phTmlNfc_Init", 182, v5);
  }

  dispatch_get_specific(*v7);
  v35 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v49 = "phTmlNfc_Init";
    v50 = 1024;
    v51 = 182;
    v52 = 2080;
    v53 = v5;
    v21 = "%{public}s:%i Error detecting interface %s";
    v22 = v35;
    v23 = 28;
LABEL_51:
    _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
  }

  return 255;
}

uint64_t phTmlNfc_Shutdown(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v1 = sub_297F557F8(a1);
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (v1)
  {
    if (Logger)
    {
      Logger(6, "%s:%i ", "phTmlNfc_Shutdown", 321);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__sig) = 136446466;
      *(&buf.__sig + 4) = "phTmlNfc_Shutdown";
      *&buf.__opaque[4] = 1024;
      *&buf.__opaque[6] = 321;
      _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", &buf, 0x12u);
    }

    *v1 = 0;
    if (*(v1 + 120) == 1 && *(v1 + 136) == 1)
    {
      v5 = **(v1 + 112);
      v6 = *(v5 + 120);
      if (v6)
      {
        v6(*(v5 + 144), 1);
      }
    }

    v7 = *(v1 + 112);
    if (v7)
    {
      NFHardwareInterfaceClose(v7);
      *(v1 + 112) = 0;
    }

    v8 = *(v1 + 128);
    if (v8)
    {
      NFHardwareInterfaceClose(v8);
      *(v1 + 128) = 0;
    }

    if (pthread_mutex_lock((v1 + 40)))
    {
      dispatch_get_specific(*v2);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(3, "%s:%i FAILED: %s", "releaseTML", 286, "!status");
      }

      dispatch_get_specific(*v2);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__sig) = 136446722;
        *(&buf.__sig + 4) = "releaseTML";
        *&buf.__opaque[4] = 1024;
        *&buf.__opaque[6] = 286;
        *&buf.__opaque[10] = 2080;
        *&buf.__opaque[12] = "!status";
        goto LABEL_44;
      }

LABEL_46:
      abort();
    }

    v9 = *(v1 + 32);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v11 < 0 != v10 || (*(v1 + 32) = v11) != 0)
    {
      result = pthread_mutex_unlock((v1 + 40));
      if (result)
      {
        dispatch_get_specific(*v2);
        v13 = NFLogGetLogger();
        if (v13)
        {
          v13(3, "%s:%i FAILED: %s", "releaseTML", 312, "!status");
        }

        dispatch_get_specific(*v2);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.__sig) = 136446722;
          *(&buf.__sig + 4) = "releaseTML";
          *&buf.__opaque[4] = 1024;
          *&buf.__opaque[6] = 312;
          *&buf.__opaque[10] = 2080;
          *&buf.__opaque[12] = "!status";
LABEL_44:
          p_buf = &buf;
LABEL_45:
          _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", p_buf, 0x1Cu);
          goto LABEL_46;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v16 = *(v1 + 40);
      v17 = *(v1 + 56);
      v18 = *(v1 + 88);
      *&buf.__opaque[24] = *(v1 + 72);
      *&buf.__opaque[40] = v18;
      *&buf.__sig = v16;
      *&buf.__opaque[8] = v17;
      v19 = *(v1 + 24);
      if (v19)
      {
        dispatch_release(v19);
        *(v1 + 24) = 0;
      }

      os_unfair_lock_lock(&unk_2A18BD210);
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = &unk_2A18BD210 + 8 * v20;
        v23 = *(v22 + 1);
        if (v23 == v1)
        {
          free(v23);
          *(v22 + 1) = 0;
          goto LABEL_37;
        }

        v24 = v21;
        v21 = 0;
        v20 = 1;
      }

      while ((v24 & 1) != 0);
      dispatch_get_specific(*v2);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v25(3, "%s:%i Failed to release TML context - not found", "_phTmlNfc_FreeTMLContext", 142);
      }

      dispatch_get_specific(*v2);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v30 = 136446466;
        v31 = "_phTmlNfc_FreeTMLContext";
        v32 = 1024;
        v33 = 142;
        _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to release TML context - not found", v30, 0x12u);
      }

LABEL_37:
      os_unfair_lock_unlock(&unk_2A18BD210);
      if (pthread_mutex_unlock(&buf))
      {
        dispatch_get_specific(*v2);
        v29 = NFLogGetLogger();
        if (v29)
        {
          v29(3, "%s:%i FAILED: %s", "releaseTML", 304, "!status");
        }

        dispatch_get_specific(*v2);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v30 = 136446722;
          v31 = "releaseTML";
          v32 = 1024;
          v33 = 304;
          v34 = 2080;
          v35 = "!status";
          p_buf = v30;
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      pthread_mutex_destroy(&buf);
      return 0;
    }
  }

  else
  {
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_Shutdown", 319, "tml!=NULL");
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__sig) = 136446722;
      *(&buf.__sig + 4) = "phTmlNfc_Shutdown";
      *&buf.__opaque[4] = 1024;
      *&buf.__opaque[6] = 319;
      *&buf.__opaque[10] = 2080;
      *&buf.__opaque[12] = "tml!=NULL";
      _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", &buf, 0x1Cu);
    }

    return 49;
  }

  return result;
}

uint64_t phTmlNfc_WriteAbort(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = sub_297F557F8(a1);
  if (!v1)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_WriteAbort", 539, "tml!=NULL");
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v12 = "phTmlNfc_WriteAbort";
    v13 = 1024;
    v14 = 539;
    v15 = 2080;
    v16 = "tml!=NULL";
    goto LABEL_15;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i FAILED: %s", "phTmlNfc_WriteAbort", 540, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v9);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v12 = "phTmlNfc_WriteAbort";
    v13 = 1024;
    v14 = 540;
    v15 = 2080;
    v16 = "tml->ifc!=NULL";
LABEL_15:
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v3 = *v2;
  v4 = *(*v2 + 64);
  if (v4 && v4(*(v3 + 144)))
  {
    return 255;
  }

  else
  {
    return 0;
  }
}

uint64_t phTmlNfc_ReadAbort(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v1 = sub_297F557F8(a1);
  if (!v1)
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_ReadAbort", 624, "tml!=NULL");
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v20 = "phTmlNfc_ReadAbort";
    v21 = 1024;
    v22 = 624;
    v23 = 2080;
    *v24 = "tml!=NULL";
    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v1 + 112);
  if (!v3)
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i FAILED: %s", "phTmlNfc_ReadAbort", 625, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v16);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v20 = "phTmlNfc_ReadAbort";
    v21 = 1024;
    v22 = 625;
    v23 = 2080;
    *v24 = "tml->ifc!=NULL";
LABEL_21:
    _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v4 = *v3;
  v5 = *(*v3 + 56);
  if (v5 && v5(*(v4 + 144)))
  {
    v6 = 255;
  }

  else
  {
    v6 = 0;
  }

  if (NFIsInternalBuild())
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(6, "%s:%i Debug : Pending read %d, read cb = %p, context = %p", "phTmlNfc_ReadAbort", 630, *(v2 + 2), *(v2 + 8), *(v2 + 16));
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v2 + 2);
      v14 = *(v2 + 8);
      v15 = *(v2 + 16);
      *buf = 136447234;
      v20 = "phTmlNfc_ReadAbort";
      v21 = 1024;
      v22 = 630;
      v23 = 1024;
      *v24 = v13;
      *&v24[4] = 2048;
      *&v24[6] = v14;
      v25 = 2048;
      v26 = v15;
      _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Debug : Pending read %d, read cb = %p, context = %p", buf, 0x2Cu);
    }

    *(v2 + 2) = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  return v6;
}

uint64_t phTmlNfc_FlushTxRxBuffers(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = sub_297F557F8(a1);
  if (!v1)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_FlushTxRxBuffers", 751, "tml!=NULL");
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v12 = "phTmlNfc_FlushTxRxBuffers";
    v13 = 1024;
    v14 = 751;
    v15 = 2080;
    v16 = "tml!=NULL";
    goto LABEL_14;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v10(3, "%s:%i FAILED: %s", "phTmlNfc_FlushTxRxBuffers", 752, "tml->ifc");
    }

    dispatch_get_specific(*v9);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v12 = "phTmlNfc_FlushTxRxBuffers";
    v13 = 1024;
    v14 = 752;
    v15 = 2080;
    v16 = "tml->ifc";
LABEL_14:
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v3 = *v2;
  v4 = *(*v2 + 72);
  if (v4 && !v4(*(v3 + 144)))
  {
    return 255;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297F59A90(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetPower", 646, "tml!=NULL");
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v21 = "_phTmlNfc_SetPower";
    v22 = 1024;
    v23 = 646;
    v24 = 2080;
    v25 = "tml!=NULL";
    goto LABEL_19;
  }

  v4 = v3;
  v5 = *(v3 + 112);
  if (!v5)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i FAILED: %s", "_phTmlNfc_SetPower", 647, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v18);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v21 = "_phTmlNfc_SetPower";
    v22 = 1024;
    v23 = 647;
    v24 = 2080;
    v25 = "tml->ifc!=NULL";
LABEL_19:
    _os_log_impl(&dword_297F52000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v6 = a2 != 0;
  v7 = *v5;
  v8 = *(*v5 + 160);
  if (v8)
  {
    v9 = a2 != 0;
    v10 = v8(*(v7 + 264), v9);
    if ((v10 & 1) == 0)
    {
      return 255;
    }

    v6 = v9 & v10;
  }

  if (v6)
  {
    v11 = *(v4 + 112);
    if (v11)
    {
      v12 = *v11;
      v13 = *(*v11 + 72);
      if (v13)
      {
        v13(*(v12 + 144));
      }
    }
  }

  return 0;
}

uint64_t sub_297F59CC4(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetDownload", 688, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v14 = "_phTmlNfc_SetDownload";
    v15 = 1024;
    v16 = 688;
    v17 = 2080;
    v18 = "tml!=NULL";
    goto LABEL_14;
  }

  v4 = *(v3 + 112);
  if (!v4)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "_phTmlNfc_SetDownload", 689, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v14 = "_phTmlNfc_SetDownload";
    v15 = 1024;
    v16 = 689;
    v17 = 2080;
    v18 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v5 = *v4;
  v6 = *(*v4 + 184);
  if (v6 && !v6(*(v5 + 264), a2 != 0))
  {
    return 255;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297F59EC4(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetPMUStandbyEnabled", 661, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v14 = "_phTmlNfc_SetPMUStandbyEnabled";
    v15 = 1024;
    v16 = 661;
    v17 = 2080;
    v18 = "tml!=NULL";
    goto LABEL_14;
  }

  v4 = *(v3 + 112);
  if (!v4)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "_phTmlNfc_SetPMUStandbyEnabled", 662, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v14 = "_phTmlNfc_SetPMUStandbyEnabled";
    v15 = 1024;
    v16 = 662;
    v17 = 2080;
    v18 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v5 = *v4;
  v6 = *(*v4 + 168);
  if (v6 && !v6(*(v5 + 264), a2 != 0))
  {
    return 255;
  }

  else
  {
    return 0;
  }
}

void sub_297F5A0C4(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *(a1 + 112);
    if (v1)
    {
      v2 = *v1;
      v3 = *(v2 + 96);
      if (v3)
      {
        v4 = *(v2 + 144);

        v3(v4);
      }

      return;
    }

    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SerialLogEnable", 884, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v8);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "_phTmlNfc_SerialLogEnable";
      v12 = 1024;
      v13 = 884;
      v14 = 2080;
      v15 = "tml->ifc!=NULL";
      goto LABEL_15;
    }
  }

  else
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v6 = NFLogGetLogger();
    if (v6)
    {
      v6(3, "%s:%i FAILED: %s", "_phTmlNfc_SerialLogEnable", 883, "tml!=NULL");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "_phTmlNfc_SerialLogEnable";
      v12 = 1024;
      v13 = 883;
      v14 = 2080;
      v15 = "tml!=NULL";
LABEL_15:
      _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }
  }
}

uint64_t sub_297F5A2D4(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_SetCRCEnable", 804, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v14 = "_phTmlNfc_SetCRCEnable";
    v15 = 1024;
    v16 = 804;
    v17 = 2080;
    v18 = "tml!=NULL";
    goto LABEL_14;
  }

  v4 = *(v3 + 112);
  if (!v4)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "_phTmlNfc_SetCRCEnable", 805, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v14 = "_phTmlNfc_SetCRCEnable";
    v15 = 1024;
    v16 = 805;
    v17 = 2080;
    v18 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v5 = *v4;
  v6 = *(*v4 + 112);
  if (v6 && !v6(*(v5 + 144), a2 != 0))
  {
    return 255;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297F5A4D4(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_phTmlNfc_vGPIO", 832, "tml!=NULL");
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v21 = "_phTmlNfc_vGPIO";
    v22 = 1024;
    v23 = 832;
    v24 = 2080;
    v25 = "tml!=NULL";
    goto LABEL_18;
  }

  v4 = v3;
  v5 = *(v3 + 112);
  if (!v5)
  {
    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(3, "%s:%i FAILED: %s", "_phTmlNfc_vGPIO", 833, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v14);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v21 = "_phTmlNfc_vGPIO";
    v22 = 1024;
    v23 = 833;
    v24 = 2080;
    v25 = "tml->ifc!=NULL";
LABEL_18:
    _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v6 = *v5;
  v7 = v6[31];
  if (v7)
  {
    if (!v7(v6[33], a2))
    {
      return 0;
    }

    v6 = **(v4 + 112);
  }

  v8 = v6[28];
  v9 = 255;
  if (v8)
  {
    v10 = v8(v6[33]) & 1;
    if (v10)
    {
      v9 = 179;
    }

    else
    {
      v9 = 255;
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v18(3, "%s:%i Failed to send vGPIO. NACK = %d", "_phTmlNfc_vGPIO", 839, v10);
  }

  dispatch_get_specific(*v17);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v21 = "_phTmlNfc_vGPIO";
    v22 = 1024;
    v23 = 839;
    v24 = 1024;
    LODWORD(v25) = v10;
    _os_log_impl(&dword_297F52000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to send vGPIO. NACK = %d", buf, 0x18u);
  }

  return v9;
}

uint64_t phTmlNfc_ConfigHsuBaudRate(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = sub_297F557F8(a1);
  if (!v3)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_ConfigHsuBaudRate", 1288, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v17 = "phTmlNfc_ConfigHsuBaudRate";
    v18 = 1024;
    v19 = 1288;
    v20 = 2080;
    v21 = "tml!=NULL";
    goto LABEL_15;
  }

  v4 = *(v3 + 112);
  if (!v4)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "phTmlNfc_ConfigHsuBaudRate", 1289, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v17 = "phTmlNfc_ConfigHsuBaudRate";
    v18 = 1024;
    v19 = 1289;
    v20 = 2080;
    v21 = "tml->ifc!=NULL";
LABEL_15:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  if ((a2 - 1) >= 9)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Invalid input baud rate", "phTmlNfc_ConfigHsuBaudRate", 1304);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "phTmlNfc_ConfigHsuBaudRate";
      v18 = 1024;
      v19 = 1304;
      _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid input baud rate", buf, 0x12u);
    }

    return 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(*v4 + 8);
    if (v6 && !v6(*(v5 + 144), qword_297F6BFE0[a2 - 1]))
    {
      return 255;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t phTmlNfc_GetHsuMaxBaudRate(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 >= 2)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Invalid mode parameter", "phTmlNfc_GetHsuMaxBaudRate", 1321);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "phTmlNfc_GetHsuMaxBaudRate";
      v9 = 1024;
      v10 = 1321;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid mode parameter", buf, 0x12u);
    }

    return 1;
  }

  else
  {
    result = 0;
    *a3 = 5;
  }

  return result;
}

uint64_t phTmlNfc_SpmiDrvErrorStatus(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v5 = sub_297F557F8(a1);
  memset(v34, 0, sizeof(v34));
  v25 = 64;
  if (!v5)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_SpmiDrvErrorStatus", 1336, "tml!=NULL");
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v27 = "phTmlNfc_SpmiDrvErrorStatus";
    v28 = 1024;
    v29 = 1336;
    v30 = 2080;
    v31 = "tml!=NULL";
    goto LABEL_13;
  }

  v6 = *(v5 + 112);
  if (!v6)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i FAILED: %s", "phTmlNfc_SpmiDrvErrorStatus", 1337, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v11);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v27 = "phTmlNfc_SpmiDrvErrorStatus";
    v28 = 1024;
    v29 = 1337;
    v30 = 2080;
    v31 = "tml->ifc!=NULL";
LABEL_13:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  if (a3)
  {
    return 0;
  }

  v13 = *v6;
  v14 = *(*v6 + 128);
  if (v14 && v14(*(v13 + 144), v34, &v25, a2[5]))
  {
    phTmlNfc_ParseSpmiDrvErrorStatus(v34, v25, a2);
    return 0;
  }

  v15 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = __error();
    v19 = strerror(*v18);
    v20 = __error();
    v17(3, "%s:%i %s errno=%d Failed to query SPMI error registers", "phTmlNfc_SpmiDrvErrorStatus", 1346, v19, *v20);
  }

  dispatch_get_specific(*v15);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = __error();
    v23 = strerror(*v22);
    v24 = *__error();
    *buf = 136446978;
    v27 = "phTmlNfc_SpmiDrvErrorStatus";
    v28 = 1024;
    v29 = 1346;
    v30 = 2080;
    v31 = v23;
    v32 = 1024;
    v33 = v24;
    _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Failed to query SPMI error registers", buf, 0x22u);
  }

  return 255;
}

uint64_t phTmlNfc_ParseSpmiDrvErrorStatus(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1 && a3)
  {
    if (a2 < 3)
    {
      return 0;
    }

    v18 = a3 + 3;
    v16 = a3 + 4;
    v17 = a3 + 1;
    v7 = (a1 + 2);
    v8 = 3;
    v9 = MEMORY[0x29EDC9730];
    while (1)
    {
      v10 = *(v7 - 2);
      if (v10 <= 5)
      {
        break;
      }

      v11 = a3 + 2;
      if (v10 == 6)
      {
        goto LABEL_14;
      }

      v11 = v18;
      if (v10 == 7)
      {
        goto LABEL_14;
      }

      if (v10 == 8)
      {
        v11 = v16;
LABEL_14:
        *v11 = *v7;
      }

LABEL_15:
      dispatch_get_specific(*v9);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i SPMI register 0x%02X = 0x%02X", "phTmlNfc_ParseSpmiDrvErrorStatus", 1380, *(v7 - 2), *v7);
      }

      dispatch_get_specific(*v9);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(v7 - 2);
        v15 = *v7;
        *buf = 136446978;
        v20 = "phTmlNfc_ParseSpmiDrvErrorStatus";
        v21 = 1024;
        v22 = 1380;
        v23 = 1024;
        v24 = v14;
        v25 = 1024;
        v26 = v15;
        _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i SPMI register 0x%02X = 0x%02X", buf, 0x1Eu);
      }

      v8 += 3;
      v7 += 3;
      if (v8 > a2)
      {
        return 0;
      }
    }

    v11 = a3;
    if (v10 != 4)
    {
      v11 = v17;
      if (v10 != 5)
      {
        if (!*(v7 - 2))
        {
          return 0;
        }

        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t phTmlNfc_SetGetSpmiDrvConfigRegs()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Not Implemented!!!", "phTmlNfc_SetGetSpmiDrvConfigRegs", 1394);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v5 = "phTmlNfc_SetGetSpmiDrvConfigRegs";
    v6 = 1024;
    v7 = 1394;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not Implemented!!!", buf, 0x12u);
  }

  return 0;
}

uint64_t phTmlNfc_ConfigureSpmi(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = sub_297F557F8(a1);
  if (!v2)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_ConfigureSpmi", 1404, "tml!=NULL");
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v35 = "phTmlNfc_ConfigureSpmi";
    v36 = 1024;
    v37 = 1404;
    v38 = 2080;
    v39 = "tml!=NULL";
    goto LABEL_16;
  }

  v3 = v2;
  if (*(v2 + 120))
  {
    v4 = "hammerfest-spmi";
  }

  else
  {
    v4 = "stockholm-spmi";
  }

  v5 = NFHardwareSkipSpmiReconfig(v4);
  if (*(v3 + 120) != 1)
  {
    return 6;
  }

  v6 = MEMORY[0x29EDC9730];
  if (v5)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(4, "%s:%i Skipping SPMI reconfig.", "phTmlNfc_ConfigureSpmi", 1409);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "phTmlNfc_ConfigureSpmi";
      v36 = 1024;
      v37 = 1409;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Skipping SPMI reconfig.", buf, 0x12u);
    }

    return 6;
  }

  v13 = sub_297F557F8(a1);
  if (!v13)
  {
    dispatch_get_specific(*v6);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i FAILED: %s", "_phTmlNfc_ConfigureSPMI", 761, "tml!=NULL");
    }

    dispatch_get_specific(*v6);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v35 = "_phTmlNfc_ConfigureSPMI";
    v36 = 1024;
    v37 = 761;
    v38 = 2080;
    v39 = "tml!=NULL";
    goto LABEL_16;
  }

  v14 = v13;
  if (!*(v13 + 112) || !*(v13 + 128))
  {
    dispatch_get_specific(*v6);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i FAILED: %s", "_phTmlNfc_ConfigureSPMI", 763, "(tml->ifc && tml->auxIfc)");
    }

    dispatch_get_specific(*v6);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v35 = "_phTmlNfc_ConfigureSPMI";
    v36 = 1024;
    v37 = 763;
    v38 = 2080;
    v39 = "(tml->ifc && tml->auxIfc)";
LABEL_16:
    _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  dispatch_get_specific(*v6);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(6, "%s:%i Validating Hammerfest SPMI config...", "_phTmlNfc_ConfigureSPMI", 773);
  }

  dispatch_get_specific(*v6);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v35 = "_phTmlNfc_ConfigureSPMI";
    v36 = 1024;
    v37 = 773;
    _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Validating Hammerfest SPMI config...", buf, 0x12u);
  }

  v17 = **(v14 + 112);
  v18 = *(v17 + 208);
  if (v18)
  {
    v19 = v18(*(v17 + 264));
  }

  else
  {
    v19 = 1;
  }

  dispatch_get_specific(*v6);
  v22 = NFLogGetLogger();
  if (v19)
  {
    if (v22)
    {
      v22(6, "%s:%i Hammerfest SPMI config is good", "_phTmlNfc_ConfigureSPMI", 779);
    }

    dispatch_get_specific(*v6);
    v23 = NFSharedLogGetLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v24)
    {
      *buf = 136446466;
      v35 = "_phTmlNfc_ConfigureSPMI";
      v36 = 1024;
      v37 = 779;
      _os_log_impl(&dword_297F52000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hammerfest SPMI config is good", buf, 0x12u);
      return 0;
    }
  }

  else
  {
    if (v22)
    {
      v22(6, "%s:%i Hammerfest SPMI config is incorrect", "_phTmlNfc_ConfigureSPMI", 776);
    }

    dispatch_get_specific(*v6);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v35 = "_phTmlNfc_ConfigureSPMI";
      v36 = 1024;
      v37 = 776;
      _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hammerfest SPMI config is incorrect", buf, 0x12u);
    }

    dispatch_get_specific(*v6);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(6, "%s:%i Setting Hammerfest SPMI config...", "_phTmlNfc_ConfigureSPMI", 784);
    }

    dispatch_get_specific(*v6);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v35 = "_phTmlNfc_ConfigureSPMI";
      v36 = 1024;
      v37 = 784;
      _os_log_impl(&dword_297F52000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting Hammerfest SPMI config...", buf, 0x12u);
    }

    v28 = **(v14 + 128);
    v29 = *(v28 + 216);
    if (v29)
    {
      v30 = v29(*(v28 + 264));
    }

    else
    {
      v30 = 1;
    }

    dispatch_get_specific(*v6);
    v31 = NFLogGetLogger();
    if (v30)
    {
      if (v31)
      {
        v31(6, "%s:%i Hammerfest SPMI config is set", "_phTmlNfc_ConfigureSPMI", 791);
      }

      dispatch_get_specific(*v6);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v35 = "_phTmlNfc_ConfigureSPMI";
        v36 = 1024;
        v37 = 791;
        _os_log_impl(&dword_297F52000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hammerfest SPMI config is set", buf, 0x12u);
      }

      result = 0;
      *(v14 + 121) = 0;
    }

    else
    {
      if (v31)
      {
        v31(6, "%s:%i Failed to set Hammerfest SPMI config", "_phTmlNfc_ConfigureSPMI", 788);
      }

      dispatch_get_specific(*v6);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v35 = "_phTmlNfc_ConfigureSPMI";
        v36 = 1024;
        v37 = 788;
        _os_log_impl(&dword_297F52000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Failed to set Hammerfest SPMI config", buf, 0x12u);
      }

      return 255;
    }
  }

  return result;
}

uint64_t phTmlNfc_RegisterSpmiErrorCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = sub_297F557F8(a1);
  if (!v5)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "phTmlNfc_RegisterSpmiErrorCallback", 1422, "tml!=NULL");
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v19 = "phTmlNfc_RegisterSpmiErrorCallback";
    v20 = 1024;
    v21 = 1422;
    v22 = 2080;
    v23 = "tml!=NULL";
    goto LABEL_14;
  }

  v6 = *(v5 + 112);
  if (!v6)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i FAILED: %s", "phTmlNfc_RegisterSpmiErrorCallback", 1423, "tml->ifc!=NULL");
    }

    dispatch_get_specific(*v13);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return 49;
    }

    *buf = 136446722;
    v19 = "phTmlNfc_RegisterSpmiErrorCallback";
    v20 = 1024;
    v21 = 1423;
    v22 = 2080;
    v23 = "tml->ifc!=NULL";
LABEL_14:
    _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    return 49;
  }

  v7 = *v6;
  v8 = *(*v6 + 240);
  if (!v8 || (v8(*(v7 + 144), a2, a3) & 1) != 0)
  {
    return 0;
  }

  v15 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v16(3, "%s:%i Failed to register SPMI error callback", "phTmlNfc_RegisterSpmiErrorCallback", 1427);
  }

  dispatch_get_specific(*v15);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v19 = "phTmlNfc_RegisterSpmiErrorCallback";
    v20 = 1024;
    v21 = 1427;
    _os_log_impl(&dword_297F52000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to register SPMI error callback", buf, 0x12u);
  }

  return 255;
}

uint64_t phOsalNfc_Timer_Init(uint64_t a1, NSObject **a2)
{
  v3 = a1;
  v31 = *MEMORY[0x29EDCA608];
  if (sub_297F52C6C(a1))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Timer already initialized for config %d", "phOsalNfc_Timer_Init", 209, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v27 = "phOsalNfc_Timer_Init";
      *&v27[8] = 1024;
      v28 = 209;
      v29 = 1024;
      v30 = v3;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Timer already initialized for config %d", buf, 0x18u);
    }

    return 50;
  }

  else
  {
    os_unfair_lock_lock(&unk_2A18BD260);
    v8 = 0;
    for (i = 1; ; i = 0)
    {
      v10 = i;
      if (!qword_2A18BD240[v8])
      {
        break;
      }

      v8 = 1;
      if ((v10 & 1) == 0)
      {
        os_unfair_lock_unlock(&unk_2A18BD260);
        v11 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v12 = NFLogGetLogger();
        if (v12)
        {
          v12(3, "%s:%i Failed to allocate timer context - no space available.", "_phTmlNfc_AllocateContext", 77);
        }

        dispatch_get_specific(*v11);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *v27 = "_phTmlNfc_AllocateContext";
          *&v27[8] = 1024;
          v28 = 77;
          _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate timer context - no space available.", buf, 0x12u);
        }

        dispatch_get_specific(*v11);
        v14 = NFLogGetLogger();
        if (v14)
        {
          v14(3, "%s:%i failed to start timer thread", "phOsalNfc_Timer_Init", 215);
        }

        dispatch_get_specific(*v11);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *v27 = "phOsalNfc_Timer_Init";
          *&v27[8] = 1024;
          v28 = 215;
          _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to start timer thread", buf, 0x12u);
        }

        return 225;
      }
    }

    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFSharedMiddlewareSignpostLog();
    if (!v17)
    {
      v17 = NFSharedSignpostLog();
    }

    if (os_signpost_enabled(v17))
    {
      *buf = 67109376;
      *v27 = v8;
      *&v27[4] = 1024;
      *&v27[6] = v3;
      _os_signpost_emit_with_name_impl(&dword_297F52000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Allocated Timer", "slot %d, ctlr %d", buf, 0xEu);
    }

    v18 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1020040052397EFuLL);
    *(v18 + 60) = v3;
    qword_2A18BD240[v8] = v18;
    os_unfair_lock_unlock(&unk_2A18BD260);
    v19 = pthread_mutex_init((v18 + 176), 0);
    if (v19)
    {
      v20 = v19;
      dispatch_get_specific(*v16);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(3, "%s:%i Failed to create mutex: %d", "phOsalNfc_Timer_Init", 221, v20);
      }

      dispatch_get_specific(*v16);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v27 = "phOsalNfc_Timer_Init";
        *&v27[8] = 1024;
        v28 = 221;
        v29 = 1024;
        v30 = v20;
        _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create mutex: %d", buf, 0x18u);
      }

      sub_297F5BF80(v3);
      return 255;
    }

    else
    {
      v23 = *a2;
      *(v18 + 21) = *a2;
      dispatch_retain(v23);
      for (j = 8; j != 168; j += 32)
      {
        v25 = &v18[j];
        *v25 = xmmword_297F6C050;
        *(v25 + 1) = xmmword_297F6C050;
      }

      result = 0;
      *v18 = 1;
    }
  }

  return result;
}

void sub_297F5BF80(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&unk_2A18BD260);
  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = qword_2A18BD240[v2];
    if (v5)
    {
      if (*(v5 + 240) == a1)
      {
        break;
      }
    }

    v2 = 1;
    if ((v4 & 1) == 0)
    {
      os_unfair_lock_unlock(&unk_2A18BD260);
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to release timer context - not found", "_phTmlNfc_ReleaseContext", 100);
      }

      dispatch_get_specific(*v6);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *v12 = "_phTmlNfc_ReleaseContext";
        *&v12[8] = 1024;
        v13 = 100;
        _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to release timer context - not found", buf, 0x12u);
      }

      return;
    }
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v9 = NFSharedMiddlewareSignpostLog();
  if (!v9)
  {
    v9 = NFSharedSignpostLog();
  }

  if (os_signpost_enabled(v9))
  {
    *buf = 67109376;
    *v12 = v2;
    *&v12[4] = 1024;
    *&v12[6] = a1;
    _os_signpost_emit_with_name_impl(&dword_297F52000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Released Timer", "slot %d, ctlr %d", buf, 0xEu);
  }

  v10 = qword_2A18BD240[v2];
  if (v10)
  {
    free(v10);
  }

  qword_2A18BD240[v2] = 0;
  os_unfair_lock_unlock(&unk_2A18BD260);
}

uint64_t phOsalNfc_Timer_Deinit(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = sub_297F52C6C(a1);
  if (v2)
  {
    v3 = v2;
    dispatch_assert_queue_V2(*(v2 + 168));
    pthread_mutex_lock((v3 + 176));
    v4 = (v3 + 8);
    v5 = 10;
    do
    {
      if (*v4 != 0xFFFFFFFFFFFFLL)
      {
        sub_297F52D00(v4, 1);
      }

      v4 += 2;
      --v5;
    }

    while (v5);
    pthread_mutex_unlock((v3 + 176));
    pthread_mutex_destroy((v3 + 176));
    dispatch_release(*(v3 + 168));
    *(v3 + 168) = 0;
    sub_297F5BF80(a1);
    return 0;
  }

  else
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get timer context", "phOsalNfc_Timer_Deinit", 251);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "phOsalNfc_Timer_Deinit";
      v12 = 1024;
      v13 = 251;
      _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context", buf, 0x12u);
    }

    return 49;
  }
}

uint64_t phOsalNfc_Timer_Delete(int a1, const char *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = sub_297F52C6C(a1);
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock((v4 + 176));
    v6 = (v5 + 8);
    v7 = 10;
    while (*v6 != a2)
    {
      v6 += 2;
      if (!--v7)
      {
        v8 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Failed to get timer %llX from context", "phOsalNfc_Timer_Delete", 399, a2);
        }

        dispatch_get_specific(*v8);
        v10 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v18 = "phOsalNfc_Timer_Delete";
          v19 = 1024;
          v20 = 399;
          v21 = 2048;
          v22 = a2;
          _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer %llX from context", buf, 0x1Cu);
        }

        v11 = 1;
        goto LABEL_19;
      }
    }

    v11 = sub_297F52D00(v6, 1);
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFSharedMiddlewareSignpostLog();
    if (!v15)
    {
      v15 = NFSharedSignpostLog();
    }

    if (os_signpost_enabled(v15))
    {
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = a1;
      _os_signpost_emit_with_name_impl(&dword_297F52000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Deleted Timer", "timerId %llX, ctlr %d", buf, 0x12u);
    }

LABEL_19:
    pthread_mutex_unlock((v5 + 176));
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to get timer context", "phOsalNfc_Timer_Delete", 392);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "phOsalNfc_Timer_Delete";
      v19 = 1024;
      v20 = 392;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get timer context", buf, 0x12u);
    }

    return 49;
  }

  return v11;
}

uint64_t sub_297F5C58C(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = CFAbsoluteTimeGetCurrent() - *(*(*(a1 + 32) + 8) + 24);
  if (v2 > 0.100000001)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Timer fired late: %f", "_phOsalNfc_Timer_StartTimer_block_invoke", 158, *&v2);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "_phOsalNfc_Timer_StartTimer_block_invoke";
      v9 = 1024;
      v10 = 158;
      v11 = 2048;
      v12 = v2;
      _os_log_impl(&dword_297F52000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Timer fired late: %f", buf, 0x1Cu);
    }
  }

  phOsalNfc_Timer_Stop(*(a1 + 64), *(a1 + 40));
  return (*(a1 + 48))(*(a1 + 40), *(a1 + 56));
}

void phOsalNfc_LogStr(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i %s", "phOsalNfc_LogStr", 65, a4);
      }

      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v15 = "phOsalNfc_LogStr";
        v16 = 1024;
        v17 = 65;
        v18 = 2080;
        v19 = a4;
        v9 = v13;
        v10 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_22;
      }
    }

    else if (a3 == 5)
    {
      v7 = NFLogGetLogger();
      if (v7)
      {
        v7(7, "%s:%i %s", "phOsalNfc_LogStr", 65, a4);
      }

      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v15 = "phOsalNfc_LogStr";
        v16 = 1024;
        v17 = 65;
        v18 = 2080;
        v19 = a4;
        v9 = v8;
        v10 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        _os_log_impl(&dword_297F52000, v9, v10, "%{public}s:%i %s", buf, 0x1Cu);
      }
    }
  }

  else if (a3 == 1)
  {
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i %s", "phOsalNfc_LogStr", 65, a4);
    }

    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else if (a3 == 2)
  {
    v5 = NFLogGetLogger();
    if (v5)
    {
      v5(4, "%s:%i %s", "phOsalNfc_LogStr", 65, a4);
    }

    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *buf = 136446722;
      v15 = "phOsalNfc_LogStr";
      v16 = 1024;
      v17 = 65;
      v18 = 2080;
      v19 = a4;
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }
}

void phOsalNfc_LogU32(uint64_t a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i %s=%d", "phOsalNfc_LogU32", 74, a4, a5);
      }

      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v17 = "phOsalNfc_LogU32";
        v18 = 1024;
        v19 = 74;
        v20 = 2080;
        v21 = a4;
        v22 = 1024;
        v23 = a5;
        v11 = v15;
        v12 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_22;
      }
    }

    else if (a3 == 5)
    {
      v9 = NFLogGetLogger();
      if (v9)
      {
        v9(7, "%s:%i %s=%d", "phOsalNfc_LogU32", 74, a4, a5);
      }

      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v17 = "phOsalNfc_LogU32";
        v18 = 1024;
        v19 = 74;
        v20 = 2080;
        v21 = a4;
        v22 = 1024;
        v23 = a5;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        _os_log_impl(&dword_297F52000, v11, v12, "%{public}s:%i %s=%d", buf, 0x22u);
      }
    }
  }

  else if (a3 == 1)
  {
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i %s=%d", "phOsalNfc_LogU32", 74, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else if (a3 == 2)
  {
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(4, "%s:%i %s=%d", "phOsalNfc_LogU32", 74, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *buf = 136446978;
      v17 = "phOsalNfc_LogU32";
      v18 = 1024;
      v19 = 74;
      v20 = 2080;
      v21 = a4;
      v22 = 1024;
      v23 = a5;
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }
}

void phOsalNfc_LogX32(uint64_t a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i %s=0x%X", "phOsalNfc_LogX32", 83, a4, a5);
      }

      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v17 = "phOsalNfc_LogX32";
        v18 = 1024;
        v19 = 83;
        v20 = 2080;
        v21 = a4;
        v22 = 1024;
        v23 = a5;
        v11 = v15;
        v12 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_22;
      }
    }

    else if (a3 == 5)
    {
      v9 = NFLogGetLogger();
      if (v9)
      {
        v9(7, "%s:%i %s=0x%X", "phOsalNfc_LogX32", 83, a4, a5);
      }

      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v17 = "phOsalNfc_LogX32";
        v18 = 1024;
        v19 = 83;
        v20 = 2080;
        v21 = a4;
        v22 = 1024;
        v23 = a5;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        _os_log_impl(&dword_297F52000, v11, v12, "%{public}s:%i %s=0x%X", buf, 0x22u);
      }
    }
  }

  else if (a3 == 1)
  {
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i %s=0x%X", "phOsalNfc_LogX32", 83, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else if (a3 == 2)
  {
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(4, "%s:%i %s=0x%X", "phOsalNfc_LogX32", 83, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *buf = 136446978;
      v17 = "phOsalNfc_LogX32";
      v18 = 1024;
      v19 = 83;
      v20 = 2080;
      v21 = a4;
      v22 = 1024;
      v23 = a5;
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }
}

void phOsalNfc_LogX64(uint64_t a1, uint64_t a2, int a3, const char *a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i %s=0x%llX", "phOsalNfc_LogX64", 92, a4, a5);
      }

      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v17 = "phOsalNfc_LogX64";
        v18 = 1024;
        v19 = 92;
        v20 = 2080;
        v21 = a4;
        v22 = 2048;
        v23 = a5;
        v11 = v15;
        v12 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_22;
      }
    }

    else if (a3 == 5)
    {
      v9 = NFLogGetLogger();
      if (v9)
      {
        v9(7, "%s:%i %s=0x%llX", "phOsalNfc_LogX64", 92, a4, a5);
      }

      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v17 = "phOsalNfc_LogX64";
        v18 = 1024;
        v19 = 92;
        v20 = 2080;
        v21 = a4;
        v22 = 2048;
        v23 = a5;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        _os_log_impl(&dword_297F52000, v11, v12, "%{public}s:%i %s=0x%llX", buf, 0x26u);
      }
    }
  }

  else if (a3 == 1)
  {
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i %s=0x%llX", "phOsalNfc_LogX64", 92, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else if (a3 == 2)
  {
    v7 = NFLogGetLogger();
    if (v7)
    {
      v7(4, "%s:%i %s=0x%llX", "phOsalNfc_LogX64", 92, a4, a5);
    }

    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *buf = 136446978;
      v17 = "phOsalNfc_LogX64";
      v18 = 1024;
      v19 = 92;
      v20 = 2080;
      v21 = a4;
      v22 = 2048;
      v23 = a5;
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }
}

void phOsalNfc_LogBool(uint64_t a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v21 = "TRUE";
        if (!a5)
        {
          v21 = "FALSE";
        }

        Logger(6, "%s:%i %s=%s", "phOsalNfc_LogBool", 104, a4, v21);
      }

      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = "TRUE";
        v25 = "phOsalNfc_LogBool";
        v26 = 1024;
        v27 = 104;
        *buf = 136446978;
        v28 = 2080;
        if (!a5)
        {
          v23 = "FALSE";
        }

        v29 = a4;
        v30 = 2080;
        v31 = v23;
        v15 = v22;
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_41;
      }
    }

    else if (a3 == 5)
    {
      v11 = NFLogGetLogger();
      if (v11)
      {
        if (a5)
        {
          v12 = "TRUE";
        }

        else
        {
          v12 = "FALSE";
        }

        v11(7, "%s:%i %s=%s", "phOsalNfc_LogBool", 104, a4, v12);
      }

      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        if (a5)
        {
          v14 = "TRUE";
        }

        else
        {
          v14 = "FALSE";
        }

        *buf = 136446978;
        v25 = "phOsalNfc_LogBool";
        v26 = 1024;
        v27 = 104;
        v28 = 2080;
        v29 = a4;
        v30 = 2080;
        v31 = v14;
        v15 = v13;
        v16 = OS_LOG_TYPE_DEBUG;
        goto LABEL_41;
      }
    }
  }

  else if (a3 == 1)
  {
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = "TRUE";
      if (!a5)
      {
        v18 = "FALSE";
      }

      v17(3, "%s:%i %s=%s", "phOsalNfc_LogBool", 104, a4, v18);
    }

    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = "TRUE";
      v25 = "phOsalNfc_LogBool";
      v26 = 1024;
      v27 = 104;
      *buf = 136446978;
      v28 = 2080;
      if (!a5)
      {
        v19 = "FALSE";
      }

      v29 = a4;
      v30 = 2080;
      v31 = v19;
      goto LABEL_32;
    }
  }

  else if (a3 == 2)
  {
    v7 = NFLogGetLogger();
    if (v7)
    {
      v8 = "TRUE";
      if (!a5)
      {
        v8 = "FALSE";
      }

      v7(4, "%s:%i %s=%s", "phOsalNfc_LogBool", 104, a4, v8);
    }

    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = "TRUE";
      v25 = "phOsalNfc_LogBool";
      v26 = 1024;
      v27 = 104;
      *buf = 136446978;
      v28 = 2080;
      if (!a5)
      {
        v10 = "FALSE";
      }

      v29 = a4;
      v30 = 2080;
      v31 = v10;
LABEL_32:
      v15 = v9;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_41:
      _os_log_impl(&dword_297F52000, v15, v16, "%{public}s:%i %s=%s", buf, 0x26u);
    }
  }
}

void phOsalNfc_LogFunc(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    if (a4)
    {
      v7 = "+";
    }

    else
    {
      v7 = "-";
    }

    Logger(7, "%s:%i :%s:%s", "phOsalNfc_LogFunc", 115, v7, a3);
  }

  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (a4)
    {
      v9 = "+";
    }

    else
    {
      v9 = "-";
    }

    *buf = 136446978;
    v11 = "phOsalNfc_LogFunc";
    v12 = 1024;
    v13 = 115;
    v14 = 2080;
    v15 = v9;
    v16 = 2080;
    v17 = a3;
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_DEBUG, "%{public}s:%i :%s:%s", buf, 0x26u);
  }
}

void phOsalNfc_SignPostLogStr(int a1, int a2, int a3, uint64_t a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v7 = NFSharedMiddlewareSignpostLog();
  if (v7)
  {
    v8 = v7;
    if (a2 > 5)
    {
      if (a2 <= 8)
      {
        if (a2 == 6)
        {
          if (!os_signpost_enabled(v7))
          {
            return;
          }

          v19 = qword_29EE86AD0[a3];
          v23 = 136446466;
          v24 = v19;
          v25 = 2082;
          v26 = a4;
          v10 = "PHLIBNFC_DNLD";
          v11 = "%{public}s%{public}s";
        }

        else if (a2 == 7)
        {
          if (!os_signpost_enabled(v7))
          {
            return;
          }

          v20 = qword_29EE86AD0[a3];
          v23 = 136446466;
          v24 = v20;
          v25 = 2082;
          v26 = a4;
          v10 = "PHLIBNFC_HCI";
          v11 = "%{public}s%{public}s";
        }

        else
        {
          if (!os_signpost_enabled(v7))
          {
            return;
          }

          v12 = qword_29EE86AD0[a3];
          v23 = 136446466;
          v24 = v12;
          v25 = 2082;
          v26 = a4;
          v10 = "PHLIBNFC_NDEF";
          v11 = "%{public}s%{public}s";
        }

        goto LABEL_35;
      }

      if ((a2 - 9) > 1)
      {
        return;
      }

      goto LABEL_18;
    }

    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          if (!os_signpost_enabled(v7))
          {
            return;
          }

          v9 = qword_29EE86AD0[a3];
          v23 = 136446466;
          v24 = v9;
          v25 = 2082;
          v26 = a4;
          v10 = "PHLIBNFC_INFRA";
          v11 = "%{public}s%{public}s";
          goto LABEL_35;
        }

LABEL_18:
        if (!os_signpost_enabled(v7))
        {
          return;
        }

        v14 = qword_29EE86AD0[a3];
        v23 = 136446466;
        v24 = v14;
        v25 = 2082;
        v26 = a4;
        v10 = "PHLIBNFC";
        v11 = "%{public}s%{public}s";
        goto LABEL_35;
      }

      v16 = os_signpost_enabled(v7);
      if (a3 != 3)
      {
        if (!v16)
        {
          return;
        }

        v22 = qword_29EE86AD0[a3];
        v23 = 136446466;
        v24 = v22;
        v25 = 2082;
        v26 = a4;
        v10 = "PHNCINFC";
        v11 = "%{public}s%{public}s";
        goto LABEL_35;
      }

      if (!v16)
      {
        return;
      }

      v23 = 136446210;
      v24 = a4;
      v10 = "PHNCINFC";
      v11 = "%{public}s";
LABEL_26:
      v17 = v8;
      v18 = 12;
LABEL_36:
      _os_signpost_emit_with_name_impl(&dword_297F52000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v10, v11, &v23, v18);
      return;
    }

    if (a2 == 1)
    {
      v15 = os_signpost_enabled(v7);
      if (a3 != 3)
      {
        if (!v15)
        {
          return;
        }

        v21 = qword_29EE86AD0[a3];
        v23 = 136446466;
        v24 = v21;
        v25 = 2082;
        v26 = a4;
        v10 = "PHTMLNFC";
        v11 = "%{public}s%{public}s";
        goto LABEL_35;
      }

      if (!v15)
      {
        return;
      }

      v23 = 136446210;
      v24 = a4;
      v10 = "PHTMLNFC";
      v11 = "%{public}s";
      goto LABEL_26;
    }

    if (a2 == 2 && os_signpost_enabled(v7))
    {
      v13 = qword_29EE86AD0[a3];
      v23 = 136446466;
      v24 = v13;
      v25 = 2082;
      v26 = a4;
      v10 = "PHOSALNFC";
      v11 = "%{public}s%{public}s";
LABEL_35:
      v17 = v8;
      v18 = 22;
      goto LABEL_36;
    }
  }
}

void phOsalNfc_SignPostLogX32(int a1, int a2, int a3, uint64_t a4, int a5)
{
  v26 = *MEMORY[0x29EDCA608];
  v9 = NFSharedMiddlewareSignpostLog();
  if (v9)
  {
    v10 = v9;
    if (a2 > 5)
    {
      if (a2 <= 8)
      {
        if (a2 == 6)
        {
          if (!os_signpost_enabled(v9))
          {
            return;
          }

          v18 = qword_29EE86AD0[a3];
          v20 = 136446722;
          v21 = v18;
          v22 = 2082;
          v23 = a4;
          v24 = 1024;
          v25 = a5;
          v12 = "PHLIBNFC_DNLD";
        }

        else if (a2 == 7)
        {
          if (!os_signpost_enabled(v9))
          {
            return;
          }

          v19 = qword_29EE86AD0[a3];
          v20 = 136446722;
          v21 = v19;
          v22 = 2082;
          v23 = a4;
          v24 = 1024;
          v25 = a5;
          v12 = "PHLIBNFC_HCI";
        }

        else
        {
          if (!os_signpost_enabled(v9))
          {
            return;
          }

          v13 = qword_29EE86AD0[a3];
          v20 = 136446722;
          v21 = v13;
          v22 = 2082;
          v23 = a4;
          v24 = 1024;
          v25 = a5;
          v12 = "PHLIBNFC_NDEF";
        }

        goto LABEL_28;
      }

      if ((a2 - 9) > 1)
      {
        return;
      }

      goto LABEL_18;
    }

    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (!os_signpost_enabled(v9))
        {
          return;
        }

        v17 = qword_29EE86AD0[a3];
        v20 = 136446722;
        v21 = v17;
        v22 = 2082;
        v23 = a4;
        v24 = 1024;
        v25 = a5;
        v12 = "PHNCINFC";
        goto LABEL_28;
      }

      if (a2 != 4)
      {
        if (!os_signpost_enabled(v9))
        {
          return;
        }

        v11 = qword_29EE86AD0[a3];
        v20 = 136446722;
        v21 = v11;
        v22 = 2082;
        v23 = a4;
        v24 = 1024;
        v25 = a5;
        v12 = "PHLIBNFC_INFRA";
        goto LABEL_28;
      }

LABEL_18:
      if (!os_signpost_enabled(v9))
      {
        return;
      }

      v15 = qword_29EE86AD0[a3];
      v20 = 136446722;
      v21 = v15;
      v22 = 2082;
      v23 = a4;
      v24 = 1024;
      v25 = a5;
      v12 = "PHLIBNFC";
      goto LABEL_28;
    }

    if (a2 == 1)
    {
      if (!os_signpost_enabled(v9))
      {
        return;
      }

      v16 = qword_29EE86AD0[a3];
      v20 = 136446722;
      v21 = v16;
      v22 = 2082;
      v23 = a4;
      v24 = 1024;
      v25 = a5;
      v12 = "PHTMLNFC";
      goto LABEL_28;
    }

    if (a2 == 2 && os_signpost_enabled(v9))
    {
      v14 = qword_29EE86AD0[a3];
      v20 = 136446722;
      v21 = v14;
      v22 = 2082;
      v23 = a4;
      v24 = 1024;
      v25 = a5;
      v12 = "PHOSALNFC";
LABEL_28:
      _os_signpost_emit_with_name_impl(&dword_297F52000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, "%{public}s%{public}s=0x%08X", &v20, 0x1Cu);
    }
  }
}

double phOsalNfc_SignPostLogFunc(unsigned int a1, int a2, const char *a3, char *a4, int a5)
{
  v49 = *MEMORY[0x29EDCA608];
  if (a1 <= 1)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v10 = NFSharedMiddlewareSignpostLog();
  if (v10)
  {
    v12 = v10;
    v13 = &unk_2A18BCFF8 + 264 * v9;
    v14 = *v13;
    if (a5)
    {
      if (v14 == 2)
      {
        goto LABEL_9;
      }

      if (v14 != 1)
      {
        if (v14)
        {
          return result;
        }

LABEL_9:
        v15 = os_signpost_enabled(v10);
        if (a4)
        {
          if (v15)
          {
            v41 = 136446722;
            v42 = "+";
            v43 = 2082;
            v44 = a3;
            v45 = 2082;
            v46 = a4;
            v16 = "%{public}s:%{public}s <- %{public}s";
            v17 = v12;
            v18 = 32;
LABEL_26:
            _os_signpost_emit_with_name_impl(&dword_297F52000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", v16, &v41, v18);
          }
        }

        else if (v15)
        {
          v41 = 136446466;
          v42 = "+";
          v43 = 2082;
          v44 = a3;
          v16 = "%{public}s:%{public}s";
          v17 = v12;
          v18 = 22;
          goto LABEL_26;
        }

        *v13 = 1;
        v13[4] = a2;
        __strlcpy_chk();
        return result;
      }

      v23 = os_signpost_enabled(v10);
      if (a4)
      {
        if (v23)
        {
          v41 = 136446722;
          v42 = "+";
          v43 = 2082;
          v44 = a3;
          v45 = 2082;
          v46 = a4;
          v24 = "%{public}s:%{public}s <- %{public}s";
          v25 = v12;
          v26 = 32;
LABEL_34:
          _os_signpost_emit_with_name_impl(&dword_297F52000, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API_NEW", v24, &v41, v26);
        }
      }

      else if (v23)
      {
        v41 = 136446466;
        v42 = "+";
        v43 = 2082;
        v44 = a3;
        v24 = "%{public}s:%{public}s";
        v25 = v12;
        v26 = 22;
        goto LABEL_34;
      }

      *v13 = 3;
      v13[5] = a2;
      strlcpy(v13 + 134, a3, 0x80uLL);
      return result;
    }

    if (v14 != 3)
    {
      if (v14 != 1)
      {
        return result;
      }

      v19 = os_signpost_enabled(v10);
      if (a4)
      {
        if (v19)
        {
          v41 = 136446722;
          v42 = "-";
          v43 = 2082;
          v44 = v13 + 6;
          v45 = 2082;
          v46 = a4;
          v20 = "%{public}s:%{public}s :%{public}s";
          v21 = v12;
          v22 = 32;
LABEL_38:
          _os_signpost_emit_with_name_impl(&dword_297F52000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", v20, &v41, v22);
        }
      }

      else if (v19)
      {
        v41 = 136446466;
        v42 = "-";
        v43 = 2082;
        v44 = v13 + 6;
        v20 = "%{public}s:%{public}s";
        v21 = v12;
        v22 = 22;
        goto LABEL_38;
      }

      *v13 = 2;
      goto LABEL_40;
    }

    if (v13[5] == a2)
    {
      v27 = os_signpost_enabled(v10);
      if (a4)
      {
        if (v27)
        {
          v41 = 136446722;
          v42 = "-";
          v43 = 2082;
          v44 = v13 + 134;
          v45 = 2082;
          v46 = a4;
          v28 = "%{public}s:%{public}s :%{public}s";
          v29 = v12;
          v30 = 32;
LABEL_54:
          _os_signpost_emit_with_name_impl(&dword_297F52000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API_NEW", v28, &v41, v30);
        }
      }

      else if (v27)
      {
        v41 = 136446466;
        v42 = "-";
        v43 = 2082;
        v44 = v13 + 134;
        v28 = "%{public}s:%{public}s";
        v29 = v12;
        v30 = 22;
        goto LABEL_54;
      }

      *v13 = 2;
      v13[5] = 0;
      return result;
    }

    v31 = v13[4];
    if (v31 == a2)
    {
      v32 = os_signpost_enabled(v10);
      if (a4)
      {
        if (!v32)
        {
LABEL_40:
          v13[4] = 0;
          return result;
        }

        v41 = 136446722;
        v42 = "-";
        v43 = 2082;
        v44 = v13 + 6;
        v45 = 2082;
        v46 = a4;
        v33 = "%{public}s:%{public}s :%{public}s";
        v34 = v12;
        v35 = 32;
      }

      else
      {
        if (!v32)
        {
          goto LABEL_40;
        }

        v41 = 136446466;
        v42 = "-";
        v43 = 2082;
        v44 = v13 + 6;
        v33 = "%{public}s:%{public}s";
        v34 = v12;
        v35 = 22;
      }

      _os_signpost_emit_with_name_impl(&dword_297F52000, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", v33, &v41, v35);
      goto LABEL_40;
    }

    if (v13[5])
    {
      v36 = v31 == 0;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      if (v13[4])
      {
        if (v13[5])
        {
          goto LABEL_72;
        }

        if (os_signpost_enabled(v10))
        {
          v41 = 136446722;
          v42 = "-";
          v43 = 2082;
          v44 = v13 + 6;
          v45 = 2082;
          v46 = a4;
          _os_signpost_emit_with_name_impl(&dword_297F52000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", "%{public}s:%{public}s :%{public}s", &v41, 0x20u);
        }

        if (!os_signpost_enabled(v12))
        {
          goto LABEL_72;
        }

        v41 = 136446722;
        v42 = a3;
        v43 = 2082;
        v44 = v13 + 6;
        v45 = 1026;
        LODWORD(v46) = a2;
        v37 = "-: WARNING: %{public}s: Expected %{public}s eMWApi_Id{wrong}=%{public}d";
      }

      else
      {
        if (!v13[5])
        {
          goto LABEL_72;
        }

        if (os_signpost_enabled(v10))
        {
          v41 = 136446722;
          v42 = "-";
          v43 = 2082;
          v44 = v13 + 134;
          v45 = 2082;
          v46 = a4;
          _os_signpost_emit_with_name_impl(&dword_297F52000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API_NEW", "%{public}s:%{public}s :%{public}s", &v41, 0x20u);
        }

        if (!os_signpost_enabled(v12))
        {
          goto LABEL_72;
        }

        v41 = 136446722;
        v42 = a3;
        v43 = 2082;
        v44 = v13 + 134;
        v45 = 1026;
        LODWORD(v46) = a2;
        v37 = "-: WARNING: %{public}s: Expected %{public}s eMWApi{wrong}=%{public}d";
      }

      v39 = v12;
      v40 = 28;
    }

    else
    {
      if (os_signpost_enabled(v10))
      {
        v41 = 136446722;
        v42 = "-";
        v43 = 2082;
        v44 = v13 + 6;
        v45 = 2082;
        v46 = a4;
        _os_signpost_emit_with_name_impl(&dword_297F52000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API", "%{public}s:%{public}s :%{public}s", &v41, 0x20u);
      }

      if (os_signpost_enabled(v12))
      {
        v41 = 136446722;
        v42 = "-";
        v43 = 2082;
        v44 = v13 + 134;
        v45 = 2082;
        v46 = a4;
        _os_signpost_emit_with_name_impl(&dword_297F52000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PHLIBNFC_API_NEW", "%{public}s:%{public}s :%{public}s", &v41, 0x20u);
      }

      if (!os_signpost_enabled(v12))
      {
        goto LABEL_72;
      }

      v41 = 136446978;
      v42 = a3;
      v43 = 2082;
      v44 = v13 + 134;
      v45 = 2082;
      v46 = v13 + 6;
      v47 = 1026;
      v48 = a2;
      v37 = "-: WARNING: %{public}s: Expected %{public}s OR %{public}s eMWApi{wrong}=%{public}d";
      v39 = v12;
      v40 = 38;
    }

    _os_signpost_emit_with_name_impl(&dword_297F52000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LIBNFC", v37, &v41, v40);
LABEL_72:
    *v13 = 0;
    *(v13 + 2) = 0;
    result = 0.0;
    *(v13 + 6) = 0u;
    *(v13 + 22) = 0u;
    *(v13 + 38) = 0u;
    *(v13 + 54) = 0u;
    *(v13 + 70) = 0u;
    *(v13 + 86) = 0u;
    *(v13 + 102) = 0u;
    *(v13 + 118) = 0u;
    *(v13 + 134) = 0u;
    *(v13 + 150) = 0u;
    *(v13 + 166) = 0u;
    *(v13 + 182) = 0u;
    *(v13 + 198) = 0u;
    *(v13 + 214) = 0u;
    *(v13 + 230) = 0u;
    *(v13 + 246) = 0u;
  }

  return result;
}

void phOsalNfc_SignPostLogHexData(int a1, int a2, int a3, _BYTE *a4, unsigned __int8 *a5, unsigned int a6)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(v24, 0, sizeof(v24));
  LOBYTE(v10) = *a4;
  v11 = v24;
  if (*a4)
  {
    v12 = 0;
    do
    {
      v24[v12] = v10;
      v13 = v12 + 1;
      if (v12 > 0x1A)
      {
        break;
      }

      v10 = a4[++v12];
    }

    while (v10);
    v11 = &v24[v13];
  }

  *v11 = 58;
  if (a6)
  {
    v14 = v11 + 1;
    v15 = 1;
    v16 = a6;
    do
    {
      v18 = *a5++;
      v17 = v18;
      v19 = v18 & 0xF;
      v20 = (v18 >> 4) + 55;
      v21 = (v18 >> 4) | 0x30;
      if (v18 >= 0xA0)
      {
        LOBYTE(v21) = v20;
      }

      *v14 = v21;
      v22 = v17 & 0xF | 0x30;
      v23 = v19 + 55;
      if (v19 < 0xA)
      {
        v23 = v22;
      }

      v14[1] = v23;
      *(v14 + 1) = 32;
      if ((v15 & 3) != 0)
      {
        v14 += 3;
      }

      else
      {
        v14[5] = 0;
        v14 += 5;
        *(v14 - 1) = 8224;
      }

      if ((v15 & 0xF) == 0)
      {
        *v14 = 0;
        v14 = v24;
        phOsalNfc_SignPostLogStr(a1, a2, a3, v24);
        v24[0] = 0;
      }

      ++v15;
      --v16;
    }

    while (v16);
  }

  if (v24[0])
  {
    phOsalNfc_SignPostLogStr(a1, a2, a3, v24);
  }
}

uint64_t NFCalibrationGetRFConfigTLVs(CFStringRef *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = NFHardwareLoad("stockholm");
  if (v2)
  {
    v3 = v2;
    RFConfigTLVs = NFHardwareGetRFConfigTLVs(v2, a1);
    NFHardwareUnload(v3);
    return RFConfigTLVs;
  }

  else
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Failed to load hw", "NFCalibrationGetRFConfigTLVs", 18);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "NFCalibrationGetRFConfigTLVs";
      v11 = 1024;
      v12 = 18;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load hw", buf, 0x12u);
    }

    return 0;
  }
}

CFStringRef NFCalibrationCopyAntennaName(const char *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i driverName=%s", "NFCalibrationCopyAntennaName", 33, a1);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "NFCalibrationCopyAntennaName";
    v13 = 1024;
    v14 = 33;
    v15 = 2080;
    v16 = a1;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i driverName=%s", buf, 0x1Cu);
  }

  v5 = NFHardwareLoad(a1);
  if (v5)
  {
    v6 = v5;
    v7 = NFHardwareCopyAntennaName(v5);
    NFHardwareUnload(v6);
  }

  else
  {
    dispatch_get_specific(*v2);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v8(4, "%s:%i Failed to load hw", "NFCalibrationCopyAntennaName", 36);
    }

    dispatch_get_specific(*v2);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = "NFCalibrationCopyAntennaName";
      v13 = 1024;
      v14 = 36;
      _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load hw", buf, 0x12u);
    }

    return 0;
  }

  return v7;
}

void *phOsalNfc_GetMemory(int a1, size_t size)
{
  if (size)
  {
    return malloc_type_calloc(1uLL, size, 0x69ABD3EBuLL);
  }

  else
  {
    return 0;
  }
}

uint64_t phOsalNfc_IsHeapMemory()
{
  v10 = *MEMORY[0x29EDCA608];
  v0 = malloc_default_zone();
  if (v0)
  {
    claimed_address = v0->claimed_address;
    if (claimed_address)
    {
      if (claimed_address() == 1)
      {
        return 0;
      }

      else
      {
        return 255;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i phOsalNfc_IsHeapMemory: malloc_default_zone returned NULL", "phOsalNfc_IsHeapMemory", 211);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v7 = "phOsalNfc_IsHeapMemory";
      v8 = 1024;
      v9 = 211;
      _os_log_impl(&dword_297F52000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i phOsalNfc_IsHeapMemory: malloc_default_zone returned NULL", buf, 0x12u);
    }

    return 12;
  }
}

uint64_t phOsalNfc_MemCompare(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  result = 1;
  if (a2 && a3 && a4)
  {
    v5 = a4 - 1;
    do
    {
      v7 = *a3++;
      v6 = v7;
      v8 = *a2++;
      result = (v6 - v8);
      v9 = v5-- != 0;
    }

    while (v9 && !result);
  }

  return result;
}

uint64_t phOsalNfc_RaiseExceptionWithDescription(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v18 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i EXCEPTION=%d REASON=%d", "phOsalNfc_RaiseExceptionWithDescription", 303, a1, v4);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v11 = "phOsalNfc_RaiseExceptionWithDescription";
    v12 = 1024;
    v13 = 303;
    v14 = 1024;
    v15 = a1;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i EXCEPTION=%d REASON=%d", buf, 0x1Eu);
  }

  result = NFIsRestoreOS();
  if ((result & 1) == 0)
  {
    if (byte_2A18BCFF0 == 1)
    {
      result = postAnalyticsMiddlewareExceptionEvent();
    }

    if (a1 == 2 && v4 >= 0x1000)
    {
      result = NFProductIsDevBoard();
      if ((result & 1) == 0)
      {
        NFSimulateCrash();
        exit(1);
      }
    }
  }

  return result;
}

uint64_t phOsalNfc_Init(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&unk_2A18BD228);
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(&unk_2A18BD228 + v4 + 1);
    if (v7 && *(v7 + 8) == a1)
    {
      v15 = 50;
      goto LABEL_20;
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = &unk_2A18BD228 + 8 * v8;
    if (!*(v10 + 1))
    {
      break;
    }

    v11 = v9;
    v9 = 0;
    v8 = 1;
    if ((v11 & 1) == 0)
    {
      v12 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to allocate OSAL context - no space available", "_phOsalNfc_CreateContext", 87);
      }

      dispatch_get_specific(*v12);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v23 = "_phOsalNfc_CreateContext";
        v24 = 1024;
        v25 = 87;
        _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate OSAL context - no space available", buf, 0x12u);
      }

      v15 = 255;
      goto LABEL_20;
    }
  }

  v16 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A004053CD2466uLL);
  v16[12] = 0;
  *(v16 + 4) = 0u;
  *(v16 + 5) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = a1;
  *(v10 + 1) = v16;
  v17 = *(a2 + 8);
  byte_2A18BCFF0 = *(v17 + 17);
  v15 = phOsalNfc_Timer_Init(a1, v17);
  if (v15)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i Failed to init timer: %d", "phOsalNfc_Init", 360, v15);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "phOsalNfc_Init";
      v24 = 1024;
      v25 = 360;
      v26 = 1024;
      v27 = v15;
      _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to init timer: %d", buf, 0x18u);
    }

    sub_297F5F35C(a1);
  }

LABEL_20:
  os_unfair_lock_unlock(&unk_2A18BD228);
  return v15;
}

void sub_297F5F35C(int a1)
{
  v1 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = &unk_2A18BD228 + 8 * v1;
    v5 = *(v4 + 1);
    if (v5 && *(v5 + 8) == a1)
    {
      free(*(v4 + 1));
      *(v4 + 1) = 0;
      return;
    }

    v2 = 0;
    v1 = 1;
  }

  while ((v3 & 1) != 0);
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Failed to release OSAL context - not found", "_phOsalNfc_FreeContext", 114);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v10 = "_phOsalNfc_FreeContext";
    v11 = 1024;
    v12 = 114;
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to release OSAL context - not found", buf, 0x12u);
  }
}

void phOsalNfc_DeInit(int a1)
{
  os_unfair_lock_lock(&unk_2A18BD228);
  v2 = 0;
  v3 = 1;
  while (1)
  {
    v4 = v3;
    v5 = *(&unk_2A18BD228 + v2 + 1);
    if (v5)
    {
      if (*(v5 + 8) == a1)
      {
        break;
      }
    }

    v3 = 0;
    v2 = 1;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  phOsalNfc_Timer_Deinit(a1);
  sub_297F5F35C(a1);
LABEL_7:

  os_unfair_lock_unlock(&unk_2A18BD228);
}

BOOL NFHardwareGetUARTLogEnabled(io_registry_entry_t *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (!v1)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Not connected", "NFHardwareGetUARTLogEnabled", 23);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v20 = "NFHardwareGetUARTLogEnabled";
    v21 = 1024;
    v22 = 23;
    v9 = "%{public}s:%i Not connected";
    v10 = v8;
    v11 = 18;
    goto LABEL_13;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v1, @"uart.log", 0, 0);
  if (!CFProperty)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(4, "%s:%i Failed to fetch property: %s", "NFHardwareGetUARTLogEnabled", 30, "uart.log");
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446722;
    v20 = "NFHardwareGetUARTLogEnabled";
    v21 = 1024;
    v22 = 30;
    v23 = 2080;
    v24 = "uart.log";
    v9 = "%{public}s:%i Failed to fetch property: %s";
    v10 = v14;
    v11 = 28;
LABEL_13:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    return 0;
  }

  v3 = CFProperty;
  v4 = CFGetTypeID(CFProperty);
  if (v4 == CFBooleanGetTypeID())
  {
    v5 = v3 == *MEMORY[0x29EDB8F00];
  }

  else
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Unsupported type: %lu", "NFHardwareGetUARTLogEnabled", 39, v4);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "NFHardwareGetUARTLogEnabled";
      v21 = 1024;
      v22 = 39;
      v23 = 2048;
      v24 = v4;
      _os_log_impl(&dword_297F52000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Unsupported type: %lu", buf, 0x1Cu);
    }

    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

uint64_t NFHardwareGetRFConfigTLVs(io_registry_entry_t *a1, CFStringRef *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  *a2 = 0u;
  *(a2 + 1) = 0u;
  if (*a1)
  {
    *(a2 + 1) = 0uLL;
    v4 = a2 + 2;
    *a2 = 0uLL;
    v5 = a2 + 3;
    sub_297F5FBC0(a1, @"rf-clock-tlv", a2);
    if (sub_297F5FBC0(a1, @"rf-config-tlvs", a2 + 1) && a2[1])
    {
      return 1;
    }

    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i mandatory RF settings %s not present in EDT for this config", "NFHardwareGetRFConfigTLVs", 101, "rf-config-tlvs");
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v19 = "NFHardwareGetRFConfigTLVs";
      v20 = 1024;
      v21 = 101;
      v22 = 2080;
      v23 = "rf-config-tlvs";
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i mandatory RF settings %s not present in EDT for this config", buf, 0x1Cu);
    }

    if (!sub_297F5FBC0(a1, @"rf-config-tlvs-10", v4) || !*v4)
    {
      dispatch_get_specific(*v6);
      v9 = NFLogGetLogger();
      if (v9)
      {
        v9(4, "%s:%i mandatory RF settings %s not present in EDT for this config", "NFHardwareGetRFConfigTLVs", 106, "rf-config-tlvs-10");
      }

      dispatch_get_specific(*v6);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v19 = "NFHardwareGetRFConfigTLVs";
        v20 = 1024;
        v21 = 106;
        v22 = 2080;
        v23 = "rf-config-tlvs-10";
        _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i mandatory RF settings %s not present in EDT for this config", buf, 0x1Cu);
      }
    }

    v11 = sub_297F5FBC0(a1, @"rf-config-tlvs-12", v5);
    if (v11 && *v5)
    {
      return 1;
    }

    else
    {
      dispatch_get_specific(*v6);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(4, "%s:%i mandatory RF settings %s not present in EDT for this config", "NFHardwareGetRFConfigTLVs", 110, "rf-config-tlvs-12");
      }

      dispatch_get_specific(*v6);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v19 = "NFHardwareGetRFConfigTLVs";
        v20 = 1024;
        v21 = 110;
        v22 = 2080;
        v23 = "rf-config-tlvs-12";
        _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i mandatory RF settings %s not present in EDT for this config", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Not connected", "NFHardwareGetRFConfigTLVs", 86);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v19 = "NFHardwareGetRFConfigTLVs";
      v20 = 1024;
      v21 = 86;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Not connected", buf, 0x12u);
    }

    return 0;
  }

  return v11;
}

uint64_t sub_297F5FBC0(io_registry_entry_t *a1, const __CFString *a2, CFStringRef *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    return 0;
  }

  result = IORegistryEntryCreateCFProperty(*a1, a2, 0, 0);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = CFGetTypeID(result);
  if (v6 != CFDataGetTypeID())
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      TypeID = CFDataGetTypeID();
      v12 = CFGetTypeID(v5);
      v10(3, "%s:%i Unexpected CFType, exp = %lu, actual = %lu", "_NFHardwareGetRFConfigTLV", 69, TypeID, v12);
    }

    dispatch_get_specific(*v8);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "_NFHardwareGetRFConfigTLV";
      v16 = 1024;
      v17 = 69;
      v18 = 2048;
      v19 = CFDataGetTypeID();
      v20 = 2048;
      v21 = CFGetTypeID(v5);
      _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected CFType, exp = %lu, actual = %lu", buf, 0x26u);
    }

    CFRelease(v5);
    return 0;
  }

  v7 = CFStringCreateFromExternalRepresentation(0, v5, 0x600u);
  if (v7)
  {
    *a3 = v7;
  }

  CFRelease(v5);
  return 1;
}

CFStringRef NFHardwareCopyAntennaName(io_registry_entry_t *a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (!v1)
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Not connected", "NFHardwareCopyAntennaName", 122);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v20 = "NFHardwareCopyAntennaName";
    v21 = 1024;
    v22 = 122;
    v10 = "%{public}s:%i Not connected";
LABEL_13:
    _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
    return 0;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v1, @"rf-antenna-name", 0, 0);
  if (!CFProperty)
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(4, "%s:%i antenna name is missing - no RF?", "NFHardwareCopyAntennaName", 131);
    }

    dispatch_get_specific(*v11);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v20 = "NFHardwareCopyAntennaName";
    v21 = 1024;
    v22 = 131;
    v10 = "%{public}s:%i antenna name is missing - no RF?";
    goto LABEL_13;
  }

  v3 = CFProperty;
  v4 = CFGetTypeID(CFProperty);
  if (v4 == CFDataGetTypeID())
  {
    v5 = CFStringCreateFromExternalRepresentation(0, v3, 0x600u);
    CFRelease(v3);
    return v5;
  }

  v13 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v15 = v14;
    TypeID = CFDataGetTypeID();
    v17 = CFGetTypeID(v3);
    v15(3, "%s:%i Unexpected CFType, exp = %lu, actual = %lu", "NFHardwareCopyAntennaName", 143, TypeID, v17);
  }

  dispatch_get_specific(*v13);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v20 = "NFHardwareCopyAntennaName";
    v21 = 1024;
    v22 = 143;
    v23 = 2048;
    v24 = CFDataGetTypeID();
    v25 = 2048;
    v26 = CFGetTypeID(v3);
    _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected CFType, exp = %lu, actual = %lu", buf, 0x26u);
  }

  CFRelease(v3);
  return 0;
}

_DWORD *NFHardwareLoad(const char *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v3, v4);
  *v2 = MatchingService;
  if (!MatchingService)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Could not find service: %s", "NFHardwareLoad", 159, a1);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "NFHardwareLoad";
      v12 = 1024;
      v13 = 159;
      v14 = 2080;
      v15 = a1;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not find service: %s", buf, 0x1Cu);
    }

    free(v2);
    return 0;
  }

  return v2;
}

void NFHardwareUnload(io_object_t *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *a1;
    if (v2 && IOObjectRelease(v2))
    {
      v3 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Fail to release service", "NFHardwareUnload", 175);
      }

      dispatch_get_specific(*v3);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v7 = "NFHardwareUnload";
        v8 = 1024;
        v9 = 175;
        _os_log_impl(&dword_297F52000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Fail to release service", buf, 0x12u);
      }
    }

    free(a1);
  }
}

BOOL NFHardwareHasFollowerReset(const char *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (strcmp(a1, "stockholm-spmi"))
  {
    return 0;
  }

  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching("stockholm-spmi");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed find IOKit service", "NFHardwareHasFollowerReset", 206);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = "NFHardwareHasFollowerReset";
      v13 = 1024;
      v14 = 206;
      _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    return 0;
  }

  v5 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"spmiFollowerReset", 0, 0);
  v1 = CFProperty != 0;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  IOObjectRelease(v5);
  return v1;
}

BOOL NFHardwareSupportedSecureTimersInOff()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"se-lpem-enabled", 0, 0);
    v5 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v3);
  }

  else
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed find IOKit service", "NFHardwareSupportedSecureTimersInOff", 226);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "NFHardwareSupportedSecureTimersInOff";
      v12 = 1024;
      v13 = 226;
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    return 0;
  }

  return v5;
}

uint64_t NFHardwareGetModelID(const char *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDBB110];
  v2 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"nfccModel", 0, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      v7 = CFGetTypeID(CFProperty);
      if (v7 == CFDataGetTypeID() && CFDataGetLength(v6))
      {
        v8 = *CFDataGetBytePtr(v6);
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    IOObjectRelease(v4);
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed find IOKit service", "NFHardwareGetModelID", 252);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "NFHardwareGetModelID";
      v15 = 1024;
      v16 = 252;
      _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    return 0;
  }

  return v8;
}

BOOL NFHardwareSkipSpmiReconfig(const char *a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MEMORY[0x29EDC9730];
  if (MatchingService)
  {
    v6 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"skip-spmi-reconfig", 0, 0);
    v8 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v6);
  }

  else
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed find IOKit service %s", "NFHardwareSkipSpmiReconfig", 292, a1);
    }

    dispatch_get_specific(*v5);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "NFHardwareSkipSpmiReconfig";
      v18 = 1024;
      v19 = 292;
      v20 = 2080;
      v21 = a1;
      _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service %s", buf, 0x1Cu);
    }

    v8 = 0;
  }

  dispatch_get_specific(*v5);
  v11 = NFLogGetLogger();
  if (v11)
  {
    if (v8)
    {
      v12 = "not reconfigure";
    }

    else
    {
      v12 = "reconfigure";
    }

    v11(6, "%s:%i Will %s spmi for %s", "NFHardwareSkipSpmiReconfig", 295, v12, a1);
  }

  dispatch_get_specific(*v5);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v14 = "not reconfigure";
    }

    else
    {
      v14 = "reconfigure";
    }

    *buf = 136446978;
    v17 = "NFHardwareSkipSpmiReconfig";
    v18 = 1024;
    v19 = 295;
    v20 = 2080;
    v21 = v14;
    v22 = 2080;
    v23 = a1;
    _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Will %s spmi for %s", buf, 0x26u);
  }

  return v8;
}

BOOL NFHardwareHasVirtualGPIO()
{
  v34 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"required-gpios", 0, 0);
    v5 = CFProperty;
    if (CFProperty && (v6 = CFGetTypeID(CFProperty), v6 == CFDataGetTypeID()))
    {
      BytePtr = CFDataGetBytePtr(v5);
      Length = CFDataGetLength(v5);
      v9 = CFStringCreateWithBytes(0, BytePtr, Length, 0x600u, 0);
      if (v9)
      {
        v10 = v9;
        v35.length = CFStringGetLength(v9);
        v35.location = 0;
        v11 = CFStringFindWithOptions(v10, @"support_virtual_gpio", v35, 0, 0) != 0;
        CFRelease(v10);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v12 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v14 = Logger;
        if (v5)
        {
          v15 = CFGetTypeID(v5);
        }

        else
        {
          v15 = -1;
        }

        TypeID = CFStringGetTypeID();
        v14(3, "%s:%i %s is of Type %lx, expecting %lx", "NFHardwareHasVirtualGPIO", 323, "required-gpios", v15, TypeID);
      }

      dispatch_get_specific(*v12);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (v5)
        {
          v22 = CFGetTypeID(v5);
        }

        else
        {
          v22 = -1;
        }

        *buf = 136447234;
        v25 = "NFHardwareHasVirtualGPIO";
        v26 = 1024;
        v27 = 323;
        v28 = 2080;
        v29 = "required-gpios";
        v30 = 2048;
        v31 = v22;
        v32 = 2048;
        v33 = CFStringGetTypeID();
        _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i %s is of Type %lx, expecting %lx", buf, 0x30u);
      }

      v11 = 0;
      v19 = 0;
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    CFRelease(v5);
    v19 = v11;
LABEL_25:
    IOObjectRelease(v3);
    return v19;
  }

  v16 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v17(3, "%s:%i %s doesn't exist", "NFHardwareHasVirtualGPIO", 328, "stockholm");
  }

  dispatch_get_specific(*v16);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v25 = "NFHardwareHasVirtualGPIO";
    v26 = 1024;
    v27 = 328;
    v28 = 2080;
    v29 = "stockholm";
    _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i %s doesn't exist", buf, 0x1Cu);
  }

  return 0;
}

BOOL NFHardwareGPIOSetPower(uint64_t *a1, unsigned int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i enable=%d", "NFHardwareGPIOSetPower", 68, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "NFHardwareGPIOSetPower";
    v10 = 1024;
    v11 = 68;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enable=%d", buf, 0x18u);
  }

  return sub_297F60DA8(a1, 0, a2) == 0;
}

uint64_t sub_297F60DA8(uint64_t *a1, uint32_t selector, unsigned int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = a3;
  input = a3;
  if (a1)
  {
    v6 = *a1;
    v7 = *(*a1 + 4);
    if (v7)
    {
      *(v6 + 8) = 0;
      v8 = IOConnectCallScalarMethod(v7, selector, &input, 1u, 0, 0);
      if (v8)
      {
        v9 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i selector=%d enable=%llu : Failed with %#x", "_NFHardwareGPIOSetValue", 56, selector, input, v8);
        }

        dispatch_get_specific(*v9);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          v21 = "_NFHardwareGPIOSetValue";
          v22 = 1024;
          v23 = 56;
          v24 = 1024;
          v25 = selector;
          v26 = 2048;
          v27 = input;
          v28 = 1024;
          v29 = v8;
          _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i selector=%d enable=%llu : Failed with %#x", buf, 0x28u);
        }

        if (v8 == -536870163)
        {
          *(*a1 + 8) = 1;
          return 3758097133;
        }
      }
    }

    else
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i selector=%d enable=%llu : Not connected", "_NFHardwareGPIOSetValue", 48, selector, v3);
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v21 = "_NFHardwareGPIOSetValue";
        v22 = 1024;
        v23 = 48;
        v24 = 1024;
        v25 = selector;
        v26 = 2048;
        v27 = v3;
        _os_log_impl(&dword_297F52000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i selector=%d enable=%llu : Not connected", buf, 0x22u);
      }

      return 4294967294;
    }
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Invalid parameter", "_NFHardwareGPIOSetValue", 43);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "_NFHardwareGPIOSetValue";
      v22 = 1024;
      v23 = 43;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid parameter", buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return v8;
}

BOOL NFHardwareGPIOSetVBAT(uint64_t *a1, unsigned int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i VBAT enable=%d", "NFHardwareGPIOSetVBAT", 74, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "NFHardwareGPIOSetVBAT";
    v10 = 1024;
    v11 = 74;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i VBAT enable=%d", buf, 0x18u);
  }

  return sub_297F60DA8(a1, 5u, a2) == 0;
}

BOOL NFHardwareGPIOSetDownloadRequest(uint64_t *a1, unsigned int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i enable=%d", "NFHardwareGPIOSetDownloadRequest", 80, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "NFHardwareGPIOSetDownloadRequest";
    v10 = 1024;
    v11 = 80;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enable=%d", buf, 0x18u);
  }

  return sub_297F60DA8(a1, 1u, a2) == 0;
}

BOOL NFHardwareGPIOSetPMUStandbyPowerEnabled(uint64_t *a1, unsigned int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i enable=%d", "NFHardwareGPIOSetPMUStandbyPowerEnabled", 86, a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "NFHardwareGPIOSetPMUStandbyPowerEnabled";
    v10 = 1024;
    v11 = 86;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enable=%d", buf, 0x18u);
  }

  return sub_297F60DA8(a1, 2u, a2) == 0;
}

uint64_t NFHardwareGPIOSPMIFollowerReset(uint64_t *a1)
{
  sub_297F54914(*(*a1 + 16), 10, 0, 0);

  return sub_297F60DA8(a1, 8u, 1u);
}

uint64_t NFHardwareGPIOSPMIvGPIO(uint64_t *a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_297F54914(*(*a1 + 16), 10, &v4, 1uLL);
  return sub_297F60DA8(a1, 0xBu, v4);
}

BOOL NFHardwareGPIOValidateSPMIConfig(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareGPIOValidateSPMIConfig", 139);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "NFHardwareGPIOValidateSPMIConfig";
    v19 = 1024;
    v20 = 139;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (!a1)
  {
    dispatch_get_specific(*v2);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Invalid parameter", "NFHardwareGPIOValidateSPMIConfig", 142);
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    v18 = "NFHardwareGPIOValidateSPMIConfig";
    v19 = 1024;
    v20 = 142;
    v11 = "%{public}s:%i Invalid parameter";
LABEL_20:
    v12 = v15;
    v13 = 18;
    goto LABEL_21;
  }

  v5 = *(*a1 + 4);
  if (!v5)
  {
    dispatch_get_specific(*v2);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Not connected", "NFHardwareGPIOValidateSPMIConfig", 147);
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    v18 = "NFHardwareGPIOValidateSPMIConfig";
    v19 = 1024;
    v20 = 147;
    v11 = "%{public}s:%i Not connected";
    goto LABEL_20;
  }

  v6 = IOConnectCallScalarMethod(v5, 6u, 0, 0, 0, 0);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  dispatch_get_specific(*v2);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(3, "%s:%i Failed with %#x", "NFHardwareGPIOValidateSPMIConfig", 153, v7);
  }

  dispatch_get_specific(*v2);
  v9 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v18 = "NFHardwareGPIOValidateSPMIConfig";
    v19 = 1024;
    v20 = 153;
    v21 = 1024;
    v22 = v7;
    v11 = "%{public}s:%i Failed with %#x";
    v12 = v9;
    v13 = 24;
LABEL_21:
    _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    return 0;
  }

  return result;
}

BOOL NFHardwareGPIOConfigureHammerfestSPMI(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareGPIOConfigureHammerfestSPMI", 165);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "NFHardwareGPIOConfigureHammerfestSPMI";
    v19 = 1024;
    v20 = 165;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (!a1)
  {
    dispatch_get_specific(*v2);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Invalid parameter", "NFHardwareGPIOConfigureHammerfestSPMI", 168);
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    v18 = "NFHardwareGPIOConfigureHammerfestSPMI";
    v19 = 1024;
    v20 = 168;
    v11 = "%{public}s:%i Invalid parameter";
LABEL_20:
    v12 = v15;
    v13 = 18;
    goto LABEL_21;
  }

  v5 = *(*a1 + 4);
  if (!v5)
  {
    dispatch_get_specific(*v2);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Not connected", "NFHardwareGPIOConfigureHammerfestSPMI", 173);
    }

    dispatch_get_specific(*v2);
    v15 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    v18 = "NFHardwareGPIOConfigureHammerfestSPMI";
    v19 = 1024;
    v20 = 173;
    v11 = "%{public}s:%i Not connected";
    goto LABEL_20;
  }

  v6 = IOConnectCallScalarMethod(v5, 7u, 0, 0, 0, 0);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  dispatch_get_specific(*v2);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(3, "%s:%i Failed with %#x", "NFHardwareGPIOConfigureHammerfestSPMI", 179, v7);
  }

  dispatch_get_specific(*v2);
  v9 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v18 = "NFHardwareGPIOConfigureHammerfestSPMI";
    v19 = 1024;
    v20 = 179;
    v21 = 1024;
    v22 = v7;
    v11 = "%{public}s:%i Failed with %#x";
    v12 = v9;
    v13 = 24;
LABEL_21:
    _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    return 0;
  }

  return result;
}

void **NFHardwareGPIOOpen(int a1)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040D090CC53uLL);
    if (!v3)
    {
LABEL_28:
      free(v2);
      return 0;
    }

    v4 = v3;
    *v2 = v3;
    if (a1 == 1)
    {
      v6 = "AppleStockholmControl";
      v5 = 1;
    }

    else
    {
      if (a1 != 2)
      {
        v20 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i wrong GPIO driver type: %d", "NFHardwareGPIOOpen", 209, a1);
        }

        dispatch_get_specific(*v20);
        v22 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 136446722;
        v28 = "NFHardwareGPIOOpen";
        v29 = 1024;
        v30 = 209;
        v31 = 1024;
        LODWORD(v32) = a1;
        v17 = "%{public}s:%i wrong GPIO driver type: %d";
        v18 = v22;
        v19 = 24;
        goto LABEL_26;
      }

      v5 = 0;
      v6 = "AppleHammerfestControl";
    }

    *(v4 + 2) = sub_297F68B54(v5);
    v7 = *MEMORY[0x29EDBB110];
    v8 = IOServiceNameMatching(v6);
    MatchingService = IOServiceGetMatchingService(v7, v8);
    *v4 = MatchingService;
    if (!MatchingService)
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i Could not find service: %s", "NFHardwareGPIOOpen", 219, v6);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 136446722;
      v28 = "NFHardwareGPIOOpen";
      v29 = 1024;
      v30 = 219;
      v31 = 2080;
      v32 = v6;
      v17 = "%{public}s:%i Could not find service: %s";
      v18 = v25;
      v19 = 28;
      goto LABEL_26;
    }

    v10 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, v4 + 1);
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(3, "%s:%i Could not open service (%#x)", "NFHardwareGPIOOpen", 230, v11);
      }

      dispatch_get_specific(*v12);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v28 = "NFHardwareGPIOOpen";
        v29 = 1024;
        v30 = 230;
        v31 = 1024;
        LODWORD(v32) = v11;
        _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not open service (%#x)", buf, 0x18u);
      }

      if (!IOObjectRelease(*v4))
      {
        goto LABEL_27;
      }

      dispatch_get_specific(*v12);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i Fail to release service", "NFHardwareGPIOOpen", 232);
      }

      dispatch_get_specific(*v12);
      v16 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 136446466;
      v28 = "NFHardwareGPIOOpen";
      v29 = 1024;
      v30 = 232;
      v17 = "%{public}s:%i Fail to release service";
      v18 = v16;
      v19 = 18;
LABEL_26:
      _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
LABEL_27:
      free(*v2);
      goto LABEL_28;
    }
  }

  return v2;
}

void NFHardwareGPIOClose(io_object_t **a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = MGGetProductType();
    if (v2 == 3402870384 || v2 == 896202454)
    {
      NFHardwareGPIOSetPower(a1, 1u);
      usleep(0x7D0u);
    }

    v3 = *a1;
    if ((*a1)[1])
    {
      if (IOConnectRelease((*a1)[1]))
      {
        v4 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Fail to release connection", "NFHardwareGPIOClose", 264);
        }

        dispatch_get_specific(*v4);
        v6 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v11 = "NFHardwareGPIOClose";
          v12 = 1024;
          v13 = 264;
          _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Fail to release connection", buf, 0x12u);
        }
      }

      v3 = *a1;
      (*a1)[1] = 0;
    }

    if (*v3)
    {
      if (IOObjectRelease(*v3))
      {
        v7 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v8 = NFLogGetLogger();
        if (v8)
        {
          v8(3, "%s:%i Fail to release service", "NFHardwareGPIOClose", 271);
        }

        dispatch_get_specific(*v7);
        v9 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v11 = "NFHardwareGPIOClose";
          v12 = 1024;
          v13 = 271;
          _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Fail to release service", buf, 0x12u);
        }
      }

      v3 = *a1;
      **a1 = 0;
    }

    free(v3);
    free(a1);
  }
}

BOOL NFHardwareGPIOIsHostWakeCapable()
{
  v54 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"required-gpios", 0, 0);
    v5 = CFProperty;
    if (CFProperty && (v6 = CFGetTypeID(CFProperty), v6 == CFDataGetTypeID()))
    {
      BytePtr = CFDataGetBytePtr(v5);
      Length = CFDataGetLength(v5);
      v9 = CFStringCreateWithBytes(0, BytePtr, Length, 0x600u, 0);
      v10 = CFStringGetLength(v9);
      v13 = 0;
      if (v9)
      {
        v11 = v10;
        v55.location = 0;
        v55.length = v10;
        v12 = CFStringFindWithOptions(v9, @"support_wake_stockholm_soc", v55, 0, 0);
        v56.location = 0;
        v56.length = v11;
        LODWORD(v11) = CFStringFindWithOptions(v9, @"support_wake_stockholm", v56, 0, 0) | v12;
        CFRelease(v9);
        if (v11)
        {
          v13 = 1;
        }
      }

      CFRelease(v5);
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v16 = Logger;
        if (v5)
        {
          v17 = CFGetTypeID(v5);
        }

        else
        {
          v17 = -1;
        }

        TypeID = CFStringGetTypeID();
        v16(3, "%s:%i %s is of Type %lx, expecting %lx", "NFHardwareGPIOIsHostWakeCapable", 310, "required-gpios", v17, TypeID);
      }

      dispatch_get_specific(*v14);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (v5)
        {
          v23 = CFGetTypeID(v5);
        }

        else
        {
          v23 = -1;
        }

        *buf = 136447234;
        v45 = "NFHardwareGPIOIsHostWakeCapable";
        v46 = 1024;
        v47 = 310;
        v48 = 2080;
        v49 = "required-gpios";
        v50 = 2048;
        v51 = v23;
        v52 = 2048;
        v53 = CFStringGetTypeID();
        _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i %s is of Type %lx, expecting %lx", buf, 0x30u);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v13 = 0;
    }

    IOObjectRelease(v3);
  }

  else
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i stockholm doesn't exist", "NFHardwareGPIOIsHostWakeCapable", 315);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v45 = "NFHardwareGPIOIsHostWakeCapable";
      v46 = 1024;
      v47 = 315;
      _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i stockholm doesn't exist", buf, 0x12u);
    }

    v13 = 0;
  }

  v24 = IOServiceNameMatching("stockholm-spmi");
  v25 = IOServiceGetMatchingService(v0, v24);
  if (v25)
  {
    v26 = v25;
    v27 = IORegistryEntryCreateCFProperty(v25, @"required-functions", 0, 0);
    v28 = v27;
    if (v27 && (v29 = CFGetTypeID(v27), v29 == CFDataGetTypeID()))
    {
      v30 = CFDataGetBytePtr(v28);
      v31 = CFDataGetLength(v28);
      v32 = CFStringCreateWithBytes(0, v30, v31, 0x600u, 0);
      v33 = CFStringGetLength(v32);
      if (v32)
      {
        v57.length = v33;
        v57.location = 0;
        v34 = CFStringFindWithOptions(v32, @"support_host_wake_spmi", v57, 0, 0);
        CFRelease(v32);
        if (v34)
        {
          v13 = 1;
        }
      }
    }

    else
    {
      v35 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v36 = NFLogGetLogger();
      if (v36)
      {
        v37 = v36;
        if (v28)
        {
          v38 = CFGetTypeID(v28);
        }

        else
        {
          v38 = -1;
        }

        v39 = CFStringGetTypeID();
        v37(3, "%s:%i %s is of Type %lx, expecting %lx", "NFHardwareGPIOIsHostWakeCapable", 338, "required-functions", v38, v39);
      }

      dispatch_get_specific(*v35);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        if (v28)
        {
          v41 = CFGetTypeID(v28);
        }

        else
        {
          v41 = -1;
        }

        v42 = CFStringGetTypeID();
        *buf = 136447234;
        v45 = "NFHardwareGPIOIsHostWakeCapable";
        v46 = 1024;
        v47 = 338;
        v48 = 2080;
        v49 = "required-functions";
        v50 = 2048;
        v51 = v41;
        v52 = 2048;
        v53 = v42;
        _os_log_impl(&dword_297F52000, v40, OS_LOG_TYPE_ERROR, "%{public}s:%i %s is of Type %lx, expecting %lx", buf, 0x30u);
      }

      if (!v28)
      {
        goto LABEL_46;
      }
    }

    CFRelease(v28);
LABEL_46:
    IOObjectRelease(v26);
  }

  return v13;
}

uint64_t NFHardwareSerialGetDefaultInterfaceType()
{
  v27 = *MEMORY[0x29EDCA608];
  properties = 0;
  LODWORD(v0) = sub_297F62950("AppleStockholmControl", "nfc,primary,gpio");
  if (v0)
  {
LABEL_13:
    IOObjectRelease(v0);
    v7 = sub_297F62950("AppleStockholmSPMI", "nfc,primary,spmi");
    v8 = v7;
    if (v7)
    {
      v9 = IORegistryEntryCreateCFProperties(v7, &properties, *MEMORY[0x29EDB8ED8], 0);
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = properties == 0;
      }

      if (v10)
      {
        v11 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i Could not get valid dictionary from from IO service object, err: 0x%x.", "NFHardwareSerialGetDefaultInterfaceType", 471, v9);
        }

        dispatch_get_specific(*v11);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v22 = "NFHardwareSerialGetDefaultInterfaceType";
          v23 = 1024;
          v24 = 471;
          v25 = 1024;
          LODWORD(v26) = v9;
          _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not get valid dictionary from from IO service object, err: 0x%x.", buf, 0x18u);
        }

        v0 = 2;
      }

      else
      {
        v17 = CFDictionaryContainsKey(properties, @"stockholm-spmi-data-socket");
        v0 = 2;
        if (v17)
        {
          Value = CFDictionaryGetValue(properties, @"stockholm-spmi-data-socket");
          if (CFBooleanGetValue(Value))
          {
            v0 = 3;
          }

          else
          {
            v0 = 2;
          }
        }
      }

      if (properties)
      {
        CFRelease(properties);
        properties = 0;
      }
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(6, "%s:%i Could not find service: %s", "NFHardwareSerialGetDefaultInterfaceType", 463, "AppleStockholmSPMI");
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v22 = "NFHardwareSerialGetDefaultInterfaceType";
        v23 = 1024;
        v24 = 463;
        v25 = 2080;
        v26 = "AppleStockholmSPMI";
        _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service: %s", buf, 0x1Cu);
      }

      v0 = 1;
    }

    IOObjectRelease(v8);
    return v0;
  }

  v1 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v2(6, "%s:%i Could not find service, trying slow path: %s", "NFHardwareSerialGetDefaultInterfaceType", 447, "AppleStockholmControl");
  }

  dispatch_get_specific(*v1);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v22 = "NFHardwareSerialGetDefaultInterfaceType";
    v23 = 1024;
    v24 = 447;
    v25 = 2080;
    v26 = "AppleStockholmControl";
    _os_log_impl(&dword_297F52000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service, trying slow path: %s", buf, 0x1Cu);
  }

  sub_297F62E64();
  v0 = sub_297F63448("nfc,primary,gpio");
  if (v0)
  {
    v4 = sub_297F62950("AppleStockholmControl", "nfc,primary,gpio");
    if (v4)
    {
      goto LABEL_12;
    }

    v5 = 100;
    do
    {
      usleep(0x186A0u);
      v4 = sub_297F62950("AppleStockholmControl", "nfc,primary,gpio");
      if (v4)
      {
        break;
      }
    }

    while (v5-- > 1);
    if (v4)
    {
LABEL_12:
      IOObjectRelease(v4);
    }

    goto LABEL_13;
  }

  return v0;
}