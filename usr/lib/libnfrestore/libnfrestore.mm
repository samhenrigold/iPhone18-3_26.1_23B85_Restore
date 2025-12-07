uint64_t *sub_2994B78B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v38 = *MEMORY[0x29EDCA608];
  if (qword_2A14631A8)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Context already exists", "NfRestoreSEOpen_Internal", 201);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136446466;
      *&buf[1] = "NfRestoreSEOpen_Internal";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 201;
      _os_log_impl(&dword_2994B7000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Context already exists", buf, 0x12u);
    }

    if (a4)
    {
      v8 = 0;
      *a4 = 4;
      return v8;
    }

    return 0;
  }

  v9 = a2;
  qword_2A14631A8 = sub_2994C216C(0, a1, a3);
  if (!qword_2A14631A8)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i Failed to create context", "NfRestoreSEOpen_Internal", 208);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    buf[0] = 136446466;
    *&buf[1] = "NfRestoreSEOpen_Internal";
    LOWORD(buf[3]) = 1024;
    *(&buf[3] + 2) = 208;
    v21 = "%{public}s:%i Failed to create context";
LABEL_26:
    _os_log_impl(&dword_2994B7000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
    return 0;
  }

  v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!v10)
  {
    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(3, "%s:%i Failed to create NfRestoreSE object", "NfRestoreSEOpen_Internal", 214);
    }

    dispatch_get_specific(*v22);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    buf[0] = 136446466;
    *&buf[1] = "NfRestoreSEOpen_Internal";
    LOWORD(buf[3]) = 1024;
    *(&buf[3] + 2) = 214;
    v21 = "%{public}s:%i Failed to create NfRestoreSE object";
    goto LABEL_26;
  }

  v8 = v10;
  v37 = 0u;
  memset(buf, 0, sizeof(buf));
  v36 = sub_2994B8FB0() | 0x200000;
  v11 = NFDriverOpen();
  *v8 = v11;
  if (!v11)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(3, "%s:%i Failed to load driver", "NfRestoreSEOpen_Internal", 226);
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136446466;
      v32 = "NfRestoreSEOpen_Internal";
      v33 = 1024;
      v34 = 226;
      _os_log_impl(&dword_2994B7000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", v31, 0x12u);
    }

    if (!a4)
    {
      goto LABEL_43;
    }

    v28 = 10;
    goto LABEL_42;
  }

  Stack = NFDriverLoadStack();
  if (Stack && Stack != 24)
  {
    v29 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v30(3, "%s:%i Failed to load stack", "NfRestoreSEOpen_Internal", 250);
    }

    dispatch_get_specific(*v29);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136446466;
      v32 = "NfRestoreSEOpen_Internal";
      v33 = 1024;
      v34 = 250;
      v17 = "%{public}s:%i Failed to load stack";
      goto LABEL_39;
    }
  }

  else
  {
    v13 = sub_2994C22F4(*v8, v9);
    v8[1] = v13;
    if (v13)
    {
      return v8;
    }

    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v15(3, "%s:%i Failed to open SE", "NfRestoreSEOpen_Internal", 258);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136446466;
      v32 = "NfRestoreSEOpen_Internal";
      v33 = 1024;
      v34 = 258;
      v17 = "%{public}s:%i Failed to open SE";
LABEL_39:
      _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_ERROR, v17, v31, 0x12u);
    }
  }

  if (a4)
  {
    v28 = 9;
LABEL_42:
    *a4 = v28;
  }

LABEL_43:
  NfRestoreSEClose(v8);
  if (qword_2A14631A8)
  {
    free(qword_2A14631A8);
  }

  v8 = 0;
  qword_2A14631A8 = 0;
  return v8;
}

void NfRestoreSEClose(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      sub_2994C2D3C(v2);
    }

    if (*a1)
    {
      NFDriverUnloadStackAndLeaveHWEnabled();
      NFDriverClose();
    }

    free(a1);
  }

  if (qword_2A14631A8)
  {
    free(qword_2A14631A8);
    qword_2A14631A8 = 0;
  }
}

uint64_t NfRestoreSETransceiveToOS(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 6;
  }

  NFDataCreateWithBytes();
  v8 = NFDriverSecureElementTransceive();
  NFDataRelease();
  if (v8)
  {
    if (a5 && a6)
    {
      v9 = *(v8 + 8);
      if (*a6 < v9)
      {
        v10 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Provided buffer too small for result: %zu", "NfRestoreSETransceiveToOS", 341, *(v8 + 8));
        }

        dispatch_get_specific(*v10);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v8 + 8);
          *buf = 136446722;
          v19 = "NfRestoreSETransceiveToOS";
          v20 = 1024;
          v21 = 341;
          v22 = 2048;
          v23 = v13;
          _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Provided buffer too small for result: %zu", buf, 0x1Cu);
        }

        NFDataRelease();
        return 11;
      }

      *a6 = v9;
      memcpy(a5, *v8, *(v8 + 8));
    }

    NFDataRelease();
    return 0;
  }

  v15 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v16(3, "%s:%i Transceive failed", "NfRestoreSETransceiveToOS", 335);
  }

  dispatch_get_specific(*v15);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v19 = "NfRestoreSETransceiveToOS";
    v20 = 1024;
    v21 = 335;
    _os_log_impl(&dword_2994B7000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Transceive failed", buf, 0x12u);
  }

  return 9;
}

uint64_t NfRestoreSEEnumerate(void (*a1)(_OWORD *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v86 = *MEMORY[0x29EDCA608];
  v85 = 0;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  memset(v57, 0, sizeof(v57));
  if (qword_2A14631A8)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Context already exists", "NfRestoreSEEnumerate", 367);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v41 = "NfRestoreSEEnumerate";
      v42 = 1024;
      v43 = 367;
      _os_log_impl(&dword_2994B7000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Context already exists", buf, 0x12u);
    }

    return 4;
  }

  qword_2A14631A8 = sub_2994C216C(0, a2, a3);
  sub_2994B8FB0();
  v9 = NFDriverOpen();
  if (v9)
  {
    v10 = v9;
    Stack = NFDriverLoadStack();
    if (!Stack || Stack == 24)
    {
      memset(v56, 0, sizeof(v56));
      v55 = 0u;
      if (NFDriverGetControllerInfo())
      {
        if (byte_2A1463190)
        {
LABEL_86:
          if (MEMORY[0x29C29DFA0](v10, 1))
          {
            LODWORD(v57[0]) = 0;
            BYTE4(v57[0]) = (DWORD1(v55) & 0xFFFFFFFE) != 20;
            BYTE5(v57[0]) = (DWORD1(v55) > 0x15) | (0xFE25Fu >> SBYTE4(v55)) & 1;
            bzero(buf, 0x4F0uLL);
            if (NFDriverSetConfiguration())
            {
              if (NFDriverSecureElementGetOSMode() && NFDriverSecureElementGetOSInfo())
              {
                DWORD2(v57[0]) = 4;
                DWORD2(v57[2]) = 4;
                DWORD2(v58) = 4;
                DWORD2(v60) = 4;
                if (BYTE5(v57[0]) != 1 || v54 == 2)
                {
                  DWORD2(v57[0]) = 0;
                  BYTE4(v57[2]) = 24;
                  *(v57 + 12) = v50;
                  *(&v57[1] + 12) = v51;
                  v36 = 1;
                }

                else
                {
                  v36 = 0;
                }

                if (BYTE5(v57[0]))
                {
                  v38 = &v57[2 * v36] + 8;
                  *v38 = 2;
                  v38[28] = 24;
                  *(v38 + 20) = v53;
                  *(v38 + 4) = v52;
                }
              }

              NFDriverSetConfiguration();
            }

            v37 = 1;
          }

          else
          {
            v37 = 0;
          }

          if (MEMORY[0x29C29DFA0](v10, 2))
          {
            v39 = v57 + 168 * v37;
            *v39 = 2;
            v39[4] = (DWORD1(v55) & 0xFFFFFFFE) != 20;
            v39[5] = 0;
            *(v39 + 2) = 4;
            *(v39 + 10) = 4;
            *(v39 + 18) = 4;
            *(v39 + 26) = 4;
            v37 = (v37 + 1);
          }

          NFDriverUnloadStackAndLeaveHWEnabled();
          NFDriverClose();
          if (qword_2A14631A8)
          {
            free(qword_2A14631A8);
          }

          qword_2A14631A8 = 0;
          a1(v57, v37, a3);
          return 0;
        }

        if (SDWORD1(v55) > 13)
        {
          if (SDWORD1(v55) <= 16)
          {
            if (DWORD1(v55) == 14)
            {
              v12 = "SN300V B0";
            }

            else if (DWORD1(v55) == 15)
            {
              v12 = "SN300V B1";
            }

            else
            {
              v12 = "SN300V B20";
            }

            goto LABEL_69;
          }

          switch(DWORD1(v55))
          {
            case 0x11:
              v12 = "SN300V B21";
              goto LABEL_69;
            case 0x12:
              v12 = "SE310S A0";
              goto LABEL_69;
            case 0x14:
              v12 = "PN600V";
              goto LABEL_69;
          }
        }

        else if (SDWORD1(v55) > 9)
        {
          switch(DWORD1(v55))
          {
            case 0xA:
              v12 = "SN200V B0";
              goto LABEL_69;
            case 0xB:
              v12 = "SN200V B1";
              goto LABEL_69;
            case 0xC:
              v12 = "SN210V B1";
              goto LABEL_69;
          }
        }

        else
        {
          switch(DWORD1(v55))
          {
            case 5:
              if (DWORD2(v55) == 1)
              {
                v12 = "PN80v ES2.1";
              }

              else
              {
                v12 = "Unknown PN80v";
              }

              goto LABEL_69;
            case 7:
              v12 = "SN100V B0 / B1";
              goto LABEL_69;
            case 8:
              v12 = "SN100V B2";
LABEL_69:
              v26 = WORD6(v55);
              v27 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v28 = NFLogGetLogger();
              if (v28)
              {
                v28(6, "%s:%i ==== CONTROLLER ====", "NfRestoreSEDumpControllerInfo", 119);
              }

              dispatch_get_specific(*v27);
              v29 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                v41 = "NfRestoreSEDumpControllerInfo";
                v42 = 1024;
                v43 = 119;
                _os_log_impl(&dword_2994B7000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ==== CONTROLLER ====", buf, 0x12u);
              }

              dispatch_get_specific(*v27);
              v30 = NFLogGetLogger();
              if (v30)
              {
                v30(6, "%s:%i Hardware: %x.%x (%s)", "NfRestoreSEDumpControllerInfo", 123, v55, BYTE8(v55), v12);
              }

              dispatch_get_specific(*v27);
              v31 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                v41 = "NfRestoreSEDumpControllerInfo";
                v42 = 1024;
                v43 = 123;
                v44 = 1024;
                v45 = v55;
                v46 = 1024;
                v47 = BYTE8(v55);
                v48 = 2080;
                v49[0] = v12;
                _os_log_impl(&dword_2994B7000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Hardware: %x.%x (%s)", buf, 0x28u);
              }

              dispatch_get_specific(*v27);
              v32 = NFLogGetLogger();
              if (v32)
              {
                v32(6, "%s:%i Firmware: %x.%x rev %d", "NfRestoreSEDumpControllerInfo", 127, HIBYTE(v26), v26, v56[0]);
              }

              dispatch_get_specific(*v27);
              v33 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                v41 = "NfRestoreSEDumpControllerInfo";
                v42 = 1024;
                v43 = 127;
                v44 = 1024;
                v45 = HIBYTE(v26);
                v46 = 1024;
                v47 = v26;
                v48 = 1024;
                LODWORD(v49[0]) = v56[0];
                _os_log_impl(&dword_2994B7000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Firmware: %x.%x rev %d", buf, 0x24u);
              }

              dispatch_get_specific(*v27);
              v34 = NFLogGetLogger();
              if (v34)
              {
                v34(6, "%s:%i Middleware: %x.%x.%x.%x", "NfRestoreSEDumpControllerInfo", 132, HIBYTE(v56[1]), BYTE2(v56[1]), BYTE1(v56[1]), LOBYTE(v56[1]));
              }

              dispatch_get_specific(*v27);
              v35 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447490;
                v41 = "NfRestoreSEDumpControllerInfo";
                v42 = 1024;
                v43 = 132;
                v44 = 1024;
                v45 = HIBYTE(v56[1]);
                v46 = 1024;
                v47 = BYTE2(v56[1]);
                v48 = 1024;
                LODWORD(v49[0]) = BYTE1(v56[1]);
                WORD2(v49[0]) = 1024;
                *(v49 + 6) = LOBYTE(v56[1]);
                _os_log_impl(&dword_2994B7000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Middleware: %x.%x.%x.%x", buf, 0x2Au);
              }

              byte_2A1463190 = 1;
              goto LABEL_86;
          }
        }

        v12 = "Unknown";
        goto LABEL_69;
      }

      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v17(4, "%s:%i Failed to get controller info", "NfRestoreSEEnumerate", 403);
      }

      dispatch_get_specific(*v16);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v41 = "NfRestoreSEEnumerate";
        v42 = 1024;
        v43 = 403;
        _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get controller info", buf, 0x12u);
      }

      return 9;
    }

    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i Failed to load stack", "NfRestoreSEEnumerate", 388);
    }

    dispatch_get_specific(*v19);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v41 = "NfRestoreSEEnumerate";
      v42 = 1024;
      v43 = 388;
      _os_log_impl(&dword_2994B7000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack", buf, 0x12u);
    }

    NFDriverClose();
    if (qword_2A14631A8)
    {
      free(qword_2A14631A8);
    }

    qword_2A14631A8 = 0;
    if (!NFProductIsDevBoard())
    {
      return 9;
    }

    dispatch_get_specific(*v19);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(4, "%s:%i Failed to get driver info", "NfRestoreSEEnumerate", 393);
    }

    dispatch_get_specific(*v19);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v41 = "NfRestoreSEEnumerate";
      v42 = 1024;
      v43 = 393;
      _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get driver info", buf, 0x12u);
    }

    dispatch_get_specific(*v19);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v24(4, "%s:%i Assuming HW not present", "NfRestoreSEEnumerate", 394);
    }

    dispatch_get_specific(*v19);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v41 = "NfRestoreSEEnumerate";
      v42 = 1024;
      v43 = 394;
      _os_log_impl(&dword_2994B7000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Assuming HW not present", buf, 0x12u);
    }

    return 1;
  }

  else
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Failed to load driver", "NfRestoreSEEnumerate", 379);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v41 = "NfRestoreSEEnumerate";
      v42 = 1024;
      v43 = 379;
      _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", buf, 0x12u);
    }

    if (qword_2A14631A8)
    {
      free(qword_2A14631A8);
    }

    qword_2A14631A8 = 0;
    return 10;
  }
}

uint64_t *NfRestoreOpenWithSE(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return sub_2994B78B0(a2, v3, a3, 0);
}

uint64_t *NfRestoreOpenWithSEAndResult(unsigned int *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *a1;
  if (v4)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return sub_2994B78B0(a2, v4, a3, a4);
}

uint64_t NfRestoreToggleSEPower(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 8))
  {
    return 6;
  }

  if (NFDriverSetSecureElementPower())
  {
    return 0;
  }

  return 10;
}

uint64_t NfRestoreInvalidateProhibitTimer(uint64_t a1)
{
  if (!a1 || !*(a1 + 8))
  {
    return 6;
  }

  if (NFDriverInvalidateProhibitTimer())
  {
    return 9;
  }

  return 0;
}

void sub_2994B8D74(const char *a1, unsigned int a2, char *a3, ...)
{
  va_start(va, a3);
  v21 = *MEMORY[0x29EDCA608];
  userInfoKeys = 0;
  v20 = 0;
  userInfoValues = 0;
  v18 = 0;
  cStr = 0;
  vasprintf(&cStr, a3, va);
  if (cStr)
  {
    v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    free(cStr);
  }

  else
  {
    v5 = @"???";
  }

  v6 = CFStringCreateWithCString(0, a1, 0x8000100u);
  if (qword_2A1463198)
  {
    v7 = CFRetain(qword_2A1463198);
    CFRelease(qword_2A1463198);
    qword_2A1463198 = 0;
    if (v5)
    {
      userInfoKeys = *MEMORY[0x29EDB8F58];
      userInfoValues = v5;
      if (v7)
      {
        v20 = *MEMORY[0x29EDB8F68];
        v18 = v7;
        v8 = 2;
LABEL_11:
        qword_2A1463198 = CFErrorCreateWithUserInfoKeysAndValues(0, v6, a2, &userInfoKeys, &userInfoValues, v8);
        CFRelease(v5);
        goto LABEL_17;
      }

LABEL_10:
      v8 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
      userInfoKeys = *MEMORY[0x29EDB8F58];
      userInfoValues = v5;
      goto LABEL_10;
    }
  }

  v9 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Failed to create errorValue CFString", "_NFRestorePushError", 88);
  }

  dispatch_get_specific(*v9);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v14 = "_NFRestorePushError";
    v15 = 1024;
    v16 = 88;
    _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create errorValue CFString", buf, 0x12u);
  }

  qword_2A1463198 = CFErrorCreate(0, v6, a2, 0);
LABEL_17:
  CFRelease(v6);
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t sub_2994B8FB0()
{
  if (sub_2994B906C(@"LogNCI"))
  {
    v0 = 4;
  }

  else
  {
    v0 = 0;
  }

  if (sub_2994B906C(@"LogMW"))
  {
    v0 |= 0x40000000uLL;
  }

  if (sub_2994B906C(@"LogAPI"))
  {
    v0 |= 8uLL;
  }

  if (sub_2994B906C(@"LogAPDU"))
  {
    v0 |= 0x10uLL;
  }

  if (sub_2994B906C(@"SimulateRestoreOS"))
  {
    v0 |= 0x200000uLL;
  }

  if (sub_2994B906C(@"ForceVenReset"))
  {
    v0 |= 0x4000000uLL;
  }

  if (NFIsInternalBuild())
  {
    return v0 | 0x4000000000;
  }

  else
  {
    return v0;
  }
}

BOOL sub_2994B906C(const __CFString *a1)
{
  v1 = CFPreferencesCopyValue(a1, @"com.apple.stockholm", @"mobile", *MEMORY[0x29EDB8F90]);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      v4 = 1;
      if (CFStringCompare(v2, @"true", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_18;
      }

      v4 = 1;
      if (CFStringCompare(v2, @"YES", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_18;
      }

      v5 = CFEqual(v2, @"1") == 0;
    }

    else
    {
      if (v3 != CFNumberGetTypeID())
      {
        v4 = v3 == CFBooleanGetTypeID() && v2 == *MEMORY[0x29EDB8F00];
        goto LABEL_18;
      }

      valuePtr = 0.0;
      if (CFNumberIsFloatType(v2))
      {
        CFNumberGetValue(v2, kCFNumberDoubleType, &valuePtr);
        v5 = valuePtr == 0.0;
      }

      else
      {
        CFNumberGetValue(v2, kCFNumberCFIndexType, &valuePtr);
        v5 = *&valuePtr == 0;
      }
    }

    v4 = !v5;
LABEL_18:
    CFRelease(v2);
    return v4;
  }

  return 0;
}

uint64_t NfRestoreReturnError()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v186 = *MEMORY[0x29EDCA608];
  if (qword_2A1463198)
  {
    CFRelease(qword_2A1463198);
    qword_2A1463198 = 0;
  }

  if (qword_2A14631A8)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Context already exists", "NfRestoreReturnError", 1804);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v162 = "NfRestoreReturnError";
      v163 = 1024;
      v164 = 1804;
      _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Context already exists", buf, 0x12u);
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfRestoreReturnError", 1805);
    return 4;
  }

  qword_2A14631A8 = sub_2994C216C(v8, v6, v2);
  bzero(buf, 0x1818uLL);
  cf = 0;
  *v179 = 0;
  bzero(v177, 0x400uLL);
  v14 = sysctlbyname("kern.bootargs", 0, v179, 0, 0);
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to read boot-args: %d", "NFRestoreParseBootArgs", 209, v15);
    }

    dispatch_get_specific(*v16);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v176[0] = 136446722;
      *&v176[1] = "NFRestoreParseBootArgs";
      LOWORD(v176[3]) = 1024;
      *(&v176[3] + 2) = 209;
      HIWORD(v176[4]) = 1024;
      v176[5] = v15;
      v19 = "%{public}s:%i Failed to read boot-args: %d";
LABEL_14:
      v20 = v18;
      v21 = 24;
LABEL_20:
      _os_log_impl(&dword_2994B7000, v20, OS_LOG_TYPE_ERROR, v19, v176, v21);
    }
  }

  else if (*v179 < 0x401uLL)
  {
    if (*v179)
    {
      v38 = sysctlbyname("kern.bootargs", v177, v179, 0, 0);
      if (v38)
      {
        v39 = v38;
        v40 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v41(3, "%s:%i Failed to read boot-args: %d", "NFRestoreParseBootArgs", 221, v39);
        }

        dispatch_get_specific(*v40);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v176[0] = 136446722;
          *&v176[1] = "NFRestoreParseBootArgs";
          LOWORD(v176[3]) = 1024;
          *(&v176[3] + 2) = 221;
          HIWORD(v176[4]) = 1024;
          v176[5] = v39;
          v19 = "%{public}s:%i Failed to read boot-args: %d";
          goto LABEL_14;
        }
      }

      else
      {
        v44 = v4;
        __lasts = 0;
        v45 = strtok_r(v177, " ", &__lasts);
        if (v45)
        {
          v46 = MEMORY[0x29EDC9730];
          do
          {
            v159 = &unk_2994C5988;
            v47 = strtok_r(v45, "=", &v159);
            if (v47)
            {
              v48 = v159 == 0;
            }

            else
            {
              v48 = 1;
            }

            if (!v48)
            {
              v49 = v47;
              if (!strcmp(v47, "nfrestore-loop"))
              {
                dispatch_get_specific(*v46);
                v50 = NFLogGetLogger();
                if (v50)
                {
                  v50(6, "%s:%i Found boot-arg %s = %s", "NFRestoreParseBootArgs", 233, v49, v159);
                }

                dispatch_get_specific(*v46);
                v51 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v176[0] = 136446978;
                  *&v176[1] = "NFRestoreParseBootArgs";
                  LOWORD(v176[3]) = 1024;
                  *(&v176[3] + 2) = 233;
                  HIWORD(v176[4]) = 2080;
                  *&v176[5] = v49;
                  LOWORD(v176[7]) = 2080;
                  *(&v176[7] + 2) = v159;
                  _os_log_impl(&dword_2994B7000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found boot-arg %s = %s", v176, 0x26u);
                }

                v166 |= 2u;
                v167 = atoi(v159);
              }
            }

            v45 = strtok_r(0, " ", &__lasts);
          }

          while (v45);
        }

        v4 = v44;
      }
    }
  }

  else
  {
    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(3, "%s:%i Invalid boot-arg length: %zu", "NFRestoreParseBootArgs", 213, *v179);
    }

    dispatch_get_specific(*v22);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v176[0] = 136446722;
      *&v176[1] = "NFRestoreParseBootArgs";
      LOWORD(v176[3]) = 1024;
      *(&v176[3] + 2) = 213;
      HIWORD(v176[4]) = 2048;
      *&v176[5] = *v179;
      v19 = "%{public}s:%i Invalid boot-arg length: %zu";
      v20 = v24;
      v21 = 28;
      goto LABEL_20;
    }
  }

  bzero(v177, 0x400uLL);
  Value = CFDictionaryGetValue(v9, @"FirmwareBundleData");
  if (!Value)
  {
    v29 = CFDictionaryGetValue(v9, @"FirmwareBundlePath");
    if (v29)
    {
      v30 = v29;
      if (!CFStringGetCStringPtr(v29, 0x8000100u))
      {
        CFStringGetCString(v30, v177, 1024, 0x8000100u);
      }

      v31 = NFDataCreateWithFile();
      v32 = *MEMORY[0x29EDB8ED8];
      v33 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], *v31, *(v31 + 8), *MEMORY[0x29EDB8EE8]);
      cf = CFPropertyListCreateWithData(v32, v33, 0, 0, 0);
      CFRelease(v33);
      NFDataRelease();
      if (cf)
      {
        goto LABEL_73;
      }

      v34 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v35(3, "%s:%i Failed to parse bundle data", "NFRestoreParseParams", 368);
      }

      dispatch_get_specific(*v34);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v176[0] = 136446466;
        *&v176[1] = "NFRestoreParseParams";
        LOWORD(v176[3]) = 1024;
        *(&v176[3] + 2) = 368;
        _os_log_impl(&dword_2994B7000, v36, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to parse bundle data", v176, 0x12u);
      }

      v37 = 369;
    }

    else
    {
      v42 = CFDictionaryGetValue(v9, @"RootFilePath");
      if (!v42)
      {
        goto LABEL_73;
      }

      v43 = v42;
      bzero(v176, 0x400uLL);
      if (CFStringGetCStringPtr(v43, 0x8000100u))
      {
        __strlcpy_chk();
      }

      else
      {
        CFStringGetCString(v43, v176, 1024, 0x8000100u);
      }

      if (!sub_2994C0C28(v176, &cf))
      {
        goto LABEL_73;
      }

      v52 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v53 = NFLogGetLogger();
      if (v53)
      {
        v53(3, "%s:%i Failed to scan %s", "NFRestoreParseParams", 380, v176);
      }

      dispatch_get_specific(*v52);
      v54 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *v179 = 136446722;
        *&v179[4] = "NFRestoreParseParams";
        v180 = 1024;
        v181 = 380;
        v182 = 2080;
        v183 = v176;
        _os_log_impl(&dword_2994B7000, v54, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to scan %s", v179, 0x1Cu);
      }

      v37 = 381;
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NFRestoreParseParams", v37);
LABEL_68:
    v55 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v56 = NFLogGetLogger();
    if (v56)
    {
      v56(3, "%s:%i Failed to parse params", "NfRestoreReturnError", 1815);
    }

    dispatch_get_specific(*v55);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v177[0]) = 136446466;
      *(v177 + 4) = "NfRestoreReturnError";
      WORD2(v177[1]) = 1024;
      *(&v177[1] + 6) = 1815;
      _os_log_impl(&dword_2994B7000, v57, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to parse params", v177, 0x12u);
    }

    v13 = 6;
    goto LABEL_218;
  }

  cf = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], Value, 0, 0, 0);
  if (!cf)
  {
    v26 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v27(3, "%s:%i Failed to parse bundle data", "NFRestoreParseParams", 353);
    }

    dispatch_get_specific(*v26);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v176[0] = 136446466;
      *&v176[1] = "NFRestoreParseParams";
      LOWORD(v176[3]) = 1024;
      *(&v176[3] + 2) = 353;
      _os_log_impl(&dword_2994B7000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to parse bundle data", v176, 0x12u);
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NFRestoreParseParams", 354);
    goto LABEL_68;
  }

LABEL_73:
  v58 = CFDictionaryGetValue(v9, @"DevicePath");
  if (v58)
  {
    CFStringGetCString(v58, buf, 1024, 0x600u);
  }

  v59 = CFDictionaryGetValue(v9, @"InvokedFromCommandLine");
  if (v59)
  {
    v60 = CFBooleanGetValue(v59) != 0;
  }

  else
  {
    v60 = 0;
  }

  v166 = v166 & 0xFE | v60;
  v61 = CFDictionaryGetValue(v9, @"NfcUpdateFile");
  if (v61)
  {
    CFStringGetCString(v61, v168, 1024, 0x600u);
  }

  else
  {
    v168[0] = 0;
  }

  v62 = CFDictionaryGetValue(v9, @"NfcRFSettingsFile");
  if (v62)
  {
    CFStringGetCString(v62, v169, 1024, 0x600u);
  }

  else
  {
    v169[0] = 0;
  }

  v63 = CFDictionaryGetValue(v9, @"FactoryInstall");
  if (v63)
  {
    v64 = CFBooleanGetValue(v63) != 0;
  }

  else
  {
    v64 = 0;
  }

  v170 = v170 & 0xFE | v64;
  v65 = CFDictionaryGetValue(v9, @"kNfUpdateParamIntegrity");
  if (v65)
  {
    v66 = 16 * (CFBooleanGetValue(v65) != 0);
  }

  else
  {
    v66 = 0;
  }

  v172 = v172 & 0xEF | v66;
  v67 = CFDictionaryGetValue(v9, @"kNfUpdateParamQueryFDRKey");
  if (v67)
  {
    v68 = 2 * (CFBooleanGetValue(v67) != 0);
  }

  else
  {
    v68 = 0;
  }

  v170 = v170 & 0xFD | v68;
  v69 = CFDictionaryGetValue(v9, @"kNfUpdateAntennaSelfTest");
  if (v69)
  {
    v70 = 4 * (CFBooleanGetValue(v69) != 0);
  }

  else
  {
    v70 = 0;
  }

  v170 = v170 & 0xFB | v70;
  v71 = CFDictionaryGetValue(v9, @"RestoreSystemPartition");
  if (v71)
  {
    CFStringGetCString(v71, v175, 1024, 0x600u);
  }

  else
  {
    v175[0] = 0;
  }

  v72 = CFDictionaryGetValue(v9, @"NfcMaxFwDlRetries");
  if (v72)
  {
    CFNumberGetValue(v72, kCFNumberSInt8Type, v171);
  }

  else
  {
    v171[0] = 10;
  }

  v73 = CFDictionaryGetValue(v9, @"NfcForceFwDl");
  if (v73)
  {
    v74 = CFBooleanGetValue(v73) != 0;
  }

  else
  {
    v74 = 0;
  }

  v171[1] = v74;
  v75 = CFDictionaryGetValue(v9, @"JcopPostflightScript");
  if (v75)
  {
    CFStringGetCString(v75, v173, 1024, 0x600u);
  }

  else
  {
    v173[0] = 0;
  }

  v76 = CFDictionaryGetValue(v9, @"JcopTerminateApplets");
  if (v76)
  {
    v77 = CFBooleanGetValue(v76) != 0;
  }

  else
  {
    v77 = 0;
  }

  v174 = v174 & 0xFE | v77;
  v78 = CFDictionaryGetValue(v9, @"JcopForceJCOPPostflightScript");
  if (v78)
  {
    v79 = 2 * (CFBooleanGetValue(v78) != 0);
  }

  else
  {
    v79 = 0;
  }

  v174 = v174 & 0xFD | v79;
  v80 = CFDictionaryGetValue(v9, @"StockholmOnly");
  if (v80)
  {
    v81 = 2 * (CFBooleanGetValue(v80) != 0);
  }

  else
  {
    v81 = 0;
  }

  v172 = v172 & 0xFD | v81;
  v82 = CFDictionaryGetValue(v9, @"HammerfestOnly");
  if (v82)
  {
    v83 = 4 * (CFBooleanGetValue(v82) != 0);
  }

  else
  {
    v83 = 0;
  }

  v172 = v172 & 0xFB | v83;
  v84 = CFDictionaryGetValue(v9, @"CLIRestore");
  if (v84)
  {
    v84 = CFBooleanGetValue(v84);
    v85 = 8 * (v84 != 0);
  }

  else
  {
    v85 = 0;
  }

  v86 = v172;
  v172 = v172 & 0xF7 | v85;
  if ((v86 & 2) != 0 || (v84 = sub_2994C4C04("com.apple.spmi.nfc.hammerfest"), !v84))
  {
    v157 = 0;
  }

  else
  {
    v84 = sub_2994C2EDC("hammerfest-spmi");
    if ((v84 & 1) == 0)
    {
      v84 = sub_2994BAFAC(2);
      if ((v84 & 1) == 0)
      {
        v114 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v115 = NFLogGetLogger();
        if (v115)
        {
          v115(3, "%s:%i Failed to shut down Hammerfest", "NfRestoreReturnError", 1829);
        }

        dispatch_get_specific(*v114);
        v116 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v177[0]) = 136446466;
          *(v177 + 4) = "NfRestoreReturnError";
          WORD2(v177[1]) = 1024;
          *(&v177[1] + 6) = 1829;
          _os_log_impl(&dword_2994B7000, v116, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to shut down Hammerfest", v177, 0x12u);
        }

        v117 = 1830;
        goto LABEL_263;
      }
    }

    v157 = 1;
  }

  if ((v172 & 4) != 0)
  {
    v106 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v107 = NFLogGetLogger();
    if (v107)
    {
      v107(6, "%s:%i Skipping Stockholm restore", "NfRestoreReturnError", 1840);
    }

    dispatch_get_specific(*v106);
    v108 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v177[0]) = 136446466;
      *(v177 + 4) = "NfRestoreReturnError";
      WORD2(v177[1]) = 1024;
      *(&v177[1] + 6) = 1840;
      _os_log_impl(&dword_2994B7000, v108, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Skipping Stockholm restore", v177, 0x12u);
    }
  }

  else
  {
    if ((v170 & 2) != 0)
    {
      v109 = NfRestoreCopyUniqueFDRKey(v84, v4);
      v110 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v111 = NFLogGetLogger();
      if (v109)
      {
        if (v111)
        {
          v111(6, "%s:%i FDR Key : %s", "NfRestoreReturnError", 1848, v109);
        }

        dispatch_get_specific(*v110);
        v112 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v177[0]) = 136446722;
          *(v177 + 4) = "NfRestoreReturnError";
          WORD2(v177[1]) = 1024;
          *(&v177[1] + 6) = 1848;
          WORD1(v177[2]) = 2080;
          *(&v177[2] + 4) = v109;
          _os_log_impl(&dword_2994B7000, v112, OS_LOG_TYPE_DEFAULT, "%{public}s:%i FDR Key : %s", v177, 0x1Cu);
        }

        if ((NFIsRestoreOS() & 1) == 0)
        {
          fprintf(*MEMORY[0x29EDCA620], "FDR Key : %s\n", v109);
        }

        free(v109);
      }

      else
      {
        if (v111)
        {
          v111(3, "%s:%i No FDR Key !", "NfRestoreReturnError", 1854);
        }

        dispatch_get_specific(*v110);
        v113 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v177[0]) = 136446466;
          *(v177 + 4) = "NfRestoreReturnError";
          WORD2(v177[1]) = 1024;
          *(&v177[1] + 6) = 1854;
          _os_log_impl(&dword_2994B7000, v113, OS_LOG_TYPE_ERROR, "%{public}s:%i No FDR Key !", v177, 0x12u);
        }

        if ((NFIsRestoreOS() & 1) == 0)
        {
          fwrite("No FDR Key !\n", 0xDuLL, 1uLL, *MEMORY[0x29EDCA620]);
        }
      }
    }

    else if ((v172 & 0x10) != 0)
    {
      v178 = 0u;
      memset(v177, 0, sizeof(v177));
      v177[3] = sub_2994B8FB0();
      qword_2A14631A0 = NFDriverOpen();
      if (qword_2A14631A0)
      {
        NFDriverRunIntegrityDebug();
        if (NFIsInternalBuild())
        {
          v87 = NFDriverDebugDumpMemory();
          if (v87)
          {
            v88 = v87;
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v89 = NFLogGetLogger();
            if (v89)
            {
              v89(6, "%s:%i EEPROM User Area Start:0x%08X End:0x%08X", "NfRestoreRunIntegrityCheck", 306, *v88, v88[1]);
            }

            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v90 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              v91 = *v88;
              v92 = v88[1];
              v176[0] = 136446978;
              *&v176[1] = "NfRestoreRunIntegrityCheck";
              LOWORD(v176[3]) = 1024;
              *(&v176[3] + 2) = 306;
              HIWORD(v176[4]) = 1024;
              v176[5] = v91;
              LOWORD(v176[6]) = 1024;
              *(&v176[6] + 2) = v92;
              _os_log_impl(&dword_2994B7000, v90, OS_LOG_TYPE_DEFAULT, "%{public}s:%i EEPROM User Area Start:0x%08X End:0x%08X", v176, 0x1Eu);
            }

            v93 = *(v88 + 1);
            if (v93)
            {
              v156 = v88;
              memset(v176, 0, 48);
              v95 = *v93;
              v94 = v93[1];
              v96 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v97 = NFLogGetLogger();
              dispatch_get_specific(*v96);
              v98 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                v99 = *(v156[1] + 8);
                *v179 = 136315906;
                *&v179[4] = "NfRestoreRunIntegrityCheck";
                v180 = 1024;
                v181 = 309;
                v182 = 2082;
                v183 = "EEPROM User Area: ";
                v184 = 2048;
                v185 = v99;
                _os_log_impl(&dword_2994B7000, v98, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v179, 0x26u);
              }

              if (v97)
              {
                v97(6, "%s:%i %s %lu bytes :", "NfRestoreRunIntegrityCheck", 309, "EEPROM User Area: ", *(v156[1] + 8));
              }

              if (v94)
              {
                v100 = 0;
                do
                {
                  v101 = 0;
                  v102 = v176 + __sprintf_chk(v176, 0, 0x30uLL, "%04lX: ", v100);
                  do
                  {
                    v103 = *(v95 + v100++);
                    v104 = sprintf(v102, "0x%02X ", v103);
                    if (v101 > 6)
                    {
                      break;
                    }

                    v102 += v104;
                    ++v101;
                  }

                  while (v100 < v94);
                  dispatch_get_specific(*MEMORY[0x29EDC9730]);
                  v105 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                  {
                    *v179 = 136446210;
                    *&v179[4] = v176;
                    _os_log_impl(&dword_2994B7000, v105, OS_LOG_TYPE_DEFAULT, "%{public}s", v179, 0xCu);
                  }

                  if (v97)
                  {
                    v97(6, "%s", v176);
                  }
                }

                while (v100 < v94);
              }

              v88 = v156;
              NFDataRelease();
            }

            free(v88);
          }
        }

        NFDriverClose();
        qword_2A14631A0 = 0;
      }

      else
      {
        v118 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v119 = NFLogGetLogger();
        if (v119)
        {
          v119(3, "%s:%i Failed to load driver", "NfRestoreRunIntegrityCheck", 293);
        }

        dispatch_get_specific(*v118);
        v120 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          v176[0] = 136446466;
          *&v176[1] = "NfRestoreRunIntegrityCheck";
          LOWORD(v176[3]) = 1024;
          *(&v176[3] + 2) = 293;
          _os_log_impl(&dword_2994B7000, v120, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", v176, 0x12u);
        }

        if (v4)
        {
          v121 = CFErrorCreate(0, @"com.apple.nfstack", 9, 0);
          *v4 = v121;
          if (v121)
          {
            CFAutorelease(v121);
          }
        }
      }
    }

    v122 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v123 = NFLogGetLogger();
    if (v123)
    {
      v123(6, "%s:%i **************** Restoring Stockholm ****************", "NfRestoreReturnError", 1870);
    }

    dispatch_get_specific(*v122);
    v124 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v177[0]) = 136446466;
      *(v177 + 4) = "NfRestoreReturnError";
      WORD2(v177[1]) = 1024;
      *(&v177[1] + 6) = 1870;
      _os_log_impl(&dword_2994B7000, v124, OS_LOG_TYPE_DEFAULT, "%{public}s:%i **************** Restoring Stockholm ****************", v177, 0x12u);
    }

    if ((v166 & 2) != 0)
    {
      v129 = 1;
      while (1)
      {
        dispatch_get_specific(*v122);
        v130 = NFLogGetLogger();
        if (v130)
        {
          v130(6, "%s:%i Iteration %d of %d", "NfRestoreReturnError", 1875, v129, v167);
        }

        dispatch_get_specific(*v122);
        v131 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v177[0]) = 136446978;
          *(v177 + 4) = "NfRestoreReturnError";
          WORD2(v177[1]) = 1024;
          *(&v177[1] + 6) = 1875;
          WORD1(v177[2]) = 1024;
          HIDWORD(v177[2]) = v129;
          LOWORD(v177[3]) = 1024;
          *(&v177[3] + 2) = v167;
          _os_log_impl(&dword_2994B7000, v131, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Iteration %d of %d", v177, 0x1Eu);
        }

        v132 = sub_2994BB3C0(buf, cf);
        if (v132)
        {
          break;
        }

        ++v129;
        if (v167 && v129 > v167)
        {
          goto LABEL_205;
        }
      }

      v13 = v132;
      dispatch_get_specific(*v122);
      v142 = NFLogGetLogger();
      if (v142)
      {
        v142(3, "%s:%i Failed at iteration %d", "NfRestoreReturnError", 1877, v129);
      }

      dispatch_get_specific(*v122);
      v127 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_218;
      }

      LODWORD(v177[0]) = 136446722;
      *(v177 + 4) = "NfRestoreReturnError";
      WORD2(v177[1]) = 1024;
      *(&v177[1] + 6) = 1877;
      WORD1(v177[2]) = 1024;
      HIDWORD(v177[2]) = v129;
      v128 = "%{public}s:%i Failed at iteration %d";
LABEL_229:
      _os_log_impl(&dword_2994B7000, v127, OS_LOG_TYPE_ERROR, v128, v177, 0x18u);
      goto LABEL_218;
    }

    v125 = sub_2994BB3C0(buf, cf);
    if (v125)
    {
      v13 = v125;
      dispatch_get_specific(*v122);
      v126 = NFLogGetLogger();
      if (v126)
      {
        v126(3, "%s:%i Failed %d", "NfRestoreReturnError", 1885, v13);
      }

      dispatch_get_specific(*v122);
      v127 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_218;
      }

      LODWORD(v177[0]) = 136446722;
      *(v177 + 4) = "NfRestoreReturnError";
      WORD2(v177[1]) = 1024;
      *(&v177[1] + 6) = 1885;
      WORD1(v177[2]) = 1024;
      HIDWORD(v177[2]) = v13;
      v128 = "%{public}s:%i Failed %d";
      goto LABEL_229;
    }
  }

LABEL_205:
  if ((v172 & 2) != 0)
  {
    v138 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v139 = NFLogGetLogger();
    if (v139)
    {
      v139(6, "%s:%i Skipping Hammerfest restore.", "NfRestoreReturnError", 1893);
    }

    dispatch_get_specific(*v138);
    v140 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_217;
    }

    LODWORD(v177[0]) = 136446466;
    *(v177 + 4) = "NfRestoreReturnError";
    WORD2(v177[1]) = 1024;
    *(&v177[1] + 6) = 1893;
LABEL_216:
    _os_log_impl(&dword_2994B7000, v140, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Skipping Hammerfest restore.", v177, 0x12u);
    goto LABEL_217;
  }

  if (v157)
  {
    v133 = CFDictionaryGetValue(v9, @"AuxiliaryDevicePath");
    if (v133)
    {
      CFStringGetCString(v133, v165, 1024, 0x600u);
    }

    v172 |= 1u;
    v134 = CFDictionaryGetValue(v9, @"StockholmOptions");
    if (v134)
    {
      v135 = v134;
      v136 = CFDictionaryGetValue(v134, @"RestoreHammerfest");
      if (v136)
      {
        v137 = CFBooleanGetValue(v136) != 0;
      }

      else
      {
        v137 = 0;
      }

      v172 = v172 & 0xFE | v137;
      v143 = CFDictionaryGetValue(v135, @"HammerfestFirmwareType");
      if (v143 && CFStringCompare(v143, @"Manufacturing", 1uLL) == kCFCompareEqualTo)
      {
        v144 = v170 | 1;
      }

      else
      {
        v144 = v170 & 0xFE;
      }

      v170 = v144;
    }

    v173[0] = 0;
    v174 &= 0xFCu;
    v145 = v172;
    v146 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v147 = NFLogGetLogger();
    if ((v145 & 1) == 0)
    {
      if (v147)
      {
        v147(5, "%s:%i Skipping Hammerfest restore.", "NfRestoreReturnError", 1905);
      }

      dispatch_get_specific(*v146);
      v140 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_217;
      }

      LODWORD(v177[0]) = 136446466;
      *(v177 + 4) = "NfRestoreReturnError";
      WORD2(v177[1]) = 1024;
      *(&v177[1] + 6) = 1905;
      goto LABEL_216;
    }

    if (v147)
    {
      v147(6, "%s:%i **************** Restoring Hammerfest ****************", "NfRestoreReturnError", 1909);
    }

    dispatch_get_specific(*v146);
    v148 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v177[0]) = 136446466;
      *(v177 + 4) = "NfRestoreReturnError";
      WORD2(v177[1]) = 1024;
      *(&v177[1] + 6) = 1909;
      _os_log_impl(&dword_2994B7000, v148, OS_LOG_TYPE_DEFAULT, "%{public}s:%i **************** Restoring Hammerfest ****************", v177, 0x12u);
    }

    if (sub_2994C2EDC("hammerfest-spmi") || (sub_2994BAFAC(1) & 1) != 0)
    {
      if ((v166 & 2) == 0)
      {
        v13 = sub_2994BB3C0(buf, cf);
        goto LABEL_218;
      }

      v149 = 1;
      while (1)
      {
        dispatch_get_specific(*v146);
        v150 = NFLogGetLogger();
        if (v150)
        {
          v150(6, "%s:%i Iteration %d of %d", "NfRestoreReturnError", 1922, v149, v167);
        }

        dispatch_get_specific(*v146);
        v151 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v177[0]) = 136446978;
          *(v177 + 4) = "NfRestoreReturnError";
          WORD2(v177[1]) = 1024;
          *(&v177[1] + 6) = 1922;
          WORD1(v177[2]) = 1024;
          HIDWORD(v177[2]) = v149;
          LOWORD(v177[3]) = 1024;
          *(&v177[3] + 2) = v167;
          _os_log_impl(&dword_2994B7000, v151, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Iteration %d of %d", v177, 0x1Eu);
        }

        v152 = sub_2994BB3C0(buf, cf);
        if (v152)
        {
          break;
        }

        ++v149;
        if (v167)
        {
          v13 = 0;
          if (v149 > v167)
          {
            goto LABEL_218;
          }
        }
      }

      v13 = v152;
      dispatch_get_specific(*v146);
      v155 = NFLogGetLogger();
      if (v155)
      {
        v155(3, "%s:%i Failed at iteration %d", "NfRestoreReturnError", 1924, v149);
      }

      dispatch_get_specific(*v146);
      v127 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_218;
      }

      LODWORD(v177[0]) = 136446722;
      *(v177 + 4) = "NfRestoreReturnError";
      WORD2(v177[1]) = 1024;
      *(&v177[1] + 6) = 1924;
      WORD1(v177[2]) = 1024;
      HIDWORD(v177[2]) = v149;
      v128 = "%{public}s:%i Failed at iteration %d";
      goto LABEL_229;
    }

    dispatch_get_specific(*v146);
    v153 = NFLogGetLogger();
    if (v153)
    {
      v153(3, "%s:%i Failed to shut down Stockholm", "NfRestoreReturnError", 1912);
    }

    dispatch_get_specific(*v146);
    v154 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v177[0]) = 136446466;
      *(v177 + 4) = "NfRestoreReturnError";
      WORD2(v177[1]) = 1024;
      *(&v177[1] + 6) = 1912;
      _os_log_impl(&dword_2994B7000, v154, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to shut down Stockholm", v177, 0x12u);
    }

    v117 = 1913;
LABEL_263:
    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfRestoreReturnError", v117);
    v13 = 5;
    goto LABEL_218;
  }

LABEL_217:
  v13 = 0;
LABEL_218:
  if (cf)
  {
    CFRelease(cf);
  }

  if (qword_2A14631A8)
  {
    free(qword_2A14631A8);
  }

  qword_2A14631A8 = 0;
  if (v4)
  {
    *v4 = qword_2A1463198;
  }

  return v13;
}

uint64_t sub_2994BAFAC(int a1)
{
  v21 = *MEMORY[0x29EDCA608];
  sub_2994B8FB0();
  if (qword_2A14631A0)
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      if (a1 == 2)
      {
        v4 = "Hammerfest";
      }

      else
      {
        v4 = "Stockholm";
      }

      Logger(3, "%s:%i %s driver already open - can't interrupt", "_NFRestoreShutdownNFCC", 1707, v4);
    }

    dispatch_get_specific(*v2);
    v5 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    if (a1 == 2)
    {
      v6 = "Hammerfest";
    }

    else
    {
      v6 = "Stockholm";
    }

    *buf = 136446722;
    v16 = "_NFRestoreShutdownNFCC";
    v17 = 1024;
    v18 = 1707;
    v19 = 2080;
    v20 = v6;
    v7 = "%{public}s:%i %s driver already open - can't interrupt";
    v8 = v5;
    v9 = 28;
    goto LABEL_12;
  }

  if (NFDriverOpen())
  {
    v10 = NFDriverNFCCPowerOff();
    NFDriverClose();
    return v10;
  }

  v12 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v13(3, "%s:%i Failed to open driver", "_NFRestoreShutdownNFCC", 1713);
  }

  dispatch_get_specific(*v12);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v16 = "_NFRestoreShutdownNFCC";
    v17 = 1024;
    v18 = 1713;
    v7 = "%{public}s:%i Failed to open driver";
    v8 = v14;
    v9 = 18;
LABEL_12:
    _os_log_impl(&dword_2994B7000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
  }

  return 0;
}

uint64_t NfRestoreCopyUniqueFDRKey(uint64_t a1, CFErrorRef *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  NFLogSetLogger();
  NFLogSetLogger();
  sub_2994B8FB0();
  v3 = qword_2A14631A0;
  if (qword_2A14631A0 || (qword_2A14631A0 = NFDriverOpen()) != 0)
  {
    UniqueFDRKey = NFDriverGetUniqueFDRKey();
    if (a2)
    {
      if (!UniqueFDRKey)
      {
        v5 = CFErrorCreate(0, @"com.apple.nfstack", 0, 0);
        *a2 = v5;
        if (v5)
        {
          CFAutorelease(v5);
        }
      }
    }

    if (!v3)
    {
      NFDriverClose();
      qword_2A14631A0 = 0;
    }
  }

  else
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to load driver", "NfRestoreCopyUniqueFDRKey", 1971);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      code[0] = 136446466;
      *&code[1] = "NfRestoreCopyUniqueFDRKey";
      v12 = 1024;
      v13 = 1971;
      _os_log_impl(&dword_2994B7000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", code, 0x12u);
    }

    if (a2)
    {
      v9 = CFErrorCreate(0, @"com.apple.nfstack", 9, 0);
      *a2 = v9;
      if (v9)
      {
        CFAutorelease(v9);
      }
    }

    return 0;
  }

  return UniqueFDRKey;
}

uint64_t sub_2994BB3C0(_BYTE *a1, const __CFDictionary *a2)
{
  v48 = *MEMORY[0x29EDCA608];
  v4 = a1 + 4096;
  if (a1[4107])
  {
    sub_2994B8FB0();
  }

  else
  {
    sub_2994B8FB0();
  }

  if (qword_2A14631A0)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Driver already open. This is bad", "_NFRestore", 1748);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v43 = "_NFRestore";
      v44 = 1024;
      v45 = 1748;
      _os_log_impl(&dword_2994B7000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Driver already open. This is bad", buf, 0x12u);
    }

    return 4;
  }

  qword_2A14631A0 = NFDriverOpen();
  if (qword_2A14631A0)
  {
    NFDriverSetCallback();
    v9 = sub_2994BBC9C(qword_2A14631A0, a1, a2);
    if (v9)
    {
      if (v9 == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = v9;
      }

      goto LABEL_70;
    }

    if ((v4[8] & 4) != 0)
    {
      v8 = sub_2994BDE90(qword_2A14631A0, 1u);
      if (v8)
      {
        goto LABEL_70;
      }
    }

    else if (NFIsRestoreOS() && sub_2994BE234())
    {
      sub_2994BDE90(qword_2A14631A0, 0);
    }

    if ((v4[11] & 1) == 0)
    {
      v13 = qword_2A14631A0;
      v15 = v4[12];
      v14 = v4 + 12;
      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFLogGetLogger();
      if (v15)
      {
        if (v17)
        {
          v17(6, "%s:%i ", "_NFRestoreJcop", 610);
        }

        dispatch_get_specific(*v16);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v43 = "_NFRestoreJcop";
          v44 = 1024;
          v45 = 610;
          _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
        }

        Stack = NFDriverLoadStack();
        if (Stack && Stack != 24)
        {
          dispatch_get_specific(*v16);
          v31 = NFLogGetLogger();
          if (v31)
          {
            v31(3, "%s:%i Failed to load stack", "_NFRestoreJcop", 615);
          }

          dispatch_get_specific(*v16);
          v32 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v43 = "_NFRestoreJcop";
            v44 = 1024;
            v45 = 615;
            _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack", buf, 0x12u);
          }

          Message = NFDriverSerialDebugLastMessage();
          v34 = *MEMORY[0x29EDC9198];
          StackBreadcrumb = NFDriverGetStackBreadcrumb();
          v36 = &unk_2994C631B;
          if (Message)
          {
            v36 = Message;
          }

          sub_2994B8D74("com.apple.nfstack", v34, "Error 0x%04x at %s:%d: %llx %s", v34, "_NFRestoreJcop", 616, StackBreadcrumb, v36);
          free(Message);
          sub_2994BEEE0(v13);
          v8 = 9;
          goto LABEL_70;
        }

        v20 = sub_2994C22F4(v13, 1);
        if (!v20)
        {
          dispatch_get_specific(*v16);
          v37 = NFLogGetLogger();
          if (v37)
          {
            v37(3, "%s:%i Failed to open SE", "_NFRestoreJcop", 625);
          }

          dispatch_get_specific(*v16);
          v38 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v43 = "_NFRestoreJcop";
            v44 = 1024;
            v45 = 625;
            _os_log_impl(&dword_2994B7000, v38, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to open SE", buf, 0x12u);
          }

          v8 = 9;
          goto LABEL_69;
        }

        v21 = v20;
        if (*v14)
        {
          dispatch_get_specific(*v16);
          v22 = NFLogGetLogger();
          if (v22)
          {
            v22(6, "%s:%i Running postflight: %s", "_NFRestoreRunPostFlight", 572, v14);
          }

          dispatch_get_specific(*v16);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v43 = "_NFRestoreRunPostFlight";
            v44 = 1024;
            v45 = 572;
            v46 = 2080;
            v47 = v14;
            _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Running postflight: %s", buf, 0x1Cu);
          }

          v24 = NFDataCreateWithFile();
          if (v24)
          {
            v25 = v24;
            v26 = *(v24 + 8);
            v27 = malloc_type_calloc(1uLL, v26 + 1, 0x100004077774924uLL);
            strlcpy(v27, *v25, v26 + 1);
            v8 = sub_2994BFF0C(v21, v27);
            if (v8)
            {
              dispatch_get_specific(*v16);
              v28 = NFLogGetLogger();
              if (v28)
              {
                v28(3, "%s:%i Failed to run script", "_NFRestoreRunPostFlight", 588);
              }

              dispatch_get_specific(*v16);
              v29 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v43 = "_NFRestoreRunPostFlight";
                v44 = 1024;
                v45 = 588;
                _os_log_impl(&dword_2994B7000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to run script", buf, 0x12u);
              }
            }

            free(v27);
            NFDataRelease();
            goto LABEL_68;
          }

          dispatch_get_specific(*v16);
          v39 = NFLogGetLogger();
          if (v39)
          {
            v39(3, "%s:%i Failed to open %s", "_NFRestoreRunPostFlight", 577, v14);
          }

          dispatch_get_specific(*v16);
          v40 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v43 = "_NFRestoreRunPostFlight";
            v44 = 1024;
            v45 = 577;
            v46 = 2080;
            v47 = v14;
            _os_log_impl(&dword_2994B7000, v40, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to open %s", buf, 0x1Cu);
          }
        }

        v8 = 0;
LABEL_68:
        sub_2994C2D3C(v21);
LABEL_69:
        NFDriverUnloadStackAndLeaveHWEnabled();
        goto LABEL_70;
      }

      if (v17)
      {
        v17(6, "%s:%i Nothing to do", "_NFRestoreJcop", 606);
      }

      dispatch_get_specific(*v16);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v43 = "_NFRestoreJcop";
        v44 = 1024;
        v45 = 606;
        _os_log_impl(&dword_2994B7000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Nothing to do", buf, 0x12u);
      }
    }

    v8 = 0;
LABEL_70:
    NFDriverClose();
    qword_2A14631A0 = 0;
    return v8;
  }

  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(3, "%s:%i Failed to load driver", "_NFRestore", 1754);
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v43 = "_NFRestore";
    v44 = 1024;
    v45 = 1754;
    _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load driver", buf, 0x12u);
  }

  return 10;
}

void sub_2994BBBF4(uint64_t a1, char a2)
{
  v2 = MEMORY[0x29EDC9198];
  *MEMORY[0x29EDC9198] = a2;
  Message = NFDriverSerialDebugLastMessage();
  v4 = *v2;
  StackBreadcrumb = NFDriverGetStackBreadcrumb();
  v6 = &unk_2994C631B;
  if (Message)
  {
    v6 = Message;
  }

  sub_2994B8D74("com.apple.nfstack", v4, "Error 0x%04x at %s:%d: %llx %s", v4, "_NFRestoreGenericHardwareError", 541, StackBreadcrumb, v6);

  free(Message);
}

uint64_t sub_2994BBC9C(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v208 = *MEMORY[0x29EDCA608];
  v6 = sub_2994BE234();
  if (a3 || *(a2 + 2056))
  {
    v7 = sub_2994BE59C(a1, a2, a3);
    if (v7)
    {
      return v7;
    }

    v8 = a2 + 4096;
    if (NFDriverLoadStack())
    {
      v9 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to load stack - retrying FW download", "_NFRestoreLoadStackAndRestoreOnFailure", 1197);
      }

      dispatch_get_specific(*v9);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_NFRestoreLoadStackAndRestoreOnFailure";
        *&buf[12] = 1024;
        *&buf[14] = 1197;
        _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack - retrying FW download", buf, 0x12u);
      }

      if (a2)
      {
        *(a2 + 4105) = 257;
      }

      sub_2994BEEE0(a1);
      v12 = sub_2994BE59C(a1, a2, a3);
      v13 = MEMORY[0x29EDC9198];
      if (v12)
      {
        dispatch_get_specific(*v9);
        v14 = NFLogGetLogger();
        if (v14)
        {
          v14(3, "%s:%i Failed to restore after load failure.", "_NFRestoreLoadStackAndRestoreOnFailure", 1208);
        }

        dispatch_get_specific(*v9);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreLoadStackAndRestoreOnFailure";
          *&buf[12] = 1024;
          *&buf[14] = 1208;
          _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to restore after load failure.", buf, 0x12u);
        }

        Message = NFDriverSerialDebugLastMessage();
        v17 = *v13;
        StackBreadcrumb = NFDriverGetStackBreadcrumb();
        if (Message)
        {
          v19 = Message;
        }

        else
        {
          v19 = &unk_2994C631B;
        }

        sub_2994B8D74("com.apple.nfstack", v17, "Error 0x%04x at %s:%d: %llx %s", v17, "_NFRestoreLoadStackAndRestoreOnFailure", 1209, StackBreadcrumb, v19);
        free(Message);
LABEL_30:
        dispatch_get_specific(*v9);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v26(3, "%s:%i Failed to load stack", "NFRestoreNfc", 1543);
        }

        dispatch_get_specific(*v9);
        v27 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "NFRestoreNfc";
          *&buf[12] = 1024;
          *&buf[14] = 1543;
          _os_log_impl(&dword_2994B7000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack", buf, 0x12u);
        }

        v28 = NFDriverSerialDebugLastMessage();
        v29 = *v13;
        v30 = NFDriverGetStackBreadcrumb();
        if (v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = &unk_2994C631B;
        }

        sub_2994B8D74("com.apple.nfstack", v29, "Error 0x%04x at %s:%d: %llx %s", v29, "NFRestoreNfc", 1544, v30, v31);
        free(v28);
        return 9;
      }

      Stack = NFDriverLoadStack();
      dispatch_get_specific(*v9);
      v24 = NFLogGetLogger();
      if (Stack)
      {
        if (v24)
        {
          v24(3, "%s:%i Failed to load stack after re-restore.", "_NFRestoreLoadStackAndRestoreOnFailure", 1220);
        }

        dispatch_get_specific(*v9);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreLoadStackAndRestoreOnFailure";
          *&buf[12] = 1024;
          *&buf[14] = 1220;
          _os_log_impl(&dword_2994B7000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack after re-restore.", buf, 0x12u);
        }

        sub_2994BEEE0(a1);
        goto LABEL_30;
      }

      if (v24)
      {
        v24(6, "%s:%i Stack loaded after re-restore.", "_NFRestoreLoadStackAndRestoreOnFailure", 1216);
      }

      dispatch_get_specific(*v9);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_NFRestoreLoadStackAndRestoreOnFailure";
        *&buf[12] = 1024;
        *&buf[14] = 1216;
        _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Stack loaded after re-restore.", buf, 0x12u);
      }
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      *v192 = 0;
      if (!NFDriverReadATETrimVersion())
      {
        v33 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v34 = NFLogGetLogger();
        if (v34)
        {
          v34(6, "%s:%i ATE Trim version is %x (%d)", "_NFRestoreReadATETrimVersion", 1238, *v192, *v192);
        }

        dispatch_get_specific(*v33);
        v35 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446978;
          *&buf[4] = "_NFRestoreReadATETrimVersion";
          *&buf[12] = 1024;
          *&buf[14] = 1238;
          *&buf[18] = 1024;
          *&buf[20] = *v192;
          *&buf[24] = 1024;
          *&buf[26] = *v192;
          _os_log_impl(&dword_2994B7000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ATE Trim version is %x (%d)", buf, 0x1Eu);
        }
      }
    }

    if (v6)
    {
      if (*(a2 + 3080))
      {
        v36 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v37 = NFLogGetLogger();
        if (v37)
        {
          v37(6, "%s:%i Using data from %s", "_NFRestoreNfcRFStep", 1131, (a2 + 3080));
        }

        dispatch_get_specific(*v36);
        v38 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "_NFRestoreNfcRFStep";
          *&buf[12] = 1024;
          *&buf[14] = 1131;
          *&buf[18] = 2080;
          *&buf[20] = a2 + 3080;
          _os_log_impl(&dword_2994B7000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using data from %s", buf, 0x1Cu);
        }

        v39 = NFDataCreateWithFile();
        goto LABEL_55;
      }

      if (!a3)
      {
        goto LABEL_83;
      }

      memset(v192, 0, 44);
      if (!NFDriverGetControllerInfo())
      {
        v39 = 0;
        goto LABEL_55;
      }

      Value = CFDictionaryGetValue(a3, @"rf");
      if (Value)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
        if ((*(a2 + 4107) & 1) == 0)
        {
          v61 = 0;
LABEL_210:
          v143 = *(a2 + 4104);
          Mutable = CFStringCreateMutable(0, 128);
          v145 = sub_2994BF564(v192, v61, v143 & 1);
          if (v145 && (v146 = v145, v147 = strlen(v145), v147 >= 4) && (v148 = malloc_type_calloc(1uLL, v147 + 3, 0x100004077774924uLL)) != 0)
          {
            v149 = v148;
            v150 = strlen(v146);
            strncpy(v149, v146, v150);
            v151 = &v149[strlen(v146)];
            *(v151 - 1) = 1768714286;
            *v151 = 29811;
            v152 = CFStringCreateWithCString(0, v149, 0x8000100u);
            free(v149);
          }

          else
          {
            v152 = 0;
          }

          if (*&v192[4] <= 13)
          {
            if (*&v192[4] > 9)
            {
              if (*&v192[4] == 10 || *&v192[4] == 11)
              {
                v153 = @"SN200V_FW_B1_";
              }

              else
              {
                if (*&v192[4] != 12)
                {
                  goto LABEL_242;
                }

                if (v61)
                {
                  v153 = @"SN200V_FURY_FW_B1_";
                }

                else
                {
                  v153 = @"SN200V_FW_B1_";
                }
              }

              goto LABEL_241;
            }

            if ((*&v192[4] - 7) < 2)
            {
              v153 = @"SN100V_FW_A3_";
              goto LABEL_241;
            }

            if (*&v192[4] == 5)
            {
              if (Mutable)
              {
                CFRelease(Mutable);
              }

              v39 = NFDataCreateWithLength();
              if (MutableCopy)
              {
                goto LABEL_287;
              }

              goto LABEL_55;
            }
          }

          else
          {
            if (*&v192[4] < 18)
            {
              v153 = @"SN300V_FW_B0_";
LABEL_241:
              CFStringAppend(Mutable, v153);
              goto LABEL_242;
            }

            if ((*&v192[4] - 21) < 2)
            {
              goto LABEL_273;
            }

            if (*&v192[4] == 18)
            {
              v186 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v187 = NFLogGetLogger();
              if (v187)
              {
                v187(6, "%s:%i RF not supported", "NFRestoreRFSettingsForController", 874);
              }

              dispatch_get_specific(*v186);
              v180 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_273;
              }

              *buf = 136446466;
              *&buf[4] = "NFRestoreRFSettingsForController";
              *&buf[12] = 1024;
              *&buf[14] = 874;
              v181 = "%{public}s:%i RF not supported";
              goto LABEL_272;
            }

            if (*&v192[4] == 20 && (v61 & 1) != 0)
            {
              v153 = @"SN200V_FURY_FW_B1_";
              goto LABEL_241;
            }
          }

LABEL_242:
          v157 = v152;
          v188 = v192[12];
          v189 = v192[13];
          CFStringAppendFormat(Mutable, 0, @"%02X_%02X_%02X", *&v192[8], v192[13], v188);
          Count = CFDictionaryGetCount(MutableCopy);
          v159 = malloc_type_calloc(1uLL, 8 * Count, 0x6004044C4A2DFuLL);
          v190 = MutableCopy;
          CFDictionaryGetKeysAndValues(MutableCopy, v159, 0);
          v160 = MEMORY[0x29EDB9000];
          v161 = CFArrayCreate(0, v159, Count, MEMORY[0x29EDB9000]);
          v162 = CFArrayGetCount(v161);
          v163 = CFArrayCreateMutable(0, v162, v160);
          if (v162 >= 1)
          {
            for (i = 0; i != v162; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v161, i);
              v166 = ValueAtIndex;
              if ((!Mutable || CFStringHasPrefix(ValueAtIndex, Mutable)) && CFStringHasSuffix(v166, @".plist"))
              {
                CFArrayAppendValue(v163, v166);
              }
            }
          }

          CFRelease(v161);
          free(v159);
          if (v163)
          {
            MutableCopy = v190;
            v152 = v157;
            if (!CFArrayGetCount(v163))
            {
              v182 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v183 = NFLogGetLogger();
              if (v183)
              {
                v183(3, "%s:%i Failed to find matching file for %02x_%02x_%02x (%@)", "NFRestoreRFSettingsForController", 909, *&v192[8], v189, v188, Mutable);
              }

              dispatch_get_specific(*v182);
              v184 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_279;
              }

              *buf = 136447490;
              *&buf[4] = "NFRestoreRFSettingsForController";
              *&buf[12] = 1024;
              *&buf[14] = 909;
              *&buf[18] = 1024;
              *&buf[20] = *&v192[8];
              *&buf[24] = 1024;
              *&buf[26] = v189;
              *&buf[30] = 1024;
              *&buf[32] = v188;
              *&buf[36] = 2112;
              *&buf[38] = Mutable;
              v175 = "%{public}s:%i Failed to find matching file for %02x_%02x_%02x (%@)";
              v176 = v184;
              v177 = 46;
              goto LABEL_278;
            }

            if (CFArrayGetCount(v163) < 2)
            {
              v185 = CFArrayGetValueAtIndex(v163, 0);
              v39 = sub_2994BFCFC(v190, v185);
              if (!Mutable)
              {
LABEL_282:
                if (v163)
                {
                  CFRelease(v163);
                }

                if (v152)
                {
                  CFRelease(v152);
                }

                if (MutableCopy)
                {
LABEL_287:
                  CFRelease(MutableCopy);
                }

LABEL_55:
                if (v39)
                {
                  v40 = NFDriverRFSettingsSetup();
                  NFDataRelease();
                  if (v40 <= 0xB && ((1 << v40) & 0xC01) != 0)
                  {
                    v7 = 0;
LABEL_108:
                    if ((*(a1 + 56) & 1) == 0 && NFDriverDisableLPCDAssist())
                    {
                      v80 = MEMORY[0x29EDC9730];
                      dispatch_get_specific(*MEMORY[0x29EDC9730]);
                      v81 = NFLogGetLogger();
                      if (v81)
                      {
                        v81(5, "%s:%i Update LPCD settings failed; continue", "NFRestoreNfc", 1559);
                      }

                      dispatch_get_specific(*v80);
                      v82 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136446466;
                        *&buf[4] = "NFRestoreNfc";
                        *&buf[12] = 1024;
                        *&buf[14] = 1559;
                        _os_log_impl(&dword_2994B7000, v82, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Update LPCD settings failed; continue", buf, 0x12u);
                      }
                    }

                    NFDriverUnloadStackAndLeaveHWEnabled();
                    if (NFDriverLoadStack())
                    {
                      v83 = MEMORY[0x29EDC9730];
                      dispatch_get_specific(*MEMORY[0x29EDC9730]);
                      v84 = NFLogGetLogger();
                      if (v84)
                      {
                        v84(3, "%s:%i Failed to load stack after RF settings. Bailing", "NFRestoreNfc", 1569);
                      }

                      dispatch_get_specific(*v83);
                      v85 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        *&buf[4] = "NFRestoreNfc";
                        *&buf[12] = 1024;
                        *&buf[14] = 1569;
                        _os_log_impl(&dword_2994B7000, v85, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack after RF settings. Bailing", buf, 0x12u);
                      }

                      v86 = NFDriverSerialDebugLastMessage();
                      v87 = *MEMORY[0x29EDC9198];
                      v88 = NFDriverGetStackBreadcrumb();
                      v89 = &unk_2994C631B;
                      if (v86)
                      {
                        v89 = v86;
                      }

                      sub_2994B8D74("com.apple.nfstack", v87, "Error 0x%04x at %s:%d: %llx %s", v87, "NFRestoreNfc", 1570, v88, v89);
                      free(v86);
                      sub_2994BEEE0(a1);
                      return 9;
                    }

                    goto LABEL_185;
                  }

                  v73 = MEMORY[0x29EDC9730];
                  dispatch_get_specific(*MEMORY[0x29EDC9730]);
                  v74 = NFLogGetLogger();
                  if (v74)
                  {
                    v74(3, "%s:%i Failed to update RF settings.", "_NFRestoreNfcRFStep", 1178);
                  }

                  dispatch_get_specific(*v73);
                  v75 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "_NFRestoreNfcRFStep";
                    *&buf[12] = 1024;
                    *&buf[14] = 1178;
                    _os_log_impl(&dword_2994B7000, v75, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update RF settings.", buf, 0x12u);
                  }

                  v76 = NFDriverSerialDebugLastMessage();
                  v77 = *MEMORY[0x29EDC9198];
                  v78 = NFDriverGetStackBreadcrumb();
                  v79 = &unk_2994C631B;
                  if (v76)
                  {
                    v79 = v76;
                  }

                  sub_2994B8D74("com.apple.nfstack", v77, "Error 0x%04x at %s:%d: %llx %s", v77, "_NFRestoreNfcRFStep", 1179, v78, v79);
                  free(v76);
LABEL_107:
                  NFDriverUnloadStackAndLeaveHWEnabled();
                  v7 = 9;
                  goto LABEL_108;
                }

LABEL_83:
                v62 = MEMORY[0x29EDC9730];
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v63 = NFLogGetLogger();
                if (v63)
                {
                  v63(3, "%s:%i Bundle is missing RF settings - NFCC might fail RF operation", "_NFRestoreNfcRFStep", 1168);
                }

                dispatch_get_specific(*v62);
                v64 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  *&buf[4] = "_NFRestoreNfcRFStep";
                  *&buf[12] = 1024;
                  *&buf[14] = 1168;
                  _os_log_impl(&dword_2994B7000, v64, OS_LOG_TYPE_ERROR, "%{public}s:%i Bundle is missing RF settings - NFCC might fail RF operation", buf, 0x12u);
                }

                sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcRFStep", 1169);
                goto LABEL_107;
              }

LABEL_281:
              CFRelease(Mutable);
              goto LABEL_282;
            }

            if (v157 && CFArrayGetCount(v163) >= 1)
            {
              v39 = 0;
              v167 = 0;
              v168 = MEMORY[0x29EDC9730];
              do
              {
                v169 = CFArrayGetValueAtIndex(v163, v167);
                if (CFStringCompare(v169, v157, 1uLL) == kCFCompareEqualTo)
                {
                  if (!CFStringGetCStringPtr(v157, 0x8000100u))
                  {
                    dispatch_get_specific(*v168);
                    v170 = NFLogGetLogger();
                    if (v170)
                    {
                      v170(6, "%s:%i Found exact plist match: %s", "NFRestoreRFSettingsForController", 918, 0);
                    }

                    dispatch_get_specific(*v168);
                    v171 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136446722;
                      *&buf[4] = "NFRestoreRFSettingsForController";
                      *&buf[12] = 1024;
                      *&buf[14] = 918;
                      *&buf[18] = 2080;
                      *&buf[20] = 0;
                      _os_log_impl(&dword_2994B7000, v171, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found exact plist match: %s", buf, 0x1Cu);
                    }
                  }

                  v39 = sub_2994BFCFC(v190, v169);
                }

                ++v167;
              }

              while (CFArrayGetCount(v163) > v167);
              MutableCopy = v190;
              v152 = v157;
              if (v39)
              {
LABEL_280:
                if (!Mutable)
                {
                  goto LABEL_282;
                }

                goto LABEL_281;
              }
            }

            v172 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v173 = NFLogGetLogger();
            if (v173)
            {
              v173(3, "%s:%i More than 1 file matching %02x_%02x_%02x", "NFRestoreRFSettingsForController", 926, *&v192[8], v189, v188);
            }

            dispatch_get_specific(*v172);
            v174 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
            {
              *buf = 136447234;
              *&buf[4] = "NFRestoreRFSettingsForController";
              *&buf[12] = 1024;
              *&buf[14] = 926;
              *&buf[18] = 1024;
              *&buf[20] = *&v192[8];
              *&buf[24] = 1024;
              *&buf[26] = v189;
              *&buf[30] = 1024;
              *&buf[32] = v188;
              v175 = "%{public}s:%i More than 1 file matching %02x_%02x_%02x";
              v176 = v174;
              v177 = 36;
LABEL_278:
              _os_log_impl(&dword_2994B7000, v176, OS_LOG_TYPE_ERROR, v175, buf, v177);
            }

LABEL_279:
            v39 = 0;
            goto LABEL_280;
          }

          v178 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v179 = NFLogGetLogger();
          MutableCopy = v190;
          v152 = v157;
          if (v179)
          {
            v179(6, "%s:%i No matching files", "NFRestoreRFSettingsForController", 906);
          }

          dispatch_get_specific(*v178);
          v180 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "NFRestoreRFSettingsForController";
            *&buf[12] = 1024;
            *&buf[14] = 906;
            v181 = "%{public}s:%i No matching files";
LABEL_272:
            _os_log_impl(&dword_2994B7000, v180, OS_LOG_TYPE_DEFAULT, v181, buf, 0x12u);
          }

LABEL_273:
          v163 = 0;
          goto LABEL_279;
        }

        v142 = CFDictionaryGetValue(a3, @"fury-rf");
        if (v142)
        {
          CFDictionaryApplyFunction(v142, sub_2994BFEF8, MutableCopy);
          v61 = *(a2 + 4107) & 1;
          goto LABEL_210;
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        v154 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v155 = NFLogGetLogger();
        if (v155)
        {
          v155(4, "%s:%i Bundle is missing folder: fury-rf", "_NFRestoreNfcRFStep", 1152);
        }

        dispatch_get_specific(*v154);
        v156 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreNfcRFStep";
          *&buf[12] = 1024;
          *&buf[14] = 1152;
          _os_log_impl(&dword_2994B7000, v156, OS_LOG_TYPE_ERROR, "%{public}s:%i Bundle is missing folder: fury-rf", buf, 0x12u);
        }

        v7 = 0;
      }

      else
      {
        v139 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v140 = NFLogGetLogger();
        if (v140)
        {
          v140(3, "%s:%i Bundle is missing folder: rf", "_NFRestoreNfcRFStep", 1138);
        }

        dispatch_get_specific(*v139);
        v141 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreNfcRFStep";
          *&buf[12] = 1024;
          *&buf[14] = 1138;
          _os_log_impl(&dword_2994B7000, v141, OS_LOG_TYPE_ERROR, "%{public}s:%i Bundle is missing folder: rf", buf, 0x12u);
        }

        sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcRFStep", 1139);
        v7 = 5;
      }

      NFDriverUnloadStackAndLeaveHWEnabled();
      goto LABEL_108;
    }

    v191 = -1;
    memset(buf, 0, 44);
    if (NFDriverGetControllerInfo())
    {
      if (*&buf[4] == 18)
      {
        v41 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v42 = NFLogGetLogger();
        if (v42)
        {
          v42(6, "%s:%i Skipping SPMIIRQ", "_NFRestoreConfigureSPMIIRQ", 1264);
        }

        dispatch_get_specific(*v41);
        v43 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *v192 = 136446466;
          *&v192[4] = "_NFRestoreConfigureSPMIIRQ";
          *&v192[12] = 1024;
          *&v192[14] = 1264;
          v44 = "%{public}s:%i Skipping SPMIIRQ";
LABEL_129:
          _os_log_impl(&dword_2994B7000, v43, OS_LOG_TYPE_DEFAULT, v44, v192, 0x12u);
          goto LABEL_130;
        }

        goto LABEL_130;
      }

      v65 = sub_2994C4D84(&v191);
      if (!v65)
      {
        v91 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v92 = NFLogGetLogger();
        if (v92)
        {
          v92(6, "%s:%i No external SPMIIRQ", "_NFRestoreConfigureSPMIIRQ", 1270);
        }

        dispatch_get_specific(*v91);
        v43 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *v192 = 136446466;
          *&v192[4] = "_NFRestoreConfigureSPMIIRQ";
          *&v192[12] = 1024;
          *&v192[14] = 1270;
          v44 = "%{public}s:%i No external SPMIIRQ";
          goto LABEL_129;
        }

LABEL_130:
        memset(buf, 0, 44);
        if ((NFProductIsPad() & 1) == 0 && (NFProductIsMac() & 1) == 0 && !NFProductIsVision())
        {
          goto LABEL_156;
        }

        if (NFDriverGetControllerInfo())
        {
          if (*&buf[4] != 18)
          {
            goto LABEL_156;
          }

          v93 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v94 = NFLogGetLogger();
          if (v94)
          {
            v94(6, "%s:%i Configuring RSTN delay...", "_NFRestoreConfigureRSTNDelay", 1304);
          }

          dispatch_get_specific(*v93);
          v95 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            *v192 = 136446466;
            *&v192[4] = "_NFRestoreConfigureRSTNDelay";
            *&v192[12] = 1024;
            *&v192[14] = 1304;
            _os_log_impl(&dword_2994B7000, v95, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Configuring RSTN delay...", v192, 0x12u);
          }

          v96 = NFDriverConfigurRSTNDelay();
          if (!v96)
          {
LABEL_156:
            if ((NFGetProductType() & 0xFFFFFFFC) == 0x44)
            {
              v113 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v114 = NFLogGetLogger();
              if (v114)
              {
                v114(6, "%s:%i Configuring I2C for LPM...", "_NFRestoreConfigureI2CForLPM", 1327);
              }

              dispatch_get_specific(*v113);
              v115 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "_NFRestoreConfigureI2CForLPM";
                *&buf[12] = 1024;
                *&buf[14] = 1327;
                _os_log_impl(&dword_2994B7000, v115, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Configuring I2C for LPM...", buf, 0x12u);
              }

              v7 = NFDriverConfigureI2CForLPM();
              if (v7)
              {
                dispatch_get_specific(*v113);
                v116 = NFLogGetLogger();
                if (v116)
                {
                  v116(3, "%s:%i Failed to configure I2C for LPM: %d", "_NFRestoreConfigureI2CForLPM", 1330, v7);
                }

                dispatch_get_specific(*v113);
                v117 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  *&buf[4] = "_NFRestoreConfigureI2CForLPM";
                  *&buf[12] = 1024;
                  *&buf[14] = 1330;
                  *&buf[18] = 1024;
                  *&buf[20] = v7;
                  _os_log_impl(&dword_2994B7000, v117, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure I2C for LPM: %d", buf, 0x18u);
                }

                dispatch_get_specific(*v113);
                v118 = NFLogGetLogger();
                if (v118)
                {
                  v118(3, "%s:%i Failed to configure I2C for LPM..", "NFRestoreNfc", 1590);
                }

                dispatch_get_specific(*v113);
                v119 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  *&buf[4] = "NFRestoreNfc";
                  *&buf[12] = 1024;
                  *&buf[14] = 1590;
                  _os_log_impl(&dword_2994B7000, v119, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure I2C for LPM..", buf, 0x12u);
                }

                v120 = NFDriverSerialDebugLastMessage();
                v121 = *MEMORY[0x29EDC9198];
                v122 = NFDriverGetStackBreadcrumb();
                v123 = &unk_2994C631B;
                if (v120)
                {
                  v123 = v120;
                }

                sub_2994B8D74("com.apple.nfstack", v121, "Error 0x%04x at %s:%d: %llx %s", v121, "NFRestoreNfc", 1591, v122, v123);
                free(v120);
                v7 = 9;
              }
            }

            else
            {
              v7 = 0;
            }

            if (*(a1 + 58) == 1)
            {
              if (!NFDriverDisableBoost())
              {
                goto LABEL_185;
              }

              v124 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v125 = NFLogGetLogger();
              if (v125)
              {
                v125(3, "%s:%i Failed to disable boost", "NFRestoreNfc", 1598);
              }

              dispatch_get_specific(*v124);
              v126 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_185;
              }

              *buf = 136446466;
              *&buf[4] = "NFRestoreNfc";
              *&buf[12] = 1024;
              *&buf[14] = 1598;
              v127 = "%{public}s:%i Failed to disable boost";
              v128 = v126;
              v129 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v130 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v131 = NFLogGetLogger();
              if (v131)
              {
                v131(6, "%s:%i No RF for this device.", "NFRestoreNfc", 1601);
              }

              dispatch_get_specific(*v130);
              v132 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_185;
              }

              *buf = 136446466;
              *&buf[4] = "NFRestoreNfc";
              *&buf[12] = 1024;
              *&buf[14] = 1601;
              v127 = "%{public}s:%i No RF for this device.";
              v128 = v132;
              v129 = OS_LOG_TYPE_DEFAULT;
            }

            _os_log_impl(&dword_2994B7000, v128, v129, v127, buf, 0x12u);
LABEL_185:
            v207 = 0;
            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v197 = 0u;
            v198 = 0u;
            v196 = 0u;
            v194 = 0u;
            v195 = 0u;
            memset(buf, 0, sizeof(buf));
            if (!NFDriverReadPageEraseCounter())
            {
              NFDriverPrintPageEraseCounter();
            }

            if (*(v8 + 1036))
            {
              v133 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v134 = NFLogGetLogger();
              if (v134)
              {
                v134(6, "%s:%i Erasing firmware flags.", "NFRestoreNfc", 1609);
              }

              dispatch_get_specific(*v133);
              v135 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "NFRestoreNfc";
                *&buf[12] = 1024;
                *&buf[14] = 1609;
                _os_log_impl(&dword_2994B7000, v135, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Erasing firmware flags.", buf, 0x12u);
              }

              if (NFDriverResetFWFlags())
              {
                v7 = 9;
              }

              else
              {
                v7 = 0;
              }
            }

            NFDriverUnloadStackAndLeaveHWEnabled();
            if ((*(v8 + 11) & 0x10) != 0 && v7)
            {
              v136 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v137 = NFLogGetLogger();
              if (v137)
              {
                v137(3, "%s:%i Dumping EEPROM after failure", "NFRestoreNfc", 1616);
              }

              dispatch_get_specific(*v136);
              v138 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "NFRestoreNfc";
                *&buf[12] = 1024;
                *&buf[14] = 1616;
                _os_log_impl(&dword_2994B7000, v138, OS_LOG_TYPE_ERROR, "%{public}s:%i Dumping EEPROM after failure", buf, 0x12u);
              }

              sub_2994BEEE0(a1);
            }

            return v7;
          }

          v97 = v96;
          dispatch_get_specific(*v93);
          v98 = NFLogGetLogger();
          if (v98)
          {
            v98(3, "%s:%i Failed to configure RSTN delay: %d", "_NFRestoreConfigureRSTNDelay", 1307, v97);
          }

          dispatch_get_specific(*v93);
          v99 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
LABEL_149:
            v106 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v107 = NFLogGetLogger();
            if (v107)
            {
              v107(3, "%s:%i Failed to configure RSTN delay..", "NFRestoreNfc", 1584);
            }

            dispatch_get_specific(*v106);
            v108 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "NFRestoreNfc";
              *&buf[12] = 1024;
              *&buf[14] = 1584;
              _os_log_impl(&dword_2994B7000, v108, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure RSTN delay..", buf, 0x12u);
            }

            v109 = NFDriverSerialDebugLastMessage();
            v110 = *MEMORY[0x29EDC9198];
            v111 = NFDriverGetStackBreadcrumb();
            v112 = &unk_2994C631B;
            if (v109)
            {
              v112 = v109;
            }

            sub_2994B8D74("com.apple.nfstack", v110, "Error 0x%04x at %s:%d: %llx %s", v110, "NFRestoreNfc", 1585, v111, v112);
            free(v109);
            goto LABEL_156;
          }

          *v192 = 136446722;
          *&v192[4] = "_NFRestoreConfigureRSTNDelay";
          *&v192[12] = 1024;
          *&v192[14] = 1307;
          *&v192[18] = 1024;
          *&v192[20] = v97;
          v100 = "%{public}s:%i Failed to configure RSTN delay: %d";
          v101 = v99;
          v102 = 24;
        }

        else
        {
          v103 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v104 = NFLogGetLogger();
          if (v104)
          {
            v104(3, "%s:%i Failed to get controller info..", "_NFRestoreConfigureRSTNDelay", 1299);
          }

          dispatch_get_specific(*v103);
          v105 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          *v192 = 136446466;
          *&v192[4] = "_NFRestoreConfigureRSTNDelay";
          *&v192[12] = 1024;
          *&v192[14] = 1299;
          v100 = "%{public}s:%i Failed to get controller info..";
          v101 = v105;
          v102 = 18;
        }

        _os_log_impl(&dword_2994B7000, v101, OS_LOG_TYPE_ERROR, v100, v192, v102);
        goto LABEL_149;
      }

      if (v65 < 0)
      {
        v51 = 4;
        goto LABEL_71;
      }

      if (v191 == 255)
      {
        goto LABEL_130;
      }

      v66 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v67 = NFLogGetLogger();
      if (v67)
      {
        v67(6, "%s:%i Configuring NFCC to use GPIO %d as data IRQ", "_NFRestoreConfigureSPMIIRQ", 1277, v191);
      }

      dispatch_get_specific(*v66);
      v68 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *v192 = 136446722;
        *&v192[4] = "_NFRestoreConfigureSPMIIRQ";
        *&v192[12] = 1024;
        *&v192[14] = 1277;
        *&v192[18] = 1024;
        *&v192[20] = v191;
        _os_log_impl(&dword_2994B7000, v68, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Configuring NFCC to use GPIO %d as data IRQ", v192, 0x18u);
      }

      v69 = NFDriverConfigureSPMIIRQ();
      if (!v69)
      {
        goto LABEL_130;
      }

      v70 = v69;
      dispatch_get_specific(*v66);
      v71 = NFLogGetLogger();
      if (v71)
      {
        v71(3, "%s:%i Failed to configure NFCC to use GPIO %d as data IRQ : %d", "_NFRestoreConfigureSPMIIRQ", 1280, v191, v70);
      }

      dispatch_get_specific(*v66);
      v72 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
LABEL_70:
        v51 = 9;
LABEL_71:
        v52 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v53 = NFLogGetLogger();
        if (v53)
        {
          v53(3, "%s:%i Failed to reconfigure I/O : 0x%x", "NFRestoreNfc", 1578, v51);
        }

        dispatch_get_specific(*v52);
        v54 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "NFRestoreNfc";
          *&buf[12] = 1024;
          *&buf[14] = 1578;
          *&buf[18] = 1024;
          *&buf[20] = v51;
          _os_log_impl(&dword_2994B7000, v54, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to reconfigure I/O : 0x%x", buf, 0x18u);
        }

        v55 = NFDriverSerialDebugLastMessage();
        v56 = *MEMORY[0x29EDC9198];
        v57 = NFDriverGetStackBreadcrumb();
        v58 = &unk_2994C631B;
        if (v55)
        {
          v58 = v55;
        }

        sub_2994B8D74("com.apple.nfstack", v56, "Error 0x%04x at %s:%d: %llx %s", v56, "NFRestoreNfc", 1579, v57, v58);
        free(v55);
        goto LABEL_130;
      }

      *v192 = 136446978;
      *&v192[4] = "_NFRestoreConfigureSPMIIRQ";
      *&v192[12] = 1024;
      *&v192[14] = 1280;
      *&v192[18] = 1024;
      *&v192[20] = v191;
      *&v192[24] = 1024;
      *&v192[26] = v70;
      v48 = "%{public}s:%i Failed to configure NFCC to use GPIO %d as data IRQ : %d";
      v49 = v72;
      v50 = 30;
    }

    else
    {
      v45 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v46 = NFLogGetLogger();
      if (v46)
      {
        v46(3, "%s:%i Failed to get controller info..", "_NFRestoreConfigureSPMIIRQ", 1259);
      }

      dispatch_get_specific(*v45);
      v47 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *v192 = 136446466;
      *&v192[4] = "_NFRestoreConfigureSPMIIRQ";
      *&v192[12] = 1024;
      *&v192[14] = 1259;
      v48 = "%{public}s:%i Failed to get controller info..";
      v49 = v47;
      v50 = 18;
    }

    _os_log_impl(&dword_2994B7000, v49, OS_LOG_TYPE_ERROR, v48, v192, v50);
    goto LABEL_70;
  }

  v20 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v21(6, "%s:%i Nothing to do", "NFRestoreNfc", 1518);
  }

  dispatch_get_specific(*v20);
  v22 = NFSharedLogGetLogger();
  v7 = 0;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "NFRestoreNfc";
    *&buf[12] = 1024;
    *&buf[14] = 1518;
    _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Nothing to do", buf, 0x12u);
    return 0;
  }

  return v7;
}

uint64_t sub_2994BDE90(uint64_t a1, unsigned __int8 a2)
{
  v25 = *MEMORY[0x29EDCA608];
  if ((NFProductIsSIP() & 1) != 0 || (NFProductIsNED() & 1) != 0 || NFProductIsDevBoard())
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i This is a SIP, NED or Dev, skipping antenna test", "_NfRestoreRunAntennaSelfCheck", 250);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    v6 = 0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v20 = "_NfRestoreRunAntennaSelfCheck";
      v21 = 1024;
      v22 = 250;
      _os_log_impl(&dword_2994B7000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i This is a SIP, NED or Dev, skipping antenna test", buf, 0x12u);
      return 0;
    }

    return v6;
  }

  if (!NFDriverLoadStack())
  {
    v11 = NFDriverAntennaSelfTest();
    if (v11)
    {
      v12 = v11;
      if (v11 != 19)
      {
        v13 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v14 = NFLogGetLogger();
        if (v14)
        {
          v14(3, "%s:%i Failed to check antenna : 0x%x", "_NfRestoreRunAntennaSelfCheck", 264, v12);
        }

        dispatch_get_specific(*v13);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v20 = "_NfRestoreRunAntennaSelfCheck";
          v21 = 1024;
          v22 = 264;
          v23 = 1024;
          v24 = v12;
          _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to check antenna : 0x%x", buf, 0x18u);
        }

        v6 = 9;
        goto LABEL_31;
      }
    }

    else
    {
      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v17(6, "%s:%i TX LDO current is %d", "_NfRestoreRunAntennaSelfCheck", 267, 0);
      }

      dispatch_get_specific(*v16);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v20 = "_NfRestoreRunAntennaSelfCheck";
        v21 = 1024;
        v22 = 267;
        v23 = 1024;
        v24 = 0;
        _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i TX LDO current is %d", buf, 0x18u);
      }

      if (sub_2994BE234())
      {
        if (a2)
        {
          v6 = 10;
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_31;
      }
    }

    v6 = 0;
LABEL_31:
    NFDriverUnloadStackAndLeaveHWEnabled();
    return v6;
  }

  v8 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v9(3, "%s:%i Failed to load stack", "_NfRestoreRunAntennaSelfCheck", 256);
  }

  dispatch_get_specific(*v8);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v20 = "_NfRestoreRunAntennaSelfCheck";
    v21 = 1024;
    v22 = 256;
    _os_log_impl(&dword_2994B7000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to load stack", buf, 0x12u);
  }

  return 9;
}

BOOL sub_2994BE234()
{
  v30 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"nfcWithRadio", 0, 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      v6 = CFGetTypeID(CFProperty);
      if (v6 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(v5);
        v8 = malloc_type_calloc(1uLL, Length, 0x100004077774924uLL);
        BytePtr = CFDataGetBytePtr(v5);
        v10 = memcmp(v8, BytePtr, Length);
        v11 = v10 != 0;
        v12 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          if (v10)
          {
            v14 = "present";
          }

          else
          {
            v14 = "absent";
          }

          Logger(6, "%s:%i Radio %s.", "_NfRestoreHasRadio", 1003, v14);
        }

        dispatch_get_specific(*v12);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if (v10)
          {
            v16 = "present";
          }

          else
          {
            v16 = "absent";
          }

          *buf = 136446722;
          v25 = "_NfRestoreHasRadio";
          v26 = 1024;
          v27 = 1003;
          v28 = 2080;
          v29 = v16;
          _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Radio %s.", buf, 0x1Cu);
        }

        free(v8);
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v20 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(6, "%s:%i No radio key, skipping RF settings.", "_NfRestoreHasRadio", 1008);
      }

      dispatch_get_specific(*v20);
      v22 = NFSharedLogGetLogger();
      v11 = 0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v25 = "_NfRestoreHasRadio";
        v26 = 1024;
        v27 = 1008;
        _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i No radio key, skipping RF settings.", buf, 0x12u);
        v11 = 0;
      }
    }

    IOObjectRelease(v3);
  }

  else
  {
    v17 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(3, "%s:%i Failed find IOKit service", "_NfRestoreHasRadio", 1013);
    }

    dispatch_get_specific(*v17);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v25 = "_NfRestoreHasRadio";
      v26 = 1024;
      v27 = 1013;
      _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    return 0;
  }

  return v11;
}

uint64_t sub_2994BE59C(uint64_t a1, uint64_t a2, const void *a3)
{
  v55 = *MEMORY[0x29EDCA608];
  v4 = (a2 + 4096);
  if (*(a2 + 2056))
  {
    v5 = (a2 + 2056);
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i %s", "_NFRestoreNfcFirmwareStep", 1035, v5);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFRestoreNfcFirmwareStep";
      *&buf[12] = 1024;
      *&buf[14] = 1035;
      *&buf[18] = 2080;
      *&buf[20] = v5;
      _os_log_impl(&dword_2994B7000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s", buf, 0x1Cu);
    }

    if (NFDataCreateWithFile())
    {
      if (NFDriverUpdateFirmware())
      {
        dispatch_get_specific(*v6);
        v9 = NFLogGetLogger();
        if (v9)
        {
          v9(3, "%s:%i Failed to install FW", "_NFRestoreNfcFirmwareStep", 1046);
        }

        dispatch_get_specific(*v6);
        v10 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFRestoreNfcFirmwareStep";
          *&buf[12] = 1024;
          *&buf[14] = 1046;
          _os_log_impl(&dword_2994B7000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to install FW", buf, 0x12u);
        }

        Message = NFDriverSerialDebugLastMessage();
        v12 = *MEMORY[0x29EDC9198];
        StackBreadcrumb = NFDriverGetStackBreadcrumb();
        v14 = &unk_2994C631B;
        if (Message)
        {
          v14 = Message;
        }

        sub_2994B8D74("com.apple.nfstack", v12, "Error 0x%04x at %s:%d: %llx %s", v12, "_NFRestoreNfcFirmwareStep", 1047, StackBreadcrumb, v14);
LABEL_15:
        free(Message);
        return 5;
      }

      return 0;
    }

    dispatch_get_specific(*v6);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i Failed to read file: %s", "_NFRestoreNfcFirmwareStep", 1039, v5);
    }

    dispatch_get_specific(*v6);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "_NFRestoreNfcFirmwareStep";
      *&buf[12] = 1024;
      *&buf[14] = 1039;
      *&buf[18] = 2080;
      *&buf[20] = v5;
      _os_log_impl(&dword_2994B7000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read file: %s", buf, 0x1Cu);
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcFirmwareStep", 1040);
    return 7;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    memset(buf, 0, 44);
    if (NFDriverGetControllerInfo())
    {
      if (*buf == 160)
      {
        v17 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v18(3, "%s:%i Trying to restore unsupported HW. Bailing with success", "_NFRestoreNfcFirmwareStep", 1078);
        }

        dispatch_get_specific(*v17);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v48 = 136446466;
          v49 = "_NFRestoreNfcFirmwareStep";
          v50 = 1024;
          v51 = 1078;
          _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Trying to restore unsupported HW. Bailing with success", v48, 0x12u);
        }

        return 0;
      }

      if (v4[8])
      {
        v29 = "fw-mfg";
      }

      else
      {
        v29 = "fw";
      }

      v30 = "fury-fw-mfg";
      if ((v4[8] & 1) == 0)
      {
        v30 = "fury-fw";
      }

      if (v4[11])
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      v32 = CFStringCreateWithCString(0, v31, 0x8000100u);
      v33 = CFGetTypeID(a3);
      if (v33 != CFDictionaryGetTypeID())
      {
        v42 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v43 = NFLogGetLogger();
        if (v43)
        {
          v43(3, "%s:%i Incorrect bundle", "_NFRestoreNfcFirmwareStep", 1090);
        }

        dispatch_get_specific(*v42);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *v48 = 136446466;
          v49 = "_NFRestoreNfcFirmwareStep";
          v50 = 1024;
          v51 = 1090;
          _os_log_impl(&dword_2994B7000, v44, OS_LOG_TYPE_ERROR, "%{public}s:%i Incorrect bundle", v48, 0x12u);
        }

        sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcFirmwareStep", 1091);
        CFRelease(v32);
        return 5;
      }

      Value = CFDictionaryGetValue(a3, v32);
      CFRelease(v32);
      if (!Value)
      {
        v45 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v46 = NFLogGetLogger();
        if (v46)
        {
          v46(3, "%s:%i Bundle is missing folder: %s", "_NFRestoreNfcFirmwareStep", 1100, v31);
        }

        dispatch_get_specific(*v45);
        v47 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *v48 = 136446722;
          v49 = "_NFRestoreNfcFirmwareStep";
          v50 = 1024;
          v51 = 1100;
          v52 = 2080;
          v53 = v31;
          _os_log_impl(&dword_2994B7000, v47, OS_LOG_TYPE_ERROR, "%{public}s:%i Bundle is missing folder: %s", v48, 0x1Cu);
        }

        sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "_NFRestoreNfcFirmwareStep", 1101);
        return 5;
      }

      v15 = sub_2994BF21C(a1, buf, v4[11] & 1, v4[8] & 1, Value, v4[9], v4[10] != 0);
      if (v15)
      {
        v35 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v36(3, "%s:%i Failed to update FW: %s", "_NFRestoreNfcFirmwareStep", 1115, v31);
        }

        dispatch_get_specific(*v35);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *v48 = 136446722;
          v49 = "_NFRestoreNfcFirmwareStep";
          v50 = 1024;
          v51 = 1115;
          v52 = 2080;
          v53 = v31;
          _os_log_impl(&dword_2994B7000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update FW: %s", v48, 0x1Cu);
        }
      }
    }

    else
    {
      IsDevBoard = NFProductIsDevBoard();
      v24 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v25 = NFLogGetLogger();
      if (!IsDevBoard)
      {
        if (v25)
        {
          v25(3, "%s:%i Failed to get driver info", "_NFRestoreNfcFirmwareStep", 1070);
        }

        dispatch_get_specific(*v24);
        v38 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *v48 = 136446466;
          v49 = "_NFRestoreNfcFirmwareStep";
          v50 = 1024;
          v51 = 1070;
          _os_log_impl(&dword_2994B7000, v38, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get driver info", v48, 0x12u);
        }

        Message = NFDriverSerialDebugLastMessage();
        v39 = *MEMORY[0x29EDC9198];
        v40 = NFDriverGetStackBreadcrumb();
        v41 = &unk_2994C631B;
        if (Message)
        {
          v41 = Message;
        }

        sub_2994B8D74("com.apple.nfstack", v39, "Error 0x%04x at %s:%d: %llx %s", v39, "_NFRestoreNfcFirmwareStep", 1071, v40, v41);
        goto LABEL_15;
      }

      if (v25)
      {
        v25(4, "%s:%i Failed to get driver info", "_NFRestoreNfcFirmwareStep", 1065);
      }

      dispatch_get_specific(*v24);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v48 = 136446466;
        v49 = "_NFRestoreNfcFirmwareStep";
        v50 = 1024;
        v51 = 1065;
        _os_log_impl(&dword_2994B7000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get driver info", v48, 0x12u);
      }

      dispatch_get_specific(*v24);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(4, "%s:%i Assuming HW not present", "_NFRestoreNfcFirmwareStep", 1066);
      }

      dispatch_get_specific(*v24);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v48 = 136446466;
        v49 = "_NFRestoreNfcFirmwareStep";
        v50 = 1024;
        v51 = 1066;
        _os_log_impl(&dword_2994B7000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Assuming HW not present", v48, 0x12u);
      }

      return 1;
    }
  }

  return v15;
}

void sub_2994BEEE0(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  NFDriverRunIntegrityDebug();
  if (NFIsInternalBuild())
  {
    v1 = NFDriverDebugDumpMemory();
    if (v1)
    {
      v2 = v1;
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i EEPROM User Area Start:0x%08X End:0x%08X", "_NFRestoreDebugNFCCError", 327, *v2, v2[1]);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v4 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *v2;
        v6 = v2[1];
        *buf = 136446978;
        *&buf[4] = "_NFRestoreDebugNFCCError";
        *&buf[12] = 1024;
        *&buf[14] = 327;
        *&buf[18] = 1024;
        *&buf[20] = v5;
        *&buf[24] = 1024;
        *&buf[26] = v6;
        _os_log_impl(&dword_2994B7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i EEPROM User Area Start:0x%08X End:0x%08X", buf, 0x1Eu);
      }

      v7 = *(v2 + 1);
      if (v7)
      {
        v29 = 0u;
        memset(buf, 0, sizeof(buf));
        v8 = *v7;
        v9 = v7[1];
        v10 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v11 = NFLogGetLogger();
        dispatch_get_specific(*v10);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(*(v2 + 1) + 8);
          *v20 = 136315906;
          v21 = "_NFRestoreDebugNFCCError";
          v22 = 1024;
          v23 = 329;
          v24 = 2082;
          v25 = "EEPROM User Area: ";
          v26 = 2048;
          v27 = v13;
          _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v20, 0x26u);
        }

        if (v11)
        {
          v11(6, "%s:%i %s %lu bytes :", "_NFRestoreDebugNFCCError", 329, "EEPROM User Area: ", *(*(v2 + 1) + 8));
        }

        if (v9)
        {
          v14 = 0;
          do
          {
            v15 = 0;
            v16 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v14)];
            do
            {
              v17 = *(v8 + v14++);
              v18 = sprintf(v16, "0x%02X ", v17);
              if (v15 > 6)
              {
                break;
              }

              v16 += v18;
              ++v15;
            }

            while (v14 < v9);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v19 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *v20 = 136446210;
              v21 = buf;
              _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", v20, 0xCu);
            }

            if (v11)
            {
              v11(6, "%s", buf);
            }
          }

          while (v14 < v9);
        }

        NFDataRelease();
      }

      free(v2);
    }
  }
}

uint64_t sub_2994BF21C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7)
{
  v30 = *MEMORY[0x29EDCA608];
  v8 = sub_2994BF564(a2, a3, a4);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Selected file %s", "NFRestoreNfcForController", 963, v9);
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v25 = "NFRestoreNfcForController";
    v26 = 1024;
    v27 = 963;
    v28 = 2080;
    v29 = v9;
    _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Selected file %s", buf, 0x1Cu);
  }

  v13 = CFStringCreateWithCString(0, v9, 0x8000100u);
  if (sub_2994BFCFC(a5, v13))
  {
    if (NFDriverUpdateFirmware())
    {
      dispatch_get_specific(*v10);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v14(3, "%s:%i Failed to install %s", "NFRestoreNfcForController", 974, v9);
      }

      dispatch_get_specific(*v10);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v25 = "NFRestoreNfcForController";
        v26 = 1024;
        v27 = 974;
        v28 = 2080;
        v29 = v9;
        _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to install %s", buf, 0x1Cu);
      }

      Message = NFDriverSerialDebugLastMessage();
      v17 = *MEMORY[0x29EDC9198];
      StackBreadcrumb = NFDriverGetStackBreadcrumb();
      v19 = &unk_2994C631B;
      if (Message)
      {
        v19 = Message;
      }

      sub_2994B8D74("com.apple.nfstack", v17, "Error 0x%04x at %s:%d: %llx %s", v17, "NFRestoreNfcForController", 975, StackBreadcrumb, v19);
      free(Message);
      v20 = 5;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    dispatch_get_specific(*v10);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i No data found for %s", "NFRestoreNfcForController", 968, v9);
    }

    dispatch_get_specific(*v10);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "NFRestoreNfcForController";
      v26 = 1024;
      v27 = 968;
      v28 = 2080;
      v29 = v9;
      _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i No data found for %s", buf, 0x1Cu);
    }

    v20 = 7;
  }

  NFDataRelease();
  CFRelease(v13);
  return v20;
}

const char *sub_2994BF564(_DWORD *a1, int a2, int a3)
{
  v60 = *MEMORY[0x29EDCA608];
  v6 = a1[1];
  if (v6 > 13)
  {
    if ((v6 - 14) < 4)
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 721, *a1, a1[2]);
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *a1;
        v18 = a1[2];
        *buf = 136446978;
        v53 = "NFRestoreNfcFirmwareNameForController";
        v54 = 1024;
        v55 = 721;
        v56 = 1024;
        v57 = v17;
        v58 = 1024;
        v59 = v18;
        _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
      }

      v12 = "SN300V_FW_B0_02_01_74_rev167804.bin";
      v13 = "SN300V_FW_B0_02_01_FC_rev167600.bin";
      goto LABEL_15;
    }

    if (v6 == 18)
    {
      v44 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v45(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 734, *a1, a1[2]);
      }

      dispatch_get_specific(*v44);
      v46 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *a1;
        v48 = a1[2];
        *buf = 136446978;
        v53 = "NFRestoreNfcFirmwareNameForController";
        v54 = 1024;
        v55 = 734;
        v56 = 1024;
        v57 = v47;
        v58 = 1024;
        v59 = v48;
        _os_log_impl(&dword_2994B7000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
      }

      v12 = "SE310S_FW_A0_01_01_33_rev165162.bin";
      v13 = "SE310S_FW_A0_01_01_D3_rev165460.bin";
      goto LABEL_15;
    }

    if (v6 != 20)
    {
      goto LABEL_47;
    }

    v27 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v28(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 746, *a1, a1[2]);
    }

    dispatch_get_specific(*v27);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *a1;
      v31 = a1[2];
      *buf = 136446978;
      v53 = "NFRestoreNfcFirmwareNameForController";
      v54 = 1024;
      v55 = 746;
      v56 = 1024;
      v57 = v30;
      v58 = 1024;
      v59 = v31;
      _os_log_impl(&dword_2994B7000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
    }

    v32 = "SN200V_FURY_FW_B1_02_01_A9_rev169850.bin";
    if (a3)
    {
      v32 = "SN200V_FURY_FW_B1_02_01_FA_rev149466.bin";
    }

    if (a2)
    {
      return v32;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((v6 - 10) >= 3)
    {
      if ((v6 - 7) < 2)
      {
        v7 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v8 = NFLogGetLogger();
        if (v8)
        {
          v8(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 678, *a1, a1[2]);
        }

        dispatch_get_specific(*v7);
        v9 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *a1;
          v11 = a1[2];
          *buf = 136446978;
          v53 = "NFRestoreNfcFirmwareNameForController";
          v54 = 1024;
          v55 = 678;
          v56 = 1024;
          v57 = v10;
          v58 = 1024;
          v59 = v11;
          _os_log_impl(&dword_2994B7000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
        }

        v12 = "SN100V_FW_A3_01_01_B6_rev157827.bin";
        v13 = "SN100V_FW_A3_01_01_C3_rev78599.bin";
        goto LABEL_15;
      }

      if (v6 == 5)
      {
        v33 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v34 = NFLogGetLogger();
        if (v34)
        {
          v34(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 654, *a1, a1[2]);
        }

        dispatch_get_specific(*v33);
        v35 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *a1;
          v37 = a1[2];
          *buf = 136446978;
          v53 = "NFRestoreNfcFirmwareNameForController";
          v54 = 1024;
          v55 = 654;
          v56 = 1024;
          v57 = v36;
          v58 = 1024;
          v59 = v37;
          _os_log_impl(&dword_2994B7000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
        }

        if (a1[2] == 2)
        {
          v12 = "PN552_FW_02_01_6A_rev125914.bin";
          v13 = "PN552_FW_02_01_AF_59162.bin";
LABEL_15:
          if (a3)
          {
            return v13;
          }

          else
          {
            return v12;
          }
        }

        dispatch_get_specific(*v33);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v49(3, "%s:%i Unexpected ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 669, *a1, a1[2]);
        }

        dispatch_get_specific(*v33);
        v40 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v50 = *a1;
        v51 = a1[2];
        *buf = 136446978;
        v53 = "NFRestoreNfcFirmwareNameForController";
        v54 = 1024;
        v55 = 669;
        v56 = 1024;
        v57 = v50;
        v58 = 1024;
        v59 = v51;
        v43 = "%{public}s:%i Unexpected ROM version %02x.%02x";
LABEL_60:
        _os_log_impl(&dword_2994B7000, v40, OS_LOG_TYPE_ERROR, v43, buf, 0x1Eu);
        return 0;
      }

LABEL_47:
      v38 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v39(3, "%s:%i Unexpected Si version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 788, *a1, a1[2]);
      }

      dispatch_get_specific(*v38);
      v40 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v41 = *a1;
      v42 = a1[2];
      *buf = 136446978;
      v53 = "NFRestoreNfcFirmwareNameForController";
      v54 = 1024;
      v55 = 788;
      v56 = 1024;
      v57 = v41;
      v58 = 1024;
      v59 = v42;
      v43 = "%{public}s:%i Unexpected Si version %02x.%02x";
      goto LABEL_60;
    }

    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(6, "%s:%i ROM version %02x.%02x", "NFRestoreNfcFirmwareNameForController", 693, *a1, a1[2]);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *a1;
      v24 = a1[2];
      *buf = 136446978;
      v53 = "NFRestoreNfcFirmwareNameForController";
      v54 = 1024;
      v55 = 693;
      v56 = 1024;
      v57 = v23;
      v58 = 1024;
      v59 = v24;
      _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ROM version %02x.%02x", buf, 0x1Eu);
    }

    v25 = "SN200V_FW_B1_02_01_B9_rev167811.bin";
    if (a3)
    {
      v25 = "SN200V_FW_B1_02_01_FA_rev124452.bin";
    }

    v26 = "SN200V_FURY_FW_B1_02_01_FA_rev149466.bin";
    if (!a3)
    {
      v26 = "SN200V_FURY_FW_B1_02_01_A9_rev169850.bin";
    }

    if (a2)
    {
      return v26;
    }

    else
    {
      return v25;
    }
  }
}

uint64_t sub_2994BFCFC(const __CFDictionary *a1, const __CFString *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  bzero(buffer, 0x400uLL);
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFURLGetTypeID()))
  {
    v7 = CFURLGetString(v5);
    if (!CFStringGetCStringPtr(v7, 0x8000100u))
    {
      CFStringGetCString(v7, buffer, 1024, 0x8000100u);
    }

    return NFDataCreateWithFile();
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      if (!CStringPtr)
      {
        CStringPtr = buffer;
        CFStringGetCString(a2, buffer, 1024, 0x8000100u);
      }

      v11(3, "%s:%i No data found for %s", "NFRestoreDictionaryCopyDataForKey", 557, CStringPtr);
    }

    dispatch_get_specific(*v9);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringGetCStringPtr(a2, 0x8000100u);
      if (!v14)
      {
        v14 = buffer;
        CFStringGetCString(a2, buffer, 1024, 0x8000100u);
      }

      *buf = 136446722;
      v16 = "NFRestoreDictionaryCopyDataForKey";
      v17 = 1024;
      v18 = 557;
      v19 = 2080;
      v20 = v14;
      _os_log_impl(&dword_2994B7000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i No data found for %s", buf, 0x1Cu);
    }

    return 0;
  }
}

uint64_t sub_2994BFF0C(void *a1, char *__s)
{
  v80 = *MEMORY[0x29EDCA608];
  v3 = strlen(__s);
  v4 = malloc_type_calloc(1uLL, v3 + 1, 0x100004077774924uLL);
  v5 = MEMORY[0x29EDC9730];
  if (!v4)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i calloc failure...", "NfSecureElementScriptRun", 138);
    }

    dispatch_get_specific(*v5);
    v54 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *__str = 136446466;
      v73 = "NfSecureElementScriptRun";
      v74 = 1024;
      v75 = 138;
      _os_log_impl(&dword_2994B7000, v54, OS_LOG_TYPE_ERROR, "%{public}s:%i calloc failure...", __str, 0x12u);
    }

    return 3;
  }

  v6 = v4;
  strlcpy(v4, __s, v3 + 1);
  v62 = v6;
  v7 = strtok(v6, "\r\n");
  if (!v7)
  {
    v9 = 0;
    goto LABEL_101;
  }

  v8 = v7;
  v9 = 0;
  v10 = MEMORY[0x29EDCA600];
  v11 = MEMORY[0x29EDCA620];
  while (2)
  {
    v63 = v9;
    while (1)
    {
      bzero(__str, 0x800uLL);
      __sa = 0;
      __lasts = 0;
      v12 = v8;
      do
      {
        while (1)
        {
          v14 = *v12++;
          v13 = v14;
          if ((v14 & 0x80000000) != 0)
          {
            break;
          }

          if ((*(v10 + 4 * v13 + 60) & 0x4000) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      while (__maskrune(v13, 0x4000uLL));
LABEL_10:
      if (!v13)
      {
        v24 = 0;
        goto LABEL_92;
      }

      __strlcpy_chk();
      strtok_r(__str, " ", &__lasts);
      if (__lasts)
      {
        if (strlen(__lasts) < 5)
        {
          __sa = __lasts;
          goto LABEL_16;
        }

        if (*__lasts == 42)
        {
          __sa = __lasts + 1;
LABEL_16:
          __lasts = 0;
          goto LABEL_18;
        }

        strtok_r(__lasts, "*", &__sa);
      }

LABEL_18:
      fprintf(*v11, "> %s\n", __str);
      if (!NFDataCreateWithHexString())
      {
        break;
      }

      v15 = NFDriverSecureElementTransceive();
      NFDataRelease();
      if (!v15)
      {
        dispatch_get_specific(*v5);
        v47 = NFLogGetLogger();
        if (v47)
        {
          v47(3, "%s:%i Transceive failed", "NfSecureElementScriptRunLine", 65);
        }

        dispatch_get_specific(*v5);
        v48 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v67 = "NfSecureElementScriptRunLine";
          v68 = 1024;
          v69 = 65;
          _os_log_impl(&dword_2994B7000, v48, OS_LOG_TYPE_ERROR, "%{public}s:%i Transceive failed", buf, 0x12u);
        }

        Message = NFDriverSerialDebugLastMessage();
        v50 = *MEMORY[0x29EDC9198];
        StackBreadcrumb = NFDriverGetStackBreadcrumb();
        v52 = &unk_2994C631B;
        if (Message)
        {
          v52 = Message;
        }

        sub_2994B8D74("com.apple.nfstack", v50, "Error 0x%04x at %s:%d: %llx %s", v50, "NfSecureElementScriptRunLine", 66, StackBreadcrumb, v52);
        free(Message);
        v24 = 9;
        goto LABEL_92;
      }

      v16 = NFDataAsHexString();
      fprintf(*v11, "%s\n", v16);
      if (__lasts && (v17 = strlen(__lasts)) != 0)
      {
        if (!strncasecmp(v16, __lasts, v17))
        {
          v24 = 0;
        }

        else
        {
          dispatch_get_specific(*v5);
          v18 = NFLogGetLogger();
          if (v18)
          {
            v18(3, "%s:%i R-APDU does not match expected prefix!", "NfSecureElementScriptRunLine", 78);
          }

          dispatch_get_specific(*v5);
          v19 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v67 = "NfSecureElementScriptRunLine";
            v68 = 1024;
            v69 = 78;
            _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i R-APDU does not match expected prefix!", buf, 0x12u);
          }

          dispatch_get_specific(*v5);
          v20 = NFLogGetLogger();
          if (v20)
          {
            v20(3, "%s:%i Expected: %s", "NfSecureElementScriptRunLine", 79, __lasts);
          }

          dispatch_get_specific(*v5);
          v21 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v67 = "NfSecureElementScriptRunLine";
            v68 = 1024;
            v69 = 79;
            v70 = 2080;
            v71 = __lasts;
            _os_log_impl(&dword_2994B7000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Expected: %s", buf, 0x1Cu);
          }

          dispatch_get_specific(*v5);
          v22 = NFLogGetLogger();
          if (v22)
          {
            v22(3, "%s:%i Received: %s", "NfSecureElementScriptRunLine", 80, v16);
          }

          dispatch_get_specific(*v5);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v67 = "NfSecureElementScriptRunLine";
            v68 = 1024;
            v69 = 80;
            v70 = 2080;
            v71 = v16;
            _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Received: %s", buf, 0x1Cu);
          }

          sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfSecureElementScriptRunLine", 81);
          v24 = 5;
        }

        v25 = 1;
      }

      else
      {
        v25 = 0;
        v24 = 0;
      }

      if (__sa)
      {
        v26 = v11;
        v27 = strlen(__sa);
        if (!v27)
        {
          v36 = 0;
LABEL_58:
          v11 = v26;
          goto LABEL_59;
        }

        v28 = v27;
        v29 = strlen(v16);
        if (!strncasecmp(&v16[v29 - v28], __sa, v28))
        {
          v36 = 1;
          goto LABEL_58;
        }

        dispatch_get_specific(*v5);
        v30 = NFLogGetLogger();
        v11 = v26;
        if (v30)
        {
          v30(3, "%s:%i R-APDU does not match expected suffix!", "NfSecureElementScriptRunLine", 90);
        }

        dispatch_get_specific(*v5);
        v31 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v67 = "NfSecureElementScriptRunLine";
          v68 = 1024;
          v69 = 90;
          _os_log_impl(&dword_2994B7000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i R-APDU does not match expected suffix!", buf, 0x12u);
        }

        dispatch_get_specific(*v5);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v32(3, "%s:%i Expected: %s", "NfSecureElementScriptRunLine", 91, __sa);
        }

        dispatch_get_specific(*v5);
        v33 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v67 = "NfSecureElementScriptRunLine";
          v68 = 1024;
          v69 = 91;
          v70 = 2080;
          v71 = __sa;
          _os_log_impl(&dword_2994B7000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i Expected: %s", buf, 0x1Cu);
        }

        dispatch_get_specific(*v5);
        v34 = NFLogGetLogger();
        if (v34)
        {
          v34(3, "%s:%i Received: %s", "NfSecureElementScriptRunLine", 92, v16);
        }

        dispatch_get_specific(*v5);
        v35 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v67 = "NfSecureElementScriptRunLine";
          v68 = 1024;
          v69 = 92;
          v70 = 2080;
          v71 = v16;
          _os_log_impl(&dword_2994B7000, v35, OS_LOG_TYPE_ERROR, "%{public}s:%i Received: %s", buf, 0x1Cu);
        }

        sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfSecureElementScriptRunLine", 93);
        v24 = 5;
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }

LABEL_59:
      if (!(v36 | v25))
      {
        ResponseStatus = NFDriverSecureElementGetResponseStatus();
        if (ResponseStatus != 36864)
        {
          v38 = ResponseStatus;
          dispatch_get_specific(*v5);
          v39 = NFLogGetLogger();
          if (v39)
          {
            v39(3, "%s:%i Command failed: status=0x%04x", "NfSecureElementScriptRunLine", 102, v38);
          }

          dispatch_get_specific(*v5);
          v40 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v67 = "NfSecureElementScriptRunLine";
            v68 = 1024;
            v69 = 102;
            v70 = 1024;
            LODWORD(v71) = v38;
            _os_log_impl(&dword_2994B7000, v40, OS_LOG_TYPE_ERROR, "%{public}s:%i Command failed: status=0x%04x", buf, 0x18u);
          }

          dispatch_get_specific(*v5);
          v41 = NFLogGetLogger();
          if (v41)
          {
            v41(3, "%s:%i Received: %s", "NfSecureElementScriptRunLine", 103, v16);
          }

          dispatch_get_specific(*v5);
          v42 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v67 = "NfSecureElementScriptRunLine";
            v68 = 1024;
            v69 = 103;
            v70 = 2080;
            v71 = v16;
            _os_log_impl(&dword_2994B7000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i Received: %s", buf, 0x1Cu);
          }

          if (v38 == 25536)
          {
            v24 = 2;
          }

          else if (v38 == 26277)
          {
            v24 = 15;
          }

          else
          {
            sub_2994B8D74("com.apple.nfjcop", v38, "Error 0x%04x at %s:%d", v38, "NfSecureElementScriptRunLine", 110);
            v24 = 5;
          }
        }
      }

      free(v16);
      NFDataRelease();
      if (v24 != 2)
      {
        goto LABEL_92;
      }

      dispatch_get_specific(*v5);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v43(6, "%s:%i Retry...", "NfSecureElementScriptRun", 152);
      }

      dispatch_get_specific(*v5);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136446466;
        v73 = "NfSecureElementScriptRun";
        v74 = 1024;
        v75 = 152;
        _os_log_impl(&dword_2994B7000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Retry...", __str, 0x12u);
      }
    }

    dispatch_get_specific(*v5);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v45(3, "%s:%i Invalid hex string", "NfSecureElementScriptRunLine", 55);
    }

    dispatch_get_specific(*v5);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v67 = "NfSecureElementScriptRunLine";
      v68 = 1024;
      v69 = 55;
      _os_log_impl(&dword_2994B7000, v46, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid hex string", buf, 0x12u);
    }

    sub_2994B8D74("com.apple.nfrestore", 0, "Error at %s:%d", "NfSecureElementScriptRunLine", 56);
    v24 = 7;
LABEL_92:
    v9 = v63 + 1;
    if (!v24)
    {
      v8 = strtok(0, "\r\n");
      if (!v8)
      {
LABEL_101:
        dispatch_get_specific(*v5);
        v55 = NFLogGetLogger();
        if (v55)
        {
          v55(6, "%s:%i Executed %d lines successfully", "NfSecureElementScriptRun", 165, v9);
        }

        v56 = v9;
        dispatch_get_specific(*v5);
        v57 = NFSharedLogGetLogger();
        v24 = 0;
        v58 = v62;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 136446722;
          v73 = "NfSecureElementScriptRun";
          v74 = 1024;
          v75 = 165;
          v76 = 1024;
          v77 = v56;
          _os_log_impl(&dword_2994B7000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Executed %d lines successfully", __str, 0x18u);
          v24 = 0;
        }

        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  dispatch_get_specific(*v5);
  v59 = NFLogGetLogger();
  if (v59)
  {
    v59(3, "%s:%i Failed at line %d: %s", "NfSecureElementScriptRun", 160, v9, v8);
  }

  dispatch_get_specific(*v5);
  v60 = NFSharedLogGetLogger();
  v58 = v62;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    *__str = 136446978;
    v73 = "NfSecureElementScriptRun";
    v74 = 1024;
    v75 = 160;
    v76 = 1024;
    v77 = v63 + 1;
    v78 = 2080;
    v79 = v8;
    _os_log_impl(&dword_2994B7000, v60, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed at line %d: %s", __str, 0x22u);
  }

LABEL_109:
  free(v58);
  return v24;
}

uint64_t sub_2994C0C28(char *a1, CFMutableDictionaryRef *a2)
{
  v63 = *MEMORY[0x29EDCA608];
  memset(&v47, 0, sizeof(v47));
  if (stat(a1, &v47))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      v7 = __error();
      v8 = strerror(*v7);
      v9 = __error();
      if (a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = "NULL";
      }

      v6(3, "%s:%i %s errno=%d Failed to stat at %s", "NfRestoreBundleScan", 203, v8, *v9, v10);
    }

    dispatch_get_specific(*v4);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      v14 = *__error();
      if (a1)
      {
        v15 = a1;
      }

      else
      {
        v15 = "NULL";
      }

      *buf = 136447234;
      v56 = "NfRestoreBundleScan";
      v57 = 1024;
      v58 = 203;
      v59 = 2080;
      *v60 = v13;
      *&v60[8] = 1024;
      *&v60[10] = v14;
      v61 = 2080;
      v62 = v15;
      _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Failed to stat at %s", buf, 0x2Cu);
    }

    return 7;
  }

  if ((v47.st_mode & 0x80000000) == 0)
  {
    if (v47.st_mode < 0x4000u)
    {
      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(4, "%s:%i Ignoring file of type %d: %s", "NfRestoreBundleScan", 217, v47.st_mode, a1);
      }

      dispatch_get_specific(*v18);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v56 = "NfRestoreBundleScan";
        v57 = 1024;
        v58 = 217;
        v59 = 1024;
        *v60 = v47.st_mode;
        *&v60[4] = 2080;
        *&v60[6] = a1;
        _os_log_impl(&dword_2994B7000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Ignoring file of type %d: %s", buf, 0x22u);
      }

      return 1;
    }

    v28 = *MEMORY[0x29EDB8ED8];
    theDict = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 10, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v29 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v30(6, "%s:%i %s", "_NfRestoreBundleReadDir", 104, a1);
    }

    dispatch_get_specific(*v29);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 136446722;
      v50 = "_NfRestoreBundleReadDir";
      v51 = 1024;
      v52 = 104;
      v53 = 2080;
      *v54 = a1;
      _os_log_impl(&dword_2994B7000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s", v49, 0x1Cu);
    }

    v32 = opendir(a1);
    if (v32)
    {
      v33 = v32;
      v34 = readdir(v32);
      if (!v34)
      {
LABEL_46:
        closedir(v33);
        v16 = 0;
        *a2 = theDict;
        return v16;
      }

      v35 = v34;
      while (1)
      {
        if (v35->d_name[0] != 46)
        {
          if (snprintf(buf, 0x400uLL, "%s/%s", a1, v35->d_name) < 0)
          {
            dispatch_get_specific(*v29);
            v44 = NFLogGetLogger();
            if (v44)
            {
              v44(3, "%s:%i snprintf error", "_NfRestoreBundleReadDir", 119);
            }

            dispatch_get_specific(*v29);
            v45 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *v49 = 136446466;
              v50 = "_NfRestoreBundleReadDir";
              v51 = 1024;
              v52 = 119;
              _os_log_impl(&dword_2994B7000, v45, OS_LOG_TYPE_ERROR, "%{public}s:%i snprintf error", v49, 0x12u);
            }

            closedir(v33);
            CFRelease(theDict);
            return 5;
          }

          value = 0;
          v36 = sub_2994C0C28(buf, &value);
          if (v36)
          {
            v16 = v36;
            dispatch_get_specific(*v29);
            v37 = NFLogGetLogger();
            if (v37)
            {
              v37(3, "%s:%i Error %d at %s", "_NfRestoreBundleReadDir", 128, v16, buf);
            }

            dispatch_get_specific(*v29);
            v38 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *v49 = 136446978;
              v50 = "_NfRestoreBundleReadDir";
              v51 = 1024;
              v52 = 128;
              v53 = 1024;
              *v54 = v16;
              *&v54[4] = 2080;
              *&v54[6] = buf;
              _os_log_impl(&dword_2994B7000, v38, OS_LOG_TYPE_ERROR, "%{public}s:%i Error %d at %s", v49, 0x22u);
            }

            if (v16 != 1 && (v16 != 7 || v35->d_type != 10))
            {
              closedir(v33);
              CFRelease(theDict);
              return v16;
            }
          }

          else
          {
            SystemEncoding = CFStringGetSystemEncoding();
            v40 = CFStringCreateWithCString(v28, v35->d_name, SystemEncoding);
            v41 = value;
            CFDictionarySetValue(theDict, v40, value);
            CFRelease(v40);
            CFRelease(v41);
          }
        }

        v35 = readdir(v33);
        if (!v35)
        {
          goto LABEL_46;
        }
      }
    }

    dispatch_get_specific(*v29);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v42(3, "%s:%i Failed to open %s", "_NfRestoreBundleReadDir", 108, a1);
    }

    dispatch_get_specific(*v29);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v49 = 136446722;
      v50 = "_NfRestoreBundleReadDir";
      v51 = 1024;
      v52 = 108;
      v53 = 2080;
      *v54 = a1;
      _os_log_impl(&dword_2994B7000, v43, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to open %s", v49, 0x1Cu);
    }

    CFRelease(theDict);
    return 7;
  }

  v21 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v23 = v22;
    v24 = basename(a1);
    v23(6, "%s:%i %s", "_NfRestoreBundleGetFileHandle", 89, v24);
  }

  dispatch_get_specific(*v21);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = basename(a1);
    *buf = 136446722;
    v56 = "_NfRestoreBundleGetFileHandle";
    v57 = 1024;
    v58 = 89;
    v59 = 2080;
    *v60 = v26;
    _os_log_impl(&dword_2994B7000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s", buf, 0x1Cu);
  }

  v27 = CFStringCreateWithCString(0, a1, 0x8000100u);
  *a2 = CFURLCreateWithString(0, v27, 0);
  CFRelease(v27);
  return 0;
}

uint64_t NfRestoreBundleCreate(char *a1, const char *a2)
{
  v69 = *MEMORY[0x29EDCA608];
  propertyList = 0;
  v4 = ".";
  if (a2)
  {
    v4 = a2;
  }

  if (snprintf(__str, 0x400uLL, "%s", v4) < 0)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i snprintf error", "NfRestoreBundleCreate", 228);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v62 = "NfRestoreBundleCreate";
      v63 = 1024;
      v64 = 228;
      _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i snprintf error", buf, 0x12u);
    }

    return 3;
  }

  else
  {
    v5 = sub_2994C1C30(__str);
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v8(3, "%s:%i Failed to build target path: %s", "NfRestoreBundleCreate", 233, a2);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v62 = "NfRestoreBundleCreate";
        v63 = 1024;
        v64 = 233;
        v65 = 2080;
        *v66 = a2;
        _os_log_impl(&dword_2994B7000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to build target path: %s", buf, 0x1Cu);
      }

      return v6;
    }

    v13 = sub_2994C0C28(a1, &propertyList);
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i Failed to scan directory %u : %s", "NfRestoreBundleCreate", 238, v14, a1);
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v62 = "NfRestoreBundleCreate";
        v63 = 1024;
        v64 = 238;
        v65 = 1024;
        *v66 = v14;
        *&v66[4] = 2080;
        *&v66[6] = a1;
        _os_log_impl(&dword_2994B7000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to scan directory %u : %s", buf, 0x22u);
      }

      return 7;
    }

    v18 = propertyList;
    error = 0;
    v19 = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], propertyList, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v19)
    {
      v20 = v19;
      unlink(__str);
      v21 = fopen(__str, "w");
      if (v21)
      {
        v22 = v21;
        BytePtr = CFDataGetBytePtr(v20);
        Length = CFDataGetLength(v20);
        v25 = fwrite(BytePtr, Length, 1uLL, v22);
        if (v25 == 1)
        {
          v6 = 0;
        }

        else
        {
          v45 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v46 = NFLogGetLogger();
          if (v46)
          {
            v46(3, "%s:%i Failed to write data to %s", "_NfRestoreBundleWrite", 73, __str);
          }

          dispatch_get_specific(*v45);
          v47 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v62 = "_NfRestoreBundleWrite";
            v63 = 1024;
            v64 = 73;
            v65 = 2080;
            *v66 = __str;
            _os_log_impl(&dword_2994B7000, v47, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write data to %s", buf, 0x1Cu);
          }

          v6 = 7;
        }

        fclose(v22);
        CFRelease(v20);
        if (v25 == 1)
        {
          v48 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v49 = NFLogGetLogger();
          if (v49)
          {
            v49(6, "%s:%i Wrote to file: %s", "NfRestoreBundleCreate", 248, __str);
          }

          dispatch_get_specific(*v48);
          v50 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v62 = "NfRestoreBundleCreate";
            v63 = 1024;
            v64 = 248;
            v65 = 2080;
            *v66 = __str;
            _os_log_impl(&dword_2994B7000, v50, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Wrote to file: %s", buf, 0x1Cu);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          return 0;
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
          v38 = __error();
          v39 = strerror(*v38);
          v40 = __error();
          v37(3, "%s:%i %s errno=%d Failed to open %s", "_NfRestoreBundleWrite", 51, v39, *v40, __str);
        }

        dispatch_get_specific(*v35);
        v41 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = __error();
          v43 = strerror(*v42);
          v44 = *__error();
          *buf = 136447234;
          v62 = "_NfRestoreBundleWrite";
          v63 = 1024;
          v64 = 51;
          v65 = 2080;
          *v66 = v43;
          *&v66[8] = 1024;
          *&v66[10] = v44;
          v67 = 2080;
          v68 = __str;
          _os_log_impl(&dword_2994B7000, v41, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Failed to open %s", buf, 0x2Cu);
        }

        CFRelease(v20);
        v6 = 7;
      }
    }

    else
    {
      if (error)
      {
        v26 = CFErrorCopyDescription(error);
        v27 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v28 = NFLogGetLogger();
        if (v28)
        {
          v29 = v28;
          SystemEncoding = CFStringGetSystemEncoding();
          CStringPtr = CFStringGetCStringPtr(v26, SystemEncoding);
          v29(3, "%s:%i Encoding error: %s", "_NfRestoreBundleWrite", 37, CStringPtr);
        }

        dispatch_get_specific(*v27);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = CFStringGetSystemEncoding();
          v34 = CFStringGetCStringPtr(v26, v33);
          *buf = 136446722;
          v62 = "_NfRestoreBundleWrite";
          v63 = 1024;
          v64 = 37;
          v65 = 2080;
          *v66 = v34;
          _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Encoding error: %s", buf, 0x1Cu);
        }

        CFRelease(v26);
        CFRelease(error);
      }

      else
      {
        v51 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v52 = NFLogGetLogger();
        if (v52)
        {
          v52(3, "%s:%i Unknown encoding error", "_NfRestoreBundleWrite", 42);
        }

        dispatch_get_specific(*v51);
        v53 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v62 = "_NfRestoreBundleWrite";
          v63 = 1024;
          v64 = 42;
          _os_log_impl(&dword_2994B7000, v53, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown encoding error", buf, 0x12u);
        }
      }

      v6 = 3;
    }

    v54 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v55(3, "%s:%i Failed to write to path: %s", "NfRestoreBundleCreate", 243, __str);
    }

    dispatch_get_specific(*v54);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v62 = "NfRestoreBundleCreate";
      v63 = 1024;
      v64 = 243;
      v65 = 2080;
      *v66 = __str;
      _os_log_impl(&dword_2994B7000, v56, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write to path: %s", buf, 0x1Cu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  return v6;
}

uint64_t sub_2994C1C30(char *a1)
{
  v54 = *MEMORY[0x29EDCA608];
  memset(&v43, 0, sizeof(v43));
  if (stat(a1, &v43))
  {
    if (*__error() == 2)
    {
      v2 = dirname(a1);
      if (stat(v2, &v43))
      {
        v3 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v5 = Logger;
          v6 = __error();
          v7 = strerror(*v6);
          v8 = __error();
          v5(3, "%s:%i %s errno=%d failed to stat parent: %s", "_NfRestoreBundleValidateTargetPath", 159, v7, *v8, v2);
        }

        dispatch_get_specific(*v3);
        v9 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          return 7;
        }

        v10 = __error();
        v11 = strerror(*v10);
        v12 = *__error();
        *buf = 136447234;
        v45 = "_NfRestoreBundleValidateTargetPath";
        v46 = 1024;
        v47 = 159;
        v48 = 2080;
        v49 = v11;
        v50 = 1024;
        v51 = v12;
        v52 = 2080;
        v53 = v2;
        v13 = "%{public}s:%i %s errno=%d failed to stat parent: %s";
      }

      else
      {
        if ((v43.st_mode & 0x4000) != 0)
        {
          return 0;
        }

        v31 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v33 = v32;
          v34 = __error();
          v35 = strerror(*v34);
          v36 = __error();
          v33(3, "%s:%i %s errno=%d parent is not directory: %s", "_NfRestoreBundleValidateTargetPath", 168, v35, *v36, v2);
        }

        dispatch_get_specific(*v31);
        v9 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          return 7;
        }

        v37 = __error();
        v38 = strerror(*v37);
        v39 = *__error();
        *buf = 136447234;
        v45 = "_NfRestoreBundleValidateTargetPath";
        v46 = 1024;
        v47 = 168;
        v48 = 2080;
        v49 = v38;
        v50 = 1024;
        v51 = v39;
        v52 = 2080;
        v53 = v2;
        v13 = "%{public}s:%i %s errno=%d parent is not directory: %s";
      }

      v18 = v9;
      v19 = 44;
    }

    else
    {
      v20 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        v23 = __error();
        v24 = strerror(*v23);
        v25 = __error();
        v22(3, "%s:%i %s errno=%d stat failed", "_NfRestoreBundleValidateTargetPath", 172, v24, *v25);
      }

      dispatch_get_specific(*v20);
      v26 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        return 7;
      }

      v27 = __error();
      v28 = strerror(*v27);
      v29 = *__error();
      *buf = 136446978;
      v45 = "_NfRestoreBundleValidateTargetPath";
      v46 = 1024;
      v47 = 172;
      v48 = 2080;
      v49 = v28;
      v50 = 1024;
      v51 = v29;
      v13 = "%{public}s:%i %s errno=%d stat failed";
      v18 = v26;
      v19 = 34;
    }

LABEL_26:
    _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_ERROR, v13, buf, v19);
    return 7;
  }

  if ((v43.st_mode & 0x4000) == 0)
  {
    result = unlink(a1);
    if (!result)
    {
      return result;
    }

    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Failed to delete existing file: %s", "_NfRestoreBundleValidateTargetPath", 191, a1);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 7;
    }

    *buf = 136446722;
    v45 = "_NfRestoreBundleValidateTargetPath";
    v46 = 1024;
    v47 = 191;
    v48 = 2080;
    v49 = a1;
    v13 = "%{public}s:%i Failed to delete existing file: %s";
    v18 = v17;
    v19 = 28;
    goto LABEL_26;
  }

  v30 = strlen(a1);
  if ((snprintf(&a1[v30], 1024 - v30, "/%s", "StockholmRestore.plist") & 0x80000000) == 0)
  {
    return sub_2994C1C30(a1);
  }

  v40 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v41 = NFLogGetLogger();
  if (v41)
  {
    v41(3, "%s:%i snprintf error", "_NfRestoreBundleValidateTargetPath", 182);
  }

  dispatch_get_specific(*v40);
  v42 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v45 = "_NfRestoreBundleValidateTargetPath";
    v46 = 1024;
    v47 = 182;
    _os_log_impl(&dword_2994B7000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i snprintf error", buf, 0x12u);
  }

  return 3;
}

void *sub_2994C216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x80040D6874129uLL);
  if (v6)
  {
    NFLogSetLogger();
    NFLogSetLogger();
    *v6 = a1;
    v6[1] = a2;
    v6[2] = a3;
  }

  return v6;
}

uint64_t sub_2994C21FC(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v6 = *MEMORY[0x29EDCA608];
  if (!qword_2A14631A8)
  {
    goto LABEL_5;
  }

  if (*(qword_2A14631A8 + 8))
  {
    vsnprintf(__str, 0x400uLL, __format, va);
    return (*(qword_2A14631A8 + 8))(*(qword_2A14631A8 + 16), a1, "%s\n", __str);
  }

  result = NFIsRestoreOS();
  if (result)
  {
LABEL_5:
    vsnprintf(__str, 0x400uLL, __format, va);
    return fprintf(*MEMORY[0x29EDCA610], "%s\n", __str);
  }

  return result;
}

void *sub_2994C22F4(uint64_t a1, int a2)
{
  v75 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NfSecureElementOpen", 149);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v58 = "NfSecureElementOpen";
    v59 = 1024;
    v60 = 149;
    _os_log_impl(&dword_2994B7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  v7 = malloc_type_calloc(1uLL, 0x500uLL, 0x10200402B5D6696uLL);
  if (!v7)
  {
    dispatch_get_specific(*v4);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v37(3, "%s:%i Failed to allocate NfSecureElement_t", "NfSecureElementOpen", 154);
    }

    dispatch_get_specific(*v4);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v58 = "NfSecureElementOpen";
      v59 = 1024;
      v60 = 154;
      _os_log_impl(&dword_2994B7000, v38, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate NfSecureElement_t", buf, 0x12u);
    }

    return 0;
  }

  v8 = v7;
  *v7 = a1;
  v7[2] = a2;
  if ((sub_2994C2B60(v7, 1) & 1) == 0)
  {
    dispatch_get_specific(*v4);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v39(3, "%s:%i Failed to enter wired mode", "NfSecureElementOpen", 162);
    }

    dispatch_get_specific(*v4);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v58 = "NfSecureElementOpen";
      v59 = 1024;
      v60 = 162;
      _os_log_impl(&dword_2994B7000, v40, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to enter wired mode", buf, 0x12u);
    }

    Message = NFDriverSerialDebugLastMessage();
    v42 = *MEMORY[0x29EDC9198];
    StackBreadcrumb = NFDriverGetStackBreadcrumb();
    v44 = &unk_2994C631B;
    if (Message)
    {
      v44 = Message;
    }

    sub_2994B8D74("com.apple.nfstack", v42, "Error 0x%04x at %s:%d: %llx %s", v42, "NfSecureElementOpen", 163, StackBreadcrumb, v44);
    free(Message);
    goto LABEL_69;
  }

  if ((NFDriverSecureElementGetOSMode() & 1) == 0)
  {
    dispatch_get_specific(*v4);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v45(4, "%s:%i Failed to get OS mode", "NfSecureElementUpdateOSInfo", 22);
    }

    dispatch_get_specific(*v4);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v58 = "NfSecureElementUpdateOSInfo";
      v59 = 1024;
      v60 = 22;
      _os_log_impl(&dword_2994B7000, v46, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get OS mode", buf, 0x12u);
    }

    v47 = 23;
    goto LABEL_63;
  }

  if (v8[305] == 2 && (NFDriverSecureElementGetOSInfo() & 1) == 0)
  {
    dispatch_get_specific(*v4);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v55(4, "%s:%i Failed to get OS info", "NfSecureElementUpdateOSInfo", 29);
    }

    dispatch_get_specific(*v4);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v58 = "NfSecureElementUpdateOSInfo";
      v59 = 1024;
      v60 = 29;
      _os_log_impl(&dword_2994B7000, v56, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get OS info", buf, 0x12u);
    }

    v47 = 30;
LABEL_63:
    v48 = NFDriverSerialDebugLastMessage();
    v49 = *MEMORY[0x29EDC9198];
    v50 = NFDriverGetStackBreadcrumb();
    v51 = &unk_2994C631B;
    if (v48)
    {
      v51 = v48;
    }

    sub_2994B8D74("com.apple.nfstack", v49, "Error 0x%04x at %s:%d: %llx %s", v49, "NfSecureElementUpdateOSInfo", v47, v50, v51);
    free(v48);
    dispatch_get_specific(*v4);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v52(3, "%s:%i Failed to update OS info", "NfSecureElementOpen", 168);
    }

    dispatch_get_specific(*v4);
    v53 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v58 = "NfSecureElementOpen";
      v59 = 1024;
      v60 = 168;
      _os_log_impl(&dword_2994B7000, v53, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update OS info", buf, 0x12u);
    }

LABEL_69:
    sub_2994C2D3C(v8);
    return 0;
  }

  v9 = v8[307] - 1;
  v10 = "UNKNOWN";
  if (v9 <= 5)
  {
    v10 = (&off_29EF26418)[v9];
  }

  dispatch_get_specific(*v4);
  v11 = NFLogGetLogger();
  if (v11)
  {
    if (*(v8 + 1271))
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (*(v8 + 1272))
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v11(6, "%s:%i id=%s dev=0x%02x hw=0x%08x fw=0x%04x cfw=0x%04x restricted=%s OSUpdate=%s", "NfSecureElementUpdateOSInfo", 54, v8 + 1088, *(v8 + 1268), v8[312], v8[311], *(v8 + 628), v12, v13);
  }

  dispatch_get_specific(*v4);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(v8 + 1268);
    v16 = v8[312];
    v17 = v8[311];
    v18 = *(v8 + 628);
    if (*(v8 + 1271))
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    if (*(v8 + 1272))
    {
      v20 = "YES";
    }

    else
    {
      v20 = "NO";
    }

    *buf = 136448258;
    v58 = "NfSecureElementUpdateOSInfo";
    v59 = 1024;
    v60 = 54;
    v61 = 2080;
    v62 = (v8 + 272);
    v63 = 1024;
    v64 = v15;
    v65 = 1024;
    v66 = v16;
    v67 = 1024;
    v68 = v17;
    v69 = 1024;
    v70 = v18;
    v71 = 2080;
    v72 = v19;
    v73 = 2080;
    v74 = v20;
    _os_log_impl(&dword_2994B7000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%i id=%s dev=0x%02x hw=0x%08x fw=0x%04x cfw=0x%04x restricted=%s OSUpdate=%s", buf, 0x48u);
  }

  dispatch_get_specific(*v4);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v22 = v8[305];
    if (v22 == 2)
    {
      v23 = "JCOP";
    }

    else
    {
      v23 = "UNKNOWN";
    }

    if (v22 == 1)
    {
      v24 = "Update";
    }

    else
    {
      v24 = v23;
    }

    v21(6, "%s:%i mode=%s counter=%d reference=%d osid=0x%02x othervalid=0x%02x", "NfSecureElementUpdateOSInfo", 62, v24, *(v8 + 629), *(v8 + 630), *(v8 + 1269), *(v8 + 1270));
  }

  dispatch_get_specific(*v4);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v8[305];
    if (v26 == 2)
    {
      v27 = "JCOP";
    }

    else
    {
      v27 = "UNKNOWN";
    }

    v28 = v26 == 1;
    v29 = *(v8 + 629);
    if (v28)
    {
      v27 = "Update";
    }

    v30 = *(v8 + 630);
    v31 = *(v8 + 1269);
    v32 = *(v8 + 1270);
    *buf = 136447746;
    v58 = "NfSecureElementUpdateOSInfo";
    v59 = 1024;
    v60 = 62;
    v61 = 2080;
    v62 = v27;
    v63 = 1024;
    v64 = v29;
    v65 = 1024;
    v66 = v30;
    v67 = 1024;
    v68 = v31;
    v69 = 1024;
    v70 = v32;
    _os_log_impl(&dword_2994B7000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i mode=%s counter=%d reference=%d osid=0x%02x othervalid=0x%02x", buf, 0x34u);
  }

  dispatch_get_specific(*v4);
  v33 = NFLogGetLogger();
  if (v33)
  {
    v33(6, "%s:%i migration=%s pkgs=%d inst=%d", "NfSecureElementUpdateOSInfo", 67, v10, *(v8 + 631), *(v8 + 632));
  }

  dispatch_get_specific(*v4);
  v34 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *(v8 + 631);
    v36 = *(v8 + 632);
    *buf = 136447234;
    v58 = "NfSecureElementUpdateOSInfo";
    v59 = 1024;
    v60 = 67;
    v61 = 2080;
    v62 = v10;
    v63 = 1024;
    v64 = v35;
    v65 = 1024;
    v66 = v36;
    _os_log_impl(&dword_2994B7000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s:%i migration=%s pkgs=%d inst=%d", buf, 0x28u);
  }

  return v8;
}

uint64_t sub_2994C2B60(void *a1, int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i se=%d, enabled=%d", "NfSecureElementSetPower", 80, *(a1 + 2), a2);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 2);
    *buf = 136446978;
    v14 = "NfSecureElementSetPower";
    v15 = 1024;
    v16 = 80;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_2994B7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i se=%d, enabled=%d", buf, 0x1Eu);
  }

  if (!a2)
  {
    return NFDriverSetConfiguration();
  }

  if (NFDriverSetConfiguration())
  {
    usleep(0x7D0u);
    return 1;
  }

  else
  {
    Message = NFDriverSerialDebugLastMessage();
    v10 = *MEMORY[0x29EDC9198];
    StackBreadcrumb = NFDriverGetStackBreadcrumb();
    v12 = &unk_2994C631B;
    if (Message)
    {
      v12 = Message;
    }

    sub_2994B8D74("com.apple.nfstack", v10, "Error 0x%04x at %s:%d: %llx %s", v10, "NfSecureElementSetPower", 86, StackBreadcrumb, v12);
    free(Message);
    return 0;
  }
}

void sub_2994C2D3C(void *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NfSecureElementClose", 181);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "NfSecureElementClose";
    v9 = 1024;
    v10 = 181;
    _os_log_impl(&dword_2994B7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (a1)
  {
    sub_2994C2B60(a1, 0);
    free(a1);
  }

  else
  {
    dispatch_get_specific(*v2);
    v5 = NFLogGetLogger();
    if (v5)
    {
      v5(3, "%s:%i se object is not valid", "NfSecureElementClose", 184);
    }

    dispatch_get_specific(*v2);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "NfSecureElementClose";
      v9 = 1024;
      v10 = 184;
      _os_log_impl(&dword_2994B7000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i se object is not valid", buf, 0x12u);
    }
  }
}

BOOL sub_2994C2EDC(const char *a1)
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
      _os_log_impl(&dword_2994B7000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service %s", buf, 0x1Cu);
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
    _os_log_impl(&dword_2994B7000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Will %s spmi for %s", buf, 0x26u);
  }

  return v8;
}

uint64_t sub_2994C3114(const char *a1, const char *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to create property matching dictionary", "_NFHardwareFindMatchingService", 364);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "_NFHardwareFindMatchingService";
      v37 = 1024;
      v38 = 364;
      _os_log_impl(&dword_2994B7000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create property matching dictionary", buf, 0x12u);
    }

    return 0;
  }

  v5 = Mutable;
  v6 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v6)
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Failed to create CF property string", "_NFHardwareFindMatchingService", 369);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 369;
    v24 = "%{public}s:%i Failed to create CF property string";
    goto LABEL_21;
  }

  v7 = v6;
  CFDictionarySetValue(v5, @"IONameMatched", v6);
  CFRelease(v7);
  v8 = IOServiceMatching(a1);
  if (!v8)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(3, "%s:%i Failed to create matching dictionary", "_NFHardwareFindMatchingService", 378);
    }

    dispatch_get_specific(*v25);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 378;
    v24 = "%{public}s:%i Failed to create matching dictionary";
LABEL_21:
    _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
LABEL_22:
    CFRelease(v5);
    return 0;
  }

  v9 = v8;
  CFDictionarySetValue(v8, @"IOPropertyMatch", v5);
  CFRelease(v5);
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x29EDBB110], v9, &existing);
  if (MatchingServices)
  {
    v11 = MatchingServices;
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to lookup service : 0x%x", "_NFHardwareFindMatchingService", 403, v11);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446722;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 403;
    v39 = 1024;
    v40 = v11;
    v15 = "%{public}s:%i Failed to lookup service : 0x%x";
    v16 = v14;
    v17 = 24;
    goto LABEL_37;
  }

  if (!existing || !IOIteratorIsValid(existing))
  {
    v32 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v33(3, "%s:%i Failed to get iterator for service", "_NFHardwareFindMatchingService", 395);
    }

    dispatch_get_specific(*v32);
    v31 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 395;
    v15 = "%{public}s:%i Failed to get iterator for service";
    goto LABEL_36;
  }

  v27 = IOIteratorNext(existing);
  if (v27)
  {
    goto LABEL_39;
  }

  v29 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v30 = NFLogGetLogger();
  if (v30)
  {
    v30(3, "%s:%i Failed to get valid service", "_NFHardwareFindMatchingService", 399);
  }

  dispatch_get_specific(*v29);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 399;
    v15 = "%{public}s:%i Failed to get valid service";
LABEL_36:
    v16 = v31;
    v17 = 18;
LABEL_37:
    _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }

LABEL_38:
  v27 = 0;
LABEL_39:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v27;
}

void sub_2994C3628()
{
  v34 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ----------------------- IOService plane --------------------------", "_NFHardwareDumpIOKit", 322);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 322;
    _os_log_impl(&dword_2994B7000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ----------------------- IOService plane --------------------------", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  dispatch_get_specific(*v0);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v6(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 324, "stockholm", MatchingService);
  }

  dispatch_get_specific(*v0);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 324;
    v30 = 2080;
    v31 = "stockholm";
    v32 = 1024;
    v33 = MatchingService;
    _os_log_impl(&dword_2994B7000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(MatchingService);
  v8 = IOServiceNameMatching("stockholm-spmi");
  v9 = IOServiceGetMatchingService(v3, v8);
  dispatch_get_specific(*v0);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 328, "stockholm-spmi", v9);
  }

  dispatch_get_specific(*v0);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 328;
    v30 = 2080;
    v31 = "stockholm-spmi";
    v32 = 1024;
    v33 = v9;
    _os_log_impl(&dword_2994B7000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v9);
  v12 = IOServiceNameMatching("AppleStockholmSPMI");
  v13 = IOServiceGetMatchingService(v3, v12);
  dispatch_get_specific(*v0);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 332, "AppleStockholmSPMI", v13);
  }

  dispatch_get_specific(*v0);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 332;
    v30 = 2080;
    v31 = "AppleStockholmSPMI";
    v32 = 1024;
    v33 = v13;
    _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v13);
  v16 = IOServiceNameMatching("AppleStockholmControl");
  v17 = IOServiceGetMatchingService(v3, v16);
  dispatch_get_specific(*v0);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v18(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 336, "AppleStockholmControl", v17);
  }

  dispatch_get_specific(*v0);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 336;
    v30 = 2080;
    v31 = "AppleStockholmControl";
    v32 = 1024;
    v33 = v17;
    _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v17);
  v20 = IOServiceNameMatching("AppleStockholmControlUserClient");
  v21 = IOServiceGetMatchingService(v3, v20);
  dispatch_get_specific(*v0);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v22(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 340, "AppleStockholmControlUserClient", v21);
  }

  dispatch_get_specific(*v0);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 340;
    v30 = 2080;
    v31 = "AppleStockholmControlUserClient";
    v32 = 1024;
    v33 = v21;
    _os_log_impl(&dword_2994B7000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v21);
  dispatch_get_specific(*v0);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v24(6, "%s:%i ----------------------- IOService plane --------------------------", "_NFHardwareDumpIOKit", 344);
  }

  dispatch_get_specific(*v0);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 344;
    _os_log_impl(&dword_2994B7000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ----------------------- IOService plane --------------------------", buf, 0x12u);
  }

  sub_2994C3EA4("stockholm");
  sub_2994C3EA4("stockholm-spmi");
  sub_2994C3EA4("AppleStockholmSPMI");
  sub_2994C3EA4("AppleStockholmControl");
  sub_2994C3EA4("AppleStockholmControlUserClient");
  sub_2994C3EA4("hammerfest");
  sub_2994C3EA4("AppleHammerfestSPMI");
  sub_2994C3EA4("AppleHammerfestControl");
}

uint64_t sub_2994C3C0C(const char *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  object = 0;
  RootEntry = IORegistryGetRootEntry(*MEMORY[0x29EDBB110]);
  if (MEMORY[0x29C29DDD0](RootEntry, "IOService", 1, &object))
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to create iterator", "_NFHardwareLookInTree", 308);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "_NFHardwareLookInTree";
      v11 = 1024;
      v12 = 308;
      _os_log_impl(&dword_2994B7000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create iterator", buf, 0x12u);
    }

    return 0;
  }

  else
  {
    v6 = sub_2994C46E0(object, a1);
    IOObjectRelease(object);
  }

  return v6;
}

uint64_t sub_2994C3D4C(const char *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = "nfc,primary,gpio";
  if (a1 && strcasestr(a1, "hammerfest"))
  {
    v1 = "nfc,secondary,gpio";
  }

  LODWORD(result) = sub_2994C3114("AppleStockholmControl", v1);
  if (result)
  {
    goto LABEL_10;
  }

  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Could not find service with: %s, retrying slow path", "NFHardwareSerialIsSupported", 544, v1);
  }

  dispatch_get_specific(*v3);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "NFHardwareSerialIsSupported";
    v8 = 1024;
    v9 = 544;
    v10 = 2080;
    v11 = v1;
    _os_log_impl(&dword_2994B7000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service with: %s, retrying slow path", buf, 0x1Cu);
  }

  sub_2994C3628();
  result = sub_2994C3C0C(v1);
  if (result)
  {
LABEL_10:
    IOObjectRelease(result);
    return 1;
  }

  return result;
}

void sub_2994C3EA4(const char *a1)
{
  v56 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (MatchingService)
  {
    if (Logger)
    {
      Logger(6, "%s:%i %s found", "_NFHardwarePrintNode", 149, a1);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFHardwarePrintNode";
      *&buf[12] = 1024;
      *&buf[14] = 149;
      *&buf[18] = 2080;
      *&buf[20] = a1;
      _os_log_impl(&dword_2994B7000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s found", buf, 0x1Cu);
    }

    child = 0;
    if (IORegistryEntryGetChildEntry(MatchingService, "IOService", &child))
    {
      dispatch_get_specific(*v5);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v8(6, "%s:%i %s has no child", "_NFHardwarePrintNode", 162, a1);
      }

      dispatch_get_specific(*v5);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 162;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        _os_log_impl(&dword_2994B7000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has no child", buf, 0x1Cu);
      }
    }

    else if (child)
    {
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      v51 = 0u;
      v52 = 0u;
      memset(buf, 0, sizeof(buf));
      if (!MEMORY[0x29C29DE00]())
      {
        dispatch_get_specific(*v5);
        v11 = NFLogGetLogger();
        if (v11)
        {
          v11(6, "%s:%i %s has child %s", "_NFHardwarePrintNode", 157, a1, buf);
        }

        dispatch_get_specific(*v5);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 136446978;
          v43 = "_NFHardwarePrintNode";
          v44 = 1024;
          v45 = 157;
          v46 = 2080;
          v47 = a1;
          v48 = 2080;
          v49 = buf;
          _os_log_impl(&dword_2994B7000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has child %s", v42, 0x26u);
        }
      }

      IOObjectRelease(child);
    }

    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IONameMatch", 0, 0);
    if (CFProperty)
    {
      v14 = CFProperty;
      v15 = sub_2994C4648(CFProperty);
      dispatch_get_specific(*v5);
      v16 = NFLogGetLogger();
      if (v16)
      {
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = "??";
        }

        v16(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 168, a1, "IONameMatch", v17);
      }

      dispatch_get_specific(*v5);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 168;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IONameMatch";
        *&buf[38] = 2080;
        *&buf[40] = v19;
        _os_log_impl(&dword_2994B7000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v15)
      {
        free(v15);
      }

      CFRelease(v14);
    }

    v20 = IORegistryEntryCreateCFProperty(MatchingService, @"IONameMatched", 0, 0);
    if (v20)
    {
      v21 = v20;
      v22 = sub_2994C4648(v20);
      dispatch_get_specific(*v5);
      v23 = NFLogGetLogger();
      if (v23)
      {
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = "??";
        }

        v23(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 176, a1, "IONameMatched", v24);
      }

      dispatch_get_specific(*v5);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (v22)
        {
          v26 = v22;
        }

        else
        {
          v26 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 176;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IONameMatched";
        *&buf[38] = 2080;
        *&buf[40] = v26;
        _os_log_impl(&dword_2994B7000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v22)
      {
        free(v22);
      }

      CFRelease(v21);
    }

    v27 = IORegistryEntryCreateCFProperty(MatchingService, @"IOMatchCategory", 0, 0);
    if (v27)
    {
      v28 = v27;
      v29 = sub_2994C4648(v27);
      dispatch_get_specific(*v5);
      v30 = NFLogGetLogger();
      if (v30)
      {
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = "??";
        }

        v30(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 184, a1, "IOMatchCategory", v31);
      }

      dispatch_get_specific(*v5);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        if (v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 184;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IOMatchCategory";
        *&buf[38] = 2080;
        *&buf[40] = v33;
        _os_log_impl(&dword_2994B7000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v29)
      {
        free(v29);
      }

      CFRelease(v28);
    }

    v34 = IORegistryEntryCreateCFProperty(MatchingService, @"IOUserClientClass", 0, 0);
    if (v34)
    {
      v35 = v34;
      v36 = sub_2994C4648(v34);
      dispatch_get_specific(*v5);
      v37 = NFLogGetLogger();
      if (v37)
      {
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = "??";
        }

        v37(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 192, a1, "IOUserClientClass", v38);
      }

      dispatch_get_specific(*v5);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        if (v36)
        {
          v40 = v36;
        }

        else
        {
          v40 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 192;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IOUserClientClass";
        *&buf[38] = 2080;
        *&buf[40] = v40;
        _os_log_impl(&dword_2994B7000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v36)
      {
        free(v36);
      }

      CFRelease(v35);
    }

    IOObjectRelease(MatchingService);
  }

  else
  {
    if (Logger)
    {
      Logger(6, "%s:%i %s NOT found", "_NFHardwarePrintNode", 199, a1);
    }

    dispatch_get_specific(*v5);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFHardwarePrintNode";
      *&buf[12] = 1024;
      *&buf[14] = 199;
      *&buf[18] = 2080;
      *&buf[20] = a1;
      _os_log_impl(&dword_2994B7000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s NOT found", buf, 0x1Cu);
    }
  }
}

char *sub_2994C4648(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {
    v3 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
    if (v3)
    {
      CFStringGetCString(a1, v3, 256, 0x8000100u);
    }

    return v3;
  }

  else
  {

    return strdup(&unk_2994C631B);
  }
}

uint64_t sub_2994C46E0(io_iterator_t a1, const char *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  v28 = 0;
  if (a1 && IOIteratorIsValid(a1))
  {
    v4 = MEMORY[0x29EDC9730];
    while (1)
    {
      v5 = IOIteratorNext(a1);
      if (!v5)
      {
        return 0;
      }

      v6 = v5;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(__s1, 0, sizeof(__s1));
      v7 = MEMORY[0x29C29DE00](v5, __s1) ? 0 : strdup(__s1);
      CFProperty = IORegistryEntryCreateCFProperty(v6, @"IONameMatch", 0, 0);
      if (CFProperty)
      {
        v9 = CFProperty;
        v10 = sub_2994C4648(CFProperty);
        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = v10;
        if (strcmp(v10, a2))
        {
          goto LABEL_11;
        }

        dispatch_get_specific(*v4);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i Found property %s : %s", "_NFHardwareIsEntryMatching", 214, "IONameMatch", v11);
        }

        dispatch_get_specific(*v4);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *__s1 = 136446978;
          *&__s1[4] = "_NFHardwareIsEntryMatching";
          *&__s1[12] = 1024;
          *&__s1[14] = 214;
          *&__s1[18] = 2080;
          *&__s1[20] = "IONameMatch";
          *&__s1[28] = 2080;
          *&__s1[30] = v11;
          _os_log_impl(&dword_2994B7000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found property %s : %s", __s1, 0x26u);
        }

        free(v11);
        CFRelease(v9);
        v16 = IORegistryEntryCreateCFProperty(v6, @"IOClass", 0, 0);
        if (v16)
        {
          break;
        }
      }

LABEL_13:
      if (MEMORY[0x29C29DDF0](v6, "IOService", &v28))
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        IOObjectRelease(v6);
        v13 = sub_2994C46E0(v28, a2);
        v12 = v13 != 0;
        LODWORD(v6) = v28;
      }

      IOObjectRelease(v6);
      if (v7)
      {
        free(v7);
      }

      if (v12)
      {
        return v13;
      }

      if (!IOIteratorIsValid(a1))
      {
        goto LABEL_46;
      }
    }

    v9 = v16;
    v17 = sub_2994C4648(v16);
    if (v17)
    {
      v11 = v17;
      if (!strcmp(v17, "AppleStockholmControl"))
      {
        dispatch_get_specific(*v4);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v18(6, "%s:%i Found property %s : %s", "_NFHardwareIsEntryMatching", 226, "IOPropertyMatch", v11);
        }

        dispatch_get_specific(*v4);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *__s1 = 136446978;
          *&__s1[4] = "_NFHardwareIsEntryMatching";
          *&__s1[12] = 1024;
          *&__s1[14] = 226;
          *&__s1[18] = 2080;
          *&__s1[20] = "IOPropertyMatch";
          *&__s1[28] = 2080;
          *&__s1[30] = v11;
          _os_log_impl(&dword_2994B7000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found property %s : %s", __s1, 0x26u);
        }

        free(v11);
        CFRelease(v9);
        dispatch_get_specific(*v4);
        v20 = NFLogGetLogger();
        if (v20)
        {
          if (v7)
          {
            v21 = v7;
          }

          else
          {
            v21 = "??";
          }

          v20(6, "%s:%i %s has matching {%s / %s}", "_NFHardwareWalkTree", 274, v21, "AppleStockholmControl", a2);
        }

        dispatch_get_specific(*v4);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          if (v7)
          {
            v23 = v7;
          }

          else
          {
            v23 = "??";
          }

          *__s1 = 136447234;
          *&__s1[4] = "_NFHardwareWalkTree";
          *&__s1[12] = 1024;
          *&__s1[14] = 274;
          *&__s1[18] = 2080;
          *&__s1[20] = v23;
          *&__s1[28] = 2080;
          *&__s1[30] = "AppleStockholmControl";
          *&__s1[38] = 2080;
          *&__s1[40] = a2;
          _os_log_impl(&dword_2994B7000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has matching {%s / %s}", __s1, 0x30u);
        }

        if (v7)
        {
          free(v7);
        }

        return v6;
      }

LABEL_11:
      free(v11);
    }

LABEL_12:
    CFRelease(v9);
    goto LABEL_13;
  }

  v13 = 0;
LABEL_46:
  v24 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v25(3, "%s:%i Invalid iterator", "_NFHardwareWalkTree", 263);
  }

  dispatch_get_specific(*v24);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *__s1 = 136446466;
    *&__s1[4] = "_NFHardwareWalkTree";
    *&__s1[12] = 1024;
    *&__s1[14] = 263;
    _os_log_impl(&dword_2994B7000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid iterator", __s1, 0x12u);
  }

  return v13;
}

uint64_t sub_2994C4C04(char *__s2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!__s2 || !strncmp("com.apple.", __s2, 0xAuLL) || !strncmp("/dev/", __s2, 5uLL))
  {

    return sub_2994C3D4C(__s2);
  }

  else
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Unmatched interface %s", "NFHardwareInterfaceIsSupported", 720, __s2);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFHardwareInterfaceIsSupported";
      v8 = 1024;
      v9 = 720;
      v10 = 2080;
      v11 = __s2;
      _os_log_impl(&dword_2994B7000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i Unmatched interface %s", buf, 0x1Cu);
    }

    return 0;
  }
}

uint64_t sub_2994C4D84(UInt8 *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching("stockholm-spmi");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    return 0;
  }

  IOObjectRelease(MatchingService);
  v5 = IOServiceNameMatching("stockholm");
  v6 = IOServiceGetMatchingService(v2, v5);
  if (v6)
  {
    v7 = v6;
    v8 = IORegistryEntrySearchCFProperty(v6, "IOService", @"se-spmi-irq", *MEMORY[0x29EDB8ED8], 0);
    if (v8)
    {
      v9 = v8;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v9))
      {
        BytePtr = CFDataGetBytePtr(v9);
        if (BytePtr)
        {
          v12 = BytePtr;
          if (CFDataGetLength(v9))
          {
            *a1 = *v12;
          }
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      v13 = 0;
    }

    IOObjectRelease(v7);
  }

  else
  {
    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Unexpected state.", "NFHardwareInterfaceHasExternalSPMIIRQ", 753);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v19 = "NFHardwareInterfaceHasExternalSPMIIRQ";
      v20 = 1024;
      v21 = 753;
      _os_log_impl(&dword_2994B7000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected state.", buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return v13;
}