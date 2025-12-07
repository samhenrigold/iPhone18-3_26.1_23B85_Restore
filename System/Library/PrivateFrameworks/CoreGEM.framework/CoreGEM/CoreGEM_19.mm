void sub_24546B07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24546B0B4(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v4 = (v2 + 32);
    sub_245467100(&v4);
    v4 = (v2 + 8);
    sub_245467100(&v4);
    result = MEMORY[0x245D6A0D0](v2, 0x1020C401E2BB44DLL);
  }

  *v1 = 0;
  v3 = v1[2];
  if (v3)
  {
    v4 = (v3 + 32);
    sub_245467100(&v4);
    v4 = (v3 + 8);
    sub_245467100(&v4);
    result = MEMORY[0x245D6A0D0](v3, 0x1020C401E2BB44DLL);
  }

  v1[2] = 0;
  *(v1 + 8) = 0;
  return result;
}

void sub_24546B168(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF018;
  if (a4)
  {
    v6 = a3;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosResponse, update state to Supl_Pos_Recd", v14, 2u);
    }

    v8 = sub_245471CCC(a4);
    sub_245473DF8(v8, 5, a4);
    v9 = sub_245471CCC(a4);
    v10 = v9;
    v11 = *a2;
    v12 = a2[1];
    if (*a2 != v12)
    {
      *(v9[5] + 8) = 3;
      v13 = (v9[5] + 64);
      if (v13 != a2)
      {
        sub_2453ADF3C(v13, v11, v12, v12 - v11);
      }
    }

    sub_24546DB20(v10, v6);
  }

  else
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosResponse, session NULL", v14, 2u);
      v4 = qword_2813CF018;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v14, 8u);
    }
  }
}

uint64_t sub_24546B308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v34 = *MEMORY[0x277D85DE8];
  v5 = *(sub_24546E30C() + 24);
  if (v5)
  {
    while (*v5 != a2)
    {
      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    buf[0] = 0;
    v21 = 0;
    v22 = -1;
    v23 = 0;
    *v25 = 0;
    v24 = 0;
    *(&v25[1] + 1) = 0;
    *&v25[5] = 0;
    v25[7] = 0;
    v26 = -1;
    v27 = 0;
    v28 = 0;
    v29 = -1;
    v30 = 0;
    v31 = 0;
    v32[0] = 0;
    *(v32 + 6) = 0;
    memset(&v32[2], 0, 24);
    v33 = 1;
    v8 = *(sub_245479234() + 16);
    if (v8)
    {
      while (*v8 != *(v5 + 588))
      {
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      sub_245464DF4(buf, (v8 + 56));
    }

LABEL_14:
    v10 = *(v5 + 512);
    v11 = *(v5 + 520);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_2453AE4E0(&v12, *(v5 + 528), *(v5 + 536), *(v5 + 536) - *(v5 + 528));
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_2453AE4E0(&__p, *(v5 + 552), *(v5 + 560), *(v5 + 560) - *(v5 + 552));
    v18 = *(v5 + 576);
    sub_24547A094(a2, v3, &v10);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    sub_245464AB8(buf);
    return 0;
  }

  else
  {
LABEL_4:
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::ProcessLppAdReq, session NULL", buf, 2u);
      v6 = qword_2813CF018;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = 513;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    }

    return -1;
  }
}

void sub_24546B558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_24546BA2C(&a10);
  sub_245464AB8(va);
  _Unwind_Resume(a1);
}

void sub_24546B598(void *a1, uint64_t a2)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v4 = sub_24546E30C();
  v5 = *(a2 + 28);
  v6 = *(v4 + 24);
  if (!v6)
  {
LABEL_4:
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v25[0]) = 67109120;
      HIDWORD(v25[0]) = v5;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::HandleLppPosResponseFromStack, session not found %d", v25, 8u);
      v7 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v25[0] = 0x20104000100;
LABEL_8:
    _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v25, 8u);
    return;
  }

  while (*v6 != v5)
  {
    v6 = *(v6 + 8);
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  v8 = v6 - 8;
  *(v6 + 416) = *(a2 + 32);
  v9 = *(a2 + 24);
  if (*(a2 + 24))
  {
    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v25[0]) = 67109120;
      HIDWORD(v25[0]) = v9;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::HandleLppPosResponseFromStack, lppstatus %d", v25, 8u);
      v10 = qword_2813CF018;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25[0] = 0x20304000100;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v25, 8u);
    }

    v11 = sub_245471CCC(v8);
    sub_245473DF8(v11, 5, v8);
    v12 = sub_245471CCC(v8);
    sub_24546DFC0(v12, a1[2]);
    sub_24546DB20(v12, 1);
    sub_24546B0B4(a1);
    return;
  }

  v13 = *(a2 + 8);
  if (*a2 == v13)
  {
    return;
  }

  sub_245444EFC(*a2, v13 - *a2);
  v14 = a1[2];
  if (v14)
  {
    goto LABEL_20;
  }

  v15 = operator new(0x38uLL, MEMORY[0x277D826F0]);
  if (v15)
  {
    v14 = v15;
    v15[6] = 0;
    *(v15 + 1) = 0u;
    *(v15 + 2) = 0u;
    *v15 = 0u;
    a1[2] = v15;
LABEL_20:
    *v14 = 1;
    v16 = v14[1];
    v17 = v14[2];
    if (v17 == v16)
    {
      if (v14[3] == v17)
      {
        v25[4] = v14 + 1;
        operator new();
      }

      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      v14[2] = v17 + 3;
    }

    else if (0xAAAAAAAAAAAAAAABLL * (v17 - v16) >= 2)
    {
      v18 = v16 + 3;
      if (v17 != v16 + 3)
      {
        v19 = v14[2];
        do
        {
          v21 = *(v19 - 3);
          v19 -= 3;
          v20 = v21;
          if (v21)
          {
            *(v17 - 2) = v20;
            operator delete(v20);
          }

          v17 = v19;
        }

        while (v19 != v18);
      }

      v14[2] = v18;
    }

    v22 = *(a1[2] + 8);
    if (v22 != a2)
    {
      sub_2453ADF3C(v22, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    }

    v23 = sub_245471CCC(v8);
    sub_245473DF8(v23, 5, v8);
    v24 = sub_245471CCC(v8);
    sub_24546DFC0(v24, a1[2]);
    sub_24546DB20(v24, 0);

    sub_24546B0B4(a1);
    return;
  }

  a1[2] = 0;
  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25[0]) = 0;
    _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::HandleLppPosResponseFromStack, rsp params mem allocation failure", v25, 2u);
    v7 = qword_2813CF018;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v25[0] = 0x60104000100;
    goto LABEL_8;
  }
}

void *sub_24546BA2C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_24546BA70(unsigned __int16 *a1, _DWORD *a2)
{
  __p[41] = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "gps_set_gps_time");
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    *buf = 136315138;
    v41 = v36;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  for (i = 0; i != 64; i += 4)
  {
    v6 = &__src[i];
    *(v6 + 4) = -1;
    *(v6 + 10) = -1;
    *(v6 + 3) = -1;
    *(v6 + 20) = -1;
  }

  v7 = *(a1 + 1);
  __src[0] = v7;
  v8 = *a1;
  LOWORD(__src[1]) = *a1;
  LOBYTE(__src[66]) = *(a1 + 2);
  __src[67] = 1;
  __src[68] = 2 * (*a2 != 0);
  v38 = a2;
  __src[69] = a2[2];
  v9 = *(a1 + 8);
  BYTE2(__src[1]) = *(a1 + 8);
  HIBYTE(__src[1]) = *(a1 + 72);
  v10 = HIBYTE(__src[1]);
  if (HIBYTE(__src[1]))
  {
    v11 = 0;
    v12 = 16 * HIBYTE(__src[1]);
    v13 = a1 + 40;
    do
    {
      v14 = &__src[v11 / 4];
      *(v14 + 10) = *(v13 - 6);
      v15 = *(v13 - 1);
      v14[3] = *(v13 - 2);
      v14[4] = v15;
      *(v14 + 20) = *v13;
      *(v14 + 4) = *(v13 - 2);
      v11 += 16;
      v13 += 4;
    }

    while (v12 != v11);
  }

  v16 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    __p[0] = __PAIR64__(v7, 67109888);
    LOWORD(__p[1]) = 1024;
    *(&__p[1] + 2) = v9;
    HIWORD(__p[1]) = 1024;
    LODWORD(__p[2]) = v8;
    WORD2(__p[2]) = 1024;
    *(&__p[2] + 6) = v10;
    _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp gpsTow,%u,GpsTowUncK,%u,GpsWeek,%u,,NumTowAssist,%u", __p, 0x1Au);
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else if (!v10)
  {
    goto LABEL_15;
  }

  v17 = 0;
  v18 = qword_2813CF018;
  v19 = &__src[2] + 2;
  do
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *v19;
      v21 = *(v19 + 2);
      v22 = *(v19 + 6);
      v23 = v19[10];
      v24 = *(v19 - 1);
      LODWORD(__p[0]) = 134219264;
      *(__p + 4) = v17;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v20;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = v21;
      LOWORD(__p[3]) = 1024;
      *(&__p[3] + 2) = v22;
      HIWORD(__p[3]) = 1024;
      LODWORD(__p[4]) = v23;
      WORD2(__p[4]) = 1024;
      *(&__p[4] + 6) = v24;
      _os_log_impl(&dword_245396000, v18, OS_LOG_TYPE_DEFAULT, "Index,%zu,Satid,%u,antiSpoof,%u,Alert,%u,tlmRes,%u,tlmWord,%u", __p, 0x2Au);
      v18 = qword_2813CF018;
    }

    ++v17;
    v19 += 16;
  }

  while (v10 != v17);
LABEL_15:
  v25 = *(a1 + 26);
  if (v25)
  {
    MEMORY[0x245D6A0A0](v25, 0x1000C80737C248BLL);
  }

  *(a1 + 26) = 0;
  v26 = *(v38 + 4);
  v27 = qword_2813CF018;
  v28 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v28)
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_245396000, v27, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp calling injectRefTime", __p, 2u);
    }

    v29 = sub_24547C334();
    memcpy(v29 + 18, __src, 0x118uLL);
    v30 = v29[12];
    __p[0] = MEMORY[0x277D85DD0];
    __p[1] = 3221225472;
    __p[2] = sub_245480708;
    __p[3] = &unk_278E80250;
    __p[4] = v29;
    memcpy(&__p[5], __src, 0x118uLL);
    dispatch_async(v30, __p);
  }

  else
  {
    if (v28)
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_245396000, v27, OS_LOG_TYPE_DEFAULT, "#gpsd,#cplane,#posp calling injectRefTime", __p, 2u);
    }

    v31 = sub_2453B4548();
    memcpy(__p, __src, 0x118uLL);
    v32 = *(v31 + 160);
    if (!v32)
    {
      sub_2453A5EE4();
    }

    (*(*v32 + 48))(v32, __p);
  }

  v33 = v38[2];
  v34 = sub_24547C334();
  __p[1] = 0;
  __p[3] = 0;
  LODWORD(__p[0]) = v33;
  LOBYTE(__p[4]) = -1;
  __p[2] = 35;
  sub_24547D2BC(v34, __p);
  sub_2453B414C(__p, "gps_set_gps_time");
  v35 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    *buf = 136315138;
    v41 = v37;
    _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24546BF74(unsigned __int8 *a1, uint64_t a2)
{
  __p[199] = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "gps_set_based_aid");
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v71 = __p;
    }

    else
    {
      v71 = __p[0];
    }

    __src[0] = 136315138;
    *&__src[1] = v71;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", __src, 0xCu);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 0;
  LOBYTE(__src[0]) = -1;
  *&v6 = 0x8000000080000000;
  *(&v6 + 1) = 0x8000000080000000;
  do
  {
    v7 = &__src[v5];
    *(v7 + 1) = xmmword_245486E10;
    *(v7 + 5) = v6;
    *(v7 + 9) = xmmword_245486E20;
    *(v7 + 13) = 0x8000800080008000;
    v7[15] = 0x80000000;
    *(v7 + 32) = -1;
    v7[17] = -1;
    *(v7 + 72) = 127;
    v7[19] = -1;
    v5 += 24;
    *(v7 + 80) = -1;
  }

  while (v5 != 384);
  *&__src[385] = -1;
  __src[387] = -1;
  if (*a1)
  {
    v73 = a2;
    v8 = 0;
    v9 = 0;
    LOBYTE(__src[0]) = *a1;
    v10 = 96;
    do
    {
      v11 = a1;
      v12 = *(a1 + 1);
      v13 = v12 + v10;
      v14 = &__src[v8];
      *(v14 + 64) = *(v12 + v10 - 94);
      *(v14 + 60) = *(v12 + v10 - 96);
      *(v14 + 65) = *(v12 + v10 - 92);
      *(v14 + 61) = *(v12 + v10 - 91);
      v15 = *(v12 + v10 - 90);
      if (v15 >= 0x3F)
      {
        LOBYTE(v15) = 63;
      }

      *(v14 + 62) = v15;
      v14[17] = *(v13 - 86);
      *(v14 + 18) = *(v13 - 88);
      *(v14 + 19) = *(v13 - 66);
      *(v14 + 21) = *(v13 - 84);
      v16 = *(v13 - 68);
      *(v14 + 72) = *(v13 - 68);
      v17 = *(v13 - 64);
      *(v14 + 63) = v17;
      if (v16 >= 128)
      {
        v18 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v16;
          _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp ephem_tgd,%d", __p, 8u);
          v12 = *(v11 + 1);
          v17 = *(v12 + v10 - 64);
        }
      }

      if (v17 > 127)
      {
        v19 = &qword_2813CF000;
        v20 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v17;
          _os_log_error_impl(&dword_245396000, v20, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp ephem_af2,%d", __p, 8u);
          v12 = *(v11 + 1);
        }
      }

      else
      {
        *(v14 + 63) = v17;
        v19 = &qword_2813CF000;
      }

      v21 = (v12 + v10);
      v22 = *(v12 + v10 - 62);
      v23 = &__src[v8];
      *(v23 + 20) = v22;
      v14[1] = *(v21 - 15);
      *(v23 + 42) = *(v21 - 14);
      v23[2] = *(v21 - 13);
      *(v23 + 23) = *(v21 - 24);
      *(v23 + 24) = *(v21 - 20);
      v23[3] = *(v21 - 11);
      v23[4] = *(v21 - 9);
      *(v23 + 25) = *(v21 - 16);
      v23[19] = *(v21 - 30);
      *(v23 + 80) = *(v21 - 29);
      *(v23 + 26) = *(v21 - 14);
      *(v23 + 27) = *(v21 - 10);
      v23[5] = *(v21 - 6);
      v23[6] = *(v21 - 4);
      *(v23 + 29) = *v21;
      *(v23 + 28) = *(v21 - 6);
      *(v23 + 7) = *(v21 - 1);
      v24 = v19[3];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_debug_impl(&dword_245396000, v24, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp NavModel", __p, 2u);
        v24 = v19[3];
      }

      a1 = v11;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v14 + 65);
        v26 = *(v14 + 61);
        v27 = *(v14 + 62);
        v28 = v14[17];
        v29 = *(v14 + 18);
        v30 = *(v14 + 19);
        v31 = v14[21];
        v32 = v14[22];
        LODWORD(__p[0]) = 67111168;
        HIDWORD(__p[0]) = v9;
        LOWORD(__p[1]) = 1024;
        *(&__p[1] + 2) = v25;
        HIWORD(__p[1]) = 1024;
        LODWORD(__p[2]) = v26;
        WORD2(__p[2]) = 1024;
        *(&__p[2] + 6) = v27;
        WORD1(__p[3]) = 1024;
        HIDWORD(__p[3]) = v28;
        LOWORD(__p[4]) = 1024;
        *(&__p[4] + 2) = v29;
        HIWORD(__p[4]) = 1024;
        LODWORD(__p[5]) = v30;
        WORD2(__p[5]) = 1024;
        *(&__p[5] + 6) = v31;
        WORD1(__p[6]) = 1024;
        HIDWORD(__p[6]) = v32;
        _os_log_impl(&dword_245396000, v24, OS_LOG_TYPE_DEFAULT, "SatId,%u,EphemCodeOnL2,%u,EphemURA,%u,EphemSvHealth,%u,Epheml2pFlag,%u,EphemIodc,%u,EphemToc,%u,Reserved1,%u,Reserved2,%u", __p, 0x38u);
        v24 = v19[3];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v14[23];
        v34 = v14[24];
        v35 = *(v14 + 72);
        v36 = *(v14 + 63);
        v37 = *(v23 + 20);
        v38 = v14[1];
        v39 = *(v23 + 21);
        v40 = *(v23 + 22);
        v41 = v23[2];
        v42 = *(v23 + 23);
        LODWORD(__p[0]) = 67111424;
        HIDWORD(__p[0]) = v33;
        LOWORD(__p[1]) = 1024;
        *(&__p[1] + 2) = v34;
        HIWORD(__p[1]) = 1024;
        LODWORD(__p[2]) = v35;
        WORD2(__p[2]) = 1024;
        *(&__p[2] + 6) = v36;
        WORD1(__p[3]) = 1024;
        HIDWORD(__p[3]) = v37;
        LOWORD(__p[4]) = 1024;
        *(&__p[4] + 2) = v38;
        HIWORD(__p[4]) = 1024;
        LODWORD(__p[5]) = v39;
        WORD2(__p[5]) = 1024;
        *(&__p[5] + 6) = v40;
        WORD1(__p[6]) = 1024;
        HIDWORD(__p[6]) = v41;
        LOWORD(__p[7]) = 1024;
        *(&__p[7] + 2) = v42;
        _os_log_impl(&dword_245396000, v24, OS_LOG_TYPE_DEFAULT, "Reserved3,%u,Reserved4,%u,EphemTgd,%d,EphemAf2,%d,EphemAf1,%d,EphemAf0,%d,EphemCrs,%d,EphemDeltaN,%d,EphemMo,%d,EphemCuc,%d", __p, 0x3Eu);
        v24 = v19[3];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(v23 + 24);
        v44 = v23[3];
        v45 = v23[4];
        v46 = *(v23 + 25);
        v47 = v23[19];
        v48 = *(v23 + 80);
        v49 = *(v23 + 26);
        v50 = *(v23 + 27);
        v51 = v23[5];
        v52 = v23[6];
        v53 = *(v23 + 29);
        v54 = *(v23 + 28);
        v55 = v23[7];
        v56 = v23[8];
        LODWORD(__p[0]) = 67112448;
        HIDWORD(__p[0]) = v43;
        LOWORD(__p[1]) = 1024;
        *(&__p[1] + 2) = v44;
        HIWORD(__p[1]) = 1024;
        LODWORD(__p[2]) = v45;
        WORD2(__p[2]) = 1024;
        *(&__p[2] + 6) = v46;
        WORD1(__p[3]) = 1024;
        HIDWORD(__p[3]) = v47;
        LOWORD(__p[4]) = 1024;
        *(&__p[4] + 2) = v48;
        HIWORD(__p[4]) = 1024;
        LODWORD(__p[5]) = v49;
        WORD2(__p[5]) = 1024;
        *(&__p[5] + 6) = v50;
        WORD1(__p[6]) = 1024;
        HIDWORD(__p[6]) = v51;
        LOWORD(__p[7]) = 1024;
        *(&__p[7] + 2) = v52;
        HIWORD(__p[7]) = 1024;
        LODWORD(__p[8]) = v53;
        WORD2(__p[8]) = 1024;
        *(&__p[8] + 6) = v54;
        WORD1(__p[9]) = 1024;
        HIDWORD(__p[9]) = v55;
        LOWORD(__p[10]) = 1024;
        *(&__p[10] + 2) = v56;
        _os_log_impl(&dword_245396000, v24, OS_LOG_TYPE_DEFAULT, "EphemCus,%d,Epheme,%u,EphemAPowerhalf,%u,EphemToe,%u,EphemFitFlag,%u,EphemAODO,%u,EphemCic,%d,EphemCis,%d,EphemOmegaA0,%d,EphemIo,%d,EphemIdot,%d,EphemCrc,%d,EphemW,%d,EphemOmegaAdot,%d", __p, 0x56u);
      }

      ++v9;
      v10 += 100;
      v8 += 24;
    }

    while (v9 < *v11);
    __src[385] = 1;
    __src[386] = 2 * (*v73 != 0);
    __src[387] = *(v73 + 8);
    v57 = *(v73 + 4);
    v58 = qword_2813CF018;
    v59 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT);
    if (v57)
    {
      if (v59)
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_245396000, v58, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp calling injectNavModel", __p, 2u);
      }

      v60 = sub_24547C334();
      v61 = v60[12];
      __p[0] = MEMORY[0x277D85DD0];
      __p[1] = 3221225472;
      __p[2] = sub_2454806BC;
      __p[3] = &unk_278E80230;
      __p[4] = v60;
      memcpy(&__p[5], __src, 0x610uLL);
      dispatch_async(v61, __p);
    }

    else
    {
      if (v59)
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_245396000, v58, OS_LOG_TYPE_DEFAULT, "#gpsd,#cplane,#posp calling injectNavModel", __p, 2u);
      }

      v66 = sub_2453B4548();
      memcpy(__p, __src, 0x610uLL);
      v67 = *(v66 + 128);
      if (!v67)
      {
        sub_2453A5EE4();
      }

      (*(*v67 + 48))(v67, __p);
    }

    v68 = *(v73 + 8);
    v69 = sub_24547C334();
    __p[1] = 0;
    __p[3] = 0;
    LODWORD(__p[0]) = v68;
    LOBYTE(__p[4]) = -1;
    __p[2] = 37;
    sub_24547D2BC(v69, __p);
    v70 = *(v11 + 1);
    if (v70)
    {
      MEMORY[0x245D6A0A0](v70, 0x1000C80A2FAA732);
    }

    *(v11 + 1) = 0;
    sub_2453B414C(__p, "gps_set_based_aid");
    v64 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_46;
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v72 = __p;
    }

    else
    {
      v72 = __p[0];
    }

    *buf = 136315138;
    v75 = v72;
LABEL_57:
    _os_log_debug_impl(&dword_245396000, v64, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
    goto LABEL_46;
  }

  v62 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_245396000, v62, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp Zero Satellites", __p, 2u);
  }

  v63 = *(a1 + 1);
  if (v63)
  {
    MEMORY[0x245D6A0A0](v63, 0x1000C80A2FAA732);
  }

  *(a1 + 1) = 0;
  sub_2453B414C(__p, "gps_set_based_aid");
  v64 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v65 = __p;
    }

    else
    {
      v65 = __p[0];
    }

    *buf = 136315138;
    v75 = v65;
    goto LABEL_57;
  }

LABEL_46:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24546C8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = *MEMORY[0x277D85DE8];
  sub_2453B414C(&__p, "gps_set_gnss_ref_loc");
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE7(v47) & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315138;
    v44 = p_p;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (SBYTE7(v47) < 0)
  {
    operator delete(__p);
  }

  v5 = *(a1 + 10);
  if (v5 == 9)
  {
    v6 = *(a1 + 16);
    v41 = *(a1 + 20);
    v7 = *(a1 + 12);
    v8 = *(a1 + 28);
    if (HIWORD(v8))
    {
      v13 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = v8;
        _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp altitude,%u", &__p, 8u);
        v8 = *(a1 + 28);
      }

      LOWORD(v9) = -1;
    }

    else
    {
      v9 = *(a1 + 28);
    }

    v40 = v9;
    v39 = *&v6 & 0x7FFFFFLL;
    if (*(a1 + 24) <= 0x45u)
    {
      v14 = 69;
    }

    else
    {
      v14 = *(a1 + 24);
    }

    if (*(a1 + 25) <= 0x45u)
    {
      v15 = 69;
    }

    else
    {
      v15 = *(a1 + 25);
    }

    v16 = *(a1 + 26);
    v17 = *(a1 + 32);
    v18 = *(a1 + 33);
    v19 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_245396000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp Shape Type is Ellipsoid Point Uncertain Altitude", &__p, 2u);
      v19 = qword_2813CF018;
    }

    v20 = (v8 >> 15) & 1;
    v38 = v15;
    v21 = v7;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      __p = 0x904010B01;
      LOWORD(v46) = 1025;
      *(&v46 + 2) = v7 != 0;
      HIWORD(v46) = 1029;
      LODWORD(v47) = v39;
      WORD2(v47) = 1029;
      *(&v47 + 6) = v41;
      WORD5(v47) = 1029;
      HIDWORD(v47) = v40;
      LOWORD(v48) = 1025;
      v22 = v14;
      *(&v48 + 2) = v14;
      HIWORD(v48) = 1025;
      *v49 = v15;
      *&v49[4] = 1025;
      v23 = v16;
      *&v49[6] = v16;
      *&v49[10] = 1025;
      v50 = v20;
      v51 = 1025;
      v24 = v17;
      *v52 = v17;
      *&v52[4] = 1025;
      v25 = v18;
      v53 = v18;
      _os_log_impl(&dword_245396000, v19, OS_LOG_TYPE_DEFAULT, "v_ShapeType,%{private}u,v_SignOfLat,%{private}u,v_Latitude,%{sensitive}u,v_Longitude,%{sensitive}u,v_Altitude,%{sensitive}u,v_UncertSemiMajor,%{private}u,v_UncertSemiMinor,%{private}u,v_AxisBearing,%{private}u,v_DirectOfAlt,%{private}u,v_UncertAltitude,%{private}u,v_Confidence,%{private}u", &__p, 0x44u);
      v19 = qword_2813CF018;
    }

    else
    {
      v22 = v14;
      v23 = v16;
      v24 = v17;
      v25 = v18;
    }

    v26 = 2 * (*a3 != 0);
    v27 = *(a3 + 8);
    v28 = *(a3 + 4);
    v29 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (v29)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp calling injectRefLocation", &__p, 2u);
      }

      v30 = sub_24547C334();
      *(v30 + 112) = (v39 << 32) | (v40 << 16) | ((v21 != 0) << 8) | 9;
      *(v30 + 120) = v41;
      *(v30 + 124) = v20;
      *(v30 + 125) = v22;
      *(v30 + 126) = v38;
      *(v30 + 127) = v23;
      *(v30 + 128) = v24;
      *(v30 + 129) = v25;
      *(v30 + 132) = 1;
      *(v30 + 136) = v26;
      *(v30 + 140) = v27;
      v31 = *(v30 + 96);
      __p = MEMORY[0x277D85DD0];
      v46 = 3221225472;
      *&v47 = sub_245480754;
      *(&v47 + 1) = &unk_278E80270;
      v48 = v30;
      *v49 = (v39 << 32) | (v40 << 16) | ((v21 != 0) << 8) | 9;
      *&v49[8] = v41;
      LOBYTE(v50) = v20;
      BYTE1(v50) = v22;
      BYTE2(v50) = v38;
      HIBYTE(v50) = v23;
      LOBYTE(v51) = v24;
      HIBYTE(v51) = v25;
      *&v52[2] = 1;
      v53 = v26;
      v54 = v27;
      dispatch_async(v31, &__p);
    }

    else
    {
      if (v29)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,#cplane,#posp calling injectRefLocation", &__p, 2u);
      }

      v32 = sub_2453B4548();
      __p = ((v39 << 32) | (v40 << 16) | ((v21 != 0) << 8) | 9);
      LODWORD(v46) = v41;
      BYTE4(v46) = v20;
      BYTE5(v46) = v22;
      BYTE6(v46) = v38;
      HIBYTE(v46) = v23;
      LOBYTE(v47) = v24;
      BYTE1(v47) = v25;
      DWORD1(v47) = 1;
      *(&v47 + 1) = __PAIR64__(v27, v26);
      v33 = *(v32 + 192);
      if (!v33)
      {
        sub_2453A5EE4();
      }

      (*(*v33 + 48))(v33, &__p);
    }

    v34 = *(a3 + 8);
    v35 = sub_24547C334();
    v46 = 0;
    LODWORD(__p) = v34;
    LOBYTE(v48) = -1;
    v47 = 0x24uLL;
    sub_24547D2BC(v35, &__p);
    sub_2453B414C(&__p, "gps_set_gnss_ref_loc");
    v11 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_37;
    }

    if ((SBYTE7(v47) & 0x80u) == 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p;
    }

    *buf = 136315138;
    v44 = v37;
LABEL_48:
    _os_log_debug_impl(&dword_245396000, v11, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
    goto LABEL_37;
  }

  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = v5;
    _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp Shape,%u", &__p, 8u);
  }

  sub_2453B414C(&__p, "gps_set_gnss_ref_loc");
  v11 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE7(v47) & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    *buf = 136315138;
    v44 = v12;
    goto LABEL_48;
  }

LABEL_37:
  if (SBYTE7(v47) < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_24546CEC8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "gps_gnss_start_based_mode");
  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315138;
    v13 = v8;
    _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24546D048(a2, a3, 4);
  sub_2453B414C(__p, "gps_gnss_start_based_mode");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315138;
    v13 = v9;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return 4;
}

void sub_24546D048(unsigned __int16 *a1, uint64_t a2, int a3)
{
  v64 = *MEMORY[0x277D85DE8];
  sub_2453B414C(&__p, "sendPositionReq");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v48[7] >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315138;
    v45 = p_p;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if ((v48[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  v7 = *a1;
  if (a3 != 4)
  {
    if (a3 == 2)
    {
      v42 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v8 = 0;
    }

    else
    {
      if (a3 == 1)
      {
        goto LABEL_7;
      }

      v42 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v8 = -1;
    }

LABEL_31:
    v17 = qword_2813CF018;
    if (a1[26])
    {
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v17, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp AGPS constellation requested", &__p, 2u);
        v17 = qword_2813CF018;
      }

      v43 = 1;
    }

    else
    {
      v43 = 0;
    }

    v18 = *(a1 + 9);
    v19 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v18 == 1)
    {
      if (v19)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v17, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp UE can request for additional assistance data", &__p, 2u);
      }

      v39 = 1;
    }

    else
    {
      if (v19)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v17, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp UE cannot request for additional assistance data", &__p, 2u);
      }

      v39 = 0;
    }

    v20 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p) = 67175169;
      HIDWORD(__p) = v8;
      LOWORD(v47) = 1025;
      *(&v47 + 2) = v42;
      HIWORD(v47) = 1025;
      *v48 = 255;
      _os_log_debug_impl(&dword_245396000, v20, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,v_LocInfoType,%{private}u,v_LocShapeTypes,%{private}u,v_VelReqType,%{private}u", &__p, 0x14u);
      v20 = qword_2813CF018;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      __p = 0x104010701;
      LOWORD(v47) = 1025;
      *(&v47 + 2) = v10;
      HIWORD(v47) = 1025;
      *v48 = v13;
      *&v48[4] = 1025;
      *&v48[6] = v12;
      *&v48[10] = 1025;
      *&v48[12] = v11;
      *&v48[16] = 1025;
      *&v48[18] = v7;
      *&v48[22] = 1025;
      v49 = v43;
      _os_log_impl(&dword_245396000, v20, OS_LOG_TYPE_DEFAULT, "ReportingAmount,%{private}u,HorAccuracy,%{private}u,HorAccConfidence,%{private}u,VertAccuracy,%{private}u,VertAccConfidence,%{private}u,RespTime,%{private}u,requestedGnss,%{private}u", &__p, 0x2Cu);
    }

    v40 = v11;
    v41 = v12;
    if (v8)
    {
      v21 = v8;
      if (v8 >= 3)
      {
        v25 = qword_2813CF018;
        v22 = v13;
        v23 = v7;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          __p = -4227858176;
          _os_log_error_impl(&dword_245396000, v25, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp LocInfoType,%u", &__p, 8u);
        }

        v24 = 0;
      }

      else
      {
        v22 = v13;
        v23 = v7;
        v24 = 29;
      }
    }

    else
    {
      v21 = 0;
      v22 = v13;
      v23 = v7;
      v24 = 32;
    }

    v26 = 2 * (*a2 != 0);
    v27 = *(a2 + 8);
    v28 = *(a2 + 4);
    v29 = qword_2813CF018;
    v30 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT);
    if (v28 == 1)
    {
      if (v30)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v29, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp calling startPosRequest", &__p, 2u);
      }

      v31 = sub_24547C334();
      v32 = *(v31 + 96);
      __p = MEMORY[0x277D85DD0];
      v47 = 3221225472;
      *v48 = sub_245480790;
      *&v48[8] = &unk_278E80290;
      *&v48[16] = v31;
      LOWORD(v49) = 0;
      v50 = v21;
      v51 = v23;
      v52 = v10;
      v53 = -1;
      v54 = v22;
      v55 = v41;
      v56 = v40;
      v57 = -1;
      v58 = v39;
      v59 = v43;
      v60 = v42;
      v61 = 511;
      v62 = v26;
      v63 = v27;
      dispatch_async(v32, &__p);
    }

    else
    {
      if (v30)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v29, OS_LOG_TYPE_DEFAULT, "#gpsd,#cplane,#posp calling startPosRequest", &__p, 2u);
      }

      v33 = sub_2453B4548();
      LOWORD(__p) = 0;
      HIDWORD(__p) = v21;
      LOWORD(v47) = v23;
      BYTE2(v47) = v10;
      HIDWORD(v47) = -1;
      v48[0] = v22;
      v48[1] = v41;
      v48[2] = v40;
      *&v48[4] = -1;
      *&v48[8] = v39;
      *&v48[12] = v43;
      v48[14] = v42;
      *&v48[15] = 511;
      *&v48[20] = v26;
      v49 = v27;
      sub_2453B4BC0(v33, &__p);
    }

    v34 = sub_24547C334();
    v47 = 0;
    *&v48[8] = 0;
    LODWORD(__p) = v27;
    v48[16] = v10;
    *v48 = v24;
    sub_24547D2BC(v34, &__p);
    sub_2453B414C(&__p, "sendPositionReq");
    v35 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      if (v48[7] >= 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      *buf = 136315138;
      v45 = v38;
      _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
    }

    if ((v48[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    return;
  }

LABEL_7:
  if (a3 == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a1 + 1);
  if (v9 + 1 >= 2)
  {
    v10 = (log(v9 / 10.0 + 1.0) * 10.5 + 0.5);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 20) == 255)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 20);
  }

  if (*(a1 + 6) == 1)
  {
    v14 = *(a1 + 7);
    if (v14 + 1 >= 2)
    {
      v12 = (log(v14 / 10.0 + 1.0) * 10.5 + 0.5);
    }

    else
    {
      v12 = 0;
    }

    if (*(a1 + 32) == 255)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 32);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v15 = 0;
  v16 = *(a1 + 48);
  if (!*(a1 + 48) || v16 == 255)
  {
    goto LABEL_30;
  }

  if ((v16 & 0xB7) != 0)
  {
    v15 = v16 & 0x37;
LABEL_30:
    v42 = v15;
    goto LABEL_31;
  }

  v36 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = v16;
    _os_log_error_impl(&dword_245396000, v36, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp Shape,%u not supported", &__p, 8u);
  }
}

uint64_t sub_24546D760(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_245473C70(a1);
  *v2 = &unk_28585A640;
  *(v2 + 360) = 1;
  *(v2 + 16) = 5;
  *(v2 + 32) = 5;
  v3 = operator new(0x200uLL, MEMORY[0x277D826F0]);
  if (v3)
  {
    *(v3 + 136) = 0u;
    *(v3 + 120) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 8) = 0u;
    v3[144] = -1;
    *(v3 + 168) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 248) = 0u;
    *(v3 + 63) = 0;
    *(v3 + 152) = 0u;
    *(v3 + 264) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 472) = 0u;
    *(v3 + 488) = 0u;
    *v3 = 0;
    *(a1 + 40) = v3;
    *(a1 + 20) = 0;
    *(a1 + 364) = 0;
  }

  else
  {
    *(a1 + 40) = 0;
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = 1537;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v6, 8u);
    }
  }

  return a1;
}

uint64_t sub_24546D8E0(uint64_t a1)
{
  *a1 = &unk_28585A640;
  if (*(a1 + 32) == 5)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      sub_245454DA0(v2 + 152);
      v7 = (v2 + 120);
      sub_245467100(&v7);
      v7 = (v2 + 96);
      sub_245467100(&v7);
      v3 = *(v2 + 64);
      if (v3)
      {
        *(v2 + 72) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 40);
      if (v4)
      {
        *(v2 + 48) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        *(v2 + 24) = v5;
        operator delete(v5);
      }

      MEMORY[0x245D6A0D0](v2, 0x1030C40986846DALL);
    }

    *(a1 + 40) = 0;
  }

  return sub_245473D60(a1);
}

void sub_24546D9B8(uint64_t a1)
{
  sub_24546D8E0(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_24546D9F0(uint64_t a1, char a2)
{
  *(a1 + 20) = 1;
  (*(*a1 + 16))(a1);
  v4 = sub_245471CCC(*(a1 + 8));
  *(v4[5] + 456) = a2;
  *(v4[5] + 4) = 1;
  sub_2453A6258(__p, 3000);
  v5[0] = __p;
  v5[1] = 0;
  v6 = 0;
  (*(*v4 + 32))(v4, v5);
  sub_245454A88(v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24546DAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24546DAF8(uint64_t result)
{
  if (*(result + 364))
  {
    v1 = 6;
  }

  else
  {
    if (!*(result + 20))
    {
      return;
    }

    v1 = 7;
  }

  sub_245473DF8(result, v1, *(result + 8));
}

void sub_24546DB20(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 360) = 0;
  if (a2)
  {
    if (*(*(a1 + 8) + 424) == 1)
    {

      sub_24546D9F0(a1, 4);
    }

    return;
  }

  sub_2453A6258(__p, 3000);
  v8[0] = __p;
  v8[1] = 0;
  v9 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 67109120;
    v12 = 513;
    goto LABEL_12;
  }

  sub_245454C74(a1 + 48, v3 + 64);
  v7[0] = v8;
  v7[1] = a1 + 24;
  if (!sub_245466354(v7))
  {
    v5 = sub_24547C334();
    v6 = *(*(a1 + 8) + 376);
    v13 = 0;
    v14[0] = 0;
    *buf = v6;
    v15 = -1;
    *&v14[1] = 5;
    v14[3] = 0;
    sub_24547D2BC(v5, buf);
    if (sub_24547463C(a1, v8) && *(*(a1 + 8) + 424) == 1)
    {
      *(a1 + 364) = 1;
      (*(*a1 + 16))(a1);
    }

    goto LABEL_16;
  }

  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v12 = 770;
LABEL_12:
    _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
  }

LABEL_16:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24546DD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24546DD6C(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_2454745A0(a1, a2);
  v4 = sub_24547473C();
  v5 = sub_245475B3C(v4, *(*(a1 + 8) + 72), *(a1 + 56));
  if (!v5)
  {
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v20 = 67109120;
      v21 = 515;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v20, 8u);
    }
  }

  v7 = *(a1 + 8);
  v8 = sub_24547473C();
  if (!sub_245475A68(v8, a1 + 248, v7 + 264))
  {
    v11 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v20 = 67109120;
      v21 = 515;
      _os_log_error_impl(&dword_245396000, v11, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v20, 8u);
    }

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    sub_245454C74(*(a1 + 8) + 64, a1 + 48);
    v12 = a1;
    v13 = 12;
LABEL_12:
    sub_24546D9F0(v12, v13);
    return 0;
  }

  v9 = *(a1 + 32);
  if (v9 == 5)
  {
    v15 = sub_24547C334();
    v16 = *(*(a1 + 8) + 376);
    v22 = 0;
    v23[0] = 0;
    v20 = v16;
    v24 = -1;
    *&v23[1] = 4;
    v23[3] = 0;
    sub_24547D2BC(v15, &v20);
    v17 = sub_24546A68C();
    v18 = sub_24546A7BC(v17, *(a1 + 40), *(a1 + 8));
    if (!v18)
    {
      return 0;
    }

    v19 = v18;
    v12 = a1;
    if (v19 == 65529)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_12;
  }

  if (v9 != 6)
  {
    v12 = a1;
    v13 = 2;
    goto LABEL_12;
  }

  *(a1 + 20) = 1;
  (*(*a1 + 16))(a1);
  v10 = sub_245471CCC(*(a1 + 8));
  (*(*v10 + 40))(v10, a2);
  return 0;
}

void sub_24546DFC0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(v2 + 8) = 4;
      *(*(a1 + 40) + 88) = 1;
      v3 = *(a1 + 40);
      v4 = (v3 + 96);
      if (v3 + 96 != a2 + 8)
      {
        v6 = *(a2 + 8);
        v5 = *(a2 + 16);
        v7 = v5 - v6;
        v8 = *(v3 + 112);
        v9 = *(v3 + 96);
        if (v8 - v9 < (v5 - v6))
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
          if (v9)
          {
            sub_245444754((v3 + 96));
            operator delete(*v4);
            v8 = 0;
            *v4 = 0;
            *(v3 + 104) = 0;
            *(v3 + 112) = 0;
          }

          if (v10 <= 0xAAAAAAAAAAAAAAALL)
          {
            v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
            v12 = 2 * v11;
            if (2 * v11 <= v10)
            {
              v12 = v10;
            }

            if (v11 >= 0x555555555555555)
            {
              v13 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v13 = v12;
            }

            if (v13 <= 0xAAAAAAAAAAAAAAALL)
            {
              sub_245444978(v3 + 96, v13);
            }
          }

          sub_2453A631C();
        }

        v15 = *(v3 + 104) - v9;
        if (v15 >= v7)
        {
          v16 = sub_24546E2A8(*(a2 + 8), *(a2 + 16), v9);
          v17 = *(v3 + 104);
          if (v17 != v16)
          {
            v18 = *(v3 + 104);
            do
            {
              v20 = *(v18 - 3);
              v18 -= 3;
              v19 = v20;
              if (v20)
              {
                *(v17 - 2) = v19;
                operator delete(v19);
              }

              v17 = v18;
            }

            while (v18 != v16);
          }

          *(v3 + 104) = v16;
        }

        else
        {
          sub_24546E2A8(v6, (v6 + v15), v9);
          *(v3 + 104) = sub_24546E1F8(v3 + 96, v6 + v15, v5, *(v3 + 104));
        }
      }
    }
  }

  else
  {
    v14 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 67109120;
      v21[1] = 515;
      _os_log_error_impl(&dword_245396000, v14, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v21, 8u);
    }
  }
}

uint64_t *sub_24546E1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_2453AE4E0(v4, *v6, *(v6 + 8), *(v6 + 8) - *v6);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_245444A8C(v8);
  return v4;
}

uint64_t *sub_24546E2A8(char **a1, char **a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_2453ADF3C(a3, *v5, v5[1], v5[1] - *v5);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_24546E30C()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_2813CED68 != -1)
  {
    dispatch_once(&qword_2813CED68, &unk_28585A688);
  }

  result = qword_2813CED60;
  if (!qword_2813CED60)
  {
    v1 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v1, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
    }

    __assert_rtn("GetInstance", "SuplProvider.cpp", 60, "false && Memory allocation failure");
  }

  return result;
}

void *sub_24546E404()
{
  result = operator new(0x38uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = &unk_28585A6B8;
    result[1] = 0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    result[6] = 0;
  }

  qword_2813CED60 = result;
  return result;
}

uint64_t sub_24546E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    while (*v5 != *(a3 + 4))
    {
      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    sub_245472280(v5 - 8, a4);
  }

  else
  {
LABEL_4:
    v6 = sub_24547473C();
    sub_24547550C(v6, *(a3 + 4));
    v7 = sub_24546A68C();
    sub_245448DD0(off_27EE134B8, *(a3 + 4));
    sub_24546B0B4(v7);
    v8 = sub_24547C334();
    v9 = *(v8 + 80);
    if (v9)
    {
      dispatch_source_cancel(v9);
      *(v8 + 80) = 0;
    }

    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = 513;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v12, 8u);
    }
  }

  return 0;
}

uint64_t sub_24546E578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v7 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v10 = operator new(0x258uLL, MEMORY[0x277D826F0]);
  if (v10)
  {
    v11 = v10;
    sub_245471300(v10, a2, v7, a4);
    v12 = v11 + 8;
    v13 = *(a1 + 24);
    while (v13)
    {
      v14 = v13;
      v13 = *(v13 + 8);
      if (!v13)
      {
        *(v14 + 8) = v12;
        *(v11 + 16) = 0;
        if (!a5)
        {
          return 0;
        }

        goto LABEL_11;
      }
    }

    *(v11 + 16) = *(a1 + 24);
    *(a1 + 24) = v12;
    if (!a5)
    {
      return 0;
    }

LABEL_11:
    sub_2454715F0(v11);
    sub_245471650(v11);
    return 0;
  }

  else
  {
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 67109120;
      v18[1] = 1537;
      _os_log_error_impl(&dword_245396000, v15, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v18, 8u);
    }

    return -2;
  }
}

void sub_24546E6DC(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 24);
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v5 = v3 - 8;
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_13;
      }
    }

    sub_245479ABC(a1 + 8, v2);
LABEL_13:
    v6 = *(*v5 + 8);

    v6(v5);
  }

  else
  {
LABEL_5:
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v7, 8u);
    }
  }
}

void sub_24546E824(uint64_t a1, int a2, unsigned int a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    sub_245471B50(v3 - 8, a3);
  }

  else
  {
LABEL_4:
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v5, 8u);
    }
  }
}

void sub_24546E924(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    sub_245471E40(v3 - 8, a3);
  }

  else
  {
LABEL_4:
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v5, 8u);
    }
  }
}

void sub_24546EA24(uint64_t a1, int a2, char **a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v17 = a3[1] - *a3;
    *buf = 67109376;
    v33 = a2;
    v34 = 2048;
    v35 = v17;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Data received Session id %d, size %lu", buf, 0x12u);
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
LABEL_6:
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplProvider::ReceiveDataInd session not found", buf, 2u);
      v8 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    v33 = 513;
    goto LABEL_28;
  }

  while (*v7 != a2)
  {
    v7 = *(v7 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v9 = a3[1];
  if (*a3 == v9)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplProvider::ReceiveDataInd data empty", buf, 2u);
      v8 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    v33 = 514;
LABEL_28:
    _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    return;
  }

  sub_24546FB28(a1 + 32, *(a1 + 40), *a3, v9, v9 - *a3);
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  if ((v10 - v11) > 1)
  {
    v24 = 0;
    sub_24546EFB8(v11, v10, &v24);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = v15 - v14;
    if (v15 - v14 >= v24)
    {
      if (v16 < 0xBB9)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        sub_2453AE4E0(&v28, v14, v15, v16);
        sub_24546EFB8(v28, v29, &v31);
        v26[0] = &v28;
        v26[1] = 5;
        v27 = 0;
        sub_2454735D8(buf);
        if (sub_245473780(v26, buf))
        {
          v19 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            *v25 = 0;
            _os_log_debug_impl(&dword_245396000, v19, OS_LOG_TYPE_DEBUG, "#gpsd,#supl, decoding of session ID failed", v25, 2u);
          }

          v20 = 0;
          v21 = 1;
        }

        else
        {
          v20 = v34;
          v21 = *buf == 0;
        }

        if (v56)
        {
          v57 = v56;
          operator delete(v56);
        }

        if (v54)
        {
          v55 = v54;
          operator delete(v54);
        }

        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (__p)
        {
          v39 = __p;
          operator delete(__p);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }

        if (!v21)
        {
          v22 = *(a1 + 24);
          if (v22)
          {
            while (*v22 != v20)
            {
              v22 = *(v22 + 8);
              if (!v22)
              {
                goto LABEL_62;
              }
            }

            v7 = v22;
          }

          else
          {
LABEL_62:
            v23 = qword_2813CF018;
            if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v33 = 513;
              _os_log_error_impl(&dword_245396000, v23, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
            }
          }
        }

        sub_245471EE8(v7 - 8, (a1 + 32));
      }

      else
      {
        v18 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplProvider::ReceiveDataInd buffer size more than SUPL_ENCODE_BUFFER_SIZE", buf, 2u);
          v18 = qword_2813CF018;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v33 = 514;
          _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
        }
      }

      *(a1 + 40) = *(a1 + 32);
    }

    else
    {
      v12 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v13 = "#gpsd,#supl SuplProvider::ReceiveDataInd buffer size less than message length, waiting for other fragments";
        goto LABEL_21;
      }
    }
  }

  else
  {
    v12 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v13 = "#gpsd,#supl SuplProvider::ReceiveDataInd buffer size < 2 bytes, wait for more messages";
LABEL_21:
      _os_log_debug_impl(&dword_245396000, v12, OS_LOG_TYPE_DEBUG, v13, buf, 2u);
    }
  }
}

void sub_24546EF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_24546FABC(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24546EFB8(const void *a1, uint64_t a2, _WORD *a3)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  sub_2453AE4E0(&__p, a1, a2, a2 - a1);
  v6[0] = &__p;
  v6[1] = 0;
  v7 = 0;
  if (sub_245446218(v6, 0, 0xFFFFu, a3))
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl, decoding of message length failed", v5, 2u);
    }
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_24546F074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24546F090(uint64_t a1, unsigned int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  sub_245478884();
  if (a2 > 0xFFFE)
  {
    LOBYTE(v6) = 0;
    v7 = a2 - 0xFFFF;
    (**a1)(a1, 0, &v6, 1);
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      while (*v4 != a2)
      {
        v4 = *(v4 + 8);
        if (!v4)
        {
          goto LABEL_5;
        }
      }

      sub_245471F6C(v4 - 8);
    }

    else
    {
LABEL_5:
      v5 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        v6 = 67109120;
        v7 = 513;
        _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v6, 8u);
      }
    }
  }
}

uint64_t sub_24546F1E8(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[3];
    while (*v5 != a2)
    {
      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17[0] = 0;
    memset(&v18, 0, sizeof(v18));
    v19 = 7275;
    v7 = sub_245479234();
    if (sub_245479574(v7, v17, a2, *(v5 + 588)))
    {
      v8 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v23 = 770;
        _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      }

      v9 = a1[3];
      if (v9)
      {
        while (*v9 != a2)
        {
          v9 = *(v9 + 8);
          if (!v9)
          {
            goto LABEL_22;
          }
        }

        a1[5] = a1[4];
      }

LABEL_22:
      sub_24546E6DC(a1, a2);
      v10 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      memset(&v24, 0, sizeof(v24));
      v25 = 0;
      if ((v17[0] - 1) >= 4u)
      {
        v12 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          *v20 = 67109120;
          v21 = 515;
          _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v20, 8u);
        }

        LOBYTE(v11) = 0;
      }

      else
      {
        v11 = 0x2030301u >> (8 * ((v17[0] - 1) & 0x1F));
      }

      buf[0] = v11;
      std::string::operator=(&v24, &v18);
      v25 = v19;
      v13 = *(v5 + 588);
      v26 = 0;
      v27 = v13;
      v14 = sub_24547C334();
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_24546FD48(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v18;
      }

      sub_24547CB70(v14, &__p.__r_.__value_.__l.__data_, v19, a2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      v10 = 1;
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_5:
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v23 = 2305;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      v4 = a1[3];
    }

    while (v4)
    {
      if (*v4 == a2)
      {
        a1[5] = a1[4];
        break;
      }

      v4 = *(v4 + 8);
    }

    sub_24546E6DC(a1, a2);
    return 0;
  }

  return v10;
}

void sub_24546F4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24546F540(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    v5 = sub_24547C334();
    v6 = *(v5 + 80);
    if (v6)
    {
      dispatch_source_cancel(v6);
      *(v5 + 80) = 0;
    }

    sub_24546E6DC(a1, *(v2 + 368));

    sub_245445CA4();
  }

  else
  {
LABEL_4:
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v7, 8u);
    }
  }
}

BOOL sub_24546F66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v8 = sub_24547C334();
    sub_24547C960(v8, a2, a3);
    return 1;
  }

  else
  {
LABEL_4:
    v6 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v9[0] = 67109120;
      v9[1] = 513;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v9, 8u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_24546F74C(uint64_t a1, int a2, uint64_t a3)
{
  __p[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    memset(__p, 0, 25);
    v10 = 0u;
    *v9 = 0u;
    if (a3)
    {
      LOWORD(v8[0]) = *a3;
      v9[0] = *(a3 + 8);
      if (v8 != a3)
      {
        sub_2453ADF3C(&v9[1], *(a3 + 16), *(a3 + 24), *(a3 + 24) - *(a3 + 16));
        sub_2453ADF3C(__p, *(a3 + 40), *(a3 + 48), *(a3 + 48) - *(a3 + 40));
      }

      LOBYTE(__p[3]) = *(a3 + 64);
    }

    LOWORD(v8[0]) = 1;
    sub_245472204(v3 - 8, v8);
    sub_2454715F0(v3 - 8);
    sub_245471650(v3 - 8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v9[1])
    {
      *&v10 = v9[1];
      operator delete(v9[1]);
    }

    return 0;
  }

  else
  {
LABEL_4:
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = 513;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v8, 8u);
    }

    return -3;
  }
}

void sub_24546F8DC(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v4 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v7 = 67109120;
    v8 = 515;
LABEL_13:
    _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v7, 8u);
    return;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_5:
    v4 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v7 = 67109120;
    v8 = 513;
    goto LABEL_13;
  }

  while (*v2 != *(a2 + 28))
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  *(v2 + 416) = *(a2 + 32);
  v5 = sub_24546A68C();
  v6 = *(a2 + 24);

  sub_24546B168(v5, a2, v6, v2 - 8);
}

void sub_24546FA38(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    do
    {
      v3 = *(v1 + 8);
      v5[0] = 0;
      v6 = *(v1 + 368);
      (**a1)(a1, 0, v5, 0);
      v1 = v3;
    }

    while (v3);
  }

  v4 = sub_24547473C();
  sub_245476EF8(v4);
}

void *sub_24546FABC(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  sub_245461640((a1 + 3));
  return a1;
}

char *sub_24546FB28(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if ((v10 - v9) >= a5)
  {
    v15 = v9 - __dst;
    if ((v9 - __dst) >= a5)
    {
      v19 = &__dst[a5];
      v20 = (v9 - a5);
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&a4[v9] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = v9 - *a1 + a5;
  if (v12 < 0)
  {
    sub_2453A631C();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

void *sub_24546FD48(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2453A59DC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_24546FDEC(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::Init", v12, 2u);
  }

  *a1 = a2;
  a1[2] = a5;
  v11 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109632;
    v12[1] = a2;
    v13 = 1024;
    v14 = a5;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_245396000, v11, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, requestID,%u,Timertype,%u,User Type,%u", v12, 0x14u);
    v11 = qword_2813CF018;
  }

  a1[3] = a4;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_245396000, v11, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::Init", v12, 2u);
  }
}

void sub_24546FF4C(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::Start", buf, 2u);
  }

  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -7);
  if (!v3)
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, timer queueAttr", buf, 2u);
    }
  }

  v5 = dispatch_queue_create("TimerQueue", v3);
  *(a1 + 24) = v5;
  if (!v5)
  {
    v14 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "#gpsd,#supl, Queue creation failed";
LABEL_16:
    v13 = v14;
    goto LABEL_17;
  }

  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
  *(a1 + 16) = v6;
  if (!v6)
  {
    v14 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "#gpsd,#supl, fStopCompletedTimer NULL";
    goto LABEL_16;
  }

  v7 = v6;
  v8 = dispatch_time(0, 1000000000 * *(a1 + 12));
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  v9 = *(a1 + 16);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_2454701F4;
  handler[3] = &unk_278E36C40;
  handler[4] = a1;
  dispatch_source_set_event_handler(v9, handler);
  *(a1 + 4) = 1;
  dispatch_resume(*(a1 + 16));
  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 12);
    *buf = 67109120;
    v17 = v11;
    _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, timer started for %d", buf, 8u);
    v10 = qword_2813CF018;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v12 = "#gpsd,#supl, Leaving SuplTimer::Start";
    v13 = v10;
LABEL_17:
    _os_log_impl(&dword_245396000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
  }
}

void sub_2454701F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::OnTimer", buf, 2u);
    v3 = qword_2813CF018;
  }

  if (v1[1])
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, SuplTimer::OnTimer, timer running", v6, 2u);
    }

    v4 = sub_24546E30C();
    (*(*v4 + 48))(v4, v2);
    v3 = qword_2813CF018;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::OnTimer", v5, 2u);
  }
}

void sub_245470314(uint64_t a1)
{
  v2 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::Stop", buf, 2u);
    v2 = qword_2813CF018;
  }

  if (*(a1 + 4))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, timer running", v6, 2u);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 24) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      dispatch_source_cancel(v4);

      *(a1 + 16) = 0;
    }

    *(a1 + 4) = 0;
    v2 = qword_2813CF018;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::Stop", v5, 2u);
  }
}

void sub_245470430(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::SetTimeout %d", v6, 8u);
  }

  if (*(a1 + 4))
  {
    sub_245470314(a1);
  }

  *(a1 + 12) = a2;
  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::SetTimeout", v6, 2u);
  }
}

void sub_24547052C(uint64_t a1)
{
  v2 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::Release", buf, 2u);
  }

  if (*(a1 + 4))
  {
    sub_245470314(a1);
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, timer not running", v6, 2u);
    }
  }

  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::Release", v5, 2u);
  }
}

uint64_t sub_245470628(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_245473C70(a1);
  *v2 = &unk_28585A728;
  *(v2 + 360) = 0;
  *(v2 + 16) = 3;
  *(v2 + 32) = 4;
  v3 = operator new(0x518uLL, MEMORY[0x277D826F0]);
  if (!v3)
  {
    *(a1 + 40) = 0;
    v5 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return a1;
    }

    v7 = 67109120;
    v8 = 1537;
LABEL_9:
    _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v7, 8u);
    return a1;
  }

  *v3 = 0u;
  *(v3 + 1) = xmmword_24548B320;
  *(v3 + 4) = 1;
  *(v3 + 10) = 0;
  *(v3 + 60) = 0;
  *(v3 + 21) = 0;
  *(v3 + 68) = 0u;
  v3[44] = 2;
  *(v3 + 6) = 0;
  *(v3 + 14) = 0;
  *(v3 + 22) = 0;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  v3[168] = 0;
  *(v3 + 46) = -1;
  *(v3 + 204) = 0;
  *(v3 + 209) = 0;
  *(v3 + 188) = 0;
  *(v3 + 196) = 0;
  *(v3 + 28) = 0;
  *(v3 + 58) = 0;
  *(v3 + 236) = -1;
  *(v3 + 31) = 0;
  *(v3 + 128) = 0;
  *(v3 + 130) = -1;
  *(v3 + 34) = 0;
  *(v3 + 35) = 0;
  *(v3 + 286) = 0;
  *(v3 + 33) = 0;
  *(v3 + 38) = 0;
  *(v3 + 39) = 0;
  *(v3 + 37) = 0;
  v3[320] = 1;
  *(v3 + 42) = 0;
  *(v3 + 43) = 0;
  *(v3 + 22) = 0u;
  v3[372] = -1;
  *(v3 + 96) = 0;
  *(v3 + 47) = 0;
  v3[388] = -1;
  *(v3 + 195) = 0;
  v3[392] = 0;
  *(v3 + 92) = 0;
  *(v3 + 50) = 255;
  *(v3 + 408) = 0u;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 95) = 0;
  *(v3 + 82) = 0;
  *(v3 + 888) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  v3[912] = -1;
  *(v3 + 192) = 0;
  *(v3 + 920) = 0u;
  *(v3 + 936) = 0u;
  *(v3 + 952) = 0u;
  *(v3 + 968) = 0u;
  *(v3 + 984) = 0u;
  *(v3 + 1000) = 0u;
  *(v3 + 1016) = 0u;
  *(v3 + 1032) = 0u;
  *(v3 + 1048) = 0u;
  *(v3 + 1064) = 0u;
  *(v3 + 1080) = 0u;
  *(v3 + 1096) = 0u;
  *(v3 + 1112) = 0u;
  *(v3 + 1128) = 0u;
  *(v3 + 1144) = 0u;
  *(v3 + 1160) = 0u;
  *(v3 + 1176) = 0u;
  *(v3 + 1192) = 0u;
  *(v3 + 1208) = 0u;
  *(v3 + 1224) = 0u;
  *(v3 + 1240) = 0u;
  *(v3 + 1256) = 0u;
  *(v3 + 1272) = 0u;
  *(v3 + 1288) = 0u;
  *(a1 + 40) = v3;
  v4 = operator new(1uLL, MEMORY[0x277D826F0]);
  if (!v4)
  {
    *(a1 + 368) = 0;
    v5 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return a1;
    }

    v7 = 67109120;
    v8 = 1537;
    goto LABEL_9;
  }

  *(a1 + 368) = v4;
  return a1;
}

uint64_t sub_245470900(uint64_t a1)
{
  *a1 = &unk_28585A728;
  if (*(a1 + 32) == 4)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 1280);
      if (v3)
      {
        *(v2 + 1288) = v3;
        operator delete(v3);
      }

      sub_245454DA0(v2 + 920);
      v11 = (v2 + 888);
      sub_245467100(&v11);
      v11 = (v2 + 864);
      sub_245467100(&v11);
      v4 = *(v2 + 832);
      if (v4)
      {
        *(v2 + 840) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 808);
      if (v5)
      {
        *(v2 + 816) = v5;
        operator delete(v5);
      }

      v6 = *(v2 + 784);
      if (v6)
      {
        *(v2 + 792) = v6;
        operator delete(v6);
      }

      sub_245454DA0(v2 + 408);
      v7 = *(v2 + 336);
      if (v7)
      {
        *(v2 + 344) = v7;
        operator delete(v7);
      }

      sub_245464AB8(v2 + 168);
      v8 = *(v2 + 144);
      if (v8)
      {
        *(v2 + 152) = v8;
        operator delete(v8);
      }

      MEMORY[0x245D6A0D0](v2, 0x1030C408837E473);
    }

    *(a1 + 40) = 0;
    v9 = *(a1 + 368);
    if (v9)
    {
      MEMORY[0x245D6A0D0](v9, 0xC400A2AC0F1);
    }

    *(a1 + 368) = 0;
  }

  return sub_245473D60(a1);
}

void sub_245470A34(uint64_t a1)
{
  sub_245470900(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_245470A6C(uint64_t result)
{
  if (*(result + 360))
  {
    *(result + 360) = 0;
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplResponseRecd::UpdateState, update state to Supl_PosInit_Sent", v3, 2u);
    }

    sub_245473DF8(result, 4, *(result + 8));
  }
}

uint64_t sub_245470AF8(uint64_t a1)
{
  v112 = *MEMORY[0x277D85DE8];
  sub_2453A6258(v52, 3000);
  v50[0] = v52;
  v50[1] = 0;
  v51 = 0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(v2 + 16) = *(v3 + 448);
    v4 = *(v3 + 464);
    v5 = *(v3 + 480);
    v6 = *(v3 + 496);
    *(v2 + 80) = *(v3 + 512);
    *(v2 + 48) = v5;
    *(v2 + 64) = v6;
    *(v2 + 32) = v4;
  }

  else
  {
    v16 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 67109120;
    *&buf[4] = 513;
    _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v53 = *(v7 + 520);
    v54 = *(v7 + 528);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_2453AE4E0(&v55, *(v7 + 536), *(v7 + 544), *(v7 + 544) - *(v7 + 536));
    v58 = 0;
    v59 = 0;
    v60 = 0;
    sub_2453AE4E0(&v58, *(v7 + 560), *(v7 + 568), *(v7 + 568) - *(v7 + 560));
    v8 = *(v7 + 584);
    v61 = v8;
    if (v53 == 1)
    {
      v9 = (v54 >> 6) & 1;
      v10 = (v54 >> 4) & 1;
      v11 = (v54 >> 3) & 1;
      v12 = (v54 >> 5) & 1;
      v13 = v54 & 1;
      v14 = (v54 >> 2) & 1;
      v15 = (v54 >> 1) & 1;
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
      v10 = 0;
      v9 = 0;
    }

    if ((v14 | v15 | v13 | v12 | v11 | v10 | v9) == 1)
    {
      *v2 = 1;
      *(v2 + 112) = v12;
      *(v2 + 116) = v9;
      *(v2 + 124) = v11;
      *(v2 + 108) = v10;
      *(v2 + 96) = v15;
      *(v2 + 100) = v14;
      *(v2 + 92) = v13;
      if (v11)
      {
        *(v2 + 88) = 1;
        goto LABEL_16;
      }
    }

    else if (v11)
    {
LABEL_16:
      *(v2 + 132) = WORD2(v54);
      *(v2 + 134) = BYTE6(v54);
      *(v2 + 136) = v8;
      v17 = HIBYTE(v54);
      *(v2 + 135) = HIBYTE(v54);
      if (v17)
      {
        v18 = 0;
        *(v2 + 128) = 1;
        v19 = *(v2 + 144);
        *(v2 + 152) = v19;
        do
        {
          v20 = *(v55 + v18);
          v21 = *(v58 + v18);
          v22 = *(v2 + 160);
          if (v19 >= v22)
          {
            v23 = *(v2 + 144);
            v24 = v19 - v23;
            v25 = (v19 - v23) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
              sub_2453A631C();
            }

            v27 = v22 - v23;
            if (v27 >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              if (!(v28 >> 61))
              {
                operator new();
              }

              sub_2453AABB4();
            }

            v29 = v25;
            v30 = (8 * v25);
            v31 = v20 | (v21 << 32);
            v32 = &v30[-v29];
            *v30 = v31;
            v19 = (v30 + 1);
            memcpy(v32, v23, v24);
            *(v2 + 144) = v32;
            *(v2 + 152) = v19;
            *(v2 + 160) = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v19 = v20 | (v21 << 32);
            v19 += 8;
          }

          *(v2 + 152) = v19;
          if (v18 > 0x1C)
          {
            break;
          }

          ++v18;
        }

        while (v18 < HIBYTE(v54));
      }
    }

    v33 = sub_245479234();
    if (sub_245479750(v33, *(*(a1 + 8) + 596)))
    {
      sub_245444754((v2 + 864));
      sub_245444D84(*(a1 + 368), a1 + 32);
      sub_245444BAC(*(a1 + 368), a1 + 32, *(a1 + 8));
    }

    v34 = *(a1 + 8);
    if (v34)
    {
      if ((*(v34 + 380) & 0xFE) != 2)
      {
        goto LABEL_49;
      }

      *(a1 + 48) = 1;
      *(a1 + 56) = *(v34 + 376);
      v35 = sub_24547473C();
      sub_245474B90(v35, a1 + 64, *(*(a1 + 8) + 596));
      v36 = sub_24547473C();
      sub_245474D04(v36, *(a1 + 40) + 168, *(*(a1 + 8) + 596));
      v37 = *(a1 + 8);
      v38 = sub_24547473C();
      v39 = sub_24547547C(v38, *(v37 + 376));
      v40 = v39;
      if (v39)
      {
        if (*(*(v39 + 48) + 8) == 1)
        {
          *buf = -254;
          LODWORD(v65) = 0;
          WORD2(v65) = 0;
          v66 = 0;
          LOWORD(v67) = 0;
          HIDWORD(v67) = 0;
          LOWORD(v68) = 0;
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(v97 + 3) = 0;
          v97[0] = 0;
          v97[2] = 0;
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v101 = 0;
          v102 = 0;
          v103 = 0;
          v104 = 0;
          v105 = 0;
          v106 = 0;
          v110 = 0;
          v111 = 0;
          v108 = 0;
          v109[0] = 0;
          *(v109 + 7) = 0;
          __p = 0;
          v41 = sub_24547473C();
          sub_245476890(v41, buf);
          v42 = sub_24547473C();
          if (sub_2454766B8(v42, *(v40 + 48) + 200, buf))
          {
            v43 = sub_24547473C();
            sub_2454761F8(v43, v2 + 328, buf);
            *(v2 + 4) = 1;
          }

          if (__p)
          {
            v108 = __p;
            operator delete(__p);
          }
        }

        if (sub_245460E5C(v40, v2 + 1280, *(*(a1 + 8) + 376), *(*(a1 + 8) + 596)))
        {
          v44 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_245396000, v44, OS_LOG_TYPE_DEBUG, "#gpsd,#supl FillHash failed in PrepareSuplPosInit", buf, 2u);
            v44 = qword_2813CF018;
          }

          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = 770;
            _os_log_error_impl(&dword_245396000, v44, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
          }
        }
      }

      *(v2 + 12) = 1;
      v34 = *(a1 + 8);
      if (v34)
      {
LABEL_49:
        sub_245454C74(a1 + 48, v34 + 64);
      }
    }

    *buf = v50;
    v65 = a1 + 24;
    if (sub_245466354(buf))
    {
      v45 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *v62 = 0;
        _os_log_debug_impl(&dword_245396000, v45, OS_LOG_TYPE_DEBUG, "#gpsd,#supl encoding failed in PrepareSuplPosInit", v62, 2u);
        v45 = qword_2813CF018;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *v62 = 67109120;
        v63 = 770;
        _os_log_error_impl(&dword_245396000, v45, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v62, 8u);
      }
    }

    *(*(a1 + 8) + 424) = 1;
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    goto LABEL_59;
  }

  v16 = qword_2813CF018;
LABEL_9:
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 513;
    _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
  }

LABEL_59:
  v46 = sub_24547C334();
  v47 = *(*(a1 + 8) + 376);
  v65 = 0;
  v66 = 0;
  *buf = v47;
  LOBYTE(v69) = -1;
  v67 = 3;
  v68 = 0;
  sub_24547D2BC(v46, buf);
  if (sub_24547463C(a1, v50))
  {
    *(a1 + 360) = 1;
  }

  (*(*a1 + 16))(a1);
  v48 = *(a1 + 360);
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  return v48;
}

void sub_245471284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  sub_24546BA2C(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_245471300(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_28585A780;
  *(a1 + 24) = 0u;
  v8 = a1 + 24;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_2454735D8(a1 + 64);
  *(a1 + 380) = -1;
  *(a1 + 384) = -1;
  *(a1 + 388) = 0u;
  *(a1 + 404) = 0u;
  *(a1 + 420) = 0;
  *(a1 + 448) = xmmword_24548B320;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0;
  *(a1 + 516) = 0;
  *(a1 + 500) = 0;
  *(a1 + 508) = 0;
  *(a1 + 492) = 0;
  *(a1 + 476) = 2;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 584) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 376) = a3;
  v9 = *a4;
  *(a1 + 388) = *(a4 + 2);
  *(a1 + 380) = v9;
  *(a1 + 432) = 0;
  *(a1 + 596) = a2;
  *(a1 + 24) = a1;
  sub_245445650(v8, a1 + 448, a2);
  *(a1 + 8) = a3;
  sub_2454457F4(v8, a2);
  *(a1 + 592) = 0;
  *(sub_24547473C() + 280) = a2;
  *(a1 + 440) = 0;
  return a1;
}

void sub_24547143C(_Unwind_Exception *exception_object)
{
  v1[3] = 0;
  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v1[2] = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_245471478(uint64_t a1)
{
  *a1 = &unk_28585A780;
  v2 = sub_24547473C();
  if (v2)
  {
    sub_24547550C(v2, *(a1 + 376));
  }

  sub_24547052C(a1 + 392);
  v3 = *(a1 + 432);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(a1 + 432) = 0;
  v4 = *(a1 + 440);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 440) = 0;
  v5 = *(a1 + 560);
  if (v5)
  {
    *(a1 + 568) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 536);
  if (v6)
  {
    *(a1 + 544) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 352);
  if (v7)
  {
    *(a1 + 360) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 328);
  if (v8)
  {
    *(a1 + 336) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 304);
  if (v9)
  {
    *(a1 + 312) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 264);
  if (v10)
  {
    *(a1 + 272) = v10;
    operator delete(v10);
  }

  sub_245461640(a1 + 88);
  *(a1 + 24) = 0;
  v11 = *(a1 + 32);
  if (v11)
  {
    *(a1 + 40) = v11;
    operator delete(v11);
  }

  *(a1 + 16) = 0;
  return a1;
}

void sub_2454715B8(uint64_t a1)
{
  sub_245471478(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454715F0(uint64_t a1)
{
  if (*(a1 + 380) >= 2u)
  {
    v2 = *(a1 + 376);
    v3 = *(sub_24547473C() + 24);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 11;
    }

    sub_24546FDEC((a1 + 392), v2, 0, v4, 0);
  }

  return 0;
}

void sub_245471650(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = sub_24547473C();
  if (!v2)
  {
    v7 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 513;
    goto LABEL_11;
  }

  v3 = *(a1 + 380);
  if (!*(a1 + 380))
  {
    v12 = *(a1 + 432);
    if (v12)
    {
      sub_245473DF8(v12, 7, a1);
      v13 = *(a1 + 432);
      *(v13[5] + 456) = 18;
      *(v13[5] + 4) = 1;
      sub_2453A6258(buf, 3000);
      v18[0] = buf;
      v18[1] = 0;
      v19 = 0;
      sub_245454D2C(v13);
      (*(*v13 + 32))(v13, v18);
      sub_245454A88(v13);
      if (*buf)
      {
        v21 = *buf;
        operator delete(*buf);
      }

      return;
    }

    v7 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 1028;
LABEL_11:
    _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    return;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 432);
    if (v8)
    {
      goto LABEL_16;
    }

    v9 = operator new(0x168uLL, MEMORY[0x277D826F0]);
    v10 = v9;
    if (v9)
    {
      sub_245473C70(v9);
      *v10 = &unk_28585A560;
    }

    sub_24547211C(a1, v10);
    v8 = *(a1 + 432);
    if (v8)
    {
LABEL_16:
      sub_245473DF8(v8, 7, a1);
      v11 = *(a1 + 432);

      sub_245454A88(v11);
    }

    else
    {
      v7 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 1537;
        goto LABEL_11;
      }
    }
  }

  else if (v3 == 3)
  {
    v4 = v2;
    v5 = sub_24547547C(v2, *(a1 + 376));
    if (v5 && !*(v5 + 20))
    {
      sub_245475F5C(v4, a1 + 448, *(*(v5 + 48) + 20), *(a1 + 596));
    }

    else
    {
      v6 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 513;
        _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      }
    }

    v15 = operator new(0x168uLL, MEMORY[0x277D826F0]);
    v16 = v15;
    if (v15)
    {
      sub_245473C70(v15);
      *v16 = &unk_28585A560;
    }

    sub_24547211C(a1, v16);
    v17 = *(a1 + 432);
    if (v17)
    {
      sub_245473DF8(v17, 0, a1);
      return;
    }

    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 1537;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = *(a1 + 432);

    sub_2454453E4((a1 + 24), (a1 + 380), v14, a1 + 448);
  }
}

void sub_245471A98(uint64_t a1, int a2)
{
  if (a2 == 6)
  {
    if (*(a1 + 424) != 1)
    {
      return;
    }

    v3 = *(sub_24547473C() + 32);
    v4 = v3 == 0;
    v5 = 10;
    goto LABEL_7;
  }

  if (a2 == 4)
  {
    if (*(a1 + 424) != 1)
    {
      return;
    }

    v3 = *(sub_24547473C() + 28);
    v4 = v3 == 0;
    v5 = 11;
LABEL_7:
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    sub_245470430(a1 + 392, v6);

    sub_24546FF4C(a1 + 392);
    return;
  }

  v7 = a1 + 392;

  sub_245470314(v7);
}

void sub_245471B50(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_24547C334();
  v5 = *(a1 + 376);
  v12 = 0;
  v14 = 0;
  v11[0] = v5;
  v15 = -1;
  v13 = a2;
  sub_24547D2BC(v4, v11);
  if (a2 == 6)
  {
    v6 = *(*sub_245471CCC(a1) + 16);

    v6();
  }

  else
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = 514;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v11, 8u);
    }

    v8 = sub_24546E30C();
    *(v8 + 40) = *(v8 + 32);
    v9 = sub_24546A68C();
    sub_245448DD0(off_27EE134B8, *(a1 + 376));
    sub_24546B0B4(v9);
    v10 = sub_24546E30C();
    sub_24546F540(v10, *(a1 + 376));
  }
}

void *sub_245471CCC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 432);
  if (!v1)
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7 = 67109120;
      v8 = 513;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v7, 8u);
    }

    v4 = operator new(0x168uLL, MEMORY[0x277D826F0]);
    v1 = v4;
    if (v4)
    {
      sub_245473C70(v4);
      *v1 = &unk_28585A560;
      *(a1 + 432) = v1;
    }

    else
    {
      *(a1 + 432) = 0;
      v5 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        v7 = 67109120;
        v8 = 1537;
        _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v7, 8u);
        return *(a1 + 432);
      }
    }
  }

  return v1;
}

void sub_245471E40(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 376);
  v5 = *(a1 + 432);
  if (v5 && *(v5 + 16) != 7)
  {
    sub_245473DF8(v5, 7, a1);
    sub_245454A88(*(a1 + 432));
  }

  v6 = sub_24547C334();
  v7 = *(a1 + 376);
  v10 = 0;
  v12 = 0;
  v9 = v7;
  v13 = -1;
  v11 = a2;
  sub_24547D2BC(v6, &v9);
  v8 = sub_24546E30C();

  sub_24546F540(v8, v4);
}

uint64_t sub_245471EE8(uint64_t result, void *a2)
{
  if (*a2 != a2[1])
  {
    v3 = result;
    sub_245470314(result + 392);
    *(sub_24547473C() + 280) = *(v3 + 596);
    v4 = *(*sub_245471CCC(v3) + 40);

    return v4();
  }

  return result;
}

void sub_245471F6C(uint64_t a1)
{
  __p[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 432))
  {
    if (*(a1 + 396) != 1)
    {
      v2 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        __p[0] = 0x40404000100;
        _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", __p, 8u);
      }
    }

    *(a1 + 396) = 0;
    sub_2453A6258(__p, 3000);
    v4[0] = __p;
    v4[1] = 0;
    v5 = 0;
    sub_245473DF8(*(a1 + 432), 7, a1);
    (*(**(a1 + 432) + 32))(*(a1 + 432), v4);
    sub_245454A88(*(a1 + 432));
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      __p[0] = 0x20104000100;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", __p, 8u);
    }
  }
}

void sub_24547211C(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(a1 + 440);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 432);
    *(a1 + 432) = a2;
    *(a1 + 440) = v5;
  }

  else
  {
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 515;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v7, 8u);
    }
  }
}

uint64_t sub_245472204(uint64_t a1, uint64_t a2)
{
  *(a1 + 520) = *a2;
  *(a1 + 528) = *(a2 + 8);
  if (a1 + 520 != a2)
  {
    sub_2453ADF3C((a1 + 536), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
    sub_2453ADF3C((a1 + 560), *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
  }

  *(a1 + 584) = *(a2 + 64);

  return sub_245445734((a1 + 24));
}

void sub_245472280(uint64_t a1, int a2)
{
  __p[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 432);
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = operator new(0x168uLL, MEMORY[0x277D826F0]);
  v6 = v5;
  if (v5)
  {
    sub_245473C70(v5);
    *v6 = &unk_28585A560;
  }

  sub_24547211C(a1, v6);
  v4 = *(a1 + 432);
  if (v4)
  {
LABEL_5:
    sub_245473DF8(v4, 7, a1);
    v7 = *(a1 + 432);
    if (!a2)
    {
      *(v7[5] + 456) = 18;
      *(v7[5] + 4) = 1;
      sub_2453A6258(__p, 3000);
      v11[0] = __p;
      v11[1] = 0;
      v12 = 0;
      sub_245454D2C(v7);
      (*(*v7 + 32))(v7, v11);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    sub_245454A88(v7);
  }

  else
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      __p[0] = 0x60104000100;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", __p, 8u);
    }

    v9 = sub_24546A68C();
    sub_245448DD0(off_27EE134B8, *(a1 + 376));
    sub_24546B0B4(v9);
    v10 = sub_24546E30C();
    sub_24546F540(v10, *(a1 + 376));
  }
}

uint64_t sub_245472494(uint64_t a1, unsigned __int8 *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = sub_2454460B8(a1, 0, 1, *a2 - 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_3:
    sub_245445D98(v4, v6, v7, "asn1PE_IPAddress");
    return v5;
  }

  v9 = *a2;
  if (v9 == 2)
  {
    v5 = sub_245446770(a1, 0, 0, 16, a2 + 4, 1, 0);
    if (!v5)
    {
      return v5;
    }

    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      v18 = 67109120;
      v19 = v5;
      _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#gpsd,#supl asn1PE_IPAddress_ipv6Address, encoding error %d", &v18, 8u);
    }

    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    v13 = "asn1PE_IPAddress_ipv6Address";
    v14 = v5;
LABEL_15:
    sub_245445D98(v14, v11, v12, v13);
    v16 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      v19 = v5;
      _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PE_IPAddress, encoding error %d", &v18, 8u);
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_3;
  }

  if (v9 == 1)
  {
    v5 = sub_245446770(a1, 0, 0, 4, a2 + 1, 1, 0);
    if (!v5)
    {
      return v5;
    }

    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      v19 = v5;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PE_IPAddress_ipv4Address, encoding error %d", &v18, 8u);
    }

    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    v13 = "asn1PE_IPAddress_ipv4Address";
    v14 = v5;
    goto LABEL_15;
  }

  v17 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&dword_245396000, v17, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PE_IPAddress, invalid IP addr type", &v18, 2u);
  }

  sub_245445D98(0, *(a1 + 8), *(a1 + 12), "asn1PE_IPAddress");
  return 0;
}

uint64_t sub_245472728(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v4 = sub_245446150(a1, 0, 1u, &v19);
  if (v4)
  {
    v5 = v4;
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v5;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PD_IPAddress, encoding error %d", buf, 8u);
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    v9 = v5;
    goto LABEL_5;
  }

  v11 = v19;
  *a2 = v19 + 1;
  if (v11 == 1)
  {
    sub_245446614(a1, 0x80u, (a2 + 32), 0);
    v5 = *(a1 + 16);
    if (!*(a1 + 16))
    {
      return v5;
    }

    v17 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v21 = v5;
      _os_log_debug_impl(&dword_245396000, v17, OS_LOG_TYPE_DEBUG, "#gpsd,#supl asn1PD_IPAddress_ipv6Address, decoing error %d", buf, 8u);
    }

    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
    v15 = "asn1PD_IPAddress_ipv6Address";
    v16 = v5;
LABEL_17:
    sub_245445D98(v16, v13, v14, v15);
    v18 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v5;
      _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PD_IPAddress, encoding error %d", buf, 8u);
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    v9 = v5;
    goto LABEL_5;
  }

  if (!v11)
  {
    sub_245446614(a1, 0x20u, (a2 + 8), 0);
    v5 = *(a1 + 16);
    if (!*(a1 + 16))
    {
      return v5;
    }

    v12 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v5;
      _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PD_IPAddress_ipv4Address, decoding error %d", buf, 8u);
    }

    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
    v15 = "asn1PD_IPAddress_ipv4Address";
    v16 = v5;
    goto LABEL_17;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v5 = 4;
  v9 = 4;
LABEL_5:
  sub_245445D98(v9, v7, v8, "asn1PD_IPAddress");
  return v5;
}

uint64_t sub_2454729B4(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = sub_245446A2C(a1, 1, 0xFFu, &v6, a2, 0x40u, "-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 0);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PD_FQDN");
  }

  return v4;
}

uint64_t sub_245472A28(uint64_t a1, unsigned __int8 *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
  }

  else
  {
    v7 = sub_2454460B8(a1, 0, 1, *a2 - 1);
    if (!v7)
    {
      v9 = *a2;
      switch(v9)
      {
        case 1:
          v4 = sub_245472494(a1, a2 + 8);
          if (!v4)
          {
            return v4;
          }

          break;
        case 255:
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v4 = 1;
          LODWORD(v7) = 1;
          goto LABEL_5;
        case 2:
          v10 = sub_2454467FC(a1, 1, 0xFFu, *(a2 + 18) - *(a2 + 16), a2 + 8, 64, "-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 0);
          v4 = v10;
          if (!v10)
          {
            return v4;
          }

          sub_245445D98(v10, *(a1 + 8), *(a1 + 12), "asn1PE_FQDN");
          break;
        default:
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v4 = 4;
          LODWORD(v7) = 4;
          goto LABEL_5;
      }

      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      LODWORD(v7) = v4;
      goto LABEL_5;
    }

    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
  }

LABEL_5:
  sub_245445D98(v7, v5, v6, "asn1PE_SLPAddress");
  return v4;
}

uint64_t sub_245472B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
  }

  else if (v4)
  {
    sub_245447070(a1);
    v5 = v8;
    if (!v8)
    {
      return v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v11 = 0;
    v8 = sub_245446150(a1, 0, 1u, &v11);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      v10 = v11;
      *a2 = v11 + 1;
      if (v10 != 254)
      {
        if (v10 == 1)
        {
          v8 = sub_2454729B4(a1, (a2 + 64));
        }

        else
        {
          if (v10)
          {
            v6 = *(a1 + 8);
            v7 = *(a1 + 12);
            v5 = 4;
            LODWORD(v8) = 4;
            goto LABEL_3;
          }

          v8 = sub_245472728(a1, a2 + 8);
        }

        v5 = v8;
        if (!v8)
        {
          return v5;
        }

        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      v5 = 1;
      LODWORD(v8) = 1;
    }
  }

LABEL_3:
  sub_245445D98(v8, v6, v7, "asn1PD_SLPAddress");
  return v5;
}

uint64_t sub_245472CD8(uint64_t a1, void *a2)
{
  v3 = sub_245446770(a1, 0, 0, 8, a2, 1, 1);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SETId_msisdn");
  }

  return v4;
}

uint64_t sub_245472D38(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x40u, a2, 1);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SETId_msisdn");
  }

  return v3;
}

uint64_t sub_245472D8C(uint64_t a1, void *a2)
{
  v3 = sub_245446770(a1, 0, 0, 8, a2, 1, 0);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SETId_mdn");
  }

  return v4;
}

uint64_t sub_245472DEC(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SETId_mdn");
  }

  return v3;
}

uint64_t sub_245472E40(uint64_t a1, void *a2)
{
  v3 = sub_245446474(a1, 0, 0, 34, a2, 1);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SETId_min");
  }

  return v4;
}

uint64_t sub_245472E9C(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x22u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SETId_min");
  }

  return v3;
}

uint64_t sub_245472EF0(uint64_t a1, void *a2)
{
  v3 = sub_245446770(a1, 0, 0, 8, a2, 1, 1);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SETId_imsi");
  }

  return v4;
}

uint64_t sub_245472F50(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x40u, a2, 1);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SETId_imsi");
  }

  return v3;
}

uint64_t sub_245472FA4(uint64_t a1, unsigned __int8 *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_24:
    sub_245445D98(v7, v5, v6, "asn1PE_SETId");
    return v4;
  }

  v7 = sub_2454460B8(a1, 0, 5, *a2 - 1);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_24;
  }

  v8 = *a2;
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1u:
        v7 = sub_245472CD8(a1, a2 + 1);
        break;
      case 2u:
        v7 = sub_245472D8C(a1, a2 + 4);
        break;
      case 3u:
        v7 = sub_245472E40(a1, a2 + 7);
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (*a2 > 5u)
  {
    if (v8 != 6)
    {
      if (v8 == 255)
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v4 = 1;
        LODWORD(v7) = 1;
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v7 = sub_245472494(a1, a2 + 128);
  }

  else
  {
    if (v8 != 4)
    {
      if (v8 == 5)
      {
        v7 = sub_245446D18(a1, 1, 1000, *(a2 + 28) - *(a2 + 26), a2 + 13, 0);
        goto LABEL_22;
      }

LABEL_18:
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v4 = 4;
      LODWORD(v7) = 4;
      goto LABEL_24;
    }

    v7 = sub_245472EF0(a1, a2 + 10);
  }

LABEL_22:
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_24;
  }

  return v4;
}

uint64_t sub_245473148(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
  }

  else if (v4)
  {
    sub_245447070(a1);
    v5 = v8;
    if (!v8)
    {
      return v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v12 = 0;
    v8 = sub_245446218(a1, 0, 5u, &v12);
    if (!v8)
    {
      v10 = v12;
      *a2 = v12 + 1;
      if (v10 <= 2)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            v8 = sub_245472DEC(a1, (a2 + 32));
          }

          else
          {
            v8 = sub_245472E9C(a1, (a2 + 56));
          }
        }

        else
        {
          v8 = sub_245472D38(a1, (a2 + 8));
        }
      }

      else if (v10 > 4)
      {
        if (v10 != 5)
        {
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
          if (v10 == 254)
          {
            v5 = 1;
            LODWORD(v8) = 1;
          }

          else
          {
            v5 = 4;
            LODWORD(v8) = 4;
          }

          goto LABEL_3;
        }

        v8 = sub_245472728(a1, a2 + 128);
      }

      else if (v10 == 3)
      {
        v8 = sub_245472F50(a1, (a2 + 80));
      }

      else
      {
        v11 = 0;
        v8 = sub_245446DA4(a1, 1, 0x3E8u, &v11, (a2 + 104), 0);
      }

      v5 = v8;
      if (!v8)
      {
        return v5;
      }

      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

LABEL_3:
  sub_245445D98(v8, v6, v7, "asn1PD_SETId");
  return v5;
}

uint64_t sub_24547331C(uint64_t a1, void *a2)
{
  v3 = sub_245446770(a1, 0, 0, 4, a2, 1, 0);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SlpSessionID_sessionID");
  }

  return v4;
}

uint64_t sub_24547337C(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x20u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SlpSessionID_sessionID");
  }

  return v3;
}

uint64_t sub_2454733D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24547331C(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PE_SlpSessionID");
    return v5;
  }

  v4 = sub_245472A28(a1, (a2 + 24));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_24547344C(uint64_t a1, void *a2)
{
  v4 = sub_24547337C(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PD_SlpSessionID");
    return v5;
  }

  v4 = sub_245472B88(a1, (a2 + 3));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_2454734C8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_2454460B8(a1, 0, 0xFFFF, *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PE_SetSessionID");
    return v5;
  }

  v4 = sub_245472FA4(a1, a2 + 8);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_245473550(uint64_t a1, _WORD *a2)
{
  v4 = sub_245446218(a1, 0, 0xFFFFu, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PD_SetSessionID");
    return v5;
  }

  v4 = sub_245473148(a1, (a2 + 4));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_2454735D8(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 16) = -1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 8) = 0;
  sub_2453A6258((a1 + 200), 4);
  *(a1 + 224) = 0u;
  *(a1 + 224) = -1;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *a1 = 0;
  return a1;
}

uint64_t sub_245473694(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_5:
    sub_245445D98(v7, v5, v6, "asn1PE_SessionID");
    return v4;
  }

  sub_245445FB0(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_5;
  }

  if (*a2)
  {
    v7 = sub_2454734C8(a1, (a2 + 8));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_5;
    }
  }

  if (!*(a2 + 4))
  {
    return 0;
  }

  return sub_2454733D0(a1, a2 + 200);
}

uint64_t sub_245473780(uint64_t a1, uint64_t a2)
{
  *a2 = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_5:
    sub_245445D98(v7, v5, v6, "asn1PD_SessionID");
    return v4;
  }

  v8 = sub_245446038(a1);
  *(a2 + 4) = v8;
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_5;
  }

  if (*a2)
  {
    v7 = sub_245473550(a1, (a2 + 8));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_5;
    }

    v8 = *(a2 + 4);
  }

  if (!v8)
  {
    return 0;
  }

  return sub_24547344C(a1, (a2 + 200));
}

uint64_t sub_24547386C(uint64_t a1, int *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    sub_245445FB0(a1, *a2);
    v4 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v7 = *(a1 + 16);
    }

    else
    {
      sub_245445FB0(a1, a2[1]);
      v4 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = *(a1 + 16);
      }

      else
      {
        sub_245445FB0(a1, a2[2]);
        v4 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v7 = *(a1 + 16);
        }

        else
        {
          sub_245445FB0(a1, a2[3]);
          v4 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v5 = *(a1 + 8);
            v6 = *(a1 + 12);
            v7 = *(a1 + 16);
          }

          else
          {
            sub_245445FB0(a1, a2[4]);
            v4 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v5 = *(a1 + 8);
              v6 = *(a1 + 12);
              v7 = *(a1 + 16);
            }

            else
            {
              sub_245445FB0(a1, a2[5]);
              v4 = *(a1 + 16);
              if (!*(a1 + 16))
              {
                sub_245445FB0(a1, a2[6]);
                return *(a1 + 16);
              }

              v5 = *(a1 + 8);
              v6 = *(a1 + 12);
              v7 = *(a1 + 16);
            }
          }
        }
      }
    }
  }

  sub_245445D98(v7, v5, v6, "asn1PE_PosTechnology");
  return v4;
}

uint64_t sub_2454739E0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 >= 3)
  {
    v4 = 4;
    *(a1 + 16) = 4;
    sub_245445D98(4u, *(a1 + 8), *(a1 + 12), "asn1PE_PrefMethod");
  }

  else
  {
    v4 = sub_2454460B8(a1, 0, 2, v3);
    if (!v4)
    {
      return v4;
    }
  }

  sub_245445D98(v4, *(a1 + 8), *(a1 + 12), "asn1PE_PrefMethod");
  return v4;
}

uint64_t sub_245473A64(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, vmaxv_u16(vmovn_s32(vtstq_s32(*(a2 + 12), *(a2 + 12)))) & 1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_9:
    sub_245445D98(v7, v5, v6, "asn1PE_PosProtocol");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  sub_245445FB0(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  sub_245445FB0(a1, *(a2 + 8));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  if ((vmaxv_u16(vmovn_s32(vtstq_s32(*(a2 + 12), *(a2 + 12)))) & 1) == 0)
  {
    return 0;
  }

  v7 = sub_245443C74(a1, a2);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  return v4;
}

uint64_t sub_245473BA0(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_7:
    sub_245445D98(v7, v5, v6, "asn1PE_SETCapabilities");
    return v4;
  }

  v7 = sub_24547386C(a1, a2);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  v7 = sub_2454739E0(a1, (a2 + 28));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  return sub_245473A64(a1, a2 + 32);
}

uint64_t sub_245473C70(uint64_t a1)
{
  *a1 = &unk_28585A7D8;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 356) = 0;
  *(a1 + 20) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 340) = 0u;
  v2 = sub_245445AC4();
  v3 = atomic_load((v2 + 1));
  v4 = v3 == 255;
  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  v6 = atomic_load((v2 + v5));
  *(a1 + 32) = -1;
  *(a1 + 26) = v6;
  *(a1 + 27) = 0;
  *(a1 + 40) = 0;
  sub_2454735D8(a1 + 48);
  return a1;
}

uint64_t sub_245473D60(uint64_t a1)
{
  *a1 = &unk_28585A7D8;
  *(a1 + 8) = 0;
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    *(a1 + 296) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 248);
  if (v5)
  {
    *(a1 + 256) = v5;
    operator delete(v5);
  }

  sub_245461640(a1 + 72);
  sub_2454660B0((a1 + 32));
  return a1;
}

void sub_245473DF8(uint64_t a1, int a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = qword_2813CF018;
  if (!a3)
  {
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v24 = 67109120;
    v25 = 515;
    v19 = v3;
    goto LABEL_32;
  }

  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 16);
    v24 = 67109376;
    v25 = v7;
    v26 = 1024;
    v27 = a2;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl Current State,%u -> New State,%u", &v24, 0xEu);
  }

  if (*(a1 + 16) == a2)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      v9 = "#gpsd,#supl Leaving SuplState::UpdateState, current state and new state same";
LABEL_7:
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, v9, &v24, 2u);
      return;
    }

    return;
  }

  if (a2 > 4)
  {
    switch(a2)
    {
      case 5:
        v16 = operator new(0x170uLL, MEMORY[0x277D826F0]);
        if (v16)
        {
          v17 = v16;
          sub_24546D760(v16);
          sub_245470314(a3 + 392);
          sub_24547211C(a3, v17);
          v17[1] = a3;
          (*(*v17 + 24))(v17);
        }

        else
        {
          v8 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            v24 = 67109120;
            v25 = 1537;
            _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
            v8 = qword_2813CF018;
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v24) = 0;
            v9 = "#gpsd,#supl Leaving SuplState::UpdateState, memalloc failure";
            goto LABEL_7;
          }
        }

        return;
      case 6:
        v22 = operator new(0x170uLL, MEMORY[0x277D826F0]);
        if (v22)
        {
          v23 = v22;
          sub_245473C70(v22);
          *v23 = &unk_28585A5C0;
          *(v23 + 16) = 4;
          *(v23 + 360) = 0;
          sub_245471A98(a3, 6);
          sub_24547211C(a3, v23);
          *(v23 + 8) = a3;
          (*(*v23 + 24))(v23);
        }

        else
        {
          v8 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            v24 = 67109120;
            v25 = 1537;
            _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
            v8 = qword_2813CF018;
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v24) = 0;
            v9 = "#gpsd,#supl Leaving SuplState::UpdateState, memalloc failure";
            goto LABEL_7;
          }
        }

        return;
      case 7:
        v12 = operator new(0x190uLL, MEMORY[0x277D826F0]);
        if (v12)
        {
          v13 = v12;
          sub_2454543D8(v12);
          sub_245470314(a3 + 392);
          sub_24547211C(a3, v13);
          v13[1] = a3;
          (*(*v13 + 24))(v13);
        }

        else
        {
          v8 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            v24 = 67109120;
            v25 = 1537;
            _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
            v8 = qword_2813CF018;
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v24) = 0;
            v9 = "#gpsd,#supl Leaving SuplState::UpdateState, mem alloc failure";
            goto LABEL_7;
          }
        }

        return;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      v20 = operator new(0x178uLL, MEMORY[0x277D826F0]);
      if (v20)
      {
        v21 = v20;
        sub_245470628(v20);
        sub_245470314(a3 + 392);
        sub_24547211C(a3, v21);
        v21[1] = a3;
        (*(*v21 + 24))(v21);
      }

      else
      {
        v8 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          v24 = 67109120;
          v25 = 1537;
          _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
          v8 = qword_2813CF018;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v24) = 0;
          v9 = "#gpsd,#supl Leaving SuplState::UpdateState, mem alloc failure";
          goto LABEL_7;
        }
      }

      return;
    }

    if (a2 == 4)
    {
      v10 = operator new(0x170uLL, MEMORY[0x277D826F0]);
      if (v10)
      {
        v11 = v10;
        sub_245473C70(v10);
        *v11 = &unk_28585A5C0;
        *(v11 + 16) = 4;
        *(v11 + 360) = 0;
        sub_245471A98(a3, 4);
        sub_24547211C(a3, v11);
        *(v11 + 8) = a3;
        (*(*v11 + 24))(v11);
      }

      else
      {
        v8 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          v24 = 67109120;
          v25 = 1537;
          _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
          v8 = qword_2813CF018;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v24) = 0;
          v9 = "#gpsd,#supl Leaving SuplState::UpdateState, mem alloc failure";
          goto LABEL_7;
        }
      }

      return;
    }

LABEL_25:
    v18 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v24 = 67109120;
    v25 = 515;
    v19 = v18;
LABEL_32:
    _os_log_error_impl(&dword_245396000, v19, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
    return;
  }

  v14 = operator new(0x168uLL, MEMORY[0x277D826F0]);
  if (v14)
  {
    v15 = v14;
    sub_245473C70(v14);
    *v15 = &unk_28585A560;
    sub_24547211C(a3, v15);
    v15[1] = a3;
    (*(*v15 + 24))(v15);
  }

  else
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v24 = 67109120;
      v25 = 1537;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
      v8 = qword_2813CF018;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      v9 = "#gpsd,#supl Leaving SuplState::UpdateState, mem alloc failure";
      goto LABEL_7;
    }
  }
}

uint64_t sub_2454745A0(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  sub_2453AE4E0(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v6[0] = &__p;
  v6[1] = 0;
  v7 = 0;
  v5[0] = v6;
  v5[1] = a1 + 24;
  v3 = sub_2454667D8(v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_245474620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24547463C(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v4 = sub_24546E30C();
    v5 = *(*(a1 + 8) + 376);
    v6 = *a2;

    return sub_24546F66C(v4, v5, v6);
  }

  else
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = 513;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v9, 8u);
    }

    return 0;
  }
}

uint64_t sub_24547473C()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_2813CED78 != -1)
  {
    dispatch_once(&qword_2813CED78, &unk_28585A818);
  }

  result = qword_2813CED70;
  if (!qword_2813CED70)
  {
    v1 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v1, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
    }

    __assert_rtn("GetInstance", "SuplUtils.cpp", 63, "false && Memory allocation failure");
  }

  return result;
}

char *sub_245474834()
{
  result = operator new(0x130uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *(result + 17) = 0u;
    *(result + 18) = 0u;
    *(result + 16) = 0u;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    *(result + 15) = 0u;
    *(result + 9) = 1;
    *(result + 24) = -254;
    *(result + 34) = 0;
    *(result + 42) = 0;
    *(result + 50) = 0;
    result[113] = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 86) = 0;
    *(result + 94) = 0;
    *(result + 48) = 0;
    *(result + 195) = 0;
    *(result + 106) = 0;
    *(result + 114) = 0;
    *(result + 69) = 0;
    *(result + 30) = 0;
    *(result + 31) = 0;
    *(result + 32) = 0;
    *(result + 263) = 0;
    *(result + 36) = 0x100000001;
    *(result + 74) = 1;
  }

  qword_2813CED70 = result;
  return result;
}

uint64_t sub_2454748F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = -1;
  v17 = 0;
  v18 = 0;
  __p = 0;
  if (*a3 != 1)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplUtils::SetSETInfo, invalid SET ID type", buf, 2u);
      v7 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return -4;
    }

    *buf = 67109120;
    v20 = 514;
    goto LABEL_27;
  }

  v4 = a2;
  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  if ((v5 - v6) >= 9)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplUtils::SetSETInfo, SET ID IMSI length > max limit", buf, 2u);
      v7 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return -4;
    }

    *buf = 67109120;
    v20 = 514;
LABEL_27:
    _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    return -4;
  }

  if (&v15 == a3)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    sub_2453ADF3C(&__p, v6, v5, v5 - v6);
    v9 = __p;
    v10 = v17;
  }

  buf[0] = -1;
  v11 = v10 - v9;
  if ((v10 - v9) > 7)
  {
    if (v11 != 8)
    {
      v17 = v9 + 8;
LABEL_20:
      v12 = 0;
      do
      {
        v9[v12] = (v9[v12] >> 4) | (16 * v9[v12]);
        ++v12;
        v9 = __p;
      }

      while (v12 < v17 - __p);
      goto LABEL_22;
    }
  }

  else
  {
    sub_2454770D4(&__p, 8 - v11, buf);
    v9 = __p;
    v10 = v17;
  }

  if (v10 != v9)
  {
    goto LABEL_20;
  }

LABEL_22:
  v15 = *a3;
  v13 = sub_245479234();
  sub_2454798BC(v13, v4, &v15);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_245474B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245474B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  LOWORD(v9) = -1;
  v11 = 0;
  v12 = 0;
  __p = 0;
  v5 = sub_245479234();
  sub_245479944(v5, v3, &v9);
  if (v9 == 1)
  {
    *a2 = 4;
    if ((a2 + 80) != &__p)
    {
      sub_2453ADF3C((a2 + 80), __p, v11, v11 - __p);
    }

    buf[0] = -1;
    v6 = *(a2 + 80);
    v7 = *(a2 + 88) - v6;
    if (v7 > 7)
    {
      if (v7 != 8)
      {
        *(a2 + 88) = v6 + 8;
      }
    }

    else
    {
      sub_2454770D4((a2 + 80), 8 - v7, buf);
    }
  }

  else
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = 514;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    }
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_245474CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245474D04(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_245479234();
  v6 = *(result + 16);
  if (v6)
  {
    while (*v6 != a3)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        return result;
      }
    }

    return sub_245464DF4(a2, (v6 + 56));
  }

  return result;
}

uint64_t sub_245474D6C(uint64_t a1, uint64_t a2, char **a3, int a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = operator new(0x218uLL, MEMORY[0x277D826F0]);
  if (v8)
  {
    v9 = v8;
    sub_245460B68(v8);
    if (sub_24546100C(v9, a2, a3))
    {
      v10 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        v35 = 67109120;
        v36 = 770;
        _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v35, 8u);
      }

      v11 = sub_24547C334();
      v12 = sub_245475188(*(*(v9 + 48) + 20));
      v37 = 0;
      v38 = 0x200000000;
      v35 = a4;
      v41 = -1;
      v39 = v12;
      v40 = 0;
      sub_24547D2BC(v11, &v35);
      v13 = sub_245460D6C(v9);
      MEMORY[0x245D6A0D0](v13, 0x1030C40AE74B18ELL);
      return -1;
    }

    else
    {
      v16 = *(v9 + 8);
      if (v16)
      {
        v17 = *v16;
        if (v17)
        {
          if (*(*(v17 + 16) + 108))
          {
            v18 = sub_24546E30C();
            sub_24546FA38(v18);
          }
        }
      }

      *v9 = a4;
      *(v9 + 4) = a2;
      *(v9 + 16) = 1;
      v19 = operator new(0x18uLL, MEMORY[0x277D826F0]);
      if (v19)
      {
        v19[1] = 0;
        v19[2] = v9;
        *v19 = a4;
        v20 = *(a1 + 16);
        while (v20)
        {
          v21 = v20;
          v20 = *(v20 + 8);
          if (!v20)
          {
            *(v21 + 8) = v19;
            v19[1] = 0;
            goto LABEL_24;
          }
        }

        v19[1] = *(a1 + 16);
        *(a1 + 16) = v19;
LABEL_24:
        v26 = sub_245478884();
        v27 = sub_2454789A8(v26, *v9);
        v28 = sub_24547473C();
        if (*(v28 + 44))
        {
          v29 = *(v28 + 44);
        }

        else
        {
          v29 = 260;
        }

        sub_24546FDEC((v9 + 504), v27, 0, v29, 1);
        sub_24546FF4C(v9 + 504);
        v30 = sub_24547C334();
        v31 = sub_245475188(*(*(v9 + 48) + 20));
        v37 = 0;
        v38 = 0x100000000;
        v35 = a4;
        v41 = -1;
        v39 = v31;
        v40 = 0;
        sub_24547D2BC(v30, &v35);
        v32 = *(sub_245479234() + 16);
        if (!v32)
        {
          goto LABEL_33;
        }

        while (*v32 != a2)
        {
          v32 = *(v32 + 8);
          if (!v32)
          {
            goto LABEL_33;
          }
        }

        if (sub_2454797A0(v32))
        {
          sub_2454752CC(a1);
        }

        else
        {
LABEL_33:
          v33 = sub_24547C334();
          sub_24547C27C(v33);
        }

        return 0;
      }

      else
      {
        v22 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          v35 = 67109120;
          v36 = 1537;
          _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v35, 8u);
          v22 = qword_2813CF018;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v35 = 67109120;
          v36 = 1537;
          _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v35, 8u);
        }

        v23 = sub_24547C334();
        v24 = sub_245475188(*(*(v9 + 48) + 20));
        v37 = 0;
        v38 = 0x200000000;
        v35 = a4;
        v41 = -1;
        v39 = v24;
        v40 = 0;
        sub_24547D2BC(v23, &v35);
        v25 = sub_245460D6C(v9);
        MEMORY[0x245D6A0D0](v25, 0x1030C40AE74B18ELL);
        return -2;
      }
    }
  }

  else
  {
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v35 = 67109120;
      v36 = 513;
      _os_log_error_impl(&dword_245396000, v15, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v35, 8u);
    }

    return -3;
  }
}

uint64_t sub_245475188(unsigned int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 0x11)
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v5[0]) = 0;
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "Position Method", v5, 2u);
    }

    v1 = 0;
  }

  else
  {
    v1 = dword_24548B3B8[a1];
  }

  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = v1;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_INFO, "Position Method,%u", v5, 8u);
    v3 = qword_2813CF018;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v5[0]) = 0;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplUtils::ConvertPosMethod", v5, 2u);
  }

  return v1;
}

void sub_2454752CC(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *(i + 8))
  {
    v3 = *(i + 16);
    if (v3)
    {
      if (*(v3 + 16) == 1)
      {
        *(v3 + 16) = 0;
        v4 = sub_24546E30C();
        if (v4)
        {
          v5 = v4;
          BYTE4(v14) = -1;
          v15 = 0;
          LOBYTE(v14) = 3;
          v6 = *(i + 16);
          v7 = *(v6 + 1);
          if (v7)
          {
            v8 = *v7;
            if (v8)
            {
              if (*(*(v8 + 16) + 108))
              {
                LOBYTE(v14) = 2;
              }
            }
          }

          v9 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            v10 = 0;
            _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplUtils::ProcessWaitingSuplInits, calling InitSessionNode", &v10, 2u);
            v6 = *(i + 16);
          }

          sub_24546E578(v5, v6[1], *v6, &v14, 0);
          memset(__p, 0, 25);
          v12 = 0u;
          v11 = 0u;
          v10 = 1;
          LODWORD(v11) = 56;
          (*(*v5 + 8))(v5, **(i + 16), &v10);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*(&v11 + 1))
          {
            *&v12 = *(&v11 + 1);
            operator delete(*(&v11 + 1));
          }
        }
      }
    }

    if (!*(a1 + 16))
    {
      break;
    }
  }
}

uint64_t sub_24547547C(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    return *(v2 + 16);
  }

  else
  {
LABEL_4:
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplUtils::GetSuplInitRecd, nullptr", v5, 2u);
    }

    return 0;
  }
}

void sub_24547550C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 16);
    do
    {
      if (*v4 == a2)
      {
        while (*v3 != a2)
        {
          v3 = *(v3 + 8);
          if (!v3)
          {
            goto LABEL_11;
          }
        }

        sub_245479ABC(a1, v3);
LABEL_11:
        v6 = *(v4 + 16);
        if (v6)
        {
          v7 = sub_245460D6C(v6);
          MEMORY[0x245D6A0D0](v7, 0x1030C40AE74B18ELL);
        }

        *(v4 + 8) = 0;
        *(v4 + 16) = 0;

        JUMPOUT(0x245D6A0D0);
      }

      v4 = *(v4 + 8);
    }

    while (v4);
  }

  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplUtils::DeleteSuplInitRecd, nullptr", v8, 2u);
  }
}

uint64_t sub_245475608(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (v5 == *a2)
  {
    v6 = 1;
  }

  else
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      v24 = 515;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v23, 8u);
      v7 = qword_2813CF018;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplUtils::ValidateSlpId, SLP id type not matching", &v23, 2u);
    }

    v6 = 0;
    v5 = *a2;
  }

  if (v5 == 255)
  {
    v17 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return v6;
    }

    v23 = 67109120;
    v24 = 515;
    goto LABEL_29;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v8 = a2[8];
      if (v8 == 2)
      {
        v18 = a3[5];
        v19 = a3[6] - v18;
        v20 = *(a2 + 5);
        if (v19 != *(a2 + 6) - v20 || memcmp(v18, v20, v19))
        {
          v12 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            v23 = 67109120;
            v24 = 515;
            _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v23, 8u);
            v12 = qword_2813CF018;
          }

          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            return 0;
          }

          LOWORD(v23) = 0;
          v13 = "#gpsd,#supl Leaving SuplUtils::ValidateSlpId, SLP id IPv6 not matching";
          goto LABEL_36;
        }
      }

      else if (v8 == 1)
      {
        v9 = a3[2];
        v10 = a3[3] - v9;
        v11 = *(a2 + 2);
        if (v10 != *(a2 + 3) - v11 || memcmp(v9, v11, v10))
        {
          v12 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            v23 = 67109120;
            v24 = 515;
            _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v23, 8u);
            v12 = qword_2813CF018;
          }

          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            return 0;
          }

          LOWORD(v23) = 0;
          v13 = "#gpsd,#supl Leaving SuplUtils::ValidateSlpId, SLP id IPv4 not matching";
LABEL_36:
          _os_log_debug_impl(&dword_245396000, v12, OS_LOG_TYPE_DEBUG, v13, &v23, 2u);
          return 0;
        }
      }

      else
      {
        v22 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          v23 = 67109120;
          v24 = 514;
          _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v23, 8u);
          v22 = qword_2813CF018;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v23) = 0;
          _os_log_debug_impl(&dword_245396000, v22, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplUtils::ValidateSlpId, SLP id IpAddr type out of range", &v23, 2u);
        }
      }

      return v6;
    }

    v17 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return v6;
    }

    v23 = 67109120;
    v24 = 514;
LABEL_29:
    _os_log_error_impl(&dword_245396000, v17, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v23, 8u);
    return v6;
  }

  v14 = a3[8];
  v15 = a3[9] - v14;
  v16 = *(a2 + 8);
  if (v15 != *(a2 + 9) - v16 || memcmp(v14, v16, v15))
  {
    v12 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      v24 = 515;
      _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v23, 8u);
      v12 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    LOWORD(v23) = 0;
    v13 = "#gpsd,#supl SuplUtils::ValidateSlpId, SLP id FQDN data not matching";
    goto LABEL_36;
  }

  return v6;
}

BOOL sub_245475A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8) - *a2;
  if (v4 == *(a3 + 8) - *a3 && !memcmp(*a2, *a3, v4))
  {
    return 1;
  }

  v5 = qword_2813CF018;
  result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v7[0] = 67109120;
    v7[1] = 515;
    _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v7, 8u);
    return 0;
  }

  return result;
}

BOOL sub_245475B3C(uint64_t a1, int a2, int a3)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2 == a3)
  {
    return 1;
  }

  v4 = qword_2813CF018;
  result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v5[0] = 67109120;
    v5[1] = 515;
    _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v5, 8u);
    return 0;
  }

  return result;
}

BOOL sub_245475BF4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (v3 == *a3)
  {
    if (*a2 > 4u)
    {
      if (v3 != 5)
      {
        if (v3 == 6)
        {
          v13 = a2[128];
          if (v13 != a3[128])
          {
            v7 = qword_2813CF018;
            result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
            if (result)
            {
              v14 = 67109120;
              v15 = 515;
              goto LABEL_12;
            }

            return result;
          }

          if (v13 != 2 && v13 != 1)
          {
            v7 = qword_2813CF018;
            result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
            if (result)
            {
              v14 = 67109120;
              v15 = 515;
              goto LABEL_12;
            }

            return result;
          }

          return 1;
        }

        if (v3 != 255)
        {
          goto LABEL_20;
        }
      }
    }

    else if ((v3 - 2) >= 2)
    {
      if (v3 == 1)
      {
        v10 = *(a2 + 1);
        v11 = *(a2 + 2) - v10;
        v12 = *(a3 + 1);
        if (v11 != *(a3 + 2) - v12 || memcmp(v10, v12, v11))
        {
          v7 = qword_2813CF018;
          result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v14 = 67109120;
            v15 = 515;
            goto LABEL_12;
          }

          return result;
        }

        return 1;
      }

      if (v3 == 4)
      {
        v4 = *(a2 + 10);
        v5 = *(a2 + 11) - v4;
        v6 = *(a3 + 10);
        if (v5 != *(a3 + 11) - v6 || memcmp(v4, v6, v5))
        {
          v7 = qword_2813CF018;
          result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v14 = 67109120;
            v15 = 515;
LABEL_12:
            _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v14, 8u);
            return 0;
          }

          return result;
        }

        return 1;
      }

LABEL_20:
      v7 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v14 = 67109120;
        v15 = 515;
        goto LABEL_12;
      }

      return result;
    }

    v9 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      v15 = 770;
      _os_log_error_impl(&dword_245396000, v9, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v14, 8u);
    }

    return 1;
  }

  v7 = qword_2813CF018;
  result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v14 = 67109120;
    v15 = 515;
    goto LABEL_12;
  }

  return result;
}

double sub_245475EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_245479234();
  v7 = sub_245479750(v6, v3);
  v8 = 0;
  *(a2 + 36) = 0;
  if (!*(a1 + 296))
  {
    v8 = *(a1 + 284) == 1;
  }

  if (!v7)
  {
    v8 = 0;
  }

  *a2 = v8;
  result = *(a1 + 288);
  *(a2 + 4) = result;
  *(a2 + 40) = 0;
  *(a2 + 32) = 0;
  return result;
}

void sub_245475F5C(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_245475EE8(a1, a2, a4);
  if (a1[72] == 1)
  {
    *(a2 + 28) = 1;
  }

  if ((a3 & 0xFFFFFFFD) == 0 && !a1[74] && a1[71] == 1)
  {
    *(a2 + 28) = 0;
  }
}

void sub_245475FC4(int a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 + 224 != a2)
  {
    sub_2453ADF3C(a2, *(a3 + 224), *(a3 + 232), *(a3 + 232) - *(a3 + 224));
  }

  v5 = *(a3 + 248);
  *(a2 + 24) = v5;
  if (v5 == 255)
  {
    v11 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 67109120;
    v13 = 515;
    goto LABEL_25;
  }

  if (v5 == 2)
  {
    v7 = (a2 + 88);
    if (a2 + 88 == a3 + 312)
    {
      return;
    }

    v8 = *(a3 + 312);
    v9 = *(a3 + 320);
    v10 = v9 - v8;

    goto LABEL_13;
  }

  if (v5 != 1)
  {
    v11 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 67109120;
    v13 = 514;
    goto LABEL_25;
  }

  v6 = *(a3 + 256);
  *(a2 + 32) = v6;
  if (v6 == 2)
  {
    v7 = (a2 + 64);
    if (a2 + 64 != a3 + 288)
    {
      v8 = *(a3 + 288);
      v9 = *(a3 + 296);
LABEL_20:
      v10 = v9 - v8;

LABEL_13:
      sub_2453ADF3C(v7, v8, v9, v10);
    }
  }

  else
  {
    if (v6 == 1)
    {
      v7 = (a2 + 40);
      if (a2 + 40 == a3 + 264)
      {
        return;
      }

      v8 = *(a3 + 264);
      v9 = *(a3 + 272);
      goto LABEL_20;
    }

    v11 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v12 = 67109120;
      v13 = 514;
LABEL_25:
      _os_log_error_impl(&dword_245396000, v11, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v12, 8u);
    }
  }
}

void sub_2454761F8(int a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v17 = 67109120;
      v18 = 515;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v17, 8u);
    }

    return;
  }

  *a2 = 0;
  v4 = *(a3 + 1);
  if (v4 <= 0xA)
  {
    if (((1 << v4) & 0x523) != 0)
    {
      goto LABEL_4;
    }

    if (v4 == 3)
    {
      v13 = *(a3 + 32);
      *(a2 + 48) = v13;
      *(a2 + 52) = *(a3 + 40);
      *(a2 + 44) = (v13 & 0x800000) != 0;
      *(a2 + 40) = 0;
      *(a2 + 32) = 1;
      *(a2 + 58) = *(a3 + 64);
      *(a2 + 56) = *(a3 + 48);
      v11 = *(a3 + 56);
      v12 = 65;
LABEL_27:
      v15 = (a2 + 8);
      v14 = *(a2 + 8);
      *(a2 + 57) = v11;
      *(a2 + 36) = 1;
      *(a2 + 59) = *(a3 + v12);
      v16 = *(a2 + 16) - v14;
      if (v16 > 0xC)
      {
        if (v16 != 13)
        {
          *(a2 + 16) = v14 + 13;
        }
      }

      else
      {
        sub_2453A6334(v15, 13 - v16);
        v14 = *v15;
      }

      *v14 = (*(a3 + 216) / 0xAu - 10 * ((6554 * (*(a3 + 216) / 0xAu)) >> 16)) | 0x30;
      (*v15)[1] = (*(a3 + 216) % 0xAu) | 0x30;
      (*v15)[2] = (*(a3 + 218) / 0xAu - 10 * ((26 * (*(a3 + 218) / 0xAu)) >> 8)) | 0x30;
      (*v15)[3] = (*(a3 + 218) % 0xAu) | 0x30;
      (*v15)[4] = (*(a3 + 219) / 0xAu - 10 * ((26 * (*(a3 + 219) / 0xAu)) >> 8)) | 0x30;
      (*v15)[5] = (*(a3 + 219) % 0xAu) | 0x30;
      (*v15)[6] = (*(a3 + 220) / 0xAu - 10 * ((26 * (*(a3 + 220) / 0xAu)) >> 8)) | 0x30;
      (*v15)[7] = (*(a3 + 220) % 0xAu) | 0x30;
      (*v15)[8] = (*(a3 + 221) / 0xAu - 10 * ((26 * (*(a3 + 221) / 0xAu)) >> 8)) | 0x30;
      (*v15)[9] = (*(a3 + 221) % 0xAu) | 0x30;
      (*v15)[10] = (*(a3 + 222) / 0xAu - 10 * ((26 * (*(a3 + 222) / 0xAu)) >> 8)) | 0x30;
      (*v15)[11] = (*(a3 + 222) % 0xAu) | 0x30;
      (*v15)[12] = 90;
      return;
    }

    if (v4 == 9)
    {
      *(a2 + 44) = (*(a2 + 48) & 0x800000) != 0;
      *(a2 + 48) = *(a3 + 68) & 0x7FFFFF;
      *(a2 + 52) = *(a3 + 76);
      v8 = *(a3 + 84);
      v9 = *(a3 + 108);
      if (v8 != 0xFFFF && v9 != 255)
      {
        *(a2 + 40) = 1;
      }

      *(a2 + 64) = v9;
      *(a2 + 60) = v8 >> 15;
      *(a2 + 62) = v8 & 0x7FFF;
      v10 = *(a3 + 92);
      v11 = *(a3 + 100);
      if (v10 != 255 && v11 != 255 && *(a3 + 116) != 255)
      {
        *(a2 + 32) = 1;
      }

      *(a2 + 58) = *(a3 + 116);
      *(a2 + 56) = v10;
      v12 = 117;
      goto LABEL_27;
    }
  }

  if (v4 == 255)
  {
LABEL_4:
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v17 = 67109120;
      v18 = 770;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v17, 8u);
      v5 = qword_2813CF018;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      v6 = "#gpsd,#supl Leaving SuplUtils::ConvertLocEstimatetoAsn1Position, invalid/unsupported shape type";
LABEL_8:
      _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, v6, &v17, 2u);
      return;
    }

    return;
  }

  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    v17 = 67109120;
    v18 = 515;
    _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v17, 8u);
    v5 = qword_2813CF018;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17) = 0;
    v6 = "#gpsd,#supl Leaving SuplUtils::ConvertLocEstimatetoAsn1Position, invalid shape type";
    goto LABEL_8;
  }
}

BOOL sub_2454766B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == 2)
  {
    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v15 = 0;
    v5 = "Last know position fix is not valid";
    v6 = &v15;
    goto LABEL_10;
  }

  if (*(a3 + 1) != 9)
  {
    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v5 = "Last know position shape type is not valid";
    v6 = buf;
    goto LABEL_10;
  }

  if (*(a3 + 92) > *(a2 + 12))
  {
    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v13 = 0;
    v5 = "stored semiminor axis is not valid";
    v6 = &v13;
    goto LABEL_10;
  }

  if (*a2 == 1 && *(a3 + 108) > *(a2 + 13))
  {
    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (result)
    {
      v12 = 0;
      v5 = "vertical accuracy is not valid";
      v6 = &v12;
LABEL_10:
      _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_INFO, v5, v6, 2u);
      return 0;
    }
  }

  else
  {
    if (*(a2 + 4) != 1)
    {
      return 1;
    }

    v9 = sub_24539D8D0();
    HIDWORD(v10) = 1041313291;
    LODWORD(v10) = *(a3 + 228);
    if (1000 * *(a2 + 16) >= -(v10 - v9 * 0.000000001 * 1000.0))
    {
      return 1;
    }

    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (result)
    {
      v11 = 0;
      v5 = "maxlocation age is not valid";
      v6 = &v11;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_245476890(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 56) = *(a1 + 104);
  *(a2 + 40) = v6;
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  v7 = *(a1 + 120);
  v8 = *(a1 + 136);
  v9 = *(a1 + 152);
  *(a2 + 120) = *(a1 + 168);
  *(a2 + 104) = v9;
  *(a2 + 88) = v8;
  *(a2 + 72) = v7;
  v10 = *(a1 + 184);
  v11 = *(a1 + 200);
  v12 = *(a1 + 216);
  *(a2 + 184) = *(a1 + 232);
  *(a2 + 168) = v12;
  *(a2 + 152) = v11;
  *(a2 + 136) = v10;
  if (a1 + 48 != a2)
  {
    sub_245476F84((a2 + 192), *(a1 + 240), *(a1 + 248), (*(a1 + 248) - *(a1 + 240)) >> 4);
  }

  *(a2 + 216) = *(a1 + 264);
  return 0;
}

unsigned __int8 *sub_24547694C(unsigned __int8 *result, char *__str)
{
  v2 = *result;
  if (v2 == 1)
  {
    v5 = result[8];
    if (v5 == 2)
    {
      *(__str + 64) = 2;
      v6 = *(result + 5);
      return snprintf(__str, 0x100uLL, "%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", *v6, v6[1], v6[2], v6[3], v6[4], v6[5]);
    }

    else if (v5 == 1)
    {
      *(__str + 64) = 1;
      return snprintf(__str, 0x100uLL, "%d.%d.%d.%d");
    }
  }

  else if (v2 == 2)
  {
    *(__str + 64) = 3;
    v3 = *(result + 8);
    v4 = *(result + 9);
    if (v4 != v3)
    {

      return memmove(__str, v3, v4 - v3);
    }
  }

  else
  {
    *(__str + 64) = 0;
  }

  return result;
}

uint64_t sub_245476A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*a3 != *(a3 + 8))
  {
    LOWORD(buf) = 0;
    v6 = sub_245445AC4();
    v7 = atomic_load((v6 + 1));
    v8 = v7 == 255;
    v9 = 1;
    if (v8)
    {
      v9 = 2;
    }

    v10 = atomic_load((v6 + v9));
    BYTE2(buf) = v10;
    *(&buf + 3) = 0;
    v28 = -1;
    v29 = 0;
    sub_2454735D8(v30);
    __p = 0;
    v23 = 0;
    v24 = 0;
    sub_2453AE4E0(&__p, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    v20[0] = &__p;
    v20[1] = 0;
    v21 = 0;
    v19[0] = v20;
    v19[1] = &buf;
    if (sub_2454667D8(v19) || v28 != 1)
    {
      v16 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v25 = 67109120;
        v26 = 515;
        _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v25, 8u);
      }

      v15 = -5;
      goto LABEL_43;
    }

    v11 = v29;
    *(a4 + 5) = *(v29 + 224) == 0;
    *(a4 + 6) = BYTE2(buf);
    *(a4 + 7) = *(&buf + 3);
    *(a4 + 12) = sub_245475188(*(v11 + 20));
    *(a4 + 272) = 0;
    if (v30[1] == 1)
    {
      sub_24547694C(v47, (a4 + 16));
    }

    *(a4 + 536) = 0;
    if (*(v11 + 292) == 1)
    {
      sub_24547694C((v11 + 592), (a4 + 280));
    }

    *(a4 + 800) = 0;
    if (*(v11 + 4) == 1)
    {
      sub_24547694C((v11 + 112), (a4 + 544));
    }

    *(a4 + 808) = *(v11 + 108) != 0;
    *(a4 + 812) = 0;
    if (*v11 == 1)
    {
      v12 = *(v11 + 44);
      if (v12 <= 4)
      {
        *(a4 + 812) = v12 + 1;
      }
    }

    *(a4 + 816) = 0;
    if (*(v11 + 304))
    {
      v13 = *(v11 + 792);
      if (v13 == 1)
      {
        *(a4 + 816) = 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }

      if (*(v11 + 796) == 1)
      {
        LOBYTE(v13) = v13 | 2;
        *(a4 + 816) = v13;
      }

      if (*(v11 + 800) == 1)
      {
        LOBYTE(v13) = v13 | 4;
        *(a4 + 816) = v13;
      }

      if (*(v11 + 804) == 1)
      {
        LOBYTE(v13) = v13 | 8;
        *(a4 + 816) = v13;
      }

      if (*(v11 + 808) == 1)
      {
        LOBYTE(v13) = v13 | 0x10;
        *(a4 + 816) = v13;
      }

      if (*(v11 + 812) == 1)
      {
        *(a4 + 816) = v13 | 0x20;
      }
    }

    *(a4 + 817) = 0;
    if (*(v11 + 8) == 1)
    {
      *(a4 + 817) = 1;
      *(a4 + 820) = *(v11 + 212);
      *(a4 + 824) = *(v11 + 216);
      *(a4 + 828) = *(v11 + 220);
    }

    *(a4 + 832) = 0;
    if (*(v11 + 288) == 1)
    {
      v17 = *(v11 + 584);
      if (v17 == 1)
      {
LABEL_41:
        *(a4 + 832) = v17;
        goto LABEL_42;
      }

      if (!*(v11 + 584))
      {
        v17 = 2;
        goto LABEL_41;
      }
    }

LABEL_42:
    v15 = 0;
    *(a4 + 4) = 1;
LABEL_43:
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    sub_2454660B0(&v28);
    return v15;
  }

  v14 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    buf = 0x20304000100;
    _os_log_error_impl(&dword_245396000, v14, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &buf, 8u);
  }

  return -5;
}

void sub_245476E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2454615CC(&a19);
  _Unwind_Resume(a1);
}

void sub_245476ED4(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (a2 > 0x17)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_24548B3FC[a2];
  }

  *a3 = v3;
}

void sub_245476EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      v3 = *(v1 + 8);
      if (*(v1 + 16))
      {
        v4 = sub_24546E30C();
        sub_24546F540(v4, **(v1 + 16));
        v5 = sub_24546A68C();
        sub_245448DD0(off_27EE134B8, **(v1 + 16));
        sub_24546B0B4(v5);
        sub_24547550C(a1, **(v1 + 16));
      }

      v1 = v3;
    }

    while (v3);
  }
}

void **sub_245476F84(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 60))
      {
        operator new();
      }
    }

    sub_2453A631C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_2454770D4(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_2453A631C();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_245477218(char **a1, unsigned int *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - *a1;
  if (((v8 + 9) & 0x3F) != 0)
  {
    v9 = ((v8 + 9) >> 6) + 1;
  }

  else
  {
    v9 = (v8 + 9) >> 6;
  }

  *a2 = v9;
  if (a3 != a1)
  {
    sub_2453ADF3C(a3, v6, v7, v8);
    v9 = *a2;
  }

  v10 = v9 << 6;
  v11 = *a3;
  v12 = a3[1] - *a3;
  if (v10 <= v12)
  {
    if (v10 < v12)
    {
      a3[1] = v11 + v10;
    }
  }

  else
  {
    sub_2453A6334(a3, v10 - v12);
    v11 = *a3;
  }

  *(v11 + (*(a1 + 2) - *a1)) = 0x80;
  v13 = 8 * (a1[1] - *a1);
  if (v13)
  {
    v14 = *a2 << 6;
    if (v14)
    {
      v15 = v14 - 1;
      do
      {
        *(*a3 + v15) = v13;
        v17 = v15-- != 0;
        if (v13 < 0x100)
        {
          break;
        }

        v13 >>= 8;
      }

      while (v17);
    }
  }
}

uint64_t *sub_2454772FC(uint64_t *result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(v3 + 4 * v4);
      if (v6)
      {
        v7 = (4 * v5) | 3;
        do
        {
          *(*a2 + v7) = v6;
          v9 = v7-- != 0;
          if (v6 < 0x100)
          {
            break;
          }

          v6 >>= 8;
        }

        while (v9);
        v3 = *result;
        v2 = result[1];
      }

      v4 = ++v5;
    }

    while (v5 < ((v2 - v3) >> 2));
  }

  return result;
}

void sub_24547735C(uint64_t a1, char **a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = xmmword_24548B470;
  v5 = -1009589776;
  memset(v3, 0, sizeof(v3));
  sub_2454782AC(v3, &v4, &v6, 5);
}

void sub_245477784(uint64_t a1, char **a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  *__p = xmmword_24548B584;
  v5 = unk_24548B594;
  memset(v3, 0, sizeof(v3));
  sub_2454782AC(v3, __p, v6, 8);
}

uint64_t sub_245477B64(void **__src, char **a2, void **a3)
{
  v4 = __src;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = *(__src + 23);
  if ((v5 & 0x80) != 0)
  {
    v5 = __src[1];
    if (v5 - 1 < 0x100)
    {
      if (v5 <= 0x40)
      {
        v4 = *__src;
        goto LABEL_16;
      }

LABEL_7:
      sub_2453A6258(&v15, 20);
      v16 = 20;
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = *v4;
      }

      if (v6 >= 0)
      {
        v8 = *(v4 + 23);
      }

      else
      {
        v8 = v4[1];
      }

      memset(__p, 0, sizeof(__p));
      sub_24547847C(__p, v7, &v7[v8], v8);
      sub_24547735C(&v15, __p, &v17);
    }
  }

  else if (*(__src + 23))
  {
    if (v5 < 0x41)
    {
LABEL_16:
      sub_2454784F0(&v17, v4, v4 + v5, v5);
      v9 = v18 - v17;
      if ((v18 - v17) > 0x3F)
      {
        if (v9 != 64)
        {
          v18 = v17 + 64;
        }
      }

      else
      {
        sub_2453A6334(&v17, 64 - v9);
      }

      sub_2453A6258(v14, 64);
      for (i = 0; i != 64; ++i)
      {
        *(v14[0] + i) = v17[i] ^ 0x36;
      }

      sub_24546FB28(v14, v14[1], *a2, a2[1], a2[1] - *a2);
      sub_2453A6258(&v15, 20);
      v16 = 20;
      sub_2453A6258(&v13, 20);
      sub_24547735C(&v15, v14, &v13);
    }

    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

void sub_245477E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 88);
  if (v26)
  {
    *(v24 - 80) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    *(v24 - 48) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245477F08(void **__src, char **a2, void **a3)
{
  v4 = __src;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = *(__src + 23);
  if ((v5 & 0x80) != 0)
  {
    v5 = __src[1];
    if (v5 - 1 < 0x100)
    {
      if (v5 <= 0x40)
      {
        v4 = *__src;
        goto LABEL_16;
      }

LABEL_7:
      sub_2453A6258(&v15, 32);
      v16 = 32;
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = *v4;
      }

      if (v6 >= 0)
      {
        v8 = *(v4 + 23);
      }

      else
      {
        v8 = v4[1];
      }

      memset(__p, 0, sizeof(__p));
      sub_24547847C(__p, v7, &v7[v8], v8);
      sub_245477784(&v15, __p, &v17);
    }
  }

  else if (*(__src + 23))
  {
    if (v5 < 0x41)
    {
LABEL_16:
      sub_2454784F0(&v17, v4, v4 + v5, v5);
      v9 = v18 - v17;
      if ((v18 - v17) > 0x3F)
      {
        if (v9 != 64)
        {
          v18 = v17 + 64;
        }
      }

      else
      {
        sub_2453A6334(&v17, 64 - v9);
      }

      sub_2453A6258(v14, 64);
      for (i = 0; i != 64; ++i)
      {
        *(v14[0] + i) = v17[i] ^ 0x36;
      }

      sub_24546FB28(v14, v14[1], *a2, a2[1], a2[1] - *a2);
      sub_2453A6258(&v15, 32);
      v16 = 32;
      sub_2453A6258(&v13, 32);
      sub_245477784(&v15, v14, &v13);
    }

    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

void sub_2454781C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 88);
  if (v26)
  {
    *(v24 - 80) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    *(v24 - 48) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_245478340(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24547835C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_2454783D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_245478460(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24547847C(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_2453A62CC(result, a4);
  }

  return result;
}

void sub_2454784D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2454784F0(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = 2 * v7;
    if (2 * v7 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_2453A62CC(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = (&a3[v11] - v13);
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_245478620(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  if (__len < 1)
  {
    return;
  }

  v5 = __len;
  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_2453A631C();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v6++;
      *v32++ = v33;
      --v5;
    }

    while (v5);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = __dst;
    v36 = *a1;
    v37 = &v30[*a1 - __dst];
    memcpy(v37, *a1, &__dst[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }

    return;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = __dst;
    v24 = v6;
    v25 = v5;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &__dst[v5];
    v20 = &v10[v17];
    if (&v18[-v5] < v10)
    {
      v21 = (a4 - &v6[v5]);
      v22 = (a4 - v6);
      do
      {
        __dst[v22++] = __dst[v21++];
      }

      while (&__dst[v21] < v10);
      v20 = &__dst[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&__dst[v5], __dst, v18 - v19);
    }

    v23 = __dst;
    v24 = v6;
    v25 = v10 - __dst;
LABEL_27:

    memmove(v23, v24, v25);
  }
}

uint64_t sub_245478884()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_2813CED88 != -1)
  {
    dispatch_once(&qword_2813CED88, &unk_28585A838);
  }

  result = qword_2813CED80;
  if (!qword_2813CED80)
  {
    v1 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v1, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
    }

    __assert_rtn("GetInstance", "LcsUtils.cpp", 63, "false && Memory allocation failure");
  }

  return result;
}

void *sub_24547897C()
{
  result = operator new(1uLL, MEMORY[0x277D826F0]);
  qword_2813CED80 = result;
  return result;
}

uint64_t sub_2454789A8(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = (a2 + 0xFFFF);
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_INFO, "GenerateReqIdForSessionTimer  New sessionTimerrquestID[%d] is generated", v5, 8u);
  }

  return v2;
}

uint64_t sub_245478A50(uint64_t *a1)
{
  v2 = *a1;
  if (*(v2 + 752))
  {
    sub_24546A610(v2, 9);
  }

  if (!*(v2 + 803))
  {
    free(*(v2 + 760));
    v2 = *a1;
  }

  free(v2);
  *a1 = 0;
  return 0;
}

uint64_t sub_245478AA4(uint64_t *a1, uint64_t *a2)
{
  if (!a2)
  {
    return 6;
  }

  v4 = malloc_type_calloc(1uLL, 0x3C0uLL, 0x10F0040998F192CuLL);
  bzero(v4 + 2, 0x3BCuLL);
  result = 0;
  *a1 = v4;
  *v4 = 0;
  v4[361] = -1;
  *(v4 + 91) = 0;
  *(*a1 + 736) = 0;
  *(*a1 + 744) = 0;
  v6 = *a1;
  *(v6 + 752) = 0;
  *(v6 + 824) = 2080;
  *(v6 + 832) = 0;
  *(v6 + 880) = 0;
  *(*a1 + 944) = 0;
  v7 = *a1;
  *(v7 + 888) = 0;
  *(v7 + 896) = 0;
  v8 = *a1;
  *(v8 + 906) = 0;
  *(v8 + 904) = 0;
  *(v8 + 928) = 0;
  *(v8 + 936) = 0;
  *(*a1 + 936) = 0;
  v9 = *a1;
  v10 = (*a1 + 760);
  v10[1] = xmmword_24548B5B8;
  v10[2] = unk_24548B5C8;
  *v10 = xmmword_24548B5A8;
  v11 = *a2;
  *(v9 + 768) = *a2 + a2[1];
  *(v9 + 760) = v11;
  *(v9 + 792) = v11;
  *(v9 + 776) = v11;
  *(v9 + 784) = v11 + a2[2];
  *(v9 + 803) = 1;
  return result;
}

char *sub_245478BC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 803))
  {
    sub_24546A610(a1, 7);
  }

  v3 = *(a1 + 768) - *(a1 + 760) + a2;
  v4 = malloc_type_calloc(1uLL, v3, 0xF10AFBA4uLL);
  bzero(v4, v3);
  if (!v4)
  {
    sub_24546A610(a1, 1);
  }

  memcpy(v4, *(a1 + 760), *(a1 + 768) - *(a1 + 760));
  v5 = *(a1 + 760);
  *(a1 + 776) = &v4[*(a1 + 776) - v5];
  *(a1 + 784) = &v4[*(a1 + 784) - v5];
  *(a1 + 792) = &v4[*(a1 + 792) - v5];
  free(v5);
  *(a1 + 760) = v4;
  *(a1 + 768) = &v4[v3];
  return v4;
}

uint64_t sub_245478CA0(uint64_t a1)
{
  if (*(a1 + 752))
  {
    sub_24546A610(a1, 8);
  }

  v1 = *(a1 + 760);
  *(a1 + 776) = v1;
  *(a1 + 784) = v1;
  *(a1 + 792) = v1;
  *(a1 + 800) = 1799;
  *(a1 + 802) = 7;
  *a1 = 0;
  *(a1 + 752) = 2;
  return 0;
}

uint64_t sub_245478CF0(uint64_t a1)
{
  if (*(a1 + 752))
  {
    sub_24546A610(a1, 8);
  }

  *(a1 + 792) = *(a1 + 776);
  *(a1 + 802) = *(a1 + 800);
  *a1 = 0;
  *(a1 + 752) = 1;
  return 0;
}

uint64_t sub_245478D30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 752) != 1)
  {
    sub_24546A610(a1, 11);
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 802) != 7)
  {
    sub_24546A610(a1, 15);
  }

  result = *(a1 + 792);
  v5 = *(a1 + 784) - result;
  if (a2 > v5)
  {
    v6 = *(a1 + 736);
    if (v6)
    {
      v6(a1, (a2 - v5));
      result = *(a1 + 792);
      v5 = *(a1 + 784) - result;
    }

    if (*(a1 + 801) != 7)
    {
      ++v5;
    }

    if (v5 < a2)
    {
      sub_24546A610(a1, 12);
    }
  }

  *(a1 + 792) = result + a2;
  return result;
}

uint64_t sub_245478E04(unsigned int *a1, void *a2)
{
  bzero(a2, 0xA28uLL);

  return sub_2454577F8(a1, byte_278E801D8, a2);
}

uint64_t sub_245478E68(unsigned int *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  return sub_2454577F8(a1, byte_278E78008, a2);
}

uint64_t sub_245478E8C(unsigned int a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, int *a6, uint64_t a7, void **a8, uint64_t a9)
{
  if (a8)
  {
    v14 = *a8;
    if (*a8)
    {
      if (!*v14 || !v14[1] || !v14[2])
      {
        return 15;
      }
    }
  }

  v23 = 0;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a4;
  sub_245478AA4(&v23, v24);
  v15 = v23;
  *(v23 + 944) = a8;
  v24[0] = v15;
  sub_245478CF0(v15);
  if (a1 == 13)
  {
    goto LABEL_9;
  }

  *(v15 + 824) = 2064;
  if (a1 > 0x1D)
  {
    goto LABEL_21;
  }

  if (((1 << a1) & 0x24000023) == 0)
  {
    if (a1 == 4)
    {
      if (a2 > 7)
      {
        goto LABEL_9;
      }

      if (byte_27EE134B0)
      {
        v18 = 0;
        v19 = byte_28585A858;
        v16 = 15;
        while (1)
        {
          v20 = *v19;
          v19 += 16;
          if (v20 == a2)
          {
            break;
          }

          if (byte_27EE134B0 == ++v18)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        LODWORD(v18) = 0;
      }

      if (v18 == byte_27EE134B0)
      {
        goto LABEL_9;
      }

      v22 = *&byte_28585A858[16 * v18 + 8];
      if (!v22)
      {
        goto LABEL_9;
      }

      v16 = v22(v15, a5, a9);
      if (!a6)
      {
        goto LABEL_10;
      }

      v21 = *(v15 + 800) - *(v15 + 802) + 8 * (*(v15 + 792) - *(v15 + 776));
LABEL_23:
      *a6 = v21;
      goto LABEL_10;
    }

LABEL_21:
    v16 = 15;
    if (!a6)
    {
      goto LABEL_10;
    }

    v21 = 0;
    goto LABEL_23;
  }

LABEL_9:
  v16 = 15;
LABEL_10:
  if (*(v15 + 752) != 1)
  {
    sub_24546A610(v15, 10);
  }

  *(v15 + 752) = 0;
  sub_245478A50(v24);
  return v16;
}

uint64_t sub_24547903C(int a1, unsigned int a2, uint64_t *a3, _DWORD *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a6)
  {
    return 15;
  }

  *a3 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a1 != 4)
  {
    return 15;
  }

  v29 = 0;
  v30 = &unk_27EE13511;
  v31 = vdupq_n_s64(0x1000uLL);
  sub_245478AA4(&v29, &v30);
  v14 = v29;
  *(v29 + 944) = 0;
  v30 = v14;
  sub_245478CA0(v14);
  if (a2 >= 8)
  {
    if (*(v14 + 752) == 2)
    {
      v19 = (v14 + 752);
      v18 = 15;
LABEL_36:
      *v19 = 0;
LABEL_37:
      sub_245478A50(&v30);
      return v18;
    }

LABEL_39:
    sub_24546A610(v14, 10);
  }

  if (byte_27EE134B1)
  {
    v15 = 0;
    v16 = byte_28585A888;
    while (1)
    {
      v17 = *v16;
      v16 += 16;
      if (v17 == a2)
      {
        break;
      }

      if (byte_27EE134B1 == ++v15)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 != byte_27EE134B1)
  {
    v20 = *&byte_28585A888[16 * v15 + 8];
    if (v20)
    {
      v18 = v20(v14, a6, a8);
      if (!v14)
      {
        return v18;
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  v18 = 15;
  if (v14)
  {
LABEL_22:
    if (*(v14 + 752) == 2)
    {
      v19 = (v14 + 752);
      *(v14 + 752) = 0;
      if (!a5 || v18)
      {
        goto LABEL_37;
      }

      sub_245478CF0(v14);
      v21 = *(v14 + 784);
      v22 = *(v14 + 776);
      if (a4)
      {
        v23 = v21 - v22;
        v24 = *(v14 + 800);
        v25 = *(v14 + 801);
        *a4 = v24 - v25 + 8 * v23;
      }

      else
      {
        v24 = *(v14 + 800);
        v25 = *(v14 + 801);
        v23 = v21 - v22;
      }

      v26 = v24 <= v25 ? v23 : v23 + 1;
      *a5 = v26;
      v27 = sub_245478D30(v14, v26);
      if (*a5 && v27)
      {
        *a3 = v27;
      }

      if (*v19 == 1)
      {
        v18 = 0;
        goto LABEL_36;
      }
    }

    goto LABEL_39;
  }

  return v18;
}

uint64_t sub_245479234()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_2813CED98 != -1)
  {
    dispatch_once(&qword_2813CED98, &unk_28585A898);
  }

  result = qword_2813CED90;
  if (!qword_2813CED90)
  {
    v1 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v1, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
    }

    __assert_rtn("GetInstance", "SimUtils.cpp", 50, "false && Memory allocation failure");
  }

  return result;
}

void *sub_24547932C()
{
  result = operator new(0x18uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  qword_2813CED90 = result;
  return result;
}

char *sub_245479364(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    do
    {
      ++v5;
      v6 = *(v6 + 8);
    }

    while (v6);
    if (v5 >= 3)
    {
      v7 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        v14 = 0;
        v8 = "No slots available for storing SimId";
        v9 = &v14;
LABEL_17:
        _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
        return 0;
      }

      return 0;
    }
  }

  result = operator new(0x100uLL, MEMORY[0x277D826F0]);
  if (!result)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v8 = "NULL Data";
      v9 = &v13;
      goto LABEL_17;
    }

    return 0;
  }

  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 12) = 0u;
  *(result + 13) = 0u;
  *(result + 10) = 0u;
  *(result + 11) = 0u;
  *(result + 8) = 0u;
  *(result + 9) = 0u;
  *(result + 6) = 0u;
  *(result + 7) = 0u;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  *(result + 24) = 7275;
  *(result + 16) = 0;
  *(result + 18) = -1;
  *(result + 97) = 0;
  *(result + 92) = 0;
  *(result + 84) = 0;
  *(result + 76) = 0;
  *(result + 29) = 0;
  *(result + 124) = -1;
  *(result + 72) = 0;
  *(result + 74) = -1;
  *(result + 20) = 0;
  *(result + 21) = 0;
  *(result + 174) = 0;
  *(result + 19) = 0;
  *(result + 23) = 0;
  *(result + 24) = 0;
  *(result + 25) = 0;
  result[208] = 1;
  *(result + 28) = 0;
  *(result + 29) = 0;
  *(result + 112) = -1;
  *(result + 30) = 0;
  *(result + 31) = 0;
  v11 = v4;
  *result = a2;
  while (v11)
  {
    v12 = v11;
    v11 = *(v11 + 8);
    if (!v11)
    {
      *(v12 + 8) = result;
      *(result + 1) = 0;
      return result;
    }
  }

  *(result + 1) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_245479500(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 1);
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v4 = sub_245479364(a1, a2);
    if (!v4)
    {
      return -1;
    }
  }

  v4[16] = *a3;
  std::string::operator=(v4 + 1, (a3 + 8));
  v5 = 0;
  *(v4 + 24) = *(a3 + 32);
  return v5;
}

uint64_t sub_245479574(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_15:
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = 515;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v10, 8u);
    }

    return -1;
  }

  while (*v4 != a4)
  {
    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  memset(&__p, 0, sizeof(__p));
  v12 = 7275;
  LOBYTE(v10[0]) = *(v4 + 16);
  std::string::operator=(&__p, (v4 + 24));
  v12 = *(v4 + 48);
  if (!LOBYTE(v10[0]) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (size = HIBYTE(__p.__r_.__value_.__r.__words[2])) : (size = __p.__r_.__value_.__l.__size_), !size))
  {
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_15;
  }

  *a2 = v10[0];
  std::string::operator=((a2 + 8), &__p);
  *(a2 + 32) = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_2454796D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2454796F4(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = sub_245479364(a1, a2);
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  sub_245464DF4(v4 + 56, a3);
  result = mach_continuous_time();
  *(v4 + 216) = 0;
  return result;
}

BOOL sub_245479750(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  while (*v2 != a2)
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 56) == 4 && (v3 = *(v2 + 200)) != 0 && *v3 == 3;
}

BOOL sub_2454797A0(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 56))
  {
    v10 = qword_2813CF008;
    result = os_log_type_enabled(qword_2813CF008, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v11[0]) = 0;
    v7 = "CellInfo";
    v8 = v10;
    v9 = 2;
    goto LABEL_7;
  }

  Current = CFAbsoluteTimeGetCurrent();
  LODWORD(v3) = *(a1 + 216);
  v4 = -(v3 - Current * 1000.0);
  if (v4 >= 0x1389)
  {
    v5 = qword_2813CF008;
    result = os_log_type_enabled(qword_2813CF008, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v11[0] = 67109120;
    v11[1] = v4;
    v7 = "time diff is greater than 5000 millisecs value,%d";
    v8 = v5;
    v9 = 8;
LABEL_7:
    _os_log_impl(&dword_245396000, v8, OS_LOG_TYPE_DEFAULT, v7, v11, v9);
    return 0;
  }

  return 1;
}

char *sub_2454798BC(uint64_t a1, int a2, uint64_t a3)
{
  result = *(a1 + 16);
  if (result)
  {
    while (*result != a2)
    {
      result = *(result + 1);
      if (!result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = sub_245479364(a1, a2);
    if (!result)
    {
      return result;
    }
  }

  *(result + 112) = *a3;
  if (result + 224 != a3)
  {
    v6 = *(a3 + 8);
    v7 = *(a3 + 16);
    v8 = (result + 232);

    return sub_2453ADF3C(v8, v6, v7, v7 - v6);
  }

  return result;
}

uint64_t *sub_245479944(uint64_t *result, int a2, uint64_t *a3)
{
  v3 = result[2];
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        return result;
      }
    }

    *a3 = *(v3 + 224);
    if ((v3 + 224) != a3)
    {
      return sub_2453ADF3C(a3 + 1, *(v3 + 232), *(v3 + 240), *(v3 + 240) - *(v3 + 232));
    }
  }

  return result;
}

void sub_245479990(uint64_t a1, char *a2)
{
  sub_2453B414C(&__p, "NULLFileName");
  if (a2)
  {
    sub_2453B414C(&__str, a2);
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    p_str = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v5 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
    do
    {
      if (!size)
      {
        goto LABEL_14;
      }

      v6 = v5[size--];
    }

    while (v6 != 92 && v6 != 47);
    if (size == -1)
    {
LABEL_14:
      std::string::operator=(&__p, &__str);
      goto LABEL_15;
    }

    std::string::basic_string(&v7, &__str, size + 1, 0xFFFFFFFFFFFFFFFFLL, &v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v7;
LABEL_15:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_245479A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245479ABC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (v2)
    {
      *(result + 16) = *(v2 + 8);
      *(v2 + 8) = 0;
    }
  }

  else
  {
    do
    {
      v4 = v2;
      v2 = *(v2 + 8);
      if (v2)
      {
        v5 = v2 == a2;
      }

      else
      {
        v5 = 1;
      }
    }

    while (!v5);
    if (v2)
    {
      *(v4 + 8) = *(v2 + 8);
    }
  }

  if (a2)
  {
    *(a2 + 8) = 0;
  }

  return result;
}

void sub_245479B0C(uint64_t a1)
{
  v2 = *(a1 + 8) - *a1;
  v3 = sub_245468268("SuplLppExecutePosReq", 33, 1, v2);
  v4 = *(a1 + 8) - *a1;
  sub_2454683F0("SuplLppExecutePosReq", 35, v3, v4, *a1, v4);
  v5 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#supl,#posp,#lpp, Calling lpp_t_supl_pos_trigger", v6, 2u);
  }

  sub_245444EFC(v3, v2);
  sub_245448798(off_27EE134B8, *(a1 + 28), *(a1 + 32), v2, v3);
  if (v3)
  {
    MEMORY[0x245D6A0D0](v3, 0x1000C4077774924);
  }
}

void sub_245479C1C(int a1, unsigned __int16 *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "#gpsd,#lpp,#posp AID_RQD_MSG  ", buf, 2u);
  }

  *buf = 0x8000000080000000;
  *&buf[8] = 0xFFFF00007FFFFFFFLL;
  *v15 = 255;
  *&v15[8] = -1;
  v15[10] = -1;
  *&v15[2] = -1;
  v15[6] = -1;
  memset(&v15[11], 0, 32);
  v7 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a2[6];
    *v11 = 67109120;
    *&v11[4] = v8;
    _os_log_impl(&dword_245396000, v7, OS_LOG_TYPE_DEFAULT, "#lpp,#cplane,received aid mask,%d", v11, 8u);
  }

  sub_2454683F0("LppExecuteAidRequest", 73, buf, 0x3Cu, a2, 0x3CuLL);
  *v11 = *buf;
  v12 = *v15;
  v13[0] = *&v15[16];
  *(v13 + 12) = *&v15[28];
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_245448E0C(off_27EE134B8, v11, v10, 1, (a3 << 32) | 2, a1, v9);
}

void sub_245479DC8(int a1, int a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "SuplLppExecutePosRsp");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE3(v20) & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = *__p;
    }

    v17 = 136315138;
    v18 = v15;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", &v17, 0xCu);
  }

  if (SBYTE3(v20) < 0)
  {
    operator delete(*__p);
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 67109120;
    *&__p[4] = a2;
    _os_log_impl(&dword_245396000, v7, OS_LOG_TYPE_DEFAULT, "LPP Sub Msg Type,%u", __p, 8u);
  }

  if ((a2 & 0xFFFFFFFD) != 0)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "LPP message", __p, 2u);
    }
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    *&v25[20] = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v9 = *(a3 + 80);
    v23 = *(a3 + 64);
    v24 = v9;
    *v25 = *(a3 + 96);
    v10 = *(a3 + 16);
    *&__p[4] = *a3;
    v20 = v10;
    v11 = *(a3 + 48);
    v21 = *(a3 + 32);
    v12 = *a3 != 0;
    v13 = *(a3 + 117);
    *__p = 1;
    *&v25[13] = *(a3 + 109);
    v22 = v11;
    v25[21] = v13;
    LOBYTE(v34) = v13;
    DWORD1(v34) = 2 * v12;
    *&v35 = -1;
    *(&v35 + 1) = 0xFFFF7FFFFFFFFFFFLL;
    *&v36 = -1;
    sub_245448F48(off_27EE134B8, __p, 0x100000002, a1);
  }

  sub_2453B414C(__p, "SuplLppExecutePosRsp");
  v14 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE3(v20) & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = *__p;
    }

    v17 = 136315138;
    v18 = v16;
    _os_log_debug_impl(&dword_245396000, v14, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", &v17, 0xCu);
  }

  if (SBYTE3(v20) < 0)
  {
    operator delete(*__p);
  }
}

void sub_24547A094(uint64_t a1, unsigned __int8 a2, unsigned __int16 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "SuplLppExecuteAdReq");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v21 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136315138;
    v23 = v18;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = operator new(0x68uLL, MEMORY[0x277D826F0]);
  if (v7)
  {
    *v7 = 0x8000000080000000;
    *(v7 + 1) = 0xFFFF00007FFFFFFFLL;
    *(v7 + 8) = 255;
    *(v7 + 12) = -1;
    v7[26] = -1;
    *(v7 + 18) = -1;
    v7[22] = -1;
    *(v7 + 27) = 0u;
    *(v7 + 43) = 0u;
    v8 = *a3;
    v7[96] = v8;
    if (v8 == 1)
    {
      *v7 = 0uLL;
      *(v7 + 1) = 0uLL;
      *(v7 + 44) = 0uLL;
      *(v7 + 2) = 0uLL;
      *(v7 + 6) = *(a3 + 2);
      *(v7 + 7) = a3[6];
      v7[16] = *(a3 + 14);
      v9 = *(a3 + 15);
      v7[17] = v9;
      v7[18] = *(a3 + 64);
      if (v9)
      {
        v10 = *(a3 + 5);
        v11 = v7 + 43;
        v12 = *(a3 + 2);
        do
        {
          v13 = *v10++;
          *v11 = v13;
          v14 = *v12++;
          *(v11 - 16) = v14;
          ++v11;
          --v9;
        }

        while (v9);
      }
    }

    sub_24544896C(off_27EE134B8, a1, a2, 1, v7, 0, 0);
    sub_2453B414C(__p, "SuplLppExecuteAdReq");
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      if (v21 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315138;
      v23 = v16;
LABEL_28:
      _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
    }
  }

  else
  {
    v17 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_245396000, v17, OS_LOG_TYPE_ERROR, "GNSS Aid Req", __p, 2u);
    }

    sub_2453B414C(__p, "SuplLppExecuteAdReq");
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      if (v21 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      *buf = 136315138;
      v23 = v19;
      goto LABEL_28;
    }
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24547A384(int a1, unsigned __int8 a2)
{
  v12 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "SuplLppExecuteCapReq");
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_245448BE4(off_27EE134B8, a1, a2);
  sub_2453B414C(__p, "SuplLppExecuteCapReq");
  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    v11 = v7;
    _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24547A504(int a1, int a2, uint64_t a3, int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = a1;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_245396000, v7, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp updating PLMN info,%d,%d", v9, 0xEu);
  }

  v8 = off_27EE134B8;
  *(off_27EE134B8 + 40) = a1;
  *(v8 + 41) = a2;
  *(v8 + 21) = a4;
}

void sub_24547A5D4()
{
  v0 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v0, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp LPP Initialization Fn", buf, 2u);
  }

  v1 = off_27EE134B8;
  sub_245448500(off_27EE134B8);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  xmmword_2813CEDE8 = v1[2];
  unk_2813CEDF8 = v4;
  xmmword_2813CEDC8 = v2;
  unk_2813CEDD8 = v3;
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  qword_2813CEE38 = *(v1 + 14);
  xmmword_2813CEE18 = v6;
  unk_2813CEE28 = v7;
  xmmword_2813CEE08 = v5;
  v8 = *(v1 + 152);
  v9 = *(v1 + 136);
  unk_2813CEE40 = *(v1 + 120);
  unk_2813CEE50 = v9;
  unk_2813CEE60 = v8;
  v10 = *(v1 + 184);
  v11 = *(v1 + 200);
  v12 = *(v1 + 216);
  unk_2813CEE70 = *(v1 + 168);
  unk_2813CEEA0 = v12;
  unk_2813CEE90 = v11;
  unk_2813CEE80 = v10;
  v13 = off_27EE134B8;
  *(off_27EE134B8 + 4) = 1537;
  v14 = 1;
  *(v13 + 1) = 1;
  *(v13 + 105) = 0;
  *(v13 + 10) = 0xFFFFFFFFLL;
  *v13 = 1;
  *(v13 + 26) = 1;
  *(v13 + 50) = 3;
  *(v13 + 48) = 0;
  *(v13 + 30) = 256;
  *(v13 + 22) = 257;
  *(v13 + 32) = 1;
  *(v13 + 66) = 0;
  *(v13 + 59) = 32;
  *(v13 + 27) = 3;
  *(v13 + 22) = 0xFFFF;
  v15 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_245396000, v15, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp LPP Initialization complete", v18, 2u);
    v13 = off_27EE134B8;
    v16 = *(off_27EE134B8 + 8);
    v17 = *(off_27EE134B8 + 44);
    v14 = *(off_27EE134B8 + 61) == 1;
  }

  else
  {
    v17 = 1;
    v16 = 1;
  }

  if (*(v13 + 120) == 1 && !*(v13 + 31))
  {
    if (v17 == 1)
    {
      *(v13 + 32) = 1;
    }

    if (v14)
    {
      *(v13 + 38) = 1;
    }

    if (v16 | v17)
    {
      *(v13 + 31) = 1;
    }

    *(v13 + 224) = 0;
  }

  sub_24547A7C8();
}

void sub_24547A7C8()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v1 = *(off_27EE134B8 + 8);
    v2 = *(off_27EE134B8 + 9);
    v3 = *(off_27EE134B8 + 105);
    v4 = *(off_27EE134B8 + 45);
    v5 = *(off_27EE134B8 + 48);
    v6 = *(off_27EE134B8 + 44);
    v7 = *(off_27EE134B8 + 61);
    v8 = *(off_27EE134B8 + 27);
    v9[0] = 67176449;
    v9[1] = v1;
    v10 = 1;
    v11 = 4;
    v12 = v2;
    v13 = 1025;
    v14 = v3;
    v15 = 1025;
    v16 = v4;
    v17 = 1025;
    v18 = v5;
    v19 = 1025;
    v20 = v6;
    v21 = 1025;
    v22 = v7;
    v23 = 1;
    v24 = 4;
    v25 = v8;
    _os_log_debug_impl(&dword_245396000, v0, OS_LOG_TYPE_DEBUG, "#gpsd,#posp,#lpp,config,gps_support,%{private}d,gps_mode,%{private}d,ecall_ongoing,%{private}d,cplane_support,%{private}d,cp_lr,%{private}d,lte_ecid_support,%{private}d,nr_ecid_support,%{private}d,active_rat,%{private}d", v9, 0x32u);
  }
}

void sub_24547A8DC(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gem,#lpp,#cplane,lpp msg received", buf, 2u);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_2453AE4E0(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v4 = v17 - __p;
  v5 = (v17 - __p + 2);
  v6 = malloc_type_calloc(1uLL, v5, 0x57089378uLL);
  bzero(v6, v5);
  v20 = v6;
  sub_2454683F0("fill_lpp_data", 292, v6 + 1, v17 - __p, __p, (v17 - __p));
  v7 = 0;
  *v6 = bswap32(v4) >> 16;
  v19 = v4 + 2;
  v8 = 48;
  v9 = "71001123";
  v10 = MEMORY[0x277D85DE0];
  do
  {
    if ((v8 & 0x80) == 0 && (*(v10 + 4 * v8 + 60) & 0x400) != 0)
    {
      LOBYTE(v11) = v8 - 48;
    }

    else
    {
      v11 = __toupper(v8) - 55;
    }

    v12 = *(v9 - 1);
    if ((v12 & 0x80000000) == 0 && (*(v10 + 4 * v12 + 60) & 0x400) != 0)
    {
      v13 = v12 - 48;
    }

    else
    {
      v13 = __toupper(v12) - 55;
    }

    buf[v7++] = v13 + 16 * v11;
    v14 = *v9;
    v9 += 2;
    v8 = v14;
  }

  while (v7 != 5);
  v21 = 5;
  v15 = malloc_type_calloc(1uLL, 5uLL, 0x57089378uLL);
  v22 = v15;
  *v15 = *buf;
  *(v15 + 7) = *&buf[7];
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  sub_2454485A8(off_27EE134B8, &v19);
}

void sub_24547AB04(unsigned int a1, const void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gem,#lpp,#cplane,sending lpp msg", buf, 2u);
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_2453AE4E0(&v10, a2, a2 + a1, a1);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *buf = dispatch_queue_create("com.gnss.cplaneq", v5);
  v6 = sub_2453B4548();
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_2453AE4E0(&__p, v10, v11, v11 - v10);
  sub_2453B47B4(v6, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  sub_24547BEE4(buf);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_24547AC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_24547BEE4(va);
  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_24547AC9C(int a1, int a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "CplaneLppExecutePosRsp");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE3(v20) & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = *__p;
    }

    v17 = 136315138;
    v18 = v15;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", &v17, 0xCu);
  }

  if (SBYTE3(v20) < 0)
  {
    operator delete(*__p);
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 67109120;
    *&__p[4] = a2;
    _os_log_impl(&dword_245396000, v7, OS_LOG_TYPE_DEFAULT, "LPP Sub Msg Type,%u", __p, 8u);
  }

  if ((a2 & 0xFFFFFFFD) != 0)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "LPP message", __p, 2u);
    }
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    *&v25[20] = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v9 = *(a3 + 80);
    v23 = *(a3 + 64);
    v24 = v9;
    *v25 = *(a3 + 96);
    v10 = *(a3 + 16);
    *&__p[4] = *a3;
    v20 = v10;
    v11 = *(a3 + 48);
    v21 = *(a3 + 32);
    v12 = *a3 != 0;
    v13 = *(a3 + 117);
    *__p = 1;
    *&v25[13] = *(a3 + 109);
    v22 = v11;
    v25[21] = v13;
    LOBYTE(v34) = v13;
    DWORD1(v34) = 2 * v12;
    *&v35 = -1;
    *(&v35 + 1) = 0xFFFF7FFFFFFFFFFFLL;
    *&v36 = -1;
    sub_245448F48(off_27EE134B8, __p, 2, a1);
  }

  sub_2453B414C(__p, "CplaneLppExecutePosRsp");
  v14 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE3(v20) & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = *__p;
    }

    v17 = 136315138;
    v18 = v16;
    _os_log_debug_impl(&dword_245396000, v14, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", &v17, 0xCu);
  }

  if (SBYTE3(v20) < 0)
  {
    operator delete(*__p);
  }
}

void sub_24547AF64()
{
  v0 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_245396000, v0, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, sending LTE Meas error, no response for ECID req", v2, 2u);
  }

  v1 = malloc_type_calloc(1uLL, 0x58uLL, 0x57089378uLL);
  v1[3] = 0u;
  v1[4] = 0u;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 10) = 0;
  *(v1 + 8) = 1;
  *(v1 + 18) = 1;
  *(v1 + 78) = 1;
  sub_2454518D4(off_27EE134B8, v1);
}

void sub_24547B014(int a1)
{
  if (a1 == 2)
  {
    v3 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#lpp, setting RAT to NR", v4, 2u);
    }

    v2 = 4;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v1 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v1, OS_LOG_TYPE_DEBUG, "#lpp, setting RAT to LTE", buf, 2u);
    }

    v2 = 3;
LABEL_9:
    *(off_27EE134B8 + 27) = v2;
  }

  sub_24547A7C8();
}

void sub_24547B0EC(__int128 *a1)
{
  v112 = *MEMORY[0x277D85DE8];
  v2 = &qword_2813CF000;
  v3 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v105 = 0;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received meas response, cancelling timer", v105, 2u);
  }

  v4 = sub_2454616D4();
  sub_245461C8C(v4);
  v5 = off_27EE134B8;
  if (!*(off_27EE134B8 + 105) && !*(off_27EE134B8 + 48))
  {
    return;
  }

  v6 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v105 = 0;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received meas response", v105, 2u);
    v5 = off_27EE134B8;
    v6 = qword_2813CF020;
  }

  v7 = *(v5 + 27);
  if (v7 == 4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v105 = 0;
      _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received meas response for NR", v105, 2u);
    }

    v85 = *a1;
    v87 = 0;
    v88 = 0;
    v86 = 0;
    sub_2453AADE8(&v86, *(a1 + 4), *(a1 + 5), 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 5) - *(a1 + 4)) >> 3));
    v14 = *(a1 + 61);
    *v89 = *(a1 + 7);
    *&v89[5] = v14;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    sub_2453AAF00(&v90, *(a1 + 9), *(a1 + 10), 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 10) - *(a1 + 9)) >> 3));
    v15 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v105 = 0;
      _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR Meas received", v105, 2u);
    }

    if (v89[12] == 1 && v85 == 1 && v91 != v90)
    {
      v16 = qword_2813CF020;
      v17 = (-15 * ((v91 - v90) >> 3));
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *v105 = 67109120;
        *&v105[4] = v17;
        _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR Meas success, no of meas,%d", v105, 8u);
      }

      v18 = malloc_type_calloc(1uLL, 0x80uLL, 0x57089378uLL);
      v19 = v18;
      v18[6] = 0u;
      v18[7] = 0u;
      v18[4] = 0u;
      v18[5] = 0u;
      v18[2] = 0u;
      v18[3] = 0u;
      *v18 = 0u;
      v18[1] = 0u;
      if (v17)
      {
        v20 = malloc_type_calloc(1uLL, 80 * v17 - 80, 0x57089378uLL);
        bzero(v20, 80 * v17 - 80);
        v21 = 0;
        v22 = 0;
        *(v19 + 104) = v20;
        *v19 = 3;
        v23 = v17;
        do
        {
          v24 = v90 + 136 * v21;
          v25 = *(v24 + 16);
          *v105 = *v24;
          *&v105[16] = v25;
          v26 = *(v24 + 32);
          v27 = *(v24 + 48);
          v28 = *(v24 + 80);
          *v107 = *(v24 + 64);
          *&v107[16] = v28;
          *v106 = v26;
          *&v106[16] = v27;
          v109 = 0;
          v110 = 0;
          v108 = 0;
          sub_2453AB104(&v108, *(v24 + 96), *(v24 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(v24 + 104) - *(v24 + 96)) >> 3));
          v111 = *(v24 + 120);
          if (v105[0] == 1)
          {
            v29 = v2[4];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_245396000, v29, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR Meas of serving cell", buf, 2u);
            }

            v30 = *&v105[16];
            *(v19 + 40) = *&v105[24];
            *(v19 + 28) = 1;
            *(v19 + 32) = *&v105[8];
            *(v19 + 34) = v30;
            if (v30 >= 0x64)
            {
              *(v19 + 36) = 1;
            }

            v31 = v22;
            if (!*v106)
            {
              *(v19 + 18) = 1;
              *(v19 + 20) = 0;
              *(v19 + 24) = *&v106[8];
            }

            v32 = v23;
            v33 = v2;
            if (v106[16] == 1)
            {
              *(v19 + 44) = 1;
              *(v19 + 46) = *&v106[24];
            }

            v34 = *v107;
            *(v19 + 16) = *v107;
            *(v19 + 48) = 1;
            *(v19 + 50) = 1;
            v35 = *&v107[8];
            *(v19 + 52) = *&v107[8];
            *(v19 + 54) = 1;
            v36 = *&v107[16];
            *(v19 + 56) = *&v107[16];
            v37 = v33[4];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109632;
              v100 = v34;
              v101 = 1024;
              v102 = v35;
              v103 = 1024;
              v104 = v36;
              _os_log_debug_impl(&dword_245396000, v37, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Serving cell meas, pci,%d,,rsrp,%d, rsrq,%d", buf, 0x14u);
            }

            v38 = *&v107[24];
            if (*&v107[24])
            {
              *(v19 + 69) = v107[24];
              *(v19 + 68) = 1;
              v39 = (10 * v38);
              v23 = v32;
              v22 = v31;
              v40 = malloc_type_calloc(1uLL, v39, 0x57089378uLL);
              bzero(v40, v39);
              *(v19 + 72) = v40;
              v41 = *&v107[24];
              if (*&v107[24])
              {
                v42 = (v108 + 16);
                v43 = v40 + 4;
                v2 = v33;
                do
                {
                  *(v43 - 2) = *(v42 - 2);
                  *(v43 - 2) = 1;
                  *v43 = *(v42 - 1);
                  v43[2] = 1;
                  v44 = *v42;
                  v42 += 3;
                  *(v43 + 2) = v44;
                  v43 += 10;
                  --v41;
                }

                while (v41);
              }

              else
              {
                v2 = v33;
              }
            }

            else
            {
              v2 = v33;
              v23 = v32;
              v22 = v31;
            }
          }

          else
          {
            v45 = *(v19 + 104);
            *(v45 + 80 * v22 + 24) = *&v105[24];
            if (!*v106)
            {
              v46 = v45 + 80 * v22;
              *(v46 + 2) = 1;
              *(v46 + 4) = 0;
              *(v46 + 8) = *&v106[8];
              v45 = *(v19 + 104);
            }

            if (v106[16] == 1)
            {
              v47 = v45 + 80 * v22;
              *(v47 + 28) = 1;
              *(v47 + 30) = *&v106[24];
            }

            v48 = v45 + 80 * v22;
            *v48 = *v107;
            *(v48 + 32) = 1;
            *(v48 + 34) = 1;
            *(v48 + 36) = *&v107[8];
            *(v48 + 38) = 1;
            *(v48 + 40) = *&v107[16];
            v49 = *&v107[24];
            if (*&v107[24])
            {
              v50 = v2;
              v51 = v45 + 80 * v22;
              *(v51 + 53) = v107[24];
              *(v51 + 52) = 1;
              v52 = (10 * v49);
              v53 = malloc_type_calloc(1uLL, v52, 0x57089378uLL);
              bzero(v53, v52);
              *(*(v19 + 104) + 80 * v22 + 56) = v53;
              v54 = *&v107[24];
              v2 = v50;
              if (*&v107[24])
              {
                v55 = (v108 + 16);
                v56 = v53 + 4;
                do
                {
                  *(v56 - 2) = *(v55 - 2);
                  *(v56 - 2) = 1;
                  *v56 = *(v55 - 1);
                  v56[2] = 1;
                  v57 = *v55;
                  v55 += 3;
                  *(v56 + 2) = v57;
                  v56 += 10;
                  --v54;
                }

                while (v54);
              }
            }

            v58 = v2[4];
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              v100 = v22;
              _os_log_debug_impl(&dword_245396000, v58, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR neighbouring cell meas,%d", buf, 8u);
            }

            v22 = (v22 + 1);
          }

          if (v108)
          {
            v109 = v108;
            operator delete(v108);
          }

          ++v21;
        }

        while (v21 != v23);
      }

      else
      {
        LOBYTE(v22) = 0;
        *v18 = 3;
      }

      *(v19 + 96) = v22;
      goto LABEL_97;
    }

    if (v89[0] != 1)
    {
LABEL_98:
      *v105 = &v90;
      sub_2453AB2A4(v105);
      v81 = v86;
      if (!v86)
      {
        return;
      }

      v87 = v86;
LABEL_104:
      operator delete(v81);
      return;
    }

    v60 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v105 = 0;
      _os_log_debug_impl(&dword_245396000, v60, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, NR Meas failure", v105, 2u);
    }

    v61 = malloc_type_calloc(1uLL, 0x80uLL, 0x57089378uLL);
    v19 = v61;
    v61[6] = 0u;
    v61[7] = 0u;
    v61[4] = 0u;
    v61[5] = 0u;
    v61[2] = 0u;
    v61[3] = 0u;
    *v61 = 0u;
    v61[1] = 0u;
    *(v61 + 8) = 1;
    if ((*&v89[4] - 1) <= 2)
    {
      *(v61 + 28) = *&v89[4] - 1;
    }

    if (*&v89[8] == 1)
    {
      v63 = 0;
    }

    else
    {
      v62 = 0;
      if (*&v89[8] != 2)
      {
LABEL_80:
        *(v61 + 116) = v62;
LABEL_97:
        sub_24545190C(off_27EE134B8, v19);
        goto LABEL_98;
      }

      v63 = 1;
    }

    *(v61 + 30) = v63;
    v62 = 1;
    goto LABEL_80;
  }

  if (v7 == 3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v105 = 0;
      _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received meas response for LTE", v105, 2u);
    }

    *v93 = *a1;
    *&v93[9] = *(a1 + 9);
    v95 = 0;
    v96 = 0;
    __p = 0;
    sub_2453AADE8(&__p, *(a1 + 4), *(a1 + 5), 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 5) - *(a1 + 4)) >> 3));
    v8 = *(a1 + 61);
    v97[0] = *(a1 + 7);
    *(v97 + 5) = v8;
    memset(v98, 0, sizeof(v98));
    sub_2453AAF00(v98, *(a1 + 9), *(a1 + 10), 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 10) - *(a1 + 9)) >> 3));
    v9 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v105 = 0;
      _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received LTE meas response", v105, 2u);
    }

    if (v93[0] != 1 || v93[24] != 1 || v95 == __p)
    {
      if (v93[1] == 1)
      {
        v59 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v105 = 0;
          _os_log_debug_impl(&dword_245396000, v59, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, LTE Meas error", v105, 2u);
        }

        sub_24547AF64();
      }

      goto LABEL_102;
    }

    v10 = qword_2813CF020;
    v11 = (-15 * ((v95 - __p) >> 3));
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v105 = 67109120;
      *&v105[4] = v11;
      _os_log_debug_impl(&dword_245396000, v10, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, Received LTE meas success, number of meas,%d", v105, 8u);
    }

    v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x57089378uLL);
    v12[10] = 0;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    if (v11 < 2)
    {
      if (!v11)
      {
        v84 = 0;
LABEL_101:
        *(v12 + 60) = v84;
        sub_2454518D4(off_27EE134B8, v12);
LABEL_102:
        *v105 = v98;
        sub_2453AB2A4(v105);
        v81 = __p;
        if (!__p)
        {
          return;
        }

        v95 = __p;
        goto LABEL_104;
      }
    }

    else
    {
      v13 = malloc_type_calloc(1uLL, 40 * v11 - 40, 0x57089378uLL);
      bzero(v13, 40 * v11 - 40);
      v12[8] = v13;
      *(v12 + 81) = 0;
      *v12 = 0;
    }

    v84 = 0;
    v64 = v11;
    v65 = 128;
    do
    {
      v66 = *(__p + v65 - 120);
      v67 = *(__p + v65 - 112);
      v68 = *(__p + v65 - 96);
      v69 = *(__p + v65 - 88);
      v71 = *(__p + v65 - 80);
      v70 = *(__p + v65 - 72);
      v72 = *(__p + v65 - 56);
      v73 = *(__p + v65 - 40);
      v75 = *(__p + v65 - 32);
      v74 = *(__p + v65 - 24);
      v76 = *(__p + v65 - 16);
      v77 = *(__p + v65);
      if (*(__p + v65 - 128))
      {
        *(v12 + 16) = 1;
        *(v12 + 26) = v71;
        *(v12 + 27) = v70;
        *(v12 + 28) = v74;
        *(v12 + 48) = v73 & 1;
        *(v12 + 25) = v75;
        *(v12 + 10) = v69;
        *(v12 + 6) = v72 & 1;
        *(v12 + 7) = v76;
        *(v12 + 8) = v77 & 1;
        *(v12 + 11) = v68;
        v83 = v66;
        *(v12 + 18) = v66;
        *(v12 + 19) = v67;
        if (v67 >= 0x64)
        {
          *(v12 + 10) = 1;
        }

        log = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v105 = 134285313;
          *&v105[4] = v71;
          *&v105[12] = 2049;
          *&v105[14] = v70;
          *&v105[22] = 2049;
          *&v105[24] = v74;
          *v106 = 2049;
          *&v106[2] = v69;
          *&v106[10] = 2049;
          *&v106[12] = v75;
          *&v106[20] = 2049;
          *&v106[22] = v68;
          *&v106[30] = 2049;
          *v107 = v83;
          *&v107[8] = 2049;
          *&v107[10] = v67;
          _os_log_debug_impl(&dword_245396000, log, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, LTE serving cell meas,rsrp,%{private}lu,rsrq,%{private}lu,ue_tx_rx,%{private}lu,pci,%{private}lu,sfn,%{private}lu,cellId,%{private}lu,mcc,%{private}lu,mnc,%{private}lu", v105, 0x52u);
        }
      }

      else
      {
        v78 = v12[8];
        v79 = v78 + 40 * v84;
        *(v79 + 32) = v71;
        *(v79 + 34) = v70;
        *(v79 + 36) = v74;
        *(v79 + 28) = v73 & 1;
        *(v79 + 30) = v75;
        *(v79 + 4) = v72 & 1;
        *(v79 + 8) = v76;
        *(v79 + 12) = v77 & 1;
        *(v79 + 24) = v68;
        *v79 = v69;
        *(v79 + 16) = v66;
        *(v79 + 18) = v67;
        if (v67 >= 0x64)
        {
          *(v78 + 40 * v84 + 20) = 1;
        }

        v80 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v105 = 67109120;
          *&v105[4] = v84;
          _os_log_debug_impl(&dword_245396000, v80, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, LTE neighbouring cell meas,%d", v105, 8u);
        }

        ++v84;
      }

      v65 += 136;
      --v64;
    }

    while (v64);
    goto LABEL_101;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v105 = 0;
    _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#lpp,#cplane,#ecid, Invalid RAT", v105, 2u);
  }
}

void sub_24547BE20()
{
  v0 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_245396000, v0, OS_LOG_TYPE_DEBUG, "#lpp,#cplane,#ecid, sending NR Meas error, no response for ECID req", v2, 2u);
  }

  v1 = malloc_type_calloc(1uLL, 0x80uLL, 0x57089378uLL);
  *(v1 + 4) = 0u;
  *(v1 + 100) = 0u;
  v1[7] = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 36) = 0u;
  *(v1 + 52) = 0u;
  *(v1 + 68) = 0u;
  *(v1 + 84) = 0u;
  *v1 = 3;
  *(v1 + 8) = 1;
  *(v1 + 28) = 1;
  sub_24545190C(off_27EE134B8, v1);
}

dispatch_object_t *sub_24547BEE4(dispatch_object_t *a1)
{
  v2 = a1 + 5;
  dispatch_release(*a1);
  *a1 = 0;
  sub_2453AB6D8((a1 + 25));
  sub_2453AB658((a1 + 21));
  sub_2453AB5D8((a1 + 17));
  sub_2453AB558((a1 + 13));
  sub_2453AB4D8((a1 + 9));
  sub_2453AB458(v2);
  sub_2453AB3D8((a1 + 1));
  return a1;
}

void sub_24547BF5C(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 24))
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,Null parameter Leaving setSuplProtoLocationIdNeededReport", v9, 2u);
    }
  }

  sub_245481638(v9, a2);
  v5 = a1 + 32;
  if (v9 != (a1 + 32))
  {
    v6 = v10;
    v7 = *(a1 + 56);
    if (v10 == v9)
    {
      if (v7 == v5)
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = 0;
        (*(**(a1 + 56) + 24))(*(a1 + 56), v9);
        (*(**(a1 + 56) + 32))(*(a1 + 56));
        *(a1 + 56) = 0;
        v10 = v9;
        (*(v11[0] + 24))(v11, a1 + 32);
        (*(v11[0] + 32))(v11);
      }

      else
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = *(a1 + 56);
      }

      *(a1 + 56) = v5;
    }

    else if (v7 == v5)
    {
      (*(*v7 + 24))(*(a1 + 56), v9);
      (*(**(a1 + 56) + 32))(*(a1 + 56));
      *(a1 + 56) = v10;
      v10 = v9;
    }

    else
    {
      v10 = *(a1 + 56);
      *(a1 + 56) = v6;
    }
  }

  sub_2453ABF84(v9);
  v8 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_245396000, v8, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,Leaving setSuplProtoLocationIdNeededReport", v9, 2u);
  }
}

void sub_24547C270(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2453A3640(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24547C27C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_245481638(v2, a1 + 32);
  if (!v3)
  {
    sub_2453A5EE4();
  }

  (*(*v3 + 48))(v3);
  return sub_2453ABF84(v2);
}

uint64_t sub_24547C334()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_2813CEDA8 != -1)
  {
    dispatch_once(&qword_2813CEDA8, &unk_28585A8B8);
  }

  result = qword_2813CEDA0;
  if (!qword_2813CEDA0)
  {
    v1 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v1, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
    }

    __assert_rtn("GetInstance", "SuplBridge.mm", 92, "false && Memory allocation failure");
  }

  return result;
}

char *sub_24547C42C()
{
  result = operator new(0x1A8uLL, MEMORY[0x277D826F0]);
  v1 = result;
  if (result)
  {
    *(result + 152) = 0u;
    *(result + 3) = 0;
    *(result + 7) = 0;
    *(result + 8) = 0;
    *(result + 18) = 0;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 14) = -1;
    *(result + 15) = 0xFFFFFFFF7FFFFFFFLL;
    *(result + 64) = -1;
    *(result + 132) = -1;
    *(result + 140) = -1;
    *(result + 37) = -1;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0u;
    *(result + 248) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *(result + 296) = 0u;
    *(result + 312) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    v2 = result + 156;
    *(result + 360) = 0u;
    *(result + 376) = 0u;
    v3 = 256;
    *(result + 392) = 0u;
    do
    {
      *(v2 - 2) = -1;
      *(v2 - 2) = -1;
      *v2 = -1;
      v2[8] = -1;
      v2 += 16;
      v3 -= 16;
    }

    while (v3);
    result[408] = -1;
    *(result + 103) = -1;
    *(result + 52) = -1;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    result = dispatch_queue_create("com.gnss.suplq", v4);
    *(v1 + 11) = result;
  }

  qword_2813CEDA0 = v1;
  return result;
}

void sub_24547C530(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  data = dispatch_source_get_data(*(a1 + 32));
  if (!data)
  {
    return;
  }

  v3 = data;
  if ((*(**(v1 + 64) + 32))(*(v1 + 64)) == -3)
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd,#supl,readSocketData,Invalid Session while Reading", &__p, 2u);
    }

    v5 = sub_24546E30C();
    (*(*v5 + 32))(v5, *(v1 + 72), 14);
    return;
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v3;
    _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,readSocketData,Bytes on Sock,%llu", buf, 0xCu);
  }

  v7 = (*(**(v1 + 64) + 8))(*(v1 + 64), &__p);
  v8 = v7;
  if (v7 == -4)
  {
    v9 = 11;
  }

  else
  {
    if (v7 != -3)
    {
      v12 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v18) = v8;
        _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd,#supl,readSocketData,Byte written,%d", buf, 8u);
        v12 = qword_2813CF018;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = v15 - __p;
        _os_log_impl(&dword_245396000, v12, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#in,readSocketData,Socket read buf size,%u,continue to process supl", buf, 8u);
      }

      v13 = sub_24546E30C();
      (*(*v13 + 40))(v13, *(v1 + 72), &__p);
      goto LABEL_20;
    }

    v9 = 10;
  }

  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v18) = v9;
    _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd,#supl,readSocketData,Socket read fail , disconnecting,%u", buf, 8u);
  }

  v11 = sub_24546E30C();
  (*(*v11 + 32))(v11, *(v1 + 72), v9);
LABEL_20:
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_24547C840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24547C868(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,readSocketData,cancel called,disconnecting supl", v7, 2u);
  }

  *(v2 + 72) = 0;
  v4 = (*(**(v2 + 64) + 24))(*(v2 + 64));
  if (v4 < 0xFFFFFFFB)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(&unk_245491C10 + v4 + 5);
  }

  v6 = sub_24546E30C();
  (*(*v6 + 32))(v6, *(v2 + 72), v5);
  dispatch_release(*(a1 + 32));
}

void sub_24547C960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 64) + 32))(*(a1 + 64), a2) == -3)
  {
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,writeDataToSocket,Invalid Socket during Write", &v12, 2u);
    }

LABEL_11:
    v10 = *(*sub_24546E30C() + 32);
    v10();
    return;
  }

  v6 = (*(**(a1 + 64) + 16))(*(a1 + 64), a3);
  if (v6 == -3)
  {
    v8 = 12;
LABEL_9:
    v9 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = v8;
      _os_log_impl(&dword_245396000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,writeDataToSocket,Socket write,%u", &v12, 8u);
    }

    goto LABEL_11;
  }

  v7 = v6;
  if (v6 == -4)
  {
    v8 = 13;
    goto LABEL_9;
  }

  v11 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109120;
    v13 = v7;
    _os_log_impl(&dword_245396000, v11, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,writeDataToSocket,Byte written,%d", &v12, 8u);
  }
}

uint64_t sub_24547CB70(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v24 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_24546FD48(__p, *a2, a2[1]);
  }

  else
  {
    *__p = *a2;
    v20 = a2[2];
  }

  v9 = (**v8)(v8, __p, a3);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v11 = "FAILURE";
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    if (v9 == -2)
    {
      v11 = "SUCCESS";
    }

    *&buf[14] = a3;
    *&buf[18] = 2080;
    *&buf[20] = v11;
    *&buf[28] = 1024;
    *&buf[30] = v9;
    _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,ConnectToServer,Connection fqdn,%s,%u,status,%s,%d", buf, 0x22u);
  }

  v12 = 0;
  if (v9 <= -4)
  {
    if (v9 == -5)
    {
      v12 = 7;
    }

    else if (v9 == -4)
    {
      v12 = 9;
    }
  }

  else
  {
    switch(v9)
    {
      case -3:
        v12 = 8;
        break;
      case -1:
        v12 = 5;
        break;
      case -2:
        *(a1 + 72) = a4;
        v13 = (*(**(a1 + 64) + 32))(*(a1 + 64));
        v14 = dispatch_source_create(MEMORY[0x277D85D28], v13, 0, *(a1 + 88));
        if (v14)
        {
          v15 = v14;
          *(a1 + 80) = v14;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_24547C530;
          *&buf[24] = &unk_278E36C68;
          *&buf[32] = v14;
          v23 = a1;
          dispatch_source_set_event_handler(v14, buf);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = sub_24547C868;
          handler[3] = &unk_278E36C68;
          handler[4] = v15;
          handler[5] = a1;
          dispatch_source_set_cancel_handler(v15, handler);
          dispatch_resume(v15);
        }

        else
        {
          v16 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd,#supl,readSocketData,SUPL Socket read failed", buf, 2u);
          }
        }

        v12 = 6;
        break;
    }
  }

  v17 = sub_24546E30C();
  return (*(*v17 + 24))(v17, a4, v12);
}

void sub_24547CEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24547CECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 1;
  v5 = *(v1 + 72);
  v2 = *sub_24546E30C();
  return (*v2)();
}

void sub_24547CF44(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    sub_2454816D0(v6, a2);
    if (v6 != a1)
    {
      v3 = v7;
      v4 = *(a1 + 24);
      if (v7 == v6)
      {
        if (v4 == a1)
        {
          (*(*v7 + 24))();
          (*(*v7 + 32))(v7);
          v7 = 0;
          (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
          (*(**(a1 + 24) + 32))(*(a1 + 24));
          *(a1 + 24) = 0;
          v7 = v6;
          (*(v8[0] + 24))(v8, a1);
          (*(v8[0] + 32))(v8);
        }

        else
        {
          (*(*v7 + 24))();
          (*(*v7 + 32))(v7);
          v7 = *(a1 + 24);
        }

        *(a1 + 24) = a1;
      }

      else if (v4 == a1)
      {
        (*(*v4 + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = v7;
        v7 = v6;
      }

      else
      {
        v7 = *(a1 + 24);
        *(a1 + 24) = v3;
      }
    }

    sub_2453ABB5C(v6);
  }

  else
  {
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_DEFAULT, "StatusReport callback NULL", v6, 2u);
    }
  }
}

void sub_24547D20C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2453A3640(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24547D218(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 0;
  v11 = 0;
  v15 = 0;
  *&v18[7] = 0;
  *&v18[3] = 0;
  v2 = *(v1 + 104);
  v9[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v9[1] = xmmword_245486E00;
  __asm { FMOV            V0.2D, #-1.0 }

  v9[2] = _Q0;
  v12 = _Q0;
  v13 = 0xBFF0000000000000;
  v14 = 0;
  *&v16[14] = 0;
  *v16 = *v18;
  v17 = -1;
  result = *(v2 + 496);
  if (result)
  {
    return (*(*result + 48))(result, v9);
  }

  return result;
}

void sub_24547D2BC(uint64_t a1, unsigned int *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  *(&v50 + 1) = 0;
  v51 = xmmword_245491C00;
  v52 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  __asm { FMOV            V0.2D, #-1.0 }

  v53 = _Q0;
  *&v54 = 0xBFF0000000000000;
  WORD4(v54) = 0;
  BYTE10(v54) = 0;
  HIDWORD(v54) = 0;
  v55 = v52;
  v56 = xmmword_245486E00;
  *&v57 = 0xBFF0000000000000;
  WORD4(v57) = -1;
  LODWORD(v58) = -1;
  WORD2(v58) = -1;
  *(&v58 + 1) = 0xBFF0000000000000;
  *&v50 = *a2;
  sub_24547DC9C(a2[6], &v50 + 1);
  v9 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a2[4];
    v10 = a2[5];
    v12 = a2[7];
    *buf = 67109632;
    *&buf[4] = v10;
    *&buf[8] = 1024;
    *&buf[10] = v11;
    *&buf[14] = 1024;
    *&buf[16] = v12;
    _os_log_impl(&dword_245396000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#out,sendSuplStatusReport,SUPL Event,%u,SessionStatus,%u,SuplEndCause,%u", buf, 0x14u);
  }

  v13 = a2[5];
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      goto LABEL_16;
    }

    if (v13 == 2)
    {
      v14 = *(a1 + 96);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_24547D218;
      v62 = COERCE_DOUBLE(&unk_278E36C40);
      *v63 = a1;
      dispatch_async(v14, buf);
    }
  }

  else
  {
    switch(v13)
    {
      case 3:
        v13 = 13;
        goto LABEL_16;
      case 6:
        v13 = 30;
        goto LABEL_16;
      case 7:
        v13 = 29;
LABEL_16:
        DWORD2(v50) = v13;
        goto LABEL_17;
    }
  }

  if (!DWORD2(v50))
  {
    switch(a2[4])
    {
      case 5u:
      case 8u:
        v13 = 3;
        goto LABEL_16;
      case 6u:
        v13 = 2;
        goto LABEL_16;
      case 7u:
        v13 = 5;
        goto LABEL_16;
      case 9u:
        v13 = 4;
        goto LABEL_16;
      case 0xAu:
        v13 = 6;
        goto LABEL_16;
      case 0xBu:
        v13 = 7;
        goto LABEL_16;
      case 0xCu:
        v13 = 8;
        goto LABEL_16;
      case 0xDu:
        v13 = 9;
        goto LABEL_16;
      case 0xEu:
        v13 = 12;
        goto LABEL_16;
      case 0xFu:
        v13 = 11;
        goto LABEL_16;
      case 0x10u:
        v13 = 10;
        goto LABEL_16;
      case 0x12u:
      case 0x19u:
        v13 = 26;
        goto LABEL_16;
      case 0x13u:
      case 0x1Au:
        v13 = 20;
        goto LABEL_16;
      case 0x14u:
      case 0x1Bu:
        v13 = 27;
        goto LABEL_16;
      case 0x15u:
      case 0x1Cu:
        v13 = 21;
        goto LABEL_16;
      case 0x16u:
        v13 = 28;
        goto LABEL_16;
      case 0x17u:
        v13 = 22;
        goto LABEL_16;
      case 0x1Du:
        v13 = 17;
        goto LABEL_16;
      case 0x1Eu:
        v13 = 18;
        goto LABEL_16;
      case 0x1Fu:
        v13 = 19;
        goto LABEL_16;
      case 0x20u:
        v13 = 23;
        goto LABEL_16;
      case 0x21u:
        v13 = 24;
        goto LABEL_16;
      case 0x22u:
        v13 = 25;
        goto LABEL_16;
      case 0x23u:
        DWORD2(v50) = 14;
        BYTE9(v54) = 1;
        break;
      case 0x24u:
        DWORD2(v50) = 15;
        BYTE10(v54) = 1;
        break;
      case 0x25u:
        DWORD2(v50) = 16;
        BYTE8(v54) = 1;
        break;
      default:
        break;
    }
  }

LABEL_17:
  if (a2[7] <= 0x16)
  {
    HIDWORD(v50) = a2[7];
  }

  v15 = *(a2 + 32);
  if (v15 == 255)
  {
    v16 = -1.0;
  }

  else
  {
    v16 = (pow(1.1, v15) + -1.0) * 10.0;
  }

  *&v51 = v16;
  v17 = *(a2 + 1);
  if (v17 && *(v17 + 20) == 1)
  {
    v18 = *(v17 + 36);
    if (v18 >> 23)
    {
      v21 = 1.79769313e308;
    }

    else
    {
      v19 = 90 * v18;
      v20 = vcvtd_n_f64_u32(v19, 0x17uLL);
      v21 = -(v19 * 0.00000011920929);
      if (*(v17 + 32) != 2)
      {
        v21 = v20;
      }
    }

    *(&v51 + 1) = v21;
    v22 = *(v17 + 40);
    if ((v22 + 0x800000) >> 24)
    {
      v23 = 1.79769313e308;
    }

    else
    {
      if ((v22 & 0x800000) != 0)
      {
        v22 |= 0xFF000000;
      }

      v23 = v22 * 360.0 * 0.0000000596046448;
    }

    v24 = *(v17 + 44);
    if (*(v17 + 52) == 2)
    {
      v24 = -v24;
    }

    if (*(v17 + 44) < 0)
    {
      v24 = 1.79769313e308;
    }

    *v52.i64 = v23;
    *&v52.i64[1] = v24;
    v25 = *(v17 + 46);
    if (v25 != 255)
    {
      *&v53 = v25;
    }

    v26 = *(v17 + 47);
    if (v26 != 255)
    {
      *(&v53 + 1) = v26;
    }

    v27 = *(v17 + 56);
    if (v27 != 255)
    {
      *&v54 = v27;
    }
  }

  if (BYTE10(v54) == 1)
  {
    v28 = *(a1 + 116);
    if (v28 >> 23)
    {
      v31 = 1.79769313e308;
    }

    else
    {
      v29 = 90 * v28;
      v30 = vcvtd_n_f64_u32(v29, 0x17uLL);
      if (*(a1 + 113))
      {
        v31 = -(v29 * 0.00000011920929);
      }

      else
      {
        v31 = v30;
      }
    }

    v32 = *(a1 + 124);
    *v55.i64 = v31;
    v33 = *(a1 + 120);
    if ((v33 + 0x800000) >> 24)
    {
      v34 = 1.79769313e308;
    }

    else
    {
      if ((v33 & 0x800000) != 0)
      {
        v33 |= 0xFF000000;
      }

      v34 = v33 * 360.0 * 0.0000000596046448;
    }

    v35 = *(a1 + 114);
    if (v32)
    {
      v35 = -v35;
    }

    if (*(a1 + 114) < 0)
    {
      v36 = 1.79769313e308;
    }

    else
    {
      v36 = v35;
    }

    *&v55.i64[1] = v34;
    *&v56 = v36;
    v37 = *(a1 + 125);
    v38 = -1.0;
    v39 = -1.0;
    if (v37 != 255)
    {
      v39 = (pow(1.1, v37) + -1.0) * 10.0;
    }

    *&v57 = v39;
    v40 = *(a1 + 126);
    if (v40 != 255)
    {
      v38 = (pow(1.025, v40) + -1.0) * 45.0;
    }

    *(&v56 + 1) = v38;
    v41 = *(a1 + 129);
    if (v41 != 255)
    {
      BYTE8(v57) = *(a1 + 129);
      BYTE9(v57) = v41;
    }

    v42 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134546945;
      *&buf[4] = v31;
      *&buf[12] = 2053;
      *&buf[14] = v34;
      *&buf[22] = 2053;
      v62 = v36;
      *v63 = 2049;
      *&v63[2] = v39;
      v64 = 2049;
      v65 = v38;
      v66 = 1025;
      v67 = BYTE8(v57);
      _os_log_debug_impl(&dword_245396000, v42, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#process,sendSuplStatusReport, RefLocLat,%{sensitive}.7lf,Long,%{sensitive}.7lf,Alt,%{sensitive}.2lf,HorUnc,%{private}.f,VerUnc,%{private}.f,conf,%{private}.d", buf, 0x3Au);
    }
  }

  if (BYTE9(v54) == 1)
  {
    if (*(a1 + 148) <= 0x3FFu)
    {
      WORD2(v58) = *(a1 + 148);
    }

    v43 = *(a1 + 144);
    if (v43 <= 0x240C83FF)
    {
      LODWORD(v58) = v43 / 0x3E8;
    }

    v44 = WORD2(v58);
    if (v43 != -1 && WORD2(v58) != 0xFFFF && *(a1 + 150) != 255)
    {
      *(&v58 + 1) = 0;
    }

    v45 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v44;
      *&buf[8] = 1024;
      *&buf[10] = v58;
      *&buf[14] = 2048;
      *&buf[16] = *(&v58 + 1);
      _os_log_impl(&dword_245396000, v45, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#process,sendSuplStatusReport,Week,%u,TowSec,%u,TowUnc,%.3lf", buf, 0x18u);
    }
  }

  if (*(&v50 + 4) || HIDWORD(v50) || fabs(*&v51 + 1.0) >= 2.22044605e-16 || fabs(*(&v51 + 1) + -1.79769313e308) >= 2.22044605e-16 || fabs(*v52.i64 + -1.79769313e308) >= 2.22044605e-16 || fabs(*&v52.i64[1] + -1.79769313e308) >= 2.22044605e-16 || fabs(*&v53 + 1.0) >= 2.22044605e-16 || fabs(*(&v53 + 1) + 1.0) >= 2.22044605e-16 || fabs(*&v54 + 1.0) >= 2.22044605e-16)
  {
    sub_2454816D0(buf, a1);
    if (v62 == 0.0)
    {
      v48 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        _os_log_impl(&dword_245396000, v48, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,sendSuplStatusReport,SuplStatusReportCB is NULL", v49, 2u);
      }
    }

    else
    {
      v47 = *(a1 + 96);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3321888768;
      block[2] = sub_24547DCBC;
      block[3] = &unk_28585A8D8;
      sub_2454816D0(v60, buf);
      v60[8] = v56;
      v60[9] = v57;
      v60[10] = v58;
      v60[4] = v52;
      v60[5] = v53;
      v60[6] = v54;
      v60[7] = v55;
      v60[2] = v50;
      v60[3] = v51;
      dispatch_async(v47, block);
      sub_2453ABB5C(v60);
    }

    sub_2453ABB5C(buf);
  }

  else
  {
    v46 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v46, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#out,sendSuplStatusReport,No Status report, returning", buf, 2u);
    }
  }
}

void sub_24547DC10(uint64_t a1, unsigned int a2, int a3, int a4, int a5, __int128 *a6)
{
  v13 = 0;
  v14 = 0;
  v12 = a2;
  v18 = -1;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  if (a6)
  {
    v8 = sub_245468268("SendSuplMsgStatus", 416, 1, 0x78uLL);
    v13 = v8;
    if (!v8)
    {
      return;
    }

    v9 = *a6;
    v10 = a6[1];
    v11 = a6[2];
    v8[16] = *(a6 + 12);
    *(v8 + 2) = v10;
    *(v8 + 3) = v11;
    *(v8 + 1) = v9;
  }

  sub_24547D2BC(a1, &v12);
}

uint64_t sub_24547DC9C(uint64_t result, _DWORD *a2)
{
  if ((result - 1) <= 0x10)
  {
    *a2 = dword_245491C24[(result - 1)];
  }

  return result;
}

void sub_24547DCBC(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_2453A5EE4();
  }

  (*(*v2 + 48))(v2, a1 + 64);
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 104);
    v6 = *(a1 + 112);
    v7 = *(a1 + 120);
    v8 = *(a1 + 128);
    v10 = *(a1 + 64);
    v9 = *(a1 + 68);
    v11 = *(a1 + 72);
    v12 = *(a1 + 76);
    v13 = *(a1 + 80);
    v14 = *(a1 + 88);
    if (*(a1 + 136))
    {
      v15 = 84;
    }

    else
    {
      v15 = 70;
    }

    if (*(a1 + 137))
    {
      v16 = 84;
    }

    else
    {
      v16 = 70;
    }

    if (*(a1 + 138))
    {
      v17 = 84;
    }

    else
    {
      v17 = 70;
    }

    v18 = 134548993;
    v19 = v14;
    v20 = 2053;
    v21 = v4;
    v22 = 2053;
    v23 = v5;
    v24 = 2049;
    v25 = v6;
    v26 = 2049;
    v27 = v7;
    v28 = 2049;
    v29 = v8;
    v30 = 1024;
    v31 = v9;
    v32 = 1024;
    v33 = v11;
    v34 = 1024;
    v35 = v10;
    v36 = 1024;
    v37 = v12;
    v38 = 2048;
    v39 = v13;
    v40 = 1024;
    v41 = v15;
    v42 = 1024;
    v43 = v16;
    v44 = 1024;
    v45 = v17;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#process,sendSuplStatusReport,Lat,%{sensitive}.7f,Long,%{sensitive}.7f,Alt,%{sensitive}.2f,SemMaj,%{private}.f,SemMin,%{private}.f,UncAlt,%{private}.f,PosMethod,%u,Status,%u,SessionId,%u,endCause,%u,HACC,%f,ephProvided,%c,refTimeProvided,%c,refLocProvided,%c", &v18, 0x72u);
  }
}

BOOL sub_24547DE64(char **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[1] - *a1;
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v2;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#process,validateSuplInit,SUPL INIT len,%zd", &v11, 0xCu);
  }

  if ((v2 - 0x10000) > 0xFFFFFFFFFFFF0004)
  {
    v9 = __rev16(**a1);
    if (v2 == v9)
    {
      return 1;
    }

    v10 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v11 = 134218240;
      v12 = v2;
      v13 = 1024;
      v14 = v9;
      v6 = "#gpsd,#supl,#in,validateSuplInit,SuplInit Len,%zd mismatches SuplInitHadrLen,%u";
      v7 = v10;
      v8 = 18;
      goto LABEL_11;
    }
  }

  else
  {
    v4 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v11 = 134217984;
      v12 = v2;
      v6 = "#gpsd,#supl,#in,validateSuplInit,Invalid SUPL INIT message length,%zd";
      v7 = v4;
      v8 = 12;
LABEL_11:
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, v6, &v11, v8);
      return 0;
    }
  }

  return result;
}

void sub_24547DFE4(char *__s1, uint64_t a2)
{
  v3 = __s1;
  v19 = *MEMORY[0x277D85DE8];
  if (__s1 && (v4 = strnlen(__s1, 0x100uLL), (v4 & 0xFFFFFEFF) == 0))
  {
    v16 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v17 = 67109120;
      v18 = v4;
      _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd,#supl,convertStringIPtoVect,Wrong IP address len,%u", &v17, 8u);
    }
  }

  else
  {
    v5 = *(a2 + 8);
    do
    {
      v6 = *(a2 + 16);
      if (v5 >= v6)
      {
        v7 = *a2;
        v8 = &v5[-*a2];
        v9 = (v8 + 1);
        if ((v8 + 1) < 0)
        {
          sub_2453A631C();
        }

        v10 = v6 - v7;
        if (2 * v10 > v9)
        {
          v9 = 2 * v10;
        }

        if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          operator new();
        }

        v12 = &v5[-*a2];
        *v8 = 0;
        v5 = v8 + 1;
        memcpy(0, v7, v12);
        *a2 = 0;
        *(a2 + 8) = v8 + 1;
        *(a2 + 16) = 0;
        if (v7)
        {
          operator delete(v7);
        }
      }

      else
      {
        *v5++ = 0;
      }

      *(a2 + 8) = v5;
    }

    while (*v3++);
    v14 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v5 - *a2;
      v17 = 67109120;
      v18 = v15;
      _os_log_impl(&dword_245396000, v14, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,convertStringIPtoVect,IPVectorSize,%u", &v17, 8u);
    }
  }
}

void sub_24547E1E4(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_19;
  }

  v4 = strnlen(a1, 0x100uLL);
  if ((v4 & 0xFFFFFEFF) == 0)
  {
    v8 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(v13) = 67109120;
    DWORD1(v13) = v4;
    v9 = "#gpsd,#supl,length of SLP address ,%u";
    v10 = v8;
    goto LABEL_21;
  }

  v5 = *(a1 + 256);
  if (v5 == 1 || v5 == 2)
  {
    *(a2 + 4) = v5;
    sub_24547DFE4(a1, a2 + 32);
LABEL_18:
    *a2 = 1;
    goto LABEL_19;
  }

  if (v5 == 3)
  {
    *(a2 + 4) = 3;
    v6 = strlen(a1);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2453A59DC();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v14) = v6;
    if (v6)
    {
      memcpy(&v13, a1, v6);
    }

    *(&v13 + v7) = 0;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = v13;
    *(a2 + 24) = v14;
    goto LABEL_18;
  }

LABEL_19:
  v11 = qword_2813CF018;
  if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  v12 = *(a2 + 4);
  LODWORD(v13) = 67109120;
  DWORD1(v13) = v12;
  v9 = "#gpsd,#supl,SLPType,%u";
  v10 = v11;
LABEL_21:
  _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, 8u);
}

uint64_t sub_24547E3D4(uint64_t a1, char **a2, uint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  if (sub_24547DE64(a2))
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *buf = 0;
    v37 = 0;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    memset(v53, 0, sizeof(v53));
    memset(v54, 0, 261);
    memset(v55, 0, 261);
    v59 = -1;
    v60 = -1;
    v61 = -1;
    v62 = 0;
    __p = 0;
    v26 = 0;
    v27 = 0;
    if (&__p != a2)
    {
      sub_2453ADF3C(&__p, *a2, a2[1], a2[1] - *a2);
    }

    v5 = sub_24547473C();
    v6 = sub_245476A78(v5, 0, &__p, buf);
    v7 = v6;
    if (buf[4])
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (!v8)
    {
      v19 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v28 = 67109120;
        v29 = v7;
        _os_log_error_impl(&dword_245396000, v19, OS_LOG_TYPE_ERROR, "#gpsd,#supl,SUPL INIT Decode failed %u", v28, 8u);
      }

      goto LABEL_37;
    }

    sub_24547DC9C(v38, a3);
    if (HIBYTE(v58) == 1)
    {
      *(a3 + 4) = HIBYTE(v58);
      v10 = v59;
      *(a3 + 5) = v59;
      v11 = HIBYTE(v59);
      *(a3 + 6) = HIBYTE(v59);
      v12 = v60;
      *(a3 + 8) = v60;
      v13 = v61;
      *(a3 + 10) = v61;
      v14 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *v28 = 67109888;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v13;
      v15 = "#gpsd,#supl,coming from supl,HAcc,%u,VAcc,%u,LocAge,%u,Delay,%u";
      v16 = v14;
      v17 = 26;
    }

    else
    {
      v21 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *v28 = 0;
      v15 = "#gpsd,#supl,No Qop vals";
      v16 = v21;
      v17 = 2;
    }

    _os_log_impl(&dword_245396000, v16, OS_LOG_TYPE_DEFAULT, v15, v28, v17);
LABEL_22:
    if (v55[64])
    {
      sub_24547E1E4(v55, a3 + 16);
    }

    if (v56 == 1)
    {
      *(a3 + 72) = 257;
    }

    else
    {
      v22 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_245396000, v22, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,Not an emergency session", v28, 2u);
      }
    }

    if (v54[64])
    {
      sub_24547E1E4(v54, a3 + 80);
    }

    if (v62)
    {
      if (v62 == 1)
      {
        v23 = 2;
        goto LABEL_36;
      }

      if (v62 == 2)
      {
        v23 = 1;
LABEL_36:
        *(a3 + 136) = v23;
LABEL_37:
        if (__p)
        {
          v26 = __p;
          operator delete(__p);
        }

        return v9;
      }
    }

    *(a3 + 136) = 0;
    goto LABEL_37;
  }

  v18 = qword_2813CF018;
  v9 = 0;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v18, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,validate SUPL INIT failed", buf, 2u);
    return 0;
  }

  return v9;
}

void sub_24547E7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24547E7DC(uint64_t a1, uint64_t a2, __int16 *a3, _DWORD *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  *a4 = 1;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_2453AE4E0(&v37, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v29 = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_24546FD48(&v30, *(a3 + 1), *(a3 + 2));
  }

  else
  {
    v30 = *(a3 + 4);
    v31 = *(a3 + 3);
  }

  v32 = *(a3 + 32);
  if (*(a3 + 63) < 0)
  {
    sub_24546FD48(&v33, *(a3 + 5), *(a3 + 6));
  }

  else
  {
    v33 = *(a3 + 20);
    v34 = *(a3 + 7);
  }

  v35 = *(a3 + 4);
  v36 = *(a3 + 10);
  v7 = HIBYTE(v31);
  v8 = *(&v30 + 1);
  if (v31 < 0)
  {
    v7 = *(&v30 + 1);
  }

  if (!v7)
  {
    *a4 = 4;
    v12 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v11 = "#gpsd,#supl,#input,SLP Address not provisioned";
    goto LABEL_22;
  }

  if (v34 >= 0)
  {
    v9 = HIBYTE(v34);
  }

  else
  {
    v9 = *(&v33 + 1);
  }

  if (!v9)
  {
    *a4 = 4;
    v12 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v11 = "#gpsd,#supl,#input,IMSI not provisioned";
    goto LABEL_22;
  }

  if (SHIBYTE(v31) < 0 && *(&v30 + 1) >= 0x100uLL)
  {
    *a4 = 4;
    v10 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 134217984;
    v41 = v8;
    v11 = "#gpsd,#supl,#input,Invalid SLP Address length,%lu";
LABEL_26:
    v13 = v10;
    v14 = 12;
    goto LABEL_27;
  }

  if (v9 >= 0x10)
  {
    *a4 = 4;
    v10 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 134217984;
    v41 = v9;
    v11 = "#gpsd,#supl,#input,Invalid IMSI Len,%lu";
    goto LABEL_26;
  }

  if (!sub_24547DE64(&v37))
  {
    *a4 = 4;
    v12 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v11 = "#gpsd,#supl,#input,Invalide SUPL INIT";
LABEL_22:
    v13 = v12;
    v14 = 2;
LABEL_27:
    _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, v11, buf, v14);
    goto LABEL_43;
  }

  v15 = *(a1 + 88);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3321888768;
  v16[2] = sub_24547EC54;
  v16[3] = &unk_28585A908;
  v16[4] = a1;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_2453AE4E0(&v17, v37, v38, v38 - v37);
  v20 = v29;
  if (SHIBYTE(v31) < 0)
  {
    sub_24546FD48(v21, v30, *(&v30 + 1));
  }

  else
  {
    *v21 = v30;
    v22 = v31;
  }

  v23 = v32;
  if (SHIBYTE(v34) < 0)
  {
    sub_24546FD48(__p, v33, *(&v33 + 1));
  }

  else
  {
    *__p = v33;
    v25 = v34;
  }

  v26 = v35;
  v27 = v36;
  v28 = a4;
  dispatch_async(v15, v16);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

LABEL_43:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_24547EBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  sub_2453AB348(&a32);
  v40 = *(v38 - 120);
  if (v40)
  {
    *(v38 - 112) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void sub_24547EC54(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48) - *(a1 + 40);
    *buf = 67109120;
    *v46 = v3;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,SUPL INIT Len,%u", buf, 8u);
    v2 = qword_2813CF018;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 64);
    if (*(a1 + 96))
    {
      v6 = 84;
    }

    else
    {
      v6 = 70;
    }

    v7 = (a1 + 104);
    if (*(a1 + 127) < 0)
    {
      v7 = *v7;
    }

    if (*(a1 + 136))
    {
      v8 = 84;
    }

    else
    {
      v8 = 70;
    }

    *buf = 136381699;
    *v46 = v4;
    *&v46[8] = 1025;
    *&v46[10] = v5;
    *&v46[14] = 1025;
    *&v46[16] = v6;
    *v47 = 2081;
    *&v47[2] = v7;
    v48 = 1025;
    v49 = v8;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,SLP,%{private}.s,%{private}.u,MSA,%{private}.c,IMSI,%{private}.s,HeloEnabled,%{private}.c", buf, 0x28u);
  }

  buf[0] = 0;
  *&v46[12] = 0;
  *v47 = 0;
  *&v46[4] = 0;
  *&v47[8] = *(a1 + 64);
  std::string::operator=(&v46[4], (a1 + 72));
  std::string::operator=(&v46[4], (a1 + 72));
  v9 = *&v47[8];
  if (*&v47[8] - 7277 <= 0xFFFFFFFD)
  {
    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 67109120;
      v41 = v9;
      _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,Non Standard Port, %u", v40, 8u);
    }
  }

  buf[0] = 2;
  v11 = sub_245479234();
  sub_245479500(v11, 0, buf);
  v12 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v40 = 0;
    _os_log_impl(&dword_245396000, v12, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,SetSlpInfo done", v40, 2u);
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  *v40 = 1;
  if (*(a1 + 127) < 0)
  {
    sub_24546FD48(__p, *(a1 + 104), *(a1 + 112));
    v13 = v42;
    v14 = v43;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    *__p = *(a1 + 104);
    v37 = *(a1 + 120);
  }

  if (v37 >= 0)
  {
    v15 = HIBYTE(v37);
  }

  else
  {
    v15 = __p[1];
  }

  LOBYTE(v33) = -1;
  v16 = v14 - v13;
  if (v16 > 7)
  {
    if (v16 != 8)
    {
      v43 = v13 + 8;
    }
  }

  else
  {
    sub_2454770D4(&v42, 8 - v16, &v33);
  }

  if (v15)
  {
    v17 = 0;
    v18 = 0;
    v19 = v15 - 1;
    while (1)
    {
      if (SHIBYTE(v37) < 0)
      {
        v20 = __p[0];
        v21 = *(__p[0] + v18) - 48;
        if (v21 >= 0xA)
        {
          LOBYTE(v21) = -1;
        }

        if (v19 != v18)
        {
          v22 = v18 + 1;
LABEL_42:
          v24 = *(v20 + v22);
          v25 = v24 - 48;
          v23 = 16 * v24;
          if (v25 >= 0xA)
          {
            v23 = -16;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v20 = __p;
        v21 = *(__p + v18) - 48;
        if (v21 >= 0xA)
        {
          LOBYTE(v21) = -1;
        }

        if (v19 != v18)
        {
          v22 = v18 | 1;
          goto LABEL_42;
        }
      }

      v23 = -16;
LABEL_44:
      *(v42 + v17) = v23 | v21;
      v18 += 2;
      if (v18 < v15 && v17++ < 7)
      {
        continue;
      }

      break;
    }
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  v27 = sub_24547473C();
  sub_2454748F8(v27, 0, v40);
  v28 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_245396000, v28, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#in,SetSETInfo done", &v33, 2u);
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (&v33 != (a1 + 40))
  {
    sub_2453ADF3C(&v33, *(a1 + 40), *(a1 + 48), *(a1 + 48) - *(a1 + 40));
  }

  v29 = sub_24547473C();
  v30 = sub_245474D6C(v29, 0, &v33, 1);
  if (v30)
  {
    **(a1 + 152) = 7;
    v31 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v38 = 67109120;
      v39 = v30;
      _os_log_error_impl(&dword_245396000, v31, OS_LOG_TYPE_ERROR, "#gpsd,#supl,ProcessSuplMtlrMessage returned error %u", v38, 8u);
    }
  }

  else
  {
    v32 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&dword_245396000, v32, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,ProcessSuplMtlrMessage success", v38, 2u);
    }
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if ((v47[7] & 0x80000000) != 0)
  {
    operator delete(*&v46[4]);
  }
}

void sub_24547F13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24547F1A0(__n128 *a1, uint64_t a2)
{
  *(&a1[2] + 8) = 0uLL;
  v4 = &a1[2].n128_i8[8];
  a1[3].n128_u64[1] = 0;
  sub_2453AE4E0(&a1[2].n128_i64[1], *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
  *(v4 + 12) = *(a2 + 64);
  if (*(a2 + 95) < 0)
  {
    sub_24546FD48(v4 + 32, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    *(v4 + 6) = *(a2 + 88);
    *(v4 + 2) = v5;
  }

  a1[6].n128_u8[0] = *(a2 + 96);
  if (*(a2 + 127) < 0)
  {
    sub_24546FD48(&a1[6].n128_u8[8], *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v6 = *(a2 + 104);
    a1[7].n128_u64[1] = *(a2 + 120);
    *(a1 + 104) = v6;
  }

  result = *(a2 + 128);
  a1[9].n128_u64[0] = *(a2 + 144);
  a1[8] = result;
  return result;
}

void sub_24547F25C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(v2[4]);
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_24547F290(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

uint64_t sub_24547F2F8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v8 = a4;
  v9 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3 < 0x3E8 && a4 < 0x3E8 && a5 >> 28 == 0;
  v12 = v11;
  if (v11)
  {
    v15 = *(a1 + 56);
    v16 = (a1 + 56);
    v17 = *(a1 + 64) - v15;
    if (v17 > 3)
    {
      if (v17 != 4)
      {
        *(a1 + 64) = v15 + 4;
      }
    }

    else
    {
      sub_2453A6334((a1 + 56), 4 - v17);
      v15 = *v16;
    }

    v20 = 0;
    *v15 = a5 >> 20;
    *(*(a1 + 56) + 1) = a5 >> 12;
    *(*(a1 + 56) + 2) = a5 >> 4;
    *(*(a1 + 56) + 3) = 16 * a5;
    *(*(a1 + 56) + 3) >>= 4;
    do
    {
      do
      {
        v21 = v20;
        v22 = v9;
        v23 = v9;
        LOWORD(v9) = v9 / 0xAu;
        LOBYTE(v31[0]) = v22 - 10 * v9;
        sub_2454813C0((a1 + 8), *(a1 + 8), v31);
        v20 = v21 + 1;
      }

      while (v23 > 9);
    }

    while (v21 < 2);
    v24 = 0;
    do
    {
      do
      {
        v25 = v8;
        v26 = v24;
        v27 = v8;
        LOWORD(v8) = v8 / 0xAu;
        LOBYTE(v31[0]) = v25 - 10 * v8;
        sub_2454813C0((a1 + 32), *(a1 + 32), v31);
        v24 = v26 - 1;
      }

      while (v27 > 9);
    }

    while (!v26);
    *a1 = 1;
    v28 = *a2;
    v29 = *(a2 + 8) - *a2;
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        *(a2 + 8) = v28 + 2;
      }
    }

    else
    {
      sub_2453A6334(a2, 2 - v29);
      v28 = *a2;
    }

    *v28 = BYTE1(a6);
    *(*a2 + 1) = a6;
  }

  else
  {
    v18 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v31[0] = 67109888;
      v31[1] = v9;
      v32 = 1024;
      v33 = v8;
      v34 = 1024;
      v35 = a5;
      v36 = 1024;
      v37 = a6;
      _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, "#gpsd,#supl,Either MCC %d, MNC %d, CID %d, TAC %d is not in range", v31, 0x1Au);
    }
  }

  return v12;
}

void sub_24547F568(uint64_t a1, int *a2)
{
  v3 = *(a1 + 88);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3321888768;
  v4[2] = sub_24547F6C4;
  v4[3] = &unk_28585A938;
  v5 = *a2;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_2453AAA8C(&v6, *(a2 + 1), *(a2 + 2), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 2) - *(a2 + 1)) >> 2));
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_2453AABE8(&v9, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_2453AACE8(&__p, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 5);
  dispatch_async(v3, v4);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_24547F690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24547F6C4(uint64_t a1)
{
  v121 = *MEMORY[0x277D85DE8];
  v94[0] = 0;
  v95 = 0;
  LODWORD(v96[0]) = -1;
  *(v96 + 4) = 0;
  memset(&v96[2] + 4, 0, 13);
  *(&v96[1] + 4) = 0;
  v96[5] = 0;
  v97 = 0;
  v98 = -1;
  v99 = 0;
  v100 = 0;
  v101 = -1;
  v102 = 0;
  v103 = 0;
  v104[0] = 0;
  *(v104 + 6) = 0;
  v104[2] = 0;
  v104[3] = 0;
  v105 = 0;
  v106 = 1;
  v2 = *(a1 + 32);
  if (v2 != 5)
  {
    if (v2 == 2)
    {
      v94[0] = 2;
      v11 = *(a1 + 88);
      v12 = *(a1 + 96) - v11;
      if (v12)
      {
        v13 = v12 >> 5;
        if (v13 <= 1)
        {
          v13 = 1;
        }

        while (*v11 != 1)
        {
          v11 += 32;
          if (!--v13)
          {
            goto LABEL_16;
          }
        }

        v16 = *(v11 + 2);
        LOWORD(v98) = *(v11 + 2);
        v14 = *(v11 + 4);
        WORD1(v98) = *(v11 + 4);
        v15 = *(v11 + 12);
        HIDWORD(v98) = v15;
        v79 = *(v11 + 16);
        if (v79 > 0x1FF)
        {
          v86 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v119 = v79;
            _os_log_error_impl(&dword_245396000, v86, OS_LOG_TYPE_ERROR, "#gpsd,#supl,,Invalid PSC,%u", buf, 8u);
            v16 = v98;
            v14 = WORD1(v98);
            v15 = HIDWORD(v98);
          }
        }

        else
        {
          v101 = *(v11 + 16);
        }
      }

      else
      {
LABEL_16:
        v14 = 0xFFFF;
        v15 = -1;
        v16 = 0xFFFF;
      }

      v17 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v119 = v16;
        *v120 = 1024;
        *&v120[2] = v14;
        *&v120[6] = 1024;
        *&v120[8] = v15;
        _os_log_impl(&dword_245396000, v17, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,WCDMA Serving,%u,%u,%u", buf, 0x14u);
        v16 = v98;
        v14 = WORD1(v98);
        v15 = HIDWORD(v98);
      }

      if (v16 <= 0x3E7 && v14 <= 0x3E7 && !(v15 >> 28))
      {
        goto LABEL_125;
      }

      v18 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_125;
      }

      *buf = 0;
      v19 = "#gpsd,#supl,Error in WCDMA Serving Cell Info";
    }

    else
    {
      if (v2 != 1)
      {
        goto LABEL_125;
      }

      v94[0] = 1;
      v96[0] = -1;
      v3 = *(a1 + 64);
      v4 = *(a1 + 72) - v3;
      if (v4)
      {
        v5 = v4 >> 4;
        if (v5 <= 1)
        {
          v5 = 1;
        }

        v6 = (v3 + 8);
        while (*(v6 - 8) != 1)
        {
          v6 += 4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        LOBYTE(v96[4]) = -1;
        v10 = *(v6 - 3);
        LOWORD(v96[0]) = *(v6 - 3);
        v9 = *(v6 - 2);
        WORD1(v96[0]) = *(v6 - 2);
        v8 = *v6;
        WORD2(v96[0]) = *v6;
        v80 = v6[1];
        v7 = v80;
        HIWORD(v96[0]) = v80;
      }

      else
      {
LABEL_10:
        v7 = 0xFFFF;
        v8 = 0xFFFF;
        v9 = 0xFFFF;
        v10 = 0xFFFF;
      }

      v81 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67175425;
        v119 = v10;
        *v120 = 1025;
        *&v120[2] = v9;
        *&v120[6] = 1025;
        *&v120[8] = v8;
        *&v120[12] = 1025;
        *&v120[14] = v7;
        _os_log_impl(&dword_245396000, v81, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,GSM Serving,%{private}.u,%{private}.u,%{private}.u,%{private}.u", buf, 0x1Au);
        v10 = LOWORD(v96[0]);
        v9 = WORD1(v96[0]);
      }

      if (v10 <= 0x3E7 && v9 < 0x3E8)
      {
        goto LABEL_125;
      }

      v18 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_125;
      }

      *buf = 0;
      v19 = "#gpsd,#supl,Invalid GSM Serving Cell Info";
    }

    v82 = v18;
    v83 = 2;
    goto LABEL_105;
  }

  v94[0] = 4;
  v20 = operator new(0xA8uLL, MEMORY[0x277D826F0]);
  *(v20 + 2) = 0u;
  v92 = (v20 + 32);
  *(v20 + 14) = 0;
  v21 = (v20 + 112);
  *(v20 + 18) = 0;
  v91 = (v20 + 144);
  *(v20 + 19) = 0;
  *(v20 + 20) = 0;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *(v20 + 6) = 0;
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;
  *(v20 + 5) = 0u;
  *(v20 + 90) = 0u;
  *(v20 + 15) = 0;
  *(v20 + 16) = 0;
  *(v20 + 34) = 0;
  v105 = v20;
  *v20 = 3;
  v22 = *(a1 + 40);
  if (*(a1 + 48) == v22)
  {
    goto LABEL_125;
  }

  v23 = v20;
  v93 = 0;
  v24 = 0;
  while (1)
  {
    v25 = v22 + 28 * v24;
    if (*v25 != 1)
    {
      if (v93 > 7)
      {
        goto LABEL_93;
      }

      *buf = 0;
      LOWORD(v119) = 0;
      *v120 = 0;
      memset(&v120[8], 0, 106);
      if (*(v25 + 16) <= 0x1F7u)
      {
        LOWORD(v119) = *(v25 + 16);
        if (*(v25 + 18) <= 0x61u)
        {
          v120[112] = *(v25 + 18);
          *&v120[104] = 1;
        }

        if (*(v25 + 19) <= 0x22u)
        {
          v120[113] = *(v25 + 19);
          *&v120[108] = 1;
        }

        *buf = sub_24547F2F8(v120, &v120[80], *(v25 + 2), *(v25 + 4), *(v25 + 12), *(v25 + 8));
        v30 = *(v23 + 19);
        v29 = *(v23 + 20);
        if (v30 >= v29)
        {
          v54 = (v30 - *v91) >> 7;
          if ((v54 + 1) >> 57)
          {
            sub_2453A631C();
          }

          v55 = v29 - *v91;
          v56 = v55 >> 6;
          if (v55 >> 6 <= (v54 + 1))
          {
            v56 = v54 + 1;
          }

          if (v55 >= 0x7FFFFFFFFFFFFF80)
          {
            v57 = 0x1FFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          *v111 = v91;
          if (v57)
          {
            sub_245465AD8(v91, v57);
          }

          v58 = v54 << 7;
          *v110 = 0;
          *&v110[8] = v58;
          *&v110[16] = v54 << 7;
          *&v110[24] = 0;
          v59 = *buf;
          *(v58 + 4) = v119;
          *v58 = v59;
          v60 = *v120;
          *((v54 << 7) + 0x10) = 0;
          *(v58 + 8) = v60;
          *(v58 + 24) = 0;
          *(v58 + 32) = 0;
          sub_2454658EC(((v54 << 7) + 16), *&v120[8], *&v120[16], *&v120[16] - *&v120[8]);
          *(v58 + 40) = 0;
          *(v58 + 48) = 0;
          *(v58 + 56) = 0;
          sub_2454658EC(((v54 << 7) + 40), *&v120[32], *&v120[40], *&v120[40] - *&v120[32]);
          *(v58 + 64) = 0;
          *(v58 + 72) = 0;
          *(v58 + 80) = 0;
          sub_2453AE4E0(((v54 << 7) + 64), *&v120[56], *&v120[64], *&v120[64] - *&v120[56]);
          *(v58 + 88) = 0;
          *(v58 + 96) = 0;
          *(v58 + 104) = 0;
          sub_2453AE4E0(((v54 << 7) + 88), *&v120[80], *&v120[88], *&v120[88] - *&v120[80]);
          v61 = *&v120[104];
          *(v58 + 120) = *&v120[112];
          *(v58 + 112) = v61;
          v34 = *&v110[16] + 128;
          *&v110[16] += 128;
          v63 = *(v23 + 18);
          v62 = *(v23 + 19);
          v64 = (*&v110[8] + v63 - v62);
          if (v63 != v62)
          {
            v65 = (*&v110[8] + v63 - v62);
            v66 = *(v23 + 18);
            do
            {
              v67 = *v66;
              *(v65 + 2) = *(v66 + 2);
              *v65 = v67;
              *(v65 + 2) = *(v66 + 2);
              *(v65 + 3) = 0;
              *(v65 + 4) = 0;
              *(v65 + 2) = 0;
              *(v65 + 1) = *(v66 + 1);
              *(v65 + 4) = *(v66 + 4);
              *(v66 + 2) = 0;
              *(v66 + 3) = 0;
              *(v66 + 4) = 0;
              *(v65 + 5) = 0;
              *(v65 + 6) = 0;
              *(v65 + 7) = 0;
              *(v65 + 40) = *(v66 + 40);
              *(v65 + 7) = *(v66 + 7);
              *(v66 + 5) = 0;
              *(v66 + 6) = 0;
              *(v66 + 7) = 0;
              *(v65 + 8) = 0;
              *(v65 + 9) = 0;
              *(v65 + 10) = 0;
              *(v65 + 4) = *(v66 + 4);
              *(v65 + 10) = *(v66 + 10);
              *(v66 + 8) = 0;
              *(v66 + 9) = 0;
              *(v66 + 10) = 0;
              *(v65 + 11) = 0;
              *(v65 + 12) = 0;
              *(v65 + 13) = 0;
              *(v65 + 88) = *(v66 + 88);
              *(v65 + 13) = *(v66 + 13);
              *(v66 + 11) = 0;
              *(v66 + 12) = 0;
              *(v66 + 13) = 0;
              v68 = *(v66 + 14);
              *(v65 + 30) = *(v66 + 30);
              *(v65 + 14) = v68;
              v66 += 128;
              v65 += 128;
            }

            while (v66 != v62);
            do
            {
              sub_245481768(v63);
              v63 += 128;
            }

            while (v63 != v62);
            v63 = *v91;
            v34 = *&v110[16];
          }

          *(v23 + 18) = v64;
          *(v23 + 19) = v34;
          v69 = *(v23 + 20);
          *(v23 + 20) = *&v110[24];
          *&v110[16] = v63;
          *&v110[24] = v69;
          *v110 = v63;
          *&v110[8] = v63;
          sub_2454817E0(v110);
        }

        else
        {
          v31 = *buf;
          *(v30 + 4) = v119;
          *v30 = v31;
          v32 = *v120;
          *(v30 + 16) = 0;
          *(v30 + 8) = v32;
          *(v30 + 24) = 0;
          *(v30 + 32) = 0;
          sub_2454658EC((v30 + 16), *&v120[8], *&v120[16], *&v120[16] - *&v120[8]);
          *(v30 + 40) = 0;
          *(v30 + 48) = 0;
          *(v30 + 56) = 0;
          sub_2454658EC((v30 + 40), *&v120[32], *&v120[40], *&v120[40] - *&v120[32]);
          *(v30 + 64) = 0;
          *(v30 + 72) = 0;
          *(v30 + 80) = 0;
          sub_2453AE4E0((v30 + 64), *&v120[56], *&v120[64], *&v120[64] - *&v120[56]);
          *(v30 + 88) = 0;
          *(v30 + 96) = 0;
          *(v30 + 104) = 0;
          sub_2453AE4E0((v30 + 88), *&v120[80], *&v120[88], *&v120[88] - *&v120[80]);
          v33 = *&v120[104];
          *(v30 + 120) = *&v120[112];
          *(v30 + 112) = v33;
          v34 = v30 + 128;
          *(v23 + 19) = v30 + 128;
        }

        *(v23 + 19) = v34;
        v70 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
        {
          v71 = *(a1 + 40) + 28 * v24;
          v72 = *(v71 + 2);
          v73 = *(v71 + 4);
          v74 = *(v71 + 16);
          v75 = *(v71 + 18);
          v76 = *(v71 + 19);
          v78 = *(v71 + 8);
          v77 = *(v71 + 12);
          LODWORD(v71) = *(v71 + 24);
          *v110 = 134285569;
          *&v110[4] = v24;
          *&v110[12] = 1025;
          *&v110[14] = v72;
          *&v110[18] = 1025;
          *&v110[20] = v73;
          *&v110[24] = 1025;
          *&v110[26] = v77;
          *&v110[30] = 1025;
          *v111 = v74;
          *&v111[4] = 1025;
          *&v111[6] = v75;
          v112 = 1025;
          v113 = v76;
          v114 = 1025;
          v115 = v78;
          v116 = 1025;
          v117 = v71;
          _os_log_impl(&dword_245396000, v70, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,LTE neighbor,%{private}.zd,MCC %{private}.u,MNC %{private}.u,CI %{private}.u,PCI %{private}.u,RSRP %{private}.u,RSRQ %{private}.u,TAC %{private}.u,DLFREQ %{private}.u", v110, 0x3Cu);
        }

        ++v93;
        if (*&v120[80])
        {
          *&v120[88] = *&v120[80];
          operator delete(*&v120[80]);
        }
      }

      if (*&v120[56])
      {
        *&v120[64] = *&v120[56];
        operator delete(*&v120[56]);
      }

      if (*&v120[32])
      {
        *&v120[40] = *&v120[32];
        operator delete(*&v120[32]);
      }

      v53 = *&v120[8];
      if (!*&v120[8])
      {
        goto LABEL_93;
      }

      *&v120[16] = *&v120[8];
      goto LABEL_92;
    }

    v26 = *(v25 + 16);
    if (v26 >= 0x1F8)
    {
      break;
    }

    *buf = 0;
    memset(v120, 0, 72);
    __p = 0;
    v108 = 0;
    v109 = 0;
    if ((sub_24547F2F8(buf, &__p, *(v25 + 2), *(v25 + 4), *(v25 + 12), *(v25 + 8)) & 1) == 0)
    {
      v84 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v110 = 0;
        v85 = "#gpsd,#supl,ConvertIntValsToASN1T_CellGlobalIdEUTRA function returned error";
LABEL_116:
        _os_log_error_impl(&dword_245396000, v84, OS_LOG_TYPE_ERROR, v85, v110, 2u);
      }

LABEL_117:
      if (__p)
      {
        v108 = __p;
        operator delete(__p);
      }

      if (*&v120[48])
      {
        *&v120[56] = *&v120[48];
        operator delete(*&v120[48]);
      }

      if (*&v120[24])
      {
        *&v120[32] = *&v120[24];
        operator delete(*&v120[24]);
      }

      if (*v120)
      {
        *&v120[8] = *v120;
        operator delete(*v120);
      }

      goto LABEL_125;
    }

    *(v23 + 52) = *(*(a1 + 40) + 28 * v24 + 16);
    *(v23 + 6) = *buf;
    sub_2453ADF3C(v92, *v120, *&v120[8], *&v120[8] - *v120);
    sub_2453ADF3C(v23 + 7, *&v120[24], *&v120[32], *&v120[32] - *&v120[24]);
    sub_2453ADF3C(v23 + 10, *&v120[48], *&v120[56], *&v120[56] - *&v120[48]);
    sub_2453ADF3C(v21, __p, v108, v108 - __p);
    v23[136] = -1;
    v27 = *(a1 + 40);
    v28 = *(v27 + 28 * v24 + 18);
    if (v28 > 0x61)
    {
      v35 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v110 = 67174657;
        *&v110[4] = v28;
        _os_log_error_impl(&dword_245396000, v35, OS_LOG_TYPE_ERROR, "#gpsd,#supl,Invalid Rsrp,%{private}.u", v110, 8u);
        v27 = *(a1 + 40);
      }
    }

    else
    {
      v23[136] = v28;
      *(v23 + 2) = 1;
    }

    v23[137] = -1;
    v36 = *(v27 + 28 * v24 + 19);
    if (v36 > 0x22)
    {
      v37 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v110 = 67174657;
        *&v110[4] = v36;
        _os_log_error_impl(&dword_245396000, v37, OS_LOG_TYPE_ERROR, "#gpsd,#supl,Invalid Rsrq,%{private}.u", v110, 8u);
        v27 = *(a1 + 40);
      }
    }

    else
    {
      v23[137] = v36;
      *(v23 + 3) = 1;
    }

    *(v23 + 69) = -1;
    v38 = *(v27 + 28 * v24 + 20);
    if (v38 > 1282)
    {
      v39 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        *v110 = 67174657;
        *&v110[4] = v38;
        _os_log_impl(&dword_245396000, v39, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,Invalid TA,%{private}.d", v110, 8u);
        v27 = *(a1 + 40);
      }
    }

    else
    {
      *(v23 + 69) = v38;
      *(v23 + 4) = 1;
    }

    v40 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v27 + 28 * v24;
      v42 = *(v41 + 2);
      v43 = *(v41 + 16);
      v45 = v41 + 8;
      LODWORD(v41) = *(v41 + 8);
      v44 = *(v45 + 4);
      *v110 = 67175425;
      *&v110[4] = v42;
      *&v110[8] = 1025;
      *&v110[10] = v44;
      *&v110[14] = 1025;
      *&v110[16] = v43;
      *&v110[20] = 1025;
      *&v110[22] = v41;
      _os_log_impl(&dword_245396000, v40, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#input,LTE Serving,%{private}u,%{private}u,%{private}u,%{private}u", v110, 0x1Au);
      v27 = *(a1 + 40);
    }

    v46 = *(v27 + 28 * v24 + 2);
    if (v46 >= 0x3E8)
    {
      v47 = qword_2813CF008;
      if (os_log_type_enabled(qword_2813CF008, OS_LOG_TYPE_DEFAULT))
      {
        *v110 = 67174657;
        *&v110[4] = v46;
        _os_log_impl(&dword_245396000, v47, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,LTE MCC, %{private}u", v110, 8u);
        v27 = *(a1 + 40);
      }
    }

    v48 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(v27 + 28 * v24 + 4);
      *v110 = 67174657;
      *&v110[4] = v49;
      _os_log_impl(&dword_245396000, v48, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,LTE Serving,MNC %{private}u", v110, 8u);
      v27 = *(a1 + 40);
    }

    v50 = v27 + 28 * v24;
    v51 = *(v50 + 4);
    if (v51 > 0x3E7 || (v52 = *(v50 + 12), v52 >> 28) || *(v50 + 16) > 0x1F7u || *(v50 + 8) >= 0x10000u)
    {
      v84 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v110 = 0;
        v85 = "#gpsd,#supl,invalid LTE Serving Cell Info";
        goto LABEL_116;
      }

      goto LABEL_117;
    }

    sub_24547A504(*(v50 + 2), v51, v52, v51 > 0x63);
    if (__p)
    {
      v108 = __p;
      operator delete(__p);
    }

    if (*&v120[48])
    {
      *&v120[56] = *&v120[48];
      operator delete(*&v120[48]);
    }

    if (*&v120[24])
    {
      *&v120[32] = *&v120[24];
      operator delete(*&v120[24]);
    }

    v53 = *v120;
    if (*v120)
    {
      *&v120[8] = *v120;
LABEL_92:
      operator delete(v53);
    }

LABEL_93:
    ++v24;
    v22 = *(a1 + 40);
    if (v24 >= 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 48) - v22) >> 2))
    {
      if (*(v23 + 18) != *(v23 + 19))
      {
        *(v23 + 5) = 1;
      }

      goto LABEL_125;
    }
  }

  v87 = qword_2813CF018;
  if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_125;
  }

  *buf = 67109120;
  v119 = v26;
  v19 = "#gpsd,#supl,Physical Cell Id Out of Range %d";
  v82 = v87;
  v83 = 8;
LABEL_105:
  _os_log_error_impl(&dword_245396000, v82, OS_LOG_TYPE_ERROR, v19, buf, v83);
LABEL_125:
  v88 = sub_245479234();
  sub_2454796F4(v88, 0, v94);
  v89 = sub_24547473C();
  sub_2454752CC(v89);
  return sub_245464AB8(v94);
}

void sub_2454804A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, char a43)
{
  sub_2453A7C24((v44 + 8));
  *(v43 + 152) = v44;
  sub_2454815D4((v45 - 240));
  sub_245464AB8(&a20);
  _Unwind_Resume(a1);
}

uint64_t *sub_245480578(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_2453AAA8C((a1 + 40), *(a2 + 40), *(a2 + 48), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 48) - *(a2 + 40)) >> 2));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_2453AABE8((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return sub_2453AACE8((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 5);
}

void sub_245480620(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_245480654(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;

    operator delete(v4);
  }
}

double sub_2454806BC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  memcpy(v3, (a1 + 40), sizeof(v3));
  *&result = sub_245484D04(v1, v3).n128_u64[0];
  return result;
}

double sub_245480708(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  memcpy(__dst, (a1 + 40), sizeof(__dst));
  *&result = sub_245484F28(v1, __dst).n128_u64[0];
  return result;
}

double sub_245480754(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  *&result = sub_245485020(v1, v4).n128_u64[0];
  return result;
}

BOOL sub_245480790(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  v2 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5[0] = v2;
  *(v5 + 12) = *(a1 + 68);
  return sub_245482478(v1, &v4, 2);
}

uint64_t sub_2454807D8(uint64_t a1, _DWORD *a2)
{
  v171 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v7 = *(a2 + 12);
  v8 = *(a2 + 26);
  v59 = a2[8];
  v61 = a2[9];
  v63 = *(a2 + 20);
  v64 = *(a2 + 42);
  v65 = a2[16];
  v66 = a2[23];
  v68 = *(a2 + 102);
  v70 = a2[24];
  v72 = *(a2 + 103);
  v78 = *(a2 + 50);
  v80 = *(a2 + 104);
  v74 = *(a2 + 105);
  v76 = *(a2 + 106);
  v9 = a2[68];
  v55 = *(a2 + 140);
  v56 = *(a2 + 139);
  v57 = *(a2 + 141);
  v58 = *(a2 + 284);
  v50 = *(a2 + 290);
  v46 = *(a2 + 143);
  v47 = *(a2 + 146);
  v48 = *(a2 + 144);
  v49 = *(a2 + 147);
  v51 = *(a2 + 296);
  v52 = *(a2 + 138);
  v53 = *(a2 + 298);
  v54 = *(a2 + 299);
  v60 = a2[75];
  v10 = qword_2813CF018;
  v11 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "#gpsd,#supl,#out,posReport, sessionProtocol = SUPL";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "#gpsd,#supl,#out,posReport, sessionProtocol = CPlane";
  }

  _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
LABEL_7:
  v13 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67113729;
    v136 = v6;
    v137 = 1024;
    v138 = v3;
    v139 = 1024;
    v140 = v7;
    v141 = 1024;
    *v142 = v5;
    *&v142[4] = 1024;
    *&v142[6] = v8;
    v143 = 1024;
    v144 = v59;
    v145 = 1024;
    v146 = v61;
    v147 = 1024;
    v148 = v63;
    v149 = 1024;
    v150 = v64;
    v151 = 1025;
    v152 = v65;
    v153 = 1029;
    v154 = v66;
    v155 = 1029;
    v156 = v70;
    v157 = 1025;
    v158 = v68;
    v159 = 1025;
    v160 = v72;
    v161 = 1029;
    v162 = v78;
    v163 = 1025;
    v164 = v74;
    v165 = 1024;
    v166 = v76;
    v167 = 1025;
    v168 = v80;
    v169 = 1024;
    v170 = v60;
    _os_log_debug_impl(&dword_245396000, v13, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#out,posReport,sessionId,%u,posProtocol,%u,gpsWeek,%u,gpsTow,%u,gpsTimeUncertainty,%u,gpsTODPresent,%d,gpsTODMsec,%u,gpsTODFrac,%u,gpsTODUnc,%u,shapeType,%{private}u,latitude,%{sensitive}u,longitude,%{sensitive}u,Majoraxis,%{private}u,Minoraxis,%{private}u,altitude,%{sensitive}u,uncertainAltitude,%{private}u,confidence,%u,orientationAngle,%{private}u,technologySource,%u", buf, 0x74u);
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_21;
      }

      v16 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 67175681;
      v136 = v47;
      v137 = 1025;
      v138 = v49;
      v139 = 1024;
      v140 = v51;
      v141 = 1025;
      *v142 = v53;
      *&v142[4] = 1025;
      *&v142[6] = v54;
      v15 = "#gpsd,#supl,#out,HorizontalWithVerticalVelocityAndUncertainty,posReport,bearing,%{private}u,horizontalSpeed,%{private}u,verticalSpeed,%u,horizUncertaintySpeed,%{private}u,vertUncertaintySpeed,%{private}u";
      v17 = v16;
      v18 = 32;
      goto LABEL_53;
    }

    v14 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    *buf = 67175169;
    v136 = v46;
    v137 = 1025;
    v138 = v48;
    v139 = 1025;
    v140 = v50;
    v15 = "#gpsd,#supl,#out,HorizontalVelocityWithUncertainty,posReport,bearing,%{private}u,horizontalSpeed,%{private}u,horizUncertaintySpeed,%{private}u";
  }

  else
  {
    if (!v9)
    {
      v19 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 67174913;
      v136 = v52;
      v137 = 1025;
      v138 = v56;
      v15 = "#gpsd,#supl,#out,HorizontalWithVerticalVelocity,posReport,bearing,%{private}u,horizontalSpeed,%{private}u";
      v17 = v19;
      v18 = 14;
      goto LABEL_53;
    }

    if (v9 != 1)
    {
      goto LABEL_21;
    }

    v14 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    *buf = 67175169;
    v136 = v55;
    v137 = 1025;
    v138 = v57;
    v139 = 1025;
    v140 = v58;
    v15 = "#gpsd,#supl,#out,HorizontalWithVerticalVelocity,posReport,bearing,%{private}u,horizontalSpeed,%{private}u,verticalSpeed,%{private}u";
  }

  v17 = v14;
  v18 = 20;
LABEL_53:
  _os_log_debug_impl(&dword_245396000, v17, OS_LOG_TYPE_DEBUG, v15, buf, v18);
LABEL_21:
  if (*a2)
  {
    v20 = 5;
  }

  else
  {
    v20 = 0;
  }

  if (a2[3])
  {
    v21 = a2[5];
  }

  else
  {
    v21 = a2[5] % 0xDBBA00u;
  }

  v81 = v21;
  v79 = a2[7] == 1;
  v22 = a2[23];
  v23 = *(a2 + 50);
  if (a2[8])
  {
    LOWORD(v64) = *(a2 + 20);
    v65 = a2[9];
    LOBYTE(v63) = *(a2 + 42);
  }

  v24 = a1;
  v25 = a2[24];
  v26 = v23 & 0x7FFF;
  v27 = *(a2 + 50);
  v83 = v26;
  v75 = *(a2 + 102);
  v77 = v25;
  v71 = *(a2 + 105);
  v73 = *(a2 + 103);
  v69 = (v22 >> 23) & 1;
  if (*a2)
  {
    v28 = 0x1400000000;
    v29 = -1;
    v30 = -1.0;
    v31 = 1.79769313e308;
    v32 = -1.0;
    v33 = -1.0;
    v34 = 1.79769313e308;
    v35 = 1.79769313e308;
    goto LABEL_46;
  }

  v36 = v22 >> 23;
  if ((v22 >> 23))
  {
    if (!v36)
    {
      v35 = (90 * v22) * -0.00000011920929;
      goto LABEL_37;
    }

LABEL_36:
    v35 = 1.79769313e308;
    goto LABEL_37;
  }

  if (v36)
  {
    goto LABEL_36;
  }

  v35 = vcvtd_n_f64_u32(90 * v22, 0x17uLL);
LABEL_37:
  if ((v25 + 0x800000) >> 24)
  {
    v34 = 1.79769313e308;
  }

  else
  {
    v37 = v25 | 0xFF000000;
    if ((v25 & 0x800000) == 0)
    {
      v37 = a2[24];
    }

    v34 = v37 * 360.0 * 0.0000000596046448;
  }

  if (v23 >= 0)
  {
    v31 = v26;
  }

  else
  {
    v31 = -v26;
  }

  v29 = a2[4];
  v33 = *(a2 + 102);
  v32 = *(a2 + 103);
  v28 = 0x1200000002;
  v30 = *(a2 + 105);
LABEL_46:
  v38 = *(a2 + 26);
  v39 = a2[16];
  v40 = *(a2 + 104);
  v67 = *(a2 + 106);
  sub_2454816D0(buf, v24);
  if (*&v142[2])
  {
    v62 = v20;
    v41 = *(v24 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = sub_245481078;
    block[3] = &unk_28585A8D8;
    sub_2454816D0(v115, buf);
    v42 = v22 & 0x7FFFFF;
    v116 = v28;
    v115[8] = v29;
    v117 = 0;
    v118 = 0xBFF0000000000000;
    v119 = v35;
    v120 = v34;
    v121 = v31;
    v122 = v33;
    v123 = v32;
    v124 = v30;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v129 = xmmword_245486E00;
    v130 = 0xBFF0000000000000;
    v131 = -1;
    v132 = -1;
    v133 = -1;
    v134 = 0xBFF0000000000000;
    dispatch_async(v41, block);
    v43 = *(v24 + 88);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_245481208;
    v84[3] = &unk_278E36CF8;
    memcpy(v85, a2, sizeof(v85));
    v86 = v62;
    v87 = v81;
    v88 = v38;
    v89 = v79;
    v90 = v39;
    v91 = v69;
    v92 = v42;
    v93 = v77;
    v94 = v75;
    v95 = v73;
    v96 = v40;
    v97 = v27 < 0;
    v98 = v83;
    v99 = v71;
    v100 = v67;
    v101 = 0xFFFFFFFFLL;
    v102 = -1;
    v103 = 0xFF00000000;
    v104 = -1;
    v105 = 0;
    v106 = -1;
    v107 = v65;
    v108 = v64;
    v109 = v63;
    v110 = 1;
    v111 = 1;
    v112 = 1;
    dispatch_async(v43, v84);
    sub_2453ABB5C(v115);
  }

  else
  {
    v44 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&dword_245396000, v44, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,SuplStatusReportCB is NULL", v113, 2u);
    }
  }

  return sub_2453ABB5C(buf);
}

void sub_245481078(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_2453A5EE4();
  }

  (*(*v2 + 48))(v2, a1 + 64);
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 104);
    v6 = *(a1 + 112);
    v7 = *(a1 + 120);
    v8 = *(a1 + 128);
    v10 = *(a1 + 64);
    v9 = *(a1 + 68);
    v11 = *(a1 + 72);
    v12 = *(a1 + 76);
    v13 = *(a1 + 80);
    v14 = *(a1 + 88);
    if (*(a1 + 136))
    {
      v15 = 84;
    }

    else
    {
      v15 = 70;
    }

    if (*(a1 + 137))
    {
      v16 = 84;
    }

    else
    {
      v16 = 70;
    }

    if (*(a1 + 138))
    {
      v17 = 84;
    }

    else
    {
      v17 = 70;
    }

    v18 = 134548993;
    v19 = v14;
    v20 = 2053;
    v21 = v4;
    v22 = 2053;
    v23 = v5;
    v24 = 2049;
    v25 = v6;
    v26 = 2049;
    v27 = v7;
    v28 = 2049;
    v29 = v8;
    v30 = 1024;
    v31 = v9;
    v32 = 1024;
    v33 = v11;
    v34 = 1024;
    v35 = v10;
    v36 = 1024;
    v37 = v12;
    v38 = 2048;
    v39 = v13;
    v40 = 1024;
    v41 = v15;
    v42 = 1024;
    v43 = v16;
    v44 = 1024;
    v45 = v17;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#out, Lat,%{sensitive}.6f,Long,%{sensitive}.6f,Alt,%{sensitive}.2f,SemMaj,%{private}.f,SemMin,%{private}.f,UncAlt,%{private}.f,PosMethod,%u,Status,%u,SessionId,%u,endCause,%u,HACC,%f,ephProvided,%c,refTimeProvided,%c,refLocProvided,%c", &v18, 0x72u);
  }
}

void sub_245481208(uint64_t a1)
{
  if (*(a1 + 44) == 2)
  {
    v1 = *(a1 + 48);
    v2 = *(a1 + 424);
    v6[4] = *(a1 + 408);
    v6[5] = v2;
    v6[6] = *(a1 + 440);
    v7 = *(a1 + 456);
    v3 = *(a1 + 360);
    v6[0] = *(a1 + 344);
    v6[1] = v3;
    v4 = *(a1 + 392);
    v6[2] = *(a1 + 376);
    v6[3] = v4;
    sub_245479DC8(v1, 0, v6);
  }

  else
  {
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#out,Invalid posProtocol in Pos Response", v6, 2u);
    }
  }
}

void sub_2454812C0(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 12) == 2)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
    v5 = *(v1 + 20);
    v7 = 0x8000000080000000;
    v8 = 0x7FFFFFFF;
    v9 = v5;
    v10 = v3;
    v11 = 0;
    v12 = v2;
    v13 = -1;
    v14 = -1;
    v15 = -1;
    v16 = 0u;
    v17 = 0u;
    sub_245479C1C(v4, &v7, 1);
  }

  else
  {
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#out,Invalid posProtocol in Aid request", &v7, 2u);
    }
  }
}

void sub_2454813C0(char **a1, char *__src, char *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = v6 - *a1 + 1;
    if (v11 < 0)
    {
      sub_2453A631C();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      operator new();
    }

    v14 = (__src - v10);
    if (__src == v10)
    {
      operator new();
    }

    *v14 = *a3;
    memcpy(v14 + 1, __src, a1[1] - __src);
    v17 = *a1;
    v18 = &v14[a1[1] - __src + 1];
    a1[1] = __src;
    v19 = &v14[v17 - __src];
    memcpy(v19, v17, __src - v17);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v18;
    a1[2] = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 1);
    }

    else
    {
      v9 = 0;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
      v9 = a1[1];
    }

    v16 = __src <= a3 && v9 > a3;
    *__src = a3[v16];
  }
}

void sub_2454815BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2454815D4(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_245481638(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_2454816D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_245481768(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;

    operator delete(v5);
  }
}

uint64_t sub_2454817E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    sub_245481768((i - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_245481830(uint64_t a1)
{
  *a1 = 0xFFFFFFFF00000000;
  *(a1 + 8) = -1;
  v2 = a1 + 284;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 50) = -1;
  *(a1 + 52) = -1;
  *(a1 + 68) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = -1;
  *(a1 + 92) = -1;
  *(a1 + 100) = -1;
  *(a1 + 88) = -1;
  *(a1 + 80) = 0x7FFFFFFF;
  *(a1 + 84) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x401C000000000000;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  *(a1 + 176) = -1;
  *(a1 + 184) = 0;
  *(a1 + 186) = -1;
  *(a1 + 188) = -1;
  *(a1 + 195) = -1;
  *(a1 + 204) = 0xFFFFFFFF00000004;
  *(a1 + 212) = -1;
  *(a1 + 214) = -1;
  *(a1 + 216) = -1;
  *(a1 + 220) = 0;
  *(a1 + 224) = -NAN;
  *(a1 + 232) = 0x7FFFFFFF;
  *(a1 + 236) = -1;
  *(a1 + 240) = xmmword_245486DF0;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 263) = -1;
  *(a1 + 260) = -1;
  *(a1 + 268) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 280) = -1;
  *(a1 + 276) = -1;
  *&v3 = 0x8000000080000000;
  *(&v3 + 1) = 0x8000000080000000;
  *(a1 + 284) = v3;
  *(a1 + 300) = -1;
  *(a1 + 304) = -1;
  memset_pattern16((a1 + 308), &unk_245486E50, 0x78uLL);
  *(a1 + 428) = -1;
  *(a1 + 432) = 255;
  *(v2 + 168) = -1;
  *(a1 + 436) = -1;
  *(a1 + 443) = -1;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 496) = 0;
  *(a1 + 528) = 0;
  *(a1 + 560) = 0;
  *(a1 + 592) = 0;
  *(a1 + 624) = 0;
  *(a1 + 656) = 0;
  *(a1 + 688) = 0;
  *(a1 + 720) = 0;
  *(sub_24547C334() + 104) = a1;
  *(sub_2453B4548() + 232) = a1;
  sub_24547A5D4();
  return a1;
}

void sub_2454819CC(_Unwind_Exception *a1)
{
  sub_2453ADB7C(v1 + 696);
  sub_2453AD930(v1 + 664);
  sub_2454855F0(v1 + 632);
  sub_2453AD330(v1 + 600);
  sub_2453AB658(v1 + 568);
  sub_2453AB5D8(v1 + 536);
  sub_2453AB558(v1 + 504);
  sub_245485570(v1 + 472);
  _Unwind_Resume(a1);
}

uint64_t sub_245481A18(uint64_t a1)
{
  sub_2453ADB7C(a1 + 696);
  sub_2453AD930(a1 + 664);
  sub_2454855F0(a1 + 632);
  sub_2453AD330(a1 + 600);
  sub_2453AB658(a1 + 568);
  sub_2453AB5D8(a1 + 536);
  sub_2453AB558(a1 + 504);
  sub_245485570(a1 + 472);
  return a1;
}

void sub_245481A7C(uint64_t a1, int a2, int a3, double a4)
{
  v13 = *MEMORY[0x277D85DE8];
  *(a1 + 128) = a2;
  *(a1 + 129) = a3;
  *(a1 + 136) = a4;
  v7 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67175169;
    v8[1] = a2;
    v9 = 1025;
    v10 = a3;
    v11 = 2049;
    v12 = a4;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "SessionHandler,helo,%{private}d,earlyreturn,%{private}d,targetvunc,%{private}f.02", v8, 0x18u);
  }
}

void sub_245481B5C(int *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  *(a1 + 15) = sub_24539D8D0() * 0.000000001;
  v2 = a1[41];
  if (v2)
  {
    v27 = *(a1 + 53);
    v28 = *(a1 + 57);
    v29 = *(a1 + 61);
    *&v25[8] = *(a1 + 45);
    v26 = *(a1 + 49);
    v3 = *(a1 + 441);
    v42 = *(a1 + 425);
    *v43 = v3;
    *&v43[15] = *(a1 + 114);
    v4 = *(a1 + 393);
    v41 = *(a1 + 409);
    v5 = *(a1 + 329);
    v37 = *(a1 + 345);
    v6 = *(a1 + 377);
    v38 = *(a1 + 361);
    v39 = v6;
    v40 = v4;
    v7 = *(a1 + 265);
    v33 = *(a1 + 281);
    v8 = *(a1 + 313);
    v34 = *(a1 + 297);
    v35 = v8;
    v9 = a1[13];
    v10 = *(a1 + 264) >> (v9 == 1);
    v11 = *a1;
    v12 = a1[14] == 2;
    *buf = a1[40];
    v24 = COERCE_DOUBLE(__PAIR64__(v12, v2));
    *v25 = v9;
    v13 = a1[65];
    *&v25[4] = v11;
    v30 = v13;
    v31 = v10;
    v36 = v5;
    v32 = v7;
    v14 = *(a1 + 5);
    v21[4] = *(a1 + 4);
    v21[5] = v14;
    v22 = *(a1 + 12);
    v15 = *(a1 + 1);
    v21[0] = *a1;
    v21[1] = v15;
    v16 = *(a1 + 3);
    v21[2] = *(a1 + 2);
    v21[3] = v16;
    sub_245481D7C(a1, buf, v21);
  }

  else
  {
    sub_245482090(a1);
  }

  v17 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 14);
    v19 = *(a1 + 15);
    *buf = 134218496;
    v24 = v19 - v20;
    *v25 = 2048;
    *&v25[2] = v20;
    *&v25[10] = 2048;
    *&v25[12] = v19;
    _os_log_debug_impl(&dword_245396000, v17, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,TTFF,%f,starttime,%.2f,endtime,%.2f", buf, 0x20u);
  }

  buf[0] = 0;
  v18 = *(a1 + 86);
  if (!v18)
  {
    sub_2453A5EE4();
  }

  (*(*v18 + 48))(v18, buf);
  sub_245482340(a1);
}

uint64_t sub_245481D7C(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = memcpy(__dst, a2, 0x138uLL);
  sub_245484874(v6, __dst);
  v7 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,setPositionReportAndSendSummaryReport", __dst, 2u);
  }

  if (*(a2 + 8))
  {
    v8 = sub_24547C334();
    memcpy(__dst, a2, 0x138uLL);
    sub_2454807D8(v8, __dst);
  }

  else
  {
    v9 = *(a1 + 78);
    if (v9)
    {
      (*(*v9 + 48))(v9, a2);
    }
  }

  v11 = *(a2 + 92);
  v10 = *(a2 + 96);
  v12 = *(a2 + 100);
  v13 = *(a2 + 102);
  v14 = *(a2 + 105);
  v39 = *(a2 + 8);
  v40 = *(a2 + 300);
  v41 = *(a2 + 304);
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 32);
  v18 = *(a3 + 52);
  v19 = *(a3 + 64);
  v20 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_debug_impl(&dword_245396000, v20, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,setSummaryReport", __dst, 2u);
  }

  v21.f64[0] = v11;
  v22 = v10 * 0.0000107288373;
  v23 = v12 & 0x7FFF;
  if (v12 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = -v23;
  }

  v25 = -1.0;
  v26 = -1.0;
  if (v13 != 255)
  {
    v27 = pow(1.1, v13);
    v22 = v10 * 0.0000107288373;
    v21.f64[0] = v11;
    v26 = (v27 + -1.0) * 10.0;
  }

  v21.f64[1] = v22;
  v28 = xmmword_245491C90;
  if (v14 != 255)
  {
    v42 = v21;
    v29 = pow(1.025, v14);
    v21 = v42;
    v25 = (v29 + -1.0) * 45.0;
    v28 = xmmword_245491C90;
  }

  v30 = vmulq_f64(v21, v28);
  v31 = *(a1 + 15) - *(a1 + 14);
  if (v39)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  if (v39)
  {
    v33 = 3;
  }

  else
  {
    v33 = 1;
  }

  if (v18 > 4)
  {
    v34 = 0;
  }

  else
  {
    v34 = dword_2454922CC[v18];
  }

  v35 = *(a1 + 128);
  v36 = *(a1 + 63);
  v37 = *a1;
  __dst[0] = v30;
  *&__dst[1] = v24;
  *(&__dst[1] + 1) = v26;
  *&__dst[2] = v25;
  *(&__dst[2] + 1) = v31;
  *&__dst[3] = v40 | 0x200000000;
  *(&__dst[3] + 1) = __PAIR64__(v34, v32);
  *&__dst[4] = v15;
  *(&__dst[4] + 1) = v16;
  *&__dst[5] = v17;
  *(&__dst[5] + 1) = v33 | 0x100000000;
  LOBYTE(__dst[6]) = v35;
  BYTE1(__dst[6]) = v36;
  *(&__dst[6] + 1) = ((v19 & 4) << 17) | (4 * (v19 & 3));
  *&__dst[7] = v41;
  DWORD2(__dst[7]) = v37;
  result = *(a1 + 62);
  if (result)
  {
    return (*(*result + 48))(result, __dst);
  }

  return result;
}

void sub_245482090(int *a1)
{
  *__src = 0;
  *&__src[8] = -1;
  *&__src[16] = -1;
  *&__src[24] = 0;
  __src[26] = -1;
  *&__src[28] = -1;
  *&__src[35] = -1;
  *&__src[44] = 0xFFFFFFFF00000004;
  *&__src[52] = -1;
  __src[54] = -1;
  *&__src[56] = -1;
  *&__src[60] = 0;
  *&__src[64] = -NAN;
  *&__src[72] = 0x7FFFFFFF;
  __src[76] = -1;
  *&__src[80] = xmmword_245486DF0;
  *&__src[96] = 0xFFFFFFFF7FFFFFFFLL;
  *&__src[103] = -1;
  *&__src[108] = 0x8000000080000000;
  *&__src[116] = -1;
  *&__src[120] = -1;
  *&v2 = 0x8000000080000000;
  *(&v2 + 1) = 0x8000000080000000;
  *&__src[124] = v2;
  *&__src[140] = -1;
  __src[144] = -1;
  memset_pattern16(&__src[148], &unk_245486E50, 0x78uLL);
  __src[268] = -1;
  *&__src[272] = 255;
  *&__src[292] = -1;
  *&__src[276] = -1;
  *&__src[283] = -1;
  *&__src[300] = 0;
  *&__src[304] = 0;
  if (*a1)
  {
    v4 = a1[13];
    v3 = a1[14];
    *&__src[16] = *a1;
    v5 = 0x8FFFFFFFCLL;
    *__src = 0x8FFFFFFFCLL;
    *&__src[8] = v3 != 1;
    *&__src[12] = v4;
    if (v3 == 1)
    {
      v8 = *(a1 + 78);
      if (!v8 || ((*(*v8 + 48))(v8, __src), !*&__src[8]))
      {
        v10 = 1;
        v9 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = sub_24547C334();
      memcpy(v25, __src, sizeof(v25));
      sub_2454807D8(v6, v25);
    }

    v9 = 2;
    v10 = 3;
LABEL_10:
    v11 = a1[13];
    if (v11 > 4)
    {
      v12 = 0;
    }

    else
    {
      v12 = dword_2454922CC[v11];
    }

    LOWORD(v5) = *(a1 + 4);
    v13 = *(a1 + 2);
    v14 = *(a1 + 4);
    v15 = *(a1 + 128);
    v16 = *(a1 + 63);
    v17 = ((a1[16] & 4) << 17) | (4 * (a1[16] & 3));
    v18 = *a1;
    *v25 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&v25[16] = xmmword_245486E00;
    __asm { FMOV            V3.2D, #-1.0 }

    *&v25[32] = _Q3;
    *&v25[48] = 0;
    *&v25[56] = v9;
    *&v25[60] = v12;
    *&v25[64] = v5;
    *&v25[72] = v13;
    *&v25[80] = v14;
    *&v25[88] = v10;
    *&v25[92] = 11;
    v25[96] = v15;
    v25[97] = v16;
    *&v25[104] = v17;
    *&v25[112] = 0;
    *&v25[120] = v18;
    v24 = *(a1 + 62);
    if (v24)
    {
      (*(*v24 + 48))(v24, v25);
    }

    return;
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    *v25 = 0;
    _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "SessionHandler,#out,sendPosMethodFailure,no active session", v25, 2u);
  }
}

void sub_245482340(void *a1)
{
  a1[14] = 0;
  a1[15] = 0;
  *__src = 0;
  *&__src[8] = -1;
  *&__src[16] = -1;
  *&__src[24] = 0;
  __src[26] = -1;
  *&__src[28] = -1;
  *&__src[35] = -1;
  *&__src[44] = 0xFFFFFFFF00000004;
  *&__src[52] = -1;
  __src[54] = -1;
  *&__src[56] = -1;
  *&__src[60] = 0;
  *&__src[64] = -NAN;
  *&__src[72] = 0x7FFFFFFF;
  __src[76] = -1;
  *&__src[80] = xmmword_245486DF0;
  *&__src[96] = 0xFFFFFFFF7FFFFFFFLL;
  *&__src[103] = -1;
  *&__src[108] = 0x8000000080000000;
  *&__src[116] = -1;
  *&__src[120] = -1;
  *&v2 = 0x8000000080000000;
  *(&v2 + 1) = 0x8000000080000000;
  *&__src[124] = v2;
  *&__src[140] = -1;
  *&__src[144] = 255;
  memset_pattern16(&__src[148], &unk_245486E50, 0x78uLL);
  __src[268] = -1;
  *&__src[272] = 255;
  *&__src[276] = -1;
  *&__src[283] = -1;
  *&__src[292] = -1;
  *&__src[300] = 0;
  *&__src[304] = 0;
  memcpy(a1 + 20, __src, 0x138uLL);
  sub_2454847A4(a1);

  sub_24548441C(a1);
}

BOOL sub_245482478(uint64_t a1, uint64_t a2, int a3)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v6 = qword_2813CF008;
    if (os_log_type_enabled(qword_2813CF008, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "SessionHandler,#input,nilrPositionRequest,Periodic Sessions", v48, 2u);
    }
  }

  v7 = *(a2 + 4);
  if (v7 != -1)
  {
    v8 = *(a2 + 8);
    if ((v8 - 1) >= 0x80)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v48 = 0;
        v12 = "SessionHandler,#input,nilrPositionRequest,Invalid responseTime";
        goto LABEL_28;
      }

      return result;
    }

    v9 = *(a2 + 28);
    if ((v9 & 1) == 0)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v48 = 0;
        v12 = "SessionHandler,#input,nilrPositionRequest,Invalid requestedGnss,should be GPS only";
LABEL_28:
        v17 = v10;
        v18 = 2;
LABEL_29:
        _os_log_error_impl(&dword_245396000, v17, OS_LOG_TYPE_ERROR, v12, v48, v18);
        return 0;
      }

      return result;
    }

    v13 = *(a2 + 36);
    if (v13 == -1)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v48 = 0;
        v12 = "SessionHandler,#input,nilrPositionRequest,Invalid pos protocol";
        goto LABEL_28;
      }

      return result;
    }

    v14 = *(a2 + 10);
    if (v14 < 0)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v48 = 0;
        v12 = "SessionHandler,#input,nilrPositionRequest,Invalid HAcc";
        goto LABEL_28;
      }

      return result;
    }

    v15 = *(a2 + 20);
    if (v15)
    {
      if (*(a2 + 17) < 0)
      {
        v10 = qword_2813CF018;
        result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *v48 = 0;
          v12 = "SessionHandler,#input,#nilr,nilrPositionRequest,Invalid VAcc";
          goto LABEL_28;
        }

        return result;
      }

      if (*(a2 + 18) >= 0x65u)
      {
        v10 = qword_2813CF018;
        result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *v48 = 0;
          v12 = "SessionHandler,#input,#nilr,nilrPositionRequest,Invalid VConf";
          goto LABEL_28;
        }

        return result;
      }
    }

    v16 = *(a2 + 16);
    if (v16 >= 0x65)
    {
      v10 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v48 = 0;
        v12 = "SessionHandler,#input,#nilr,nilrPositionRequest,Invalid HConf";
        goto LABEL_28;
      }

      return result;
    }

    v19 = *(a2 + 30);
    if (*(a2 + 30) && (v19 & 0xB7) == 0)
    {
      v20 = qword_2813CF018;
      result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v48 = 67109120;
        *&v48[4] = v19;
        v12 = "SessionHandler,#input,#nilr,nilrPositionRequest,ShapeType Not Supported, %u";
        v17 = v20;
        v18 = 8;
        goto LABEL_29;
      }

      return result;
    }

    v21 = *(a2 + 40);
    if (*a1 == v21)
    {
      *(a1 + 4) = v7;
      *(a1 + 8) = v8;
      v22 = pow(1.1, v14);
      v23 = -1.0;
      *(a1 + 16) = (v22 + -1.0) * 10.0;
      *(a1 + 24) = *(a2 + 12) != 0;
      *(a1 + 25) = v16;
      v24 = *(a2 + 17);
      if (v24 != 255)
      {
        v23 = (pow(1.025, v24) + -1.0) * 45.0;
      }

      *(a1 + 32) = v23;
      *(a1 + 40) = *(a2 + 18);
      *(a1 + 44) = v15;
      *(a1 + 48) = v9;
      *(a1 + 50) = *(a2 + 31);
      *(a1 + 52) = v13;
      *(a1 + 56) = a3;
      v25 = *(a1 + 80);
      v50 = *(a1 + 64);
      v51 = v25;
      v52 = *(a1 + 96);
      v26 = *(a1 + 16);
      *v48 = *a1;
      *&v48[16] = v26;
      v27 = *(a1 + 48);
      *&v48[32] = *(a1 + 32);
      v49 = v27;
      sub_245482C60(v48);
      goto LABEL_55;
    }

    if (*a1)
    {
      v28 = qword_2813CF020;
      v29 = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
      if (!v13)
      {
        if (v29)
        {
          *v48 = 0;
          _os_log_debug_impl(&dword_245396000, v28, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,#nilr,nilrPositionRequest,RRLP session. Updating only session ID", v48, 2u);
          v21 = *(a2 + 40);
        }

        *a1 = v21;
        goto LABEL_55;
      }

      if (v29)
      {
        *v48 = 0;
        _os_log_debug_impl(&dword_245396000, v28, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,#nilr,nilrPositionRequest,delete the existing active session", v48, 2u);
      }

      *a1 = 0xFFFFFFFF00000000;
      *(a1 + 8) = -1;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 44) = 0;
      *(a1 + 48) = 0;
      *(a1 + 50) = -1;
      *(a1 + 52) = -1;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 68) = 0;
      *(a1 + 72) = -1;
      *(a1 + 92) = -1;
      *(a1 + 100) = -1;
      *(a1 + 88) = -1;
      *(a1 + 80) = 0x7FFFFFFF;
      *(a1 + 84) = -1;
      v30 = *(a2 + 4);
      v31 = *(a2 + 8);
      v14 = *(a2 + 10);
      *a1 = *(a2 + 40);
      *(a1 + 4) = v30;
      *(a1 + 8) = v31;
      if (v14 == 255)
      {
        v32 = -1.0;
LABEL_48:
        *(a1 + 16) = v32;
        *(a1 + 24) = *(a2 + 12) != 0;
        *(a1 + 25) = *(a2 + 16);
        v33 = *(a2 + 17);
        if (v33 == 255)
        {
          v34 = -1.0;
        }

        else
        {
          v34 = (pow(1.025, v33) + -1.0) * 45.0;
        }

        *(a1 + 32) = v34;
        *(a1 + 40) = *(a2 + 18);
        *(a1 + 44) = *(a2 + 20);
        *(a1 + 48) = *(a2 + 28);
        *(a1 + 50) = *(a2 + 31);
        *(a1 + 52) = *(a2 + 36);
        *(a1 + 56) = a3;
LABEL_55:
        if (*(a2 + 20))
        {
          v35 = *(a2 + 17);
          if (*(a2 + 17))
          {
            v36 = qword_2813CF020;
            if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
            {
              *v48 = 0;
              _os_log_debug_impl(&dword_245396000, v36, OS_LOG_TYPE_DEBUG, "SessionHandler,#nilr,nilrPositionRequest,update target vertical uncertainty to minimum", v48, 2u);
              v35 = *(a2 + 17);
            }

            if (v35 == 255)
            {
              v37 = -1.0;
            }

            else
            {
              v37 = (pow(1.025, v35) + -1.0) * 45.0;
            }

            if (v37 >= *(a1 + 136))
            {
              v37 = *(a1 + 136);
            }

            *(a1 + 136) = v37;
          }
        }

        v38 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(a1 + 64);
          v40 = *(a2 + 24);
          *v48 = 67109376;
          *&v48[4] = v39;
          *&v48[8] = 1024;
          *&v48[10] = v40;
          _os_log_impl(&dword_245396000, v38, OS_LOG_TYPE_DEFAULT, "SessionHandler,#nilr,nilrPositionRequest,assistanceReceived,%d,assistanceAvailability,%d", v48, 0xEu);
        }

        if (*(a1 + 64) != 7 && *(a2 + 24))
        {
          v41 = qword_2813CF020;
          if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
          {
            *v48 = 0;
            _os_log_debug_impl(&dword_245396000, v41, OS_LOG_TYPE_DEBUG, "SessionHandler,#nilr,nilrPositionRequest,requesting additional assistance", v48, 2u);
          }

          sub_245482D6C(a1);
          if (!*(a2 + 36))
          {
            *(a1 + 62) = 1;
          }
        }

        v48[0] = 1;
        v42 = *(a1 + 688);
        if (!v42)
        {
          sub_2453A5EE4();
        }

        (*(*v42 + 48))(v42, v48);
        sub_2454830B0(a1, *(a2 + 8));
        v43 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          v44 = *(a1 + 129);
          v45 = *(a1 + 16);
          v46 = *(a1 + 32);
          v47 = sub_24539D8D0();
          *v48 = 67109889;
          *&v48[4] = v44;
          *&v48[8] = 2049;
          *&v48[10] = v45;
          *&v48[18] = 2049;
          *&v48[20] = v46;
          *&v48[28] = 2048;
          *&v48[30] = v47 * 0.000000001;
          _os_log_debug_impl(&dword_245396000, v43, OS_LOG_TYPE_DEBUG, "SessionHandler,#nilr,nilrPositionRequest,config,early_return=%d,hacc=%{private}.6f,vacc=%{private}.6f,startTime=%.6f", v48, 0x26u);
        }

        return 1;
      }
    }

    else
    {
      *a1 = v21;
      *(a1 + 4) = v7;
      *(a1 + 8) = v8;
    }

    v32 = (pow(1.1, v14) + -1.0) * 10.0;
    goto LABEL_48;
  }

  v10 = qword_2813CF018;
  result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v48 = 0;
    v12 = "SessionHandler,#input,nilrPositionRequest,Invalid Methodtype";
    goto LABEL_28;
  }

  return result;
}

void sub_245482C60(int *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *(a1 + 4);
    v6 = *(a1 + 2);
    v7 = *(a1 + 4);
    v8 = a1[13];
    v9 = a1[14];
    v10 = a1[11];
    v11 = *(a1 + 24);
    v12[0] = 67176705;
    v12[1] = v3;
    v13 = 1025;
    v14 = v4;
    v15 = 1025;
    v16 = v5;
    v17 = 2049;
    v18 = v6;
    v19 = 2049;
    v20 = v7;
    v21 = 1024;
    v22 = v8;
    v23 = 1024;
    v24 = v9;
    v25 = 1025;
    v26 = v10;
    v27 = 1025;
    v28 = v11;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "SessionHandler,#logFix,session info id=%{private}u,method=%{private}u,respTime=%{private}d,hacc=%{private}.6f,vacc=%{private}.6f,posProto=%d,sesnType=%d,vertRequested=%{private}d,velRequested=%{private}d", v12, 0x40u);
  }
}

void sub_245482D6C(uint64_t a1)
{
  v44[204] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  v35 = -1;
  v36 = -1;
  v37 = 0;
  v38 = -1;
  v39 = -1;
  memset(v40, 0, 14);
  v40[14] = -1;
  memset(&v40[15], 0, 14);
  v2 = &v43;
  v3 = v44;
  v41 = -1;
  v4 = 44;
  v42[0] = 0;
  do
  {
    v5 = &v42[v4];
    *v5 = 5;
    *(v5 + 2) = 0;
    v5[6] = -1;
    v6 = v2;
    v7 = 120;
    do
    {
      *(v6 - 4) = -1;
      *v6 = -1;
      v6 += 2;
      v7 -= 8;
    }

    while (v7);
    *(v5 + 32) = -1;
    *(v5 + 66) = -1;
    *(v5 + 134) = -256;
    *(v5 + 138) = 0;
    *(v5 + 18) = 0;
    *(v5 + 38) = -1;
    v8 = v3;
    v9 = 60;
    v5[156] = -1;
    do
    {
      *(v8 - 2) = -1;
      *v8 = -1;
      v8 += 2;
      v9 -= 4;
    }

    while (v9);
    *(v5 + 218) = -1;
    v4 += 224;
    v2 += 56;
    v3 += 28;
  }

  while (v4 != 1836);
  v10 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 52);
    v11 = *(a1 + 56);
    LODWORD(v35) = v11 != 1;
    HIDWORD(v35) = v12;
    v36 = v10;
    v33 = -8;
    v34 = 1;
    v13 = *(a1 + 64);
    v14 = ~(v13 << 6) & 0x40;
    if ((v13 & 2) == 0)
    {
      v14 |= 0x20u;
    }

    if ((v13 & 4) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 | 8;
    }

    if ((~v13 & 7) != 0)
    {
      v37 = v15;
    }

    v41 = 3;
    v38 = 0;
    v16 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v20) = 67177217;
      HIDWORD(v20) = v15;
      v21 = 0x401FFFFFFF80401;
      LODWORD(v22) = 1;
      WORD2(v22) = 1025;
      *(&v22 + 6) = v10;
      WORD5(v22) = 1025;
      HIDWORD(v22) = v12;
      LOWORD(v23) = 1025;
      *(&v23 + 2) = v11 != 1;
      HIWORD(v23) = 1024;
      v24 = 0;
      v25 = 1024;
      v26 = 0;
      v27 = 1024;
      v28 = v15;
      v29 = 1024;
      v30 = 0;
      v31 = 1024;
      v32 = 3;
      _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,requestAdditionalAssistance,%{private}d,result,%{private}d,responseType,%{private}d,sessionId,%{private}u,posProtocol,%{private}d,sessionProtocol,%{private}d.gToe,%d,gWeek,%d,aidMask,%d,numOfSats,%d,toeLimit,%d", &v20, 0x44u);
    }

    if (v11 == 1)
    {
      v19 = *(a1 + 656);
      if (v19)
      {
        (*(*v19 + 48))(v19, &v33);
      }
    }

    else
    {
      v17 = *(sub_24547C334() + 88);
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      *&v22 = sub_2454812C0;
      *(&v22 + 1) = &unk_278E36C40;
      v23 = &v33;
      dispatch_async(v17, &v20);
    }
  }

  else
  {
    v18 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, "SessionHandler,#process,requestAdditionalAssistance,no active session", &v20, 2u);
    }
  }
}

void sub_2454830B0(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_24548441C(a1);
  if (a2 <= 2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 - 2;
  }

  if (!*(a1 + 104))
  {
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 144));
    *(a1 + 104) = v5;
    v6 = qword_2813CF020;
    v7 = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        *buf = 67109120;
        v12 = v4;
        _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,created timer,starting timer for,%d,seconds", buf, 8u);
        v5 = *(a1 + 104);
      }

      v8 = dispatch_time(0, 1000000000 * v4);
      dispatch_source_set_timer(v5, v8, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      *(a1 + 112) = sub_24539D8D0() * 0.000000001;
      v9 = *(a1 + 104);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_2454844B0;
      handler[3] = &unk_278E36C40;
      handler[4] = a1;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(*(a1 + 104));
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "SessionHandler,fTimer NULL", buf, 2u);
    }
  }
}

void sub_245483278(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    sub_245485670(v5, a2);
    v7 = 0;
    if (v5[3])
    {
      operator new();
    }

    if (buf != (a1 + 472))
    {
      v4 = *(a1 + 496);
      if (v4 == a1 + 472)
      {
        (*(*v4 + 24))(v4, buf);
        (*(**(a1 + 496) + 32))(*(a1 + 496));
        *(a1 + 496) = v7;
        v7 = buf;
      }

      else
      {
        v7 = *(a1 + 496);
        *(a1 + 496) = 0;
      }
    }

    sub_245485570(buf);
    sub_2453ABD0C(v5);
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "SessionHandler EmergencySessionSummaryReportCb NULL callback pointer ", buf, 2u);
    }
  }
}

void sub_24548346C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_2453A3640(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24548349C(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    sub_245485954(v4, a2);
    v6 = 0;
    if (v4[3])
    {
      operator new();
    }

    sub_2453B6008(buf, (a1 + 504));
    sub_2453AB558(buf);
    sub_2453AC2CC(v4);
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "SessionHandler NavModelCb NULL callback pointer", buf, 2u);
    }
  }
}

void sub_24548360C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_2453A3640(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245483638(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v4 = (a1 + 536);

    sub_2453B4AD8(v4, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "SessionHandler RefTimeCb NULL callback pointer", v6, 2u);
    }
  }
}

void sub_2454836BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v4 = (a1 + 568);

    sub_2453B4B4C(v4, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "SessionHandler RefLocationCb NULL callback pointer", v6, 2u);
    }
  }
}

void sub_245483740(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }

    v5 = a1 + 600;
    if (v8 != (a1 + 600))
    {
      v6 = v9;
      v7 = *(a1 + 624);
      if (v9 == v8)
      {
        if (v7 == v5)
        {
          (*(*v9 + 24))();
          (*(*v9 + 32))(v9);
          v9 = 0;
          (*(**(a1 + 624) + 24))(*(a1 + 624), v8);
          (*(**(a1 + 624) + 32))(*(a1 + 624));
          *(a1 + 624) = 0;
          v9 = v8;
          (*(v10[0] + 24))(v10, a1 + 600);
          (*(v10[0] + 32))(v10);
        }

        else
        {
          (*(*v9 + 24))();
          (*(*v9 + 32))(v9);
          v9 = *(a1 + 624);
        }

        *(a1 + 624) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(a1 + 624), v8);
        (*(**(a1 + 624) + 32))(*(a1 + 624));
        *(a1 + 624) = v9;
        v9 = v8;
      }

      else
      {
        v9 = *(a1 + 624);
        *(a1 + 624) = v6;
      }
    }

    sub_2453AD330(v8);
  }

  else
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "SessionHandler PosResponseCb NULL callback pointer", v8, 2u);
    }
  }
}

void sub_245483A70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

void sub_245483A7C(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    sub_245485C30(v5, a2);
    v7 = 0;
    if (v5[3])
    {
      operator new();
    }

    if (buf != (a1 + 632))
    {
      v4 = *(a1 + 656);
      if (v4 == a1 + 632)
      {
        (*(*v4 + 24))(v4, buf);
        (*(**(a1 + 656) + 32))(*(a1 + 656));
        *(a1 + 656) = v7;
        v7 = buf;
      }

      else
      {
        v7 = *(a1 + 656);
        *(a1 + 656) = 0;
      }
    }

    sub_2454855F0(buf);
    sub_2453AD69C(v5);
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "SessionHandler AssistanceNeededReportCb NULL callback pointer", buf, 2u);
    }
  }
}

void sub_245483C70(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_2453A3640(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_245483CA0(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }

    v5 = a1 + 664;
    if (v8 != (a1 + 664))
    {
      v6 = v9;
      v7 = *(a1 + 688);
      if (v9 == v8)
      {
        if (v7 == v5)
        {
          (*(*v9 + 24))();
          (*(*v9 + 32))(v9);
          v9 = 0;
          (*(**(a1 + 688) + 24))(*(a1 + 688), v8);
          (*(**(a1 + 688) + 32))(*(a1 + 688));
          *(a1 + 688) = 0;
          v9 = v8;
          (*(v10[0] + 24))(v10, a1 + 664);
          (*(v10[0] + 32))(v10);
        }

        else
        {
          (*(*v9 + 24))();
          (*(*v9 + 32))(v9);
          v9 = *(a1 + 688);
        }

        *(a1 + 688) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(a1 + 688), v8);
        (*(**(a1 + 688) + 32))(*(a1 + 688));
        *(a1 + 688) = v9;
        v9 = v8;
      }

      else
      {
        v9 = *(a1 + 688);
        *(a1 + 688) = v6;
      }
    }

    sub_2453AD930(v8);
  }

  else
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "SessionHandler setNilrSessionIndicationCb NULL callback pointer", v8, 2u);
    }
  }
}

void sub_245483FD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

void sub_245483FDC(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }

    v5 = a1 + 696;
    if (v8 != (a1 + 696))
    {
      v6 = v9;
      v7 = *(a1 + 720);
      if (v9 == v8)
      {
        if (v7 == v5)
        {
          (*(*v9 + 24))();
          (*(*v9 + 32))(v9);
          v9 = 0;
          (*(**(a1 + 720) + 24))(*(a1 + 720), v8);
          (*(**(a1 + 720) + 32))(*(a1 + 720));
          *(a1 + 720) = 0;
          v9 = v8;
          (*(v10[0] + 24))(v10, a1 + 696);
          (*(v10[0] + 32))(v10);
        }

        else
        {
          (*(*v9 + 24))();
          (*(*v9 + 32))(v9);
          v9 = *(a1 + 720);
        }

        *(a1 + 720) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(a1 + 720), v8);
        (*(**(a1 + 720) + 32))(*(a1 + 720));
        *(a1 + 720) = v9;
        v9 = v8;
      }

      else
      {
        v9 = *(a1 + 720);
        *(a1 + 720) = v6;
      }
    }

    sub_2453ADB7C(v8);
  }

  else
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "SessionHandler setBestFixHandlerCb NULL callback pointer", v8, 2u);
    }
  }
}

void sub_24548430C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

void sub_245484318(int *a1, double a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[13];
    if (a1[14] == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }

    if (a1[14] == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v4 > 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = dword_2454922CC[v4];
    }

    LOWORD(a2) = *(a1 + 4);
    v8 = *(a1 + 2);
    v9 = *(a1 + 4);
    v10 = *(a1 + 128);
    v11 = *(a1 + 63);
    v12 = ((a1[16] & 4) << 17) | (4 * (a1[16] & 3));
    v19[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v19[1] = xmmword_245486E00;
    __asm { FMOV            V3.2D, #-1.0 }

    v19[2] = _Q3;
    v20 = 0;
    v21 = v6;
    v22 = v7;
    v23 = *&a2;
    v24 = v8;
    v25 = v9;
    v26 = v5;
    v27 = 3;
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = 0;
    v32 = v3;
    v18 = *(a1 + 62);
    if (v18)
    {
      (*(*v18 + 48))(v18, v19);
    }
  }

  sub_245482340(a1);
}

void sub_24548441C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    v3 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,cancel the ongoing timer", v4, 2u);
      v1 = *(a1 + 104);
    }

    dispatch_source_cancel(v1);

    *(a1 + 104) = 0;
  }
}

void sub_2454844B0(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 90);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    *(v1 + 15) = sub_24539D8D0() * 0.000000001;
    if (*(v1 + 62) == 1 && !v1[13])
    {
      v26 = qword_2813CF020;
      if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:
        buf[0] = 0;
        v25 = *(v1 + 86);
        if (!v25)
        {
          sub_2453A5EE4();
        }

        (*(*v25 + 48))(v25, buf);
        sub_245482340(v1);
        return;
      }

      *buf = 0;
      v27 = "SessionHandler,#out,no response for RRLP additional AD.Not sending POS response";
      v28 = v26;
      v29 = 2;
    }

    else
    {
      v3 = v1[41];
      if (v3)
      {
        v4 = *(v1 + 264);
        v5 = v1[40];
        v6 = *v1;
        v7 = v1[13];
        v8 = v1[14];
        v38 = *(v1 + 53);
        v9 = *(v1 + 57);
        v10 = *(v1 + 61);
        v11 = v1[65];
        v12 = *(v1 + 45);
        v13 = *(v1 + 49);
        *&v54[15] = *(v1 + 114);
        v14 = *(v1 + 441);
        v53 = *(v1 + 425);
        *v54 = v14;
        v39 = v9;
        v40 = v10;
        *&v36[8] = v12;
        v37 = v13;
        v15 = *(v1 + 393);
        v52 = *(v1 + 409);
        v51 = v15;
        v16 = *(v1 + 329);
        v48 = *(v1 + 345);
        v17 = *(v1 + 377);
        v49 = *(v1 + 361);
        v50 = v17;
        v18 = *(v1 + 265);
        v44 = *(v1 + 281);
        v19 = *(v1 + 313);
        v45 = *(v1 + 297);
        v46 = v19;
        *buf = v5;
        LODWORD(v35) = v3;
        HIDWORD(v35) = v8 == 2;
        *v36 = v7;
        *&v36[4] = v6;
        v41 = v11;
        v42 = v4 >> (v7 == 1);
        v47 = v16;
        v43 = v18;
        v20 = *(v1 + 5);
        v32[4] = *(v1 + 4);
        v32[5] = v20;
        v33 = *(v1 + 12);
        v21 = *(v1 + 1);
        v32[0] = *v1;
        v32[1] = v21;
        v22 = *(v1 + 3);
        v32[2] = *(v1 + 2);
        v32[3] = v22;
        sub_245481D7C(v1, buf, v32);
      }

      else
      {
        sub_245482090(v1);
      }

      v24 = qword_2813CF020;
      if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      v31 = *(v1 + 14);
      v30 = *(v1 + 15);
      *buf = 134218496;
      v35 = v30 - v31;
      *v36 = 2048;
      *&v36[2] = v31;
      *&v36[10] = 2048;
      *&v36[12] = v30;
      v27 = "SessionHandler,#out,TTFF,%f,starttime,%.2f,endtime,%.2f";
      v28 = v24;
      v29 = 32;
    }

    _os_log_debug_impl(&dword_245396000, v28, OS_LOG_TYPE_DEBUG, v27, buf, v29);
    goto LABEL_11;
  }

  v23 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v23, OS_LOG_TYPE_DEBUG, "SessionHandler,callback NULL. Sending POS method failure", buf, 2u);
  }

  sub_245482090(v1);
}

double sub_2454847A4(uint64_t a1)
{
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "SessionHandler,#process,clearSessionAssistanceRecvd", v4, 2u);
  }

  *a1 = 0xFFFFFFFF00000000;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 50) = -1;
  *(a1 + 52) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = -1;
  result = NAN;
  *(a1 + 92) = -1;
  *(a1 + 100) = -1;
  *(a1 + 88) = -1;
  *(a1 + 80) = 0x7FFFFFFF;
  *(a1 + 84) = -1;
  return result;
}

void sub_245484874(uint64_t a1, int *a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = a2[2];
  v4 = qword_2813CF020;
  v5 = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    LOWORD(v44) = 0;
    v6 = "SessionHandler,#out,posReport,sessionProtocol = SUPL";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    LOWORD(v44) = 0;
    v6 = "SessionHandler,#out,posReport,sessionProtocol = CPlane";
  }

  _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, v6, &v44, 2u);
LABEL_5:
  v7 = a2[68];
  v8 = qword_2813CF020;
  if (v7 == 3)
  {
    if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v9 = *(a2 + 146);
    v10 = *(a2 + 147);
    v11 = *(a2 + 296);
    v12 = *(a2 + 298);
    v13 = *(a2 + 299);
    v44 = 67175681;
    v45 = v9;
    v46 = 1025;
    v47 = v10;
    v48 = 1025;
    v49 = v11;
    v50 = 1025;
    v51 = v12;
    v52 = 1025;
    v53 = v13;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,posReport,kVelocityTypeHorizontalWithVerticalVelocityAndUncertainty,bearing  ,%{private}u,horizontalSpeed,%{private}u,verticalSpeed,%{private}u,horizUncertaintySpeed,%{private}u,vertUncertaintySpeed,%{private}u", &v44, 0x20u);
    v7 = a2[68];
    v8 = qword_2813CF020;
  }

  if (v7 == 2)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v14 = *(a2 + 143);
    v15 = *(a2 + 144);
    v16 = *(a2 + 290);
    v44 = 67175169;
    v45 = v14;
    v46 = 1025;
    v47 = v15;
    v48 = 1025;
    v49 = v16;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,posReport,kVelocityTypeHorizontalVelocityWithUncertainty,bearing ,%{private}u,horizontalSpeed,%{private}u,horizUncertaintySpeed,%{private}u", &v44, 0x14u);
    v7 = a2[68];
    v8 = qword_2813CF020;
  }

  if (v7 == 1)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v17 = *(a2 + 140);
    v18 = *(a2 + 141);
    v19 = *(a2 + 284);
    v44 = 67175169;
    v45 = v17;
    v46 = 1025;
    v47 = v18;
    v48 = 1025;
    v49 = v19;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,posReport,kVelocityTypeHorizontalWithVerticalVelocity,bearing,%{private}u,horizontalSpeed,%{private}u,verticalSpeed,%{private}u", &v44, 0x14u);
    v7 = a2[68];
    v8 = qword_2813CF020;
  }

  if (!v7 && os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v42 = *(a2 + 138);
    v43 = *(a2 + 139);
    v44 = 67174913;
    v45 = v42;
    v46 = 1025;
    v47 = v43;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,,#out,posReport,kVelocityTypeHorizontalWithVerticalVelocity,bearing,%{private}u,horizontalSpeed,%{private}u", &v44, 0xEu);
    v8 = qword_2813CF020;
  }

LABEL_17:
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v20 = *a2;
    v22 = a2[3];
    v21 = a2[4];
    v23 = *(a2 + 12);
    v24 = a2[5];
    v25 = *(a2 + 26);
    v27 = a2[8];
    v26 = a2[9];
    v28 = *(a2 + 20);
    v29 = *(a2 + 42);
    v30 = a2[16];
    v31 = a2[23];
    v32 = a2[24];
    v33 = *(a2 + 102);
    v34 = *(a2 + 103);
    v35 = *(a2 + 50);
    v36 = *(a2 + 105);
    v37 = *(a2 + 106);
    v38 = *(a2 + 104);
    v39 = a2[68];
    v40 = a2[75];
    v41 = a2[7];
    v44 = 67114497;
    v45 = v20;
    v46 = 1024;
    v47 = v21;
    v48 = 1024;
    v49 = v22;
    v50 = 1024;
    v51 = v23;
    v52 = 1024;
    v53 = v24;
    v54 = 1024;
    v55 = v25;
    v56 = 1024;
    v57 = v27;
    v58 = 1024;
    v59 = v26;
    v60 = 1024;
    v61 = v28;
    v62 = 1024;
    v63 = v29;
    v64 = 1024;
    v65 = v30;
    v66 = 1029;
    v67 = v31;
    v68 = 1029;
    v69 = v32;
    v70 = 1025;
    v71 = v33;
    v72 = 1025;
    v73 = v34;
    v74 = 1029;
    v75 = v35;
    v76 = 1025;
    v77 = v36;
    v78 = 1025;
    v79 = v37;
    v80 = 1024;
    v81 = v38;
    v82 = 1024;
    v83 = v39;
    v84 = 1024;
    v85 = v40;
    v86 = 1024;
    v87 = v41;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "SessionHandler,#out,posReport,result,%u,sessionId,%u,posProtocol,%u,gpsWeek,%u,gpsTow,%u,gpsTimeUncertainty,%u,gpsTODPresent,%d,gpsTODMsec,%u,gpsTODFrac,%u,gpsTODUnc,%u,shapeType,%u,latitude,%{sensitive}u,longitude,%{sensitive}u,Major axis,%{private}u,Minor axis,%{private}u,altitude,%{sensitive}u,uncertainAltitude,%{private}u,confidence,%{private}u,orientationAngle,%u,velocityType,%u,technologySource,%u,fixType,%u", &v44, 0x86u);
  }
}

void sub_245484C68(uint64_t a1, int a2)
{
  if (*a1)
  {
    v4 = *(a1 + 64) | a2;
    *(a1 + 64) |= a2;
    if (v4 != 7 && !*(a1 + 52))
    {
      *(a1 + 62) = 0;
    }
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "SessionHandler,#process,#nilrPosRequest no active session", v6, 2u);
    }
  }
}

__n128 sub_245484D04(uint64_t a1, unsigned int *a2)
{
  sub_245484DFC(a1, a2[387], a2[386], a2[385]);
  if (*(a1 + 528))
  {
    sub_245484C68(a1, 4);
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,inject nav model", v10, 2u);
    }

    v5 = *(a1 + 528);
    if (!v5)
    {
      sub_2453A5EE4();
    }

    (*(*v5 + 48))(v5, a2);
  }

  v6 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v6;
  v11 = *(a1 + 96);
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v8 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v8;
  sub_245482C60(v10);
  return result;
}

void sub_245484DFC(uint64_t a1, int a2, int a3, int a4)
{
  if (*a1)
  {
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "SessionHandler,addSessionInfo,session already exists", v6, 2u);
    }
  }

  else
  {
    v22 = -1;
    v5 = 2 * (a4 == 1);
    *a1 = a2;
    *(a1 + 4) = -1;
    if (!a4)
    {
      v5 = 1;
    }

    *(a1 + 8) = -1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 50) = -1;
    *(a1 + 52) = a3;
    *(a1 + 56) = v5;
    *(a1 + 60) = 0;
    *(a1 + 68) = 0;
    *(a1 + 72) = -1;
    *(a1 + 88) = -1;
    *(a1 + 80) = 0x7FFFFFFF;
    *(a1 + 84) = -1;
    *(a1 + 92) = -1;
    *(a1 + 100) = -1;
    v6[0] = a2;
    v6[1] = -1;
    v7 = -1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
    v15 = a3;
    v16 = v5;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v20 = 0x7FFFFFFF;
    v21 = -1;
    v23 = -1;
    v24 = -1;
    sub_245482C60(v6);
  }
}

__n128 sub_245484F28(uint64_t a1, int *a2)
{
  sub_245484DFC(a1, a2[69], a2[68], a2[67]);
  if (*(a1 + 560))
  {
    sub_245484C68(a1, 1);
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,inject ref time", v10, 2u);
    }

    v5 = *(a1 + 560);
    if (!v5)
    {
      sub_2453A5EE4();
    }

    (*(*v5 + 48))(v5, a2);
  }

  v6 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v6;
  v11 = *(a1 + 96);
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v8 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v8;
  sub_245482C60(v10);
  return result;
}

__n128 sub_245485020(uint64_t a1, int *a2)
{
  sub_245484DFC(a1, a2[7], a2[6], a2[5]);
  if (*(a1 + 592))
  {
    sub_245484C68(a1, 2);
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "SessionHandler,#input,inject ref location", v10, 2u);
    }

    v5 = *(a1 + 592);
    if (!v5)
    {
      sub_2453A5EE4();
    }

    (*(*v5 + 48))(v5, a2);
  }

  v6 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v6;
  v11 = *(a1 + 96);
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v8 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v8;
  sub_245482C60(v10);
  return result;
}

uint64_t sub_245485114(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = sub_24547C334();
  sub_245481638(v5, a2);
  sub_24547BF5C(v3, v5);
  return sub_2453ABF84(v5);
}

void sub_245485190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2453ABF84(va);
  _Unwind_Resume(a1);
}

void sub_2454851AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24547C334();
  v4 = *a2;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_2453AAA8C(&v5, *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_2453AABE8(&v8, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_2453AACE8(&__p, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 5);
  sub_24547F568(v3, &v4);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }
}

void sub_2454852D8(int *a1)
{
  if (a1[14] == 2)
  {
    v2 = sub_24547C334();
    v3 = *(v2 + 88);
    v21.i64[0] = MEMORY[0x277D85DD0];
    v21.i64[1] = 3221225472;
    *&v22 = sub_24547CECC;
    *(&v22 + 1) = &unk_278E36C40;
    *&v23 = v2;
    dispatch_async(v3, &v21);
  }

  else
  {
    sub_2453B4548();
    sub_245449800(off_27EE134B8, 3, 3u);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[13];
    if (a1[14] == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    if (a1[14] == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (v6 > 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_2454922CC[v6];
    }

    LOWORD(v4) = *(a1 + 4);
    v10 = *(a1 + 2);
    v11 = *(a1 + 4);
    v12 = *(a1 + 128);
    v13 = *(a1 + 63);
    v14 = ((a1[16] & 4) << 17) | (4 * (a1[16] & 3));
    v21 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v22 = xmmword_245486E00;
    __asm { FMOV            V3.2D, #-1.0 }

    v23 = _Q3;
    v24 = 0;
    v25 = v8;
    v26 = v9;
    v27 = v4;
    v28 = v10;
    v29 = v11;
    v30 = v7;
    v31 = 2;
    v32 = v12;
    v33 = v13;
    v34 = v14;
    v35 = 0;
    v36 = v5;
    v20 = *(a1 + 62);
    if (v20)
    {
      (*(*v20 + 48))(v20, &v21);
    }
  }

  sub_245482340(a1);
}

uint64_t sub_245485464(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = sub_24547C334();
  sub_2454816D0(v5, a2);
  sub_24547CF44(v3, v5);
  return sub_2453ABB5C(v5);
}

void sub_2454854E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2453ABB5C(va);
  _Unwind_Resume(a1);
}

double sub_2454854FC(uint64_t a1)
{
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "SessionHandler,#process,deleteGnssData", v4, 2u);
  }

  return sub_2454847A4(a1);
}

uint64_t sub_245485570(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2454855F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_245485670(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_245485708(void *a1)
{
  *a1 = &unk_28585A978;
  sub_2453ABD0C((a1 + 1));
  return a1;
}

void sub_24548574C(void *a1)
{
  *a1 = &unk_28585A978;
  sub_2453ABD0C((a1 + 1));

  JUMPOUT(0x245D6A0D0);
}

void sub_24548585C(void *a1)
{
  sub_2453ABD0C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_245485898(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[5];
  v8[4] = a2[4];
  v8[5] = v3;
  v4 = a2[7];
  v8[6] = a2[6];
  v8[7] = v4;
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  if (!v2)
  {
    sub_2453A5EE4();
  }

  return (*(*v2 + 48))(v2, v8);
}

uint64_t sub_245485908(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_28585AA20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245485954(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2454859EC(void *a1)
{
  *a1 = &unk_28585AA68;
  sub_2453AC2CC((a1 + 1));
  return a1;
}

void sub_245485A30(void *a1)
{
  *a1 = &unk_28585AA68;
  sub_2453AC2CC((a1 + 1));

  JUMPOUT(0x245D6A0D0);
}

void sub_245485B40(void *a1)
{
  sub_2453AC2CC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_245485B7C(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 32);
  memcpy(v4, a2, sizeof(v4));
  if (!v2)
  {
    sub_2453A5EE4();
  }

  return (*(*v2 + 48))(v2, v4);
}

uint64_t sub_245485BE4(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_28585AB00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245485C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_245485CC8(void *a1)
{
  *a1 = &unk_28585AB48;
  sub_2453AD69C((a1 + 1));
  return a1;
}

void sub_245485D0C(void *a1)
{
  *a1 = &unk_28585AB48;
  sub_2453AD69C((a1 + 1));

  JUMPOUT(0x245D6A0D0);
}

void sub_245485E1C(void *a1)
{
  sub_2453AD69C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_245485E58(uint64_t a1, const void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  memcpy(v4, a2, sizeof(v4));
  if (!v2)
  {
    sub_2453A5EE4();
  }

  return (*(*v2 + 48))(v2, v4);
}

uint64_t sub_245485EEC(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_28585ABF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7910]();
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

void operator delete(void *__p, const std::nothrow_t *a2)
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}