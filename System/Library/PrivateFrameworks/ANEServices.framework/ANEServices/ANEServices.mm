uint64_t ANE::ANEServicesDeviceServiceInterestCallback(uint64_t this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*this)
  {
    return (*this)(this, a3, a4, *(this + 8));
  }

  return this;
}

{
  if (*this)
  {
    return (*this)(this, a3, a4, *(this + 8));
  }

  return this;
}

uint64_t MyANEServicesDeviceMessageNotification(ANE::ANEServicesDevice *a1, int a2, void *a3, void *a4)
{
  if (a2 > -469794814)
  {
    if (a2 == -469794813)
    {
      v5 = 22;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      MyANEServicesDeviceMessageNotification();
      if (!a4)
      {
        return 0;
      }
    }

    else
    {
      if (a2 != -469794812)
      {
        return 0;
      }

      v5 = 23;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      MyANEServicesDeviceMessageNotification();
      if (!a4)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2 != -469794815)
    {
      if (a2 != -469794814)
      {
        return 0;
      }

      v5 = 0x1100000015;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        MyANEServicesDeviceMessageNotification();
        if (!a4)
        {
          return 0;
        }

        goto LABEL_17;
      }

LABEL_16:
      if (!a4)
      {
        return 0;
      }

      goto LABEL_17;
    }

    v5 = 0x1000000015;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    MyANEServicesDeviceMessageNotification();
    if (!a4)
    {
      return 0;
    }
  }

LABEL_17:
  v6 = a4[3];
  if (v6)
  {
    v7 = a4[2];
    v9[0] = v5;
    v6(v7, a4 + 8, 0, v9);
  }

  return 0;
}

uint64_t ANEServicesProgramCreate(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = 2;
  if (a2 && a1 && a3)
  {
    if (*(*(a1 + 16) + 8))
    {
      v5 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2408);
      v6 = +[ANEServicesLog handle];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v6))
        {
          v8 = *a2;
          v9 = *(a2 + 21);
          buf[0] = 134218240;
          *&buf[1] = v8;
          v12 = 1024;
          LODWORD(v13) = v9;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ServicesProgramCreate", "progContent=%llx statsMask=%x", buf, 0x12u);
        }
      }

      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramCreate_cold_1();
    }

    return 8;
  }

  return v3;
}

uint64_t ANEServicesProgramProcessRequestDirect(uint64_t a1, int *a2, void (**a3)(void, void), unsigned int *a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramProcessRequestDirect_cold_1();
    }

    return 2;
  }

  v6 = *(a1 + 16);
  if (*(v6 + 8))
  {
    v7 = *(v6 + 104);
    if (v7)
    {
      if (a2[1] <= 0xFF && a2[1532] < 0x100)
      {
        if (!a4 || *a4 <= 0x40 && a4[1] < 0x41)
        {
          add = atomic_fetch_add((v7 + 416), 1uLL);
          v10 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2414);
          v11 = +[ANEServicesLog handle];
          if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v12 = v11;
            if (os_signpost_enabled(v11))
            {
              v13 = *(a2 + 1536);
              v14 = *a2;
              *buf = 134218496;
              v17 = v13;
              v18 = 1024;
              v19 = v14;
              v20 = 2048;
              v21 = add;
              _os_signpost_emit_with_name_impl(&dword_1C0446000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ServicesProcessRequestDirect", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
            }
          }

          operator new();
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEServicesProgramProcessRequestDirect_cold_2();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramProcessRequestDirect_cold_5();
      }

      return 2;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramProcessRequestDirect_cold_6();
    }

    return 11;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramProcessRequestDirect_cold_7();
    }

    return 8;
  }
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramCreate(uint64_t a1, uint64_t *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = 3758097090;
  if (!*(a1 + 64))
  {
    return 3758097101;
  }

  if (a3)
  {
    v7 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2010);
    v8 = +[ANEServicesLog handle];
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v8))
      {
        v10 = *a2;
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v10;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ANEServicesDeviceProgramCreate", "prodAddr=%llx", &buf, 0xCu);
      }
    }

    *&buf = a2;
    *(&buf + 1) = 3464;
    v21 = a3;
    v22 = 706360;
    if (*(a1 + 24) == 1)
    {
      v3 = IOConnectCallStructMethod(*(a1 + 64), 3u, &buf, 0x20uLL, 0, 0);
    }

    else
    {
      v3 = 0;
    }

    v11 = +[ANEServicesLog handle];
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v11))
      {
        v13 = *a2;
        v14 = *a3;
        v16 = 134218240;
        v17 = v13;
        v18 = 2048;
        v19 = v14;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v12, OS_SIGNPOST_INTERVAL_END, v7, "ANEServicesDeviceProgramCreate", "prodAddr=%llx progHandle=%llx", &v16, 0x16u);
      }
    }
  }

  return v3;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramUnprepare(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = 3758097089;
  if (!*(a1 + 64))
  {
    return 3758097101;
  }

  if (*(a1 + 24) == 1)
  {
    v5 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B201C);
    v6 = +[ANEServicesLog handle];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v6))
      {
        v8 = *a2;
        v13 = 134217984;
        v14 = v8;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ANEServicesDeviceProgramUnprepare", "progHandle=%llx", &v13, 0xCu);
      }
    }

    v2 = IOConnectCallStructMethod(*(a1 + 64), 5u, a2, 0x38uLL, 0, 0);
    v9 = +[ANEServicesLog handle];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v9))
      {
        v11 = *a2;
        v13 = 134217984;
        v14 = v11;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v10, OS_SIGNPOST_INTERVAL_END, v5, "ANEServicesDeviceProgramUnprepare", "progHandle=%llx", &v13, 0xCu);
      }
    }
  }

  return v2;
}

uint64_t ANEServicesProgramDestroy(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2;
  }

  v2 = *(a1 + 8);
  v3 = *(*v2 + 16);
  v4 = *(v3 + 8);
  if (v4)
  {
    if (*(v3 + 32) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramDestroy_cold_2();
      }

      return 20;
    }

    if (v2[435])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramDestroy_cold_1();
      }

      return 2;
    }

    v7 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2428);
    v8 = +[ANEServicesLog handle];
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v8))
      {
        v10 = *(a1 + 112);
        *buf = 134217984;
        *&buf[4] = v10;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ServicesProgramDestroy", "progHandle=%llx", buf, 0xCu);
      }
    }

    *buf = v2[437];
    v11 = ANE::ANEServicesDevice::ANE_ProgramDestroy(v4, buf);
    if (v11 > -536870185)
    {
      if (v11 > -536870166)
      {
        if (v11 <= -536870163)
        {
          if (v11 == -536870165)
          {
            v5 = 21;
            goto LABEL_66;
          }

          if (v11 == -536870163)
          {
            v5 = 27;
            goto LABEL_66;
          }
        }

        else
        {
          switch(v11)
          {
            case -536870162:
              v5 = 28;
              goto LABEL_66;
            case -536870160:
              v5 = 4;
              goto LABEL_66;
            case 0:
              v5 = 0;
              goto LABEL_66;
          }
        }
      }

      else if (v11 <= -536870175)
      {
        if (v11 == -536870184)
        {
          v5 = 22;
          goto LABEL_66;
        }

        if (v11 == -536870176)
        {
          v5 = 26;
          goto LABEL_66;
        }
      }

      else
      {
        switch(v11)
        {
          case -536870174:
            v5 = 23;
            goto LABEL_66;
          case -536870173:
            v5 = 10;
            goto LABEL_66;
          case -536870169:
            v5 = 29;
            goto LABEL_66;
        }
      }
    }

    else if (v11 > -536870204)
    {
      if (v11 <= -536870192)
      {
        if (v11 == -536870203)
        {
          v5 = 30;
          goto LABEL_66;
        }

        if (v11 == -536870201)
        {
          v5 = 24;
          goto LABEL_66;
        }
      }

      else
      {
        switch(v11)
        {
          case -536870191:
            v5 = 19;
            goto LABEL_66;
          case -536870190:
            v5 = 32;
            goto LABEL_66;
          case -536870186:
            v5 = 15;
            goto LABEL_66;
        }
      }
    }

    else if (v11 <= -536870211)
    {
      if (v11 == -536870911)
      {
        v5 = 31;
        goto LABEL_66;
      }

      if (v11 == -536870211)
      {
        v5 = 1;
        goto LABEL_66;
      }
    }

    else
    {
      switch(v11)
      {
        case -536870210:
          v5 = 5;
          goto LABEL_66;
        case -536870207:
          v5 = 20;
          goto LABEL_66;
        case -536870206:
          v5 = 2;
LABEL_66:
          MEMORY[0x1C68DA430](v2, 0x10A0C4005977B85);
          *(a1 + 72) = 0;
          *(a1 + 32) = 0;
          *(a1 + 96) = 0;
          *(a1 + 144) = 0;
          v12 = *(a1 + 40);
          if (v12)
          {
            MEMORY[0x1C68DA410](v12, 0x1000C8077774924);
          }

          v13 = *(a1 + 48);
          if (v13)
          {
            MEMORY[0x1C68DA410](v13, 0x1000C8000313F17);
          }

          v14 = *(a1 + 80);
          if (v14)
          {
            MEMORY[0x1C68DA410](v14, 0x1000C8077774924);
          }

          v15 = *(a1 + 88);
          if (v15)
          {
            MEMORY[0x1C68DA410](v15, 0x1000C8000313F17);
          }

          v16 = *(a1 + 104);
          if (v16)
          {
            MEMORY[0x1C68DA410](v16, 0x1000C80669DE214);
          }

          v17 = *(a1 + 56);
          if (v17)
          {
            MEMORY[0x1C68DA410](v17, 0x1000C802D139ED7);
          }

          v18 = *(a1 + 64);
          if (v18)
          {
            MEMORY[0x1C68DA410](v18, 0x1000C802D139ED7);
          }

          v19 = +[ANEServicesLog handle];
          if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v20 = v19;
            if (os_signpost_enabled(v19))
            {
              v21 = *(a1 + 112);
              v22 = 134217984;
              v23 = v21;
              _os_signpost_emit_with_name_impl(&dword_1C0446000, v20, OS_SIGNPOST_INTERVAL_END, v7, "ServicesProgramDestroy", "progHandle=%llx", &v22, 0xCu);
            }
          }

          MEMORY[0x1C68DA430](a1, 0x10F0C40678A4445);
          return v5;
      }
    }

    v5 = 18;
    goto LABEL_66;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEServicesProgramDestroy_cold_3();
  }

  return 8;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramDestroy(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = 3758097089;
  if (!*(a1 + 64))
  {
    return 3758097101;
  }

  if (*(a1 + 24) == 1)
  {
    v5 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2020);
    v6 = +[ANEServicesLog handle];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v6))
      {
        v8 = *a2;
        v13 = 134217984;
        v14 = v8;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ANEServicesDeviceProgramDestroy", "progHandle=%llx", &v13, 0xCu);
      }
    }

    v2 = IOConnectCallStructMethod(*(a1 + 64), 6u, a2, 0x10uLL, 0, 0);
    v9 = +[ANEServicesLog handle];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v9))
      {
        v11 = *a2;
        v13 = 134217984;
        v14 = v11;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v10, OS_SIGNPOST_INTERVAL_END, v5, "ANEServicesDeviceProgramDestroy", "progHandle=%llx", &v13, 0xCu);
      }
    }
  }

  return v2;
}

uint64_t ANEServicesDeviceClose(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceClose_cold_4();
    }

    return 8;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceClose_cold_3();
    }

    return 2;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceClose_cold_2();
    }

    return 8;
  }

  v4 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 104);
    v6 = pthread_self();
    v7 = pthread_equal(v6, v4[9]);
    if (v7)
    {
      v8 = ANE::ANEIsDelayedCloseFlagSet(v7);
      LOBYTE(v19) = v8;
      if ((v8 & 1) == 0)
      {
        ANE::ANESetCurrentThreadAsTerminating(a1);
        return 0;
      }

      ANE::ANEAckCloseRequest(v8);
    }

    if (*(v2 + 32) == 1 && v5 == 0)
    {
      return 11;
    }

    v10 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2404);
    v11 = +[ANEServicesLog handle];
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v11))
      {
        v19 = 134217984;
        v20 = a1;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ServicesDeviceClose", "deviceID=%llx", &v19, 0xCu);
      }
    }

    if (*(v2 + 32) == 1)
    {
      ANE::ANERequestReceiver::completeAllRequests(v5);
      ANE::DestroyANERequestReceiver(v5, v13);
      *(v2 + 104) = 0;
      v14 = *(v2 + 120);
      if (v14)
      {
        ANE::ANERequestReceiverBufferPool::~ANERequestReceiverBufferPool(v14);
        MEMORY[0x1C68DA430]();
      }
    }

    ANE::ANEServicesDevice::ANEDeviceClose(v3);
    ANE::DestroyANEDeviceController(v4, v15);
    MEMORY[0x1C68DA430](v2, 0x10E0C4056312195);
    v16 = +[ANEServicesLog handle];
    if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return 0;
    }

    v17 = v16;
    result = os_signpost_enabled(v16);
    if (result)
    {
      v19 = 134217984;
      v20 = a1;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v17, OS_SIGNPOST_INTERVAL_END, v10, "ServicesDeviceClose", "deviceID=%llx", &v19, 0xCu);
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesDeviceClose_cold_1();
    }

    return 7;
  }

  return result;
}

uint64_t ANEServicesProgramStop(void *a1, int a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if (!a1 || !a2)
  {
    return v3;
  }

  v5 = a1[1];
  v6 = *(*v5 + 16);
  v7 = *(v6 + 8);
  if (v7)
  {
    if (*(v6 + 32) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramStop_cold_2();
      }

      return 20;
    }

    v9 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2424);
    v10 = +[ANEServicesLog handle];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v10))
      {
        v12 = a1[14];
        *buf = 134218496;
        *&buf[4] = v12;
        v25 = 1024;
        v26 = 1;
        v27 = 1024;
        v28 = a3;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ServicesProgramStop", "progHandle=%llx blocking=%d forceStop=%d", buf, 0x18u);
      }
    }

    *buf = v5[437];
    buf[11] = a3;
    v13 = ANE::ANEServicesDevice::ANE_ProgramUnprepare(v7, buf);
    if (v13 > -536870185)
    {
      if (v13 > -536870166)
      {
        if (v13 <= -536870163)
        {
          if (v13 == -536870165)
          {
            v3 = 21;
            goto LABEL_65;
          }

          if (v13 == -536870163)
          {
            v3 = 27;
            goto LABEL_65;
          }
        }

        else
        {
          switch(v13)
          {
            case -536870162:
              v3 = 28;
              goto LABEL_65;
            case -536870160:
              v3 = 4;
              goto LABEL_65;
            case 0:
              v3 = 0;
              a1[19] = 0;
LABEL_67:
              v14 = +[ANEServicesLog handle];
              if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v15 = v14;
                if (os_signpost_enabled(v14))
                {
                  v16 = a1[14];
                  v18 = 134218496;
                  v19 = v16;
                  v20 = 1024;
                  v21 = 1;
                  v22 = 1024;
                  v23 = a3;
                  _os_signpost_emit_with_name_impl(&dword_1C0446000, v15, OS_SIGNPOST_INTERVAL_END, v9, "ServicesProgramStop", "progHandle=%llx blocking=%d forceStop=%d", &v18, 0x18u);
                }
              }

              return v3;
          }
        }
      }

      else if (v13 <= -536870175)
      {
        if (v13 == -536870184)
        {
          v3 = 22;
          goto LABEL_65;
        }

        if (v13 == -536870176)
        {
          v3 = 26;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case -536870174:
            v3 = 23;
            goto LABEL_65;
          case -536870173:
            v3 = 10;
            goto LABEL_65;
          case -536870169:
            v3 = 29;
            goto LABEL_65;
        }
      }
    }

    else if (v13 > -536870204)
    {
      if (v13 <= -536870192)
      {
        if (v13 == -536870203)
        {
          v3 = 30;
          goto LABEL_65;
        }

        if (v13 == -536870201)
        {
          v3 = 24;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case -536870191:
            v3 = 19;
            goto LABEL_65;
          case -536870190:
            v3 = 32;
            goto LABEL_65;
          case -536870186:
            v3 = 15;
            goto LABEL_65;
        }
      }
    }

    else if (v13 <= -536870211)
    {
      if (v13 == -536870911)
      {
        v3 = 31;
        goto LABEL_65;
      }

      if (v13 == -536870211)
      {
        v3 = 1;
        goto LABEL_65;
      }
    }

    else
    {
      switch(v13)
      {
        case -536870210:
          v3 = 5;
          goto LABEL_65;
        case -536870207:
          v3 = 20;
          goto LABEL_65;
        case -536870206:
          v3 = 2;
          goto LABEL_65;
      }
    }

    v3 = 18;
LABEL_65:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramStop_cold_1();
    }

    goto LABEL_67;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEServicesProgramStop_cold_3();
  }

  return 8;
}

uint64_t ANE::ANERequestReceiver::completeAllRequests(ANE::ANERequestReceiver *this)
{
  pthread_mutex_lock((this + 112));
  if (!*this)
  {
    pthread_mutex_unlock((this + 112));
    return 3758097122;
  }

  pthread_mutex_lock((this + 176));
  if (!*(this + 50))
  {
    pthread_mutex_unlock((this + 176));
    goto LABEL_8;
  }

  *(this + 248) = 1;
  pthread_mutex_unlock((this + 176));
  v2 = dispatch_time(0, 5000000000);
  if (!dispatch_semaphore_wait(*(this + 30), v2))
  {
LABEL_8:
    v7 = 0;
    goto LABEL_18;
  }

  printf("DEBUG:ANERequestReceiver: Did not get all pending requests back from kernel. remaining: %d.\n", *(this + 50));
  v3 = *(this + 46);
  v4 = *(this + 47);
  v5 = (v3 + 8 * (*(this + 49) >> 9));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*v5 + 8 * (*(this + 49) & 0x1FFLL));
  }

  while (1)
  {
    if (v4 == v3)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(this + 50) + *(this + 49);
      v9 = *(v3 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF);
    }

    if (v6 == v9)
    {
      break;
    }

    v10 = *v6++;
    printf("ANERequestReceiver: Request not returned 0x%p\n", v10);
    if ((v6 - *v5) == 4096)
    {
      v11 = v5[1];
      ++v5;
      v6 = v11;
    }

    v3 = *(this + 46);
    v4 = *(this + 47);
  }

  v7 = 3758097110;
LABEL_18:
  if (*(this + 14))
  {
    gettimeofday(&v14, 0);
    v12 = 1000 * v14.tv_usec + 1000000 * *(this + 4);
    v15.tv_sec = v14.tv_sec + v12 / 0x3B9ACA00uLL;
    v15.tv_nsec = v12 % 0x3B9ACA00;
    if (pthread_cond_timedwait((this + 64), (this + 112), &v15) == 60 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANE::ANERequestReceiver::stopReceive();
    }
  }

  pthread_mutex_lock((this + 176));
  *(this + 248) = 0;
  pthread_mutex_unlock((this + 176));
  pthread_mutex_unlock((this + 112));
  return v7;
}

uint64_t ANEServicesDeviceOpen(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2400);
    v6 = +[ANEServicesLog handle];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v6))
      {
        v8 = *a2;
        *buf = 67109120;
        v11 = v8;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ServicesDeviceOpen", "UsageType=%d", buf, 8u);
      }
    }

    operator new();
  }

  return 2;
}

uint64_t ANE::ANERequestReceiver::ProgramProcessRequest(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v83 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8232);
  v9 = *(a2 + 8240);
  v10 = *(a2 + 8256);
  v11 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2208);
  v12 = +[ANEServicesLog handle];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v12))
    {
      *buf = 134218496;
      *&buf[4] = v8;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ANERequestReceiverProcessRequest", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  v61 = v8;
  v62 = v9;
  v63 = v10;
  bzero(buf, 0x948uLL);
  pthread_mutex_lock((a1 + 112));
  if ((*(a1 + 408) & 1) != 0 || *a1 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANE::ANERequestReceiver::ProgramProcessRequest();
    }

    v15 = 3758097122;
  }

  else
  {
    v14 = *(a2 + 4080);
    if ((v14 - 256) > 0xFFFFFF00)
    {
      v19 = *(a2 + 8168);
      if ((v19 - 256) > 0xFFFFFF00)
      {
        if ((v19 + v14) <= 0xFF)
        {
          v20 = 0;
          v21 = 8 * v14;
          do
          {
            if (!*(a2 + v20))
            {
              v15 = 3758097090;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ANE::ANERequestReceiver::ProgramProcessRequest();
              }

              goto LABEL_13;
            }

            v20 += 8;
          }

          while (v21 != v20);
          if (v19)
          {
            v22 = (a2 + 4088);
            while (*v22)
            {
              ++v22;
              if (!--v19)
              {
                goto LABEL_30;
              }
            }

            v15 = 3758097090;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ANE::ANERequestReceiver::ProgramProcessRequest();
            }
          }

          else
          {
LABEL_30:
            v23 = *(a2 + 0x2000);
            if (v23)
            {
              v24 = (a2 + 8176);
              while (*v24)
              {
                ++v24;
                if (!--v23)
                {
                  goto LABEL_34;
                }
              }

              v15 = 3758097090;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ANE::ANERequestReceiver::ProgramProcessRequest();
              }
            }

            else
            {
LABEL_34:
              v25 = *(a2 + 8200);
              if (v25)
              {
                CVPixelBufferRetain(v25);
                IOSurface = CVPixelBufferGetIOSurface(*(a2 + 8200));
                LODWORD(v25) = IOSurfaceGetID(IOSurface);
              }

              v76[1] = v25;
              v27 = *(a2 + 8216);
              if (v27)
              {
                CFRetain(v27);
              }

              v28 = *(a2 + 8208);
              if (v28)
              {
                CFRetain(v28);
                LODWORD(v28) = IOSurfaceGetID(*(a2 + 8208));
              }

              v80 = v28;
              LODWORD(v29) = *(a2 + 4080);
              if (v29)
              {
                v30 = 0;
                v31 = (a2 + 2040);
                v32 = a2;
                do
                {
                  CFRetain(*v32);
                  ID = IOSurfaceGetID(*v32);
                  v34 = &buf[4 * v30];
                  *(v34 + 8) = ID;
                  v73[v30] = *v31;
                  *(v34 + 331) = v31[255];
                  ++v30;
                  v29 = *(a2 + 4080);
                  ++v32;
                  ++v31;
                }

                while (v30 < v29);
              }

              v35 = *(a2 + 8168);
              if (v29 < v35 + v29)
              {
                v36 = (a2 + 4088);
                v37 = (a2 + 6128);
                v38 = v29;
                do
                {
                  CFRetain(*v36);
                  v39 = IOSurfaceGetID(*v36);
                  v29 = &buf[4 * v38];
                  *(v29 + 8) = v39;
                  v73[v38] = *v37;
                  *(v29 + 331) = v37[255];
                  ++v38;
                  LODWORD(v29) = *(a2 + 4080);
                  v35 = *(a2 + 8168);
                  ++v36;
                  ++v37;
                }

                while (v38 < (v35 + v29));
              }

              LODWORD(v40) = *(a2 + 0x2000);
              if (v40)
              {
                v41 = 0;
                v42 = a2 + 8176;
                do
                {
                  CFRetain(*(v42 + 8 * v41));
                  v76[v41] = IOSurfaceGetID(*(v42 + 8 * v41));
                  ++v41;
                  v40 = *(a2 + 0x2000);
                }

                while (v41 < v40);
                LODWORD(v29) = *(a2 + 4080);
                v35 = *(a2 + 8168);
              }

              v79 = *(a2 + 8401);
              v74 = v35;
              v75 = v40;
              v43 = *(a2 + 8232);
              *&buf[24] = *(a2 + 8240);
              v72 = v29;
              v44 = *(a2 + 8256);
              *buf = v43;
              *&buf[8] = v44;
              *&buf[16] = *(a2 + 8244);
              LODWORD(v44) = *(a1 + 16);
              v77 = v44 == 0;
              v81 = a3;
              v82 = v44;
              if (a3 && (v45 = *a3, v45))
              {
                v46 = 0;
                v47 = a3 + 3;
                do
                {
                  v48 = *v47;
                  v47 += 12;
                  v46 |= v48 == 2;
                  --v45;
                }

                while (v45);
              }

              else
              {
                v46 = 0;
              }

              if (a4)
              {
                ++*(a1 + 56);
                pthread_mutex_unlock((a1 + 112));
                v49 = ANE::ANEServicesDevice::ANE_ProgramSendRequest(*(a1 + 352), buf, *(a1 + 336), 1u, v65);
                v15 = v49;
                if (!v49)
                {
                  ANE::ANERequestReceiver::syncFrameDone(a1, a2, v65);
                }

                ANE::ANERequestReceiver::releaseRequestBuffers(v49, a2);
                ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(a2);
                MEMORY[0x1C68DA430]();
                pthread_mutex_lock((a1 + 112));
                v50 = *(a1 + 56) - 1;
                *(a1 + 56) = v50;
                if (!v50)
                {
                  pthread_cond_signal((a1 + 64));
                }
              }

              else
              {
                v64 = a2;
                v78 = *(a2 + 8400);
                pthread_mutex_lock((a1 + 176));
                std::deque<ANE::ANERequestReceiverRequest *>::push_back((a1 + 360), &v64);
                pthread_mutex_unlock((a1 + 176));
                v15 = ANE::ANEServicesDevice::ANE_ProgramSendRequest(*(a1 + 352), buf, *(a1 + 336), 0, v65);
                if (v15)
                {
                  pthread_mutex_lock((a1 + 176));
                  v51 = *(a1 + 392);
                  v52 = *(a1 + 368);
                  v53 = *(a1 + 376);
                  v54 = (v52 + 8 * (v51 >> 9));
                  if (v53 == v52)
                  {
                    v55 = 0;
                  }

                  else
                  {
                    v55 = (*v54 + 8 * (*(a1 + 392) & 0x1FFLL));
                  }

LABEL_73:
                  v56 = v55;
                  while (1)
                  {
                    if (v53 == v52)
                    {
                      v57 = 0;
                    }

                    else
                    {
                      v57 = *(v52 + (((*(a1 + 400) + v51) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 400) + v51) & 0x1FF);
                    }

                    if (v56 == v57)
                    {
                      v59 = pthread_mutex_unlock((a1 + 176));
                      ANE::ANERequestReceiver::releaseRequestBuffers(v59, a2);
                      goto LABEL_13;
                    }

                    if (*v56 && *(*v56 + 8256) == *(v64 + 1032))
                    {
                      break;
                    }

                    v56 += 8;
                    v55 += 8;
                    if ((*v54 + 4096) == v55)
                    {
                      v58 = *(v54 + 1);
                      v54 += 8;
                      v55 = v58;
                      goto LABEL_73;
                    }
                  }

                  std::deque<ANE::ANERequestReceiverRequest *>::erase((a1 + 360), v54, v55);
                  v60 = pthread_mutex_unlock((a1 + 176));
                  ANE::ANERequestReceiver::releaseRequestBuffers(v60, a2);
                  if (v64)
                  {
                    ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(v64);
                    MEMORY[0x1C68DA430]();
                  }

                  v64 = 0;
                }

                else if (v46)
                {
                  ANE::ANERequestReceiver::stopNoDataTimer(a1);
                }

                else if (*(a1 + 400) == 1)
                {
                  ANE::ANERequestReceiver::startNoDataTimer(a1);
                }
              }
            }
          }
        }

        else
        {
          v15 = 3758097090;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ANE::ANERequestReceiver::ProgramProcessRequest();
          }
        }
      }

      else
      {
        v15 = 3758097090;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANE::ANERequestReceiver::ProgramProcessRequest();
        }
      }
    }

    else
    {
      v15 = 3758097090;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANE::ANERequestReceiver::ProgramProcessRequest();
      }
    }
  }

LABEL_13:
  pthread_mutex_unlock((a1 + 112));
  v16 = +[ANEServicesLog handle];
  if (v11 - 1 < 0xFFFFFFFFFFFFFFFELL)
  {
    v17 = v16;
    if (os_signpost_enabled(v16))
    {
      *v65 = 134218496;
      v66 = v61;
      v67 = 1024;
      v68 = v62;
      v69 = 2048;
      v70 = v63;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v17, OS_SIGNPOST_INTERVAL_END, v11, "ANERequestReceiverProcessRequest", "progHandle=%llx procid=%x transid=%llx", v65, 0x1Cu);
    }
  }

  return v15;
}

uint64_t ANE::ANEServicesDevice::ANE_ProgramSendRequest(uint64_t a1, _DWORD *a2, mach_port_t a3, unsigned int a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a2[6];
  v10 = *a2;
  v19 = *(a2 + 1);
  v11 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B200C);
  v12 = +[ANEServicesLog handle];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v12))
    {
      *buf = 134218496;
      v23 = v10;
      v24 = 1024;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ANEServicesDeviceSendRequest", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  v20 = 40;
  input = a4;
  v14 = IOConnectCallAsyncMethod(*(a1 + 64), 2u, a3, 0, 0, &input, 1u, a2, 0x948uLL, 0, 0, a5, &v20);
  if (v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANE::ANEServicesDevice::ANE_ProgramSendRequest(v14);
  }

  v15 = +[ANEServicesLog handle];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v15))
    {
      *buf = 134218496;
      v23 = v10;
      v24 = 1024;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v16, OS_SIGNPOST_INTERVAL_END, v11, "ANEServicesDeviceSendRequest", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  return v14;
}

void ANE::ANERequestReceiver::syncFrameDone(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = *(a2 + 8240);
  v16 = *(a2 + 8232);
  v17 = *(a2 + 8256);
  v6 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B220C);
  v7 = +[ANEServicesLog handle];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v7))
    {
      *buf = 134218752;
      v20 = v16;
      v21 = 1024;
      v22 = v18;
      v23 = 2048;
      v24 = v17;
      v25 = 2048;
      v26 = a3;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ANERequestReceiverFrameDone", "progHandle=%llx procid=%x transid=%llx reqcallBackData=%llx", buf, 0x26u);
    }
  }

  if (*(a2 + 8256) != *a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANE::ANERequestReceiver::syncFrameDone();
  }

  if (*(a2 + 8232) != a3[1] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANE::ANERequestReceiver::syncFrameDone();
  }

  *(a2 + 8288) = a3[2];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = a3[3];
    if (v10)
    {
      *(a2 + 8224) = 0;
      *(a2 + 8264) = v10 | 0x1000;
      v9(*(a1 + 24), a2);
    }

    *(a2 + 8264) = 0;
    if (debugFwStatsData == 1)
    {
      v11 = *(a2 + 8200);
      if (v11)
      {
        if ((*(a2 + 8196) & 0xB) != 0)
        {
          CVPixelBufferLockBaseAddress(v11, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(*(a2 + 8200));
          ANE::dumpFwStatsData(BaseAddress);
          CVPixelBufferUnlockBaseAddress(*(a2 + 8200), 0);
        }
      }
    }

    if (a3[4] == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = -536870165;
    }

    *(a2 + 8224) = v13;
    (*(a1 + 32))(*(a1 + 24), a2);
  }

  v14 = +[ANEServicesLog handle];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v14))
    {
      *buf = 134218752;
      v20 = v16;
      v21 = 1024;
      v22 = v18;
      v23 = 2048;
      v24 = v17;
      v25 = 2048;
      v26 = a3;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v15, OS_SIGNPOST_INTERVAL_END, v6, "ANERequestReceiverFrameDone", "progHandle=%llx procid=%x transid=%llx reqCb->programHandle=0x%llx", buf, 0x26u);
    }
  }
}

void ANEServicesFrameProcDirect(void *a1, ANE::ANERequestReceiverRequest *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1035);
  v4 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B241C);
  v5 = +[ANEServicesLog handle];
  v45 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v5))
    {
      v7 = *(a2 + 1029);
      v8 = *(a2 + 2060);
      v9 = *(a2 + 1032);
      *buf = 134218496;
      *v50 = v7;
      *&v50[8] = 1024;
      *&v50[10] = v8;
      *&v50[14] = 2048;
      *&v50[16] = v9;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ServicesFrameProcDirect", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  v46 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2434);
  if (*(a2 + 1033))
  {
    v10 = *(a2 + 2056);
    if (v10 > -536870185)
    {
      if (v10 > -536870166)
      {
        if (v10 <= -536870163)
        {
          if (v10 == -536870165)
          {
            v10 = 21;
            goto LABEL_71;
          }

          if (v10 == -536870163)
          {
            v10 = 27;
            goto LABEL_71;
          }
        }

        else
        {
          switch(v10)
          {
            case -536870162:
              v10 = 28;
              goto LABEL_71;
            case -536870160:
              v10 = 4;
              goto LABEL_71;
            case 0:
LABEL_71:
              LODWORD(v48) = *(a2 + 1033);
              if (v3)
              {
                *buf = 19;
                *v50 = v10;
                *&v50[4] = &v48;
                *&v50[12] = 0u;
                v51 = 0u;
                v52 = 0u;
                (*(v3 + 16))(v3, buf);
              }

              v24 = +[ANEServicesLog handle];
              if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v25 = v24;
                if (os_signpost_enabled(v24))
                {
                  v26 = *(a2 + 1029);
                  v27 = *(a2 + 2060);
                  v28 = *(a2 + 1032);
                  *buf = 134218496;
                  *v50 = v26;
                  *&v50[8] = 1024;
                  *&v50[10] = v27;
                  *&v50[14] = 2048;
                  *&v50[16] = v28;
                  _os_signpost_emit_with_name_impl(&dword_1C0446000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v46, "ServicesClientCallback", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
                }
              }

              goto LABEL_138;
          }
        }
      }

      else if (v10 <= -536870175)
      {
        if (v10 == -536870184)
        {
          v10 = 22;
          goto LABEL_71;
        }

        if (v10 == -536870176)
        {
          v10 = 26;
          goto LABEL_71;
        }
      }

      else
      {
        switch(v10)
        {
          case -536870174:
            v10 = 23;
            goto LABEL_71;
          case -536870173:
            v10 = 10;
            goto LABEL_71;
          case -536870169:
            v10 = 29;
            goto LABEL_71;
        }
      }
    }

    else if (v10 > -536870204)
    {
      if (v10 <= -536870192)
      {
        if (v10 == -536870203)
        {
          v10 = 30;
          goto LABEL_71;
        }

        if (v10 == -536870201)
        {
          v10 = 24;
          goto LABEL_71;
        }
      }

      else
      {
        switch(v10)
        {
          case -536870191:
            v10 = 19;
            goto LABEL_71;
          case -536870190:
            v10 = 32;
            goto LABEL_71;
          case -536870186:
            v10 = 15;
            goto LABEL_71;
        }
      }
    }

    else if (v10 <= -536870211)
    {
      if (v10 == -536870911)
      {
        v10 = 31;
        goto LABEL_71;
      }

      if (v10 == -536870211)
      {
        v10 = 1;
        goto LABEL_71;
      }
    }

    else
    {
      switch(v10)
      {
        case -536870210:
          v10 = 5;
          goto LABEL_71;
        case -536870207:
          v10 = 20;
          goto LABEL_71;
        case -536870206:
          v10 = 2;
          goto LABEL_71;
      }
    }

    v10 = 18;
    goto LABEL_71;
  }

  v48 = 0;
  if (!*(a2 + 8196))
  {
    v20 = v4;
    goto LABEL_76;
  }

  v11 = *(a2 + 1025);
  if (!v11)
  {
    v20 = v4;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_76;
    }

    *buf = 136315138;
    *v50 = "ANEServicesFrameProcDirect";
    v21 = MEMORY[0x1E69E9C10];
    v22 = "ERROR %s: Stats CV Pixel Buffer is not allocated\n";
    v23 = 12;
    goto LABEL_56;
  }

  CVPixelBufferLockBaseAddress(v11, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(*(a2 + 1025));
  if (!*(BaseAddress + 7))
  {
    goto LABEL_53;
  }

  v13 = (BaseAddress + 16);
  v14 = *BaseAddress;
  if (v14 == 513 || v14 == 257)
  {
    v15 = 0;
    v16 = 4;
    if (v14 == 513)
    {
      v16 = 2;
    }

    v17 = &BaseAddress[v16];
    v18 = *(BaseAddress + 7);
    do
    {
      v19 = *v13;
      v13 += 2;
      v15 += *(v17 + v19);
      --v18;
    }

    while (v18);
LABEL_53:
    operator new();
  }

  v20 = v4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v50 = "ANEServicesFrameProcDirect";
    *&v50[8] = 1024;
    *&v50[10] = v14;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "ERROR %s: Invalid stats version %u\n";
    v23 = 18;
LABEL_56:
    _os_log_impl(&dword_1C0446000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
  }

LABEL_76:
  v29 = *(a2 + 2056);
  if (v29 == -536870186)
  {
    v30 = 17;
  }

  else
  {
    v30 = 8;
  }

  v47 = *(a2 + 8288);
  if (v29 <= -536870185)
  {
    if (v29 > -536870204)
    {
      if (v29 <= -536870192)
      {
        if (v29 == -536870203)
        {
          v31 = 30;
          goto LABEL_127;
        }

        if (v29 == -536870201)
        {
          v31 = 24;
          goto LABEL_127;
        }
      }

      else
      {
        switch(v29)
        {
          case -536870191:
            v31 = 19;
            goto LABEL_127;
          case -536870190:
            v31 = 32;
            goto LABEL_127;
          case -536870186:
            v31 = 15;
            goto LABEL_127;
        }
      }
    }

    else if (v29 <= -536870211)
    {
      if (v29 == -536870911)
      {
        v31 = 31;
        goto LABEL_127;
      }

      if (v29 == -536870211)
      {
        v31 = 1;
        goto LABEL_127;
      }
    }

    else
    {
      switch(v29)
      {
        case -536870210:
          v31 = 5;
          goto LABEL_127;
        case -536870207:
          v31 = 20;
          goto LABEL_127;
        case -536870206:
          v31 = 2;
          goto LABEL_127;
      }
    }

    goto LABEL_126;
  }

  if (v29 <= -536870166)
  {
    if (v29 <= -536870175)
    {
      if (v29 == -536870184)
      {
        v31 = 22;
        goto LABEL_127;
      }

      if (v29 == -536870176)
      {
        v31 = 26;
        goto LABEL_127;
      }
    }

    else
    {
      switch(v29)
      {
        case -536870174:
          v31 = 23;
          goto LABEL_127;
        case -536870173:
          v31 = 10;
          goto LABEL_127;
        case -536870169:
          v31 = 29;
          goto LABEL_127;
      }
    }

    goto LABEL_126;
  }

  if (v29 <= -536870163)
  {
    if (v29 == -536870165)
    {
      v31 = 21;
      goto LABEL_127;
    }

    if (v29 == -536870163)
    {
      v31 = 27;
      goto LABEL_127;
    }

LABEL_126:
    v31 = 18;
LABEL_127:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a2 + 1029);
      v33 = *(a2 + 1032);
      *buf = 136316162;
      *v50 = "void ANEServicesFrameProcDirect(void *, ANERequestReceiverRequest *)";
      *&v50[8] = 2048;
      *&v50[10] = v32;
      *&v50[18] = 2048;
      *&v50[20] = v33;
      LOWORD(v51) = 1024;
      *(&v51 + 2) = v30;
      WORD3(v51) = 1024;
      DWORD2(v51) = v31;
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ANEInferface: ANEServicesIn:%s programHanlde:0x%llx, transactionId:%llx, statusType: 0x%x, status: 0x%x\n", buf, 0x2Cu);
    }

    goto LABEL_129;
  }

  if (v29 == -536870162)
  {
    v31 = 28;
    goto LABEL_127;
  }

  if (v29 == -536870160)
  {
    v31 = 4;
    goto LABEL_127;
  }

  if (v29)
  {
    goto LABEL_126;
  }

  v31 = 0;
LABEL_129:
  if (v3)
  {
    *buf = v30;
    *v50 = v31;
    *&v50[4] = &v47;
    *&v50[12] = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    (*(v3 + 16))(v3, buf);
  }

  v34 = +[ANEServicesLog handle];
  v4 = v20;
  if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v35 = v34;
    if (os_signpost_enabled(v34))
    {
      v36 = *(a2 + 1029);
      v37 = *(a2 + 2060);
      v38 = *(a2 + 1032);
      *buf = 134218496;
      *v50 = v36;
      *&v50[8] = 1024;
      *&v50[10] = v37;
      *&v50[14] = 2048;
      *&v50[16] = v38;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v35, OS_SIGNPOST_INTERVAL_END, v46, "ServicesClientCallback", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }

  if (v48)
  {
    CVPixelBufferUnlockBaseAddress(v48, 0);
    CVPixelBufferRelease(v48);
  }

  v39 = *(a2 + 1025);
  if (v39)
  {
    CVPixelBufferUnlockBaseAddress(v39, 0);
    CVPixelBufferRelease(*(a2 + 1025));
  }

LABEL_138:
  v40 = +[ANEServicesLog handle];
  if (v45 < 0xFFFFFFFFFFFFFFFELL)
  {
    v41 = v40;
    if (os_signpost_enabled(v40))
    {
      v42 = *(a2 + 1029);
      v43 = *(a2 + 2060);
      v44 = *(a2 + 1032);
      *buf = 134218496;
      *v50 = v42;
      *&v50[8] = 1024;
      *&v50[10] = v43;
      *&v50[14] = 2048;
      *&v50[16] = v44;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v41, OS_SIGNPOST_INTERVAL_END, v4, "ServicesFrameProcDirect", "progHandle=%llx procid=%x transid=%llx", buf, 0x1Cu);
    }
  }
}

void ANE::ANERequestReceiver::releaseRequestBuffers(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 4080);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(a2 + 8 * i);
        if (v5)
        {
          CFRelease(v5);
          v3 = *(a2 + 4080);
        }
      }
    }

    *(a2 + 4080) = 0;
    v6 = *(a2 + 8168);
    if (v6)
    {
      for (j = 0; j < v6; ++j)
      {
        v8 = *(a2 + 4088 + 8 * j);
        if (v8)
        {
          CFRelease(v8);
          v6 = *(a2 + 8168);
        }
      }
    }

    *(a2 + 8168) = 0;
    v9 = *(a2 + 0x2000);
    if (v9)
    {
      for (k = 0; k < v9; ++k)
      {
        v11 = *(a2 + 8176 + 8 * k);
        if (v11)
        {
          CFRelease(v11);
          v9 = *(a2 + 0x2000);
        }
      }
    }

    *(a2 + 0x2000) = 0;
    v12 = *(a2 + 8200);
    if (v12)
    {
      CVPixelBufferRelease(v12);
    }

    v13 = *(a2 + 8208);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a2 + 8216);
    if (v14)
    {

      CFRelease(v14);
    }
  }
}

void ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(ANE::ANERequestReceiverRequest *this)
{
  v1 = *(this + 1035);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t ANE::CreateANEDeviceController(ANE *this, ANE::ANEDeviceController **a2, int (*a3)(ANE::ANEDeviceController *, void *, void *), void *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = &v53;
  v55 = 0x5012000000;
  v56 = __Block_byref_object_copy_;
  v57 = __Block_byref_object_dispose_;
  v58 = &unk_1C04780E7;
  v52 = 0;
  ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(&v60);
  v7 = v54;
  v54[6] = 0;
  v7[7] = a2;
  v7[8] = a3;
  v7[9] = &v60;
  if (ANE::gUseSharedServiceThread == 1)
  {
    pthread_mutex_lock(&ANE::gSharedServiceThreadMutex);
    v8 = ANE::pSharedServiceThread;
    if (ANE::pSharedServiceThread)
    {
      goto LABEL_3;
    }

    ANE::pSharedServiceThread = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
    if (!ANE::pSharedServiceThread)
    {
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v13)
      {
        ANE::CreateANEDeviceController(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      goto LABEL_41;
    }

    ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(&v64);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "creating shared service thread\n", buf, 2u);
    }

    v11 = pthread_attr_init(&v63);
    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = strerror(v11);
        ANE::CreateANEDeviceController(v12, buf);
      }

      goto LABEL_37;
    }

    v59 = 58;
    v21 = pthread_attr_setschedparam(&v63, &v59);
    if (v21)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = strerror(v21);
        ANE::CreateANEDeviceController(v22, buf);
      }
    }

    else
    {
      v24 = pthread_attr_setdetachstate(&v63, 1);
      if (!v24)
      {
        v49 = pthread_create((ANE::pSharedServiceThread + 8), &v63, ANE::SharedServiceThreadStart, &v64);
        if (v49)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v50 = strerror(v49);
            ANE::CreateANEDeviceController(v50, buf);
          }

          v26 = 0;
          *(ANE::pSharedServiceThread + 8) = 0;
        }

        else
        {
          v26 = 1;
        }

LABEL_31:
        pthread_attr_destroy(&v63);
        if (v26)
        {
          ANE::ANEThreadReadySyncer::wait(&v64);
          if (*(ANE::pSharedServiceThread + 16))
          {
            ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(&v64);
            v8 = ANE::pSharedServiceThread;
            if (*(ANE::pSharedServiceThread + 16))
            {
LABEL_3:
              v9 = *v8 + 1;
              *v8 = v9;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                ANE::CreateANEDeviceController(v9);
              }

LABEL_41:
              pthread_mutex_unlock(&ANE::gSharedServiceThreadMutex);
              if (ANE::pSharedServiceThread)
              {
                v35 = *(ANE::pSharedServiceThread + 16);
                if (v35)
                {
                  v36 = *MEMORY[0x1E695E8E0];
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = ___ZN3ANE25CreateANEDeviceControllerEPPNS_19ANEDeviceControllerEPFiS1_PvS3_ES3__block_invoke;
                  block[3] = &unk_1E8117348;
                  block[4] = &v53;
                  CFRunLoopPerformBlock(v35, v36, block);
                  CFRunLoopWakeUp(*(ANE::pSharedServiceThread + 16));
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v64.__sig) = 0;
                    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "attaching to shared service thread\n", &v64, 2u);
                  }

                  goto LABEL_45;
                }
              }

              v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              if (v38)
              {
                ANE::CreateANEDeviceController(v38, v39, v40, v41, v42, v43, v44, v45);
              }

              goto LABEL_48;
            }

LABEL_38:
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v27)
            {
              ANE::CreateANEDeviceController(v27, v28, v29, v30, v31, v32, v33, v34);
            }

            free(ANE::pSharedServiceThread);
            ANE::pSharedServiceThread = 0;
            goto LABEL_41;
          }

          pthread_join(*(ANE::pSharedServiceThread + 8), 0);
          *(ANE::pSharedServiceThread + 8) = 0;
        }

LABEL_37:
        ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(&v64);
        goto LABEL_38;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = strerror(v24);
        ANE::CreateANEDeviceController(v25, buf);
      }
    }

    v26 = 0;
    goto LABEL_31;
  }

  v10 = pthread_attr_init(&v61);
  if (v10)
  {
    fprintf(*MEMORY[0x1E69E9848], "pthread_attr_init() failed. Error: %d\n", v10);
    goto LABEL_48;
  }

  v64.__sig = 58;
  if (pthread_attr_setschedparam(&v61, &v64))
  {
    fprintf(*MEMORY[0x1E69E9848], "pthread_attr_setschedparam() failed. Error: %d\n");
LABEL_24:
    v23 = 0;
    goto LABEL_25;
  }

  if (pthread_attr_setdetachstate(&v61, 1))
  {
    fprintf(*MEMORY[0x1E69E9848], "pthread_attr_setdetachstate() failed. Error: %d\n");
    goto LABEL_24;
  }

  if (pthread_create(&v52, &v61, ANE::ANEServicesThreadStart, v54 + 6))
  {
    fprintf(*MEMORY[0x1E69E9848], "pthread_create() failed. Error: %d\n");
    goto LABEL_24;
  }

  v23 = 1;
LABEL_25:
  pthread_attr_destroy(&v61);
  if (v23)
  {
LABEL_45:
    ANE::ANEThreadReadySyncer::wait(&v60);
    v37 = 0;
    goto LABEL_49;
  }

LABEL_48:
  v37 = 1;
LABEL_49:
  v46 = v54[6];
  *this = v46;
  if (!v46)
  {
    v37 = 1;
  }

  if (v37)
  {
    v47 = 3758097084;
  }

  else
  {
    v47 = 0;
  }

  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(&v60);
  _Block_object_dispose(&v53, 8);
  return v47;
}

void sub_1C044C78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer((v26 - 176));
  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(va);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

ANE::ANEThreadReadySyncer *ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(ANE::ANEThreadReadySyncer *this)
{
  pthread_mutex_init(this, 0);
  pthread_cond_init((this + 64), 0);
  pthread_mutex_lock(this);
  return this;
}

uint64_t ANE::DestroyANERequestReceiver(ANE *this, ANE::ANERequestReceiver *a2)
{
  if (this)
  {
    ANE::ANERequestReceiver::completeAllRequests(this);
    v3 = *(this + 1);
    ANE::ANERequestReceiver::~ANERequestReceiver(this);
    MEMORY[0x1C68DA430]();
    CFRelease(v3);
  }

  return 0;
}

uint64_t ANE::ANERequestReceiver::stopReceive(ANE::ANERequestReceiver *this)
{
  v2 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2204);
  v3 = +[ANEServicesLog handle];
  v4 = v2 - 1;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      LOWORD(buf.tv_sec) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANERequestReceiverStop", &unk_1C047597E, &buf, 2u);
    }
  }

  pthread_mutex_lock((this + 112));
  if (*this)
  {
    ANE::ANERequestReceiver::stopNoDataTimer(this);
    pthread_mutex_lock((this + 176));
    *(this + 408) = 1;
    pthread_mutex_unlock((this + 176));
    pthread_mutex_lock((this + 176));
    if (*(this + 50))
    {
      v6 = 2001;
      while (1)
      {
        usleep(0x3E8u);
        if (!--v6)
        {
          break;
        }

        pthread_mutex_unlock((this + 176));
        pthread_mutex_lock((this + 176));
        if (!*(this + 50))
        {
          goto LABEL_9;
        }
      }

      printf("ANERequestReceiver: Did not get all pending requests back from kernel. remaining: %d.\n", *(this + 50));
      v10 = *(this + 46);
      v11 = *(this + 47);
      v12 = &v10[*(this + 49) >> 9];
      if (v11 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = (*v12 + 8 * (*(this + 49) & 0x1FFLL));
      }

      while (1)
      {
        v14 = v11 - v10;
        if (v14)
        {
          v15 = *(this + 50) + *(this + 49);
          v16 = *(v10 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v15 & 0x1FF);
        }

        else
        {
          v16 = 0;
        }

        if (v13 == v16)
        {
          break;
        }

        v17 = *v13;
        printf("ANERequestReceiver: Request not returned 0x%p\n", *v13);
        if (v17)
        {
          ANE::ANERequestReceiverRequest::~ANERequestReceiverRequest(v17);
          MEMORY[0x1C68DA430]();
        }

        if (++v13 - *v12 == 4096)
        {
          v18 = v12[1];
          ++v12;
          v13 = v18;
        }

        v10 = *(this + 46);
        v11 = *(this + 47);
      }

      *(this + 50) = 0;
      v19 = v14 >> 3;
      if (v19 >= 3)
      {
        do
        {
          operator delete(*v10);
          v20 = *(this + 47);
          v10 = (*(this + 46) + 8);
          *(this + 46) = v10;
          v19 = (v20 - v10) >> 3;
        }

        while (v19 > 2);
      }

      v7 = 3758097110;
      if (v19 == 1)
      {
        v21 = 256;
        goto LABEL_31;
      }

      if (v19 == 2)
      {
        v21 = 512;
LABEL_31:
        *(this + 49) = v21;
      }
    }

    else
    {
LABEL_9:
      v7 = 0;
    }

    pthread_mutex_unlock((this + 176));
    if (*(this + 14))
    {
      gettimeofday(&v25, 0);
      v22 = 1000 * v25.tv_usec + 1000000 * *(this + 4);
      buf.tv_sec = v25.tv_sec + v22 / 0x3B9ACA00uLL;
      buf.tv_nsec = v22 % 0x3B9ACA00;
      if (pthread_cond_timedwait((this + 64), (this + 112), &buf) == 60 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANE::ANERequestReceiver::stopReceive();
      }
    }

    *(this + 408) = 0;
    *this = 0;
    pthread_mutex_unlock((this + 112));
    v23 = +[ANEServicesLog handle];
    if (v4 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v23;
      if (os_signpost_enabled(v23))
      {
        LOWORD(buf.tv_sec) = 0;
        goto LABEL_39;
      }
    }

    return v7;
  }

  v7 = 3758097122;
  pthread_mutex_unlock((this + 112));
  v8 = +[ANEServicesLog handle];
  if (v4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v8))
    {
      LOWORD(buf.tv_sec) = 0;
LABEL_39:
      _os_signpost_emit_with_name_impl(&dword_1C0446000, v9, OS_SIGNPOST_INTERVAL_END, v2, "ANERequestReceiverStop", &unk_1C047597E, &buf, 2u);
    }
  }

  return v7;
}

void ANE::ANERequestReceiver::~ANERequestReceiver(ANE::ANERequestReceiver *this)
{
  if (*(this + 44))
  {
    if (*this)
    {
      ANE::ANERequestReceiver::stopReceive(this);
    }

    if (*(this + 43))
    {
      ANE::ANERequestReceiver::removeIODispatcherFromRunLoop(this);
    }

    pthread_mutex_destroy((this + 112));
    pthread_mutex_destroy((this + 176));
    pthread_mutex_destroy(this + 4);
    v2 = *(this + 30);
    if (v2)
    {
      dispatch_release(v2);
      *(this + 30) = 0;
    }
  }

  std::deque<ANE::ANERequestReceiverRequest *>::~deque[abi:ne200100](this + 45);
}

uint64_t ANE::ANERequestReceiver::stopNoDataTimer(ANE::ANERequestReceiver *this)
{
  pthread_mutex_lock(this + 4);
  v2 = *(this + 40);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 40));
    *(this + 40) = 0;
  }

  return pthread_mutex_unlock(this + 4);
}

void ANE::ANERequestReceiver::removeIODispatcherFromRunLoop(ANE::ANERequestReceiver *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    CFRunLoopRemoveSource(*(this + 1), v2, *MEMORY[0x1E695E8E0]);
    CFRelease(*(this + 43));
    *(this + 43) = 0;
  }

  v3 = *(this + 41);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 41));
    *(this + 41) = 0;
  }

  v4 = *(this + 84);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v4, 1u, -1);
    *(this + 84) = 0;
  }
}

uint64_t std::deque<ANE::ANERequestReceiverRequest *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<ANE::ANERequestReceiverRequest **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<ANE::ANERequestReceiverRequest **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t ANE::ANEServicesDevice::ANEDeviceClose(ANE::ANEServicesDevice *this)
{
  pthread_mutex_lock((this + 72));
  v2 = IOConnectCallScalarMethod(*(this + 16), 1u, 0, 0, 0, 0);
  v3 = *(this + 16);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 16) = 0;
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    v2 = 3758097101;
  }

  pthread_mutex_unlock((this + 72));
  return v2;
}

uint64_t ANE::DestroyANEDeviceController(ANE *this, ANE::ANEDeviceController *a2)
{
  v30[15] = *MEMORY[0x1E69E9840];
  v3 = pthread_self();
  v4 = pthread_equal(v3, *(this + 9));
  v5 = v4;
  if (ANE::gUseSharedServiceThread == 1)
  {
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = ANE::pSharedServiceThread == 0;
    }

    if (v6 || !*(ANE::pSharedServiceThread + 16))
    {
      ANE::ANEDeviceController::~ANEDeviceController(this);
      MEMORY[0x1C68DA430]();
    }

    else
    {
      *buf = 0;
      v25 = buf;
      v26 = 0xA012000000;
      v27 = __Block_byref_object_copy__5;
      v28 = __Block_byref_object_dispose__6;
      v29 = &unk_1C04780E7;
      ANE::ANEThreadReadySyncer::ANEThreadReadySyncer(v30);
      v7 = *(ANE::pSharedServiceThread + 16);
      v8 = *MEMORY[0x1E695E8E0];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = ___ZN3ANE26DestroyANEDeviceControllerEPNS_19ANEDeviceControllerE_block_invoke;
      v23[3] = &unk_1E8117370;
      v23[4] = buf;
      v23[5] = this;
      CFRunLoopPerformBlock(v7, v8, v23);
      CFRunLoopWakeUp(*(ANE::pSharedServiceThread + 16));
      ANE::ANEThreadReadySyncer::wait((v25 + 48));
      _Block_object_dispose(buf, 8);
      ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer(v30);
    }

    pthread_mutex_lock(&ANE::gSharedServiceThreadMutex);
    v10 = ANE::pSharedServiceThread;
    if (!ANE::pSharedServiceThread || (v11 = *ANE::pSharedServiceThread) == 0)
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        ANE::DestroyANEDeviceController(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      goto LABEL_21;
    }

    v12 = v11 - 1;
    *ANE::pSharedServiceThread = v11 - 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_debug_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "shared service thread release: refCount=%u\n", buf, 8u);
      v10 = ANE::pSharedServiceThread;
      if (!*ANE::pSharedServiceThread)
      {
        goto LABEL_16;
      }
    }

    else if (!v12)
    {
LABEL_16:
      CFRunLoopStop(*(v10 + 16));
      CFRelease(*(ANE::pSharedServiceThread + 16));
      v13 = pthread_self();
      if (!pthread_equal(v13, *(ANE::pSharedServiceThread + 8)))
      {
        pthread_join(*(ANE::pSharedServiceThread + 8), 0);
      }

      free(ANE::pSharedServiceThread);
      ANE::pSharedServiceThread = 0;
    }

LABEL_21:
    pthread_mutex_unlock(&ANE::gSharedServiceThreadMutex);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      ANE::DestroyANEDeviceController();
    }

    return 0;
  }

  v9 = CFRetain(*(this + 7));
  CFRunLoopStop(v9);
  if (!v5)
  {
    *buf = 0;
    pthread_join(*(this + 9), buf);
  }

  ANE::ANEDeviceController::~ANEDeviceController(this);
  MEMORY[0x1C68DA430]();
  CFRelease(v9);
  return 0;
}

void sub_1C044D1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  ANE::ANEThreadReadySyncer::~ANEThreadReadySyncer((v13 + 48));
  _Unwind_Resume(a1);
}

void ANE::ANEDeviceController::~ANEDeviceController(CFArrayRef *this)
{
  for (i = 0; i < CFArrayGetCount(*this); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*this, i);
    ANE::ANEServicesDevice::DisableDeviceMessages(ValueAtIndex);
  }

  for (j = 0; j < CFArrayGetCount(this[1]); ++j)
  {
    v5 = CFArrayGetValueAtIndex(this[1], j);
    ANE::ANEHWDevice::DisableDeviceMessages(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    IOObjectRelease(v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    IOObjectRelease(v7);
  }

  if (*this)
  {
    CFRelease(*this);
  }

  v8 = this[1];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = this[3];
  if (v9)
  {
    v10 = this[4];
    if (v10)
    {
      CFRunLoopRemoveSource(this[7], v10, *MEMORY[0x1E695E8E0]);
      this[4] = 0;
      v9 = this[3];
    }

    IONotificationPortDestroy(v9);
  }

  v11 = this[7];
  if (v11)
  {
    CFRelease(v11);
    this[7] = 0;
  }
}

uint64_t ANE::ANEServicesDevice::DisableDeviceMessages(ANE::ANEServicesDevice *this)
{
  result = *(this + 15);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 15) = 0;
  }

  return result;
}

uint64_t ANE::ANEHWDevice::DisableDeviceMessages(ANE::ANEHWDevice *this)
{
  result = *(this + 15);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 15) = 0;
  }

  return result;
}

void ANE::ReleaseANEUnitObject(ANE *this, const __CFAllocator *a2, const void *a3)
{
  if (a2)
  {
    ANE::ANEServicesDevice::~ANEServicesDevice(a2);

    JUMPOUT(0x1C68DA430);
  }
}

void ANE::ANEServicesDevice::~ANEServicesDevice(ANE::ANEServicesDevice *this)
{
  if (*(this + 16))
  {
    ANE::ANEServicesDevice::ANEDeviceClose(this);
  }

  v2 = *(this + 15);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 15) = 0;
  }

  pthread_mutex_destroy((this + 72));
}

void ZinException::ZinException(ZinException *this, const char *a2)
{
  v2 = std::runtime_error::runtime_error(this, a2);
  v2->__vftable = &unk_1F3F83588;
  LOBYTE(v2[1].__vftable) = 0;
  LOBYTE(v2[7].__vftable) = 0;
  LOBYTE(v2[7].__imp_.__imp_) = 0;
  LOBYTE(v2[9].__vftable) = 0;
}

{
  v2 = std::runtime_error::runtime_error(this, a2);
  v2->__vftable = &unk_1F3F83588;
  LOBYTE(v2[1].__vftable) = 0;
  LOBYTE(v2[7].__vftable) = 0;
  LOBYTE(v2[7].__imp_.__imp_) = 0;
  LOBYTE(v2[9].__vftable) = 0;
}

void ZinException::SetLayerInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
    }

    else
    {
      v9 = *a2;
    }

    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *a4, *(a4 + 8));
    }

    else
    {
      v10 = *a4;
    }

    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *a5, *(a5 + 8));
    }

    else
    {
      v11 = *a5;
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    std::optional<ZinException::LayerInfo>::operator=[abi:ne200100]<ZinException::LayerInfo,void>(a1 + 16, &v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1C044D648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<ZinException::LayerInfo>::operator=[abi:ne200100]<ZinException::LayerInfo,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
    *(a2 + 71) = 0;
    *(a2 + 48) = 0;
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
    *(a2 + 95) = 0;
    *(a2 + 72) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v10 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v10;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    v11 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v11;
    *(a2 + 72) = 0uLL;
    *(a2 + 11) = 0;
    *(a1 + 96) = 1;
  }

  return a1;
}

double ZinException::SetBasicBlockInfo(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 144) & 1) == 0)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      v4 = *a2;
LABEL_8:
      result = *&v4.__r_.__value_.__l.__data_;
      *(a1 + 120) = v4;
      *(a1 + 144) = 1;
      return result;
    }

    std::string::__init_copy_ctor_external(&v4, *a2, *(a2 + 8));
    if ((*(a1 + 144) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    result = *&v4.__r_.__value_.__l.__data_;
    *(a1 + 120) = v4;
  }

  return result;
}

void ZinException::~ZinException(std::runtime_error *this)
{
  this->__vftable = &unk_1F3F83588;
  if (LOBYTE(this[9].__vftable) == 1 && SHIBYTE(this[8].__imp_.__imp_) < 0)
  {
    operator delete(this[7].__imp_.__imp_);
  }

  if (LOBYTE(this[7].__vftable) == 1)
  {
    if (SHIBYTE(this[6].__imp_.__imp_) < 0)
    {
      operator delete(this[5].__imp_.__imp_);
    }

    if (SHIBYTE(this[5].__vftable) < 0)
    {
      operator delete(this[4].__vftable);
    }

    if (SHIBYTE(this[3].__imp_.__imp_) < 0)
    {
      operator delete(this[2].__imp_.__imp_);
    }

    if (SHIBYTE(this[2].__vftable) < 0)
    {
      operator delete(this[1].__vftable);
    }
  }

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_1F3F83588;
  if (LOBYTE(this[9].__vftable) == 1 && SHIBYTE(this[8].__imp_.__imp_) < 0)
  {
    operator delete(this[7].__imp_.__imp_);
  }

  if (LOBYTE(this[7].__vftable) == 1)
  {
    if (SHIBYTE(this[6].__imp_.__imp_) < 0)
    {
      operator delete(this[5].__imp_.__imp_);
    }

    if (SHIBYTE(this[5].__vftable) < 0)
    {
      operator delete(this[4].__vftable);
    }

    if (SHIBYTE(this[3].__imp_.__imp_) < 0)
    {
      operator delete(this[2].__imp_.__imp_);
    }

    if (SHIBYTE(this[2].__vftable) < 0)
    {
      operator delete(this[1].__vftable);
    }
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1C68DA430);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8116EE0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void ZinException::LayerInfo::~LayerInfo(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t ZinComputeProgramGetANETDThreadStateSize(const ident_command *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, _DWORD *a6)
{
  v8 = 0;
  result = ZinComputeProgramGetANETDThreadStateArgumentSize(a1, a2, a3, a4, a5, &v8);
  if (!result)
  {
    *a6 = v8 + 2136;
  }

  return result;
}

uint64_t ZinComputeProgramGetANETDThreadStateArgumentSize(const ident_command *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned int *a6)
{
  if (a3)
  {
    if (a2)
    {
      v12 = 0;
      result = ZinComputeProgramSupportsFeature(a1, "7.0.22", &v12);
      if (result)
      {
        return result;
      }

      if (!v12)
      {
        *a6 = 0;
        return result;
      }
    }

    v11 = *(a3 + 2128);

    return ZinComputeProgramGetThreadArgumentSize(v11, (a3 + 2136), a4, a5, a6);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramGetANETDThreadStateArgumentSize();
    }

    return 3;
  }
}

uint64_t ZinComputeProgramSupportsTDThreadStateArguments(const ident_command *a1, BOOL *a2)
{
  return ZinComputeProgramSupportsFeature(a1, "7.0.22", a2);
}

{
  return ZinComputeProgramSupportsFeature(a1, "7.0.22", a2);
}

uint64_t ZinComputeProgramGetThreadArgumentSize(int a1, const char *a2, unint64_t a3, unint64_t a4, unsigned int *a5)
{
  if (!a2)
  {
    return 3;
  }

  v6 = a1;
  *a5 = 8 * a1;
  if (!a1)
  {
    return 0;
  }

  v9 = a2;
  while (!ZinIsOutsideBounds(v9, 8, a3, a4))
  {
    v10 = *v9;
    if (v10 <= 0xC)
    {
      *a5 += *&asc_1C047270C[4 * v10];
    }

    v9 += *(v9 + 1) + 8;
    if (!--v6)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinComputeProgramGetThreadArgumentSize();
  }

  return 3;
}

uint64_t ZinComputeProgramGetANESegThreadStateSize(const ident_command *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, _DWORD *a6)
{
  v8 = 0;
  result = ZinComputeProgramGetANESegThreadStateArgumentSize(a1, a2, a3, a4, a5, &v8);
  if (!result)
  {
    *a6 = v8 + 2152;
  }

  return result;
}

uint64_t ZinComputeProgramGetANESegThreadStateArgumentSize(const ident_command *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned int *a6)
{
  if (a3)
  {
    if (a2)
    {
      v12 = 0;
      result = ZinComputeProgramSupportsFeature(a1, "6.0.15", &v12);
      if (result)
      {
        return result;
      }

      if (!v12)
      {
        *a6 = 0;
        return result;
      }
    }

    v11 = *(a3 + 2144);

    return ZinComputeProgramGetThreadArgumentSize(v11, (a3 + 2152), a4, a5, a6);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramGetANESegThreadStateArgumentSize();
    }

    return 3;
  }
}

uint64_t ZinComputeProgramSupportsSegThreadStateArguments(const ident_command *a1, BOOL *a2)
{
  return ZinComputeProgramSupportsFeature(a1, "6.0.15", a2);
}

{
  return ZinComputeProgramSupportsFeature(a1, "6.0.15", a2);
}

uint64_t ZinComputeProgramSupportsFeature(const ident_command *a1, const char *a2, BOOL *a3)
{
  if (!a2)
  {
    return 3;
  }

  if (a1)
  {
    v8 = 0;
    v4 = ZinComputeProgramCompareCompilerVersion(&a1[1], a2, &v8);
    result = 0;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8 < 0;
    }

    v7 = !v6;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramSupportsFeature();
    }

    result = 0;
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t ZinComputeProgramSupportsSplitMutableKernelSection(const ident_command *a1, BOOL *a2)
{
  return ZinComputeProgramSupportsFeature(a1, "8.1.0", a2);
}

{
  return ZinComputeProgramSupportsFeature(a1, "8.1.0", a2);
}

uint64_t ZinComputeProgramSupportsSummaryPerformanceStats(const ident_command *a1, BOOL *a2)
{
  return ZinComputeProgramSupportsFeature(a1, "8.1.19", a2);
}

{
  return ZinComputeProgramSupportsFeature(a1, "8.1.19", a2);
}

uint64_t ZinComputeProgramGetAneTDPartitionScheduleInfo(const ident_command *a1, int a2, _DWORD *a3, int a4, const char *a5, int *a6, int *a7, int (*a8)[2])
{
  *a7 = -1;
  *a8 = -1;
  if (a4 != 1)
  {
    if (a4 == 4)
    {
      v12 = a3[518];
      if (v12 < 0)
      {
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v27)
        {
          ZinComputeProgramGetAneTDPartitionScheduleInfo(v27, v28, v29, v30, v31, v32, v33, v34);
        }
      }

      else
      {
        *a6 = v12;
        v13 = a3[522];
        if (v13 <= -2)
        {
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v35)
          {
            ZinComputeProgramGetAneTDPartitionScheduleInfo(v35, v36, v37, v38, v39, v40, v41, v42);
          }
        }

        else
        {
          (*a8)[0] = v13;
          v14 = a3[523];
          if (v14 <= -2)
          {
            v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v46)
            {
              ZinComputeProgramGetAneTDPartitionScheduleInfo(v46, v47, v48, v49, v50, v51, v52, v53);
            }
          }

          else
          {
            (*a8)[1] = v14;
            v15 = a3[521];
            if ((v15 & 0x80000000) == 0)
            {
              v16 = 0;
              *a7 = v15;
              return v16;
            }

            v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v71)
            {
              ZinComputeProgramGetAneTDPartitionScheduleInfo(v71, v72, v73, v74, v75, v76, v77, v78);
            }
          }
        }
      }

      return 3;
    }

    return 0;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v88 = 0;
  v18 = ZinComputeProgramSupportsFeature(a1, "7.0.22", &v88);
  if (v18)
  {
    v16 = v18;
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v19)
    {
      ZinComputeProgramGetAneTDPartitionScheduleInfo(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    return v16;
  }

  if (v88)
  {
LABEL_17:
    v43 = a3[532];
    if (v43)
    {
      v44 = a3 + 534;
      while (1)
      {
        v45 = (v44 + 2);
        if (a5 && v45 >= a5)
        {
          v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v54)
          {
LABEL_36:
            ZinComputeProgramGetAneTDPartitionScheduleInfo(v54, v55, v56, v57, v58, v59, v60, v61);
          }

          return 4;
        }

        if (a5 && v45 + v44[1] >= a5)
        {
          v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v54)
          {
            goto LABEL_36;
          }

          return 4;
        }

        if (*v44 == 11)
        {
          break;
        }

        v44 = (v44 + v44[1] + 8);
        if (!--v43)
        {
          return 0;
        }
      }

      *a6 = v44[2];
      v62 = v44[4];
      if ((v62 & 0x80000000) == 0)
      {
        v16 = 0;
        *a7 = v62;
        (*a8)[0] = v44[3];
        (*a8)[1] = -1;
        return v16;
      }

      v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v79)
      {
        ZinComputeProgramGetAneTDPartitionScheduleInfo(v79, v80, v81, v82, v83, v84, v85, v86);
      }

      return 3;
    }

    return 0;
  }

  v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v63)
  {
    ZinComputeProgramGetAneTDPartitionScheduleInfo(v63, v64, v65, v66, v67, v68, v69, v70);
  }

  return 2;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

char *ZinComputeProgramGetProcedureNameFromThread(const ident_command *a1, _DWORD *a2, unint64_t a3, unint64_t a4)
{
  v21 = a3;
  v19[0] = &v21;
  v19[1] = &v20;
  v20 = a4;
  if (ZinIsOutsideBounds(a2, 16, a3, a4))
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return 0;
    }

LABEL_3:
    ZinComputeProgramGetProcedureNameFromThread_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    return 0;
  }

  result = 0;
  v15 = a2[2];
  if (v15 <= 3)
  {
    if (v15 == 1)
    {
      if (ZinIsOutsideBounds((a2 + 4), 2136, v21, v20))
      {
        v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          return 0;
        }

        goto LABEL_3;
      }

      v16 = a2[527];
    }

    else
    {
      if (v15 != 3)
      {
        return result;
      }

      if (ZinIsOutsideBounds((a2 + 4), 3368, v21, v20))
      {
        v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          return 0;
        }

        goto LABEL_3;
      }

      v16 = a2[6];
    }
  }

  else
  {
    switch(v15)
    {
      case 4:
        if (ZinIsOutsideBounds((a2 + 4), 2152, v21, v20))
        {
          v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!v6)
          {
            return 0;
          }

          goto LABEL_3;
        }

        v18 = 0;
        if (ZinComputeProgramGetANESegThreadStateSize(a1, a1 != 0, (a2 + 4), v21, v20, &v18) || !ZinComputeProgramGetProcedureNameFromThread::$_0::operator()(v19, (a2 + 4), v18))
        {
          return 0;
        }

        v16 = a2[530];
        break;
      case 5:
        if (ZinIsOutsideBounds((a2 + 4), 32, v21, v20))
        {
          v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!v6)
          {
            return 0;
          }

          goto LABEL_3;
        }

        v18 = 0;
        if (ZinComputeProgramGetANEAotMetadataThreadStateSize(&v18) || !ZinComputeProgramGetProcedureNameFromThread::$_0::operator()(v19, (a2 + 4), v18))
        {
          return 0;
        }

        v16 = a2[10];
        break;
      case 6:
        if (ZinIsOutsideBounds((a2 + 4), 280, v21, v20))
        {
          v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!v6)
          {
            return 0;
          }

          goto LABEL_3;
        }

        v16 = a2[5];
        break;
      default:
        return result;
    }
  }

  if (v16)
  {
    v17 = a2 + v16;
  }

  else
  {
    v17 = &unk_1C0472CA1;
  }

  if (!v17)
  {
    return 0;
  }

  result = &unk_1C0472CA1;
  if (v17 != &unk_1C0472CA1)
  {
    if (ZinIsStringOutsideBounds(v17, v21, v20))
    {
      return 0;
    }

    else
    {
      return v17;
    }
  }

  return result;
}

uint64_t ZinComputeProgramGetProcedureNameFromThread::$_0::operator()(unint64_t **a1, unint64_t a2, uint64_t a3)
{
  IsOutsideBounds = ZinIsOutsideBounds(a2, a3, **a1, *a1[1]);
  if (IsOutsideBounds)
  {
    v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      ZinComputeProgramGetProcedureNameFromThread_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return IsOutsideBounds ^ 1u;
}

unint64_t ZinComputeProgramFindSectionByIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (a1 + 8);
    for (i = 24 * a2; i; i -= 24)
    {
      v7 = *(*(v5 - 1) + 64);
      v8 = __CFADD__(v3, v7);
      v9 = v3 + v7;
      if (v8)
      {
        break;
      }

      if (v9 > v4)
      {
        return *v5 + 40 * (v4 - v3);
      }

      v5 += 3;
      v3 = v9;
    }
  }

  return 0;
}

unint64_t ZinComputeProgramFindSectionByIndexSpan(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = 0;
    v4 = a2 - 1;
    v5 = (*a1 + 8);
    for (i = 24 * v2; i; i -= 24)
    {
      v7 = *(*(v5 - 1) + 64);
      v8 = __CFADD__(v3, v7);
      v9 = v3 + v7;
      if (v8)
      {
        break;
      }

      if (v9 > v4)
      {
        return *v5 + 40 * (v4 - v3);
      }

      v5 += 3;
      v3 = v9;
    }
  }

  return 0;
}

uint64_t ZinComputeProgramGetMutableKernelSectionForProcedure(uint64_t a1, unsigned int a2, void *a3)
{
  printf("%s: Fetching mutable kernel section for procid %d\n", "ZinComputeProgramStatus ZinComputeProgramGetMutableKernelSectionForProcedure(const ZinComputeProgram *, uint32_t, ZinComputeProgramSection **)", a2);
  if (*(a1 + 120) <= a2)
  {
    printf("%s: invalid procid %d\n");
    return 3;
  }

  v6 = *(a1 + 128) + 80 * a2;
  *a3 = 0;
  v7 = *(v6 + 24);
  if (!v7)
  {
LABEL_26:
    printf("%s: did not find mutable kernel section\n");
    return 3;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -1;
  do
  {
    v13 = *(*(v6 + 32) + 8 * v10);
    v14 = *(*v13 + 8);
    if (v14 == 4 || v14 == 1)
    {
      if (v9)
      {
        if (v12 == -1)
        {
          printf("%s: internal error, invalid barid\n");
          return 3;
        }

        v16 = *(v13 + 8 * v12 + 16);
        if (!v16 || (v17 = *v16) == 0 || (*(v17 + 64) & 0xFE) != 0x2A)
        {
          printf("%s: multiple ANE ops with different mutable kernel section bars\n", "ZinComputeProgramStatus ZinComputeProgramGetMutableKernelSectionForProcedure(const ZinComputeProgram *, uint32_t, ZinComputeProgramSection **)");
          *a3 = 0;
          return 3;
        }
      }

      else
      {
        v18 = 0;
        v19 = v13 + 16;
        while (1)
        {
          v9 = *(v19 + 8 * v18);
          if (v9)
          {
            if (*v9 && (*(*v9 + 64) & 0xFE) == 0x2A)
            {
              break;
            }
          }

          if (++v18 == 256)
          {
            v9 = 0;
            goto LABEL_22;
          }
        }

        *a3 = v9;
        v8 = v9;
        v12 = v18;
      }
    }

LABEL_22:
    v10 = ++v11;
  }

  while (v7 > v11);
  if (!v8)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t ZinComputeProgramFindFvmlib(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return ZinComputeProgramFindFvmlibSpan(v4, a3);
}

uint64_t ZinComputeProgramFindFvmlibSpan(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      ZinComputeProgramFindFvmlibSpan_cold_3(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v4 = a1[1];
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramFindFvmlibSpan_cold_2();
    }

    return 0;
  }

  if (!a2)
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      ZinComputeProgramFindFvmlibSpan_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    return 0;
  }

  v5 = 24 * v4;
  while (*(result + 16) != a2)
  {
    result += 24;
    v5 -= 24;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ZinComputeProgramGetInitSection(uint64_t a1, uint64_t **a2)
{
  if (!a1 || !a2)
  {
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      ZinComputeProgramGetInitSection_cold_3(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    return 3;
  }

  *a2 = 0;
  v2 = *(a1 + 176);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *v2;
    v5 = &v4[3 * v3];
    while (1)
    {
      v6 = *(*v4 + 64);
      if (v6)
      {
        break;
      }

LABEL_11:
      result = 0;
      v4 += 3;
      if (v4 == v5)
      {
        return result;
      }
    }

    v7 = v4[1];
    v8 = 40 * v6;
    while (1)
    {
      v9 = *v7;
      if (!*v7)
      {
        break;
      }

      if (*(v9 + 32) < *(*v4 + 24))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinComputeProgramGetInitSection_cold_1();
        }

        return 3;
      }

      if (*(v9 + 64) == 44)
      {
        result = 0;
        *a2 = v7;
        return result;
      }

      v7 += 5;
      v8 -= 40;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramGetInitSection_cold_2();
    }

    return 3;
  }

  return 0;
}

uint64_t ZinComputeProgramMakeInitInfo(uint64_t a1, void *a2)
{
  *a2 = 0;
  if (a1)
  {
    v41 = 0;
    if (ZinComputeProgramGetInitSection(a1, &v41) || !v41)
    {
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v17)
      {
        ZinComputeProgramMakeInitInfo_cold_3(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040A500212DuLL);
      if (v4)
      {
        v5 = v4;
        *v4 = *(a1 + 120);
        v6 = *(*v41 + 40);
        v5[2] = v6;
        v7 = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
        v5[1] = v7;
        if (v7)
        {
          memcpy(v7, v41[3], *(*v41 + 40));
          result = 0;
          *a2 = v5;
          return result;
        }

        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v33)
        {
          ZinComputeProgramMakeInitInfo_cold_1(v33, v34, v35, v36, v37, v38, v39, v40);
        }

        free(v5);
      }

      else
      {
        v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v25)
        {
          ZinComputeProgramMakeInitInfo_cold_1(v25, v26, v27, v28, v29, v30, v31, v32);
        }
      }
    }

    return 5;
  }

  else
  {
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      ZinComputeProgramMakeInitInfo_cold_4(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 3;
  }
}

void ZinComputeProgramDestroyInitInfo(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      ZinComputeProgramDestroyInitInfo_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

uint64_t ZinComputeProgramCompareCompilerVersion(const char *a1, const char *a2, int *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      ZinComputeProgramCompareCompilerVersion_cold_3(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 3;
  }

  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  if (sscanf(a1, "ANEC v%d\nzin_ane_compiler v%d.%d.%d", &v32, &v35, &v35 + 4, &v36) != 4)
  {
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      ZinComputeProgramCompareCompilerVersion_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    return 3;
  }

  if (sscanf(a2, "%d.%d.%d", &v33, &v33 + 4, &v34) != 3)
  {
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v23)
    {
      ZinComputeProgramCompareCompilerVersion_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    return 3;
  }

  v5 = 0;
  while (*(&v35 + v5) == *(&v33 + v5))
  {
    v5 += 4;
    if (v5 == 12)
    {
      result = 0;
      *a3 = 0;
      return result;
    }
  }

  result = 0;
  if (*(&v35 + v5) <= *(&v33 + v5))
  {
    v31 = -1;
  }

  else
  {
    v31 = 1;
  }

  *a3 = v31;
  return result;
}

uint64_t ZinComputeProgramCompareLinkerVersion(const char *a1, const char *a2, int *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      ZinComputeProgramCompareLinkerVersion_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 3;
  }

  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  if (sscanf(a1, "zinld v%d.%d.%d", &v18, &v18 + 4, &v19) != 3 || sscanf(a2, "%d.%d.%d", &v16, &v16 + 4, &v17) != 3)
  {
    return 3;
  }

  v5 = 0;
  while (*(&v18 + v5) == *(&v16 + v5))
  {
    v5 += 4;
    if (v5 == 12)
    {
      v6 = 0;
      goto LABEL_16;
    }
  }

  if (*(&v18 + v5) > *(&v16 + v5))
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

LABEL_16:
  result = 0;
  *a3 = v6;
  return result;
}

uint64_t ZinComputeProgramGetProcedureTDCount(uint64_t a1, uint64_t a2, void *a3)
{
  result = 3;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = *(a2 + 32);
        if (v5)
        {
          v6 = *(a2 + 24);
          if (v6)
          {
            v7 = 0;
            while (1)
            {
              v8 = *v5;
              if (!*v5 || !*v8)
              {
                return 3;
              }

              v9 = *(*v8 + 8);
              if (v9 == 4 || v9 == 1)
              {
                v11 = v8[1];
                if (!v11)
                {
                  return 3;
                }

                if (v9 == 1)
                {
                  v12 = 2060;
                }

                else
                {
                  v12 = 2080;
                }

                v7 += *(v11 + v12);
              }

              ++v5;
              if (!--v6)
              {
                goto LABEL_23;
              }
            }
          }

          else
          {
            v7 = 0;
LABEL_23:
            result = 0;
            *a3 = v7;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ZinComputeProgramGetANEThreadFlavor(uint64_t a1, int *a2)
{
  if (!a1)
  {
    return 3;
  }

  result = 3;
  if (!a2)
  {
    return result;
  }

  if (!*(a1 + 96))
  {
    return result;
  }

  *a2 = 0;
  v4 = *(a1 + 176);
  v5 = *(v4 + 40);
  if (!v5)
  {
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(v4 + 32);
  v9 = 2104 * v5;
  do
  {
    v10 = *(*v8 + 8);
    if (v10 == 1)
    {
      v6 = 1;
    }

    else if (v10 == 4)
    {
      v7 = 1;
    }

    v8 += 2104;
    v9 -= 2104;
  }

  while (v9);
  if (((v7 ^ v6) & 1) == 0)
  {
    return 3;
  }

  result = 0;
  if (v6)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  *a2 = v11;
  return result;
}

uint64_t ZinComputeProgramGetANEThreadFlavorCount(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      if (a2 == 4 || a2 == 1)
      {
        *a3 = 0;
        v4 = *(a1 + 88);
        if (v4)
        {
          v5 = 0;
          v6 = 0;
          v7 = 1;
          while (1)
          {
            v8 = *(v3 + 2104 * v6);
            if (!v8)
            {
              break;
            }

            if (*(v8 + 8) == a2)
            {
              *a3 = ++v5;
              v4 = *(a1 + 88);
            }

            v6 = v7;
            v9 = v4 >= v7;
            v10 = v4 == v7++;
            if (v10 || !v9)
            {
              if (v5)
              {
                return 0;
              }

              else
              {
                return 3;
              }
            }
          }
        }
      }
    }
  }

  return 3;
}

uint64_t ZinComputeProgramGetProcedureANEThreadFlavorCount(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if (a2 == 4 || a2 == 1)
      {
        *a3 = 0;
        v4 = *(a1 + 24);
        if (v4)
        {
          v5 = 0;
          v6 = 0;
          v7 = 1;
          while (1)
          {
            v8 = **(v3 + 8 * v6);
            if (!v8)
            {
              break;
            }

            if (*(v8 + 8) == a2)
            {
              *a3 = ++v5;
              v4 = *(a1 + 24);
            }

            v6 = v7;
            v9 = v4 >= v7;
            v10 = v4 == v7++;
            if (v10 || !v9)
            {
              if (v5)
              {
                return 0;
              }

              else
              {
                return 3;
              }
            }
          }
        }
      }
    }
  }

  return 3;
}

unint64_t ZinComputeProgramAlign(unint64_t result, unint64_t a2)
{
  if (result % a2)
  {
    return a2 + result - result % a2;
  }

  return result;
}

_DWORD **ZinComputeProgramGetOperationByThreadID(ident_command *a1, uint64_t a2, int a3, char *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4)
  {
    v8 = 0;
    v9 = *(a2 + 32);
    v10 = 1;
    do
    {
      v11 = *(v9 + 8 * v8);
      *v14 = 0;
      if (ZinComputeProgramGetAneTDPartitionScheduleInfo(a1, 1, v11[1], (*v11)[2], a4, &v14[1], v14, v15))
      {
        break;
      }

      if (v14[0] != -1)
      {
        if (v14[1] < 0)
        {
          return 0;
        }

        if (v14[1] == a3)
        {
          return v11;
        }
      }

      v8 = v10;
    }

    while (v4 > v10++);
  }

  return 0;
}

uint64_t ZinComputeProgramCollectOperationScheduleInfo(ident_command *a1, uint64_t a2, char *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3 < 2)
  {
    return 0;
  }

  v5 = a2;
  v7 = 0;
  v8 = *(a2 + 32);
  v34 = v8;
  while (1)
  {
    v9 = *(v8 + 8 * v7);
    v10 = *(*v9 + 8);
    if (v10 == 4 || v10 == 1)
    {
      count = 0;
      result = ZinComputeProgramGetAneTDPartitionScheduleInfo(a1, 1, *(v9 + 8), v10, a3, &count + 1, &count, v40);
      if (result)
      {
        return result;
      }

      if ((count & 0x8000000000000000) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinComputeProgramCollectOperationScheduleInfo_cold_5();
        }

        return 5;
      }

      v13 = count;
      if ((count & 0x80000000) == 0)
      {
        break;
      }
    }

LABEL_40:
    if (++v7 == v3)
    {
      return 0;
    }
  }

  if (count > 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramCollectOperationScheduleInfo_cold_4();
    }

    return 5;
  }

  if (count)
  {
    v14 = v40;
    v15 = count;
    do
    {
      v16 = *v14++;
      if (v16 < 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinComputeProgramCollectOperationScheduleInfo_cold_2();
        }

        return 5;
      }

      --v15;
    }

    while (v15);
    *(v9 + 2072) = count;
    v17 = malloc_type_calloc(v13, 8uLL, 0x2004093837F09uLL);
    if (v17)
    {
      v18 = v17;
      v32 = v3;
      v19 = 0;
      do
      {
        v18[v19] = ZinComputeProgramGetOperationByThreadID(a1, v5, v40[v19], a3);
        ++v19;
      }

      while (v13 != v19);
      v3 = v32;
      goto LABEL_21;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramCollectOperationScheduleInfo_cold_1(buf, &buf[1]);
    }

    v30 = *(v9 + 2072);
    *(v9 + 2088) = 0;
    if (v30)
    {
      return 1;
    }
  }

  else
  {
    v18 = 0;
    *(v9 + 2072) = 0;
LABEL_21:
    *(v9 + 2088) = v18;
  }

  v35 = HIDWORD(count);
  v20 = *(v5 + 24);
  v21 = *(v5 + 32);
  v22 = malloc_type_calloc(v20, 8uLL, 0x2004093837F09uLL);
  if (!v22)
  {
    v8 = v34;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramCollectOperationScheduleInfo_cold_3(v39, &v39[1]);
    }

LABEL_38:
    v29 = 0;
    *(v9 + 2096) = 0;
LABEL_39:
    *(v9 + 2080) = v29;
    goto LABEL_40;
  }

  v23 = v22;
  if (!v20)
  {
LABEL_37:
    free(v23);
    v8 = v34;
    goto LABEL_38;
  }

  v31 = v5;
  v33 = v3;
  v24 = 0;
  v25 = 0;
  v26 = 1;
  while (1)
  {
    v27 = *(v21 + 8 * v25);
    *v38 = 0;
    if (ZinComputeProgramGetAneTDPartitionScheduleInfo(a1, 1, v27[1], (*v27)[2], a3, &v38[1], v38, v41))
    {
      break;
    }

    if (v38[0] != -1 && ((v41[0] & 0x80000000) == 0 && v41[0] == v35 || (v41[1] & 0x80000000) == 0 && v41[1] == v35))
    {
      *(v23 + v24++) = v27;
    }

    v25 = v26;
    if (v20 <= v26++)
    {
      v5 = v31;
      v3 = v33;
      if (!v24)
      {
        goto LABEL_37;
      }

      *(v9 + 2096) = v23;
      v29 = v24;
      v8 = v34;
      goto LABEL_39;
    }
  }

  free(v23);
  *(v9 + 2096) = 0;
  *(v9 + 2080) = v24;
  v5 = v31;
  v3 = v33;
  v8 = v34;
  if (!v24)
  {
    goto LABEL_40;
  }

  return 1;
}

void *ZinComputeProgramProcedureGetAneOperations(uint64_t a1, uint64_t a2, size_t a3)
{
  v13 = 0;
  if (ZinComputeProgramGetANEThreadFlavor(a1, &v13))
  {
    return 0;
  }

  v12 = 0;
  if (ZinComputeProgramGetProcedureANEThreadFlavorCount(a2, v13, &v12))
  {
    return 0;
  }

  if (v12 != a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeProgramProcedureGetAneOperations_cold_1();
    }

    return 0;
  }

  result = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  if (result)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(*(a2 + 32) + 8 * v7);
        v10 = *(*v9 + 8);
        if (v10 == 4 || v10 == 1)
        {
          result[v8++] = v9;
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }

  return result;
}

uint64_t ZinComputeProgramSupportsFeature(uint64_t result, const char *a2, BOOL *a3)
{
  if (!a2)
  {
    return 3;
  }

  if (result)
  {
    v7 = 0;
    v4 = ZinComputeProgramCompareCompilerVersion((result + 8), a2, &v7);
    result = 0;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v7 < 0;
    }

    v6 = !v5;
  }

  else
  {
    v6 = 1;
  }

  *a3 = v6;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void ZinAssertImpl(const char *__format, ...)
{
  va_start(va, __format);
  v3 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x200uLL, __format, va);
  __str[511] = 0;
  exception = __cxa_allocate_exception(0x98uLL);
  ZinException::ZinException(exception, __str);
}

uint64_t ZinCreateAnalytics(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, unint64_t a6, unint64_t a7)
{
  v189 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) == 0 && a4 && a5 && a6 && a7)
  {
    v9 = a1;
    v147[0] = a6;
    v147[1] = a6;
    v147[2] = a7;
    v148 = 1;
    ANEDebugInfo::DebugInfoParser::DebugInfoParser(v143, a4, a5);
    if (!ANEDebugInfo::DebugInfoParser::Parse(v143))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      v13 = 0;
      goto LABEL_237;
    }

    ANEDebugInfo::DebugInfoParser::GetCompilationUnit(&v134, v143, v9);
    if ((v134 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      goto LABEL_235;
    }

    v10 = MemPool::alloc<_AnalyticsProcedureInfo>(v147, 1u);
    v11 = v10;
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      goto LABEL_233;
    }

    *v10 = 0x400000001;
    if (a3)
    {
      v12 = 2 * (*a3 == 2);
    }

    else
    {
      v12 = 0;
    }

    Mode = ANEDebugInfo::DebugInfoInMem::GetMode(v135);
    v15 = v12 | Mode[1];
    if (*Mode)
    {
      v16 = v15 + 5;
    }

    else
    {
      v16 = v15 + 1;
    }

    *(v11 + 8) = v16;
    v17 = MemPool::alloc<unsigned long long>(v147, v16);
    if (!v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      goto LABEL_231;
    }

    v11[5] = MemPool::get_offset<unsigned long long>(v147, v17);
    if (a3 && *a3 == 2)
    {
      v18 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
      if (!v18)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCreateAnalytics();
        }

        goto LABEL_231;
      }

      *v17 = MemPool::get_offset<unsigned long long>(v147, v18);
      *v18 = 3;
      *(v18 + 1) = *(a3 + 144);
      v19 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
      if (!v19)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCreateAnalytics();
        }

        goto LABEL_231;
      }

      v17[1] = MemPool::get_offset<unsigned long long>(v147, v19);
      *v19 = 4;
      *(v19 + 1) = *(a3 + 40);
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    if (*ANEDebugInfo::DebugInfoInMem::GetMode(v135) != 1)
    {
      goto LABEL_38;
    }

    v21 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
    if (v21)
    {
      v22 = &v17[v20];
      *v22 = MemPool::get_offset<unsigned long long>(v147, v21);
      *v21 = 9;
      *(v21 + 1) = v138;
      v23 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
      if (v23)
      {
        v17[v20 | 1] = MemPool::get_offset<unsigned long long>(v147, v23);
        *v23 = 12;
        *(v23 + 1) = v135[0];
        v24 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
        if (v24)
        {
          v22[2] = MemPool::get_offset<unsigned long long>(v147, v24);
          *v24 = 13;
          *(v24 + 1) = v135[1];
          v25 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
          if (v25)
          {
            v22[3] = MemPool::get_offset<unsigned long long>(v147, v25);
            *v25 = 14;
            *(v25 + 1) = v135[3];
            v20 |= 4u;
LABEL_38:
            ANEDebugInfo::DebugInfoInMem::GetString(__p, v135, v140);
            v26 = BYTE7(v150);
            if (SBYTE7(v150) < 0)
            {
              v26 = __p[1];
            }

            v27 = MemPool::alloc<signed char>(v147, v26 + 8);
            if (v27)
            {
              v28 = &v17[v20];
              *v28 = MemPool::get_offset<unsigned long long>(v147, v27);
              *v27 = 15;
              v29 = BYTE7(v150);
              if (SBYTE7(v150) < 0)
              {
                v29 = __p[1];
              }

              v27[1] = v29;
              if ((SBYTE7(v150) & 0x80u) == 0)
              {
                v30 = __p;
              }

              else
              {
                v30 = __p[0];
              }

              if ((SBYTE7(v150) & 0x80u) == 0)
              {
                v31 = BYTE7(v150);
              }

              else
              {
                v31 = __p[1];
              }

              memcpy(v27 + 2, v30, v31);
              if (*(ANEDebugInfo::DebugInfoInMem::GetMode(v135) + 1) != 1)
              {
                goto LABEL_52;
              }

              v32 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
              if (v32)
              {
                v28[1] = MemPool::get_offset<unsigned long long>(v147, v32);
                *v32 = 16;
                *(v32 + 1) = v139;
LABEL_52:
                v33 = 1;
                goto LABEL_70;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ZinCreateAnalytics();
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ZinCreateAnalytics();
            }

            v33 = 0;
LABEL_70:
            if (SBYTE7(v150) < 0)
            {
              operator delete(__p[0]);
            }

            if (v33)
            {
              if (a2)
              {
                v34 = *(a2 + 556);
                v35 = *(a2 + 12);
              }

              else
              {
                v34 = 0;
                v35 = 0;
              }

              v36 = -1431655765 * ((v137 - v136) >> 4);
              v37 = MemPool::alloc<unsigned long long>(v147, v36);
              *(v11 + 3) = v35;
              *(v11 + 4) = v36;
              if (v37)
              {
                v124 = v37;
                v11[3] = MemPool::get_offset<unsigned long long>(v147, v37);
                v38 = v136;
                v125 = v137;
                if (v136 != v137)
                {
                  v39 = 0;
                  v40 = a2 == 0;
                  v41 = (a2 + 560);
                  if (!a2)
                  {
                    v41 = 0;
                  }

                  if (!v34)
                  {
                    v40 = 1;
                  }

                  v131 = v40;
                  v127 = v41;
                  while (1)
                  {
                    v156 = 0;
                    v155 = 0;
                    v157 = 0;
                    v42 = v38;
                    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(&v155, *v38, *(v38 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v38 + 8) - *v38) >> 2));
                    v158 = 0;
                    v159 = 0;
                    v160 = 0;
                    v130 = v42;
                    std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>(&v158, *(v42 + 24), *(v42 + 32), 0x8E38E38E38E38E39 * ((*(v42 + 32) - *(v42 + 24)) >> 3));
                    v43 = MemPool::alloc<_AnalyticsGroupInfo>(v147, 1u);
                    if (v43)
                    {
                      v44 = v156;
                      v45 = v155;
                      v46 = v159;
                      v47 = v158;
                      v126 = v39 + 1;
                      v124[v39] = MemPool::get_offset<unsigned long long>(v147, v43);
                      if (v43 <= v124)
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          ZinCreateAnalytics(buf, &buf[1]);
                        }

                        goto LABEL_213;
                      }

                      v48 = -1431655765 * ((v44 - v45) >> 2);
                      *v43 = v48;
                      v49 = MemPool::alloc<unsigned long long>(v147, v48);
                      if (!v49)
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          ZinCreateAnalytics(v169, v170, v121);
                        }

                        goto LABEL_213;
                      }

                      v128 = v47;
                      v132 = v46;
                      v43[1] = MemPool::get_offset<unsigned long long>(v147, v49);
                      v50 = v155;
                      v51 = v156;
                      if (v155 != v156)
                      {
                        v52 = 0;
                        do
                        {
                          v54 = *v50;
                          v53 = v50[1];
                          v55 = v50[2];
                          v56 = MemPool::alloc<_AnalyticsLayerInfo>(v147, 1u);
                          ANEDebugInfo::DebugInfoInMem::GetString(__p, v135, v54);
                          v57 = BYTE7(v150);
                          if ((SBYTE7(v150) & 0x80u) == 0)
                          {
                            v58 = __p;
                          }

                          else
                          {
                            v58 = __p[0];
                          }

                          if (SBYTE7(v150) < 0)
                          {
                            v57 = __p[1];
                          }

                          strncpy(v56, v58, v57 + 1);
                          ANEDebugInfo::DebugInfoInMem::GetString(&__src, v135, v53);
                          size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
                          if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            p_src = &__src;
                          }

                          else
                          {
                            p_src = __src.__r_.__value_.__r.__words[0];
                          }

                          if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            size = __src.__r_.__value_.__l.__size_;
                          }

                          strncpy(v56 + 64, p_src, size + 1);
                          *(v56 + 32) = v55;
                          v49[v52] = MemPool::get_offset<unsigned long long>(v147, v56);
                          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__src.__r_.__value_.__l.__data_);
                          }

                          if (SBYTE7(v150) < 0)
                          {
                            operator delete(__p[0]);
                          }

                          v50 += 3;
                          ++v52;
                        }

                        while (v50 != v51);
                      }

                      v61 = 954437177 * ((v132 - v128) >> 3);
                      *(v43 + 4) = v61;
                      v62 = MemPool::alloc<unsigned long long>(v147, v61);
                      if (!v62)
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          ZinCreateAnalytics(v167, v168, v122);
                        }

LABEL_213:
                        v117 = 0;
                        goto LABEL_214;
                      }

                      v43[3] = MemPool::get_offset<unsigned long long>(v147, v62);
                      v63 = v158;
                      v133 = v159;
                      if (v158 != v159)
                      {
                        v129 = v62;
                        v64 = 0;
                        while (1)
                        {
                          *__p = *v63;
                          v150 = v63[1];
                          v151[0] = v63[2];
                          v151[1] = v63[3];
                          v152 = *(v63 + 8);
                          v65 = __p[0];
                          memset(&__src, 0, sizeof(__src));
                          if (!v131)
                          {
                            v66 = 0;
                            v68 = v34;
                            v67 = v127;
                            do
                            {
                              if (*v67 == v65)
                              {
                                if (v66 >= __src.__r_.__value_.__r.__words[2])
                                {
                                  v69 = (v66 - __src.__r_.__value_.__r.__words[0]) >> 4;
                                  if ((v69 + 1) >> 60)
                                  {
                                    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
                                  }

                                  v70 = (__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 3;
                                  if (v70 <= v69 + 1)
                                  {
                                    v70 = v69 + 1;
                                  }

                                  if (__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF0)
                                  {
                                    v71 = 0xFFFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v71 = v70;
                                  }

                                  if (v71)
                                  {
                                    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEHwDebugEventStruct>>(&__src, v71);
                                  }

                                  v72 = (16 * v69);
                                  *v72 = *v67;
                                  v66 = (16 * v69 + 16);
                                  v73 = 16 * v69 - (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]);
                                  memcpy(v72 - (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]), __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]);
                                  v74 = __src.__r_.__value_.__r.__words[0];
                                  __src.__r_.__value_.__r.__words[0] = v73;
                                  *&__src.__r_.__value_.__r.__words[1] = v66;
                                  if (v74)
                                  {
                                    operator delete(v74);
                                  }
                                }

                                else
                                {
                                  *v66++ = *v67;
                                }

                                __src.__r_.__value_.__l.__size_ = v66;
                              }

                              ++v67;
                              --v68;
                            }

                            while (v68);
                          }

                          v75 = ANEDebugInfo::DebugInfoInMem::GetMode(v135);
                          v76 = __src.__r_.__value_.__r.__words[0];
                          if (__src.__r_.__value_.__r.__words[0] == __src.__r_.__value_.__l.__size_)
                          {
                            v77 = 0;
                          }

                          else
                          {
                            v77 = 0;
                            do
                            {
                              v78 = *(v76 + 4);
                              v79 = v78 > 0x1D;
                              v80 = (1 << v78) & 0x20000028;
                              if (!v79 && v80 != 0)
                              {
                                ++v77;
                              }

                              v76 += 16;
                            }

                            while (v76 != __src.__r_.__value_.__l.__size_);
                          }

                          v82 = v75[1];
                          if (*v75)
                          {
                            v83 = v82 + 5;
                          }

                          else
                          {
                            v83 = v82 + 1;
                          }

                          if (v75[2])
                          {
                            v84 = v83 | 8;
                          }

                          else
                          {
                            v84 = v83;
                          }

                          v85 = MemPool::alloc<_AnalyticsTaskInfo>(v147, 1u);
                          if (!v85)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v165, v166, v89);
                            }

                            goto LABEL_194;
                          }

                          v129[v64] = MemPool::get_offset<unsigned long long>(v147, v85);
                          *v85 = v84 + v77;
                          v86 = MemPool::alloc<unsigned long long>(v147, v84 + v77);
                          ++v64;
                          if (!v86)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v163, v164, v90);
                            }

LABEL_194:
                            v117 = 0;
                            goto LABEL_196;
                          }

                          v85[1] = MemPool::get_offset<unsigned long long>(v147, v86);
                          v87 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
                          if (v87)
                          {
                            *v86 = MemPool::get_offset<unsigned long long>(v147, v87);
                            *v87 = 10;
                            v87[2] = __p[0];
                            v88 = 1;
                          }

                          else
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v173, v174, v91);
                            }

                            v88 = 0;
                          }

                          if (*(ANEDebugInfo::DebugInfoInMem::GetMode(v135) + 1) == 1)
                          {
                            v92 = MemPool::alloc<_AnalyticsData,unsigned char>(v147);
                            if (v92)
                            {
                              v86[v88] = MemPool::get_offset<unsigned long long>(v147, v92);
                              *v92 = 11;
                              *(v92 + 8) = BYTE4(__p[0]);
                              ++v88;
                            }

                            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v175, v176, v93);
                            }
                          }

                          if (*ANEDebugInfo::DebugInfoInMem::GetMode(v135) != 1)
                          {
                            goto LABEL_170;
                          }

                          v94 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
                          if (!v94)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v183, v184, v99);
                            }

                            goto LABEL_170;
                          }

                          v86[v88] = MemPool::get_offset<unsigned long long>(v147, v94);
                          *v94 = 5;
                          *(v94 + 1) = __p[1];
                          v95 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
                          v96 = v88 + 1;
                          if (!v95)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v181, v182, v100);
                            }

                            goto LABEL_169;
                          }

                          v86[v96] = MemPool::get_offset<unsigned long long>(v147, v95);
                          *v95 = 6;
                          *(v95 + 1) = v150;
                          v97 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
                          v96 = v88 + 2;
                          if (!v97)
                          {
                            break;
                          }

                          v86[v96] = MemPool::get_offset<unsigned long long>(v147, v97);
                          *v97 = 7;
                          *(v97 + 1) = *(&v150 + 1);
                          v98 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
                          v96 = v88 + 3;
                          if (!v98)
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v177, v178, v102);
                            }

LABEL_169:
                            v88 = v96;
                            goto LABEL_170;
                          }

                          v86[v96] = MemPool::get_offset<unsigned long long>(v147, v98);
                          *v98 = 8;
                          *(v98 + 1) = *&v151[0];
                          v88 |= 4u;
LABEL_170:
                          if (*(ANEDebugInfo::DebugInfoInMem::GetMode(v135) + 2) == 1)
                          {
                            v103 = &v86[v88 + 1];
                            v104 = 4;
                            v105 = v151 + 3;
                            while (1)
                            {
                              v106 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
                              if (!v106)
                              {
                                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                {
                                  ZinCreateAnalytics(v187, v188, v109);
                                }

                                goto LABEL_180;
                              }

                              *(v103 - 1) = MemPool::get_offset<unsigned long long>(v147, v106);
                              *v106 = 17;
                              v106[2] = *(v105 - 1);
                              v107 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
                              if (!v107)
                              {
                                break;
                              }

                              *v103 = MemPool::get_offset<unsigned long long>(v147, v107);
                              v103 += 2;
                              *v107 = 18;
                              v108 = *v105;
                              v105 += 2;
                              v107[2] = v108;
                              v88 += 2;
                              if (!--v104)
                              {
                                goto LABEL_180;
                              }
                            }

                            ++v88;
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                            {
                              ZinCreateAnalytics(v185, v186, v110);
                            }
                          }

LABEL_180:
                          v112 = __src.__r_.__value_.__l.__size_;
                          v111 = __src.__r_.__value_.__r.__words[0];
                          if (__src.__r_.__value_.__r.__words[0] == __src.__r_.__value_.__l.__size_)
                          {
                            v117 = 1;
                            goto LABEL_197;
                          }

                          while (1)
                          {
                            v113 = *(v111 + 4);
                            v114 = *(v111 + 8);
                            if (v113 == 3)
                            {
                              break;
                            }

                            if (v113 == 29)
                            {
                              v115 = 19;
                              goto LABEL_187;
                            }

                            if (v113 == 5)
                            {
                              v115 = 2;
                              goto LABEL_187;
                            }

LABEL_189:
                            v111 += 16;
                            if (v111 == v112)
                            {
                              v117 = 1;
                              goto LABEL_196;
                            }
                          }

                          v115 = 1;
LABEL_187:
                          v116 = MemPool::alloc<_AnalyticsData,unsigned long long>(v147);
                          if (v116)
                          {
                            v86[v88] = MemPool::get_offset<unsigned long long>(v147, v116);
                            *v116 = v115;
                            *(v116 + 1) = v114;
                            ++v88;
                            goto LABEL_189;
                          }

                          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            ZinCreateAnalytics(v161, v162, v118);
                            goto LABEL_194;
                          }

                          v117 = 0;
LABEL_196:
                          v111 = __src.__r_.__value_.__r.__words[0];
LABEL_197:
                          if (v111)
                          {
                            __src.__r_.__value_.__l.__size_ = v111;
                            operator delete(v111);
                          }

                          v63 = (v63 + 72);
                          if (v63 == v133)
                          {
                            v119 = 0;
                          }

                          else
                          {
                            v119 = v117;
                          }

                          if ((v119 & 1) == 0)
                          {
LABEL_214:
                            v39 = v126;
                            goto LABEL_215;
                          }
                        }

                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          ZinCreateAnalytics(v179, v180, v101);
                        }

                        goto LABEL_169;
                      }

                      v117 = 1;
                      v39 = v126;
                      if (v158)
                      {
LABEL_216:
                        v159 = v63;
                        operator delete(v63);
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        ZinCreateAnalytics(v171, v172, v120);
                      }

                      v117 = 0;
LABEL_215:
                      v63 = v158;
                      if (v158)
                      {
                        goto LABEL_216;
                      }
                    }

                    if (v155)
                    {
                      v156 = v155;
                      operator delete(v155);
                    }

                    if ((v117 & 1) == 0)
                    {
                      goto LABEL_226;
                    }

                    v38 = v130 + 48;
                    v13 = 1;
                    if (v130 + 48 == v125)
                    {
                      goto LABEL_236;
                    }
                  }
                }

                v13 = 1;
                goto LABEL_236;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ZinCreateAnalytics();
              }

LABEL_226:
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ZinCreateAnalytics();
              }

              goto LABEL_233;
            }

            goto LABEL_231;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ZinCreateAnalytics();
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCreateAnalytics();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCreateAnalytics();
    }

LABEL_231:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCreateAnalytics();
    }

LABEL_233:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCreateAnalytics();
    }

LABEL_235:
    v13 = 0;
LABEL_236:
    __p[0] = &v142;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v141);
    __p[0] = &v136;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_237:
    v134 = &v146;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v134);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v145);
    v134 = &v144;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v134);
    v134 = v143;
    std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](&v134);
    return v13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinCreateAnalytics();
  }

  return 0;
}

void sub_1C0450748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::~pair(&a19);
  ANEDebugInfo::DebugInfoParser::~DebugInfoParser(&a41);
  _Unwind_Resume(a1);
}

void **std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::~pair(void **a1)
{
  v3 = a1 + 18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(a1 + 13);
  v3 = a1 + 6;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void ANEDebugInfo::DebugInfoParser::~DebugInfoParser(void **this)
{
  v2 = this + 20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(this + 15);
  v2 = this + 8;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](&v2);
}

BOOL ZinDumpAnalytics(const void *a1, uint64_t a2)
{
  v138 = *MEMORY[0x1E69E9840];
  v135[0] = a1;
  v135[1] = a2;
  if (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>(v135, 0, &v130))
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "== Network Analytics ==", 23);
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v3 = std::locale::use_facet(&v136, MEMORY[0x1E69E5318]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v136);
    std::ostream::put();
    std::ostream::flush();
    if (v133)
    {
      v4 = 0;
      v5 = v135[0] + v134;
      v6 = MEMORY[0x1E69E5310];
      v7 = MEMORY[0x1E69E5318];
      while (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(v135, *(v5 + 8 * v4), &v122))
      {
        data = v122.__r_.__value_.__l.__data_;
        if (ANEAnalytics::IsVariableLengthString(v122.__r_.__value_.__l.__data_))
        {
          std::vector<signed char>::vector[abi:ne200100](&v136, HIDWORD(v122.__r_.__value_.__r.__words[0]));
          memcpy(v136.__r_.__value_.__l.__data_, (v135[0] + *(v5 + 8 * v4) + 8), HIDWORD(v122.__r_.__value_.__r.__words[0]));
          std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char *>,std::__wrap_iter<signed char *>>(&__p, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_, v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]);
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\t", 1);
          v10 = FieldKindToString(data);
          v11 = strlen(v10);
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ":  ", 3);
          if ((v128 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v128 & 0x80u) == 0)
          {
            v15 = v128;
          }

          else
          {
            v15 = *(&__p + 1);
          }

          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, p_p, v15);
          std::ios_base::getloc((v16 + *(*v16 - 24)));
          v17 = std::locale::use_facet(&v123, v7);
          (v17->__vftable[2].~facet_0)(v17, 10);
          std::locale::~locale(&v123);
          std::ostream::put();
          std::ostream::flush();
          if (v128 < 0)
          {
            operator delete(__p);
          }

          if (v136.__r_.__value_.__r.__words[0])
          {
            v136.__r_.__value_.__l.__size_ = v136.__r_.__value_.__r.__words[0];
            operator delete(v136.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\t", 1);
          v19 = FieldKindToString(data);
          v20 = strlen(v19);
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ":  ", 3);
          v23 = MEMORY[0x1C68DA330](v22, *(v135[0] + *(v5 + 8 * v4) + 8));
          std::ios_base::getloc((v23 + *(*v23 - 24)));
          v24 = std::locale::use_facet(&v136, v7);
          (v24->__vftable[2].~facet_0)(v24, 10);
          std::locale::~locale(&v136);
          std::ostream::put();
          std::ostream::flush();
        }

        if (++v4 >= v133)
        {
          goto LABEL_18;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinDumpAnalytics();
      }

      return 0;
    }

LABEL_18:
    std::ios_base::getloc((MEMORY[0x1E69E5310] + *(*MEMORY[0x1E69E5310] - 24)));
    v25 = std::locale::use_facet(&v136, MEMORY[0x1E69E5318]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v136);
    std::ostream::put();
    std::ostream::flush();
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "== Layer Analytics ==", 21);
    std::ios_base::getloc((v26 + *(*v26 - 24)));
    v27 = std::locale::use_facet(&v136, MEMORY[0x1E69E5318]);
    (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(&v136);
    std::ostream::put();
    std::ostream::flush();
    if (!v131)
    {
      return 1;
    }

    v120 = 0;
    v28 = MEMORY[0x1E69E5310];
    v119 = v135[0] + v132;
    v29 = MEMORY[0x1E69E5318];
    while (1)
    {
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Group # ", 8);
      v31 = MEMORY[0x1C68DA310](v30, v120);
      std::ios_base::getloc((v31 + *(*v31 - 24)));
      v32 = std::locale::use_facet(&v136, v29);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&v136);
      std::ostream::put();
      std::ostream::flush();
      if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsGroupInfo>(v135, *(v119 + 8 * v120), &__p))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinDumpAnalytics();
        }

        return 0;
      }

      v33 = v135[0];
      if (!__p)
      {
        goto LABEL_26;
      }

      v34 = 0;
      v35 = v135[0] + *(&__p + 1);
      do
      {
        if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsLayerInfo>(v135, *(v35 + 8 * v34), &v136))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ZinDumpAnalytics();
          }

          return 0;
        }

        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "  Layer Name: ", 14);
        v37 = strlen(&v136);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, &v136, v37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "\t", 1);
        v39 = std::ostream::operator<<();
        std::ios_base::getloc((v39 + *(*v39 - 24)));
        v40 = std::locale::use_facet(&v123, v29);
        (v40->__vftable[2].~facet_0)(v40, 10);
        std::locale::~locale(&v123);
        std::ostream::put();
        std::ostream::flush();
        ++v34;
      }

      while (v34 < __p);
      v33 = v135[0];
LABEL_26:
      if (v127)
      {
        v41 = 0;
        v42 = v33 + v129;
        v118 = v33 + v129;
        while (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsTaskInfo>(v135, *(v42 + 8 * v41), &v125))
        {
          v43 = *(&v125 + 1);
          v44 = v135[0];
          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "  Task ", 7);
          v46 = MEMORY[0x1C68DA310](v45, v41);
          std::ios_base::getloc((v46 + *(*v46 - 24)));
          v47 = std::locale::use_facet(&v136, v29);
          (v47->__vftable[2].~facet_0)(v47, 10);
          std::locale::~locale(&v136);
          std::ostream::put();
          std::ostream::flush();
          if (v125)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = v44 + v43;
            do
            {
              if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(v135, *(v51 + 8 * v48), &v124))
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  ZinDumpAnalytics();
                }

                return 0;
              }

              if (v124 > 17)
              {
                if (v124 == 18)
                {
                  std::to_string(&v136, v50);
                  v100 = std::string::insert(&v136, 0, "_Counter", 8uLL);
                  v101 = *&v100->__r_.__value_.__l.__data_;
                  v123.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
                  *&v123.__r_.__value_.__l.__data_ = v101;
                  v100->__r_.__value_.__l.__size_ = 0;
                  v100->__r_.__value_.__r.__words[2] = 0;
                  v100->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v136.__r_.__value_.__l.__data_);
                  }

                  v102 = *(v135[0] + *(v51 + 8 * v48) + 8);
                  v103 = FieldKindToString(v124);
                  std::string::basic_string[abi:ne200100]<0>(&v136, v103);
                  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v104 = &v123;
                  }

                  else
                  {
                    v104 = v123.__r_.__value_.__r.__words[0];
                  }

                  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v123.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v123.__r_.__value_.__l.__size_;
                  }

                  v106 = std::string::append(&v136, v104, size);
                  v107 = *&v106->__r_.__value_.__l.__data_;
                  v122.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
                  *&v122.__r_.__value_.__l.__data_ = v107;
                  v106->__r_.__value_.__l.__size_ = 0;
                  v106->__r_.__value_.__r.__words[2] = 0;
                  v106->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v136.__r_.__value_.__l.__data_);
                  }

                  ZinIrCompilerParamsUtils::PerfTracerMetricToString(v102, &v136);
                  if ((v137 & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  v121 = v136;
                  v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
                  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v109 = &v122;
                  }

                  else
                  {
                    v109 = v122.__r_.__value_.__r.__words[0];
                  }

                  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v110 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v110 = v122.__r_.__value_.__l.__size_;
                  }

                  v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, v109, v110);
                  v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, ": ", 2);
                  if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v113 = &v121;
                  }

                  else
                  {
                    v113 = v121.__r_.__value_.__r.__words[0];
                  }

                  if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v114 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v114 = v121.__r_.__value_.__l.__size_;
                  }

                  v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, v113, v114);
                  std::ios_base::getloc((v115 + *(*v115 - 24)));
                  v116 = std::locale::use_facet(&v136, v29);
                  (v116->__vftable[2].~facet_0)(v116, 10);
                  std::locale::~locale(&v136);
                  std::ostream::put();
                  std::ostream::flush();
                  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v121.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v122.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v123.__r_.__value_.__l.__data_);
                  }

                  ++v50;
                  goto LABEL_125;
                }

                if (v124 == 19)
                {
                  std::to_string(&v123, v49);
                  v69 = std::string::insert(&v123, 0, "_Counter", 8uLL);
                  v70 = *&v69->__r_.__value_.__l.__data_;
                  v136.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
                  *&v136.__r_.__value_.__l.__data_ = v70;
                  v69->__r_.__value_.__l.__size_ = 0;
                  v69->__r_.__value_.__r.__words[2] = 0;
                  v69->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v123.__r_.__value_.__l.__data_);
                  }

                  v71 = *(v135[0] + *(v51 + 8 * v48) + 8);
                  v72 = FieldKindToString(v124);
                  std::string::basic_string[abi:ne200100]<0>(&v122, v72);
                  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v73 = &v136;
                  }

                  else
                  {
                    v73 = v136.__r_.__value_.__r.__words[0];
                  }

                  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v74 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v74 = v136.__r_.__value_.__l.__size_;
                  }

                  v75 = std::string::append(&v122, v73, v74);
                  v76 = *&v75->__r_.__value_.__l.__data_;
                  v123.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
                  *&v123.__r_.__value_.__l.__data_ = v76;
                  v75->__r_.__value_.__l.__size_ = 0;
                  v75->__r_.__value_.__r.__words[2] = 0;
                  v75->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v122.__r_.__value_.__l.__data_);
                  }

                  v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
                  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v78 = &v123;
                  }

                  else
                  {
                    v78 = v123.__r_.__value_.__r.__words[0];
                  }

                  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v79 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v79 = v123.__r_.__value_.__l.__size_;
                  }

                  v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
                  v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, ": ", 2);
                  v82 = MEMORY[0x1C68DA330](v81, v71);
                  std::ios_base::getloc((v82 + *(*v82 - 24)));
                  v83 = std::locale::use_facet(&v122, v29);
                  (v83->__vftable[2].~facet_0)(v83, 10);
                  std::locale::~locale(&v122);
                  std::ostream::put();
                  std::ostream::flush();
                  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v123.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v136.__r_.__value_.__l.__data_);
                  }

                  ++v49;
                  goto LABEL_125;
                }
              }

              else
              {
                if (v124 == 11)
                {
                  v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
                  v92 = FieldKindToString(v124);
                  v93 = strlen(v92);
                  v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, v92, v93);
                  v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, ":  ", 3);
                  if (*(v135[0] + *(v51 + 8 * v48) + 8))
                  {
                    v96 = "true";
                  }

                  else
                  {
                    v96 = "false";
                  }

                  if (*(v135[0] + *(v51 + 8 * v48) + 8))
                  {
                    v97 = 4;
                  }

                  else
                  {
                    v97 = 5;
                  }

                  v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, v96, v97);
                  std::ios_base::getloc((v98 + *(*v98 - 24)));
                  v99 = std::locale::use_facet(&v136, v29);
                  (v99->__vftable[2].~facet_0)(v99, 10);
                  std::locale::~locale(&v136);
                  std::ostream::put();
                  std::ostream::flush();
                  goto LABEL_125;
                }

                if (v124 == 17)
                {
                  std::to_string(&v136, v50);
                  v52 = std::string::insert(&v136, 0, "_Counter", 8uLL);
                  v53 = *&v52->__r_.__value_.__l.__data_;
                  v123.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
                  *&v123.__r_.__value_.__l.__data_ = v53;
                  v52->__r_.__value_.__l.__size_ = 0;
                  v52->__r_.__value_.__r.__words[2] = 0;
                  v52->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v136.__r_.__value_.__l.__data_);
                  }

                  v54 = *(v135[0] + *(v51 + 8 * v48) + 8);
                  v55 = FieldKindToString(v124);
                  std::string::basic_string[abi:ne200100]<0>(&v136, v55);
                  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v56 = &v123;
                  }

                  else
                  {
                    v56 = v123.__r_.__value_.__r.__words[0];
                  }

                  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v57 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v57 = v123.__r_.__value_.__l.__size_;
                  }

                  v58 = std::string::append(&v136, v56, v57);
                  v59 = *&v58->__r_.__value_.__l.__data_;
                  v122.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
                  *&v122.__r_.__value_.__l.__data_ = v59;
                  v58->__r_.__value_.__l.__size_ = 0;
                  v58->__r_.__value_.__r.__words[2] = 0;
                  v58->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v136.__r_.__value_.__l.__data_);
                  }

                  ZinIrCompilerParamsUtils::PerfTracerCategoryToString(v54, &v136);
                  if ((v137 & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  v121 = v136;
                  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
                  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v61 = &v122;
                  }

                  else
                  {
                    v61 = v122.__r_.__value_.__r.__words[0];
                  }

                  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v62 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v62 = v122.__r_.__value_.__l.__size_;
                  }

                  v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v61, v62);
                  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ": ", 2);
                  if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v65 = &v121;
                  }

                  else
                  {
                    v65 = v121.__r_.__value_.__r.__words[0];
                  }

                  if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v66 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v66 = v121.__r_.__value_.__l.__size_;
                  }

                  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, v66);
                  std::ios_base::getloc((v67 + *(*v67 - 24)));
                  v68 = std::locale::use_facet(&v136, v29);
                  (v68->__vftable[2].~facet_0)(v68, 10);
                  std::locale::~locale(&v136);
                  std::ostream::put();
                  std::ostream::flush();
                  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v121.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v122.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v123.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_125;
                }
              }

              v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\t", 1);
              v85 = FieldKindToString(v124);
              v86 = strlen(v85);
              v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, v85, v86);
              v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, ":  ", 3);
              v89 = MEMORY[0x1C68DA330](v88, *(v135[0] + *(v51 + 8 * v48) + 8));
              std::ios_base::getloc((v89 + *(*v89 - 24)));
              v90 = std::locale::use_facet(&v136, v29);
              (v90->__vftable[2].~facet_0)(v90, 10);
              std::locale::~locale(&v136);
              std::ostream::put();
              std::ostream::flush();
LABEL_125:
              ++v48;
            }

            while (v48 < v125);
          }

          ++v41;
          v42 = v118;
          if (v41 >= v127)
          {
            goto LABEL_127;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinDumpAnalytics();
        }

        return 0;
      }

LABEL_127:
      result = 1;
      if (++v120 >= v131)
      {
        return result;
      }
    }
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ZinDumpAnalytics();
    return 0;
  }

  return result;
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a2 + 48;
  v4 = a1[1];
  if (a2 + 48 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    v5 = (*a1 + a2);
    v6 = *v5;
    v7 = v5[2];
    a3[1] = v5[1];
    a3[2] = v7;
    *a3 = v6;
  }

  return v3 <= v4;
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(void *a1, uint64_t a2, void *a3)
{
  v3 = a2 + 8;
  v4 = a1[1];
  if (a2 + 8 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    *a3 = *(*a1 + a2);
  }

  return v3 <= v4;
}

const char *FieldKindToString(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return "Invalid";
  }

  else
  {
    return off_1E81171C8[a1];
  }
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsGroupInfo>(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a2 + 32;
  v4 = a1[1];
  if (a2 + 32 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    v5 = (*a1 + a2);
    v6 = v5[1];
    *a3 = *v5;
    a3[1] = v6;
  }

  return v3 <= v4;
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsLayerInfo>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 132;
  v4 = a1[1];
  if (a2 + 132 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    v5 = *a1 + a2;
    *a3 = *v5;
    v6 = *(v5 + 16);
    v7 = *(v5 + 32);
    v8 = *(v5 + 64);
    *(a3 + 48) = *(v5 + 48);
    *(a3 + 64) = v8;
    *(a3 + 16) = v6;
    *(a3 + 32) = v7;
    v9 = *(v5 + 80);
    v10 = *(v5 + 96);
    v11 = *(v5 + 112);
    *(a3 + 128) = *(v5 + 128);
    *(a3 + 96) = v10;
    *(a3 + 112) = v11;
    *(a3 + 80) = v9;
  }

  return v3 <= v4;
}

BOOL ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsTaskInfo>(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a2 + 16;
  v4 = a1[1];
  if (a2 + 16 > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>();
    }
  }

  else
  {
    *a3 = *(*a1 + a2);
  }

  return v3 <= v4;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t ZinDumpAnalyticsInJSON(const void *a1, uint64_t a2, const char *a3)
{
  v127[19] = *MEMORY[0x1E69E9840];
  v5 = v127;
  v127[6] = 0;
  v6 = MEMORY[0x1E69E5530] + 64;
  v127[0] = MEMORY[0x1E69E5530] + 64;
  v7 = MEMORY[0x1E69E54D0];
  v8 = *(MEMORY[0x1E69E54D0] + 16);
  v125 = *(MEMORY[0x1E69E54D0] + 8);
  *&v126[*(v125 - 24) - 8] = v8;
  v9 = &v126[*(v125 - 24) - 8];
  std::ios_base::init(v9, v126);
  v10 = MEMORY[0x1E69E5530] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v125 = v10;
  v127[0] = v6;
  MEMORY[0x1C68DA270](v126);
  std::ofstream::open();
  LOBYTE(v114) = 0;
  HIDWORD(v114) = 0;
  v115 = &v125;
  v116 = 0;
  LOBYTE(v117) = 1;
  *(&v117 + 1) = 4;
  LOBYTE(v118) = 0;
  v113[0] = a1;
  v113[1] = a2;
  if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsProcedureInfo>(v113, 0, &v108))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinDumpAnalyticsInJSON();
    }

    goto LABEL_105;
  }

  minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v114, "MajorVersion");
  minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v114, "MinorVersion");
  minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v114, "CpuType");
  minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v114, "ProcId");
  minijson::writer::next_field(&v114);
  minijson::writer::write_field_name(&v114, "NetworkAnalytics");
  v106 = v117;
  v107 = v118;
  v102[0] = 0;
  v103 = 0;
  v104 = v115;
  v105 = v116 + 1;
  if (v111)
  {
    v11 = 0;
    v12 = v113[0] + v112;
    while (1)
    {
      v13 = *(v12 + 8 * v11);
      if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(v113, v13, &v92))
      {
        break;
      }

      v14 = v92;
      if (ANEAnalytics::IsVariableLengthString(v92))
      {
        std::vector<signed char>::vector[abi:ne200100](&__dst, HIDWORD(v92));
        memcpy(__dst, (v113[0] + v13 + 8), HIDWORD(v92));
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char *>,std::__wrap_iter<signed char *>>(&__p, __dst, v120, v120 - __dst);
        v15 = FieldKindToString(v14);
        minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v102, v15, &__p);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(__p);
        }

        if (__dst)
        {
          v120 = __dst;
          operator delete(__dst);
        }
      }

      else
      {
        v16 = FieldKindToString(v14);
        __dst = *(v113[0] + v13 + 8);
        minijson::writer::write_helper<unsigned long long,minijson::default_value_writer<unsigned long long,void>>(v102, v16);
      }

      if (++v11 >= v111)
      {
        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinDumpAnalyticsInJSON();
    }

    goto LABEL_105;
  }

LABEL_12:
  minijson::writer::close(v102);
  minijson::writer::next_field(&v114);
  minijson::writer::write_field_name(&v114, "LayerAnalytics");
  v100 = v117;
  v101 = v118;
  LOBYTE(__p) = 0;
  HIDWORD(__p) = 0;
  v98 = v115;
  v99 = v116 + 1;
  minijson::writer::next_field(&__p);
  minijson::writer::write_field_name(&__p, "Groups");
  v95 = v100;
  v96 = v101;
  LOBYTE(v92) = 1;
  HIDWORD(v92) = 0;
  __n_4 = v98;
  v94 = v99 + 1;
  if (v109)
  {
    v17 = 0;
    v18 = v113[0] + v110;
    v61 = v113[0] + v110;
    while (1)
    {
      minijson::writer::next_field(&v92);
      v90 = v95;
      v91 = v96;
      LOBYTE(v87) = 0;
      HIDWORD(v87) = 0;
      v88 = __n_4;
      v89 = v94 + 1;
      if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsGroupInfo>(v113, *(v18 + 8 * v17), &v84))
      {
        break;
      }

      v63 = v17;
      v19 = *(&v84 + 1);
      v20 = v113[0];
      minijson::writer::next_field(&v87);
      minijson::writer::write_field_name(&v87, "Layers");
      v82 = v90;
      v83 = v91;
      v78[0] = 1;
      v79 = 0;
      v80 = v88;
      v81 = v89 + 1;
      if (v84)
      {
        v21 = 0;
        v22 = v20 + v19;
        while (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsLayerInfo>(v113, *(v22 + 8 * v21), &__dst))
        {
          minijson::writer::next_field(v78);
          v76 = v82;
          v77 = v83;
          v72[0] = 0;
          v73 = 0;
          v74 = v80;
          v75 = v81 + 1;
          minijson::writer::write_helper<char [64],minijson::default_value_writer<char [64],void>>(v72, "Name", &__dst);
          minijson::writer::write_helper<float,minijson::default_value_writer<float,void>>(v72, "Weight", &v124);
          minijson::writer::close(v72);
          if (++v21 >= v84)
          {
            goto LABEL_19;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinDumpAnalyticsInJSON();
        }

        goto LABEL_105;
      }

LABEL_19:
      minijson::writer::close(v78);
      minijson::writer::next_field(&v87);
      minijson::writer::write_field_name(&v87, "Tasks");
      v122 = v90;
      v123 = v91;
      LOBYTE(__dst) = 1;
      HIDWORD(__dst) = 0;
      v120 = v88;
      v121 = v89 + 1;
      if (v85)
      {
        v23 = 0;
        v24 = v113[0] + v86;
        v64 = v5;
        v62 = v113[0] + v86;
        while (ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsTaskInfo>(v113, *(v24 + 8 * v23), &v71))
        {
          v25 = *(&v71 + 1);
          v26 = v113[0];
          minijson::writer::next_field(&__dst);
          v76 = v122;
          v77 = v123;
          v72[0] = 0;
          v73 = 0;
          v74 = v120;
          v75 = v121 + 1;
          if (v71)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = v26 + v25;
            do
            {
              if (!ANEAnalytics::AnalyticsBufferParser::StructAt<_AnalyticsData>(v113, *(v30 + 8 * v27), &v70))
              {
                v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v5 = v64;
                v7 = MEMORY[0x1E69E54D0];
                if (v59)
                {
                  ZinDumpAnalyticsInJSON();
                }

                goto LABEL_105;
              }

              if (v70 > 17)
              {
                if (v70 == 18)
                {
                  v49 = *(v113[0] + *(v30 + 8 * v27) + 8);
                  v50 = FieldKindToString(0x12u);
                  std::string::basic_string[abi:ne200100]<0>(&v68, v50);
                  v51 = std::string::append(&v68, "_Counter", 8uLL);
                  v52 = *&v51->__r_.__value_.__l.__data_;
                  v65.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
                  *&v65.__r_.__value_.__l.__data_ = v52;
                  v51->__r_.__value_.__l.__size_ = 0;
                  v51->__r_.__value_.__r.__words[2] = 0;
                  v51->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v67, v29);
                  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v53 = &v67;
                  }

                  else
                  {
                    v53 = v67.__r_.__value_.__r.__words[0];
                  }

                  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v67.__r_.__value_.__l.__size_;
                  }

                  v55 = std::string::append(&v65, v53, size);
                  v56 = *&v55->__r_.__value_.__l.__data_;
                  v69.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
                  *&v69.__r_.__value_.__l.__data_ = v56;
                  v55->__r_.__value_.__l.__size_ = 0;
                  v55->__r_.__value_.__r.__words[2] = 0;
                  v55->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v67.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v65.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v68.__r_.__value_.__l.__data_);
                  }

                  ZinIrCompilerParamsUtils::PerfTracerMetricToString(v49, &v65);
                  if ((v66 & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  v68 = v65;
                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v57 = &v69;
                  }

                  else
                  {
                    v57 = v69.__r_.__value_.__r.__words[0];
                  }

                  minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v72, v57, &v68);
                  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v68.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v69.__r_.__value_.__l.__data_);
                  }

                  ++v29;
                  goto LABEL_91;
                }

                if (v70 == 19)
                {
                  v40 = FieldKindToString(0x13u);
                  std::string::basic_string[abi:ne200100]<0>(&v68, v40);
                  v41 = std::string::append(&v68, "_Counter", 8uLL);
                  v42 = *&v41->__r_.__value_.__l.__data_;
                  v69.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
                  *&v69.__r_.__value_.__l.__data_ = v42;
                  v41->__r_.__value_.__l.__size_ = 0;
                  v41->__r_.__value_.__r.__words[2] = 0;
                  v41->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v67, v28);
                  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v43 = &v67;
                  }

                  else
                  {
                    v43 = v67.__r_.__value_.__r.__words[0];
                  }

                  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v44 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v44 = v67.__r_.__value_.__l.__size_;
                  }

                  v45 = std::string::append(&v69, v43, v44);
                  v46 = *&v45->__r_.__value_.__l.__data_;
                  v65.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
                  *&v65.__r_.__value_.__l.__data_ = v46;
                  v45->__r_.__value_.__l.__size_ = 0;
                  v45->__r_.__value_.__r.__words[2] = 0;
                  v45->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v67.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v69.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v68.__r_.__value_.__l.__data_);
                  }

                  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v47 = &v65;
                  }

                  else
                  {
                    v47 = v65.__r_.__value_.__r.__words[0];
                  }

                  minijson::writer::write_helper<unsigned long long,minijson::default_value_writer<unsigned long long,void>>(v72, v47);
                  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v65.__r_.__value_.__l.__data_);
                  }

                  ++v28;
                  goto LABEL_91;
                }
              }

              else
              {
                if (v70 == 11)
                {
                  v69.__r_.__value_.__s.__data_[0] = *(v113[0] + *(v30 + 8 * v27) + 8) & 1;
                  minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(v72, "ViolatesMaxLatency", &v69);
                  goto LABEL_91;
                }

                if (v70 == 17)
                {
                  v31 = *(v113[0] + *(v30 + 8 * v27) + 8);
                  v32 = FieldKindToString(0x11u);
                  std::string::basic_string[abi:ne200100]<0>(&v68, v32);
                  v33 = std::string::append(&v68, "_Counter", 8uLL);
                  v34 = *&v33->__r_.__value_.__l.__data_;
                  v65.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
                  *&v65.__r_.__value_.__l.__data_ = v34;
                  v33->__r_.__value_.__l.__size_ = 0;
                  v33->__r_.__value_.__r.__words[2] = 0;
                  v33->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v67, v29);
                  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v35 = &v67;
                  }

                  else
                  {
                    v35 = v67.__r_.__value_.__r.__words[0];
                  }

                  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v36 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v36 = v67.__r_.__value_.__l.__size_;
                  }

                  v37 = std::string::append(&v65, v35, v36);
                  v38 = *&v37->__r_.__value_.__l.__data_;
                  v69.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
                  *&v69.__r_.__value_.__l.__data_ = v38;
                  v37->__r_.__value_.__l.__size_ = 0;
                  v37->__r_.__value_.__r.__words[2] = 0;
                  v37->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v67.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v65.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v68.__r_.__value_.__l.__data_);
                  }

                  ZinIrCompilerParamsUtils::PerfTracerCategoryToString(v31, &v65);
                  if ((v66 & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  v68 = v65;
                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v39 = &v69;
                  }

                  else
                  {
                    v39 = v69.__r_.__value_.__r.__words[0];
                  }

                  minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v72, v39, &v68);
                  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v68.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v69.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_91;
                }
              }

              v48 = FieldKindToString(v70);
              v65.__r_.__value_.__r.__words[0] = *(v113[0] + *(v30 + 8 * v27) + 8);
              minijson::writer::write_helper<unsigned long long,minijson::default_value_writer<unsigned long long,void>>(v72, v48);
LABEL_91:
              ++v27;
            }

            while (v27 < v71);
          }

          minijson::writer::close(v72);
          ++v23;
          v5 = v64;
          v7 = MEMORY[0x1E69E54D0];
          v24 = v62;
          if (v23 >= v85)
          {
            goto LABEL_93;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinDumpAnalyticsInJSON();
        }

LABEL_105:
        v58 = 0;
        goto LABEL_106;
      }

LABEL_93:
      minijson::writer::close(&__dst);
      minijson::writer::close(&v87);
      v17 = v63 + 1;
      v18 = v61;
      if (v63 + 1 >= v109)
      {
        goto LABEL_94;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinDumpAnalyticsInJSON();
    }

    goto LABEL_105;
  }

LABEL_94:
  minijson::writer::close(&v92);
  minijson::writer::close(&__p);
  minijson::writer::close(&v114);
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v126[*(v125 - 24) - 8], *&v126[*(v125 - 24) + 24] | 4);
  }

  v58 = 1;
LABEL_106:
  v125 = *v7;
  *&v126[*(v125 - 24) - 8] = v7[3];
  MEMORY[0x1C68DA280](v126);
  std::ostream::~ostream();
  MEMORY[0x1C68DA3E0](v5);
  return v58;
}

void sub_1C04529D0(_Unwind_Exception *a1)
{
  std::ofstream::~ofstream(&STACK[0x300], MEMORY[0x1E69E54D0]);
  MEMORY[0x1C68DA3E0](v1);
  _Unwind_Resume(a1);
}

minijson::writer *minijson::writer::close(minijson::writer *this)
{
  if (*(this + 1) != 2)
  {
    v1 = this;
    if (!*(v1 + 1))
    {
      minijson::writer::write_opening_bracket(v1);
    }

    this = minijson::writer::write_closing_bracket(v1);
    *(v1 + 1) = 2;
  }

  return this;
}

uint64_t ZinComputeAnalyticsBufferSize(uint64_t a1, const unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 0x80000000) == 0 && a2 && a3)
  {
    v7 = a1;
    ANEDebugInfo::DebugInfoParser::DebugInfoParser(v37, a2, a3);
    ANEDebugInfo::DebugInfoParser::Parse(v37);
    ANEDebugInfo::DebugInfoParser::GetCompilationUnit(&v30, v37, v7);
    if (v30)
    {
      v8 = ZinComputeProgramAlign(0x30uLL, 8uLL);
      Mode = ANEDebugInfo::DebugInfoInMem::GetMode(v31);
      v10 = Mode[1] + a4;
      if (*Mode)
      {
        v11 = v10 + 5;
      }

      else
      {
        v11 = v10 + 1;
      }

      ANEDebugInfo::DebugInfoInMem::GetString(&v29, v31, v34);
      size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = v29.__r_.__value_.__l.__size_;
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      v13 = ZinComputeProgramAlign(size, 8uLL);
      v14 = ANEDebugInfo::DebugInfoInMem::GetMode(v31);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = ZinComputeProgramAlign(0x10uLL, 8uLL);
      v19 = v8 + 16 * v11 + v13;
      v20 = v16 + 5;
      if (!v15)
      {
        v20 = v16 + 1;
      }

      if (v17)
      {
        v20 |= 8uLL;
      }

      v21 = v32;
      v22 = v33;
      if (v32 != v33)
      {
        v23 = v18 + 24 * (v20 + a5) + 8;
        do
        {
          v24 = ZinComputeProgramAlign(0x20uLL, 8uLL);
          v26 = *v21;
          v25 = v21[1];
          v19 = v19 + v24 - 0x5555555555555555 * ((v25 - v26) >> 2) * (ZinComputeProgramAlign(0x84uLL, 8uLL) + 8) - 0x71C71C71C71C71C7 * ((v21[4] - v21[3]) >> 3) * v23 + 8;
          v21 += 6;
        }

        while (v21 != v22);
      }

      v27 = v19;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCreateAnalytics();
      }

      v27 = 0;
    }

    v29.__r_.__value_.__r.__words[0] = &v36;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v35);
    v29.__r_.__value_.__r.__words[0] = &v32;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v29);
    v30 = &v40;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v39);
    v30 = &v38;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v30);
    v30 = v37;
    std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](&v30);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeAnalyticsBufferSize();
    }

    return 0;
  }

  return v27;
}

void sub_1C0452E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::~pair(&a13);
  ANEDebugInfo::DebugInfoParser::~DebugInfoParser(va);
  _Unwind_Resume(a1);
}

uint64_t ZinAnalyticsGetPerfCounterInfo(const unsigned __int8 *a1, int a2, char (*a3)[128])
{
  *&(*a3)[480] = 0u;
  *&(*a3)[496] = 0u;
  *&(*a3)[448] = 0u;
  *&(*a3)[464] = 0u;
  *&(*a3)[416] = 0u;
  *&(*a3)[432] = 0u;
  *&(*a3)[384] = 0u;
  *&(*a3)[400] = 0u;
  *&(*a3)[352] = 0u;
  *&(*a3)[368] = 0u;
  *&(*a3)[320] = 0u;
  *&(*a3)[336] = 0u;
  *&(*a3)[288] = 0u;
  *&(*a3)[304] = 0u;
  *&(*a3)[256] = 0u;
  *&(*a3)[272] = 0u;
  *&(*a3)[224] = 0u;
  *&(*a3)[240] = 0u;
  *&(*a3)[192] = 0u;
  *&(*a3)[208] = 0u;
  *&(*a3)[160] = 0u;
  *&(*a3)[176] = 0u;
  *&(*a3)[128] = 0u;
  *&(*a3)[144] = 0u;
  *&(*a3)[96] = 0u;
  *&(*a3)[112] = 0u;
  *&(*a3)[64] = 0u;
  *&(*a3)[80] = 0u;
  *&(*a3)[32] = 0u;
  *&(*a3)[48] = 0u;
  *a3 = 0u;
  *&(*a3)[16] = 0u;
  ANEDebugInfo::DebugInfoParser::DebugInfoParser(v54, a1, a2);
  if (ANEDebugInfo::DebugInfoParser::Parse(v54))
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      ANEDebugInfo::DebugInfoParser::GetCompilationUnit(&v37, v54, v4);
      v6 = v37;
      *&v24[0] = &v50;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v24);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v45);
      *&v24[0] = &v41;
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](v24);
      if (v6 != 1)
      {
        break;
      }

      ANEDebugInfo::DebugInfoParser::GetCompilationUnit(&v37, v54, v4);
      v24[0] = v38;
      v24[1] = v39;
      v25 = v40;
      v26 = v41;
      v7 = v42;
      v8 = v45;
      v42 = 0;
      v41 = 0uLL;
      v28 = v43;
      v29 = v44;
      v27 = v7;
      v9 = v46;
      v45 = 0;
      v46 = 0;
      v30[0] = v8;
      v30[1] = v9;
      v31[0] = v47;
      v31[1] = v48;
      v32 = v49;
      if (v48)
      {
        v10 = *(v47 + 8);
        if ((v9 & (v9 - 1)) != 0)
        {
          if (v10 >= v9)
          {
            v10 %= v9;
          }
        }

        else
        {
          v10 &= v9 - 1;
        }

        *(v8 + v10) = v31;
        v47 = 0;
        v48 = 0;
      }

      v33 = v50;
      v34 = v51;
      v51 = 0;
      v50 = 0uLL;
      v35 = v52;
      v36 = v53;
      v58[0] = &v50;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v58);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v45);
      v58[0] = &v41;
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](v58);
      v11 = *(&v26 + 1);
      for (i = v26; ; i += 48)
      {
        if (i == v11)
        {
          v21 = 1;
          goto LABEL_29;
        }

        v13 = *(i + 24);
        if (*(i + 32) != v13)
        {
          v14 = (v13 + 44);
          v15 = a3;
          v16 = 4;
          do
          {
            v17 = *(&PerfTracerCategoryToString(int)::perf_tracer_category_to_string + *(v14 - 1));
            if (*v17)
            {
              v18 = *(&PerfTracerMetricToString(int)::perf_tracer_metric_to_string + *v14);
              if (*v18)
              {
                if (strlcat(v15, v17, 0x80uLL) > 0x7F || strlcat(v15, ":", 0x80uLL) > 0x7F || strlcat(v15, v18, 0x80uLL) > 0x7F)
                {
                  v21 = 0;
                  v23 = 0;
                  goto LABEL_29;
                }
              }
            }

            v14 += 2;
            v15 += 128;
            --v16;
          }

          while (v16);
          for (j = 0; j != 4; ++j)
          {
            while (v5)
            {
              ++j;
              v5 = 1;
              if (j == 4)
              {
                v21 = 0;
                v23 = 1;
                goto LABEL_29;
              }
            }

            v20 = (*a3)[128 * j];
            v5 = (*a3)[128 * j] != 0;
          }

          v5 = 0;
          if (v20)
          {
            break;
          }
        }
      }

      v23 = 1;
      v21 = 0;
      v5 = 1;
LABEL_29:
      ++v4;
      v37 = &v33;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v30);
      v37 = &v26;
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v37);
      if ((v21 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  v23 = 0;
LABEL_33:
  v37 = &v57;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v56);
  v37 = &v55;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v37);
  v37 = v54;
  std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](&v37);
  return v23 & 1;
}

void sub_1C0453290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);
  ANEDebugInfo::DebugInfoParser::~DebugInfoParser(va);
  _Unwind_Resume(a1);
}

void *MemPool::alloc<_AnalyticsProcedureInfo>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(48 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

void *MemPool::alloc<unsigned long long>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(8 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

unint64_t MemPool::get_offset<unsigned long long>(unint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 <= a2 && *a1 >= a2)
  {
    return a2 - v2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    MemPool::get_offset<unsigned long long>();
  }

  return 0;
}

_DWORD *MemPool::alloc<_AnalyticsData,unsigned long long>(uint64_t a1)
{
  result = MemPool::alloc<unsigned long long>(a1, 1u);
  if (result)
  {
    v3 = result;
    result[1] = 8;
    if (MemPool::alloc<signed char>(a1, 8u))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *MemPool::alloc<signed char>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

uint64_t *std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C0453598(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Layer>>(a1, a2);
  }

  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Layer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t *std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C0453718(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::TD>>(a1, a2);
  }

  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::TD>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *MemPool::alloc<_AnalyticsGroupInfo>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(32 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

void *MemPool::alloc<_AnalyticsLayerInfo>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(132 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANEHwDebugEventStruct>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *MemPool::alloc<_AnalyticsTaskInfo>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = ZinComputeProgramAlign(16 * a2, 8uLL);
  v5 = *(a1 + 8);
  v6 = *a1 + v4;
  *a1 = v6;
  if (v6 <= v5 + *(a1 + 16))
  {
    if (*(a1 + 24) == 1)
    {
      bzero(v3, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MemPool::alloc<_AnalyticsProcedureInfo>();
    }

    return 0;
  }

  return v3;
}

_DWORD *MemPool::alloc<_AnalyticsData,unsigned char>(uint64_t a1)
{
  result = MemPool::alloc<unsigned long long>(a1, 1u);
  if (result)
  {
    v3 = result;
    result[1] = 1;
    if (MemPool::alloc<signed char>(a1, 1u))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ANEDebugInfo::DebugInfoInMem::Group::~Group(ANEDebugInfo::DebugInfoInMem::Group *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ANEDebugInfo::DebugInfoInMem>::clear[abi:ne200100](void *result)
{
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = (v3 - 32);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((v3 - 72));
      v4 = (v3 - 128);
      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v4);
      v3 -= 168;
    }

    while (v3 != v2);
  }

  result[1] = v2;
}

uint64_t *std::vector<signed char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1C0453BBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__throw_length_error[abi:ne200100]();
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char *>,std::__wrap_iter<signed char *>>(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

void minijson::detail::anonymous namespace::adjust_stream_settings(uint64_t *a1)
{
  v2 = (a1 + *(*a1 - 24));
  v3 = std::locale::classic();
  std::ios_base::getloc(v2);
  std::ios_base::imbue(v2, v3);
  std::locale::~locale(&v8);
  rdbuf = v2->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, v3);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, v3);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  v5 = *a1;
  *(a1 + *(*a1 - 24) + 8) &= 0xFFFFF3FF;
  *(a1 + *(v5 - 24) + 8) = *(a1 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(a1 + *(v5 - 24) + 24) = 0;
}

uint64_t minijson::writer::next_field(minijson::writer *this)
{
  v2 = *(this + 1);
  if (v2 == 1)
  {
    v3 = *(this + 1);
    v5 = 44;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v5, 1);
  }

  else if (!v2)
  {
    minijson::writer::write_opening_bracket(this);
  }

  result = minijson::writer::write_pretty_print_token(this, 0);
  *(this + 1) = 1;
  return result;
}

void *minijson::writer::write_field_name(std::locale::__imp **this, char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = this[1];
  LOBYTE(v5) = 58;
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v5, 1);
  if (*(this + 24) == 1)
  {
    v5 = this[1];
    v7 = 1;
    v6 = 32;
    return std::ostream::write();
  }

  return result;
}

void *minijson::writer::write_opening_bracket(minijson::writer *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (v1 == 1)
  {
    v5 = 91;
    v3 = &v5;
  }

  else
  {
    v6 = 123;
    v3 = &v6;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, 1);
}

uint64_t minijson::writer::write_pretty_print_token(uint64_t result, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(result + 24) == 1)
  {
    v2 = result;
    v8 = 0;
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 1;
        v7[0] = 32;
      }

      else if (a2 == 2 && *(result + 4))
      {
        goto LABEL_6;
      }

      return std::ostream::write();
    }

LABEL_6:
    v3 = *(result + 16);
    if (!a2)
    {
      ++v3;
    }

    if ((*(result + 40) & 1) == 0)
    {
      v3 *= *(result + 32);
    }

    v8 = 1;
    v7[0] = 10;
    if (v3)
    {
      v4 = v3 - 1;
      v5 = 1;
      while (1)
      {
        v6 = *(v2 + 40) ? 9 : 32;
        if (v5 == 16)
        {
          std::ostream::write();
          v5 = 0;
        }

        v8 = v5 + 1;
        v7[v5] = v6;
        if (!v4)
        {
          break;
        }

        v5 = v8;
        --v4;
      }
    }

    return std::ostream::write();
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1C68DA2C0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1C68DA2D0](v13);
  return a1;
}

void sub_1C0454278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1C68DA2D0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C0454258);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1C04544AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t minijson::detail::anonymous namespace::write_quoted_string(std::locale::__imp *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(a1 + *(v4 - 24) + 8) = *(a1 + *(v4 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v5 = a1 + *(v4 - 24);
  if (*(v5 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(v4 - 24)));
    v6 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
    v7 = (v6->__vftable[2].~facet_0)(v6, 32);
    std::locale::~locale(&v12);
    *(v5 + 36) = v7;
  }

  *(v5 + 36) = 48;
  v12.__locale_ = a1;
  v14 = 1;
  v13[0] = 34;
  while (1)
  {
    v8 = *a2;
    if (v8 > 0xC)
    {
      switch(v8)
      {
        case 0xDu:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\r");
          goto LABEL_22;
        case 0x5Cu:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\\"");
          goto LABEL_22;
        case 0x22u:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\");
          goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (v8 == 9)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\t");
      goto LABEL_22;
    }

    if (v8 == 10)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\n");
      goto LABEL_22;
    }

    if (!*a2)
    {
      break;
    }

LABEL_16:
    if (v8 == 127 || v8 - 1 <= 0x1E)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\u");
      std::ostream::write();
      v14 = 0;
      *(a1 + *(*a1 - 24) + 24) = 4;
      MEMORY[0x1C68DA310](a1, *a2);
    }

    else
    {
      v9 = v14;
      if (v14 == 128)
      {
        std::ostream::write();
        v9 = 0;
      }

      v14 = v9 + 1;
      v13[v9] = v8;
    }

LABEL_22:
    ++a2;
  }

  v10 = v14;
  if (v14 == 128)
  {
    std::ostream::write();
    v10 = 0;
  }

  v14 = v10 + 1;
  v13[v10] = 34;
  result = std::ostream::write();
  v14 = 0;
  *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 2;
  return result;
}

void *minijson::detail::buffered_writer<128ul>::operator<<<3ul>(void *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 1;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *(a2 + v4);
    v9 = a1[17];
    if (v9 == 128)
    {
      std::ostream::write();
      v9 = 0;
    }

    v6 = 0;
    a1[17] = v9 + 1;
    *(v5 + v9) = v8;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return a1;
}

void *minijson::writer::write_closing_bracket(minijson::writer *this)
{
  minijson::writer::write_pretty_print_token(this, 2);
  v2 = *(this + 1);
  if (*this == 1)
  {
    v5 = 93;
    v3 = &v5;
  }

  else
  {
    v6 = 125;
    v3 = &v6;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, 1);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1C68DA280](a1 + 1);

  return std::ostream::~ostream();
}

void ANEDebugInfo::DebugInfoInMem::~DebugInfoInMem(void **this)
{
  v2 = this + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(this + 12);
  v2 = this + 5;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(uint64_t result, char *a2)
{
  if (*(result + 4) != 2)
  {
    v4 = result;
    minijson::writer::next_field(v4);
    if (a2)
    {
      minijson::writer::write_field_name(v4, a2);
    }

    JUMPOUT(0x1C68DA310);
  }

  return result;
}

uint64_t minijson::writer::write_helper<unsigned long long,minijson::default_value_writer<unsigned long long,void>>(uint64_t result, char *a2)
{
  if (*(result + 4) != 2)
  {
    v4 = result;
    minijson::writer::next_field(v4);
    if (a2)
    {
      minijson::writer::write_field_name(v4, a2);
    }

    JUMPOUT(0x1C68DA330);
  }

  return result;
}

uint64_t minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(uint64_t result, char *a2, _BYTE *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
    if (a3[23] >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }
  }

  return result;
}

uint64_t minijson::writer::write_helper<char [64],minijson::default_value_writer<char [64],void>>(uint64_t result, char *a2, _BYTE *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
  }

  return result;
}

minijson::writer *minijson::writer::write_helper<float,minijson::default_value_writer<float,void>>(minijson::writer *result, char *a2, float *a3)
{
  if (*(result + 1) != 2)
  {
    v9 = v3;
    v10 = v4;
    v7 = result;
    minijson::writer::next_field(v7);
    if (a2)
    {
      minijson::writer::write_field_name(v7, a2);
    }

    return minijson::default_value_writer<float,void>::operator()(*a3, &v8, *(v7 + 1));
  }

  return result;
}

void *minijson::default_value_writer<float,void>::operator()(float a1, uint64_t a2, void *a3)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) < 0x7F800000)
  {
    return std::ostream::operator<<();
  }

  else
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "null", 4);
  }
}

minijson::writer *minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(minijson::writer *result, char *a2, unsigned __int8 *a3)
{
  if (*(result + 1) != 2)
  {
    v9 = v3;
    v10 = v4;
    v7 = result;
    minijson::writer::next_field(v7);
    if (a2)
    {
      minijson::writer::write_field_name(v7, a2);
    }

    return minijson::default_value_writer<BOOL,void>::operator()(&v8, *(v7 + 1), *a3);
  }

  return result;
}

void *minijson::default_value_writer<BOOL,void>::operator()(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = "true";
    v5 = 4;
  }

  else
  {
    v4 = "false";
    v5 = 5;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, v5);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

double ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(ANEDebugInfo::DebugInfoInMem *this)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *this = _Q0;
  *(this + 1) = _Q0;
  *(this + 4) = 0xBFF0000000000000;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  result = 0.0;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0x3F80000000000000;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 159) = 0;
  return result;
}

{
  __asm { FMOV            V0.2D, #-1.0 }

  *this = _Q0;
  *(this + 1) = _Q0;
  *(this + 4) = 0xBFF0000000000000;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  result = 0.0;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0x3F80000000000000;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 159) = 0;
  return result;
}

uint64_t ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *a1 = _Q0;
  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0xBFF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0x3F80000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 159) = 0;
  *(a1 + 64) = ANEDebugInfo::DebugInfoInMem::EncodeString(a1, a2);
  *(a1 + 68) = ANEDebugInfo::DebugInfoInMem::EncodeString(a1, a3);
  v12 = *a4;
  *(a1 + 162) = *(a4 + 2);
  *(a1 + 160) = v12;
  return a1;
}

void sub_1C04550B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((v3 + 96));
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ANEDebugInfo::DebugInfoInMem::EncodeString(uint64_t a1, uint64_t a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 96), a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = -1431655765 * ((*(a1 + 144) - *(a1 + 136)) >> 3);
  std::vector<std::string>::push_back[abi:ne200100](a1 + 136, a2);
  v9 = a2;
  *(std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 96), a2, &std::piecewise_construct, &v9, &v8) + 10) = v5;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  *(a1 + 92) += v6 + 1;
  return v5;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void ANEDebugInfo::DebugInfoInMem::GetString(std::string *__return_ptr a1@<X8>, ANEDebugInfo::DebugInfoInMem *this@<X0>, unsigned int a3@<W1>)
{
  v3 = *(this + 17);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 18) - v3) >> 3) <= a3)
  {
    *(&a1->__r_.__value_.__s + 23) = 21;
    strcpy(a1, "STR_TBL_OUT_OF_BOUND!");
  }

  else
  {
    v4 = (v3 + 24 * a3);
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      a1->__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&a1->__r_.__value_.__l.__data_ = v5;
    }
  }
}

uint64_t ANEDebugInfo::DebugInfoInMem::Dump(uint64_t a1, uint64_t *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "CU: ", 4);
  v165 = a1;
  v5 = *(a1 + 136) + 24 * *(a1 + 64);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 136) + 24 * *(a1 + 64);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v171);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Ident string: \n", 15);
  v12 = *(a1 + 136) + 24 * *(a1 + 88);
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = *(a1 + 136) + 24 * *(a1 + 88);
  }

  else
  {
    v14 = *v12;
  }

  if (v13 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v171);
  std::ostream::put();
  std::ostream::flush();
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  Proc: ", 8);
  v19 = *(a1 + 136) + 24 * *(a1 + 68);
  v20 = *(v19 + 23);
  if (v20 >= 0)
  {
    v21 = *(a1 + 136) + 24 * *(a1 + 68);
  }

  else
  {
    v21 = *v19;
  }

  if (v20 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v21, v22);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v171);
  std::ostream::put();
  std::ostream::flush();
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  StringTable: [ # ", 19);
  v26 = MEMORY[0x1C68DA320](v25, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 3));
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "]", 1);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v171);
  std::ostream::put();
  std::ostream::flush();
  v29 = *(a1 + 136);
  v30 = *(v165 + 144);
  if (v29 != v30)
  {
    v31 = MEMORY[0x1E69E5318];
    do
    {
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "     ", 5);
      v33 = *(v29 + 23);
      if (v33 >= 0)
      {
        v34 = v29;
      }

      else
      {
        v34 = *v29;
      }

      if (v33 >= 0)
      {
        v35 = *(v29 + 23);
      }

      else
      {
        v35 = *(v29 + 8);
      }

      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
      std::ios_base::getloc((v36 + *(*v36 - 24)));
      v37 = std::locale::use_facet(&v171, v31);
      (v37->__vftable[2].~facet_0)(v37, 10);
      std::locale::~locale(&v171);
      std::ostream::put();
      std::ostream::flush();
      v29 += 24;
    }

    while (v29 != v30);
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v38 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
  (v38->__vftable[2].~facet_0)(v38, 10);
  std::locale::~locale(&v171);
  std::ostream::put();
  result = std::ostream::flush();
  v40 = v165;
  if (*(v165 + 161))
  {
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  MaxTDLatency: ", 16);
    v42 = MEMORY[0x1C68DA330](v41, *(v165 + 80));
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " us", 3);
    std::ios_base::getloc((v43 + *(*v43 - 24)));
    v44 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
    (v44->__vftable[2].~facet_0)(v44, 10);
    std::locale::~locale(&v171);
    std::ostream::put();
    result = std::ostream::flush();
    v40 = v165;
  }

  if (*(v40 + 160) == 1)
  {
    *(a2 + *(*a2 - 24) + 24) = 20;
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    *(v45 + *(*v45 - 24) + 24) = 30;
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Procedure Latency: ", 19);
    v47 = *v46;
    *(v46 + *(*v46 - 24) + 8) = *(v46 + *(*v46 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v46 + *(v47 - 24) + 24) = 10;
    v48 = MEMORY[0x1C68DA330]();
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " ns", 3);
    std::ios_base::getloc((v49 + *(*v49 - 24)));
    v50 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
    (v50->__vftable[2].~facet_0)(v50, 10);
    std::locale::~locale(&v171);
    std::ostream::put();
    std::ostream::flush();
    *(a2 + *(*a2 - 24) + 24) = 20;
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    *(v51 + *(*v51 - 24) + 24) = 30;
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "NE Domain Frequency: ", 21);
    v53 = *v52;
    *(v52 + *(*v52 - 24) + 8) = *(v52 + *(*v52 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v52 + *(v53 - 24) + 24) = 10;
    v54 = MEMORY[0x1C68DA2F0](*v165 / 1000000000.0);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " GHz", 4);
    std::ios_base::getloc((v55 + *(*v55 - 24)));
    v56 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
    (v56->__vftable[2].~facet_0)(v56, 10);
    std::locale::~locale(&v171);
    std::ostream::put();
    std::ostream::flush();
    *(a2 + *(*a2 - 24) + 24) = 20;
    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    *(v57 + *(*v57 - 24) + 24) = 30;
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "L2 Domain Frequency: ", 21);
    v59 = *v58;
    *(v58 + *(*v58 - 24) + 8) = *(v58 + *(*v58 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v58 + *(v59 - 24) + 24) = 10;
    v60 = MEMORY[0x1C68DA2F0](*(v165 + 8) / 1000000000.0);
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " GHz", 4);
    std::ios_base::getloc((v61 + *(*v61 - 24)));
    v62 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
    (v62->__vftable[2].~facet_0)(v62, 10);
    std::locale::~locale(&v171);
    std::ostream::put();
    std::ostream::flush();
    *(a2 + *(*a2 - 24) + 24) = 20;
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    *(v63 + *(*v63 - 24) + 24) = 30;
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "DRAM Bandwidth: ", 16);
    v65 = *v64;
    *(v64 + *(*v64 - 24) + 8) = *(v64 + *(*v64 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(v64 + *(v65 - 24) + 24) = 10;
    v66 = MEMORY[0x1C68DA2F0](*(v165 + 24) / 1000000000.0);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " GB/s", 5);
    std::ios_base::getloc((v67 + *(*v67 - 24)));
    v68 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
    (v68->__vftable[2].~facet_0)(v68, 10);
    std::locale::~locale(&v171);
    std::ostream::put();
    std::ostream::flush();
    *(a2 + *(*a2 - 24) + 24) = 20;
    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "============== time are in nanoseconds ==============", 53);
    std::ios_base::getloc((v70 + *(*v70 - 24)));
    v71 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
    (v71->__vftable[2].~facet_0)(v71, 10);
    std::locale::~locale(&v171);
    std::ostream::put();
    result = std::ostream::flush();
    v40 = v165;
  }

  v72 = *(v40 + 40);
  v163 = *(v40 + 48);
  if (v72 == v163)
  {
    return result;
  }

  v73 = a2 + 3;
  v166 = a2 + 1;
  do
  {
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Source Layers: {", 16);
    std::ios_base::getloc((v74 + *(*v74 - 24)));
    v75 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
    (v75->__vftable[2].~facet_0)(v75, 10);
    std::locale::~locale(&v171);
    std::ostream::put();
    result = std::ostream::flush();
    v76 = *v72;
    v77 = v72[1];
    while (v76 != v77)
    {
      v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  ", 2);
      v79 = *(v40 + 136) + 24 * *v76;
      v80 = *(v79 + 23);
      if (v80 >= 0)
      {
        v81 = *(v40 + 136) + 24 * *v76;
      }

      else
      {
        v81 = *v79;
      }

      if (v80 >= 0)
      {
        v82 = *(v79 + 23);
      }

      else
      {
        v82 = *(v79 + 8);
      }

      v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, v81, v82);
      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "\t[ x ", 5);
      v85 = *v84;
      *(v84 + *(*v84 - 24) + 8) = *(v84 + *(*v84 - 24) + 8) & 0xFFFFFEFB | 4;
      *(v84 + *(v85 - 24) + 8) = *(v84 + *(v85 - 24) + 8) & 0xFFFFFF4F | 0x20;
      *(v84 + *(v85 - 24) + 24) = 2;
      v86 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, " ]\t", 3);
      v87 = *(v40 + 136) + 24 * v76[1];
      v88 = *(v87 + 23);
      if (v88 < 0)
      {
        if (*(v87 + 8) == 1)
        {
          v87 = *v87;
LABEL_47:
          if (*v87 == 32)
          {
            goto LABEL_55;
          }
        }
      }

      else if (v88 == 1)
      {
        goto LABEL_47;
      }

      v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "OP: ", 4);
      v90 = *(v40 + 136) + 24 * v76[1];
      v91 = *(v90 + 23);
      if (v91 >= 0)
      {
        v92 = *(v40 + 136) + 24 * v76[1];
      }

      else
      {
        v92 = *v90;
      }

      if (v91 >= 0)
      {
        v93 = *(v90 + 23);
      }

      else
      {
        v93 = *(v90 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, v92, v93);
LABEL_55:
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v94 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
      (v94->__vftable[2].~facet_0)(v94, 10);
      std::locale::~locale(&v171);
      std::ostream::put();
      result = std::ostream::flush();
      v76 += 3;
    }

    if (*(v40 + 160))
    {
      *(v73 + *(*a2 - 24)) = 20;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      v95 = *a2;
      *(v166 + *(*a2 - 24)) = *(v166 + *(*a2 - 24)) & 0xFFFFFEFB | 4;
      *(v166 + *(v95 - 24)) = *(v166 + *(v95 - 24)) & 0xFFFFFF4F | 0x80;
      *(v73 + *(v95 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "ne time", 7);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "l2 time", 7);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "dram time", 9);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v73 + *(*a2 - 24)) = 10;
      v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "total time", 10);
      std::ios_base::getloc((v96 + *(*v96 - 24)));
      v97 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
      (v97->__vftable[2].~facet_0)(v97, 10);
      std::locale::~locale(&v171);
      std::ostream::put();
      std::ostream::flush();
      *(v73 + *(*a2 - 24)) = 20;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "---------", 9);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "---------", 9);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "---------", 9);
      *(v73 + *(*a2 - 24)) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      *(v73 + *(*a2 - 24)) = 10;
      v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "---------", 9);
      std::ios_base::getloc((v98 + *(*v98 - 24)));
      v99 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
      (v99->__vftable[2].~facet_0)(v99, 10);
      std::locale::~locale(&v171);
      std::ostream::put();
      result = std::ostream::flush();
    }

    v100 = v72;
    v101 = v72[3];
    v164 = v100;
    v167 = v100[4];
    if (v101 != v167)
    {
      v168 = (v101 + 11);
      do
      {
        v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "  TD: ", 6);
        v103 = *v102;
        *(v102 + *(*v102 - 24) + 8) = *(v102 + *(*v102 - 24) + 8) & 0xFFFFFEFB | 4;
        *(v102 + *(v103 - 24) + 8) = *(v102 + *(v103 - 24) + 8) & 0xFFFFFF4F | 0x80;
        *(v102 + *(v103 - 24) + 24) = 5;
        v104 = MEMORY[0x1C68DA310]();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "\t", 1);
        if (*(v40 + 160) == 1)
        {
          v105 = *(v101 + 1);
          v106 = *(v101 + 2);
          v107 = *(v101 + 3);
          if (v105 <= v106)
          {
            v108 = *(v101 + 2);
          }

          else
          {
            v108 = *(v101 + 1);
          }

          if (v108 <= v107)
          {
            v109 = *(v101 + 3);
          }

          else
          {
            v109 = v108;
          }

          *(v73 + *(*a2 - 24)) = 4;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
          if (v109 == v105)
          {
            v110 = "\x1B[7;31;40m";
          }

          else
          {
            v110 = &unk_1C0472CA1;
          }

          if (v109 == v105)
          {
            v111 = 10;
          }

          else
          {
            v111 = 0;
          }

          v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v110, v111);
          v113 = *v112;
          *(v112 + *(*v112 - 24) + 8) = *(v112 + *(*v112 - 24) + 8) & 0xFFFFFEFB | 4;
          *(v112 + *(v113 - 24) + 8) = *(v112 + *(v113 - 24) + 8) & 0xFFFFFF4F | 0x80;
          *(v112 + *(v113 - 24) + 24) = 10;
          v114 = MEMORY[0x1C68DA330]();
          v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, "\x1B[0m", 4);
          *(v115 + *(*v115 - 24) + 24) = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, " ", 1);
          if (v109 == v106)
          {
            v116 = "\x1B[7;31;40m";
          }

          else
          {
            v116 = &unk_1C0472CA1;
          }

          if (v109 == v106)
          {
            v117 = 10;
          }

          else
          {
            v117 = 0;
          }

          v118 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v116, v117);
          v119 = *v118;
          *(v118 + *(*v118 - 24) + 8) = *(v118 + *(*v118 - 24) + 8) & 0xFFFFFEFB | 4;
          *(v118 + *(v119 - 24) + 8) = *(v118 + *(v119 - 24) + 8) & 0xFFFFFF4F | 0x80;
          *(v118 + *(v119 - 24) + 24) = 10;
          v120 = MEMORY[0x1C68DA330]();
          v121 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, "\x1B[0m", 4);
          *(v121 + *(*v121 - 24) + 24) = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, " ", 1);
          if (v107 >= v108)
          {
            v122 = "\x1B[7;31;40m";
          }

          else
          {
            v122 = &unk_1C0472CA1;
          }

          if (v107 >= v108)
          {
            v123 = 10;
          }

          else
          {
            v123 = 0;
          }

          v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v122, v123);
          v125 = *v124;
          *(v124 + *(*v124 - 24) + 8) = *(v124 + *(*v124 - 24) + 8) & 0xFFFFFEFB | 4;
          *(v124 + *(v125 - 24) + 8) = *(v124 + *(v125 - 24) + 8) & 0xFFFFFF4F | 0x80;
          *(v124 + *(v125 - 24) + 24) = 10;
          v126 = MEMORY[0x1C68DA330]();
          v73 = a2 + 3;
          v127 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, "\x1B[0m", 4);
          *(v127 + *(*v127 - 24) + 24) = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, " ", 1);
          v128 = *a2;
          *(v166 + *(*a2 - 24)) = *(v166 + *(*a2 - 24)) & 0xFFFFFEFB | 4;
          *(v166 + *(v128 - 24)) = *(v166 + *(v128 - 24)) & 0xFFFFFF4F | 0x80;
          *(a2 + *(v128 - 24) + 24) = 10;
          v40 = v165;
          MEMORY[0x1C68DA330](a2, *(v101 + 4));
        }

        if (*(v40 + 162) == 1)
        {
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v129 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
          (v129->__vftable[2].~facet_0)(v129, 10);
          std::locale::~locale(&v171);
          std::ostream::put();
          std::ostream::flush();
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v130 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
          (v130->__vftable[2].~facet_0)(v130, 10);
          std::locale::~locale(&v171);
          std::ostream::put();
          std::ostream::flush();
          v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Perf tracer Info: {", 19);
          std::ios_base::getloc((v131 + *(*v131 - 24)));
          v132 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
          (v132->__vftable[2].~facet_0)(v132, 10);
          std::locale::~locale(&v171);
          std::ostream::put();
          std::ostream::flush();
          v133 = 0;
          v134 = v168;
          while (1)
          {
            ZinIrCompilerParamsUtils::PerfTracerCategoryToString(*(v134 - 1), &v171);
            ZinIrCompilerParamsUtils::PerfTracerMetricToString(*v134, &__p);
            if (v172 != 1)
            {
              break;
            }

            if ((v170 & 1) == 0)
            {
              goto LABEL_115;
            }

            v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Counter", 7);
            v136 = MEMORY[0x1C68DA320](v135, v133);
            v137 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, ":", 1);
            std::ios_base::getloc((v137 + *(*v137 - 24)));
            v138 = std::locale::use_facet(&v173, MEMORY[0x1E69E5318]);
            (v138->__vftable[2].~facet_0)(v138, 10);
            std::locale::~locale(&v173);
            std::ostream::put();
            std::ostream::flush();
            *(v73 + *(*a2 - 24)) = 10;
            v139 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
            v140 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v139, "Category: ", 10);
            if ((v172 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v141 = &v171;
            }

            else
            {
              v141 = v171.__r_.__value_.__r.__words[0];
            }

            if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v171.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v171.__r_.__value_.__l.__size_;
            }

            v143 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v140, v141, size);
            v144 = *v143;
            *(v143 + *(*v143 - 24) + 8) = *(v143 + *(*v143 - 24) + 8) & 0xFFFFFF4F | 0x80;
            std::ios_base::getloc((v143 + *(v144 - 24)));
            v145 = std::locale::use_facet(&v173, MEMORY[0x1E69E5318]);
            (v145->__vftable[2].~facet_0)(v145, 10);
            std::locale::~locale(&v173);
            std::ostream::put();
            std::ostream::flush();
            *(v73 + *(*a2 - 24)) = 10;
            v146 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
            v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v146, "Metric: ", 8);
            if ((v170 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v149 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v149 = __p.__r_.__value_.__l.__size_;
            }

            v150 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v147, p_p, v149);
            v151 = *v150;
            *(v150 + *(*v150 - 24) + 8) = *(v150 + *(*v150 - 24) + 8) & 0xFFFFFF4F | 0x80;
            std::ios_base::getloc((v150 + *(v151 - 24)));
            v152 = std::locale::use_facet(&v173, MEMORY[0x1E69E5318]);
            (v152->__vftable[2].~facet_0)(v152, 10);
            std::locale::~locale(&v173);
            std::ostream::put();
            std::ostream::flush();
            if (v170 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v172 == 1 && SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v171.__r_.__value_.__l.__data_);
            }

            v134 += 2;
            if (++v133 == 4)
            {
              v153 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "}", 1);
              std::ios_base::getloc((v153 + *(*v153 - 24)));
              v154 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
              (v154->__vftable[2].~facet_0)(v154, 10);
              std::locale::~locale(&v171);
              std::ostream::put();
              std::ostream::flush();
              goto LABEL_117;
            }
          }

          if ((v170 & 1) == 0)
          {
            goto LABEL_117;
          }

          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_117;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
          if ((v172 & 1) == 0)
          {
            goto LABEL_117;
          }

LABEL_115:
          if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v171.__r_.__value_.__l.__data_);
          }
        }

LABEL_117:
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v155 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
        (v155->__vftable[2].~facet_0)(v155, 10);
        std::locale::~locale(&v171);
        std::ostream::put();
        result = std::ostream::flush();
        if (*(v40 + 161) == 1)
        {
          v156 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "    Violates Max Latency: ", 26);
          v157 = *v156;
          *(v156 + *(*v156 - 24) + 8) = *(v156 + *(*v156 - 24) + 8) & 0xFFFFFEFB | 4;
          *(v156 + *(v157 - 24) + 8) = *(v156 + *(v157 - 24) + 8) & 0xFFFFFF4F | 0x80;
          *(v156 + *(v157 - 24) + 24) = 5;
          if (*(v101 + 4))
          {
            v158 = "true";
          }

          else
          {
            v158 = "false";
          }

          if (*(v101 + 4))
          {
            v159 = 4;
          }

          else
          {
            v159 = 5;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v156, v158, v159);
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v160 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
          (v160->__vftable[2].~facet_0)(v160, 10);
          std::locale::~locale(&v171);
          std::ostream::put();
          result = std::ostream::flush();
        }

        v101 += 18;
        v168 += 18;
      }

      while (v101 != v167);
    }

    if (*(v40 + 160))
    {
      v161 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "}", 1);
      std::ios_base::getloc((v161 + *(*v161 - 24)));
      v162 = std::locale::use_facet(&v171, MEMORY[0x1E69E5318]);
      (v162->__vftable[2].~facet_0)(v162, 10);
      std::locale::~locale(&v171);
      std::ostream::put();
      result = std::ostream::flush();
    }

    v72 = v164 + 6;
  }

  while (v164 + 6 != v163);
  return result;
}