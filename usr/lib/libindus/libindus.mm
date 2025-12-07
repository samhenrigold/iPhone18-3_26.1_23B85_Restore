size_t gnssOsa_readNv(int a1, void *a2, size_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_readNv");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (a2 && gp_NvStorage)
  {
    (*(*gp_NvStorage + 64))(&__p);
    v7 = __p;
    v8 = v18;
    if (v18 - __p >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v18 - __p;
    }

    memcpy(a2, __p, v9);
    v10 = g_LbsOsaTrace_Config;
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NvID,%d,BytesRead,%zu,BytesReq,%zu\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 68, "gnssOsa_readNv", a1, v18 - __p, a3);
      gnssOsa_PrintLog(__str, 5, 1, 0);
      v7 = __p;
      v8 = v18;
      v10 = g_LbsOsaTrace_Config;
    }

    if (v7 == v8)
    {
      if (v10 < 2)
      {
LABEL_15:
        if (__p)
        {
          v18 = __p;
          operator delete(__p);
        }

        return v9;
      }

      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx No NV data,%d\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 87, "gnssOsa_readNv", 769, a1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
      v10 = g_LbsOsaTrace_Config;
    }

    if (v10 >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 68, "gnssOsa_readNv");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    goto LABEL_15;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v14 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 69, "gnssOsa_readNv", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 68, "gnssOsa_readNv");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  return 0;
}

void sub_298F10F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssOsa_storeBufferToNv(uint64_t a1, char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_storeBufferToNv");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (a2 && gp_NvStorage)
  {
    *__str = 0;
    v12 = 0;
    v13 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__str, a2, &a2[a3], a3);
    v7 = (*(*gp_NvStorage + 32))(gp_NvStorage, a1, __str);
    if (*__str)
    {
      v12 = *__str;
      operator delete(*__str);
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: invalid Argument\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_storeBufferToNv");
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 68, "gnssOsa_storeBufferToNv");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    return 0;
  }

  return v7;
}

void sub_298F111E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssOsa_getNvSize(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 68, "gnssOsa_getNvSize");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NvSize\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_getNvSize", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 0;
    }

LABEL_16:
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 68, "gnssOsa_getNvSize");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    return 0;
  }

  if (!gp_NvStorage)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NvStorage\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "gnssOsa_getNvSize", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 0;
    }

    goto LABEL_16;
  }

  (*(*gp_NvStorage + 64))(&__p);
  *a2 = v11 - __p;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NvSize,%zu\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 68, "gnssOsa_getNvSize", *a2);
    gnssOsa_PrintLog(__str, 5, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 68, "gnssOsa_getNvSize");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_298F115D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssOsa_clearNV(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NvID,%d\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 73, "gnssOsa_clearNV", a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return (*(*gp_NvStorage + 80))(gp_NvStorage, a1);
}

void gnssOsa_flushNv(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "OSA", 68, "gnssOsa_flushNv");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  (*(*gp_NvStorage + 56))(gp_NvStorage);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v1), "OSA", 68, "gnssOsa_flushNv");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_298F118F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF06260, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t NK_Set_Environ_Severity(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 45))
  {
    *(a2 + 60) = 1;
    return result;
  }

  v7 = result;
  v8 = a4 + 61440;
  v9 = (a3 + 15368);
  v10 = (a3 + 14344);
  memmove((a3 + 14472), (a3 + 14344), 0x380uLL);
  v11 = *(a3 + 15384);
  *(a3 + 15372) = *v9;
  v12 = *(a3 + 15392);
  *(a3 + 15388) = v11;
  *(a3 + 15396) = v12;
  v13 = *(a4 + 4);
  *(a3 + 15368) = v13;
  v10[6] = 0u;
  v10[7] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  *v10 = 0u;
  v10[1] = 0u;
  v14 = 7;
  v15 = 8750;
  do
  {
    v16 = *(v9 + v14);
    v15 -= 1000;
    v17 = v14-- != 0;
  }

  while (v17 && !v16);
  v18 = v16 + v15;
  if (v13 <= v18 && v13 + 750 >= v18 - 750)
  {
    v19 = v14 + 1;
  }

  else
  {
    bzero(v10, 0x420uLL);
    v19 = 0;
    *v9 = *(a4 + 4);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v7 + 1248;
  v26 = v7 + 2400;
  v27 = v7 + 1760;
  v28 = v7 + 992;
  result = v19 + 1;
  v29 = a3 + (v19 << 7) + 14344;
  do
  {
    if (*(v25 + 4 * v20) >= 10 && *(v26 + 2 * v20) >= 0x65u)
    {
      v30 = *(v27 + v20);
      *(v10 + v20) = v30;
      v23 += v30;
      ++v22;
      if (v19 < 1)
      {
        v38 = v30;
      }

      else
      {
        v31 = v29;
        v32 = v19 + 1;
        v33 = v30;
        do
        {
          v35 = *v31;
          v31 -= 128;
          v34 = v35;
          v36 = v33;
          if (v35 > v33)
          {
            v36 = v34;
          }

          v37 = v30;
          if (v34 < v30)
          {
            v37 = v34;
          }

          if (v34)
          {
            v23 += v34;
            ++v22;
            v33 = v36;
            LOBYTE(v30) = v37;
          }

          --v32;
        }

        while (v32 > 1);
        v38 = v33;
        v30 = v30;
      }

      v39 = v38 - v30;
      if ((*(v28 + 2 * v20) & 0x300) == 0)
      {
        v39 -= 2;
      }

      if (v39 > v24)
      {
        v24 = v39;
      }

      if (v39 > v21)
      {
        v24 = v21;
        v21 = v39;
      }
    }

    ++v20;
    ++v29;
  }

  while (v20 != 128);
  if (v22 < 8)
  {
    v40 = 0;
  }

  else if (v21 + v24 > 8 || v23 / v22 <= *(a3 + 3))
  {
    v40 = 7;
  }

  else
  {
    v40 = 1;
  }

  if (*(p_NA + 381) == 1)
  {
    v41 = *(p_NA + 26780);
    if (v41 > 3)
    {
      if (v41 == 7)
      {
        v43 = 7;
      }

      else
      {
        v43 = 0;
      }

      if (v41 == 6)
      {
        v43 = 6;
      }

      if (v41 == 5)
      {
        v44 = 5;
      }

      else
      {
        v44 = 0;
      }

      if (v41 == 4)
      {
        v44 = 4;
      }

      if (v41 <= 5)
      {
        v43 = v44;
      }

      goto LABEL_63;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v43 = 4;
LABEL_63:
        *(a2 + 60) = v43;
        if ((*(v8 + 988) & 1) == 0)
        {
          *(v8 + 980) = 1;
          *(v8 + 988) = 1;
        }

        return result;
      }

      v42 = v41 == 3;
LABEL_59:
      if (v42)
      {
        v43 = *(p_NA + 26780);
      }

      else
      {
        v43 = 0;
      }

      goto LABEL_63;
    }

    if (v41)
    {
      v42 = v41 == 1;
      goto LABEL_59;
    }
  }

  if (v22 >= 8)
  {
    *(a2 + 60) = v40;
  }

  return result;
}

uint64_t GM_Conv_Lock_Units(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = (a3 + 38);
    v4 = (a2 + 14);
    result = result;
    do
    {
      if (*(v4 - 2) >= 0xFDF2u)
      {
        v5 = 6500;
      }

      else
      {
        v5 = *(v4 - 2) / 0xAu;
      }

      *(v4 - 2) = v5;
      if (*(v4 - 1) >= 0xFDF2u)
      {
        v6 = 6500;
      }

      else
      {
        v6 = *(v4 - 1) / 0xAu;
      }

      *(v4 - 1) = v6;
      v7 = *v4;
      v8 = v7 > 0xFDEC;
      v9 = (429496730 * (v7 + 5)) >> 32;
      if (v8)
      {
        LOWORD(v9) = 6500;
      }

      *v4 = v9;
      v4 += 18;
      v10 = *v3;
      v11 = ((26215 * v10) >> 18) + ((26215 * v10) >> 31);
      if (v10 > 32009)
      {
        LOWORD(v11) = 3200;
      }

      if (v10 >= -32009)
      {
        v12 = v11;
      }

      else
      {
        v12 = -3200;
      }

      *v3 = v12;
      v3 += 28;
      --result;
    }

    while (result);
  }

  return result;
}

uint64_t ds_NK_Summary_FirstLine(uint64_t a1)
{
  v1 = (*a1)++;
  *v1 = 10;
  v2 = *a1;
  if (*a1 >= *(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  v3 = 0;
  v4 = 78;
  do
  {
    *a1 = v2 + 1;
    *v2 = v4;
    v2 = *a1;
    if (*a1 >= *(a1 + 24))
    {
      v2 = *(a1 + 16);
      *a1 = v2;
    }

    v4 = str_0[++v3];
  }

  while (v3 != 16);
  *a1 = v2 + 1;
  *v2 = 10;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  return GNSS_Nav_Debug_Flush_Check(a1);
}

uint64_t ds_NK_Summary(void *a1)
{
  v1513 = *MEMORY[0x29EDCA608];
  v1 = a1[36];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[17];
  v5 = a1[27];
  v6 = *(a1[15] + 394);
  GN_GPS_Get_LibVersion(v1474);
  v7 = *v1;
  v8 = 86;
  v9 = 1u;
  do
  {
    *v1 = v7 + 1;
    *v7 = v8;
    v7 = *v1;
    if (*v1 >= *(v1 + 24))
    {
      v7 = *(v1 + 16);
      *v1 = v7;
    }

    v8 = aVer[v9++];
  }

  while (v9 != 7);
  v10 = v1474[0];
  if (LOBYTE(v1474[0]))
  {
    v11 = v1474 + 1;
    do
    {
      *v1 = v7 + 1;
      *v7 = v10;
      v7 = *v1;
      if (*v1 >= *(v1 + 24))
      {
        v7 = *(v1 + 16);
        *v1 = v7;
      }

      v12 = *v11++;
      v10 = v12;
    }

    while (v12);
  }

  *v1 = v7 + 1;
  *v7 = 32;
  v13 = *v1;
  if (*v1 >= *(v1 + 24))
  {
    v13 = *(v1 + 16);
  }

  *v1 = v13 + 1;
  *v13 = 91;
  v14 = *v1;
  if (*v1 >= *(v1 + 24))
  {
    v14 = *(v1 + 16);
    *v1 = v14;
  }

  v15 = *(v5 + 152);
  if (v15)
  {
    v16 = (v5 + 153);
    do
    {
      *v1 = v14 + 1;
      *v14 = v15;
      v14 = *v1;
      if (*v1 >= *(v1 + 24))
      {
        v14 = *(v1 + 16);
        *v1 = v14;
      }

      v17 = *v16++;
      v15 = v17;
    }

    while (v17);
  }

  *v1 = v14 + 1;
  *v14 = 93;
  v18 = *v1;
  if (*v1 >= *(v1 + 24))
  {
    v18 = *(v1 + 16);
  }

  for (i = 3; i > 1; --i)
  {
    *v1 = v18 + 1;
    *v18 = 32;
    v18 = *v1;
    if (*v1 >= *(v1 + 24))
    {
      v18 = *(v1 + 16);
      *v1 = v18;
    }
  }

  sprintf_2f(v1, (*(v3 + 32) - *(v4 + 68180)) / 0x64uLL);
  v20 = (*v1)++;
  *v20 = 32;
  v21 = *v1;
  if (*v1 >= *(v1 + 24))
  {
    v21 = *(v1 + 16);
  }

  v22 = &ch_GNSS_Exe_States[20 * *(v2 + 2048) + 1];
  v23 = 32;
  do
  {
    *v1 = v21 + 1;
    *v21 = v23;
    v21 = *v1;
    if (*v1 >= *(v1 + 24))
    {
      v21 = *(v1 + 16);
      *v1 = v21;
    }

    v24 = *v22++;
    v23 = v24;
  }

  while (v24);
  sprintf_sp1d(v1, *(v2 + 2046));
  sprintf_sp1d(v1, v6);
  sprintf_sp1d(v1, *(v4 + 29));
  v25 = (*v1)++;
  *v25 = 10;
  if (*v1 >= *(v1 + 24))
  {
    *v1 = *(v1 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1);
  v26 = a1[36];
  v27 = a1[6];
  v29 = a1[9];
  v28 = a1[10];
  v30 = (a1[17] + 24576);
  v31 = a1[22];
  v32 = *v26;
  v33 = 84;
  v34 = 1u;
  do
  {
    *v26 = v32 + 1;
    *v32 = v33;
    v32 = *v26;
    if (*v26 >= *(v26 + 24))
    {
      v32 = *(v26 + 16);
      *v26 = v32;
    }

    v33 = aTime[v34++];
  }

  while (v34 != 7);
  *v1474 = 0;
  v1473[0] = 0;
  *v1472 = 0;
  *v1471 = 0;
  v35 = *(v28 + 48);
  v36 = *(v28 + 62);
  v37 = (v28 + 152);
  *v1505 = 0;
  if (!R8_EQ((v28 + 152), v1505) || (v37 = (v28 + 160), *v1505 = 0, !R8_EQ((v28 + 160), v1505)) || (v37 = (v28 + 168), *v1505 = 0, v38 = R8_EQ((v28 + 168), v1505), v39 = 0.0, !v38))
  {
    v39 = *v37;
  }

  for (j = v35 - v39; j >= 604800.0; ++v36)
  {
    j = j + -604800.0;
  }

  while (j < 0.0)
  {
    j = j + 604800.0;
    --v36;
  }

  API_Get_UTC_Cor(0, v1474);
  GPS_To_UTC_Time(v1473, &v1472[3], &v1472[2], &v1472[1], v1472, &v1471[1], v1471, v36, j, *v1474);
  sprintf_02d(v26, v1472[1]);
  sprintf_02d(v26, v1472[0]);
  v41 = v1471[1];
  if (v1472[1] == 23 && v1472[0] == 59 && v1471[1] >= 0x3Au)
  {
    v1505[0] = 0;
    v1470 = 0;
    *&v1473[2] = 0;
    API_Get_Next_Leap_Second(v1505, &v1470, &v1473[2]);
    v41 = v1471[1];
    if (!*&v1473[2] && v1470 == 1)
    {
      v41 = ++v1471[1];
    }
  }

  sprintf_02d(v26, v41);
  v42 = (*v26)++;
  *v42 = 46;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  sprintf_03d(v26, v1471[0]);
  v43 = *(v28 + 32);
  v44 = (*v26)++;
  *v44 = 32;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  sprintf_10u(v26, v43);
  sprintf_5d(v26, *(v28 + 62));
  sprintf_12f3(v26, *(v28 + 48));
  sprintf_2d(v26, *(v31 + 24));
  v45 = *v26;
  v46 = &g_TOW_Stat_As_String[10 * *v27 + 1];
  v47 = 32;
  do
  {
    *v26 = v45 + 1;
    *v45 = v47;
    v45 = *v26;
    if (*v26 >= *(v26 + 24))
    {
      v45 = *(v26 + 16);
      *v26 = v45;
    }

    v48 = *v46++;
    v47 = v48;
  }

  while (v48);
  sprintf_6d(v26, v30[635]);
  sprintf_6d(v26, v30[636]);
  sprintf_gR8(v26, v27[6] * 1000000000.0);
  sprintf_sgR8(v26, *(v28 + 184) * 1000000000.0);
  v49 = (*v26)++;
  *v49 = 32;
  v50 = *v26;
  if (*v26 >= *(v26 + 24))
  {
    v50 = *(v26 + 16);
  }

  v51 = *(v28 + 36);
  *v26 = v50 + 1;
  *v50 = 32;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  sprintf_10u(v26, v51);
  v52 = v29[61];
  v53 = (*v26)++;
  *v53 = 32;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  sprintf_9d(v26, v52);
  v54.n128_u64[0] = 0;
  if (*(v28 + 60) == 1 && *v27 >= 1)
  {
    v54.n128_f64[0] = *(v28 + 48) + (604800 * *(v28 + 62) - 662342400);
  }

  v55 = (*v26)++;
  *v55 = 32;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  sprintf_14f3(v26, v54);
  v56 = (*v26)++;
  *v56 = 32;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  sprintf_19U(v26, *(v28 + 40));
  if (*v27 < 1)
  {
    v61 = *v26;
    v62 = 32;
    v63 = 1u;
    v64 = a1;
    do
    {
      *v26 = v61 + 1;
      *v61 = v62;
      v61 = *v26;
      if (*v26 >= *(v26 + 24))
      {
        v61 = *(v26 + 16);
        *v26 = v61;
      }

      v62 = a9999999999[v63++];
    }

    while (v63 != 20);
  }

  else
  {
    v57 = *(v28 + 48) * 1000.0;
    v58 = -0.5;
    if (v57 > 0.0)
    {
      v58 = 0.5;
    }

    v59 = v57 + v58;
    if (v59 <= 2147483650.0)
    {
      if (v59 >= -2147483650.0)
      {
        v60 = v59;
      }

      else
      {
        v60 = 0x80000000;
      }
    }

    else
    {
      v60 = 0x7FFFFFFF;
    }

    v65 = _MergedGlobals;
    v66 = *(v28 + 32);
    if (_MergedGlobals)
    {
      v67 = dword_2A145427C;
    }

    else
    {
      _MergedGlobals = *(v28 + 32);
      dword_2A145427C = v60;
      v67 = v60;
      v65 = v66;
    }

    v68 = v65 + v60;
    v69 = v67 + v66;
    v70 = v69 - v68;
    if (v69 - v68 <= -302400000)
    {
      v70 = -302400000;
    }

    v71 = v70 + v68;
    v72 = (v71 - v69 - (v71 != v69)) / 0x240C8400;
    if (v71 != v69)
    {
      ++v72;
    }

    v73 = 604800000 * v72 + v69;
    if ((v73 - v68) >= 302399999)
    {
      v74 = 302399999;
    }

    else
    {
      v74 = v73 - v68;
    }

    v75 = v73 - v68 - 604800000 * ((v73 + 604799999 - v68 - v74) / 0x240C8400);
    v76 = (*v26)++;
    *v76 = 32;
    if (*v26 >= *(v26 + 24))
    {
      *v26 = *(v26 + 16);
    }

    sprintf_4d(v26, v75);
    v1474[0] = 0;
    v1505[0] = 0;
    *v1473 = 0;
    if (API_Get_FS_Pulse_TTick(v1474, v1505, &v1473[2], v1473))
    {
      LODWORD(v77) = v1505[0];
      v78 = *(v28 + 48) - *(v28 + 152) + ((*(v28 + 32) - v1474[0]) + v77 * -0.0000152587891) * -0.001 * (1.0 - *(v28 + 184));
        ;
      }

        ;
      }

      v82 = 0;
      v83 = *v26;
      v84 = 32;
      do
      {
        *v26 = v83 + 1;
        *v83 = v84;
        v83 = *v26;
        if (*v26 >= *(v26 + 24))
        {
          v83 = *(v26 + 16);
          *v26 = v83;
        }

        v84 = asc_299059399[++v82];
      }

      while (v82 != 2);
      sprintf_10u(v26, v1474[0]);
      sprintf_10u(v26, v1505[0]);
      v85 = -0.5;
      if (k * 10000.0 > 0.0)
      {
        v85 = 0.5;
      }

      v86 = k * 10000.0 + v85;
      if (v86 <= 2147483650.0)
      {
        v64 = a1;
        if (v86 >= -2147483650.0)
        {
          v87 = v86;
        }

        else
        {
          v87 = 0x80000000;
        }
      }

      else
      {
        v87 = 0x7FFFFFFFLL;
        v64 = a1;
      }

      sprintf_7f(v26, v87, 2);
      v61 = *v26;
    }

    else
    {
      v61 = *v26;
      v80 = 32;
      v81 = 1u;
      v64 = a1;
      do
      {
        *v26 = v61 + 1;
        *v61 = v80;
        v61 = *v26;
        if (*v26 >= *(v26 + 24))
        {
          v61 = *(v26 + 16);
          *v26 = v61;
        }

        v80 = a9999999[v81++];
      }

      while (v81 != 15);
    }
  }

  v88 = (*(v28 + 48) - *(v28 + 152) - v27[15]) * 1000.0 - (*(v28 + 32) - *(v27 + 32));
  *v26 = v61 + 1;
  *v61 = 32;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  sprintf_12f3(v26, v88);
  v89 = (*v26)++;
  *v89 = 32;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  sprintf_2d(v26, v30[641]);
  v90 = v29[442];
  if (v90 == -1)
  {
    v91 = 255;
  }

  else
  {
    v91 = v90 / 0xEA60;
  }

  sprintf_4d(v26, v91);
  v92 = (*v26)++;
  *v92 = 32;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  sprintf_1u(v26, v29[444]);
  v93 = *v26;
  v94 = 32;
  v95 = 1u;
  do
  {
    *v26 = v93 + 1;
    *v93 = v94;
    v93 = *v26;
    if (*v26 >= *(v26 + 24))
    {
      v93 = *(v26 + 16);
      *v26 = v93;
    }

    v94 = aGoh[v95++];
  }

  while (v95 != 6);
  sprintf_4d(v26, v29[462]);
  v96 = v29[459];
  if (v96)
  {
    v97 = 274877907 * (*(v28 + 36) - v96);
    v98 = v97 >> 63;
    v99 = v97 >> 38;
    v100 = (*v26)++;
    *v100 = 32;
    if (*v26 >= *(v26 + 24))
    {
      *v26 = *(v26 + 16);
    }

    sprintf_4d(v26, (v99 + v98));
    v101 = v29[462];
    if (v101)
    {
      v102 = 274877907 * (*(v28 + 36) - v101);
      v103 = (v102 >> 38) + (v102 >> 63);
    }

    else
    {
      v103 = 0;
    }

    v107 = (*v26)++;
    *v107 = 32;
    if (*v26 >= *(v26 + 24))
    {
      *v26 = *(v26 + 16);
    }

    sprintf_4d(v26, v103);
    v105 = *v26;
  }

  else
  {
    v104 = 0;
    v105 = *v26;
    v106 = 32;
    do
    {
      *v26 = v105 + 1;
      *v105 = v106;
      v105 = *v26;
      if (*v26 >= *(v26 + 24))
      {
        v105 = *(v26 + 16);
        *v26 = v105;
      }

      v106 = a00[++v104];
    }

    while (v104 != 4);
  }

  *v26 = v105 + 1;
  *v105 = 10;
  if (*v26 >= *(v26 + 24))
  {
    *v26 = *(v26 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v26);
  v108 = v64[36];
  v110 = v64[6];
  v109 = v64[7];
  v111 = (v109 + 17120);
  v112 = (v109 + 8986);
  v113 = v64[10];
  v114 = *v108;
  v115 = 71;
  v116 = 1u;
  do
  {
    *v108 = v114 + 1;
    *v114 = v115;
    v114 = *v108;
    if (*v108 >= *(v108 + 24))
    {
      v114 = *(v108 + 16);
      *v108 = v114;
    }

    v115 = aGlot[v116++];
  }

  while (v116 != 7);
  v117 = *(v110 + 88) - *(v113 + 160) + 0.0005;
  if (v117 >= 86400.0)
  {
    v117 = v117 + -86400.0;
  }

  v118 = ((v117 - v117) * 1000.0);
  v119 = (v117 / 0xE10);
  v120 = v117 - 3600 * v119;
  v121 = (v120 / 0x3C);
  v122 = v120 - 60 * v121;
  sprintf_02d(v108, v119);
  sprintf_02d(v108, v121);
  sprintf_02d(v108, v122);
  v123 = (*v108)++;
  *v123 = 46;
  if (*v108 >= *(v108 + 24))
  {
    *v108 = *(v108 + 16);
  }

  sprintf_03d(v108, v118);
  sprintf_3d(v108, *(v110 + 82));
  sprintf_5d(v108, *(v110 + 84));
  v124 = v112[3];
  sprintf_3d(v108, *v112);
  sprintf_3d(v108, v124);
  v125 = 0;
  v126 = *v108;
  v127 = 32;
  do
  {
    *v108 = v126 + 1;
    *v126 = v127;
    v126 = *v108;
    if (*v108 >= *(v108 + 24))
    {
      v126 = *(v108 + 16);
      *v108 = v126;
    }

    v127 = asc_299059399[++v125];
  }

  while (v125 != 2);
  sprintf_12f3(v108, *(v110 + 88));
  sprintf_2d(v108, *(v110 + 80));
  sprintf_3d(v108, *(v111 + 8));
  sprintf_5d(v108, *v111);
  v128 = (*v108)++;
  *v128 = 32;
  v129 = *v108;
  if (*v108 >= *(v108 + 24))
  {
    v129 = *(v108 + 16);
  }

  *v108 = v129 + 1;
  *v129 = 32;
  v130 = *v108;
  if (*v108 >= *(v108 + 24))
  {
    v130 = *(v108 + 16);
  }

  v131 = &g_TOW_Stat_As_String[10 * *(v110 + 76) + 1];
  v132 = 32;
  do
  {
    *v108 = v130 + 1;
    *v130 = v132;
    v130 = *v108;
    if (*v108 >= *(v108 + 24))
    {
      v130 = *(v108 + 16);
      *v108 = v130;
    }

    v133 = *v131++;
    v132 = v133;
  }

  while (v133);
  *v108 = v130 + 1;
  *v130 = 10;
  if (*v108 >= *(v108 + 24))
  {
    *v108 = *(v108 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v108);
  v134 = v64[36];
  v135 = v64[29];
  v136 = *v134;
  v137 = 112;
  v138 = 1u;
  do
  {
    *v134 = v136 + 1;
    *v136 = v137;
    v136 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v136 = *(v134 + 16);
      *v134 = v136;
    }

    v137 = aPNd[v138++];
  }

  while (v138 != 7);
  *v1474 = vmulq_f64(*(v135 + 104), vdupq_n_s64(0x3F91DF46A2529D44uLL));
  sprintf_LaLo(v134, v1474);
  sprintf_sgR8(v134, *(v135 + 120));
  sprintf_sgR8(v134, *(v135 + 128));
  v139 = (*v134)++;
  *v139 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_sgR8(v134, *(v135 + 136));
  v140 = *(v135 + 144) * 10.0;
  v141 = -0.5;
  if (v140 > 0.0)
  {
    v141 = 0.5;
  }

  v142 = v140 + v141;
  if (v142 <= 2147483650.0)
  {
    if (v142 >= -2147483650.0)
    {
      v143 = v142;
    }

    else
    {
      v143 = 0x80000000;
    }
  }

  else
  {
    v143 = 0x7FFFFFFFLL;
  }

  sprintf_7f(v134, v143, 2);
  sprintf_sgR8(v134, *(v135 + 152));
  v144 = *v134;
  v145 = 32;
  v146 = 1u;
  do
  {
    *v134 = v144 + 1;
    *v144 = v145;
    v144 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v144 = *(v134 + 16);
      *v134 = v144;
    }

    v145 = aSt[v146++];
  }

  while (v146 != 6);
  sprintf_2d(v134, *(v135 + 333));
  sprintf_2d(v134, *(v135 + 334));
  v147 = (*v134)++;
  *v147 = 32;
  v148 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v148 = *(v134 + 16);
  }

  v149 = *(v135 + 316);
  if (v149 >= 5)
  {
    v150 = 45;
  }

  else
  {
    v150 = 0x484D4C562DuLL >> (8 * v149);
  }

  *v134 = v148 + 1;
  *v148 = v150;
  v151 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v151 = *(v134 + 16);
  }

  *v134 = v151 + 1;
  *v151 = 32;
  v152 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v152 = *(v134 + 16);
  }

  v153 = *(v135 + 312) - 1;
  if (v153 > 3)
  {
    v154 = "NC";
  }

  else
  {
    v154 = off_29EF06268[v153];
  }

  v155 = *v154;
  if (*v154)
  {
    v156 = (v154 + 1);
    do
    {
      *v134 = v152 + 1;
      *v152 = v155;
      v152 = *v134;
      if (*v134 >= *(v134 + 24))
      {
        v152 = *(v134 + 16);
        *v134 = v152;
      }

      v157 = *v156++;
      v155 = v157;
    }

    while (v157);
  }

  *v134 = v152 + 1;
  *v152 = 32;
  v158 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v158 = *(v134 + 16);
  }

  v159 = *(v135 + 308) - 1;
  if (v159 > 4)
  {
    v160 = "NF";
  }

  else
  {
    v160 = off_29EF06288[v159];
  }

  v161 = *v160;
  if (*v160)
  {
    v162 = (v160 + 1);
    do
    {
      *v134 = v158 + 1;
      *v158 = v161;
      v158 = *v134;
      if (*v134 >= *(v134 + 24))
      {
        v158 = *(v134 + 16);
        *v134 = v158;
      }

      v163 = *v162++;
      v161 = v163;
    }

    while (v163);
  }

  *v134 = v158 + 1;
  *v158 = 32;
  v164 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v164 = *(v134 + 16);
  }

  v165 = *(v135 + 304);
  if (v165 >= 6)
  {
    v166 = 45;
  }

  else
  {
    v166 = 0x2B465650532DuLL >> (8 * v165);
  }

  *v134 = v164 + 1;
  *v164 = v166;
  v167 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v167 = *(v134 + 16);
  }

  v168 = 0;
  v169 = 32;
  do
  {
    *v134 = v167 + 1;
    *v167 = v169;
    v167 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v167 = *(v134 + 16);
      *v134 = v167;
    }

    v169 = a0x[++v168];
  }

  while (v168 != 4);
  sprintf_08x(v134, *(v135 + 328));
  v170 = 0;
  v171 = *v134;
  v172 = 32;
  do
  {
    *v134 = v171 + 1;
    *v171 = v172;
    v171 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v171 = *(v134 + 16);
      *v134 = v171;
    }

    v172 = a0x[++v170];
  }

  while (v170 != 4);
  sprintf_03x(v134, *(v135 + 296));
  v173 = *v134;
  v174 = 32;
  v175 = 1u;
  do
  {
    *v134 = v173 + 1;
    *v173 = v174;
    v173 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v173 = *(v134 + 16);
      *v134 = v173;
    }

    v174 = aPa[v175++];
  }

  while (v175 != 6);
  sprintf_ACC(v134, *(v135 + 208));
  v176 = (*v134)++;
  *v176 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 216));
  v177 = (*v134)++;
  *v177 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_3d(v134, *(v135 + 224));
  v178 = (*v134)++;
  *v178 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 200));
  v179 = *v134;
  v180 = 32;
  v181 = 1u;
  do
  {
    *v134 = v179 + 1;
    *v179 = v180;
    v179 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v179 = *(v134 + 16);
      *v134 = v179;
    }

    v180 = aVa[v181++];
  }

  while (v181 != 6);
  sprintf_ACC(v134, *(v135 + 232));
  v182 = (*v134)++;
  *v182 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 240));
  v183 = (*v134)++;
  *v183 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 248));
  v184 = *v134;
  v185 = 32;
  v186 = 1u;
  do
  {
    *v134 = v184 + 1;
    *v184 = v185;
    v184 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v184 = *(v134 + 16);
      *v134 = v184;
    }

    v185 = aTa[v186++];
  }

  while (v186 != 6);
  sprintf_ACC(v134, *(v135 + 160) * 1000.0);
  v187 = (*v134)++;
  *v187 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 168) * 1000000000.0);
  v188 = (*v134)++;
  *v188 = 32;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  sprintf_ACC(v134, *(v135 + 176) * 1000000000.0);
  v189 = *v134;
  v190 = 32;
  v191 = 1u;
  do
  {
    *v134 = v189 + 1;
    *v189 = v190;
    v189 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v189 = *(v134 + 16);
      *v134 = v189;
    }

    v190 = aEt[v191++];
  }

  while (v191 != 6);
  v192 = *(v135 + 320);
  if (v192 >= 0)
  {
    v193 = v192;
  }

  else
  {
    v193 = -v192;
  }

  sprintf1da(v134, v193, v1505, 0, v192 >> 31);
  v194 = *v134;
  v195 = 32;
  v196 = 1u;
  do
  {
    *v134 = v194 + 1;
    *v194 = v195;
    v194 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v194 = *(v134 + 16);
      *v134 = v194;
    }

    v195 = aTr[v196++];
  }

  while (v196 != 6);
  v197 = *(v135 + 324);
  if (v197 >= 5)
  {
    v198 = 45;
  }

  else
  {
    v198 = 0x484D4C562DuLL >> (8 * v197);
  }

  *v134 = v194 + 1;
  *v194 = v198;
  v199 = *v134;
  if (*v134 >= *(v134 + 24))
  {
    v199 = *(v134 + 16);
  }

  v200 = 32;
  v201 = 1u;
  do
  {
    *v134 = v199 + 1;
    *v199 = v200;
    v199 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v199 = *(v134 + 16);
      *v134 = v199;
    }

    v200 = aTtff[v201++];
  }

  while (v201 != 8);
  sprintf_5f(v134, (*(v135 + 336) / 10), 3);
  sprintf_5f(v134, (*(v135 + 340) / 10), 3);
  v202 = *v134;
  v203 = 32;
  v204 = 1u;
  do
  {
    *v134 = v202 + 1;
    *v202 = v203;
    v202 = *v134;
    if (*v134 >= *(v134 + 24))
    {
      v202 = *(v134 + 16);
      *v134 = v202;
    }

    v203 = aDiv[v204++];
  }

  while (v204 != 7);
  v205 = *(v135 + 300);
  if (v205 >= 0)
  {
    v206 = v205;
  }

  else
  {
    v206 = -v205;
  }

  sprintf1da(v134, v206, v1505, 0, v205 >> 31);
  v207 = (*v134)++;
  *v207 = 10;
  if (*v134 >= *(v134 + 24))
  {
    *v134 = *(v134 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v134);
  v208 = v64[36];
  v209 = v64[10];
  v210 = v64[17];
  v211 = v64[22];
  strcpy(v1474, "    -------------- ");
  v212 = *v208;
  v213 = 71;
  v214 = 1u;
  do
  {
    *v208 = v212 + 1;
    *v212 = v213;
    v212 = *v208;
    if (*v208 >= *(v208 + 24))
    {
      v212 = *(v208 + 16);
      *v208 = v212;
    }

    v213 = aGeod[v214++];
  }

  while (v214 != 7);
  sprintf_LaLo(v208, v209 + 224);
  sprintf_sgR8(v208, *(v209 + 240));
  sprintf_sgR8(v208, *(v209 + 240) - *(v209 + 248));
  v215 = *(v209 + 416);
  if (v215 == 2)
  {
    v216 = 115;
  }

  else
  {
    if (v215 != 1)
    {
      goto LABEL_295;
    }

    v216 = 83;
  }

  LOBYTE(v1474[1]) = v216;
LABEL_295:
  v217 = *(v209 + 420);
  if (v217 == 2)
  {
    v218 = 98;
  }

  else
  {
    if (v217 != 1)
    {
      goto LABEL_300;
    }

    v218 = 66;
  }

  BYTE1(v1474[1]) = v218;
LABEL_300:
  v219 = *(v209 + 432);
  if (v219 == 2)
  {
    v220 = 100;
  }

  else
  {
    if (v219 != 1)
    {
      goto LABEL_305;
    }

    v220 = 68;
  }

  BYTE2(v1474[1]) = v220;
LABEL_305:
  v221 = *(v209 + 424);
  if (v221 == 2)
  {
    v222 = 103;
  }

  else
  {
    if (v221 != 1)
    {
      goto LABEL_310;
    }

    v222 = 71;
  }

  HIBYTE(v1474[1]) = v222;
LABEL_310:
  v223 = *(v209 + 440);
  if (v223 == 2)
  {
    v224 = 104;
  }

  else
  {
    if (v223 != 1)
    {
      goto LABEL_315;
    }

    v224 = 72;
  }

  LOBYTE(v1474[2]) = v224;
LABEL_315:
  v225 = *(v209 + 444);
  if (v225 == 2)
  {
    v226 = 97;
  }

  else
  {
    if (v225 != 1)
    {
      goto LABEL_320;
    }

    v226 = 65;
  }

  BYTE1(v1474[2]) = v226;
LABEL_320:
  v227 = *(v209 + 448);
  if (v227 == 2)
  {
    v228 = 118;
  }

  else
  {
    if (v227 != 1)
    {
      goto LABEL_325;
    }

    v228 = 86;
  }

  BYTE2(v1474[2]) = v228;
LABEL_325:
  v229 = *(v209 + 452);
  if (v229 == 2)
  {
    v230 = 100;
  }

  else
  {
    if (v229 != 1)
    {
      goto LABEL_330;
    }

    v230 = 68;
  }

  HIBYTE(v1474[2]) = v230;
LABEL_330:
  v231 = *(v209 + 456);
  if (v231 == 2)
  {
    v232 = 103;
  }

  else
  {
    if (v231 != 1)
    {
      goto LABEL_335;
    }

    v232 = 71;
  }

  LOBYTE(v1474[3]) = v232;
LABEL_335:
  v233 = *(v209 + 460);
  if (v233 == 2)
  {
    v234 = 115;
  }

  else
  {
    if (v233 != 1)
    {
      goto LABEL_340;
    }

    v234 = 83;
  }

  BYTE1(v1474[3]) = v234;
LABEL_340:
  v235 = *(v209 + 464);
  if (v235 == 2)
  {
    v236 = 100;
  }

  else
  {
    if (v235 != 1)
    {
      goto LABEL_345;
    }

    v236 = 68;
  }

  BYTE2(v1474[3]) = v236;
LABEL_345:
  v237 = *(v209 + 468);
  if (v237 == 2)
  {
    v238 = 103;
  }

  else
  {
    if (v237 != 1)
    {
      goto LABEL_350;
    }

    v238 = 71;
  }

  HIBYTE(v1474[3]) = v238;
LABEL_350:
  v239 = *(v209 + 472);
  if (v239 == 2)
  {
    v240 = 100;
  }

  else
  {
    if (v239 != 1)
    {
      goto LABEL_355;
    }

    v240 = 68;
  }

  LOBYTE(v1474[4]) = v240;
LABEL_355:
  v241 = *(v209 + 476);
  if (v241 == 2)
  {
    v242 = 116;
  }

  else
  {
    if (v241 != 1)
    {
      goto LABEL_360;
    }

    v242 = 84;
  }

  BYTE1(v1474[4]) = v242;
LABEL_360:
  v243 = *(v209 + 480);
  if (v243 == 2)
  {
    v244 = 100;
    goto LABEL_364;
  }

  if (v243 == 1)
  {
    v244 = 68;
LABEL_364:
    BYTE2(v1474[4]) = v244;
  }

  v245 = v1474[0];
  v246 = *v208;
  if (LOBYTE(v1474[0]))
  {
    v247 = v1474 + 1;
    do
    {
      *v208 = v246 + 1;
      *v246 = v245;
      v246 = *v208;
      if (*v208 >= *(v208 + 24))
      {
        v246 = *(v208 + 16);
        *v208 = v246;
      }

      v248 = *v247++;
      v245 = v248;
    }

    while (v248);
  }

  v249 = 32;
  v250 = 1u;
  do
  {
    *v208 = v246 + 1;
    *v246 = v249;
    v246 = *v208;
    if (*v208 >= *(v208 + 24))
    {
      v246 = *(v208 + 16);
      *v208 = v246;
    }

    v249 = aSf[v250++];
  }

  while (v250 != 6);
  v251 = *(v210 + 27204);
  v252 = ch_Stat_Fil[v251];
  if (v252)
  {
    v253 = &ch_Stat_Fil[v251] + 1;
    do
    {
      *v208 = v246 + 1;
      *v246 = v252;
      v246 = *v208;
      if (*v208 >= *(v208 + 24))
      {
        v246 = *(v208 + 16);
        *v208 = v246;
      }

      v254 = *v253++;
      v252 = v254;
    }

    while (v254);
  }

  sprintf_2d(v208, *(v210 + 27249));
  sprintf_2d(v208, *(v210 + 27208));
  sprintf_2d(v208, *(v210 + 27248));
  v255 = fmin(*(v210 + 27216), 9.89999962) * 10.0;
  v256 = -0.5;
  if (v255 > 0.0)
  {
    v256 = 0.5;
  }

  v257 = v255 + v256;
  if (v257 <= 2147483650.0)
  {
    if (v257 >= -2147483650.0)
    {
      v258 = v257;
    }

    else
    {
      v258 = 0x80000000;
    }
  }

  else
  {
    v258 = 0x7FFFFFFFLL;
  }

  sprintf_3f(v208, v258, 2);
  sprintf_sgR8(v208, *(v210 + 27232));
  sprintf_sgR8(v208, *(v210 + 27240));
  v259 = *v208;
  v260 = 32;
  v261 = 1u;
  do
  {
    *v208 = v259 + 1;
    *v259 = v260;
    v259 = *v208;
    if (*v208 >= *(v208 + 24))
    {
      v259 = *(v208 + 16);
      *v208 = v259;
    }

    v260 = aHf[v261++];
  }

  while (v261 != 6);
  v262 = *(v210 + 27276);
  v263 = ch_Heading[v262];
  if (v263)
  {
    v264 = &ch_Heading[v262] + 1;
    do
    {
      *v208 = v259 + 1;
      *v259 = v263;
      v259 = *v208;
      if (*v208 >= *(v208 + 24))
      {
        v259 = *(v208 + 16);
        *v208 = v259;
      }

      v265 = *v264++;
      v263 = v265;
    }

    while (v265);
  }

  v266 = *(v210 + 27280);
  v267 = -0.5;
  if (v266 > 0.0)
  {
    v267 = 0.5;
  }

  v268 = v266 + v267;
  if (v268 <= 2147483650.0)
  {
    if (v268 >= -2147483650.0)
    {
      v269 = v268;
    }

    else
    {
      v269 = 0x80000000;
    }
  }

  else
  {
    v269 = 0x7FFFFFFFLL;
  }

  sprintf_5d(v208, v269);
  v270 = (*v208)++;
  *v270 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v271 = *(v210 + 27296);
  if (v271)
  {
    v272 = ((*v211 - v271) / 1000);
  }

  else
  {
    v272 = 0;
  }

  sprintf_4d(v208, v272);
  v273 = *(v210 + 27328);
  v274 = -0.5;
  if (v273 > 0.0)
  {
    v274 = 0.5;
  }

  v275 = v273 + v274;
  if (v275 <= 2147483650.0)
  {
    if (v275 >= -2147483650.0)
    {
      v276 = v275;
    }

    else
    {
      v276 = 0x80000000;
    }
  }

  else
  {
    v276 = 0x7FFFFFFFLL;
  }

  sprintf_5d(v208, v276);
  v277 = (*v208)++;
  *v277 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v278 = *(v210 + 27336);
  if (v278)
  {
    v279 = ((*v211 - v278) / 1000);
  }

  else
  {
    v279 = 0;
  }

  sprintf_4d(v208, v279);
  sprintf_2d(v208, *(v210 + 27320));
  v280 = (*v208)++;
  *v280 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  sprintf_11f9(v208, *(v210 + 27304));
  v281 = (*v208)++;
  *v281 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  sprintf_11f9(v208, *(v210 + 27312));
  v282 = *v208;
  v283 = 32;
  v284 = 1u;
  do
  {
    *v208 = v282 + 1;
    *v282 = v283;
    v282 = *v208;
    if (*v208 >= *(v208 + 24))
    {
      v282 = *(v208 + 16);
      *v208 = v282;
    }

    v283 = aHi[v284++];
  }

  while (v284 != 6);
  v285 = *(v211 + 79832) * 10.0;
  v286 = -0.5;
  if (v285 > 0.0)
  {
    v286 = 0.5;
  }

  v287 = v285 + v286;
  if (v287 <= 2147483650.0)
  {
    if (v287 >= -2147483650.0)
    {
      v288 = v287;
    }

    else
    {
      v288 = 0x80000000;
    }
  }

  else
  {
    v288 = 0x7FFFFFFFLL;
  }

  sprintf_2f(v208, v288);
  v289 = (*v208)++;
  *v289 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v290 = *(v211 + 79808);
  v291 = -0.5;
  if (v290 > 0.0)
  {
    v291 = 0.5;
  }

  v292 = v290 + v291;
  if (v292 <= 2147483650.0)
  {
    if (v292 >= -2147483650.0)
    {
      v293 = v292;
    }

    else
    {
      v293 = 0x80000000;
    }
  }

  else
  {
    v293 = 0x7FFFFFFFLL;
  }

  sprintf_3d(v208, v293);
  v294 = (*v208)++;
  *v294 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v295 = *(v211 + 1856);
  v296 = -0.5;
  if (v295 > 0.0)
  {
    v296 = 0.5;
  }

  v297 = v295 + v296;
  if (v297 <= 2147483650.0)
  {
    if (v297 >= -2147483650.0)
    {
      v298 = v297;
    }

    else
    {
      v298 = 0x80000000;
    }
  }

  else
  {
    v298 = 0x7FFFFFFFLL;
  }

  sprintf_3d(v208, v298);
  v299 = (*v208)++;
  *v299 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v300 = *(v211 + 79824);
  v301 = -0.5;
  if (v300 > 0.0)
  {
    v301 = 0.5;
  }

  v302 = v300 + v301;
  if (v302 <= 2147483650.0)
  {
    if (v302 >= -2147483650.0)
    {
      v303 = v302;
    }

    else
    {
      v303 = 0x80000000;
    }
  }

  else
  {
    v303 = 0x7FFFFFFFLL;
  }

  sprintf_3d(v208, v303);
  v304 = (*v208)++;
  *v304 = 32;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  v305 = *(v211 + 79816);
  v306 = -0.5;
  if (v305 > 0.0)
  {
    v306 = 0.5;
  }

  v307 = v305 + v306;
  if (v307 <= 2147483650.0)
  {
    if (v307 >= -2147483650.0)
    {
      v308 = v307;
    }

    else
    {
      v308 = 0x80000000;
    }
  }

  else
  {
    v308 = 0x7FFFFFFFLL;
  }

  sprintf_3d(v208, v308);
  v309 = (*v208)++;
  *v309 = 32;
  v310 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v310 = *(v208 + 16);
  }

  v311 = *(v211 + 79840);
  if (v311 >= 8)
  {
    v312 = 120;
  }

  else
  {
    v312 = 0x4D30323146535578uLL >> (8 * v311);
  }

  *v208 = v310 + 1;
  *v310 = v312;
  v313 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v313 = *(v208 + 16);
  }

  *v208 = v313 + 1;
  *v313 = 32;
  v314 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v314 = *(v208 + 16);
  }

  if (*(v211 + 79844))
  {
    v315 = 83;
  }

  else
  {
    v315 = 45;
  }

  *v208 = v314 + 1;
  *v314 = v315;
  v316 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v316 = *(v208 + 16);
  }

  *v208 = v316 + 1;
  *v316 = 32;
  v317 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v317 = *(v208 + 16);
  }

  if (*(v211 + 79845))
  {
    v318 = 84;
  }

  else
  {
    v318 = 45;
  }

  *v208 = v317 + 1;
  *v317 = v318;
  v319 = *v208;
  if (*v208 >= *(v208 + 24))
  {
    v319 = *(v208 + 16);
  }

  *v208 = v319 + 1;
  *v319 = 10;
  if (*v208 >= *(v208 + 24))
  {
    *v208 = *(v208 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v208);
  v320 = v64[36];
  v321 = v64[10];
  v322 = v64[17];
  v323 = v64[22];
  v324 = *v320;
  v325 = 76;
  v326 = 1u;
  do
  {
    *v320 = v324 + 1;
    *v324 = v325;
    v324 = *v320;
    if (*v320 >= *(v320 + 24))
    {
      v324 = *(v320 + 16);
      *v320 = v324;
    }

    v325 = aLocal[v326++];
  }

  while (v326 != 8);
  v327 = v321 + 28;
  v328 = (v322 + 68288);
  v329 = -3;
  do
  {
    v330 = *v327 - *(v328 - 9);
    if (v329 != -1)
    {
      if (v329 == -2)
      {
        v331 = -6.28318531;
        if (v330 >= 3.14159265 || (v331 = 6.28318531, v330 < -3.14159265))
        {
          v330 = v330 + v331;
        }
      }

      v330 = v330 * *v328;
    }

    v332 = (*v320)++;
    *v332 = 32;
    if (*v320 >= *(v320 + 24))
    {
      *v320 = *(v320 + 16);
    }

    sprintf_12f3(v320, v330);
    ++v328;
    ++v327;
    v333 = __CFADD__(v329++, 1);
  }

  while (!v333);
  v334 = (*v320)++;
  *v334 = 32;
  if (*v320 >= *(v320 + 24))
  {
    *v320 = *(v320 + 16);
  }

  sprintf_sgR8(v320, v321[46]);
  sprintf_sgR8(v320, -v321[44]);
  sprintf_6d(v320, v321[124]);
  v335 = v321 + 18;
  v336 = 0.0;
  for (m = 4; m > 1; --m)
  {
    v338 = *v335--;
    v336 = v336 + v338 * v338;
  }

  sprintf_sgR8(v320, sqrt(v336));
  sprintf_6d(v320, *(v323 + 1856));
  sprintf_sgR8(v320, v321[42]);
  sprintf_sgR8(v320, v321[43]);
  sprintf_sgR8(v320, v321[119]);
  sprintf_sgR8(v320, v321[120]);
  sprintf_sgR8(v320, v321[122]);
  sprintf_sgR8(v320, v321[123]);
  v339 = (*v320)++;
  *v339 = 10;
  if (*v320 >= *(v320 + 24))
  {
    *v320 = *(v320 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v320);
  print_line_LS(v64, 1);
  print_line_LS(v64, 2);
  print_line_LS(v64, 3);
  print_line_LS(v64, 4);
  print_line_LS(v64, 5);
  v340 = v64[36];
  if (g_Logging_Cfg >= 7)
  {
    v341 = v64[17];
    v342 = *v340;
    v343 = 75;
    v344 = 1u;
    do
    {
      *v340 = v342 + 1;
      *v342 = v343;
      v342 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v342 = *(v340 + 16);
        *v340 = v342;
      }

      v343 = aKfarp[v344++];
    }

    while (v344 != 7);
    *v340 = v342 + 1;
    *v342 = 32;
    v345 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v345 = *(v340 + 16);
    }

    *v340 = v345 + 1;
    *v345 = 80;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, *(v341 + 27616));
    v346 = fmin(*(v341 + 27608), 9.89999962) * 10.0;
    v347 = -0.5;
    if (v346 > 0.0)
    {
      v347 = 0.5;
    }

    v348 = v346 + v347;
    if (v348 <= 2147483650.0)
    {
      if (v348 >= -2147483650.0)
      {
        v349 = v348;
      }

      else
      {
        v349 = 0x80000000;
      }
    }

    else
    {
      v349 = 0x7FFFFFFFLL;
    }

    sprintf_3f(v340, v349, 2);
    v350 = (*v340)++;
    *v350 = 32;
    v351 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v351 = *(v340 + 16);
    }

    *v340 = v351 + 1;
    *v351 = 72;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_6d(v340, fmin(*(v341 + 27568), 99999.0));
    v352 = (*v340)++;
    *v352 = 32;
    v353 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v353 = *(v340 + 16);
    }

    *v340 = v353 + 1;
    *v353 = 86;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_6d(v340, fmin(*(v341 + 27576), 99999.0));
    v354 = (*v340)++;
    *v354 = 32;
    v355 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v355 = *(v340 + 16);
    }

    *v340 = v355 + 1;
    *v355 = 66;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_6d(v340, fmin(*(v341 + 27584), 99999.0));
    v356 = (*v340)++;
    *v356 = 32;
    v357 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v357 = *(v340 + 16);
    }

    *v340 = v357 + 1;
    *v357 = 83;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_6d(v340, fmin(*(v341 + 27592), 99999.0));
    v358 = (*v340)++;
    *v358 = 32;
    v359 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v359 = *(v340 + 16);
    }

    *v340 = v359 + 1;
    *v359 = 72;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, *(v341 + 27528));
    v360 = (*v340)++;
    *v360 = 32;
    v361 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v361 = *(v340 + 16);
    }

    *v340 = v361 + 1;
    *v361 = 86;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, *(v341 + 27529));
    v362 = (*v340)++;
    *v362 = 32;
    v363 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v363 = *(v340 + 16);
    }

    *v340 = v363 + 1;
    *v363 = 66;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, *(v341 + 27530));
    v364 = (*v340)++;
    *v364 = 32;
    v365 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v365 = *(v340 + 16);
    }

    *v340 = v365 + 1;
    *v365 = 83;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, *(v341 + 27531));
    v366 = (*v340)++;
    *v366 = 32;
    v367 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v367 = *(v340 + 16);
    }

    *v340 = v367 + 1;
    *v367 = 86;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, *(v341 + 27712));
    v368 = fmin(*(v341 + 27704), 9.89999962) * 10.0;
    v369 = -0.5;
    if (v368 > 0.0)
    {
      v369 = 0.5;
    }

    v370 = v368 + v369;
    if (v370 <= 2147483650.0)
    {
      if (v370 >= -2147483650.0)
      {
        v371 = v370;
      }

      else
      {
        v371 = 0x80000000;
      }
    }

    else
    {
      v371 = 0x7FFFFFFFLL;
    }

    sprintf_3f(v340, v371, 2);
    v372 = (*v340)++;
    *v372 = 32;
    v373 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v373 = *(v340 + 16);
    }

    *v340 = v373 + 1;
    *v373 = 72;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, fmin(*(v341 + 27664), 99.0));
    v374 = (*v340)++;
    *v374 = 32;
    v375 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v375 = *(v340 + 16);
    }

    *v340 = v375 + 1;
    *v375 = 86;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, fmin(*(v341 + 27672), 99.0));
    v376 = (*v340)++;
    *v376 = 32;
    v377 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v377 = *(v340 + 16);
    }

    *v340 = v377 + 1;
    *v377 = 66;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, fmin(*(v341 + 27680), 99.0));
    v378 = (*v340)++;
    *v378 = 32;
    v379 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v379 = *(v340 + 16);
    }

    *v340 = v379 + 1;
    *v379 = 83;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_3d(v340, fmin(*(v341 + 27688), 99.0));
    v380 = (*v340)++;
    *v380 = 32;
    v381 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v381 = *(v340 + 16);
    }

    *v340 = v381 + 1;
    *v381 = 72;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_4d(v340, *(v341 + 27624));
    v382 = (*v340)++;
    *v382 = 32;
    v383 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v383 = *(v340 + 16);
    }

    *v340 = v383 + 1;
    *v383 = 86;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_4d(v340, *(v341 + 27625));
    v384 = (*v340)++;
    *v384 = 32;
    v385 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v385 = *(v340 + 16);
    }

    *v340 = v385 + 1;
    *v385 = 66;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_4d(v340, *(v341 + 27626));
    v386 = (*v340)++;
    *v386 = 32;
    v387 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v387 = *(v340 + 16);
    }

    *v340 = v387 + 1;
    *v387 = 83;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_4d(v340, *(v341 + 27627));
    v388 = (*v340)++;
    *v388 = 10;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v340);
    v340 = v64[36];
  }

  v389 = v64[7];
  v390 = v64[5];
  v391 = v64[9];
  v392 = *v340;
  v393 = 78;
  v394 = 1u;
  do
  {
    *v340 = v392 + 1;
    *v392 = v393;
    v392 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v392 = *(v340 + 16);
      *v340 = v392;
    }

    v393 = aNavm[v394++];
  }

  while (v394 != 7);
  if (v391[14])
  {
    v395 = 0;
    v396 = 0;
    v397 = (v389 + 224);
    do
    {
      if (*(*(v389 + 80) + v395))
      {
        v398 = 65;
      }

      else
      {
        v398 = 45;
      }

      if (*(*(v389 + 64) + v395) & 1) != 0 || (*(*(v389 + 72) + v395))
      {
        if (*(*v389 + v395))
        {
          v399 = 24;
        }

        else
        {
          v399 = 56;
        }

        v398 += v399;
        if (v398 == 77)
        {
          LOBYTE(v398) = 46;
        }

        if (*(*(v389 + 64) + v395))
        {
          v400 = *(*v389 + v395) == 0;
        }

        else
        {
          v400 = 1;
        }

        if (!v400)
        {
          if (*v397 == 0xFFFFFF)
          {
            v396 = (0x80000000 >> v395) | v396;
          }

          else
          {
            v396 = v396;
          }
        }
      }

      else
      {
        if (!*(*v389 + v395))
        {
          v398 += 32;
        }

        if (v398 == 77)
        {
          LOBYTE(v398) = 46;
        }
      }

      *v340 = v392 + 1;
      *v392 = v398;
      v392 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v392 = *(v340 + 16);
        *v340 = v392;
      }

      if ((~v395 & 3) == 0)
      {
        *v340 = v392 + 1;
        *v392 = 32;
        v392 = *v340;
        if (*v340 >= *(v340 + 24))
        {
          v392 = *(v340 + 16);
          *v340 = v392;
        }
      }

      ++v395;
      v397 += 29;
    }

    while (v395 != 32);
    v401 = 32;
    v402 = 1u;
    do
    {
      *v340 = v392 + 1;
      *v392 = v401;
      v392 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v392 = *(v340 + 16);
        *v340 = v392;
      }

      v401 = asc_29905949C[v402++];
    }

    while (v402 != 8);
    for (n = 0; n != 32; ++n)
    {
      if (v391[n + 265])
      {
        LOBYTE(v404) = 46;
      }

      else if (v391[n + 544])
      {
        LOBYTE(v404) = 58;
      }

      else
      {
        v405 = *(v390 + 7720 + 4 * n);
        v1139 = v405 > 2;
        v404 = 0x6E564Du >> (8 * v405);
        if (v1139)
        {
          LOBYTE(v404) = 120;
        }
      }

      *v340 = v392 + 1;
      *v392 = v404;
      v392 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v392 = *(v340 + 16);
        *v340 = v392;
      }

      if ((~n & 3) == 0)
      {
        *v340 = v392 + 1;
        *v392 = 32;
        v392 = *v340;
        if (*v340 >= *(v340 + 24))
        {
          v392 = *(v340 + 16);
          *v340 = v392;
        }
      }
    }

    v406 = 0;
    v407 = 32;
    do
    {
      *v340 = v392 + 1;
      *v392 = v407;
      v392 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v392 = *(v340 + 16);
        *v340 = v392;
      }

      v407 = asc_2990594A4[++v406];
    }

    while (v406 != 8);
    sprintf_08x(v340, v396);
    sprintf_sp1d(v340, *(v389 + 8956));
    sprintf_sp1d(v340, *(v389 + 8972));
    v392 = *v340;
  }

  else
  {
    v408 = 71;
    v409 = 1u;
    do
    {
      *v340 = v392 + 1;
      *v392 = v408;
      v392 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v392 = *(v340 + 16);
        *v340 = v392;
      }

      v408 = aGpsDisabled[v409++];
    }

    while (v409 != 15);
  }

  v410 = 32;
  v411 = 1u;
  do
  {
    *v340 = v392 + 1;
    *v392 = v410;
    v392 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v392 = *(v340 + 16);
      *v340 = v392;
    }

    v410 = aQzss[v411++];
  }

  while (v411 != 8);
  if (v391[16])
  {
    v412 = 0;
    v413 = 0;
    v414 = (v389 + 9256);
    v415 = 9;
    do
    {
      if (*(*(v389 + 9112) + v412))
      {
        v416 = 65;
      }

      else
      {
        v416 = 45;
      }

      if (*(*(v389 + 9096) + v412) & 1) != 0 || (*(*(v389 + 9104) + v412))
      {
        if (*(*(v389 + 9032) + v412))
        {
          v417 = 24;
        }

        else
        {
          v417 = 56;
        }

        v416 += v417;
        if (v416 == 77)
        {
          LOBYTE(v416) = 46;
        }

        if (*(*(v389 + 9096) + v412))
        {
          v418 = *(*(v389 + 9032) + v412) == 0;
        }

        else
        {
          v418 = 1;
        }

        if (!v418)
        {
          if (*v414 == 0xFFFFFF)
          {
            v413 = (1 << v415) | v413;
          }

          else
          {
            v413 = v413;
          }
        }
      }

      else
      {
        if (!*(*(v389 + 9032) + v412))
        {
          v416 += 32;
        }

        if (v416 == 77)
        {
          LOBYTE(v416) = 46;
        }
      }

      *v340 = v392 + 1;
      *v392 = v416;
      v392 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v392 = *(v340 + 16);
        *v340 = v392;
      }

      ++v412;
      --v415;
      v414 += 29;
    }

    while (v412 != 10);
    *v340 = v392 + 1;
    *v392 = 32;
    v419 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v419 = *(v340 + 16);
    }

    v420 = 0;
    v421 = v391 + 420;
    do
    {
      if (*v421)
      {
        LOBYTE(v422) = 46;
      }

      else if (v421[279])
      {
        LOBYTE(v422) = 58;
      }

      else
      {
        v423 = *(v390 + 8340 + v420);
        v1139 = v423 > 2;
        v422 = 0x6E564Du >> (8 * v423);
        if (v1139)
        {
          LOBYTE(v422) = 120;
        }
      }

      *v340 = v419 + 1;
      *v419 = v422;
      v419 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v419 = *(v340 + 16);
        *v340 = v419;
      }

      v420 += 4;
      ++v421;
    }

    while (v420 != 40);
    *v340 = v419 + 1;
    *v419 = 32;
    if (*v340 >= *(v340 + 24))
    {
      *v340 = *(v340 + 16);
    }

    sprintf_03x(v340, v413);
    v392 = *v340;
  }

  else
  {
    v424 = 68;
    v425 = 1u;
    do
    {
      *v340 = v392 + 1;
      *v392 = v424;
      v392 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v392 = *(v340 + 16);
        *v340 = v392;
      }

      v424 = aDisabled[v425++];
    }

    while (v425 != 11);
  }

  v426 = 32;
  v427 = 1u;
  do
  {
    *v340 = v392 + 1;
    *v392 = v426;
    v392 = *v340;
    if (*v340 >= *(v340 + 24))
    {
      v392 = *(v340 + 16);
      *v340 = v392;
    }

    v426 = aSbas[v427++];
  }

  while (v427 != 8);
  if (v391[17])
  {
    for (ii = 0; ii != 39; ++ii)
    {
      v429 = *(v390 + 8783 + ii);
      if (v429 >= 3)
      {
        v430 = 90;
      }

      else
      {
        v430 = 0x41452Du >> (8 * v429);
      }

      *v340 = v392 + 1;
      *v392 = v430;
      v392 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v392 = *(v340 + 16);
        *v340 = v392;
      }
    }

    sprintf_sp1d(v340, *(v390 + 8822));
    sprintf_sp1d(v340, *(v390 + 8823));
    v392 = *v340;
  }

  else
  {
    v431 = 68;
    v432 = 1u;
    do
    {
      *v340 = v392 + 1;
      *v392 = v431;
      v392 = *v340;
      if (*v340 >= *(v340 + 24))
      {
        v392 = *(v340 + 16);
        *v340 = v392;
      }

      v431 = aDisabled_0[v432++];
    }

    while (v432 != 10);
  }

  *v340 = v392 + 1;
  *v392 = 10;
  if (*v340 >= *(v340 + 24))
  {
    *v340 = *(v340 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v340);
  v433 = v64[36];
  v434 = v64[9];
  v435 = v64[7];
  v436 = v435 + 4279;
  v437 = v435 + 5994;
  v438 = v64[5];
  v439 = v64[17];
  v440 = *v433;
  v441 = 71;
  v442 = 1u;
  do
  {
    *v433 = v440 + 1;
    *v440 = v441;
    v440 = *v433;
    if (*v433 >= *(v433 + 24))
    {
      v440 = *(v433 + 16);
      *v433 = v440;
    }

    v441 = aGlom[v442++];
  }

  while (v442 != 7);
  if (*(v434 + 15))
  {
    v443 = 0;
    v444 = 0;
    v445 = 23;
    do
    {
      if (*(v435[2148] + v443))
      {
        v446 = 65;
      }

      else
      {
        v446 = 45;
      }

      if (*(v435[2146] + v443) & 1) != 0 || (*(v435[2147] + v443))
      {
        if (*(v435[1489] + v443))
        {
          v447 = 24;
        }

        else
        {
          v447 = 56;
        }

        v446 += v447;
        if (v446 == 77)
        {
          LOBYTE(v446) = 46;
        }

        if (*(v435[2146] + v443))
        {
          v448 = *(v435[1489] + v443) == 0;
        }

        else
        {
          v448 = 1;
        }

        if (!v448)
        {
          if (*v437 == 4095)
          {
            v444 = (1 << v445) | v444;
          }

          else
          {
            v444 = v444;
          }
        }
      }

      else
      {
        if (!*(v435[1489] + v443))
        {
          v446 += 32;
        }

        if (v446 == 77)
        {
          LOBYTE(v446) = 46;
        }
      }

      *v433 = v440 + 1;
      *v440 = v446;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      if ((~v443 & 3) == 0)
      {
        *v433 = v440 + 1;
        *v440 = 32;
        v440 = *v433;
        if (*v433 >= *(v433 + 24))
        {
          v440 = *(v433 + 16);
          *v433 = v440;
        }
      }

      ++v443;
      --v445;
      v437 += 32;
    }

    while (v443 != 24);
    v449 = 32;
    v450 = 1u;
    do
    {
      *v433 = v440 + 1;
      *v440 = v449;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      v449 = asc_2990594D9[v450++];
    }

    while (v450 != 18);
    v451 = 0;
    v452 = v434 + 297;
    do
    {
      if (*(v452 + v451))
      {
        LOBYTE(v453) = 46;
      }

      else
      {
        v454 = *(v438 + 7848 + 4 * v451);
        v1139 = v454 > 2;
        v453 = 0x6E564Du >> (8 * v454);
        if (v1139)
        {
          LOBYTE(v453) = 120;
        }
      }

      *v433 = v440 + 1;
      *v440 = v453;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      if ((~(v451 + 32) & 3) == 0)
      {
        *v433 = v440 + 1;
        *v440 = 32;
        v440 = *v433;
        if (*v433 >= *(v433 + 24))
        {
          v440 = *(v433 + 16);
          *v433 = v440;
        }
      }

      ++v451;
    }

    while (v451 != 24);
    v455 = 0;
    v456 = v438 + 8600;
    do
    {
      v457 = *(v456 + 4 * v455);
      if (v457 >= 3)
      {
        v458 = 120;
      }

      else
      {
        v458 = 0x6E564Du >> (8 * v457);
      }

      *v433 = v440 + 1;
      *v440 = v458;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      if ((~v455 & 3) == 0)
      {
        *v433 = v440 + 1;
        *v440 = 32;
        v440 = *v433;
        if (*v433 >= *(v433 + 24))
        {
          v440 = *(v433 + 16);
          *v433 = v440;
        }
      }

      ++v455;
    }

    while (v455 != 14);
    *v433 = v440 + 1;
    *v440 = 32;
    if (*v433 >= *(v433 + 24))
    {
      *v433 = *(v433 + 16);
    }

    sprintf_06x(v433, v444);
    v459 = *v433;
    for (jj = 3; jj > 1; --jj)
    {
      *v433 = v459 + 1;
      *v459 = 32;
      v459 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v459 = *(v433 + 16);
        *v433 = v459;
      }
    }

    v461 = *v436;
    if ((*v436 & 0x80000000) == 0)
    {
      v462 = v461;
    }

    else
    {
      v462 = -v461;
    }

    sprintf1da(v433, v462, v1474, 0, v461 >> 31);
    sprintf_sgR8(v433, vcvtd_n_f64_s32(v436[4], 0x1EuLL) * 299792458.0);
    sprintf_sgR8(v433, *(v439 + 15528));
    v463 = (*v433)++;
    *v463 = 10;
    if (*v433 >= *(v433 + 24))
    {
      *v433 = *(v433 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v433);
  }

  else
  {
    v464 = 68;
    v465 = 1u;
    do
    {
      *v433 = v440 + 1;
      *v440 = v464;
      v440 = *v433;
      if (*v433 >= *(v433 + 24))
      {
        v440 = *(v433 + 16);
        *v433 = v440;
      }

      v464 = aDisabled_0[v465++];
    }

    while (v465 != 10);
    *v433 = v440 + 1;
    *v440 = 10;
    if (*v433 >= *(v433 + 24))
    {
      *v433 = *(v433 + 16);
    }
  }

  v466 = v64[36];
  v467 = v64[9];
  v468 = v64[5];
  v469 = v64;
  v472 = v64 + 6;
  v471 = v64[6];
  v470 = v472[1];
  v473 = v469[17];
  v474 = v469[22];
  v475 = *v466;
  v476 = 71;
  v477 = 1u;
  do
  {
    *v466 = v475 + 1;
    *v475 = v476;
    v475 = *v466;
    if (*v466 >= *(v466 + 24))
    {
      v475 = *(v466 + 16);
      *v466 = v475;
    }

    v476 = aGalm[v477++];
  }

  while (v477 != 7);
  if (*(v467 + 19))
  {
    v478 = 0;
    v479 = 0;
    v480 = 35;
    while (1)
    {
      if (*(*(v470 + 17632) + v478))
      {
        v481 = 65;
      }

      else
      {
        v481 = 45;
      }

      if ((*(*(v470 + 17616) + v478) & 1) != 0 || *(*(v470 + 17624) + v478) == 1)
      {
        v481 += 24;
      }

      if (!*(*(v470 + 17552) + v478))
      {
        v481 += 32;
      }

      if (v481 == 77)
      {
        v481 = 46;
      }

      else if (*(v470 + 17672 + v478) == 1)
      {
        if ((*(*(v470 + 17616) + v478) & 1) == 0)
        {
          if (*(*(v470 + 17624) + v478))
          {
            v481 = 77;
          }

          else
          {
            v481 = 109;
          }

          goto LABEL_834;
        }

        v481 = 77;
LABEL_831:
        if (*(*(v470 + 17552) + v478))
        {
          v479 = v479 | (1 << v480);
        }

        else
        {
          v479 = v479;
        }

        goto LABEL_834;
      }

      if (*(*(v470 + 17616) + v478))
      {
        goto LABEL_831;
      }

LABEL_834:
      *v466 = v475 + 1;
      *v475 = v481;
      v475 = *v466;
      if (*v466 >= *(v466 + 24))
      {
        v475 = *(v466 + 16);
        *v466 = v475;
      }

      if ((~v478 & 3) == 0)
      {
        *v466 = v475 + 1;
        *v475 = 32;
        v475 = *v466;
        if (*v466 >= *(v466 + 24))
        {
          v475 = *(v466 + 16);
          *v466 = v475;
        }
      }

      ++v478;
      --v480;
      if (v478 == 36)
      {
        v482 = 0;
        v483 = 32;
        do
        {
          *v466 = v475 + 1;
          *v475 = v483;
          v475 = *v466;
          if (*v466 >= *(v466 + 24))
          {
            v475 = *(v466 + 16);
            *v466 = v475;
          }

          v483 = asc_299059399[++v482];
        }

        while (v482 != 2);
        v484 = 0;
        v485 = v468 + 7944;
        do
        {
          if (*(v467 + v484 + 321))
          {
            LOBYTE(v486) = 46;
          }

          else if (*(v467 + v484 + 600))
          {
            LOBYTE(v486) = 58;
          }

          else
          {
            v487 = *(v485 + 4 * v484);
            v1139 = v487 > 2;
            v486 = 0x6E564Du >> (8 * v487);
            if (v1139)
            {
              LOBYTE(v486) = 120;
            }
          }

          *v466 = v475 + 1;
          *v475 = v486;
          v475 = *v466;
          if (*v466 >= *(v466 + 24))
          {
            v475 = *(v466 + 16);
            *v466 = v475;
          }

          if ((~(v484 + 56) & 3) == 0)
          {
            *v466 = v475 + 1;
            *v475 = 32;
            v475 = *v466;
            if (*v466 >= *(v466 + 24))
            {
              v475 = *(v466 + 16);
              *v466 = v475;
            }
          }

          ++v484;
        }

        while (v484 != 36);
        v488 = 32;
        v489 = 1u;
        do
        {
          *v466 = v475 + 1;
          *v475 = v488;
          v475 = *v466;
          if (*v466 >= *(v466 + 24))
          {
            v475 = *(v466 + 16);
            *v466 = v475;
          }

          v488 = asc_299059501[v489++];
        }

        while (v489 != 4);
        sprintf_08x(v466, v479);
        sprintf_sp1d(v466, *(v470 + 25344));
        v490 = 0.0;
        if ((*(v470 + 25344) - 2) < 5)
        {
          v490 = *(v470 + 25368);
          if (*v471 >= 1 && *(v471 + 16) == 1)
          {
            v490 = *(v474 + 1496);
          }
        }

        sprintf_sgR8(v466, v490 * 299792458.0);
        sprintf_sgR8(v466, *(v473 + 15544));
        v491 = (*v466)++;
        *v491 = 10;
        if (*v466 >= *(v466 + 24))
        {
          *v466 = *(v466 + 16);
        }

        GNSS_Nav_Debug_Flush_Check(v466);
        v492 = a1;
        goto LABEL_877;
      }
    }
  }

  v493 = 71;
  v494 = 1u;
  v492 = a1;
  do
  {
    *v466 = v475 + 1;
    *v475 = v493;
    v475 = *v466;
    if (*v466 >= *(v466 + 24))
    {
      v475 = *(v466 + 16);
      *v466 = v475;
    }

    v493 = aGalDisabled[v494++];
  }

  while (v494 != 15);
  *v466 = v475 + 1;
  *v475 = 10;
  if (*v466 >= *(v466 + 24))
  {
    *v466 = *(v466 + 16);
  }

LABEL_877:
  v495 = v492[36];
  v497 = v492[6];
  v496 = v492[7];
  v498 = v496 + 5632;
  v499 = v492[9];
  v500 = v492[5];
  v501 = v492[17];
  v502 = *v495;
  v503 = 66;
  v504 = 1u;
  do
  {
    *v495 = v502 + 1;
    *v502 = v503;
    v502 = *v495;
    if (*v495 >= *(v495 + 24))
    {
      v502 = *(v495 + 16);
      *v495 = v502;
    }

    v503 = aBdsm[v504++];
  }

  while (v504 != 7);
  if (*(v499 + 18))
  {
    for (kk = 0; kk != 63; ++kk)
    {
      if (*(v496[3184] + kk))
      {
        v506 = 65;
      }

      else
      {
        v506 = 45;
      }

      if ((*(v496[3182] + kk) & 1) != 0 || *(v496[3183] + kk) == 1)
      {
        v506 += 24;
      }

      if (!*(v496[3174] + kk))
      {
        v506 += 32;
      }

      if (v506 == 77)
      {
        v506 = 46;
      }

      *v495 = v502 + 1;
      *v502 = v506;
      v502 = *v495;
      if (*v495 >= *(v495 + 24))
      {
        v502 = *(v495 + 16);
        *v495 = v502;
      }

      if ((~kk & 3) == 0)
      {
        *v495 = v502 + 1;
        *v502 = 32;
        v502 = *v495;
        if (*v495 >= *(v495 + 24))
        {
          v502 = *(v495 + 16);
          *v495 = v502;
        }
      }
    }

    v507 = 32;
    v508 = 1u;
    do
    {
      *v495 = v502 + 1;
      *v502 = v507;
      v502 = *v495;
      if (*v495 >= *(v495 + 24))
      {
        v502 = *(v495 + 16);
        *v495 = v502;
      }

      v507 = asc_299059501[v508++];
    }

    while (v508 != 4);
    v509 = 0;
    v510 = v500 + 8088;
    do
    {
      if (*(v499 + v509 + 357))
      {
        LOBYTE(v511) = 46;
      }

      else if (*(v499 + v509 + 636))
      {
        LOBYTE(v511) = 58;
      }

      else
      {
        v512 = *(v510 + 4 * v509);
        v1139 = v512 > 2;
        v511 = 0x6E564Du >> (8 * v512);
        if (v1139)
        {
          LOBYTE(v511) = 120;
        }
      }

      *v495 = v502 + 1;
      *v502 = v511;
      v502 = *v495;
      if (*v495 >= *(v495 + 24))
      {
        v502 = *(v495 + 16);
        *v495 = v502;
      }

      if ((~(v509 + 92) & 3) == 0)
      {
        *v495 = v502 + 1;
        *v502 = 32;
        v502 = *v495;
        if (*v495 >= *(v495 + 24))
        {
          v502 = *(v495 + 16);
          *v495 = v502;
        }
      }

      ++v509;
    }

    while (v509 != 63);
    *v495 = v502 + 1;
    *v502 = 32;
    if (*v495 >= *(v495 + 24))
    {
      *v495 = *(v495 + 16);
    }

    sprintf_sp1d(v495, *(v498 + 596));
    v514 = 0.0;
    if ((*(v498 + 596) - 2) < 5)
    {
      v514 = *(v498 + 307);
      if (*v497 >= 1 && *(v497 + 16) == 1)
      {
        LODWORD(v513) = *(v498 + 598);
        v515 = *(v497 + 40) - v513 + (604800 * (*(v497 + 32) - *(v498 + 1194)));
        v516 = v515;
        if (v515 < 0)
        {
          v516 = -v516;
        }

        if (v516 >> 5 <= 0xE0)
        {
          v514 = v514 + *(v498 + 308) * v515;
        }
      }
    }

    sprintf_sgR8(v495, v514 * 299792458.0);
    sprintf_sgR8(v495, *(v501 + 15560));
    sprintf_sgR8(v495, *(v498 + 312) * 299792458.0);
    v517 = (*v495)++;
    *v517 = 10;
    if (*v495 >= *(v495 + 24))
    {
      *v495 = *(v495 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v495);
  }

  else
  {
    v518 = 66;
    v519 = 1u;
    do
    {
      *v495 = v502 + 1;
      *v502 = v518;
      v502 = *v495;
      if (*v495 >= *(v495 + 24))
      {
        v502 = *(v495 + 16);
        *v495 = v502;
      }

      v518 = aBdsDisabled[v519++];
    }

    while (v519 != 15);
    *v495 = v502 + 1;
    *v502 = 10;
    if (*v495 >= *(v495 + 24))
    {
      *v495 = *(v495 + 16);
    }
  }

  v520 = v492[36];
  v521 = v492[6];
  v522 = v492[7] + 47584;
  v523 = v492[9];
  v524 = v492[5];
  v525 = v492[17];
  v526 = v492[22] + 61440;
  v527 = *v520;
  v528 = 78;
  v529 = 1u;
  do
  {
    *v520 = v527 + 1;
    *v527 = v528;
    v527 = *v520;
    if (*v520 >= *(v520 + 24))
    {
      v527 = *(v520 + 16);
      *v520 = v527;
    }

    v528 = aNvcm[v529++];
  }

  while (v529 != 7);
  if (*(v523 + 20))
  {
    for (mm = 0; mm != 14; ++mm)
    {
      if (*(*(v522 + 72) + mm))
      {
        v531 = 65;
      }

      else
      {
        v531 = 45;
      }

      if ((*(*(v522 + 56) + mm) & 1) != 0 || *(*(v522 + 64) + mm) == 1)
      {
        v531 += 24;
      }

      if (!*(*v522 + mm))
      {
        v531 += 32;
      }

      if (v531 == 77)
      {
        v531 = 58;
      }

      *v520 = v527 + 1;
      *v527 = v531;
      v527 = *v520;
      if (*v520 >= *(v520 + 24))
      {
        v527 = *(v520 + 16);
        *v520 = v527;
      }

      if ((~mm & 3) == 0)
      {
        *v520 = v527 + 1;
        *v527 = 32;
        v527 = *v520;
        if (*v520 >= *(v520 + 24))
        {
          v527 = *(v520 + 16);
          *v520 = v527;
        }
      }
    }

    v532 = 32;
    v533 = 1u;
    do
    {
      *v520 = v527 + 1;
      *v527 = v532;
      v527 = *v520;
      if (*v520 >= *(v520 + 24))
      {
        v527 = *(v520 + 16);
        *v520 = v527;
      }

      v532 = asc_299059501[v533++];
    }

    while (v533 != 4);
    v534 = 0;
    v535 = v524 + 8380;
    v536 = v523 + 709;
    do
    {
      if (*(v536 + v534))
      {
        LOBYTE(v537) = 58;
      }

      else
      {
        v538 = *(v535 + 4 * v534);
        v1139 = v538 > 2;
        v537 = 0x6E564Du >> (8 * v538);
        if (v1139)
        {
          LOBYTE(v537) = 120;
        }
      }

      *v520 = v527 + 1;
      *v527 = v537;
      v527 = *v520;
      if (*v520 >= *(v520 + 24))
      {
        v527 = *(v520 + 16);
        *v520 = v527;
      }

      if ((~(v534 - 91) & 3) == 0)
      {
        *v520 = v527 + 1;
        *v527 = 32;
        v527 = *v520;
        if (*v520 >= *(v520 + 24))
        {
          v527 = *(v520 + 16);
          *v520 = v527;
        }
      }

      ++v534;
    }

    while (v534 != 14);
    *v520 = v527 + 1;
    *v527 = 32;
    if (*v520 >= *(v520 + 24))
    {
      *v520 = *(v520 + 16);
    }

    sprintf_sp1d(v520, *(v522 + 2972));
    v539 = 0.0;
    if ((*(v522 + 2972) - 2) < 5 && *v521 >= 1)
    {
      v539 = *(v522 + 3000);
      if (*(v521 + 16) == 1)
      {
        if (*(v522 + 3028) - *(v521 + 32) >= 0)
        {
          v540 = -((*(v522 + 3028) - *(v521 + 32)) & 0x3FF);
        }

        else
        {
          v540 = (*(v521 + 32) - *(v522 + 3028)) & 0x3FF;
        }

        if (v540 > 511)
        {
          v540 -= 1024;
        }

        if (v540 < -512)
        {
          v540 += 1024;
        }

        v541 = *(v521 + 40) - *(v522 + 3024) + (604800 * v540);
        v539 = v539 + *(v522 + 3008) * v541 + *(v522 + 3016) * (v541 * v541);
      }
    }

    sprintf_sgR8(v520, v539 * 299792458.0);
    sprintf_sgR8(v520, *(v525 + 15576));
    if (*(v526 + 2424) == 1)
    {
      v542 = (*(v526 + 2428) / 60);
    }

    else
    {
      v542 = 4294966297;
    }

    v545 = a1;
    v546 = *v520;
    v547 = 32;
    v548 = 1u;
    do
    {
      *v520 = v546 + 1;
      *v546 = v547;
      v546 = *v520;
      if (*v520 >= *(v520 + 24))
      {
        v546 = *(v520 + 16);
        *v520 = v546;
      }

      v547 = aRof[v548++];
    }

    while (v548 != 7);
    sprintf_2d(v520, *(v526 + 2424));
    sprintf_2d(v520, *(v526 + 2425));
    sprintf_5d(v520, v542);
    v549 = (*v520)++;
    *v549 = 10;
    if (*v520 >= *(v520 + 24))
    {
      *v520 = *(v520 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v520);
  }

  else
  {
    v543 = 0;
    v544 = 78;
    v545 = a1;
    do
    {
      *v520 = v527 + 1;
      *v527 = v544;
      v527 = *v520;
      if (*v520 >= *(v520 + 24))
      {
        v527 = *(v520 + 16);
        *v520 = v527;
      }

      v544 = aNavicDisabled[++v543];
    }

    while (v543 != 16);
    *v520 = v527 + 1;
    *v527 = 10;
    if (*v520 >= *(v520 + 24))
    {
      *v520 = *(v520 + 16);
    }
  }

  v550 = v545[36];
  if (g_Logging_Cfg >= 5)
  {
    v551 = v545[11];
    v552 = v545[6];
    v553 = *(v552 + 32);
    v554 = *(v552 + 40);
    v555 = *v550;
    v556 = 83;
    v557 = 1u;
    do
    {
      *v550 = v555 + 1;
      *v555 = v556;
      v555 = *v550;
      if (*v550 >= *(v550 + 24))
      {
        v555 = *(v550 + 16);
        *v550 = v555;
      }

      v556 = aStage[v557++];
    }

    while (v557 != 7);
    v558 = 0;
    v559 = v554;
    while (1)
    {
      v560 = v551 + 192 * v558;
      if (*(v560 + 176))
      {
        break;
      }

LABEL_1034:
      if (++v558 == 197)
      {
        v568 = (*v550)++;
        *v568 = 10;
        if (*v550 >= *(v550 + 24))
        {
          *v550 = *(v550 + 16);
        }

        GNSS_Nav_Debug_Flush_Check(v550);
        v545 = a1;
        v550 = a1[36];
        goto LABEL_1038;
      }
    }

    if (v558 <= 91)
    {
      if (v558)
      {
        if (v558 == 32)
        {
          v561 = "  R ";
        }

        else
        {
          if (v558 != 56)
          {
            goto LABEL_1028;
          }

          v561 = "  E ";
        }
      }

      else
      {
        v561 = "  G ";
      }
    }

    else if (v558 > 164)
    {
      if (v558 == 165)
      {
        v561 = "  N ";
      }

      else
      {
        if (v558 != 179)
        {
          goto LABEL_1028;
        }

        v561 = "  S ";
      }
    }

    else
    {
      if (v558 != 92)
      {
        if (v558 == 155)
        {
          v561 = "  Q ";
          goto LABEL_1023;
        }

LABEL_1028:
        v566 = v559 - *(v560 + 160) + 604800 * (v553 - *(v560 + 164));
        if (v566 >= 99)
        {
          v566 = 99;
        }

        if (v566 <= -99)
        {
          v567 = -99;
        }

        else
        {
          v567 = v566;
        }

        sprintf_sp1d(v550, v567);
        goto LABEL_1034;
      }

      v561 = "  B ";
    }

LABEL_1023:
    v562 = *v561;
    if (*v561)
    {
      v563 = *v550;
      v564 = (v561 + 1);
      do
      {
        *v550 = v563 + 1;
        *v563 = v562;
        v563 = *v550;
        if (*v550 >= *(v550 + 24))
        {
          v563 = *(v550 + 16);
          *v550 = v563;
        }

        v565 = *v564++;
        v562 = v565;
      }

      while (v565);
    }

    goto LABEL_1028;
  }

LABEL_1038:
  v569 = v545[10];
  v570 = (v545[22] + 61440);
  v571 = v545[17] + 0x10000;
  v572 = v545[31];
  v573 = *v550;
  v574 = 65;
  v575 = 1u;
  do
  {
    *v550 = v573 + 1;
    *v573 = v574;
    v573 = *v550;
    if (*v550 >= *(v550 + 24))
    {
      v573 = *(v550 + 16);
      *v550 = v573;
    }

    v574 = aAcc[v575++];
  }

  while (v575 != 6);
  sprintf_2d(v550, *(v569 + 1));
  sprintf_2d(v550, *(v569 + 2));
  sprintf_2d(v550, *v569);
  sprintf_2d(v550, *(v569 + 1));
  v576 = (*v550)++;
  *v576 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[105]);
  v577 = (*v550)++;
  *v577 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[106]);
  v578 = (*v550)++;
  *v578 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[107]);
  v579 = (*v550)++;
  *v579 = 32;
  v580 = *v550;
  if (*v550 >= *(v550 + 24))
  {
    v580 = *(v550 + 16);
    *v550 = v580;
  }

  v581 = v569[109];
  if (v581 <= 99999.0 || v581 >= 8999100.0)
  {
    sprintf_ACC(v550, v581);
  }

  else
  {
    v582 = v581 / 299792.458;
    if (v582 <= 9999.0)
    {
      if (v582 <= 9.9)
      {
        v1430 = v582 * -100.0;
        v1431 = -0.5;
        if (v1430 > 0.0)
        {
          v1431 = 0.5;
        }

        v1432 = v1430 + v1431;
        if (v1432 <= 2147483650.0)
        {
          if (v1432 >= -2147483650.0)
          {
            v1433 = v1432;
          }

          else
          {
            v1433 = 0x80000000;
          }
        }

        else
        {
          v1433 = 0x7FFFFFFFLL;
        }

        sprintf_4f(v550, v1433, 3);
      }

      else
      {
        v973 = -0.5 - v582;
        if (v973 <= 2147483650.0)
        {
          if (v973 >= -2147483650.0)
          {
            v974 = v973;
          }

          else
          {
            v974 = 0x80000000;
          }
        }

        else
        {
          v974 = 0x7FFFFFFFLL;
        }

        sprintf_5d(v550, v974);
      }
    }

    else
    {
      v583 = 45;
      v584 = 1u;
      do
      {
        *v550 = v580 + 1;
        *v580 = v583;
        v580 = *v550;
        if (*v550 >= *(v550 + 24))
        {
          v580 = *(v550 + 16);
          *v550 = v580;
        }

        v583 = a9999[v584++];
      }

      while (v584 != 6);
    }
  }

  v585 = (*v550)++;
  *v585 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[108]);
  v586 = (*v550)++;
  *v586 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[110]);
  v587 = (*v550)++;
  *v587 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[113]);
  v588 = (*v550)++;
  *v588 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[115]);
  v589 = (*v550)++;
  *v589 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  v590 = v569[98] * 100.0;
  if (v590 <= 0.0)
  {
    v591 = -0.5;
  }

  else
  {
    v591 = 0.5;
  }

  v592 = v590 + v591;
  if (v592 <= 2147483650.0)
  {
    if (v592 >= -2147483650.0)
    {
      v593 = v592;
    }

    else
    {
      v593 = 0x80000000;
    }
  }

  else
  {
    v593 = 0x7FFFFFFFLL;
  }

  sprintf_6f(v550, v593, 3);
  v594 = v569[99] * 100.0;
  if (v594 <= 0.0)
  {
    v595 = -0.5;
  }

  else
  {
    v595 = 0.5;
  }

  v596 = v594 + v595;
  if (v596 <= 2147483650.0)
  {
    if (v596 >= -2147483650.0)
    {
      v597 = v596;
    }

    else
    {
      v597 = 0x80000000;
    }
  }

  else
  {
    v597 = 0x7FFFFFFFLL;
  }

  sprintf_6f(v550, v597, 3);
  v598 = v569[100] * 100.0;
  v599 = -0.5;
  if (v598 > 0.0)
  {
    v599 = 0.5;
  }

  v600 = v598 + v599;
  if (v600 <= 2147483650.0)
  {
    if (v600 >= -2147483650.0)
    {
      v601 = v600;
    }

    else
    {
      v601 = 0x80000000;
    }
  }

  else
  {
    v601 = 0x7FFFFFFFLL;
  }

  sprintf_6f(v550, v601, 3);
  v602 = (*v550)++;
  *v602 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[114]);
  v603 = 0;
  v604 = *v550;
  v605 = 32;
  do
  {
    *v550 = v604 + 1;
    *v604 = v605;
    v604 = *v550;
    if (*v550 >= *(v550 + 24))
    {
      v604 = *(v550 + 16);
      *v550 = v604;
    }

    v605 = aEl[++v603];
  }

  while (v603 != 4);
  sprintf_ACC(v550, v569[116]);
  v606 = (*v550)++;
  *v606 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[117]);
  v607 = (*v550)++;
  *v607 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[118]);
  v608 = *v550;
  for (nn = 5; nn > 1; --nn)
  {
    *v550 = v608 + 1;
    *v608 = 32;
    v608 = *v550;
    if (*v550 >= *(v550 + 24))
    {
      v608 = *(v550 + 16);
      *v550 = v608;
    }
  }

  sprintf_ACC(v550, v569[111]);
  v610 = (*v550)++;
  *v610 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v569[112]);
  v611 = (*v550)++;
  *v611 = 32;
  v612 = *v550;
  if (*v550 >= *(v550 + 24))
  {
    v612 = *(v550 + 16);
  }

  v613 = 0;
  v614 = 32;
  do
  {
    *v550 = v612 + 1;
    *v612 = v614;
    v612 = *v550;
    if (*v550 >= *(v550 + 24))
    {
      v612 = *(v550 + 16);
      *v550 = v612;
    }

    v614 = aSf_0[++v613];
  }

  while (v613 != 4);
  v615 = v570[133] * 100.0;
  v616 = -0.5;
  if (v615 > 0.0)
  {
    v616 = 0.5;
  }

  v617 = v615 + v616;
  if (v617 <= 2147483650.0)
  {
    if (v617 >= -2147483650.0)
    {
      v618 = v617;
    }

    else
    {
      v618 = 0x80000000;
    }
  }

  else
  {
    v618 = 0x7FFFFFFFLL;
  }

  sprintf_3f(v550, v618, 3);
  v619 = (*v550)++;
  *v619 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  v620 = *(v571 + 2624) * 100.0;
  v621 = -0.5;
  if (v620 > 0.0)
  {
    v621 = 0.5;
  }

  v622 = v620 + v621;
  if (v622 <= 2147483650.0)
  {
    if (v622 >= -2147483650.0)
    {
      v623 = v622;
    }

    else
    {
      v623 = 0x80000000;
    }
  }

  else
  {
    v623 = 0x7FFFFFFFLL;
  }

  sprintf_3f(v550, v623, 3);
  v624 = (*v550)++;
  *v624 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  v625 = v570[134] * 100.0;
  v626 = -0.5;
  if (v625 > 0.0)
  {
    v626 = 0.5;
  }

  v627 = v625 + v626;
  if (v627 <= 2147483650.0)
  {
    if (v627 >= -2147483650.0)
    {
      v628 = v627;
    }

    else
    {
      v628 = 0x80000000;
    }
  }

  else
  {
    v628 = 0x7FFFFFFFLL;
  }

  sprintf_3f(v550, v628, 3);
  v629 = (*v550)++;
  *v629 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  v630 = *(v571 + 2632) * 100.0;
  v631 = -0.5;
  if (v630 > 0.0)
  {
    v631 = 0.5;
  }

  v632 = v630 + v631;
  if (v632 <= 2147483650.0)
  {
    if (v632 >= -2147483650.0)
    {
      v633 = v632;
    }

    else
    {
      v633 = 0x80000000;
    }
  }

  else
  {
    v633 = 0x7FFFFFFFLL;
  }

  sprintf_3f(v550, v633, 3);
  v634 = (*v550)++;
  *v634 = 32;
  v635 = *v550;
  if (*v550 >= *(v550 + 24))
  {
    v635 = *(v550 + 16);
  }

  v636 = 32;
  v637 = 1u;
  do
  {
    *v550 = v635 + 1;
    *v635 = v636;
    v635 = *v550;
    if (*v550 >= *(v550 + 24))
    {
      v635 = *(v550 + 16);
      *v550 = v635;
    }

    v636 = aFsd[v637++];
  }

  while (v637 != 6);
  sprintf_ACC(v550, v570[42]);
  v638 = (*v550)++;
  *v638 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v570[43]);
  v639 = (*v550)++;
  *v639 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v570[44]);
  v640 = (*v550)++;
  *v640 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v570[45]);
  v641 = (*v550)++;
  *v641 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v570[46]);
  v642 = (*v550)++;
  *v642 = 32;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  sprintf_ACC(v550, v570[47]);
  v643 = *v550;
  if (g_Logging_Cfg >= 7)
  {
    v644 = 0;
    v645 = 32;
    do
    {
      *v550 = v643 + 1;
      *v643 = v645;
      v643 = *v550;
      if (*v550 >= *(v550 + 24))
      {
        v643 = *(v550 + 16);
        *v550 = v643;
      }

      v645 = aNv[++v644];
    }

    while (v644 != 4);
    v646 = (v572 + 32132);
    v647 = 18;
    do
    {
      v648 = *v646;
      if (v648 && *(v646 - 1) >= 1)
      {
        sprintf_4d(v550, v648);
      }

      v646 += 8;
      --v647;
    }

    while (v647);
    v643 = *v550;
  }

  *v550 = v643 + 1;
  *v643 = 10;
  if (*v550 >= *(v550 + 24))
  {
    *v550 = *(v550 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v550);
  v649 = v545[36];
  v650 = v545[22];
  v651 = *v649;
  v652 = 69;
  v653 = 1u;
  do
  {
    *v649 = v651 + 1;
    *v651 = v652;
    v651 = *v649;
    if (*v649 >= *(v649 + 24))
    {
      v651 = *(v649 + 16);
      *v649 = v651;
    }

    v652 = aExtp[v653++];
  }

  while (v653 != 7);
  Char_Ass_Status_Edit = Get_Char_Ass_Status_Edit(*(v650 + 62376));
  v655 = (*v649)++;
  *v655 = Char_Ass_Status_Edit;
  if (*v649 >= *(v649 + 24))
  {
    *v649 = *(v649 + 16);
  }

  v656 = Get_Char_Ass_Status_Edit(*(v650 + 62392));
  v657 = (*v649)++;
  *v657 = v656;
  v658 = *v649;
  if (*v649 >= *(v649 + 24))
  {
    v658 = *(v649 + 16);
  }

  *v649 = v658 + 1;
  *v658 = 32;
  v659 = *v649;
  if (*v649 >= *(v649 + 24))
  {
    v659 = *(v649 + 16);
    *v649 = v659;
  }

  if ((*(v650 + 60216) & 1) != 0 || *(v650 + 60232) == 1)
  {
    v660 = 0;
    v661 = 72;
    do
    {
      *v649 = v659 + 1;
      *v659 = v661;
      v659 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v659 = *(v649 + 16);
        *v649 = v659;
      }

      v661 = aHor[++v660];
    }

    while (v660 != 4);
    v662 = print_line_ExtP(s_GN_Ptrs *)::ch_MEAS[*(v650 + 60220)];
    *v649 = v659 + 1;
    *v659 = v662;
    v663 = *v649;
    if (*v649 >= *(v649 + 24))
    {
      v663 = *(v649 + 16);
    }

    v664 = 0;
    v665 = 32;
    do
    {
      *v649 = v663 + 1;
      *v663 = v665;
      v663 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v663 = *(v649 + 16);
        *v649 = v663;
      }

      v665 = aT[++v664];
    }

    while (v664 != 4);
    v666 = print_line_ExtP(s_GN_Ptrs *)::ch_TRUST[*(v650 + 60224)];
    *v649 = v663 + 1;
    *v663 = v666;
    v667 = *v649;
    if (*v649 >= *(v649 + 24))
    {
      v667 = *(v649 + 16);
    }

    v668 = 0;
    v669 = 32;
    do
    {
      *v649 = v667 + 1;
      *v667 = v669;
      v667 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v667 = *(v649 + 16);
        *v649 = v667;
      }

      v669 = aC[++v668];
    }

    while (v668 != 4);
    v670 = print_line_ExtP(s_GN_Ptrs *)::ch_CORREL[*(v650 + 60228)];
    *v649 = v667 + 1;
    *v667 = v670;
    v671 = *v649;
    if (*v649 >= *(v649 + 24))
    {
      v671 = *(v649 + 16);
    }

    v672 = 0;
    v673 = 32;
    do
    {
      *v649 = v671 + 1;
      *v671 = v673;
      v671 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v671 = *(v649 + 16);
        *v649 = v671;
      }

      v673 = aE_0[++v672];
    }

    while (v672 != 4);
    if (*(v650 + 60232))
    {
      LOBYTE(v674) = 49;
      LOWORD(v1474[0]) = 49;
      v675 = 1;
      do
      {
        *v649 = v671 + 1;
        *v671 = v674;
        v671 = *v649;
        if (*v649 >= *(v649 + 24))
        {
          v671 = *(v649 + 16);
          *v649 = v671;
        }

        v674 = *(v1474 + v675++);
      }

      while (v674);
    }

    else
    {
      *v649 = v671 + 1;
      *v671 = 45;
      v671 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v671 = *(v649 + 16);
      }
    }

    for (i1 = 4; i1 > 1; --i1)
    {
      *v649 = v671 + 1;
      *v671 = 32;
      v671 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v671 = *(v649 + 16);
        *v649 = v671;
      }
    }

    v677 = *v650 - *(v650 + 60236);
    if (v677 >= -999999)
    {
      v679 = v677 / 1000;
      if (v679 >= 999)
      {
        v678 = 999;
      }

      else
      {
        v678 = v679;
      }
    }

    else
    {
      v678 = 4294966297;
    }

    sprintf_4d(v649, v678);
    v680 = (*v649)++;
    *v680 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_ACC(v649, sqrt(*(v650 + 60264)));
    v681 = (*v649)++;
    *v681 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_ACC(v649, sqrt(*(v650 + 60272)));
    v682 = (*v649)++;
    *v682 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_ACC(v649, sqrt(*(v650 + 60288)));
    v683 = (*v649)++;
    *v683 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_ACC(v649, sqrt(*(v650 + 60296)));
    v684 = (*v649)++;
    *v684 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_sgR8(v649, *(v650 + 60304));
    v685 = (*v649)++;
    *v685 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_sgR8(v649, *(v650 + 60312));
    v686 = (*v649)++;
    *v686 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_sgR8(v649, sqrt(fabs(*(v650 + 60328))));
    v687 = (*v649)++;
    *v687 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_sgR8(v649, sqrt(fabs(*(v650 + 60336))));
  }

  if ((*(v650 + 60344) & 1) != 0 || *(v650 + 60360) == 1)
  {
    v688 = *v649;
    v689 = 32;
    v690 = 1u;
    do
    {
      *v649 = v688 + 1;
      *v688 = v689;
      v688 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v688 = *(v649 + 16);
        *v649 = v688;
      }

      v689 = aVer_0[v690++];
    }

    while (v690 != 7);
    v691 = print_line_ExtP(s_GN_Ptrs *)::ch_MEAS[*(v650 + 60348)];
    *v649 = v688 + 1;
    *v688 = v691;
    v692 = *v649;
    if (*v649 >= *(v649 + 24))
    {
      v692 = *(v649 + 16);
    }

    v693 = 0;
    v694 = 32;
    do
    {
      *v649 = v692 + 1;
      *v692 = v694;
      v692 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v692 = *(v649 + 16);
        *v649 = v692;
      }

      v694 = aT[++v693];
    }

    while (v693 != 4);
    v695 = print_line_ExtP(s_GN_Ptrs *)::ch_TRUST[*(v650 + 60352)];
    *v649 = v692 + 1;
    *v692 = v695;
    v696 = *v649;
    if (*v649 >= *(v649 + 24))
    {
      v696 = *(v649 + 16);
    }

    v697 = 0;
    v698 = 32;
    do
    {
      *v649 = v696 + 1;
      *v696 = v698;
      v696 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v696 = *(v649 + 16);
        *v649 = v696;
      }

      v698 = aC[++v697];
    }

    while (v697 != 4);
    v699 = print_line_ExtP(s_GN_Ptrs *)::ch_CORREL[*(v650 + 60356)];
    *v649 = v696 + 1;
    *v696 = v699;
    v700 = *v649;
    if (*v649 >= *(v649 + 24))
    {
      v700 = *(v649 + 16);
    }

    v701 = 0;
    v702 = 32;
    do
    {
      *v649 = v700 + 1;
      *v700 = v702;
      v700 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v700 = *(v649 + 16);
        *v649 = v700;
      }

      v702 = aE_0[++v701];
    }

    while (v701 != 4);
    if (*(v650 + 60360))
    {
      LOBYTE(v703) = 49;
      LOWORD(v1474[0]) = 49;
      v704 = 1;
      do
      {
        *v649 = v700 + 1;
        *v700 = v703;
        v700 = *v649;
        if (*v649 >= *(v649 + 24))
        {
          v700 = *(v649 + 16);
          *v649 = v700;
        }

        v703 = *(v1474 + v704++);
      }

      while (v703);
    }

    else
    {
      *v649 = v700 + 1;
      *v700 = 45;
      v700 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v700 = *(v649 + 16);
      }
    }

    for (i2 = 4; i2 > 1; --i2)
    {
      *v649 = v700 + 1;
      *v700 = 32;
      v700 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v700 = *(v649 + 16);
        *v649 = v700;
      }
    }

    v706 = *v650 - *(v650 + 60364);
    if (v706 >= -999999)
    {
      if (v706 <= 999999)
      {
        v707 = (v706 / 1000);
      }

      else
      {
        v707 = 9999;
      }
    }

    else
    {
      v707 = 4294957297;
    }

    sprintf_4d(v649, v707);
    v708 = (*v649)++;
    *v708 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_ACC(v649, sqrt(*(v650 + 60376)));
    v709 = (*v649)++;
    *v709 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_ACC(v649, sqrt(*(v650 + 60384)));
    v710 = (*v649)++;
    *v710 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_sgR8(v649, *(v650 + 60392));
    v711 = (*v649)++;
    *v711 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    sprintf_sgR8(v649, sqrt(fabs(*(v650 + 60408))));
  }

  v712 = *v649;
  if (*(v650 + 62404) == 1)
  {
    v713 = 0;
    v714 = 32;
    v715 = a1;
    do
    {
      *v649 = v712 + 1;
      *v712 = v714;
      v712 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v712 = *(v649 + 16);
        *v649 = v712;
      }

      v714 = aTepa[++v713];
    }

    while (v713 != 8);
    sprintf1da(v649, *(v650 + 62404), v1474, 0, 0);
    v716 = (*v649)++;
    *v716 = 32;
    if (*v649 >= *(v649 + 24))
    {
      *v649 = *(v649 + 16);
    }

    v717 = Get_Char_Ass_Status_Edit(*(v650 + 62408));
    v718 = (*v649)++;
    *v718 = v717;
    v719 = *v649;
    if (*v649 >= *(v649 + 24))
    {
      v719 = *(v649 + 16);
    }

    for (i3 = 3; i3 > 1; --i3)
    {
      *v649 = v719 + 1;
      *v719 = 32;
      v719 = *v649;
      if (*v649 >= *(v649 + 24))
      {
        v719 = *(v649 + 16);
        *v649 = v719;
      }
    }

    sprintf_4d(v649, *(v650 + 62416));
    v712 = *v649;
  }

  else
  {
    v715 = a1;
  }

  *v649 = v712 + 1;
  *v712 = 10;
  if (*v649 >= *(v649 + 24))
  {
    *v649 = *(v649 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v649);
  v721 = v715[36];
  v722 = (v715[22] + 59944);
  v723 = *v721;
  v724 = 67;
  v725 = 1u;
  do
  {
    *v721 = v723 + 1;
    *v723 = v724;
    v723 = *v721;
    if (*v721 >= *(v721 + 24))
    {
      v723 = *(v721 + 16);
      *v721 = v723;
    }

    v724 = aCtxt[v725++];
  }

  while (v725 != 7);
  v726 = 0;
  v727 = 85;
  do
  {
    *v721 = v723 + 1;
    *v723 = v727;
    v723 = *v721;
    if (*v721 >= *(v721 + 24))
    {
      v723 = *(v721 + 16);
      *v721 = v723;
    }

    v727 = aUac[++v726];
  }

  while (v726 != 4);
  sprintf_2d(v721, *(v722 + 2348));
  sprintf_2d(v721, *(v722 + 2356));
  v728 = (*v721)++;
  *v728 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  v729 = Get_Char_Ass_Status_Edit(v722[588]);
  v730 = (*v721)++;
  *v730 = v729;
  v731 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v731 = *(v721 + 16);
  }

  *v721 = v731 + 1;
  *v731 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  sprintf_3f(v721, (v722[590] / 10), 3);
  v732 = (*v721)++;
  *v732 = 32;
  v733 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v733 = *(v721 + 16);
  }

  v734 = print_line_CTXT(s_GN_Ptrs *)::ch_UAC_TXT[v722[3]];
  *v721 = v733 + 1;
  *v733 = v734;
  v735 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v735 = *(v721 + 16);
  }

  *v721 = v735 + 1;
  *v735 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  sprintf_1x(v721, v722[5]);
  v736 = (*v721)++;
  *v736 = 32;
  v737 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v737 = *(v721 + 16);
  }

  v738 = print_line_CTXT(s_GN_Ptrs *)::ch_CTXT_SRC[v722[4]];
  *v721 = v737 + 1;
  *v737 = v738;
  v739 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v739 = *(v721 + 16);
  }

  v740 = 32;
  v741 = 1u;
  do
  {
    *v721 = v739 + 1;
    *v739 = v740;
    v739 = *v721;
    if (*v721 >= *(v721 + 24))
    {
      v739 = *(v721 + 16);
      *v721 = v739;
    }

    v740 = aDms[v741++];
  }

  while (v741 != 8);
  sprintf_2d(v721, *(v722 + 2332));
  sprintf_2d(v721, *(v722 + 2340));
  v742 = (*v721)++;
  *v742 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  v743 = Get_Char_Ass_Status_Edit(v722[584]);
  v744 = (*v721)++;
  *v744 = v743;
  v745 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v745 = *(v721 + 16);
  }

  *v721 = v745 + 1;
  *v745 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  sprintf_3f(v721, (v722[586] / 10), 3);
  v746 = (*v721)++;
  *v746 = 32;
  v747 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v747 = *(v721 + 16);
  }

  v748 = print_line_CTXT(s_GN_Ptrs *)::ch_DMS_STE[*v722];
  *v721 = v747 + 1;
  *v747 = v748;
  v749 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v749 = *(v721 + 16);
  }

  *v721 = v749 + 1;
  *v749 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  sprintf_1x(v721, v722[2]);
  v750 = (*v721)++;
  *v750 = 32;
  v751 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v751 = *(v721 + 16);
  }

  v752 = print_line_CTXT(s_GN_Ptrs *)::ch_CTXT_SRC[v722[1]];
  *v721 = v751 + 1;
  *v751 = v752;
  v753 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v753 = *(v721 + 16);
  }

  v754 = 32;
  v755 = 1u;
  do
  {
    *v721 = v753 + 1;
    *v753 = v754;
    v753 = *v721;
    if (*v721 >= *(v721 + 24))
    {
      v753 = *(v721 + 16);
      *v721 = v753;
    }

    v754 = aFiv[v755++];
  }

  while (v755 != 8);
  sprintf_2d(v721, *(v722 + 2364));
  sprintf_2d(v721, *(v722 + 2372));
  v756 = (*v721)++;
  *v756 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  v757 = Get_Char_Ass_Status_Edit(v722[592]);
  v758 = (*v721)++;
  *v758 = v757;
  v759 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v759 = *(v721 + 16);
  }

  *v721 = v759 + 1;
  *v759 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  sprintf_3f(v721, (v722[594] / 10), 3);
  v760 = (*v721)++;
  *v760 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  sprintf_1x(v721, v722[6]);
  v761 = (*v721)++;
  *v761 = 32;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  sprintf_1x(v721, v722[8]);
  v762 = (*v721)++;
  *v762 = 32;
  v763 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v763 = *(v721 + 16);
  }

  v764 = print_line_CTXT(s_GN_Ptrs *)::ch_CTXT_SRC[v722[7]];
  *v721 = v763 + 1;
  *v763 = v764;
  v765 = *v721;
  if (*v721 >= *(v721 + 24))
  {
    v765 = *(v721 + 16);
  }

  *v721 = v765 + 1;
  *v765 = 10;
  if (*v721 >= *(v721 + 24))
  {
    *v721 = *(v721 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v721);
  v766 = v715[36];
  v767 = v715[22];
  if (*(v767 + 62340) == 1)
  {
    v768 = *v766;
    v769 = 77;
    v770 = 1u;
    do
    {
      *v766 = v768 + 1;
      *v768 = v769;
      v768 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v768 = *(v766 + 16);
        *v766 = v768;
      }

      v769 = aMapv[v770++];
    }

    while (v770 != 7);
    v771 = 83;
    v772 = 1u;
    do
    {
      *v766 = v768 + 1;
      *v768 = v771;
      v768 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v768 = *(v766 + 16);
        *v766 = v768;
      }

      v771 = aStat[v772++];
    }

    while (v772 != 6);
    sprintf_2d(v766, *(v767 + 62340));
    sprintf_2d(v766, *(v767 + 62348));
    v773 = (*v766)++;
    *v773 = 32;
    v774 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v774 = *(v766 + 16);
    }

    *v766 = v774 + 1;
    *v774 = 101;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    v775 = Get_Char_Ass_Status_Edit(*(v767 + 62344));
    v776 = (*v766)++;
    *v776 = v775;
    v777 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v777 = *(v766 + 16);
    }

    v778 = 32;
    v779 = 1u;
    do
    {
      *v766 = v777 + 1;
      *v777 = v778;
      v777 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v777 = *(v766 + 16);
        *v766 = v777;
      }

      v778 = aAge[v779++];
    }

    while (v779 != 6);
    sprintf_6d(v766, *(v767 + 62352));
    v780 = 0;
    v781 = *v766;
    v782 = 32;
    do
    {
      *v766 = v781 + 1;
      *v781 = v782;
      v781 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v781 = *(v766 + 16);
        *v766 = v781;
      }

      v782 = aAt[++v780];
    }

    while (v780 != 4);
    sprintf_sgR8(v766, *(v767 + 61352));
    v783 = 0;
    v784 = *v766;
    v785 = 32;
    do
    {
      *v766 = v784 + 1;
      *v784 = v785;
      v784 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v784 = *(v766 + 16);
        *v766 = v784;
      }

      v785 = aCt[++v783];
    }

    while (v783 != 4);
    sprintf_sgR8(v766, *(v767 + 61360));
    v786 = 0;
    v787 = *v766;
    v788 = 32;
    do
    {
      *v766 = v787 + 1;
      *v787 = v788;
      v787 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v787 = *(v766 + 16);
        *v766 = v787;
      }

      v788 = aHd[++v786];
    }

    while (v786 != 4);
    sprintf_sgR8(v766, *(v767 + 61368));
    v789 = 0;
    v790 = *v766;
    v791 = 32;
    do
    {
      *v766 = v790 + 1;
      *v790 = v791;
      v790 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v790 = *(v766 + 16);
        *v766 = v790;
      }

      v791 = aGs[++v789];
    }

    while (v789 != 4);
    sprintf_sgR8(v766, *(v767 + 61344));
    v792 = *v766;
    v793 = 32;
    v794 = 1u;
    do
    {
      *v766 = v792 + 1;
      *v792 = v793;
      v792 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v792 = *(v766 + 16);
        *v766 = v792;
      }

      v793 = aEpa[v794++];
    }

    while (v794 != 6);
    sprintf_sgR8(v766, *(v767 + 61376));
    v795 = *v766;
    v796 = 32;
    v797 = 1u;
    do
    {
      *v766 = v795 + 1;
      *v795 = v796;
      v795 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v795 = *(v766 + 16);
        *v766 = v795;
      }

      v796 = aEpc[v797++];
    }

    while (v797 != 6);
    sprintf_sgR8(v766, *(v767 + 61384));
    v798 = 0;
    v799 = *v766;
    v800 = 32;
    do
    {
      *v766 = v799 + 1;
      *v799 = v800;
      v799 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v799 = *(v766 + 16);
        *v766 = v799;
      }

      v800 = aMv[++v798];
    }

    while (v798 != 4);
    sprintf_sgR8(v766, *(v767 + 61040));
    sprintf_sgR8(v766, *(v767 + 61048));
    sprintf_sgR8(v766, *(v767 + 61056));
    v801 = (*v766)++;
    *v801 = 32;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    sprintf1da(v766, *(v767 + 61064), v1474, 0, 0);
    sprintf1da(v766, *(v767 + 61065), v1474, 0, 0);
    sprintf1da(v766, *(v767 + 61066), v1474, 0, 0);
    sprintf1da(v766, *(v767 + 61067), v1474, 0, 0);
    sprintf1da(v766, *(v767 + 61068), v1474, 0, 0);
    v802 = (*v766)++;
    *v802 = 32;
    v803 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v803 = *(v766 + 16);
    }

    if (!*(v767 + 62344))
    {
      v804 = 32;
      v805 = 1u;
      do
      {
        *v766 = v803 + 1;
        *v803 = v804;
        v803 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v803 = *(v766 + 16);
          *v766 = v803;
        }

        v804 = aHpos[v805++];
      }

      while (v805 != 7);
      sprintf1da(v766, *(v767 + 62220), v1474, 0, 0);
      v806 = (*v766)++;
      *v806 = 32;
      v807 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v807 = *(v766 + 16);
      }

      v808 = 32;
      v809 = 1u;
      do
      {
        *v766 = v807 + 1;
        *v807 = v808;
        v807 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v807 = *(v766 + 16);
          *v766 = v807;
        }

        v808 = aHpre[v809++];
      }

      while (v809 != 7);
      sprintf_ACC(v766, sqrt(*(v767 + 61120)));
      v810 = (*v766)++;
      *v810 = 32;
      if (*v766 >= *(v766 + 24))
      {
        *v766 = *(v766 + 16);
      }

      sprintf_ACC(v766, sqrt(*(v767 + 61128)));
      v811 = (*v766)++;
      *v811 = 32;
      if (*v766 >= *(v766 + 24))
      {
        *v766 = *(v766 + 16);
      }

      sprintf_ACC(v766, sqrt(*(v767 + 61144)));
      v812 = (*v766)++;
      *v812 = 32;
      if (*v766 >= *(v766 + 24))
      {
        *v766 = *(v766 + 16);
      }

      sprintf_ACC(v766, sqrt(*(v767 + 61152)));
      v813 = (*v766)++;
      *v813 = 32;
      if (*v766 >= *(v766 + 24))
      {
        *v766 = *(v766 + 16);
      }

      sprintf_sgR8(v766, *(v767 + 61160));
      v814 = (*v766)++;
      *v814 = 32;
      if (*v766 >= *(v766 + 24))
      {
        *v766 = *(v766 + 16);
      }

      sprintf_sgR8(v766, *(v767 + 61168));
      v815 = *v766;
      v816 = 32;
      v817 = 1u;
      do
      {
        *v766 = v815 + 1;
        *v815 = v816;
        v815 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v815 = *(v766 + 16);
          *v766 = v815;
        }

        v816 = aTrck[v817++];
      }

      while (v817 != 7);
      sprintf1da(v766, *(v767 + 62221), v1474, 0, 0);
      v818 = (*v766)++;
      *v818 = 32;
      v819 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v819 = *(v766 + 16);
      }

      v820 = 32;
      v821 = 1u;
      do
      {
        *v766 = v819 + 1;
        *v819 = v820;
        v819 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v819 = *(v766 + 16);
          *v766 = v819;
        }

        v820 = aTpre[v821++];
      }

      while (v821 != 7);
      sprintf_ACC(v766, sqrt(*(v767 + 61232)));
      v822 = (*v766)++;
      *v822 = 32;
      if (*v766 >= *(v766 + 24))
      {
        *v766 = *(v766 + 16);
      }

      sprintf_sgR8(v766, *(v767 + 61248));
      v823 = *v766;
      v824 = 32;
      v825 = 1u;
      do
      {
        *v766 = v823 + 1;
        *v823 = v824;
        v823 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v823 = *(v766 + 16);
          *v766 = v823;
        }

        v824 = aVvel[v825++];
      }

      while (v825 != 7);
      sprintf1da(v766, *(v767 + 62223), v1474, 0, 0);
      v826 = (*v766)++;
      *v826 = 32;
      v827 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v827 = *(v766 + 16);
      }

      v828 = 32;
      v829 = 1u;
      do
      {
        *v766 = v827 + 1;
        *v827 = v828;
        v827 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v827 = *(v766 + 16);
          *v766 = v827;
        }

        v828 = aVpre[v829++];
      }

      while (v829 != 7);
      sprintf_ACC(v766, sqrt(*(v767 + 61304)));
      v830 = (*v766)++;
      *v830 = 32;
      if (*v766 >= *(v766 + 24))
      {
        *v766 = *(v766 + 16);
      }

      sprintf_sgR8(v766, *(v767 + 61320));
      v831 = *v766;
      v832 = 32;
      v833 = 1u;
      do
      {
        *v766 = v831 + 1;
        *v831 = v832;
        v831 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v831 = *(v766 + 16);
          *v766 = v831;
        }

        v832 = aPfwd[v833++];
      }

      while (v833 != 7);
      sprintf1da(v766, *(v767 + 62222), v1474, 0, 0);
      v834 = (*v766)++;
      *v834 = 32;
      v803 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v803 = *(v766 + 16);
      }
    }

    *v766 = v803 + 1;
    *v803 = 10;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v766);
    v766 = v715[36];
    v767 = v715[22];
  }

  if ((*(v767 + 62436) & 1) != 0 || (*(v767 + 62468) & 1) != 0 || *(v767 + 62452) == 1)
  {
    v835 = *v766;
    v836 = 86;
    v837 = 1u;
    do
    {
      *v766 = v835 + 1;
      *v835 = v836;
      v835 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v835 = *(v766 + 16);
        *v766 = v835;
      }

      v836 = aVela[v837++];
    }

    while (v837 != 7);
    v838 = 0;
    v839 = 65;
    do
    {
      *v766 = v835 + 1;
      *v835 = v839;
      v835 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v835 = *(v766 + 16);
        *v766 = v835;
      }

      v839 = aAtv[++v838];
    }

    while (v838 != 4);
    sprintf_2d(v766, *(v767 + 62436));
    sprintf_2d(v766, *(v767 + 62444));
    v840 = (*v766)++;
    *v840 = 32;
    v841 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v841 = *(v766 + 16);
    }

    *v766 = v841 + 1;
    *v841 = 101;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    v842 = Get_Char_Ass_Status_Edit(*(v767 + 62440));
    v843 = (*v766)++;
    *v843 = v842;
    v844 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v844 = *(v766 + 16);
    }

    v845 = 32;
    v846 = 1u;
    do
    {
      *v766 = v844 + 1;
      *v844 = v845;
      v844 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v844 = *(v766 + 16);
        *v766 = v844;
      }

      v845 = aAge[v846++];
    }

    while (v846 != 6);
    sprintf_6d(v766, *(v767 + 62448));
    v847 = (*v766)++;
    *v847 = 32;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    if (*(v767 + 62436) == 1)
    {
      memset(v1474, 0, 24);
      Core_Get_ExtA_AT_Vel(120000, v1474);
      sprintf_sgR8(v766, *&v1474[2]);
      v848 = *v766;
      v849 = 32;
      v850 = 1u;
      do
      {
        *v766 = v848 + 1;
        *v848 = v849;
        v848 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v848 = *(v766 + 16);
          *v766 = v848;
        }

        v849 = aRms[v850++];
      }

      while (v850 != 6);
      v851 = *&v1474[4];
    }

    else
    {
      sprintf_sgR8(v766, 0.0);
      v852 = *v766;
      v853 = 32;
      v854 = 1u;
      do
      {
        *v766 = v852 + 1;
        *v852 = v853;
        v852 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v852 = *(v766 + 16);
          *v766 = v852;
        }

        v853 = aRms[v854++];
      }

      while (v854 != 6);
      v851 = 0.0;
    }

    sprintf_sgR8(v766, v851);
    v855 = *v766;
    v856 = 32;
    v857 = 1u;
    do
    {
      *v766 = v855 + 1;
      *v855 = v856;
      v855 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v855 = *(v766 + 16);
        *v766 = v855;
      }

      v856 = aHed[v857++];
    }

    while (v857 != 6);
    sprintf_2d(v766, *(v767 + 62468));
    sprintf_2d(v766, *(v767 + 62476));
    v858 = (*v766)++;
    *v858 = 32;
    v859 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v859 = *(v766 + 16);
    }

    *v766 = v859 + 1;
    *v859 = 101;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    v860 = Get_Char_Ass_Status_Edit(*(v767 + 62472));
    v861 = (*v766)++;
    *v861 = v860;
    v862 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v862 = *(v766 + 16);
    }

    v863 = 32;
    v864 = 1u;
    do
    {
      *v766 = v862 + 1;
      *v862 = v863;
      v862 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v862 = *(v766 + 16);
        *v766 = v862;
      }

      v863 = aAge[v864++];
    }

    while (v864 != 6);
    sprintf_6d(v766, *(v767 + 62480));
    v865 = (*v766)++;
    *v865 = 32;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    if (*(v767 + 62468) == 1)
    {
      memset(v1474, 0, 24);
      Core_Get_ExtA_Heading(120000, v1474);
      sprintf_sgR8(v766, *&v1474[2]);
      v866 = *v766;
      v867 = 32;
      v868 = 1u;
      do
      {
        *v766 = v866 + 1;
        *v866 = v867;
        v866 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v866 = *(v766 + 16);
          *v766 = v866;
        }

        v867 = aRms[v868++];
      }

      while (v868 != 6);
      v869 = *&v1474[4];
    }

    else
    {
      sprintf_sgR8(v766, 0.0);
      v870 = *v766;
      v871 = 32;
      v872 = 1u;
      do
      {
        *v766 = v870 + 1;
        *v870 = v871;
        v870 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v870 = *(v766 + 16);
          *v766 = v870;
        }

        v871 = aRms[v872++];
      }

      while (v872 != 6);
      v869 = 0.0;
    }

    sprintf_sgR8(v766, v869);
    v873 = *v766;
    v874 = 32;
    v875 = 1u;
    do
    {
      *v766 = v873 + 1;
      *v873 = v874;
      v873 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v873 = *(v766 + 16);
        *v766 = v873;
      }

      v874 = aVvl[v875++];
    }

    while (v875 != 6);
    sprintf_2d(v766, *(v767 + 62452));
    sprintf_2d(v766, *(v767 + 62460));
    v876 = (*v766)++;
    *v876 = 32;
    v877 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v877 = *(v766 + 16);
    }

    *v766 = v877 + 1;
    *v877 = 101;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    v878 = Get_Char_Ass_Status_Edit(*(v767 + 62456));
    v879 = (*v766)++;
    *v879 = v878;
    v880 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v880 = *(v766 + 16);
    }

    v881 = 32;
    v882 = 1u;
    do
    {
      *v766 = v880 + 1;
      *v880 = v881;
      v880 = *v766;
      if (*v766 >= *(v766 + 24))
      {
        v880 = *(v766 + 16);
        *v766 = v880;
      }

      v881 = aAge[v882++];
    }

    while (v882 != 6);
    sprintf_6d(v766, *(v767 + 62464));
    v883 = (*v766)++;
    *v883 = 32;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    if (*(v767 + 62452) == 1)
    {
      memset(v1474, 0, 24);
      Core_Get_ExtA_V_Vel(120000, v1474);
      sprintf_sgR8(v766, *&v1474[2]);
      v884 = *v766;
      v885 = 32;
      v886 = 1u;
      do
      {
        *v766 = v884 + 1;
        *v884 = v885;
        v884 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v884 = *(v766 + 16);
          *v766 = v884;
        }

        v885 = aRms[v886++];
      }

      while (v886 != 6);
      v887 = *&v1474[4];
    }

    else
    {
      sprintf_sgR8(v766, 0.0);
      v888 = *v766;
      v889 = 32;
      v890 = 1u;
      do
      {
        *v766 = v888 + 1;
        *v888 = v889;
        v888 = *v766;
        if (*v766 >= *(v766 + 24))
        {
          v888 = *(v766 + 16);
          *v766 = v888;
        }

        v889 = aRms[v890++];
      }

      while (v890 != 6);
      v887 = 0.0;
    }

    sprintf_sgR8(v766, v887);
    v891 = (*v766)++;
    *v891 = 10;
    if (*v766 >= *(v766 + 24))
    {
      *v766 = *(v766 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v766);
    v766 = v715[36];
    v767 = v715[22];
  }

  v892 = v715[17];
  v893 = *v766;
  v894 = 65;
  v895 = 1u;
  do
  {
    *v766 = v893 + 1;
    *v893 = v894;
    v893 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v893 = *(v766 + 16);
      *v766 = v893;
    }

    v894 = aApa[v895++];
  }

  while (v895 != 6);
  v896 = *(v767 + 60840);
  if (*(v767 + 60840) || *(v767 + 60344) != 1)
  {
    v897 = 60888;
    v898 = 60872;
    v899 = 60864;
  }

  else
  {
    v896 = (*(v767 + 60348) + 1);
    v897 = 60392;
    v898 = 60376;
    v899 = 60368;
  }

  sprintf_2d(v766, v896);
  sprintf_sgR8(v766, *(v767 + v899));
  sprintf_sgR8(v766, sqrt(*(v767 + v898)));
  sprintf_sgR8(v766, *(v767 + v897));
  v900 = *v766;
  v901 = 32;
  v902 = 1u;
  do
  {
    *v766 = v900 + 1;
    *v900 = v901;
    v900 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v900 = *(v766 + 16);
      *v766 = v900;
    }

    v901 = aVva[v902++];
  }

  while (v902 != 7);
  sprintf_2d(v766, *(v767 + 60768));
  sprintf_sgR8(v766, *(v767 + 60792));
  sprintf_sgR8(v766, sqrt(*(v767 + 60800)));
  sprintf_sgR8(v766, *(v767 + 60816));
  v903 = 0;
  v904 = *v766;
  v905 = 32;
  do
  {
    *v766 = v904 + 1;
    *v904 = v905;
    v904 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v904 = *(v766 + 16);
      *v766 = v904;
    }

    v905 = aDy[++v903];
  }

  while (v903 != 4);
  v906 = *(v892 + 20);
  if (v906 >= 0)
  {
    v907 = v906;
  }

  else
  {
    v907 = -v906;
  }

  sprintf1da(v766, v907, v1474, 0, v906 >> 31);
  v908 = 0;
  v909 = *v766;
  v910 = 32;
  do
  {
    *v766 = v909 + 1;
    *v909 = v910;
    v909 = *v766;
    if (*v766 >= *(v766 + 24))
    {
      v909 = *(v766 + 16);
      *v766 = v909;
    }

    v910 = aT0[++v908];
  }

  while (v908 != 4);
  sprintf_1u(v766, *(v892 + 68180));
  LODWORD(v911) = *(v767 + 62748);
  sprintf_sgR8(v766, v911);
  v912 = (*v766)++;
  *v912 = 10;
  if (*v766 >= *(v766 + 24))
  {
    *v766 = *(v766 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v766);
  v913 = 0;
  v914 = v715[36];
  v915 = v715[9];
  v916 = v715[10];
  v917 = (v715[17] + 24576);
  v918 = v715[22] + 60176;
  v919 = *v914;
  v920 = 83;
  do
  {
    *v914 = v919 + 1;
    *v919 = v920;
    v919 = *v914;
    if (*v914 >= *(v914 + 24))
    {
      v919 = *(v914 + 16);
      *v914 = v919;
    }

    v920 = aSigs[++v913];
  }

  while (v913 != 4);
  sprintf_sgR8(v914, *(v916 + 3816));
  sprintf_sgR8(v914, *(v916 + 3824));
  sprintf_sgR8(v914, *(v916 + 3840));
  sprintf_sgR8(v914, *(v916 + 3848));
  sprintf_sgR8(v914, *(v916 + 3864));
  sprintf_sgR8(v914, *(v916 + 3872));
  v921 = *v914;
  v922 = 32;
  v923 = 1u;
  do
  {
    *v914 = v921 + 1;
    *v921 = v922;
    v921 = *v914;
    if (*v914 >= *(v914 + 24))
    {
      v921 = *(v914 + 16);
      *v914 = v921;
    }

    v922 = aEc[v923++];
  }

  while (v923 != 4);
  if (*(v916 + 3832) >= 0x270Fu)
  {
    v924 = 9999;
  }

  else
  {
    v924 = *(v916 + 3832);
  }

  sprintf_5d(v914, v924);
  if (*(v916 + 3856) >= 0x270Fu)
  {
    v925 = 9999;
  }

  else
  {
    v925 = *(v916 + 3856);
  }

  sprintf_5d(v914, v925);
  if (*(v916 + 3880) >= 0x270Fu)
  {
    v926 = 9999;
  }

  else
  {
    v926 = *(v916 + 3880);
  }

  sprintf_5d(v914, v926);
  v927 = 0;
  v928 = *v914;
  v929 = 32;
  do
  {
    *v914 = v928 + 1;
    *v928 = v929;
    v928 = *v914;
    if (*v914 >= *(v914 + 24))
    {
      v928 = *(v914 + 16);
      *v914 = v928;
    }

    v929 = aJn0[++v927];
  }

  while (v927 != 8);
  v930 = 0;
  v931 = 32;
  do
  {
    *v914 = v928 + 1;
    *v928 = v931;
    v928 = *v914;
    if (*v914 >= *(v914 + 24))
    {
      v928 = *(v914 + 16);
      *v914 = v928;
    }

    v931 = aNaEc[++v930];
  }

  while (v930 != 8);
  sprintf1da(v914, v917[1257], v1474, 0, 0);
  v932 = (*v914)++;
  *v932 = 32;
  if (*v914 >= *(v914 + 24))
  {
    *v914 = *(v914 + 16);
  }

  sprintf1da(v914, v917[1258], v1474, 0, 0);
  v933 = (*v914)++;
  *v933 = 32;
  if (*v914 >= *(v914 + 24))
  {
    *v914 = *(v914 + 16);
  }

  sprintf1da(v914, v917[1256], v1474, 0, 0);
  v934 = (*v914)++;
  *v934 = 32;
  v935 = *v914;
  if (*v914 >= *(v914 + 24))
  {
    v935 = *(v914 + 16);
    *v914 = v935;
  }

  if (*(v918 + 2000) <= 0)
  {
    v940 = 32;
    v941 = 1u;
    do
    {
      *v914 = v935 + 1;
      *v935 = v940;
      v935 = *v914;
      if (*v914 >= *(v914 + 24))
      {
        v935 = *(v914 + 16);
        *v914 = v935;
      }

      v940 = aXXXX[v941++];
    }

    while (v941 != 10);
  }

  else
  {
    sprintf_2d(v914, *(v918 + 128));
    v936 = (*v914)++;
    *v936 = 32;
    if (*v914 >= *(v914 + 24))
    {
      *v914 = *(v914 + 16);
    }

    sprintf_2d(v914, *(v918 + 136));
    v937 = (*v914)++;
    *v937 = 32;
    if (*v914 >= *(v914 + 24))
    {
      *v914 = *(v914 + 16);
    }

    sprintf_2d(v914, sqrt(*(v918 + 88)));
    v938 = (*v914)++;
    *v938 = 32;
    if (*v914 >= *(v914 + 24))
    {
      *v914 = *(v914 + 16);
    }

    sprintf_2d(v914, sqrt(*(v918 + 96)));
    v939 = (*v914)++;
    *v939 = 32;
    v935 = *v914;
    if (*v914 >= *(v914 + 24))
    {
      v935 = *(v914 + 16);
      *v914 = v935;
    }
  }

  if (*(v918 + 2004) <= 0)
  {
    v944 = 32;
    v945 = 1u;
    do
    {
      *v914 = v935 + 1;
      *v935 = v944;
      v935 = *v914;
      if (*v914 >= *(v914 + 24))
      {
        v935 = *(v914 + 16);
        *v914 = v935;
      }

      v944 = aXX[v945++];
    }

    while (v945 != 6);
  }

  else
  {
    sprintf_2d(v914, *(v918 + 216));
    v942 = (*v914)++;
    *v942 = 32;
    if (*v914 >= *(v914 + 24))
    {
      *v914 = *(v914 + 16);
    }

    sprintf_2d(v914, sqrt(*(v918 + 200)));
    v943 = (*v914)++;
    *v943 = 32;
    v935 = *v914;
    if (*v914 >= *(v914 + 24))
    {
      v935 = *(v914 + 16);
      *v914 = v935;
    }
  }

  if (*(v918 + 1992) <= 0)
  {
    v948 = 32;
    v949 = 1u;
    do
    {
      *v914 = v935 + 1;
      *v935 = v948;
      v935 = *v914;
      if (*v914 >= *(v914 + 24))
      {
        v935 = *(v914 + 16);
        *v914 = v935;
      }

      v948 = aXX[v949++];
    }

    while (v949 != 6);
  }

  else
  {
    sprintf_sgR8(v914, *(v918 + 16));
    v946 = (*v914)++;
    *v946 = 32;
    if (*v914 >= *(v914 + 24))
    {
      *v914 = *(v914 + 16);
    }

    sprintf_2d(v914, sqrt(*v918));
    v947 = (*v914)++;
    *v947 = 32;
    v935 = *v914;
    if (*v914 >= *(v914 + 24))
    {
      v935 = *(v914 + 16);
    }
  }

  v950 = 0;
  v951 = 32;
  do
  {
    *v914 = v935 + 1;
    *v935 = v951;
    v935 = *v914;
    if (*v914 >= *(v914 + 24))
    {
      v935 = *(v914 + 16);
      *v914 = v935;
    }

    v951 = aEs_0[++v950];
  }

  while (v950 != 4);
  v952 = *(v915 + 60);
  if (v952 >= 8)
  {
    v953 = 48;
  }

  else
  {
    v953 = v952 + 48;
  }

  *v914 = v935 + 1;
  *v935 = v953;
  v954 = *v914;
  if (*v914 >= *(v914 + 24))
  {
    v954 = *(v914 + 16);
  }

  *v914 = v954 + 1;
  *v954 = 10;
  if (*v914 >= *(v914 + 24))
  {
    *v914 = *(v914 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v914);
  v955 = v715[36];
  if (g_Logging_Cfg >= 5)
  {
    v956 = 0;
    v957 = v715[12];
    v958 = v715[22];
    v959 = v715[17];
    v960 = *v715;
    v961 = 86;
    v962 = *v955;
    do
    {
      *v955 = v962 + 1;
      *v962 = v961;
      v962 = *v955;
      if (*v955 >= *(v955 + 24))
      {
        v962 = *(v955 + 16);
        *v955 = v962;
      }

      v961 = aVarf[++v956];
    }

    while (v956 != 4);
    sprintf_sgR8(v955, *(v958 + 6800));
    sprintf_sgR8(v955, v959[3372]);
    sprintf_sgR8(v955, *(v958 + 21704));
    sprintf_sgR8(v955, v959[3375]);
    sprintf_sgR8(v955, *(v958 + 36608));
    sprintf_sgR8(v955, v959[3378]);
    v963 = 0;
    v964 = *v955;
    v965 = 32;
    do
    {
      *v955 = v964 + 1;
      *v964 = v965;
      v964 = *v955;
      if (*v955 >= *(v955 + 24))
      {
        v964 = *(v955 + 16);
        *v955 = v964;
      }

      v965 = aS_0[++v963];
    }

    while (v963 != 2);
    sprintf_3d(v955, v960);
    v966 = *v955;
    v967 = 32;
    v968 = 1u;
    do
    {
      *v955 = v966 + 1;
      *v966 = v967;
      v966 = *v955;
      if (*v955 >= *(v955 + 24))
      {
        v966 = *(v955 + 16);
        *v955 = v966;
      }

      v967 = aI[v968++];
    }

    while (v968 != 4);
    v969 = *(v958 + 1552) * 10.0;
    v970 = -0.5;
    if (v969 > 0.0)
    {
      v970 = 0.5;
    }

    v971 = v969 + v970;
    if (v971 <= 2147483650.0)
    {
      if (v971 >= -2147483650.0)
      {
        v972 = v971;
      }

      else
      {
        v972 = 0x80000000;
      }
    }

    else
    {
      v972 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v955, v972);
    v975 = *(v958 + 52);
    if (v975 > -10)
    {
      v976 = *v955;
      v979 = 32;
      if (v975 <= 99)
      {
        v981 = 1u;
        do
        {
          *v955 = v976 + 1;
          *v976 = v979;
          v976 = *v955;
          if (*v955 >= *(v955 + 24))
          {
            v976 = *(v955 + 16);
            *v955 = v976;
          }

          v979 = aTs[v981++];
        }

        while (v981 != 4);
        sprintf_sp1d(v955, *(v958 + 52));
        v976 = *v955;
      }

      else
      {
        v980 = 1u;
        do
        {
          *v955 = v976 + 1;
          *v976 = v979;
          v976 = *v955;
          if (*v955 >= *(v955 + 24))
          {
            v976 = *(v955 + 16);
            *v955 = v976;
          }

          v979 = aTs99[v980++];
        }

        while (v980 != 7);
      }
    }

    else
    {
      v976 = *v955;
      v977 = 32;
      v978 = 1u;
      do
      {
        *v955 = v976 + 1;
        *v976 = v977;
        v976 = *v955;
        if (*v955 >= *(v955 + 24))
        {
          v976 = *(v955 + 16);
          *v955 = v976;
        }

        v977 = aTs9[v978++];
      }

      while (v978 != 7);
    }

    v982 = 0;
    v983 = 32;
    do
    {
      *v955 = v976 + 1;
      *v976 = v983;
      v976 = *v955;
      if (*v955 >= *(v955 + 24))
      {
        v976 = *(v955 + 16);
        *v955 = v976;
      }

      v983 = aNf_0[++v982];
    }

    while (v982 != 4);
    sprintf_sp1d(v955, v957[80]);
    sprintf_sp1d(v955, v957[81]);
    sprintf_sp1d(v955, v957[82]);
    sprintf_sp1d(v955, v957[83]);
    v984 = (*v955)++;
    *v984 = 10;
    if (*v955 >= *(v955 + 24))
    {
      *v955 = *(v955 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v955);
    v955 = v715[36];
  }

  v985 = v715[22];
  v986 = *v955;
  v987 = 79;
  v988 = 1u;
  do
  {
    *v955 = v986 + 1;
    *v986 = v987;
    v986 = *v955;
    if (*v955 >= *(v955 + 24))
    {
      v986 = *(v955 + 16);
      *v955 = v986;
    }

    v987 = aOrigSig[v988++];
  }

  while (v988 != 10);
  v989 = 0;
  v990 = v985 + 61824;
  do
  {
    sprintf_sgR8F(v955, sqrt(*(v990 + v989)));
    v989 += 8;
  }

  while (v989 != 96);
  v991 = (*v955)++;
  *v991 = 10;
  if (*v955 >= *(v955 + 24))
  {
    *v955 = *(v955 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v955);
  v992 = v715[36];
  v993 = v715[22];
  v994 = *v992;
  v995 = 83;
  v996 = 1u;
  do
  {
    *v992 = v994 + 1;
    *v994 = v995;
    v994 = *v992;
    if (*v992 >= *(v992 + 24))
    {
      v994 = *(v992 + 16);
      *v992 = v994;
    }

    v995 = aSvecCor[v996++];
  }

  while (v996 != 10);
  for (i4 = 0; i4 != 96; i4 += 8)
  {
    sprintf_sgR8F(v992, *(v993 + 62648 + i4));
  }

  v998 = *v992;
  for (i5 = 3; i5 > 1; --i5)
  {
    *v992 = v998 + 1;
    *v998 = 32;
    v998 = *v992;
    if (*v992 >= *(v992 + 24))
    {
      v998 = *(v992 + 16);
      *v992 = v998;
    }
  }

  v1000 = 0;
  v1001 = v993 + 62540;
  do
  {
    sprintf1da(v992, *(v1001 + v1000++), v1474, 0, 0);
  }

  while (v1000 != 12);
  v1002 = (*v992)++;
  *v1002 = 10;
  if (*v992 >= *(v992 + 24))
  {
    *v992 = *(v992 + 16);
  }

  v1003 = v715[36];
  v1004 = v715[22];
  v1005 = *v1003;
  v1006 = 83;
  v1007 = 1u;
  do
  {
    *v1003 = v1005 + 1;
    *v1005 = v1006;
    v1005 = *v1003;
    if (*v1003 >= *(v1003 + 24))
    {
      v1005 = *(v1003 + 16);
      *v1003 = v1005;
    }

    v1006 = aSvecSig[v1007++];
  }

  while (v1007 != 10);
  v1008 = 0;
  v1009 = v1004 + 61432;
  do
  {
    sprintf_sgR8F(v1003, sqrt(*(v1009 + v1008)));
    v1008 += 8;
  }

  while (v1008 != 96);
  v1010 = (*v1003)++;
  *v1010 = 10;
  if (*v1003 >= *(v1003 + 24))
  {
    *v1003 = *(v1003 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1003);
  v1011 = v715[36];
  v1012 = v715[17];
  v1013 = v715[22];
  if (!*(v1012 + 152))
  {
    v1014 = v1013 + 49152;
    v1015 = *v1011;
    v1016 = 81;
    v1017 = 1u;
    do
    {
      *v1011 = v1015 + 1;
      *v1015 = v1016;
      v1015 = *v1011;
      if (*v1011 >= *(v1011 + 24))
      {
        v1015 = *(v1011 + 16);
        *v1011 = v1015;
      }

      v1016 = aQBSize[v1017++];
    }

    while (v1017 != 10);
    v1018 = 0;
    v1019 = v1012 + 192;
    do
    {
      sprintf_sgR8F(v1011, sqrt(*(v1019 + v1018)));
      v1018 += 8;
    }

    while (v1018 != 48);
    sprintf_sgR8F(v1011, *(v1014 + 3608));
    sprintf_sgR8F(v1011, *(v1014 + 3616));
    v1020 = (*v1011)++;
    *v1020 = 10;
    if (*v1011 >= *(v1011 + 24))
    {
      *v1011 = *(v1011 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v1011);
    v1011 = v715[36];
    v1012 = v715[17];
    v1013 = v715[22];
  }

  if (g_Logging_Cfg >= 5)
  {
    v1021 = v715[10];
    v1022 = *v1011;
    v1023 = 119;
    v1024 = 1u;
    do
    {
      *v1011 = v1022 + 1;
      *v1022 = v1023;
      v1022 = *v1011;
      if (*v1011 >= *(v1011 + 24))
      {
        v1022 = *(v1011 + 16);
        *v1011 = v1022;
      }

      v1023 = aWrdop[v1024++];
    }

    while (v1024 != 10);
    sprintf_sgR8F(v1011, sqrt(*(v1012 + 15488)));
    for (i6 = 0; i6 != 24; i6 += 8)
    {
      sprintf_sgR8(v1011, sqrt(*(v1012 + 15496 + i6)));
    }

    sprintf_sgR8(v1011, *(v1012 + 15520));
    v1026 = *v1011;
    v1027 = 32;
    v1028 = 1u;
    do
    {
      *v1011 = v1026 + 1;
      *v1026 = v1027;
      v1026 = *v1011;
      if (*v1011 >= *(v1011 + 24))
      {
        v1026 = *(v1011 + 16);
        *v1011 = v1026;
      }

      v1027 = aPrefc[v1028++];
    }

    while (v1028 != 8);
    v1029 = (v1013 + 79624);
    sprintf_LaLo(v1011, v1013 + 79624);
    sprintf_sgR8(v1011, *(v1013 + 79640));
    sprintf_sgR8(v1011, *(v1013 + 79640) - *(v1021 + 248));
    v1030 = (*v1011)++;
    *v1030 = 32;
    if (*v1011 >= *(v1011 + 24))
    {
      *v1011 = *(v1011 + 16);
    }

    v1031 = (v1012 + 68288);
    v1032 = -3;
    do
    {
      v1033 = *v1029 - *(v1031 - 9);
      if (v1032 != -1)
      {
        if (v1032 == -2)
        {
          v1034 = -6.28318531;
          if (v1033 >= 3.14159265 || (v1034 = 6.28318531, v1033 < -3.14159265))
          {
            v1033 = v1033 + v1034;
          }
        }

        v1033 = v1033 * *v1031;
      }

      sprintf_6d(v1011, v1033);
      v1035 = (*v1011)++;
      *v1035 = 32;
      v1036 = *v1011;
      if (*v1011 >= *(v1011 + 24))
      {
        v1036 = *(v1011 + 16);
        *v1011 = v1036;
      }

      ++v1031;
      ++v1029;
      v333 = __CFADD__(v1032++, 1);
    }

    while (!v333);
    v1037 = 32;
    v1038 = 1u;
    do
    {
      *v1011 = v1036 + 1;
      *v1036 = v1037;
      v1036 = *v1011;
      if (*v1011 >= *(v1011 + 24))
      {
        v1036 = *(v1011 + 16);
        *v1011 = v1036;
      }

      v1037 = aVel[v1038++];
    }

    while (v1038 != 6);
    v1039 = 0;
    v1040 = v1013 + 79648;
    do
    {
      sprintf_sgR8(v1011, *(v1040 + v1039));
      v1039 += 8;
    }

    while (v1039 != 24);
    v1041 = (*v1011)++;
    *v1041 = 10;
    if (*v1011 >= *(v1011 + 24))
    {
      *v1011 = *(v1011 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v1011);
    v1011 = v715[36];
    v1013 = v715[22];
  }

  v1042 = v715[9];
  v1043 = *v1011;
  v1044 = 67;
  v1045 = 1u;
  do
  {
    *v1011 = v1043 + 1;
    *v1043 = v1044;
    v1043 = *v1011;
    if (*v1011 >= *(v1011 + 24))
    {
      v1043 = *(v1011 + 16);
      *v1011 = v1043;
    }

    v1044 = aClkbias[v1045++];
  }

  while (v1045 != 10);
  v1046 = (*(v1013 + 1632) * 2997924580.0);
  sprintf_9f(v1011, v1046, 2);
  v1047 = (*v1011)++;
  *v1047 = 32;
  if (*v1011 >= *(v1011 + 24))
  {
    *v1011 = *(v1011 + 16);
  }

  v1048 = (*(v1013 + 1640) * 2997924580.0);
  sprintf_9f(v1011, v1048, 2);
  v1049 = (*v1011)++;
  *v1049 = 32;
  if (*v1011 >= *(v1011 + 24))
  {
    *v1011 = *(v1011 + 16);
  }

  v1050 = (*(v1013 + 1648) * 2997924580.0);
  sprintf_9f(v1011, v1050, 2);
  v1051 = (*v1011)++;
  *v1051 = 32;
  v1052 = *v1011;
  if (*v1011 >= *(v1011 + 24))
  {
    v1052 = *(v1011 + 16);
  }

  v1053 = 32;
  v1054 = 1u;
  do
  {
    *v1011 = v1052 + 1;
    *v1052 = v1053;
    v1052 = *v1011;
    if (*v1011 >= *(v1011 + 24))
    {
      v1052 = *(v1011 + 16);
      *v1011 = v1052;
    }

    v1053 = aDclk[v1054++];
  }

  while (v1054 != 7);
  if (v1048)
  {
    v1055 = v1046 == 0;
  }

  else
  {
    v1055 = 1;
  }

  if (v1055)
  {
    v1056 = 0;
  }

  else
  {
    v1056 = v1048 - v1046;
  }

  *v1011 = v1052 + 1;
  *v1052 = 32;
  if (*v1011 >= *(v1011 + 24))
  {
    *v1011 = *(v1011 + 16);
  }

  sprintf_5f(v1011, v1056, 2);
  if (v1050)
  {
    v1057 = v1046 == 0;
  }

  else
  {
    v1057 = 1;
  }

  if (v1057)
  {
    v1058 = 0;
  }

  else
  {
    v1058 = v1050 - v1046;
  }

  v1059 = (*v1011)++;
  *v1059 = 32;
  if (*v1011 >= *(v1011 + 24))
  {
    *v1011 = *(v1011 + 16);
  }

  sprintf_5f(v1011, v1058, 2);
  v1060 = 0;
  v1061 = *v1011;
  v1062 = 32;
  do
  {
    *v1011 = v1061 + 1;
    *v1061 = v1062;
    v1061 = *v1011;
    if (*v1011 >= *(v1011 + 24))
    {
      v1061 = *(v1011 + 16);
      *v1011 = v1061;
    }

    v1062 = aL5L1[++v1060];
  }

  while (v1060 != 8);
  v1063 = (*(v1013 + 1656) * 2.99792458e10);
  *v1011 = v1061 + 1;
  *v1061 = 32;
  if (*v1011 >= *(v1011 + 24))
  {
    *v1011 = *(v1011 + 16);
  }

  sprintf_5f(v1011, v1063, 3);
  v1064 = *v1011;
  v1065 = 32;
  v1066 = 1u;
  do
  {
    *v1011 = v1064 + 1;
    *v1064 = v1065;
    v1064 = *v1011;
    if (*v1011 >= *(v1011 + 24))
    {
      v1064 = *(v1011 + 16);
      *v1011 = v1064;
    }

    v1065 = aIni[v1066++];
  }

  while (v1066 != 7);
  sprintf_2d(v1011, *(v1013 + 1680));
  sprintf_2d(v1011, *(v1013 + 1681));
  sprintf_2d(v1011, *(v1013 + 1682));
  v1067 = 0;
  v1068 = *v1011;
  v1069 = 32;
  do
  {
    *v1011 = v1068 + 1;
    *v1068 = v1069;
    v1068 = *v1011;
    if (*v1011 >= *(v1011 + 24))
    {
      v1068 = *(v1011 + 16);
      *v1011 = v1068;
    }

    v1069 = aLsKf[++v1067];
  }

  while (v1067 != 8);
  sprintf_2d(v1011, *(v1013 + 79672));
  v1070 = *v1011;
  v1071 = 32;
  v1072 = 1u;
  do
  {
    *v1011 = v1070 + 1;
    *v1070 = v1071;
    v1070 = *v1011;
    if (*v1011 >= *(v1011 + 24))
    {
      v1070 = *(v1011 + 16);
      *v1011 = v1070;
    }

    v1071 = aJit[v1072++];
  }

  while (v1072 != 7);
  sprintf_4f(v1011, (*(v1042 + 242) * 2.99792458), 2);
  LOBYTE(v1073) = *(v1042 + 243);
  sprintf_4f(v1011, (v1073 * 2.99792458), 2);
  v1074 = (*v1011)++;
  *v1074 = 10;
  if (*v1011 >= *(v1011 + 24))
  {
    *v1011 = *(v1011 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1011);
  v1075 = v715[36];
  if (g_Logging_Cfg >= 5)
  {
    v1076 = v715[7];
    v1077 = *v1075;
    v1078 = 71;
    v1079 = 1u;
    do
    {
      *v1075 = v1077 + 1;
      *v1077 = v1078;
      v1077 = *v1075;
      if (*v1075 >= *(v1075 + 24))
      {
        v1077 = *(v1075 + 16);
        *v1075 = v1077;
      }

      v1078 = aGlofrq[v1079++];
    }

    while (v1079 != 8);
    v1080 = 0;
    v1081 = v1076 + 17328;
    do
    {
      if (*(v1081 + 4 * v1080) != 2139062143)
      {
        sprintf_3d(v1075, (v1080 + 1));
        sprintf_3d(v1075, *(v1081 + 4 * v1080));
        v1082 = (*v1075)++;
        *v1082 = 59;
        v1077 = *v1075;
        if (*v1075 >= *(v1075 + 24))
        {
          v1077 = *(v1075 + 16);
          *v1075 = v1077;
        }
      }

      ++v1080;
    }

    while (v1080 != 24);
    *v1075 = v1077 + 1;
    *v1077 = 10;
    if (*v1075 >= *(v1075 + 24))
    {
      *v1075 = *(v1075 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v1075);
    v1075 = v715[36];
  }

  v1083 = 0;
  v1084 = v715[7];
  v1085 = *v1075;
  v1086 = 71;
  do
  {
    *v1075 = v1085 + 1;
    *v1085 = v1086;
    v1085 = *v1075;
    if (*v1075 >= *(v1075 + 24))
    {
      v1085 = *(v1075 + 16);
      *v1075 = v1085;
    }

    v1086 = aGloslot[++v1083];
  }

  while (v1083 != 8);
  v1087 = 0;
  v1088 = v1084 + 17424;
  v1089 = 4294967289;
  do
  {
    if (*(v1088 + v1087) != 2139062143)
    {
      sprintf_3d(v1075, v1089);
      sprintf_3d(v1075, *(v1088 + v1087));
      v1090 = (*v1075)++;
      *v1090 = 59;
      v1085 = *v1075;
      if (*v1075 >= *(v1075 + 24))
      {
        v1085 = *(v1075 + 16);
        *v1075 = v1085;
      }
    }

    v1087 += 4;
    v1089 = (v1089 + 1);
  }

  while (v1087 != 56);
  *v1075 = v1085 + 1;
  *v1085 = 10;
  if (*v1075 >= *(v1075 + 24))
  {
    *v1075 = *(v1075 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1075);
  v1091 = v715[36];
  v1092 = v715[10];
  v1093 = v715[17];
  v1094 = v715[22];
  v1095 = v715[6];
  v1096 = *v1091;
  v1097 = 82;
  v1098 = 1u;
  do
  {
    *v1091 = v1096 + 1;
    *v1096 = v1097;
    v1096 = *v1091;
    if (*v1091 >= *(v1091 + 24))
    {
      v1096 = *(v1091 + 16);
      *v1091 = v1096;
    }

    v1097 = aReset[v1098++];
  }

  while (v1098 != 8);
  sprintf1da(v1091, *(v1093 + 136), v1474, 0, 0);
  sprintf_3d(v1091, *(v1093 + 140));
  sprintf_5d(v1091, *(v1093 + 144));
  sprintf_6d(v1091, *(v1093 + 148));
  sprintf_2d(v1091, *(v1093 + 176));
  v1099 = 0;
  v1100 = *v1091;
  v1101 = 32;
  do
  {
    *v1091 = v1100 + 1;
    *v1100 = v1101;
    v1100 = *v1091;
    if (*v1091 >= *(v1091 + 24))
    {
      v1100 = *(v1091 + 16);
      *v1091 = v1100;
    }

    v1101 = aQb[++v1099];
  }

  while (v1099 != 4);
  if (*(v1093 + 183))
  {
    v1102 = 49;
  }

  else
  {
    v1102 = 48;
  }

  *v1091 = v1100 + 1;
  *v1100 = v1102;
  if (*v1091 >= *(v1091 + 24))
  {
    *v1091 = *(v1091 + 16);
  }

  v1103 = *(v1093 + 184);
  if (*(v1093 + 186))
  {
    v1103 |= 2u;
  }

  if (*(v1093 + 188))
  {
    v1104 = v1103 | 4;
  }

  else
  {
    v1104 = v1103;
  }

  sprintf1da(v1091, v1104, v1474, 0, 0);
  if (*(v1093 + 187))
  {
    v1105 = *(v1093 + 185) | 2u;
  }

  else
  {
    v1105 = *(v1093 + 185);
  }

  sprintf1da(v1091, v1105, v1474, 0, 0);
  sprintf_6d(v1091, *(v1093 + 152));
  v1106 = 0;
  v1107 = *v1091;
  v1108 = 32;
  do
  {
    *v1091 = v1107 + 1;
    *v1107 = v1108;
    v1107 = *v1091;
    if (*v1091 >= *(v1091 + 24))
    {
      v1107 = *(v1091 + 16);
      *v1091 = v1107;
    }

    v1108 = aSt_0[++v1106];
  }

  while (v1106 != 4);
  sprintf1da(v1091, *(v1095 + 16), v1474, 0, 0);
  v1109 = *v1091;
  v1110 = &g_TOW_Stat_As_String[10 * *v1095 + 1];
  v1111 = 32;
  do
  {
    *v1091 = v1109 + 1;
    *v1109 = v1111;
    v1109 = *v1091;
    if (*v1091 >= *(v1091 + 24))
    {
      v1109 = *(v1091 + 16);
      *v1091 = v1109;
    }

    v1112 = *v1110++;
    v1111 = v1112;
  }

  while (v1112);
  v1113 = 0;
  v1114 = 32;
  do
  {
    *v1091 = v1109 + 1;
    *v1109 = v1114;
    v1109 = *v1091;
    if (*v1091 >= *(v1091 + 24))
    {
      v1109 = *(v1091 + 16);
      *v1091 = v1109;
    }

    v1114 = aSp[++v1113];
  }

  while (v1113 != 4);
  sprintf1da(v1091, *(v1092 + 18), v1474, 0, 0);
  sprintf1da(v1091, *(v1093 + 240), v1474, 0, 0);
  sprintf1da(v1091, *(v1093 + 241), v1474, 0, 0);
  sprintf1da(v1091, *(v1094 + 62539), v1474, 0, 0);
  v1115 = *v1091;
  v1116 = 32;
  v1117 = 1u;
  do
  {
    *v1091 = v1115 + 1;
    *v1115 = v1116;
    v1115 = *v1091;
    if (*v1091 >= *(v1091 + 24))
    {
      v1115 = *(v1091 + 16);
      *v1091 = v1115;
    }

    v1116 = aFf[v1117++];
  }

  while (v1117 != 6);
  sprintf_3f(v1091, (10 * *(v1093 + 27136)) / 0x3E8uLL, 2);
  sprintf_sp1d(v1091, *(v1094 + 48));
  v1118 = *v1091;
  v1119 = 32;
  v1120 = 1u;
  do
  {
    *v1091 = v1118 + 1;
    *v1118 = v1119;
    v1118 = *v1091;
    if (*v1091 >= *(v1091 + 24))
    {
      v1118 = *(v1091 + 16);
      *v1091 = v1118;
    }

    v1119 = aOr[v1120++];
  }

  while (v1120 != 6);
  sprintf1da(v1091, *(v1094 + 1880), v1474, 0, 0);
  v1121 = (*v1091)++;
  *v1121 = 10;
  if (*v1091 >= *(v1091 + 24))
  {
    *v1091 = *(v1091 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1091);
  v1122 = 0;
  v1123 = v715[36];
  v1125 = v715[7];
  v1124 = v715[8];
  v1126 = v715[17];
  v1446 = v715[5];
  v1447 = v715[22];
  v1127 = v715[10];
  v1437 = v715[11];
  v1128 = v715[12];
  v1443 = v715[26];
  v1444 = v715[4];
  v1511 = 0u;
  v1512 = 0u;
  v1509 = 0u;
  v1510 = 0u;
  v1507 = 0u;
  v1508 = 0u;
  *v1505 = 0u;
  v1506 = 0u;
  v1503 = 0u;
  v1504 = 0u;
  v1501 = 0u;
  v1502 = 0u;
  v1499 = 0u;
  v1500 = 0u;
  v1497 = 0u;
  v1498 = 0u;
  v1495 = 0u;
  v1496 = 0u;
  v1493 = 0u;
  v1494 = 0u;
  v1491 = 0u;
  v1492 = 0u;
  v1489 = 0u;
  v1490 = 0u;
  v1487 = 0u;
  v1488 = 0u;
  v1485 = 0u;
  v1486 = 0u;
  v1483 = 0u;
  v1484 = 0u;
  v1481 = 0u;
  v1482 = 0u;
  v1480 = 0u;
  v1478 = 0u;
  v1479 = 0u;
  v1476 = 0u;
  v1477 = 0u;
  v1475 = 0u;
  v1458 = v1128 + 96;
  v1129 = (v1128 + 99);
  memset(v1474, 0, sizeof(v1474));
  do
  {
    *(v1505 + v1122) = v1122;
    v1130 = *(v1129 - 3);
    if (*(v1129 - 3))
    {
      v1131 = (v1130 << 16) | (*(v1129 - 2) << 8);
      if (v1130 == 2)
      {
        v1132 = v1131 + *v1129;
      }

      else
      {
        v1132 = v1131 | *(v1129 - 1);
      }

      v1474[v1122] = v1132;
    }

    ++v1122;
    v1129 += 4;
  }

  while (v1122 != 128);
  VecSortIndexAscI4(v1474, v1505, 0, 127);
  v1133 = 0;
  v1134 = v1127 + 1640;
  v1466 = v1128 + 992;
  v1456 = v1128 + 1248;
  v1457 = v1128 + 864;
  v1463 = v1128 + 1760;
  v1454 = v1128 + 2016;
  v1455 = v1128 + 1888;
  v1442 = v1128 + 2912;
  v1436 = v1128 + 2656;
  v1459 = v1128 + 2400;
  v1438 = v1126 + 16648;
  v1434 = v1125;
  v1435 = v1125 + 17672;
  v1452 = v1128 + 8160;
  v1453 = v1128 + 2144;
  v1464 = v1447 + 1770;
  v1460 = v1447 + 1834;
  v1468 = v1447 + 9222;
  v1461 = v1447 + 9286;
  v1441 = v1447 + 5496;
  v1440 = v1128 + 4448;
  v1450 = v1126 + 14208;
  v1449 = v1126 + 13184;
  v1439 = v1447 + 5560;
  v1451 = v1446 + 5976;
  v1445 = v1446 + 72;
  v1135 = v1128 + 96;
  do
  {
    v1136 = *(v1505 + v1133);
    v1137 = (v1135 + 4 * v1136);
    if (!*v1137)
    {
      goto LABEL_2143;
    }

    v1138 = *(v1134 + 4 * v1136);
    v1139 = g_Logging_Cfg <= 3 && v1138 < 4;
    if (v1139)
    {
      goto LABEL_2143;
    }

    v1140 = v1137[2];
    if (v1137[2])
    {
      v1462 = GNSS_Id_To_Num_Prn_Idx(*v1137);
    }

    else
    {
      v1462 = -1;
    }

    v1141 = *v1123;
    v1142 = 83;
    v1143 = 1u;
    do
    {
      *v1123 = v1141 + 1;
      *v1141 = v1142;
      v1141 = *v1123;
      if (*v1123 >= *(v1123 + 24))
      {
        v1141 = *(v1123 + 16);
        *v1123 = v1141;
      }

      v1142 = aSv[v1143++];
    }

    while (v1143 != 4);
    v1144 = ch_CONSTELL_ID[*v1137];
    *v1123 = v1141 + 1;
    *v1141 = v1144;
    v1145 = *v1123;
    if (*v1123 >= *(v1123 + 24))
    {
      v1145 = *(v1123 + 16);
      *v1123 = v1145;
    }

    v1146 = 3 * v1137[1];
    v1147 = ch_GNSS_SIGID[v1146];
    if (v1147)
    {
      v1148 = &ch_GNSS_SIGID[v1146 + 1];
      do
      {
        *v1123 = v1145 + 1;
        *v1145 = v1147;
        v1145 = *v1123;
        if (*v1123 >= *(v1123 + 24))
        {
          v1145 = *(v1123 + 16);
          *v1123 = v1145;
        }

        v1149 = *v1148++;
        v1147 = v1149;
      }

      while (v1149);
    }

    sprintf_4d(v1123, v1140);
    sprintf_3d(v1123, v1137[3]);
    if (*v1137 == 2)
    {
      v1150 = (v1137[3] + 8);
    }

    else
    {
      v1150 = 0;
    }

    sprintf_3d(v1123, v1150);
    sprintf_3d(v1123, *(v1457 + v1136));
    v1151 = (*v1123)++;
    *v1151 = 32;
    if (*v1123 >= *(v1123 + 24))
    {
      *v1123 = *(v1123 + 16);
    }

    sprintf_04x(v1123, *(v1466 + 2 * v1136));
    sprintf_3d(v1123, *(v1456 + 4 * v1136));
    LOBYTE(v1152) = *(v1463 + v1136);
    LOBYTE(v1153) = *(v1455 + v1136);
    v1154 = (v1152 + v1153 * 0.0625) * 10.0;
    if (v1154 <= 0.0)
    {
      v1155 = -0.5;
    }

    else
    {
      v1155 = 0.5;
    }

    v1156 = v1154 + v1155;
    if (v1156 <= 2147483650.0)
    {
      if (v1156 >= -2147483650.0)
      {
        v1157 = v1156;
      }

      else
      {
        v1157 = 0x80000000;
      }
    }

    else
    {
      v1157 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v1123, v1157, 2);
    LOBYTE(v1158) = *(v1454 + v1136);
    LOBYTE(v1159) = *(v1453 + v1136);
    v1160 = (v1158 + v1159 * 0.0625) * 10.0;
    if (v1160 <= 0.0)
    {
      v1161 = -0.5;
    }

    else
    {
      v1161 = 0.5;
    }

    v1162 = v1160 + v1161;
    if (v1162 <= 2147483650.0)
    {
      if (v1162 >= -2147483650.0)
      {
        v1163 = v1162;
      }

      else
      {
        v1163 = 0x80000000;
      }
    }

    else
    {
      v1163 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v1123, v1163, 2);
    v1164 = *(v1466 + 2 * v1136);
    v1165 = v1459;
    if ((v1164 & 8) != 0)
    {
      v1165 = v1442;
      if ((v1164 & 0xC0) == 0)
      {
        v1165 = v1436;
        if ((v1164 & 0x30) == 0)
        {
          v1165 = v1459;
        }
      }
    }

    sprintf_6d(v1123, *(v1165 + 2 * v1136));
    if (!v1140 || v1138 == 3)
    {
      v1166 = *v1123;
      v1167 = 32;
      v1168 = 1u;
      do
      {
        *v1123 = v1166 + 1;
        *v1166 = v1167;
        v1166 = *v1123;
        if (*v1123 >= *(v1123 + 24))
        {
          v1166 = *(v1123 + 16);
          *v1123 = v1166;
        }

        v1167 = aX90[v1168++];
      }

      while (v1168 != 13);
    }

    else
    {
      if (*(v1447 + v1136 + 57) == 1 && *(v1438 + 2 * v1136))
      {
        sprintf_5d(v1123, *(v1438 + 2 * v1136));
      }

      else
      {
        v1169 = *v1123;
        for (i7 = 5; i7 > 1; --i7)
        {
          *v1123 = v1169 + 1;
          *v1169 = 32;
          v1169 = *v1123;
          if (*v1123 >= *(v1123 + 24))
          {
            v1169 = *(v1123 + 16);
            *v1123 = v1169;
          }
        }

        if ((*(v1447 + v1136 + 31510) & 0x8000000000000000) != 0)
        {
          *v1123 = v1169 + 1;
          v1171 = 120;
        }

        else if (*v1137 == 3 && *(v1435 + (v1140 - 1)) == 1 && (*(*(v1434 + 17616) + (v1140 - 1)) & 1) == 0)
        {
          *v1123 = v1169 + 1;
          v1171 = 109;
        }

        else
        {
          v1171 = ch_EPH_ALM[*(v1437 + 192 * *(v1447 + v1136 + 31510) + 176)];
          *v1123 = v1169 + 1;
        }

        *v1169 = v1171;
        if (*v1123 >= *(v1123 + 24))
        {
          *v1123 = *(v1123 + 16);
        }
      }

      v1172 = *(v1444 + GNSS_Id_To_Num_Prn_Idx(*v1137));
      if (v1172 <= -9)
      {
        v1173 = 4294967287;
      }

      else
      {
        v1173 = v1172;
      }

      sprintf_3d(v1123, v1173);
      v1174 = *(v1444 + 218 + 2 * GNSS_Id_To_Num_Prn_Idx(*v1137));
      if ((v1174 & 0x80000000) != 0)
      {
        v1175 = 0;
        v1176 = *v1123;
        v1177 = 32;
        do
        {
          *v1123 = v1176 + 1;
          *v1176 = v1177;
          v1176 = *v1123;
          if (*v1123 >= *(v1123 + 24))
          {
            v1176 = *(v1123 + 16);
            *v1123 = v1176;
          }

          v1177 = a0[++v1175];
        }

        while (v1175 != 4);
      }

      else
      {
        sprintf_4d(v1123, v1174);
      }
    }

    sprintf_4d(v1123, *(v1452 + 2 * v1136));
    v1178 = (*v1123)++;
    *v1178 = 32;
    if (*v1123 >= *(v1123 + 24))
    {
      *v1123 = *(v1123 + 16);
    }

    sprintf_sgR8(v1123, *&v1447[2 * v1136 + 3274]);
    if (*(v1464 + v1136) == 1)
    {
      if (*(v1447 + v1136 + 16168))
      {
        v1179 = 3;
      }

      else
      {
        v1179 = 1;
      }

      if (*(v1447 + v1136 + 17320))
      {
        v1179 |= 4u;
      }

      if (*(v1447 + v1136 + 19496))
      {
        v1180 = v1179 | 8;
      }

      else
      {
        v1180 = v1179;
      }
    }

    else
    {
      v1180 = 0;
    }

    sprintf_2x(v1123, v1180);
    v1181 = v1460[v1136];
    if (v1181 >= 0x1F)
    {
      gn_report_assertion_failure("SV_Meas_Edit_Char");
      v1182 = 120;
    }

    else
    {
      v1182 = aCghkmnpqrstvya[v1181];
    }

    v1183 = (*v1123)++;
    *v1183 = v1182;
    v1184 = *v1123;
    if (*v1123 >= *(v1123 + 24))
    {
      v1184 = *(v1123 + 16);
    }

    *v1123 = v1184 + 1;
    *v1184 = 32;
    if (*v1123 >= *(v1123 + 24))
    {
      *v1123 = *(v1123 + 16);
    }

    if ((*(v1468 + v1136) & 1) != 0 || (v1461[v1136] - 1) <= 0x1D)
    {
      sprintf_sgR8(v1123, *&v1447[2 * v1136 + 10982]);
      if (*(v1468 + v1136) == 1)
      {
        if (*(v1447 + v1136 + 45976))
        {
          v1185 = 3;
        }

        else
        {
          v1185 = 1;
        }

        if (*(v1447 + v1136 + 47128))
        {
          v1185 |= 4u;
        }

        if (*(v1447 + v1136 + 49304))
        {
          v1186 = v1185 | 8;
        }

        else
        {
          v1186 = v1185;
        }
      }

      else
      {
        v1186 = 0;
      }

      sprintf_2x(v1123, v1186);
      v1187 = v1461[v1136];
      if (v1187 >= 0x1F)
      {
        gn_report_assertion_failure("SV_Meas_Edit_Char");
        v1188 = 120;
      }

      else
      {
        v1188 = aCghkmnpqrstvya[v1187];
      }

      v1189 = (*v1123)++;
      *v1189 = v1188;
      v1190 = *v1123;
      if (*v1123 >= *(v1123 + 24))
      {
        v1190 = *(v1123 + 16);
        *v1123 = v1190;
      }

      v1191 = " 1 ";
    }

    else
    {
      sprintf_sgR8(v1123, *&v1447[2 * v1136 + 7256]);
      if (*(v1441 + v1136) == 1)
      {
        if (*(v1447 + v1136 + 31072))
        {
          v1192 = 3;
        }

        else
        {
          v1192 = 1;
        }

        if (*(v1447 + v1136 + 32224))
        {
          v1192 |= 4u;
        }

        if (*(v1447 + v1136 + 34400))
        {
          v1193 = v1192 | 8;
        }

        else
        {
          v1193 = v1192;
        }
      }

      else
      {
        v1193 = 0;
      }

      sprintf_2x(v1123, v1193);
      v1194 = v1439[v1136];
      if (v1194 >= 0x1F)
      {
        gn_report_assertion_failure("SV_Meas_Edit_Char");
        v1195 = 120;
      }

      else
      {
        v1195 = aCghkmnpqrstvya[v1194];
      }

      v1196 = (*v1123)++;
      *v1196 = v1195;
      v1190 = *v1123;
      if (*v1123 >= *(v1123 + 24))
      {
        v1190 = *(v1123 + 16);
        *v1123 = v1190;
      }

      v1191 = " 0 ";
      if (*(v1447 + v1136 + 51480))
      {
        v1191 = " 2 ";
      }
    }

    v1197 = *v1191;
    if (*v1191)
    {
      v1198 = (v1191 + 1);
      do
      {
        *v1123 = v1190 + 1;
        *v1190 = v1197;
        v1190 = *v1123;
        if (*v1123 >= *(v1123 + 24))
        {
          v1190 = *(v1123 + 16);
          *v1123 = v1190;
        }

        v1199 = *v1198++;
        v1197 = v1199;
      }

      while (v1199);
    }

    if (!v1140 || v1138 != 1)
    {
      Get_SV_Carrier_Inv_Wavelength();
      v1204 = (v1205 * *(v1440 + 8 * v1136));
LABEL_2061:
      v1203 = v1462;
      goto LABEL_2062;
    }

    v1200 = *(v1451 + GNSS_Id_To_Num_Prn_Idx(*v1137));
    if (v1200 < 0 || (v1201 = v1445 + 48 * v1200, *(v1201 + 4) != 1))
    {
      if ((v1140 - 120) >= 0x27)
      {
        v1204 = (-*(v1446 + 24) * 1.57542);
      }

      else
      {
        v1204 = 4294957297;
      }

      goto LABEL_2061;
    }

    v1202 = v1137[1];
    v1203 = v1462;
    if (v1202 > 0xF || ((1 << v1202) & 0xDD77) == 0)
    {
      v1240 = *(v1201 + 22);
      v1241 = 115;
LABEL_2150:
      v1204 = (v1240 * v1241 / 154);
      goto LABEL_2062;
    }

    if (((1 << v1202) & 0xBBBF) == 0)
    {
      v1240 = *(v1201 + 22);
      v1241 = 118;
      goto LABEL_2150;
    }

    v1204 = *(v1201 + 22);
LABEL_2062:
    sprintf_6d(v1123, v1204);
    v1206 = (*v1123)++;
    *v1206 = 32;
    v1207 = *v1123;
    if (*v1123 >= *(v1123 + 24))
    {
      v1207 = *(v1123 + 16);
      *v1123 = v1207;
    }

    if (*v1137)
    {
      v1208 = *v1447 - *(v1124 + 576 + 4 * v1136);
      if (v1208 >= -999)
      {
        v1212 = v1208 / 1000;
        if (v1212 >= 9)
        {
          v1209 = 9;
        }

        else
        {
          v1209 = v1212;
        }
      }

      else
      {
        v1209 = 0;
      }

      sprintf_2d(v1123, v1209);
    }

    else
    {
      v1210 = 0;
      v1211 = 32;
      do
      {
        *v1123 = v1207 + 1;
        *v1207 = v1211;
        v1207 = *v1123;
        if (*v1123 >= *(v1123 + 24))
        {
          v1207 = *(v1123 + 16);
          *v1123 = v1207;
        }

        v1211 = aX[++v1210];
      }

      while (v1210 != 2);
    }

    v1213 = 0;
    if (v1140)
    {
      v1214 = 0;
      if ((v1203 & 0x80000000) == 0)
      {
        if ((*(v1451 + v1203) & 0x8000000000000000) != 0)
        {
          v1213 = ((-*(v1446 + 24) * 1.57542) / 10);
          v1214 = (5381 * *(v1446 + 4)) >> 10;
        }

        else
        {
          v1215 = v1445 + 48 * *(v1451 + v1203);
          v1213 = *(v1215 + 26);
          v1216 = v1137[1];
          if (v1216 <= 0xF && ((1 << v1216) & 0xDD77) != 0)
          {
            if (((1 << v1216) & 0xBBBF) != 0)
            {
              v1214 = *(v1215 + 18);
            }

            else
            {
              v1214 = (27889399 * (118 * *(v1215 + 18))) >> 32;
            }
          }

          else
          {
            v1214 = (27889399 * (115 * *(v1215 + 18))) >> 32;
          }
        }
      }
    }

    else
    {
      v1214 = 0;
    }

    sprintf_5d(v1123, v1213);
    sprintf_6d(v1123, v1214);
    if (!Is_Legal(*v1137) || (v1203 & 0x80000000) != 0)
    {
      v1217 = *v1123;
      v1218 = 32;
      v1219 = 1u;
      do
      {
        *v1123 = v1217 + 1;
        *v1217 = v1218;
        v1217 = *v1123;
        if (*v1123 >= *(v1123 + 24))
        {
          v1217 = *(v1123 + 16);
          *v1123 = v1217;
        }

        v1218 = a00_0[v1219++];
      }

      while (v1219 != 15);
    }

    else
    {
      sprintf_8d(v1123, *(v1443 + 4 * v1136));
      sprintf_6d(v1123, *(v1443 + 512 + 2 * v1136));
    }

    if ((*(v1464 + v1136) & 1) != 0 || (v1460[v1136] - 1) < 0x1E || (*(v1441 + v1136) & 1) != 0 || (v1439[v1136] - 1) < 0x1E || (*(v1468 + v1136) & 1) != 0 || (v1461[v1136] - 1) <= 0x1D)
    {
      sprintf_sgR8(v1123, *&v1447[2 * v1136 + 4906]);
      v1220 = sqrt(*&v1447[2 * v1136 + 4362]);
      if (v1220 <= 99999.0)
      {
        if (v1220 <= 999.9)
        {
          v1225 = v1220 * 10.0;
          if (v1225 <= 0.0)
          {
            v1226 = -0.5;
          }

          else
          {
            v1226 = 0.5;
          }

          v1227 = v1225 + v1226;
          if (v1227 <= 2147483650.0)
          {
            if (v1227 >= -2147483650.0)
            {
              v1228 = v1227;
            }

            else
            {
              v1228 = 0x80000000;
            }
          }

          else
          {
            v1228 = 0x7FFFFFFFLL;
          }

          sprintf_5f(v1123, v1228, 2);
        }

        else
        {
          v1224 = v1220 + 0.5;
          if (v1224 >= 2147483650.0)
          {
            v1224 = 2147483650.0;
          }

          sprintf_6d(v1123, v1224);
        }
      }

      else
      {
        v1221 = *v1123;
        v1222 = 32;
        v1223 = 1u;
        do
        {
          *v1123 = v1221 + 1;
          *v1221 = v1222;
          v1221 = *v1123;
          if (*v1123 >= *(v1123 + 24))
          {
            v1221 = *(v1123 + 16);
            *v1123 = v1221;
          }

          v1222 = a99999[v1223++];
        }

        while (v1223 != 7);
      }

      if ((*(v1468 + v1136) & 1) != 0 || (v1461[v1136] - 1) <= 0x1D)
      {
        sprintf_sgR8(v1123, *&v1447[2 * v1136 + 12358]);
        v1229 = fmin(sqrt(*&v1447[2 * v1136 + 11814]), 9.89999962) * 1000.0;
        if (v1229 <= 0.0)
        {
          v1230 = -0.5;
        }

        else
        {
          v1230 = 0.5;
        }

        v1231 = v1229 + v1230;
        if (v1231 <= 2147483650.0)
        {
          if (v1231 >= -2147483650.0)
          {
            v1232 = v1231;
          }

          else
          {
            v1232 = 0x80000000;
          }
        }

        else
        {
          v1232 = 0x7FFFFFFFLL;
        }

        v1236 = v1123;
        v1237 = 4;
      }

      else
      {
        sprintf_sgR8(v1123, *&v1447[2 * v1136 + 8632]);
        v1233 = fmin(sqrt(*&v1447[2 * v1136 + 8088]), 99.9000015) * 100.0;
        if (v1233 <= 0.0)
        {
          v1234 = -0.5;
        }

        else
        {
          v1234 = 0.5;
        }

        v1235 = v1233 + v1234;
        if (v1235 <= 2147483650.0)
        {
          if (v1235 >= -2147483650.0)
          {
            v1232 = v1235;
          }

          else
          {
            v1232 = 0x80000000;
          }
        }

        else
        {
          v1232 = 0x7FFFFFFFLL;
        }

        v1236 = v1123;
        v1237 = 3;
      }

      sprintf_5f(v1236, v1232, v1237);
      sprintf_4d(v1123, *(v1463 + v1136) - *(v1447 + v1136 + 1882));
      v1238 = (*v1123)++;
      *v1238 = 32;
      if (*v1123 >= *(v1123 + 24))
      {
        *v1123 = *(v1123 + 16);
      }

      sprintf_sgR8(v1123, *&v1447[2 * v1136 + 3018]);
      sprintf_sgR8(v1123, *(v1443 + 3168 + 8 * v1136));
      sprintf_sgR8(v1123, *(v1443 + 4192 + 8 * v1136));
      sprintf_3d(v1123, *(v1450 + v1136));
      sprintf_sgR8(v1123, sqrt(*(v1449 + 8 * v1136)));
    }

    v1239 = (*v1123)++;
    *v1239 = 10;
    if (*v1123 >= *(v1123 + 24))
    {
      *v1123 = *(v1123 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v1123);
    v1134 = v1127 + 1640;
    v1135 = v1458;
LABEL_2143:
    ++v1133;
  }

  while (v1133 != 128);
  v1242 = 0;
  v1243 = a1[36];
  v1244 = a1[5];
  v1245 = a1[10];
  v1246 = a1[8];
  v1247 = a1[17];
  v1248 = a1[22];
  v1249 = *v1243;
  v1250 = 84;
  do
  {
    *v1243 = v1249 + 1;
    *v1249 = v1250;
    v1249 = *v1243;
    if (*v1243 >= *(v1243 + 24))
    {
      v1249 = *(v1243 + 16);
      *v1243 = v1249;
    }

    v1250 = aTheEnd[++v1242];
  }

  while (v1242 != 8);
  v1251 = &ch_Pos_Confid[5 * *(v1245 + 12) + 1];
  v1252 = 32;
  do
  {
    *v1243 = v1249 + 1;
    *v1249 = v1252;
    v1249 = *v1243;
    if (*v1243 >= *(v1243 + 24))
    {
      v1249 = *(v1243 + 16);
      *v1243 = v1249;
    }

    v1253 = *v1251++;
    v1252 = v1253;
  }

  while (v1253);
  sprintf_sp1d(v1243, *(v1247 + 243));
  sprintf_sp1d(v1243, *(v1248 + 1876));
  sprintf_sp1d(v1243, *v1246);
  sprintf_sp1d(v1243, *(v1247 + 242));
  v1254 = 0;
  v1255 = *v1243;
  v1256 = 32;
  do
  {
    *v1243 = v1255 + 1;
    *v1255 = v1256;
    v1255 = *v1243;
    if (*v1243 >= *(v1243 + 24))
    {
      v1255 = *(v1243 + 16);
      *v1243 = v1255;
    }

    v1256 = aVis[++v1254];
  }

  while (v1254 != 4);
  sprintf_3d(v1243, *(v1244 + 8592));
  if (*(v1244 + 8592))
  {
    v1257 = 0;
    v1258 = v1244 + 6194;
    do
    {
      v1505[0] = 0;
      v1259 = *(v1258 + 2 * v1257);
      if (v1259 < 1)
      {
        v1264 = 0;
        v1265 = *v1243;
        v1266 = 32;
        do
        {
          *v1243 = v1265 + 1;
          *v1265 = v1266;
          v1265 = *v1243;
          if (*v1243 >= *(v1243 + 24))
          {
            v1265 = *(v1243 + 16);
            *v1243 = v1265;
          }

          v1266 = aX[++v1264];
        }

        while (v1264 != 2);
        v1260 = *(v1258 + 2 * v1257);
      }

      else
      {
        v1260 = LongPrnIdx_To_Prn(v1259 - 1, v1505);
        v1261 = (*v1243)++;
        *v1261 = 32;
        v1262 = *v1243;
        if (*v1243 >= *(v1243 + 24))
        {
          v1262 = *(v1243 + 16);
        }

        v1263 = ch_CONSTELL_ID[v1505[0]];
        *v1243 = v1262 + 1;
        *v1262 = v1263;
        if (*v1243 >= *(v1243 + 24))
        {
          *v1243 = *(v1243 + 16);
        }
      }

      if (v1260 >= 0)
      {
        v1267 = v1260;
      }

      else
      {
        v1267 = -v1260;
      }

      sprintf1da(v1243, v1267, v1474, 0, v1260 >> 31);
      ++v1257;
    }

    while (v1257 < *(v1244 + 8592));
  }

  v1268 = *v1243;
  for (i8 = 3; i8 > 1; --i8)
  {
    *v1243 = v1268 + 1;
    *v1268 = 32;
    v1268 = *v1243;
    if (*v1243 >= *(v1243 + 24))
    {
      v1268 = *(v1243 + 16);
      *v1243 = v1268;
    }
  }

  sprintf_sp1d(v1243, *(v1247 + 15408));
  sprintf_sp1d(v1243, *(v1247 + 15409));
  sprintf_sgR8(v1243, *(v1248 + 6808));
  sprintf_sp1d(v1243, *(v1248 + 6771));
  sprintf_sp1d(v1243, *(v1248 + 62121));
  sprintf_sgR8(v1243, *(v1248 + 21712));
  sprintf_sp1d(v1243, *(v1248 + 21675));
  sprintf_sp1d(v1243, *(v1248 + 62123));
  sprintf_sgR8(v1243, *(v1248 + 36616));
  sprintf_sp1d(v1243, *(v1248 + 36579));
  sprintf_sp1d(v1243, *(v1248 + 62124));
  sprintf_sp1d(v1243, *(v1247 + 244));
  sprintf_sp1d(v1243, *(v1248 + 62122));
  v1270 = (*v1243)++;
  *v1270 = 10;
  if (*v1243 >= *(v1243 + 24))
  {
    *v1243 = *(v1243 + 16);
  }

  result = GNSS_Nav_Debug_Flush_Check(v1243);
  if (g_Logging_Cfg < 6)
  {
    return result;
  }

  v1272 = a1[36];
  v1273 = *(a1[10] + 48);
  v1274 = -0.5;
  if (v1273 > 0.0)
  {
    v1274 = 0.5;
  }

  v1275 = v1273 + v1274;
  if (v1275 <= 2147483650.0)
  {
    if (v1275 >= -2147483650.0)
    {
      v1276 = v1275 % 86400;
    }

    else
    {
      v1276 = -11648;
    }
  }

  else
  {
    v1276 = 11647;
  }

  v1469 = v1276;
  v1277 = a1[4];
  v1467 = a1[5];
  if (g_Logging_Cfg != 6)
  {
    v1278 = *v1272;
    v1279 = 83;
    v1280 = 1u;
    do
    {
      *v1272 = v1278 + 1;
      *v1278 = v1279;
      v1278 = *v1272;
      if (*v1272 >= *(v1272 + 24))
      {
        v1278 = *(v1272 + 16);
        *v1272 = v1278;
      }

      v1279 = aSvid[v1280++];
    }

    while (v1280 != 6);
    sprintf_8d(v1272, v1469);
    v1281 = (*v1272)++;
    *v1281 = 32;
    if (*v1272 >= *(v1272 + 24))
    {
      *v1272 = *(v1272 + 16);
    }

    v1282 = 0;
    while (1)
    {
      if (v1282 <= 91)
      {
        switch(v1282)
        {
          case 0:
            v1283 = "  G ";
            goto LABEL_2216;
          case 32:
            v1283 = "  R ";
LABEL_2216:
            v1284 = *v1283;
            if (*v1283)
            {
              v1285 = *v1272;
              v1286 = (v1283 + 1);
              do
              {
                *v1272 = v1285 + 1;
                *v1285 = v1284;
                v1285 = *v1272;
                if (*v1272 >= *(v1272 + 24))
                {
                  v1285 = *(v1272 + 16);
                  *v1272 = v1285;
                }

                v1287 = *v1286++;
                v1284 = v1287;
              }

              while (v1287);
            }

            break;
          case 56:
            v1283 = "  E ";
            goto LABEL_2216;
        }
      }

      else if (v1282 > 164)
      {
        if (v1282 == 165)
        {
          v1283 = "  N ";
          goto LABEL_2216;
        }

        if (v1282 == 179)
        {
          v1283 = "  S ";
          goto LABEL_2216;
        }
      }

      else
      {
        if (v1282 == 92)
        {
          v1283 = "  B ";
          goto LABEL_2216;
        }

        if (v1282 == 155)
        {
          v1283 = "  Q ";
          goto LABEL_2216;
        }
      }

      v1288 = Num_Prn_Idx_To_GNSS_Id(v1282);
      sprintf_4d(v1272, v1288);
      if (++v1282 == 218)
      {
        v1289 = (*v1272)++;
        *v1289 = 10;
        if (*v1272 >= *(v1272 + 24))
        {
          *v1272 = *(v1272 + 16);
        }

        GNSS_Nav_Debug_Flush_Check(v1272);
        break;
      }
    }
  }

  v1290 = *v1272;
  v1291 = 69;
  v1292 = 1u;
  do
  {
    *v1272 = v1290 + 1;
    *v1290 = v1291;
    v1290 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1290 = *(v1272 + 16);
      *v1272 = v1290;
    }

    v1291 = aElev[v1292++];
  }

  while (v1292 != 6);
  sprintf_8d(v1272, v1469);
  v1293 = (*v1272)++;
  *v1293 = 32;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  v1294 = 0;
  while (2)
  {
    if (v1294 <= 91)
    {
      switch(v1294)
      {
        case 0:
          v1295 = "  G ";
          goto LABEL_2248;
        case 32:
          v1295 = "  R ";
          goto LABEL_2248;
        case 56:
          v1295 = "  E ";
          goto LABEL_2248;
      }
    }

    else if (v1294 > 164)
    {
      if (v1294 == 165)
      {
        v1295 = "  N ";
        goto LABEL_2248;
      }

      if (v1294 == 179)
      {
        v1295 = "  S ";
        goto LABEL_2248;
      }
    }

    else
    {
      if (v1294 == 92)
      {
        v1295 = "  B ";
        goto LABEL_2248;
      }

      if (v1294 == 155)
      {
        v1295 = "  Q ";
LABEL_2248:
        v1296 = *v1295;
        if (*v1295)
        {
          v1297 = *v1272;
          v1298 = (v1295 + 1);
          do
          {
            *v1272 = v1297 + 1;
            *v1297 = v1296;
            v1297 = *v1272;
            if (*v1272 >= *(v1272 + 24))
            {
              v1297 = *(v1272 + 16);
              *v1272 = v1297;
            }

            v1299 = *v1298++;
            v1296 = v1299;
          }

          while (v1299);
        }
      }
    }

    sprintf_4d(v1272, *(v1277 + v1294++));
    if (v1294 != 218)
    {
      continue;
    }

    break;
  }

  v1300 = (*v1272)++;
  *v1300 = 10;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1272);
  v1301 = *v1272;
  v1302 = 65;
  v1303 = 1u;
  do
  {
    *v1272 = v1301 + 1;
    *v1301 = v1302;
    v1301 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1301 = *(v1272 + 16);
      *v1272 = v1301;
    }

    v1302 = aAzim[v1303++];
  }

  while (v1303 != 6);
  sprintf_8d(v1272, v1469);
  v1304 = (*v1272)++;
  *v1304 = 32;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  v1305 = 0;
  v1306 = v1277 + 218;
  while (2)
  {
    if (v1305 <= 91)
    {
      switch(v1305)
      {
        case 0:
          v1307 = "  G ";
          goto LABEL_2279;
        case 32:
          v1307 = "  R ";
          goto LABEL_2279;
        case 56:
          v1307 = "  E ";
          goto LABEL_2279;
      }
    }

    else if (v1305 > 164)
    {
      if (v1305 == 165)
      {
        v1307 = "  N ";
        goto LABEL_2279;
      }

      if (v1305 == 179)
      {
        v1307 = "  S ";
        goto LABEL_2279;
      }
    }

    else
    {
      if (v1305 == 92)
      {
        v1307 = "  B ";
        goto LABEL_2279;
      }

      if (v1305 == 155)
      {
        v1307 = "  Q ";
LABEL_2279:
        v1308 = *v1307;
        if (*v1307)
        {
          v1309 = *v1272;
          v1310 = (v1307 + 1);
          do
          {
            *v1272 = v1309 + 1;
            *v1309 = v1308;
            v1309 = *v1272;
            if (*v1272 >= *(v1272 + 24))
            {
              v1309 = *(v1272 + 16);
              *v1272 = v1309;
            }

            v1311 = *v1310++;
            v1308 = v1311;
          }

          while (v1311);
        }
      }
    }

    sprintf_4d(v1272, *(v1306 + 2 * v1305++));
    if (v1305 != 218)
    {
      continue;
    }

    break;
  }

  v1312 = (*v1272)++;
  *v1312 = 10;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1272);
  v1313 = *v1272;
  v1314 = 83;
  v1315 = 1u;
  do
  {
    *v1272 = v1313 + 1;
    *v1313 = v1314;
    v1313 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1313 = *(v1272 + 16);
      *v1272 = v1313;
    }

    v1314 = aSidx[v1315++];
  }

  while (v1315 != 6);
  sprintf_8d(v1272, v1469);
  v1316 = (*v1272)++;
  *v1316 = 32;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  v1317 = 0;
  while (2)
  {
    if (v1317 <= 91)
    {
      switch(v1317)
      {
        case 0:
          v1318 = "  G ";
          goto LABEL_2310;
        case 32:
          v1318 = "  R ";
          goto LABEL_2310;
        case 56:
          v1318 = "  E ";
          goto LABEL_2310;
      }
    }

    else if (v1317 > 164)
    {
      if (v1317 == 165)
      {
        v1318 = "  N ";
        goto LABEL_2310;
      }

      if (v1317 == 179)
      {
        v1318 = "  S ";
        goto LABEL_2310;
      }
    }

    else
    {
      if (v1317 == 92)
      {
        v1318 = "  B ";
        goto LABEL_2310;
      }

      if (v1317 == 155)
      {
        v1318 = "  Q ";
LABEL_2310:
        v1319 = *v1318;
        if (*v1318)
        {
          v1320 = *v1272;
          v1321 = (v1318 + 1);
          do
          {
            *v1272 = v1320 + 1;
            *v1320 = v1319;
            v1320 = *v1272;
            if (*v1272 >= *(v1272 + 24))
            {
              v1320 = *(v1272 + 16);
              *v1272 = v1320;
            }

            v1322 = *v1321++;
            v1319 = v1322;
          }

          while (v1322);
        }
      }
    }

    sprintf_4d(v1272, *(v1467 + 5976 + v1317++));
    if (v1317 != 218)
    {
      continue;
    }

    break;
  }

  v1323 = (*v1272)++;
  *v1323 = 10;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1272);
  if (g_Logging_Cfg > 6)
  {
    v1324 = a1[7];
    v1465 = a1[9];
    v1325 = 72;
    v1326 = 1u;
    v1327 = *v1272;
    do
    {
      *v1272 = v1327 + 1;
      *v1327 = v1325;
      v1327 = *v1272;
      if (*v1272 >= *(v1272 + 24))
      {
        v1327 = *(v1272 + 16);
        *v1272 = v1327;
      }

      v1325 = aHL1[v1326++];
    }

    while (v1326 != 6);
    sprintf_8d(v1272, v1469);
    v1328 = (*v1272)++;
    *v1328 = 32;
    if (*v1272 >= *(v1272 + 24))
    {
      *v1272 = *(v1272 + 16);
    }

    v1329 = 0;
    while (2)
    {
      if (v1329 <= 91)
      {
        switch(v1329)
        {
          case 0:
            v1330 = "  G ";
            goto LABEL_2342;
          case 32:
            v1330 = "  R ";
            goto LABEL_2342;
          case 56:
            v1330 = "  E ";
            goto LABEL_2342;
        }
      }

      else if (v1329 > 164)
      {
        if (v1329 == 165)
        {
          v1330 = "  N ";
          goto LABEL_2342;
        }

        if (v1329 == 179)
        {
          v1330 = "  S ";
          goto LABEL_2342;
        }
      }

      else
      {
        if (v1329 == 92)
        {
          v1330 = "  B ";
          goto LABEL_2342;
        }

        if (v1329 == 155)
        {
          v1330 = "  Q ";
LABEL_2342:
          v1331 = *v1330;
          if (*v1330)
          {
            v1332 = *v1272;
            v1333 = (v1330 + 1);
            do
            {
              *v1272 = v1332 + 1;
              *v1332 = v1331;
              v1332 = *v1272;
              if (*v1272 >= *(v1272 + 24))
              {
                v1332 = *(v1272 + 16);
                *v1272 = v1332;
              }

              v1334 = *v1333++;
              v1331 = v1334;
            }

            while (v1334);
          }
        }
      }

      sprintf_4d(v1272, *(v1324 + 50616 + v1329++));
      if (v1329 != 218)
      {
        continue;
      }

      break;
    }

    v1335 = (*v1272)++;
    *v1335 = 10;
    if (*v1272 >= *(v1272 + 24))
    {
      *v1272 = *(v1272 + 16);
    }

    GNSS_Nav_Debug_Flush_Check(v1272);
    v1336 = *v1272;
    v1337 = 72;
    v1338 = 1u;
    do
    {
      *v1272 = v1336 + 1;
      *v1336 = v1337;
      v1336 = *v1272;
      if (*v1272 >= *(v1272 + 24))
      {
        v1336 = *(v1272 + 16);
        *v1272 = v1336;
      }

      v1337 = aHL5[v1338++];
    }

    while (v1338 != 6);
    sprintf_8d(v1272, v1469);
    v1339 = (*v1272)++;
    *v1339 = 32;
    if (*v1272 >= *(v1272 + 24))
    {
      *v1272 = *(v1272 + 16);
    }

    v1340 = 0;
    while (2)
    {
      if (v1340 <= 91)
      {
        switch(v1340)
        {
          case 0:
            v1341 = "  G ";
            goto LABEL_2373;
          case 32:
            v1341 = "  R ";
            goto LABEL_2373;
          case 56:
            v1341 = "  E ";
            goto LABEL_2373;
        }
      }

      else if (v1340 > 164)
      {
        if (v1340 == 165)
        {
          v1341 = "  N ";
          goto LABEL_2373;
        }

        if (v1340 == 179)
        {
          v1341 = "  S ";
          goto LABEL_2373;
        }
      }

      else
      {
        if (v1340 == 92)
        {
          v1341 = "  B ";
          goto LABEL_2373;
        }

        if (v1340 == 155)
        {
          v1341 = "  Q ";
LABEL_2373:
          v1342 = *v1341;
          if (*v1341)
          {
            v1343 = *v1272;
            v1344 = (v1341 + 1);
            do
            {
              *v1272 = v1343 + 1;
              *v1343 = v1342;
              v1343 = *v1272;
              if (*v1272 >= *(v1272 + 24))
              {
                v1343 = *(v1272 + 16);
                *v1272 = v1343;
              }

              v1345 = *v1344++;
              v1342 = v1345;
            }

            while (v1345);
          }
        }
      }

      sprintf_4d(v1272, *(v1324 + 50834 + v1340++));
      if (v1340 == 218)
      {
        v1346 = (*v1272)++;
        *v1346 = 10;
        if (*v1272 >= *(v1272 + 24))
        {
          *v1272 = *(v1272 + 16);
        }

        GNSS_Nav_Debug_Flush_Check(v1272);
        v1347 = *v1272;
        v1348 = 73;
        v1349 = 1u;
        do
        {
          *v1272 = v1347 + 1;
          *v1347 = v1348;
          v1347 = *v1272;
          if (*v1272 >= *(v1272 + 24))
          {
            v1347 = *(v1272 + 16);
            *v1272 = v1347;
          }

          v1348 = aIL1[v1349++];
        }

        while (v1349 != 6);
        sprintf_8d(v1272, v1469);
        v1350 = (*v1272)++;
        *v1350 = 32;
        if (*v1272 >= *(v1272 + 24))
        {
          *v1272 = *(v1272 + 16);
        }

        v1351 = 0;
        while (2)
        {
          if (v1351 <= 91)
          {
            switch(v1351)
            {
              case 0:
                v1352 = "  G ";
                goto LABEL_2404;
              case 32:
                v1352 = "  R ";
                goto LABEL_2404;
              case 56:
                v1352 = "  E ";
                goto LABEL_2404;
            }
          }

          else if (v1351 > 164)
          {
            if (v1351 == 165)
            {
              v1352 = "  N ";
              goto LABEL_2404;
            }

            if (v1351 == 179)
            {
              v1352 = "  S ";
              goto LABEL_2404;
            }
          }

          else
          {
            if (v1351 == 92)
            {
              v1352 = "  B ";
              goto LABEL_2404;
            }

            if (v1351 == 155)
            {
              v1352 = "  Q ";
LABEL_2404:
              v1353 = *v1352;
              if (*v1352)
              {
                v1354 = *v1272;
                v1355 = (v1352 + 1);
                do
                {
                  *v1272 = v1354 + 1;
                  *v1354 = v1353;
                  v1354 = *v1272;
                  if (*v1272 >= *(v1272 + 24))
                  {
                    v1354 = *(v1272 + 16);
                    *v1272 = v1354;
                  }

                  v1356 = *v1355++;
                  v1353 = v1356;
                }

                while (v1356);
              }
            }
          }

          sprintf_4d(v1272, *(v1465 + 265 + v1351++));
          if (v1351 != 218)
          {
            continue;
          }

          break;
        }

        v1357 = (*v1272)++;
        *v1357 = 10;
        if (*v1272 >= *(v1272 + 24))
        {
          *v1272 = *(v1272 + 16);
        }

        GNSS_Nav_Debug_Flush_Check(v1272);
        v1358 = *v1272;
        v1359 = 73;
        v1360 = 1u;
        do
        {
          *v1272 = v1358 + 1;
          *v1358 = v1359;
          v1358 = *v1272;
          if (*v1272 >= *(v1272 + 24))
          {
            v1358 = *(v1272 + 16);
            *v1272 = v1358;
          }

          v1359 = aIL5[v1360++];
        }

        while (v1360 != 6);
        sprintf_8d(v1272, v1469);
        v1361 = (*v1272)++;
        *v1361 = 32;
        if (*v1272 >= *(v1272 + 24))
        {
          *v1272 = *(v1272 + 16);
        }

        v1362 = 0;
        while (2)
        {
          if (v1362 <= 91)
          {
            switch(v1362)
            {
              case 0:
                v1363 = "  G ";
                goto LABEL_2435;
              case 32:
                v1363 = "  R ";
                goto LABEL_2435;
              case 56:
                v1363 = "  E ";
                goto LABEL_2435;
            }
          }

          else if (v1362 > 164)
          {
            if (v1362 == 165)
            {
              v1363 = "  N ";
              goto LABEL_2435;
            }

            if (v1362 == 179)
            {
              v1363 = "  S ";
              goto LABEL_2435;
            }
          }

          else
          {
            if (v1362 == 92)
            {
              v1363 = "  B ";
              goto LABEL_2435;
            }

            if (v1362 == 155)
            {
              v1363 = "  Q ";
LABEL_2435:
              v1364 = *v1363;
              if (*v1363)
              {
                v1365 = *v1272;
                v1366 = (v1363 + 1);
                do
                {
                  *v1272 = v1365 + 1;
                  *v1365 = v1364;
                  v1365 = *v1272;
                  if (*v1272 >= *(v1272 + 24))
                  {
                    v1365 = *(v1272 + 16);
                    *v1272 = v1365;
                  }

                  v1367 = *v1366++;
                  v1364 = v1367;
                }

                while (v1367);
              }
            }
          }

          sprintf_4d(v1272, *(v1465 + 544 + v1362++));
          if (v1362 == 218)
          {
            v1368 = (*v1272)++;
            *v1368 = 10;
            if (*v1272 >= *(v1272 + 24))
            {
              *v1272 = *(v1272 + 16);
            }

            GNSS_Nav_Debug_Flush_Check(v1272);
            goto LABEL_2444;
          }

          continue;
        }
      }

      continue;
    }
  }

LABEL_2444:
  v1369 = *v1272;
  v1370 = 75;
  v1371 = 1u;
  do
  {
    *v1272 = v1369 + 1;
    *v1369 = v1370;
    v1369 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1369 = *(v1272 + 16);
      *v1272 = v1369;
    }

    v1370 = aKvis[v1371++];
  }

  while (v1371 != 6);
  sprintf_8d(v1272, v1469);
  v1372 = *v1272;
  v1373 = 32;
  v1374 = 1u;
  do
  {
    *v1272 = v1372 + 1;
    *v1372 = v1373;
    v1372 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1372 = *(v1272 + 16);
      *v1272 = v1372;
    }

    v1373 = asc_299059803[v1374++];
  }

  while (v1374 != 6);
  v1375 = 0;
  v1376 = *(v1467 + 8592);
  v1377 = v1467 + 6194;
  if (v1376 >= 0xD2)
  {
    v1378 = 218;
  }

  else
  {
    v1378 = v1376 + 8;
  }

  do
  {
    if (v1375 == *(v1467 + 8592))
    {
      v1379 = 0;
      v1380 = *v1272;
      v1381 = 32;
      do
      {
        *v1272 = v1380 + 1;
        *v1380 = v1381;
        v1380 = *v1272;
        if (*v1272 >= *(v1272 + 24))
        {
          v1380 = *(v1272 + 16);
          *v1272 = v1380;
        }

        v1381 = asc_299059809[++v1379];
      }

      while (v1379 != 4);
    }

    sprintf_4d(v1272, *(v1377 + 2 * v1375++));
  }

  while (v1375 != v1378);
  v1382 = (*v1272)++;
  *v1382 = 10;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1272);
  v1383 = *v1272;
  v1384 = 77;
  v1385 = 1u;
  do
  {
    *v1272 = v1383 + 1;
    *v1383 = v1384;
    v1383 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1383 = *(v1272 + 16);
      *v1272 = v1383;
    }

    v1384 = aMvis[v1385++];
  }

  while (v1385 != 6);
  sprintf_8d(v1272, v1469);
  v1386 = *v1272;
  v1387 = 32;
  v1388 = 1u;
  do
  {
    *v1272 = v1386 + 1;
    *v1386 = v1387;
    v1386 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1386 = *(v1272 + 16);
      *v1272 = v1386;
    }

    v1387 = asc_299059803[v1388++];
  }

  while (v1388 != 6);
  v1389 = 0;
  v1390 = *(v1467 + 8593);
  if (v1390 >= 0xD2)
  {
    v1391 = 218;
  }

  else
  {
    v1391 = v1390 + 8;
  }

  do
  {
    if (v1389 == *(v1467 + 8593))
    {
      v1392 = 0;
      v1393 = *v1272;
      v1394 = 32;
      do
      {
        *v1272 = v1393 + 1;
        *v1393 = v1394;
        v1393 = *v1272;
        if (*v1272 >= *(v1272 + 24))
        {
          v1393 = *(v1272 + 16);
          *v1272 = v1393;
        }

        v1394 = asc_299059809[++v1392];
      }

      while (v1392 != 4);
    }

    sprintf_4d(v1272, *(v1467 + 6630 + 2 * v1389++));
  }

  while (v1389 != v1391);
  v1395 = (*v1272)++;
  *v1395 = 10;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1272);
  v1396 = *v1272;
  v1397 = 65;
  v1398 = 1u;
  do
  {
    *v1272 = v1396 + 1;
    *v1396 = v1397;
    v1396 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1396 = *(v1272 + 16);
      *v1272 = v1396;
    }

    v1397 = aAaok[v1398++];
  }

  while (v1398 != 6);
  sprintf_8d(v1272, v1469);
  v1399 = *v1272;
  v1400 = 32;
  v1401 = 1u;
  do
  {
    *v1272 = v1399 + 1;
    *v1399 = v1400;
    v1399 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1399 = *(v1272 + 16);
      *v1272 = v1399;
    }

    v1400 = asc_299059803[v1401++];
  }

  while (v1401 != 6);
  v1402 = 0;
  v1403 = *(v1467 + 8596);
  if (v1403 >= 0x73)
  {
    v1404 = 123;
  }

  else
  {
    v1404 = v1403 + 8;
  }

  do
  {
    if (v1402 == *(v1467 + 8596))
    {
      v1405 = 0;
      v1406 = *v1272;
      v1407 = 32;
      do
      {
        *v1272 = v1406 + 1;
        *v1406 = v1407;
        v1406 = *v1272;
        if (*v1272 >= *(v1272 + 24))
        {
          v1406 = *(v1272 + 16);
          *v1272 = v1406;
        }

        v1407 = asc_299059809[++v1405];
      }

      while (v1405 != 4);
    }

    sprintf_4d(v1272, *(v1467 + 72 + 48 * v1402++ + 4));
  }

  while (v1402 != v1404);
  v1408 = (*v1272)++;
  *v1408 = 10;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  GNSS_Nav_Debug_Flush_Check(v1272);
  v1409 = *v1272;
  v1410 = 86;
  v1411 = 1u;
  do
  {
    *v1272 = v1409 + 1;
    *v1409 = v1410;
    v1409 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1409 = *(v1272 + 16);
      *v1272 = v1409;
    }

    v1410 = aViz[v1411++];
  }

  while (v1411 != 6);
  sprintf_8d(v1272, v1469);
  sprintf_5d(v1272, *(v1467 + 8592));
  sprintf_4d(v1272, *(v1467 + 8593));
  sprintf_4d(v1272, *(v1467 + 8594));
  sprintf_4d(v1272, *(v1467 + 8595));
  sprintf_4d(v1272, *(v1467 + 8596));
  if (*(v1467 + 8592))
  {
    v1412 = 0;
    do
    {
      v1505[0] = 0;
      v1413 = *(v1377 + 2 * v1412);
      if (v1413 < 1)
      {
        v1418 = 0;
        v1419 = *v1272;
        v1420 = 32;
        do
        {
          *v1272 = v1419 + 1;
          *v1419 = v1420;
          v1419 = *v1272;
          if (*v1272 >= *(v1272 + 24))
          {
            v1419 = *(v1272 + 16);
            *v1272 = v1419;
          }

          v1420 = aX[++v1418];
        }

        while (v1418 != 2);
        v1414 = *(v1377 + 2 * v1412);
      }

      else
      {
        v1414 = LongPrnIdx_To_Prn(v1413 - 1, v1505);
        v1415 = (*v1272)++;
        *v1415 = 32;
        v1416 = *v1272;
        if (*v1272 >= *(v1272 + 24))
        {
          v1416 = *(v1272 + 16);
        }

        v1417 = ch_CONSTELL_ID[v1505[0]];
        *v1272 = v1416 + 1;
        *v1416 = v1417;
        if (*v1272 >= *(v1272 + 24))
        {
          *v1272 = *(v1272 + 16);
        }
      }

      if (v1414 >= 0)
      {
        v1421 = v1414;
      }

      else
      {
        v1421 = -v1414;
      }

      sprintf1da(v1272, v1421, v1474, 0, v1414 >> 31);
      ++v1412;
    }

    while (v1412 < *(v1467 + 8592));
  }

  v1422 = 0;
  v1423 = *v1272;
  v1424 = 32;
  do
  {
    *v1272 = v1423 + 1;
    *v1423 = v1424;
    v1423 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1423 = *(v1272 + 16);
      *v1272 = v1423;
    }

    v1424 = aGfvz[++v1422];
  }

  while (v1422 != 8);
  sprintf_4d(v1272, *(v1467 + 8671));
  sprintf_3d(v1272, *(v1467 + 8670));
  v1425 = 0;
  v1426 = *v1272;
  v1427 = 32;
  do
  {
    *v1272 = v1426 + 1;
    *v1426 = v1427;
    v1426 = *v1272;
    if (*v1272 >= *(v1272 + 24))
    {
      v1426 = *(v1272 + 16);
      *v1272 = v1426;
    }

    v1427 = asc_299059399[++v1425];
  }

  while (v1425 != 2);
  for (i9 = 0; i9 != 14; ++i9)
  {
    sprintf_3d(v1272, *(v1467 + 8656 + i9));
  }

  v1429 = (*v1272)++;
  *v1429 = 10;
  if (*v1272 >= *(v1272 + 24))
  {
    *v1272 = *(v1272 + 16);
  }

  return GNSS_Nav_Debug_Flush_Check(v1272);
}