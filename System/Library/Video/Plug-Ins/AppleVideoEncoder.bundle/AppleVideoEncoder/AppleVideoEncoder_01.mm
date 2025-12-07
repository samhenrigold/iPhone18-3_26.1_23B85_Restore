uint64_t sub_16960(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  if (sub_160EF0(0xD3u, 6))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x\n", v13, 211, v14, "AVE_SEI", "Init", a1, a2, a3, a4, a5, a6);
      v15 = sub_175AE4();
      v51 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", v15, 211, v51, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", v13, 211, v14, "AVE_SEI");
    }
  }

  *a1 = a2;
  if (a4 < 0)
  {
    v16 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v17 = sub_160F34(0xD3u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d\n", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
        v20 = sub_175AE4();
        v16 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v20, 211, v21, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
        v16 = 4;
      }
    }

    v26 = 4294966295;
  }

  else
  {
    if (a4)
    {
      ++a4;
    }

    else if (sub_160EF0(0xD3u, 6))
    {
      v22 = sub_160F34(0xD3u);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d\n", v23, 211, v24, "AVE_SEI", "Init", 95, a1, *a1, 49);
        v25 = sub_175AE4();
        v52 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d", v25, 211, v52);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d", v23, 211, v24);
      }

      a4 = 49;
    }

    else
    {
      a4 = 49;
    }

    a1[1] = a3;
    v27 = operator new(0x48uLL, &std::nothrow);
    if (v27)
    {
      v29 = v27;
      sub_13419C(v27, v28);
      v30 = sub_1344E0(v29, 0, a4, 248, 0, 0);
      if (v30)
      {
        v31 = v30;
        if (sub_160EF0(0xD3u, 4))
        {
          v32 = sub_160F34(0xD3u);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d\n", v33, 211, v34, "AVE_SEI", "Init", 112, "ret == 0", a1, *a1, a4, v31);
            v35 = sub_175AE4();
            v53 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d", v35, 211, v53, "AVE_SEI");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d", v33, 211, v34, "AVE_SEI");
          }
        }

        goto LABEL_37;
      }

      a1[5] = v29;
      *(a1 + 6) = a4;
      v41 = sub_13DB68();
      if (!v41)
      {
        if (sub_160EF0(0xD3u, 4))
        {
          v42 = sub_160F34(0xD3u);
          v43 = sub_175AE4();
          v44 = sub_160F68(4);
          if (v42)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d\n", v43, 211, v44, "AVE_SEI", "Init", 120, "pMutex != __null", a1, *a1, 0);
            v45 = sub_175AE4();
            v54 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d", v45, 211, v54, "AVE_SEI");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d", v43, 211, v44, "AVE_SEI");
          }
        }

LABEL_37:
        sub_1344B4(v29);
        operator delete();
      }

      v26 = 0;
      a1[4] = v41;
      v16 = 6;
      *(a1 + 4) = a6;
      *(a1 + 5) = a5;
    }

    else
    {
      v16 = 4;
      if (sub_160EF0(0xD3u, 4))
      {
        v36 = sub_160F34(0xD3u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v36)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d\n", v37, 211, v38, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v39 = sub_175AE4();
          v16 = 4;
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v39, 211, v40, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v37, 211, v38, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v16 = 4;
        }
      }

      v26 = 4294966293;
    }
  }

  if (sub_160EF0(0xD3u, v16))
  {
    v46 = sub_160F34(0xD3u);
    v47 = sub_175AE4();
    v48 = sub_160F68(v16);
    if (v46)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d\n", v47, 211, v48, "AVE_SEI", "Init", a1, a2, a3, a4, a5, a6, v26);
      v49 = sub_175AE4();
      v55 = sub_160F68(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v49, 211, v55, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v47, 211, v48, "AVE_SEI");
    }
  }

  return v26;
}

uint64_t sub_171A0(void *a1, uint64_t *a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p\n", v5, 211, v6, "AVE_SEI", "RemoveFrame", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p", v5, 211);
  }

  sub_CB424(a2);
  v7 = a2[27];
  if (v7)
  {
    CFRelease(v7);
  }

  a2[30] = 0;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v8 = sub_135770(a1[5], a2);
  if (v8)
  {
    v9 = 4;
  }

  else
  {
    v9 = 7;
  }

  if (sub_160EF0(0xD3u, v9))
  {
    v10 = sub_160F34(0xD3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(v9);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d\n", v11, 211, v12, "AVE_SEI", "RemoveFrame", a1, *a1, a2, v8);
      v13 = sub_175AE4();
      v15 = sub_160F68(v9);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d", v13, 211, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d", v11, 211, v12);
    }
  }

  return v8;
}

uint64_t sub_173E4(void *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 6))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx\n", v5, 211, v6, "AVE_SEI", "SetSEIBits", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx", v5, 211);
  }

  sub_13DC18(a1[4]);
  a1[1] = a2;
  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, 6))
  {
    v7 = sub_160F34(0xD3u);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d\n", v8, 211, v9, "AVE_SEI", "SetSEIBits", a1, *a1, a2, 0);
      v10 = sub_175AE4();
      v12 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d", v10, 211, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d", v8, 211, v9);
    }
  }

  return 0;
}

uint64_t sub_175D4(void *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "DeleteFrame", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v7 = sub_13DC18(a1[4]);
  v8 = sub_17800(a1, a2);
  if (v8)
  {
    v7 = sub_171A0(a1, v8);
  }

  sub_13DC4C(a1[4]);
  if (v7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 7;
  }

  if (sub_160EF0(0xD3u, v9))
  {
    v10 = sub_160F34(0xD3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(v9);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v11, 211, v12, "AVE_SEI", "DeleteFrame", a1, *a1, a2, v7);
      v13 = sub_175AE4();
      v15 = sub_160F68(v9);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v13, 211, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v11, 211, v12);
    }
  }

  return v7;
}

void *sub_17800(void *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v5 = sub_160F34(0xD3u);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v6, 211, v7, "AVE_SEI", "FindFrame", a1, *a1, a2);
      v6 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v6, 211);
  }

  v8 = sub_CB5C0((a1 + 6), v4);
  if (v8 != sub_CB5DC((a1 + 6), v9))
  {
    while (!sub_160EF0(0xD3u, 8))
    {
LABEL_17:
      if (v8[3] == a2)
      {
        goto LABEL_20;
      }

      v8 = sub_CB408(v8, v10);
      if (v8 == sub_CB5DC((a1 + 6), v18))
      {
        goto LABEL_19;
      }
    }

    v11 = sub_160F34(0xD3u);
    v12 = sub_175AE4();
    v13 = sub_160F68(8);
    if (v11)
    {
      if (v8)
      {
        v14 = v8[3];
        v15 = v8[4];
      }

      else
      {
        v14 = -1;
        v15 = -1;
      }

      printf("%lld %d AVE %s: %s::%s node: %p num: %lld, bits: 0x%016llx\n", v12, 211, v13, "AVE_SEI", "FindFrame", v8, v14, v15);
      v12 = sub_175AE4();
      v13 = sub_160F68(8);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else if (!v8)
    {
LABEL_15:
      v16 = -1;
      v17 = -1;
      goto LABEL_16;
    }

    v16 = v8[3];
    v17 = v8[4];
LABEL_16:
    syslog(3, "%lld %d AVE %s: %s::%s node: %p num: %lld, bits: 0x%016llx", v12, 211, v13, "AVE_SEI", "FindFrame", v8, v16, v17);
    goto LABEL_17;
  }

LABEL_19:
  v8 = 0;
LABEL_20:
  if (sub_160EF0(0xD3u, 7))
  {
    v19 = sub_160F34(0xD3u);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p\n", v20, 211, v21, "AVE_SEI", "FindFrame", a1, *a1, a2, v8);
      v22 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p", v22, 211, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p", v20, 211, v21);
    }
  }

  return v8;
}

uint64_t sub_17AF8(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, int a5, int *a6)
{
  v91 = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d\n", v13, 211, v14, "AVE_SEI", "Generate", a1, *a1, a2, a3, a4, a5);
      v15 = sub_175AE4();
      v84 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d", v15, 211, v84, "AVE_SEI", "Generate");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d", v13, 211, v14, "AVE_SEI", "Generate");
    }
  }

  if (a4 && (a5 & 0x80000000) == 0 && a6)
  {
    *a6 = 0;
    sub_13DC18(a1[4]);
    v16 = sub_17800(a1, a2);
    if (v16)
    {
      v17 = v16;
      v18 = a1[1] & a3 & v16[4];
      if (v18)
      {
        v91 = 0;
        v19 = sub_18BEC(a1, a4, (a5 - *a6), v16, v18, &v91);
        if (v19)
        {
          v20 = v19;
          if (!sub_160EF0(0xD3u, 4))
          {
LABEL_24:
            sub_13DC4C(a1[4]);
            v24 = 4;
            goto LABEL_80;
          }

          v21 = sub_160F34(0xD3u);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          if (v21)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 345, "ret == 0", a1, *a1, v20);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
          }

LABEL_23:
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v22, 211, v23, "AVE_SEI");
          goto LABEL_24;
        }

        if (v91 >= 1 && sub_160EF0(0xD3u, 7))
        {
          v31 = sub_160F34(0xD3u);
          v32 = sub_175AE4();
          v33 = sub_160F68(7);
          if (v31)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes\n", v32, 211, v33, "AVE_SEI", "Generate", 349, a1, *a1, v91);
            v34 = sub_175AE4();
            v85 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes", v34, 211, v85);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes", v32, 211, v33);
          }
        }

        v35 = v91;
        v36 = *a6 + v91;
        *a6 = v36;
        v37 = &a4[v35];
        if (*(a1 + 5) == 2)
        {
          v91 = 0;
          v38 = sub_18FF0(a1, v37, (a5 - v36), v17, v18, &v91);
          if (v38)
          {
            v20 = v38;
            if (!sub_160EF0(0xD3u, 4))
            {
              goto LABEL_24;
            }

            v39 = sub_160F34(0xD3u);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
            if (v39)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 361, "ret == 0", a1, *a1, v20);
              v22 = sub_175AE4();
              v23 = sub_160F68(4);
            }

            goto LABEL_23;
          }

          if (v91 >= 1 && sub_160EF0(0xD3u, 7))
          {
            v40 = sub_160F34(0xD3u);
            v87 = sub_175AE4();
            v41 = sub_160F68(7);
            if (v40)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes\n", v87, 211, v41, "AVE_SEI", "Generate", 366, a1, *a1, v91);
              v42 = sub_175AE4();
              v43 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v42, 211, v43);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v87, 211, v41);
            }
          }

          v44 = v91;
          v45 = *a6 + v91;
          *a6 = v45;
          v46 = &v37[v44];
          v91 = 0;
          v47 = sub_1986C(a1, v46, (a5 - v45), v17, v18, &v91);
          if (v47)
          {
            v20 = v47;
            if (!sub_160EF0(0xD3u, 4))
            {
              goto LABEL_24;
            }

            v48 = sub_160F34(0xD3u);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
            if (v48)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 376, "ret == 0", a1, *a1, v20);
              v22 = sub_175AE4();
              v23 = sub_160F68(4);
            }

            goto LABEL_23;
          }

          if (v91 >= 1 && sub_160EF0(0xD3u, 7))
          {
            v49 = sub_160F34(0xD3u);
            v88 = sub_175AE4();
            v50 = sub_160F68(7);
            if (v49)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes\n", v88, 211, v50, "AVE_SEI", "Generate", 381, a1, *a1, v91);
              v51 = sub_175AE4();
              v52 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v51, 211, v52);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v88, 211, v50);
            }
          }

          v53 = v91;
          v54 = *a6 + v91;
          *a6 = v54;
          v55 = &v46[v53];
          v91 = 0;
          v56 = sub_19C4C(a1, v55, (a5 - v54), v17, v18, &v91);
          if (v56)
          {
            v20 = v56;
            if (!sub_160EF0(0xD3u, 4))
            {
              goto LABEL_24;
            }

            v57 = sub_160F34(0xD3u);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
            if (v57)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 390, "ret == 0", a1, *a1, v20);
              v22 = sub_175AE4();
              v23 = sub_160F68(4);
            }

            goto LABEL_23;
          }

          if (v91 >= 1 && sub_160EF0(0xD3u, 7))
          {
            v58 = sub_160F34(0xD3u);
            v89 = sub_175AE4();
            v59 = sub_160F68(7);
            if (v58)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes\n", v89, 211, v59, "AVE_SEI", "Generate", 396, a1, *a1, v91);
              v60 = sub_175AE4();
              v61 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v60, 211, v61);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v89, 211, v59);
            }
          }

          v62 = v91;
          v36 = *a6 + v91;
          *a6 = v36;
          v37 = &v55[v62];
        }

        v91 = 0;
        v63 = sub_1A020(a1, v37, (a5 - v36), v17, v18, &v91);
        if (v63)
        {
          v20 = v63;
          if (!sub_160EF0(0xD3u, 4))
          {
            goto LABEL_24;
          }

          v64 = sub_160F34(0xD3u);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          if (v64)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 407, "ret == 0", a1, *a1, v20);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
          }

          goto LABEL_23;
        }

        if (v91 >= 1 && sub_160EF0(0xD3u, 7))
        {
          v65 = sub_160F34(0xD3u);
          v90 = sub_175AE4();
          v66 = sub_160F68(7);
          if (v65)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes\n", v90, 211, v66, "AVE_SEI", "Generate", 411, a1, *a1, v91);
            v67 = sub_175AE4();
            v68 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v67, 211, v68);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v90, 211, v66);
          }
        }

        v69 = v91;
        v70 = *a6 + v91;
        *a6 = v70;
        v91 = 0;
        v71 = sub_1A3F4(a1, &v37[v69], (a5 - v70), v17, v18, &v91);
        if (v71)
        {
          v20 = v71;
          if (!sub_160EF0(0xD3u, 4))
          {
            goto LABEL_24;
          }

          v72 = sub_160F34(0xD3u);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          if (v72)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 421, "ret == 0", a1, *a1, v20);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
          }

          goto LABEL_23;
        }

        if (v91 >= 1 && sub_160EF0(0xD3u, 7))
        {
          v73 = sub_160F34(0xD3u);
          v74 = sub_175AE4();
          v75 = sub_160F68(7);
          if (v73)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes\n", v74, 211, v75, "AVE_SEI", "Generate", 425, a1, *a1, v91);
            v76 = sub_175AE4();
            v86 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes", v76, 211, v86);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes", v74, 211, v75);
          }
        }

        *a6 += v91;
      }
    }

    sub_13DC4C(a1[4]);
    v20 = 0;
    v24 = 7;
  }

  else
  {
    v24 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v25 = sub_160F34(0xD3u);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      v28 = *a1;
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d\n", v26, 211, v27, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", a1, v28, a6, a4, a5);
        v29 = sub_175AE4();
        v24 = 4;
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v29, 211, v30, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", a1, *a1, a6, a4, a5);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v26, 211, v27, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", a1, v28, a6, a4, a5);
        v24 = 4;
      }
    }

    v20 = 4294966295;
  }

LABEL_80:
  if (sub_160EF0(0xD3u, v24))
  {
    v77 = sub_160F34(0xD3u);
    v78 = sub_175AE4();
    v79 = sub_160F68(v24);
    v80 = *a1;
    if (v77)
    {
      if (a6)
      {
        v81 = *a6;
      }

      else
      {
        v81 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d\n", v78, 211, v79, "AVE_SEI", "Generate", a1, v80, a2, a3, a4, v81, v20);
      v78 = sub_175AE4();
      v79 = sub_160F68(v24);
      v80 = *a1;
      if (a6)
      {
        v82 = *a6;
      }

      else
      {
        v82 = -1;
      }
    }

    else if (a6)
    {
      v82 = *a6;
    }

    else
    {
      v82 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d", v78, 211, v79, "AVE_SEI", "Generate", a1, v80, a2, a3, a4, v82, v20);
  }

  return v20;
}

uint64_t sub_18BEC(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v16, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 1) == 0)
  {
    goto LABEL_19;
  }

  BytePtr = CFDataGetBytePtr(*(a4 + 216));
  Length = CFDataGetLength(*(a4 + 216));
  v20 = sub_D1E10(a2, a3, BytePtr, Length, *(a4 + 24), *(a1 + 5), a1[2] & 1, a6);
  if (!v20)
  {
    if ((a1[2] & 2) != 0)
    {
      v21 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v21 = 0;
LABEL_20:
    v22 = 7;
    goto LABEL_21;
  }

  v21 = v20;
  v22 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v23 = sub_160F34(0xD3u);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d\n", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v26 = sub_175AE4();
      v22 = 4;
      v27 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v26, 211, v27, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v22 = 4;
    }
  }

LABEL_21:
  if (sub_160EF0(0xD3u, v22))
  {
    v28 = sub_160F34(0xD3u);
    v29 = sub_175AE4();
    v30 = sub_160F68(v22);
    v31 = *a1;
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v29, 211, v30, "AVE_SEI", "GenerateISPMetadataNALU", a1, v31, a2, a4, *(a4 + 24), a5, a6, v21);
      v32 = sub_175AE4();
      v33 = sub_160F68(v22);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v32, 211, v33, "AVE_SEI", "GenerateISPMetadataNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v29, 211, v30, "AVE_SEI", "GenerateISPMetadataNALU", a1, v31);
    }
  }

  return v21;
}

uint64_t sub_18FF0(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v65 = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15, a2, a3, a4, *(a4 + 24), a5, a6);
      v16 = sub_175AE4();
      v17 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", v16, 211, v17, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15);
    }
  }

  *a6 = 0;
  v18 = a1[1] & *(a4 + 32);
  v19 = v18 & a5;
  if ((v18 & a5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v22 = sub_D3824(a2, a3, *(a4 + 24), *(a1 + 5), *(a4 + 224), &v65);
  if (v22)
  {
    v20 = v22;
    v21 = 4;
    if (!sub_160EF0(0xD3u, 4))
    {
      goto LABEL_43;
    }

    v23 = sub_160F34(0xD3u);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      v26 = sub_175AE4();
      v21 = 4;
      v27 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v26, 211, v27, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      goto LABEL_43;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
    goto LABEL_20;
  }

  v28 = v65;
  if ((a1[2] & 2) != 0)
  {
    *a2 = bswap32(v65 - 4);
  }

  v29 = *a6 + v28;
  *a6 = v29;
  a2 = (a2 + v28);
  v65 = 0;
  if ((v19 & 4) != 0)
  {
    v30 = sub_D4884(a2, (a3 - v29), *(a4 + 228), *(a4 + 24), *(a1 + 5), &v65);
    if (v30)
    {
      v20 = v30;
      v21 = 4;
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v31 = sub_160F34(0xD3u);
      v32 = sub_175AE4();
      v33 = sub_160F68(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v32, 211, v33, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
        v34 = sub_175AE4();
        v21 = 4;
        v35 = sub_160F68(4);
        v63 = *a1;
        v64 = v20;
        v62 = a1;
        v36 = 2136;
LABEL_32:
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v34, 211, v35, "AVE_SEI", "GenerateTimingInfoMetadata", v36, "ret == 0", v62, v63, v64);
        goto LABEL_43;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v32, 211, v33, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }

    v37 = v65;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v65 - 4);
    }

    v29 = *a6 + v37;
    *a6 = v29;
    a2 = (a2 + v37);
    v65 = 0;
  }

  if ((v19 & 8) != 0)
  {
    v44 = sub_D5818(a2, (a3 - v29), *(a4 + 24), *(a1 + 5), *(a4 + 232) != 0, *(a4 + 236), *(a4 + 224), *(a4 + 240), &v65);
    if (v44)
    {
      v20 = v44;
      v21 = 4;
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v45 = sub_160F34(0xD3u);
      v46 = sub_175AE4();
      v47 = sub_160F68(4);
      if (v45)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v46, 211, v47, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
        v34 = sub_175AE4();
        v21 = 4;
        v35 = sub_160F68(4);
        v63 = *a1;
        v64 = v20;
        v62 = a1;
        v36 = 2160;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v46, 211, v47, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
LABEL_20:
      v21 = 4;
      goto LABEL_43;
    }

    v48 = v65;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v65 - 4);
    }

    v49 = *a6 + v48;
    *a6 = v49;
    a2 = (a2 + v48);
    v65 = 0;
    if ((v19 & 0x10) == 0)
    {
LABEL_6:
      v20 = 0;
LABEL_7:
      v21 = 7;
      goto LABEL_43;
    }

    v50 = sub_D6670(a2, (a3 - v49), *(a4 + 24), *(a4 + 228), *(a1 + 5), &v65);
    if (!v50)
    {
      v61 = v65;
      if ((a1[2] & 2) != 0)
      {
        *a2 = bswap32(v65 - 4);
      }

      v20 = 0;
      *a6 += v61;
      a2 = (a2 + v61);
      goto LABEL_7;
    }

    v20 = v50;
    v21 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v51 = sub_160F34(0xD3u);
      v52 = sub_175AE4();
      v53 = sub_160F68(4);
      if (v51)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v52, 211, v53, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
        v34 = sub_175AE4();
        v21 = 4;
        v35 = sub_160F68(4);
        v63 = *a1;
        v64 = v20;
        v62 = a1;
        v36 = 2178;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v52, 211, v53, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }
  }

  else
  {
    v21 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v38 = sub_160F34(0xD3u);
      v39 = sub_175AE4();
      v40 = sub_160F68(4);
      v41 = *(a4 + 24);
      if (v38)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed\n", v39, 211, v40, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v41);
        v42 = sub_175AE4();
        v21 = 4;
        v43 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v42, 211, v43, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, *(a4 + 24));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v39, 211, v40, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v41);
        v21 = 4;
      }
    }

    v20 = 4294966296;
  }

LABEL_43:
  if (sub_160EF0(0xD3u, v21))
  {
    v54 = sub_160F34(0xD3u);
    v55 = sub_175AE4();
    v56 = sub_160F68(v21);
    v57 = *a1;
    if (v54)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d\n", v55, 211, v56, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v57, a2, a4, *(a4 + 24), a5, a6, v20);
      v58 = sub_175AE4();
      v59 = sub_160F68(v21);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v58, 211, v59, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v55, 211, v56, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v57);
    }
  }

  return v20;
}

uint64_t sub_1986C(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v16, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v18 = sub_D03F0(a2, a3, *(a1 + 5), a6);
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      v19 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = 7;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v21 = sub_160F34(0xD3u);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v24 = sub_175AE4();
      v20 = 4;
      v25 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v24, 211, v25, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (sub_160EF0(0xD3u, v20))
  {
    v26 = sub_160F34(0xD3u);
    v27 = sub_175AE4();
    v28 = sub_160F68(v20);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v19);
      v30 = sub_175AE4();
      v31 = sub_160F68(v20);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v29);
    }
  }

  return v19;
}

uint64_t sub_19C4C(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v16, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x40) == 0)
  {
    goto LABEL_20;
  }

  v34 = 0;
  v18 = sub_CF3D0(a2, a3, (a4 + 148), *(a1 + 5), &v34);
  v19 = v34;
  *a6 = v34;
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v19 - 4);
    }

LABEL_20:
    v20 = 0;
    v25 = 7;
    goto LABEL_23;
  }

  v20 = v18;
  if (sub_160EF0(0xD3u, 4))
  {
    v21 = sub_160F34(0xD3u);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", 2237, "ret == 0", a1, *a1, v20);
      v24 = sub_175AE4();
      v33 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v24, 211, v33, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI");
    }
  }

  v25 = 4;
LABEL_23:
  if (sub_160EF0(0xD3u, v25))
  {
    v26 = sub_160F34(0xD3u);
    v27 = sub_175AE4();
    v28 = sub_160F68(v25);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v20);
      v30 = sub_175AE4();
      v31 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29);
    }
  }

  return v20;
}

uint64_t sub_1A020(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", v13, 211, v14, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v16, a5, a6);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", v13, 211, v14, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x80) == 0)
  {
    goto LABEL_19;
  }

  v18 = sub_D2D18(a2, a3, *(a4 + 24), *(a4 + 60), *(a1 + 5), 1, a6);
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      v19 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = 7;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v21 = sub_160F34(0xD3u);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v24 = sub_175AE4();
      v20 = 4;
      v25 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v24, 211, v25, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (sub_160EF0(0xD3u, v20))
  {
    v26 = sub_160F34(0xD3u);
    v27 = sub_175AE4();
    v28 = sub_160F68(v20);
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateLuxLevelNALU", a1, *a1, a4, *(a4 + 24), a5, a6, v19);
      v29 = sub_175AE4();
      v31 = sub_160F68(v20);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v29, 211, v31, "AVE_SEI", "GenerateLuxLevelNALU", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateLuxLevelNALU", a1);
    }
  }

  return v19;
}

uint64_t sub_1A3F4(uint64_t *a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v174 = a3;
  v176 = xmmword_1831E0;
  if (sub_160EF0(0xD3u, 7))
  {
    v10 = sub_160F34(0xD3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    v13 = *a1;
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p\n", v11, 211, v12, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, v174, a4, a5, a6);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", v14, 211, v15, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, v174, a4, a5, a6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", v11, 211, v12, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, v174, a4, a5, a6);
    }
  }

  *a6 = 0;
  v16 = a4[4] & a1[1];
  if ((a5 & v16 & 0x3FF00000000) == 0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v27 = sub_160F34(0xD3u);
      v28 = sub_175AE4();
      v29 = sub_160F68(7);
      v30 = *a1;
      if (v27)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early\n", v28, 211, v29, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v30);
        v31 = sub_175AE4();
        v32 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v31, 211, v32, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, *a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v28, 211, v29, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v30);
      }
    }

    goto LABEL_21;
  }

  v17 = v16 & a5;
  v18 = sub_22194(a1, a4, v16 & a5);
  if (v18 < 1)
  {
LABEL_21:
    v23 = 0;
    goto LABEL_46;
  }

  v19 = v18;
  v20 = operator new(0x1030uLL, &std::nothrow);
  if (v20)
  {
    v21 = v20;
    sub_1725DC(v20, a2, v174, 0);
    v22 = sub_1727F8(v21);
    if (v22)
    {
      v23 = v22;
      if (sub_160EF0(0xD3u, 4))
      {
        v24 = sub_160F34(0xD3u);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
      }

      goto LABEL_41;
    }

    if (sub_160EF0(0xD3u, 8))
    {
      v36 = sub_160F34(0xD3u);
      v37 = sub_175AE4();
      v38 = sub_160F68(8);
      v39 = *(v21 + 12);
      if (v36)
      {
        printf("%lld %d AVE %s: %s::%s:%d start code %p (%d)\n", v37, 211, v38, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 32) + v39), v39);
        v40 = sub_175AE4();
        v41 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v40, 211, v41, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 32) + *(v21 + 12)), *(v21 + 12));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v37, 211, v38, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 32) + v39), v39);
      }
    }

    v42 = *(a1 + 5);
    if (v42 == 2)
    {
      v48 = sub_CECD0(39, v21);
      if (v48)
      {
        v23 = v48;
        if (sub_160EF0(0xD3u, 4))
        {
          v44 = v21;
          v49 = sub_160F34(0xD3u);
          v50 = sub_175AE4();
          v51 = sub_160F68(4);
          if (v49)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v50, 211, v51, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
            v50 = sub_175AE4();
            v51 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v50, 211, v51, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
          goto LABEL_74;
        }

LABEL_41:
        v52 = 0;
        v53 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      if (v42 != 1)
      {
        if (sub_160EF0(0xD3u, 4))
        {
          v61 = sub_160F34(0xD3u);
          v62 = sub_175AE4();
          v63 = sub_160F68(4);
          v64 = *(a1 + 5);
          if (v61)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL\n", v62, 211, v63, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v64);
            v65 = sub_175AE4();
            v66 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v65, 211, v66, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, *(a1 + 5));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v62, 211, v63, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v64);
          }
        }

        v52 = 0;
        v53 = 0;
        v23 = 4294966295;
        goto LABEL_42;
      }

      v43 = sub_CECC4(v21);
      if (v43)
      {
        v23 = v43;
        if (sub_160EF0(0xD3u, 4))
        {
          v44 = v21;
          v45 = sub_160F34(0xD3u);
          v46 = sub_175AE4();
          v47 = sub_160F68(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v46, 211, v47, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
            v46 = sub_175AE4();
            v47 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v46, 211, v47, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
LABEL_74:
          v52 = 0;
          v53 = 0;
          v21 = v44;
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    if (sub_160EF0(0xD3u, 8))
    {
      v67 = sub_160F34(0xD3u);
      v68 = sub_175AE4();
      v69 = sub_160F68(8);
      v70 = *a1;
      v71 = *(v21 + 12);
      if (v67)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)\n", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v70, (*(v21 + 32) + v71), v71);
        v72 = sub_175AE4();
        v73 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v72, 211, v73, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, *a1, (*(v21 + 32) + *(v21 + 12)), *(v21 + 12));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v70, (*(v21 + 32) + v71), v71);
      }
    }

    sub_1727D0(v21, 5u, 8);
    if (sub_160EF0(0xD3u, 8))
    {
      v74 = sub_160F34(0xD3u);
      v75 = sub_175AE4();
      v76 = sub_160F68(8);
      v77 = *a1;
      v78 = *(v21 + 12);
      if (v74)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)\n", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v77, (*(v21 + 32) + v78), v78);
        v79 = sub_175AE4();
        v80 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v79, 211, v80, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, *a1, (*(v21 + 32) + *(v21 + 12)), *(v21 + 12));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v77, (*(v21 + 32) + v78), v78);
      }
    }

    v81 = malloc_type_malloc(v19, 0x100004077774924uLL);
    if (!v81)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v85 = sub_160F34(0xD3u);
        v86 = sub_175AE4();
        v87 = sub_160F68(4);
        v88 = *a1;
        if (v85)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.\n", v86, 211, v87, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v88);
          v89 = sub_175AE4();
          v90 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v89, 211, v90, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v86, 211, v87, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v88);
        }
      }

      v52 = 0;
      v53 = 0;
      v23 = 4294966293;
      goto LABEL_42;
    }

    v171 = v21;
    v172 = v81;
    if (sub_160EF0(0xD3u, 8))
    {
      v82 = sub_160F34(0xD3u);
      v83 = sub_175AE4();
      v84 = sub_160F68(8);
      if (v82)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer\n", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
        v83 = sub_175AE4();
        v84 = sub_160F68(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
    }

    v91 = 0;
    v92 = &off_1FD8D0;
    v93 = 10;
    v94 = v172;
    do
    {
      if ((v17 >> *(v92 - 2)))
      {
        v175 = 0;
        (*v92)(a4, v94, v19, &v175);
        v94 += v175;
        v19 = (v19 - v175);
        v91 += v175;
      }

      v92 += 2;
      --v93;
    }

    while (v93);
    v170 = v91 + v91 / 2 + 17;
    v52 = malloc_type_malloc(v170, 0x100004077774924uLL);
    if (v52)
    {
      if (sub_160EF0(0xD3u, 8))
      {
        v95 = sub_160F34(0xD3u);
        v96 = sub_175AE4();
        v97 = sub_160F68(8);
        if (v95)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer\n", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v170);
          v96 = sub_175AE4();
          v97 = sub_160F68(8);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v170);
      }

      v104 = operator new(0x1030uLL, &std::nothrow);
      if (v104)
      {
        v105 = v104;
        sub_1725DC(v104, v52, v170, 1);
        v169 = v105;
        v23 = sub_172890(v105, &v176, 0x10u);
        if (v23)
        {
          if (sub_160EF0(0xD3u, 4))
          {
            v106 = sub_160F34(0xD3u);
            v107 = sub_175AE4();
            v108 = sub_160F68(4);
            if (v106)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v107, 211, v108, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
              v107 = sub_175AE4();
              v108 = sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v107, 211, v108, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
          }
        }

        else
        {
          v23 = sub_172890(v105, v172, v91);
          if (v23)
          {
            if (sub_160EF0(0xD3u, 4))
            {
              v112 = sub_160F34(0xD3u);
              v113 = sub_175AE4();
              v114 = sub_160F68(4);
              if (v112)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v113, 211, v114, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
                v113 = sub_175AE4();
                v114 = sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v113, 211, v114, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
            }
          }

          else
          {
            v116 = *(v105 + 12);
            v115 = v169[4];
            if (v115 >= 0)
            {
              v117 = v169[4];
            }

            else
            {
              v117 = v115 + 7;
            }

            v168 = *(v171 + 12);
            v118 = (v116 - (v117 >> 3));
            if (sub_160EF0(0xD3u, 8))
            {
              v119 = sub_160F34(0xD3u);
              v120 = sub_175AE4();
              v121 = sub_160F68(8);
              v122 = *a1;
              v123 = *(v171 + 12);
              if (v119)
              {
                printf("%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)\n", v120, 211, v121, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v122, v116 - (v117 >> 3), (*(v171 + 32) + v123), v123);
                v124 = sub_175AE4();
                v125 = sub_160F68(8);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v124, 211, v125, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, *a1, v118, (*(v171 + 32) + *(v171 + 12)), *(v171 + 12));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v120, 211, v121, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v122, v116 - (v117 >> 3), (*(v171 + 32) + v123), v123);
              }
            }

            v23 = sub_CECE8(v118, v171);
            if (v23)
            {
              if (sub_160EF0(0xD3u, 4))
              {
                v126 = sub_160F34(0xD3u);
                v127 = sub_175AE4();
                v128 = sub_160F68(4);
                if (v126)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v127, 211, v128, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
                  v127 = sub_175AE4();
                  v128 = sub_160F68(4);
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v127, 211, v128, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
              }
            }

            else
            {
              if (sub_160EF0(0xD3u, 8))
              {
                v129 = sub_160F34(0xD3u);
                v130 = sub_175AE4();
                v131 = sub_160F68(8);
                v132 = *a1;
                v133 = *(v171 + 12);
                if (v129)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)\n", v130, 211, v131, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v132, v133 - v168, (*(v171 + 32) + v133), v133);
                  v134 = sub_175AE4();
                  v135 = sub_160F68(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v134, 211, v135, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, *a1, *(v171 + 12) - v168, (*(v171 + 32) + *(v171 + 12)), *(v171 + 12));
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v130, 211, v131, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v132, v133 - v168, (*(v171 + 32) + v133), v133);
                }
              }

              if (sub_160EF0(0xD3u, 8))
              {
                v136 = sub_160F34(0xD3u);
                v137 = sub_175AE4();
                v138 = sub_160F68(8);
                v139 = v169[3];
                if (v136)
                {
                  printf("%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d\n", v137, 211, v138, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v139, v170, *(v171 + 12), v174);
                  v140 = sub_175AE4();
                  v141 = sub_160F68(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v140, 211, v141, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v169[3], v170, *(v171 + 12), v174);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v137, 211, v138, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v139, v170, *(v171 + 12), v174);
                }
              }

              v23 = sub_1728F4(v171, v169);
              if (v23)
              {
                if (sub_160EF0(0xD3u, 4))
                {
                  v142 = sub_160F34(0xD3u);
                  v143 = sub_175AE4();
                  v144 = sub_160F68(4);
                  if (v142)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d\n", v143, 211, v144, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                    v143 = sub_175AE4();
                    v144 = sub_160F68(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d", v143, 211, v144, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                }
              }

              else
              {
                if (sub_160EF0(0xD3u, 8))
                {
                  v145 = sub_160F34(0xD3u);
                  v146 = sub_175AE4();
                  v147 = sub_160F68(8);
                  v148 = *a1;
                  v149 = *(v171 + 12);
                  if (v145)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)\n", v146, 211, v147, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v148, (*(v171 + 32) + v149), v149);
                    v150 = sub_175AE4();
                    v151 = sub_160F68(8);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v150, 211, v151, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, *a1, (*(v171 + 32) + *(v171 + 12)), *(v171 + 12));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v146, 211, v147, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v148, (*(v171 + 32) + v149), v149);
                  }
                }

                v23 = sub_172978(v171);
                if (v23)
                {
                  if (sub_160EF0(0xD3u, 4))
                  {
                    v152 = sub_160F34(0xD3u);
                    v153 = sub_175AE4();
                    v154 = sub_160F68(4);
                    if (v152)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                      v153 = sub_175AE4();
                      v154 = sub_160F68(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                  }
                }

                else
                {
                  if (sub_160EF0(0xD3u, 8))
                  {
                    v155 = sub_160F34(0xD3u);
                    v156 = sub_175AE4();
                    v157 = sub_160F68(8);
                    v158 = *a1;
                    v159 = *(v171 + 12);
                    if (v155)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)\n", v156, 211, v157, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v158, (*(v171 + 32) + v159), v159);
                      v160 = sub_175AE4();
                      v161 = sub_160F68(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v160, 211, v161, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, *a1, (*(v171 + 32) + *(v171 + 12)), *(v171 + 12));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v156, 211, v157, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v158, (*(v171 + 32) + v159), v159);
                    }
                  }

                  *a6 = *(v171 + 12);
                  if (sub_160EF0(0xD3u, 8))
                  {
                    v162 = sub_160F34(0xD3u);
                    v163 = sub_175AE4();
                    v164 = sub_160F68(8);
                    v165 = *a6;
                    if (v162)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d\n", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v165);
                      v166 = sub_175AE4();
                      v167 = sub_160F68(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v166, 211, v167, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, *a6);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v163, 211, v164, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v165);
                    }
                  }

                  v23 = 0;
                  if ((a1[2] & 2) != 0)
                  {
                    *a2 = bswap32(*a6 - 4);
                  }
                }
              }
            }
          }
        }

        v21 = v171;
        v53 = v172;
        (*(*v169 + 8))(v169);
        goto LABEL_42;
      }

      if (sub_160EF0(0xD3u, 4))
      {
        v109 = sub_160F34(0xD3u);
        v110 = sub_175AE4();
        v111 = sub_160F68(4);
        if (v109)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v110, 211, v111, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
          v110 = sub_175AE4();
          v111 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v110, 211, v111, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v98 = sub_160F34(0xD3u);
        v99 = sub_175AE4();
        v100 = sub_160F68(4);
        v101 = *a1;
        if (v98)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed\n", v99, 211, v100, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v101);
          v102 = sub_175AE4();
          v103 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v102, 211, v103, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v99, 211, v100, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v101);
        }
      }

      v52 = 0;
    }

    v23 = 4294966293;
    v21 = v171;
    v53 = v172;
LABEL_42:
    (*(*v21 + 8))(v21);
    if (v52)
    {
      free(v52);
    }

    if (v53)
    {
      free(v53);
    }

    goto LABEL_46;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v33 = sub_160F34(0xD3u);
    v34 = sub_175AE4();
    v35 = sub_160F68(4);
    if (v33)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v34, 211, v35, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
      v34 = sub_175AE4();
      v35 = sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v34, 211, v35, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
  }

  v23 = 4294966293;
LABEL_46:
  if (sub_160EF0(0xD3u, 7))
  {
    v54 = sub_160F34(0xD3u);
    v55 = sub_175AE4();
    v56 = sub_160F68(7);
    v57 = *a1;
    if (v54)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d\n", v55, 211, v56, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v57, a2, v174, a4, a5, a6, *a6, v23);
      v58 = sub_175AE4();
      v59 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v58, 211, v59, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, v174, a4, a5, a6, *a6, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v55, 211, v56, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v57, a2, v174, a4, a5, a6, *a6, v23);
    }
  }

  return v23;
}

uint64_t sub_1C324(void *a1, uint64_t a2, const void *a3)
{
  error = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "SetISPMetadata", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v36 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v36);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
    }
  }

  if (a3 && (v10 = CFGetTypeID(a3), v10 == CFDictionaryGetTypeID()))
  {
    v11 = CFPropertyListCreateData(kCFAllocatorDefault, a3, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v11)
    {
      v12 = v11;
      v13 = sub_13DC18(a1[4]);
      v14 = sub_1C90C(a1, a2);
      if (v14)
      {
        v14[4] |= 1uLL;
        v14[27] = v12;
        sub_13DC4C(a1[4]);
        if (!v13)
        {
          v15 = 7;
          goto LABEL_19;
        }
      }

      else
      {
        if (sub_160EF0(0xD3u, 4))
        {
          v27 = sub_160F34(0xD3u);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetISPMetadata", 496, "pPFData != __null", a1, *a1, a2);
            v30 = sub_175AE4();
            v39 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v30, 211, v39, "AVE_SEI");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
          }
        }

        sub_13DC4C(a1[4]);
        v13 = 4294966296;
      }

      CFRelease(v12);
    }

    else
    {
      if (error)
      {
        Domain = CFErrorGetDomain(error);
        if (Domain)
        {
          CStringPtr = CFStringGetCStringPtr(Domain, 0);
        }

        else
        {
          CStringPtr = 0;
        }

        Code = CFErrorGetCode(error);
      }

      else
      {
        CStringPtr = 0;
        Code = 0;
      }

      if (sub_160EF0(0xD3u, 4))
      {
        v32 = sub_160F34(0xD3u);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p\n", v33, 211, v34, "AVE_SEI", "SetISPMetadata", 487, "false", a1, *a1, a2, CStringPtr, Code, a3);
          v35 = sub_175AE4();
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p", v35, 211, v40, "AVE_SEI", "SetISPMetadata", 487, "false");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p", v33, 211, v34, "AVE_SEI", "SetISPMetadata", 487, "false");
        }
      }

      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 5))
    {
      v16 = sub_160F34(0xD3u);
      v17 = sub_175AE4();
      v18 = sub_160F68(5);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping\n", v17, 211, v18, "AVE_SEI", "SetISPMetadata", 464, "pISPMetadata != NULL && CFGetTypeID(pISPMetadata) == CFDictionaryGetTypeID()", a1, *a1, a3, a2);
        v19 = sub_175AE4();
        v37 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping", v19, 211, v37, "AVE_SEI", "SetISPMetadata");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping", v17, 211, v18, "AVE_SEI", "SetISPMetadata");
      }
    }

    v13 = 4294966295;
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  v15 = 4;
LABEL_19:
  if (sub_160EF0(0xD3u, v15))
  {
    v20 = sub_160F34(0xD3u);
    v21 = sub_175AE4();
    v22 = sub_160F68(v15);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v21, 211, v22, "AVE_SEI", "SetISPMetadata", a1, *a1, a2, a3, v13);
      v23 = sub_175AE4();
      v38 = sub_160F68(v15);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v23, 211, v38, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v21, 211, v22, "AVE_SEI");
    }
  }

  return v13;
}

void *sub_1C90C(void *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 8))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "FindOrCreateFrame", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v15 = sub_17800(a1, a2);
  if (v15)
  {
    v7 = 0;
LABEL_8:
    v8 = 8;
    goto LABEL_11;
  }

  v7 = sub_218D8(a1, a2, &v15);
  if (!v7)
  {
    goto LABEL_8;
  }

  v15 = 0;
  v8 = 4;
LABEL_11:
  if (sub_160EF0(0xD3u, v8))
  {
    v9 = sub_160F34(0xD3u);
    v10 = sub_175AE4();
    v11 = sub_160F68(v8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p\n", v10, 211, v11, "AVE_SEI", "FindOrCreateFrame", a1, *a1, a2, v7, v15);
      v12 = sub_175AE4();
      v14 = sub_160F68(v8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p", v12, 211, v14, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p", v10, 211, v11, "AVE_SEI");
    }
  }

  return v15;
}

uint64_t sub_1CB40(void *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", v5, 211, v6, "AVE_SEI", "SetContentColorVolume", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", v5, 211);
  }

  v7 = sub_13DC18(a1[4]);
  v8 = sub_1C90C(a1, a2);
  if (v8)
  {
    v8[4] |= 0x20uLL;
    sub_13DC4C(a1[4]);
    if (v7)
    {
      v9 = 4;
    }

    else
    {
      v9 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v10 = sub_160F34(0xD3u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v11, 211, v12, "AVE_SEI", "SetContentColorVolume", 539, "pPFData != __null", a1, *a1, a2);
        v13 = sub_175AE4();
        v19 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v13, 211, v19, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v11, 211, v12, "AVE_SEI");
      }
    }

    sub_13DC4C(a1[4]);
    v9 = 4;
    v7 = 4294966296;
  }

  if (sub_160EF0(0xD3u, v9))
  {
    v14 = sub_160F34(0xD3u);
    v15 = sub_175AE4();
    v16 = sub_160F68(v9);
    if (v14)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v15, 211, v16, "AVE_SEI", "SetContentColorVolume", a1, *a1, a2, v7);
      v17 = sub_175AE4();
      v20 = sub_160F68(v9);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v17, 211, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v15, 211, v16);
    }
  }

  return v7;
}

uint64_t sub_1CE6C(void *a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetLuxLevel", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v26 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
    }
  }

  if (a3 <= 0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring\n", v14, 211, v15, "AVE_SEI", "SetLuxLevel", 569, "luxLevel > 0", a3);
        v16 = sub_175AE4();
        sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v16, 211);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v14, 211);
      }
    }

LABEL_16:
    v10 = 0;
    v12 = 7;
    goto LABEL_19;
  }

  v10 = sub_13DC18(a1[4]);
  v11 = sub_1C90C(a1, a2);
  if (v11)
  {
    v11[4] |= 0x80uLL;
    *(v11 + 15) = a3;
    sub_13DC4C(a1[4]);
    if (v10)
    {
      v12 = 4;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v17 = sub_160F34(0xD3u);
    v18 = sub_175AE4();
    v19 = sub_160F68(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v18, 211, v19, "AVE_SEI", "SetLuxLevel", 577, "pPFData != __null", a1, *a1, a2);
      v20 = sub_175AE4();
      v27 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v27, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v19, "AVE_SEI");
    }
  }

  sub_13DC4C(a1[4]);
  v12 = 4;
  v10 = 4294966296;
LABEL_19:
  if (sub_160EF0(0xD3u, v12))
  {
    v21 = sub_160F34(0xD3u);
    v22 = sub_175AE4();
    v23 = sub_160F68(v12);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v22, 211, v23, "AVE_SEI", "SetLuxLevel", a1, *a1, a2, v10);
      v24 = sub_175AE4();
      v28 = sub_160F68(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v24, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v22, 211, v23);
    }
  }

  return v10;
}

uint64_t sub_1D298(void *a1, uint64_t a2, const __CFData *a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "SetAmbientViewingEnvironment", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v32 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
    }
  }

  if (!a3)
  {
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v14 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping", v15, 211, v16);
LABEL_23:
        v13 = 4;
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetAmbientViewingEnvironment", 610, "pViewingEnvironment != __null", a1, *a1);
      v17 = sub_175AE4();
      v13 = 4;
      v33 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping", v17, 211, v33);
    }

LABEL_24:
    v11 = 4294966295;
    goto LABEL_25;
  }

  Length = CFDataGetLength(a3);
  if (Length != 8)
  {
    v18 = Length;
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v19 = sub_160F34(0xD3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld\n", v20, 211, v21, "AVE_SEI", "SetAmbientViewingEnvironment", 617, "dataLength == 8", a1, *a1, v18);
        v22 = sub_175AE4();
        v13 = 4;
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld", v22, 211, v34, "AVE_SEI");
        goto LABEL_24;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld", v20, 211, v21, "AVE_SEI");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v11 = sub_13DC18(a1[4]);
  v12 = sub_1C90C(a1, a2);
  if (v12)
  {
    *(v12 + 4) |= 0x40uLL;
    v37.location = 0;
    v37.length = 8;
    CFDataGetBytes(a3, v37, v12 + 148);
    sub_13DC4C(a1[4]);
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v23 = sub_160F34(0xD3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v24, 211, v25, "AVE_SEI", "SetAmbientViewingEnvironment", 624, "pPFData != __null", a1, *a1, a2);
        v26 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v35, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v24, 211, v25, "AVE_SEI");
      }
    }

    sub_13DC4C(a1[4]);
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_25:
  if (sub_160EF0(0xD3u, v13))
  {
    v27 = sub_160F34(0xD3u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v13);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v28, 211, v29, "AVE_SEI", "SetAmbientViewingEnvironment", a1, *a1, a2, a3, v11);
      v30 = sub_175AE4();
      v36 = sub_160F68(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v30, 211, v36, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v28, 211, v29, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t sub_1D808(void *a1, uint64_t a2, double a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", v7, 211, v8, "AVE_SEI", "SetExposureTime", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", v7, 211);
  }

  if (a3 <= 0.0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v12 = sub_160F34(0xD3u);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring\n", v13, 211, v14, "AVE_SEI", "SetExposureTime", 657, "fExposureTime > 0", a3);
        v13 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring", v13);
    }

LABEL_18:
    v9 = 0;
    v11 = 7;
    goto LABEL_21;
  }

  v9 = sub_13DC18(a1[4]);
  v10 = sub_1C90C(a1, a2);
  if (v10)
  {
    *(v10 + 4) |= 0x100000000uLL;
    v10[8] = a3;
    sub_13DC4C(a1[4]);
    if (v9)
    {
      v11 = 4;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v15 = sub_160F34(0xD3u);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v16, 211, v17, "AVE_SEI", "SetExposureTime", 664, "pPFData != __null", a1, *a1, a2);
      v18 = sub_175AE4();
      v24 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v24, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI");
    }
  }

  sub_13DC4C(a1[4]);
  v11 = 4;
  v9 = 4294966296;
LABEL_21:
  if (sub_160EF0(0xD3u, v11))
  {
    v19 = sub_160F34(0xD3u);
    v20 = sub_175AE4();
    v21 = sub_160F68(v11);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v20, 211, v21, "AVE_SEI", "SetExposureTime", a1, *a1, a2, a3, v9);
      v22 = sub_175AE4();
      v25 = sub_160F68(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v20, 211, v21);
    }
  }

  return v9;
}

uint64_t sub_1DC50(void *a1, uint64_t a2, double a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", v7, 211, v8, "AVE_SEI", "SetSNR", a1, *a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", v7, 211);
  }

  if (a3 <= 0.0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v12 = sub_160F34(0xD3u);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring\n", v13, 211, v14, "AVE_SEI", "SetSNR", 695, "fSNR > 0", a3);
        v13 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring", v13);
    }

LABEL_18:
    v9 = 0;
    v11 = 7;
    goto LABEL_21;
  }

  v9 = sub_13DC18(a1[4]);
  v10 = sub_1C90C(a1, a2);
  if (v10)
  {
    *(v10 + 4) |= 0x200000000uLL;
    v10[9] = a3;
    sub_13DC4C(a1[4]);
    if (v9)
    {
      v11 = 4;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v15 = sub_160F34(0xD3u);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v16, 211, v17, "AVE_SEI", "SetSNR", 702, "pPFData != __null", a1, *a1, a2);
      v18 = sub_175AE4();
      v24 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v24, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI");
    }
  }

  sub_13DC4C(a1[4]);
  v11 = 4;
  v9 = 4294966296;
LABEL_21:
  if (sub_160EF0(0xD3u, v11))
  {
    v19 = sub_160F34(0xD3u);
    v20 = sub_175AE4();
    v21 = sub_160F68(v11);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v20, 211, v21, "AVE_SEI", "SetSNR", a1, *a1, a2, a3, v9);
      v22 = sub_175AE4();
      v25 = sub_160F68(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v20, 211, v21);
    }
  }

  return v9;
}

uint64_t sub_1E098(void *a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v27 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
    }
  }

  if (a3 < 0)
  {
    v12 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d\n", v14, 211, v15, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
        v16 = sub_175AE4();
        v12 = 4;
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d", v16, 211, v17, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d", v14, 211, v15, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = sub_13DC18(a1[4]);
    v11 = sub_1C90C(a1, a2);
    if (v11)
    {
      v11[4] |= 0x400000000uLL;
      *(v11 + 20) = a3;
      sub_13DC4C(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v18 = sub_160F34(0xD3u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetRCMode", 740, "pPFData != __null", a1, *a1, a2);
          v21 = sub_175AE4();
          v28 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v28, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
        }
      }

      sub_13DC4C(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v22 = sub_160F34(0xD3u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v23, 211, v24, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3, v10);
      v25 = sub_175AE4();
      v29 = sub_160F68(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v23, 211, v24);
    }
  }

  return v10;
}

uint64_t sub_1E500(void *a1, uint64_t a2, unsigned int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v27 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
    }
  }

  if (a3 >= 8)
  {
    v12 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d\n", v14, 211, v15, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
        v16 = sub_175AE4();
        v12 = 4;
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d", v16, 211, v17, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d", v14, 211, v15, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = sub_13DC18(a1[4]);
    v11 = sub_1C90C(a1, a2);
    if (v11)
    {
      v11[4] |= 0x800000000uLL;
      *(v11 + 21) = a3;
      sub_13DC4C(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v18 = sub_160F34(0xD3u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetThroughputMode", 779, "pPFData != __null", a1, *a1, a2);
          v21 = sub_175AE4();
          v28 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v28, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
        }
      }

      sub_13DC4C(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v22 = sub_160F34(0xD3u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v23, 211, v24, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3, v10);
      v25 = sub_175AE4();
      v29 = sub_160F68(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v23, 211, v24);
    }
  }

  return v10;
}

uint64_t sub_1E96C(void *a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetBitrate", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v27 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
    }
  }

  if (a3 <= 0)
  {
    v12 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d\n", v14, 211, v15, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", a1, *a1, a3);
        v16 = sub_175AE4();
        v12 = 4;
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d", v16, 211, v17, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d", v14, 211, v15, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = sub_13DC18(a1[4]);
    v11 = sub_1C90C(a1, a2);
    if (v11)
    {
      v11[4] |= 0x1000000000uLL;
      *(v11 + 22) = a3;
      sub_13DC4C(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v18 = sub_160F34(0xD3u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetBitrate", 816, "pPFData != __null", a1, *a1, a2);
          v21 = sub_175AE4();
          v28 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v28, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
        }
      }

      sub_13DC4C(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v22 = sub_160F34(0xD3u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v23, 211, v24, "AVE_SEI", "SetBitrate", a1, *a1, a2, a3, v10);
      v25 = sub_175AE4();
      v29 = sub_160F68(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v23, 211, v24);
    }
  }

  return v10;
}

uint64_t sub_1EDD8(void *a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", v7, 211, v8, "AVE_SEI", "SetLookAheadInfo", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v22 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v9, 211, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", v7, 211, v8);
    }
  }

  v10 = sub_13DC18(a1[4]);
  v11 = sub_1C90C(a1, a2);
  if (v11)
  {
    v11[4] |= 0x20000000000uLL;
    *(v11 + 23) = a3;
    sub_13DC4C(a1[4]);
    if (v10)
    {
      v12 = 4;
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetLookAheadInfo", 850, "pPFData != __null", a1, *a1, a2);
        v16 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v23, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI");
      }
    }

    sub_13DC4C(a1[4]);
    v12 = 4;
    v10 = 4294966296;
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v17 = sub_160F34(0xD3u);
    v18 = sub_175AE4();
    v19 = sub_160F68(v12);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v18, 211, v19, "AVE_SEI", "SetLookAheadInfo", a1, *a1, a2, a3, v10);
      v20 = sub_175AE4();
      v24 = sub_160F68(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v20, 211, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v18, 211, v19);
    }
  }

  return v10;
}

uint64_t sub_1F124(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v8 = sub_160F34(0xD3u);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld\n", v9, 211, v10, "AVE_SEI", "SetPTS", a1, *a1, a2, a3, a4);
      v11 = sub_175AE4();
      v28 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld", v11, 211, v28, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld", v9, 211, v10, "AVE_SEI");
    }
  }

  if (a3 <= 0)
  {
    if (sub_160EF0(0xD3u, 7))
    {
      v15 = sub_160F34(0xD3u);
      v16 = sub_175AE4();
      v17 = sub_160F68(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping\n", v16, 211, v17, "AVE_SEI", "SetPTS", 883, "iTimescale > 0");
        v16 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping", v16);
    }

LABEL_17:
    v12 = 0;
    v14 = 7;
    goto LABEL_20;
  }

  v12 = sub_13DC18(a1[4]);
  v13 = sub_1C90C(a1, a2);
  if (v13)
  {
    v13[4] |= 0x2000000000uLL;
    *(v13 + 26) = a3;
    v13[12] = a4;
    sub_13DC4C(a1[4]);
    if (v12)
    {
      v14 = 4;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (sub_160EF0(0xD3u, 4))
  {
    v18 = sub_160F34(0xD3u);
    v19 = sub_175AE4();
    v20 = sub_160F68(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetPTS", 890, "pPFData != __null", a1, *a1, a2);
      v21 = sub_175AE4();
      v29 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v29, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
    }
  }

  sub_13DC4C(a1[4]);
  v14 = 4;
  v12 = 4294966296;
LABEL_20:
  if (sub_160EF0(0xD3u, v14))
  {
    v22 = sub_160F34(0xD3u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v14);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d\n", v23, 211, v24, "AVE_SEI", "SetPTS", a1, *a1, a2, a3, a4, v12);
      v25 = sub_175AE4();
      v26 = sub_160F68(v14);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v25, 211, v26, "AVE_SEI", "SetPTS");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v23, 211, v24, "AVE_SEI", "SetPTS");
    }
  }

  return v12;
}

uint64_t sub_1F570(void *a1, uint64_t a2, const __CFData *a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "SetMasteringDisplayColorVolume", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v32 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
    }
  }

  if (!a3)
  {
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v14 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping", v15, 211, v16);
LABEL_23:
        v13 = 4;
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetMasteringDisplayColorVolume", 923, "pColorVolumeData != __null", a1, *a1);
      v17 = sub_175AE4();
      v13 = 4;
      v33 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping", v17, 211, v33);
    }

LABEL_24:
    v11 = 4294966295;
    goto LABEL_25;
  }

  Length = CFDataGetLength(a3);
  if (Length != 24)
  {
    v18 = Length;
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v19 = sub_160F34(0xD3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld\n", v20, 211, v21, "AVE_SEI", "SetMasteringDisplayColorVolume", 930, "dataLength == 24", a1, *a1, v18);
        v22 = sub_175AE4();
        v13 = 4;
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld", v22, 211, v34, "AVE_SEI");
        goto LABEL_24;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld", v20, 211, v21, "AVE_SEI");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v11 = sub_13DC18(a1[4]);
  v12 = sub_1C90C(a1, a2);
  if (v12)
  {
    *(v12 + 4) |= 0x100uLL;
    v37.location = 0;
    v37.length = 24;
    CFDataGetBytes(a3, v37, v12 + 120);
    sub_13DC4C(a1[4]);
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v23 = sub_160F34(0xD3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v24, 211, v25, "AVE_SEI", "SetMasteringDisplayColorVolume", 937, "pPFData != __null", a1, *a1, a2);
        v26 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v35, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v24, 211, v25, "AVE_SEI");
      }
    }

    sub_13DC4C(a1[4]);
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_25:
  if (sub_160EF0(0xD3u, v13))
  {
    v27 = sub_160F34(0xD3u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v13);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v28, 211, v29, "AVE_SEI", "SetMasteringDisplayColorVolume", a1, *a1, a2, a3, v11);
      v30 = sub_175AE4();
      v36 = sub_160F68(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v30, 211, v36, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v28, 211, v29, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t sub_1FAE0(void *a1, uint64_t a2, const __CFData *a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "SetContentLightLevelInfo", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v32 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
    }
  }

  if (!a3)
  {
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v14 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping", v15, 211, v16);
LABEL_23:
        v13 = 4;
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetContentLightLevelInfo", 971, "pLightLevelData != __null", a1, *a1);
      v17 = sub_175AE4();
      v13 = 4;
      v33 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping", v17, 211, v33);
    }

LABEL_24:
    v11 = 4294966295;
    goto LABEL_25;
  }

  Length = CFDataGetLength(a3);
  if (Length != 4)
  {
    v18 = Length;
    v13 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v19 = sub_160F34(0xD3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld\n", v20, 211, v21, "AVE_SEI", "SetContentLightLevelInfo", 977, "dataLength == 4", a1, *a1, v18);
        v22 = sub_175AE4();
        v13 = 4;
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld", v22, 211, v34, "AVE_SEI");
        goto LABEL_24;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld", v20, 211, v21, "AVE_SEI");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v11 = sub_13DC18(a1[4]);
  v12 = sub_1C90C(a1, a2);
  if (v12)
  {
    *(v12 + 4) |= 0x200uLL;
    v37.location = 0;
    v37.length = 4;
    CFDataGetBytes(a3, v37, v12 + 144);
    sub_13DC4C(a1[4]);
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (sub_160EF0(0xD3u, 4))
    {
      v23 = sub_160F34(0xD3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v24, 211, v25, "AVE_SEI", "SetContentLightLevelInfo", 984, "pPFData != __null", a1, *a1, a2);
        v26 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v35, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v24, 211, v25, "AVE_SEI");
      }
    }

    sub_13DC4C(a1[4]);
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_25:
  if (sub_160EF0(0xD3u, v13))
  {
    v27 = sub_160F34(0xD3u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v13);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v28, 211, v29, "AVE_SEI", "SetContentLightLevelInfo", a1, *a1, a2, a3, v11);
      v30 = sub_175AE4();
      v36 = sub_160F68(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v30, 211, v36, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v28, 211, v29, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t sub_20050(void *a1, uint64_t a2, int a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v20 = sub_160F34(0xD3u);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d\n", v21, 211, v22, "AVE_SEI", "SetMCTFTag", a1, *a1, a2, a6, a7, a8, a9, a10, a3, a4, a5);
      v23 = sub_175AE4();
      v37 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d", v23, 211, v37, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d", v21, 211, v22, "AVE_SEI");
    }
  }

  sub_13DC18(a1[4]);
  v24 = sub_1C90C(a1, a2);
  if (v24)
  {
    v25 = 0;
    *(v24 + 4) |= 0x4000000000uLL;
    v24[20] = a6;
    v24[21] = a7;
    v24[22] = a8;
    v24[23] = a9;
    v24[24] = a10;
    *(v24 + 50) = a3;
    *(v24 + 51) = a4;
    *(v24 + 52) = a5;
    v26 = 7;
    goto LABEL_12;
  }

  v26 = 4;
  if (!sub_160EF0(0xD3u, 4))
  {
    goto LABEL_10;
  }

  v27 = sub_160F34(0xD3u);
  v28 = sub_175AE4();
  v29 = sub_160F68(4);
  if (v27)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", a1, *a1, a2);
    v30 = sub_175AE4();
    v26 = 4;
    v31 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v30, 211, v31, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", a1, *a1, a2);
LABEL_10:
    v25 = 4294966296;
    goto LABEL_12;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", a1, *a1, a2);
  v25 = 4294966296;
  v26 = 4;
LABEL_12:
  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, v26))
  {
    v32 = sub_160F34(0xD3u);
    v33 = sub_175AE4();
    v34 = sub_160F68(v26);
    if (v32)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d\n", v33, 211, v34, "AVE_SEI", "SetMCTFTag", a1, *a1, a2, a6, a7, a8, a9, a10, a3, a4, a5, v25);
      v35 = sub_175AE4();
      v38 = sub_160F68(v26);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d", v35, 211, v38, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d", v33, 211, v34, "AVE_SEI");
    }
  }

  return v25;
}

uint64_t sub_20464(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu\n", v7, 211, v8, "AVE_SEI", "SetSessionID", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu", v9, 211, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu", v7, 211, v8);
    }
  }

  sub_13DC18(a1[4]);
  v10 = sub_1C90C(a1, a2);
  if (v10)
  {
    v11 = 0;
    v10[4] |= 0x8000000000uLL;
    v10[5] = a3;
    v12 = 7;
    goto LABEL_12;
  }

  v12 = 4;
  if (!sub_160EF0(0xD3u, 4))
  {
    goto LABEL_10;
  }

  v13 = sub_160F34(0xD3u);
  v14 = sub_175AE4();
  v15 = sub_160F68(4);
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", a1, *a1, a2);
    v16 = sub_175AE4();
    v12 = 4;
    v17 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", a1, *a1, a2);
LABEL_10:
    v11 = 4294966296;
    goto LABEL_12;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", a1, *a1, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_12:
  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, v12))
  {
    v18 = sub_160F34(0xD3u);
    v19 = sub_175AE4();
    v20 = sub_160F68(v12);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d\n", v19, 211, v20, "AVE_SEI", "SetSessionID", a1, *a1, a2, a3, v11);
      v21 = sub_175AE4();
      v24 = sub_160F68(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d", v21, 211, v24, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d", v19, 211, v20, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t sub_207A4(uint64_t *a1, uint64_t a2)
{
  v31 = 0;
  v30 = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu\n", v5, 211, v6, "AVE_SEI", "SetDriverVersion", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu", v5, 211);
  }

  v7 = sscanf("905.5.3", "%d.%d.%d", &v31 + 4, &v31, &v30);
  if (v7 == 3)
  {
    sub_13DC18(a1[4]);
    v8 = sub_1C90C(a1, a2);
    if (v8)
    {
      v8[4] |= 0x10000000000uLL;
      v9 = v31;
      *(v8 + 12) = HIDWORD(v31);
      *(v8 + 13) = v9;
      *(v8 + 14) = v30;
      sub_13DC4C(a1[4]);
      v10 = 0;
      v11 = 7;
      goto LABEL_20;
    }

    if (sub_160EF0(0xD3u, 4))
    {
      v19 = sub_160F34(0xD3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetDriverVersion", 1113, "pPFData != __null", a1, *a1, a2);
        v22 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v22, 211, v28, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }
    }

    sub_13DC4C(a1[4]);
    goto LABEL_18;
  }

  v12 = v7;
  v11 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v13 = sub_160F34(0xD3u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    v16 = *a1;
    if (!v13)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v14, 211, v15, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", a1, v16, "905.5.3", v12, HIDWORD(v31), v31, v30);
LABEL_18:
      v11 = 4;
      goto LABEL_19;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d\n", v14, 211, v15, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", a1, v16, "905.5.3", v12, HIDWORD(v31), v31, v30);
    v17 = sub_175AE4();
    v11 = 4;
    v18 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v17, 211, v18, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", a1, *a1, "905.5.3", v12, HIDWORD(v31), v31, v30);
  }

LABEL_19:
  v10 = 4294966296;
LABEL_20:
  if (sub_160EF0(0xD3u, v11))
  {
    v23 = sub_160F34(0xD3u);
    v24 = sub_175AE4();
    v25 = sub_160F68(v11);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %d\n", v24, 211, v25, "AVE_SEI", "SetDriverVersion", a1, *a1, a2, v10);
      v26 = sub_175AE4();
      v29 = sub_160F68(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %d", v26, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %d", v24, 211, v25);
    }
  }

  return v10;
}

uint64_t sub_20C4C(void *a1, uint64_t a2, int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", v7, 211, v8, "AVE_SEI", "SetActiveParameterSets", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v9, 211, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v7, 211, v8);
    }
  }

  sub_13DC18(a1[4]);
  v10 = sub_1C90C(a1, a2);
  if (v10)
  {
    v11 = 0;
    v10[4] |= 4uLL;
    *(v10 + 57) = a3;
    v12 = 7;
    goto LABEL_12;
  }

  v12 = 4;
  if (!sub_160EF0(0xD3u, 4))
  {
    goto LABEL_10;
  }

  v13 = sub_160F34(0xD3u);
  v14 = sub_175AE4();
  v15 = sub_160F68(4);
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", a1, *a1, a2);
    v16 = sub_175AE4();
    v12 = 4;
    v17 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v16, 211, v17, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", a1, *a1, a2);
LABEL_10:
    v11 = 4294966296;
    goto LABEL_12;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", a1, *a1, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_12:
  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, v12))
  {
    v18 = sub_160F34(0xD3u);
    v19 = sub_175AE4();
    v20 = sub_160F68(v12);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v19, 211, v20, "AVE_SEI", "SetActiveParameterSets", a1, *a1, a2, a3, v11);
      v21 = sub_175AE4();
      v24 = sub_160F68(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v21, 211, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v19, 211, v20);
    }
  }

  return v11;
}

uint64_t sub_20F94(void *a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v12 = sub_160F34(0xD3u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d\n", v13, 211, v14, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6);
      v15 = sub_175AE4();
      v34 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d", v15, 211, v34, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d", v13, 211, v14, "AVE_SEI");
    }
  }

  if (a3 >= 4)
  {
    v18 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v19 = sub_160F34(0xD3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d\n", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v22 = sub_175AE4();
        v18 = 4;
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d", v22, 211, v23, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v18 = 4;
      }
    }

    v17 = 4294966295;
  }

  else
  {
    sub_13DC18(a1[4]);
    v16 = sub_1C90C(a1, a2);
    if (v16)
    {
      v16[4] |= 0xAuLL;
      *(v16 + 58) = a4;
      *(v16 + 59) = a5;
      *(v16 + 56) = a3;
      *(v16 + 60) = a6;
      sub_13DC4C(a1[4]);
      v17 = 0;
      v18 = 7;
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v24 = sub_160F34(0xD3u);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v25, 211, v26, "AVE_SEI", "SetPictureTiming", 1192, "pPFData != __null", a1, *a1, a2);
          v27 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v27, 211, v35, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v25, 211, v26, "AVE_SEI");
        }
      }

      sub_13DC4C(a1[4]);
      v18 = 4;
      v17 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v18))
  {
    v28 = sub_160F34(0xD3u);
    v29 = sub_175AE4();
    v30 = sub_160F68(v18);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d\n", v29, 211, v30, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6, v17);
      v31 = sub_175AE4();
      v32 = sub_160F68(v18);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d", v31, 211, v32, "AVE_SEI", "SetPictureTiming");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d", v29, 211, v30, "AVE_SEI", "SetPictureTiming");
    }
  }

  return v17;
}

uint64_t sub_21478(void *a1, uint64_t a2, unsigned int a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", v7, 211, v8, "AVE_SEI", "SetBufferingPeriod", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v27 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v9, 211, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", v7, 211, v8);
    }
  }

  if (a3 >= 0x10)
  {
    v12 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v13 = sub_160F34(0xD3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u\n", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", a1, *a1, a3);
        v16 = sub_175AE4();
        v12 = 4;
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v16, 211, v17, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", a1, *a1, a3);
        v12 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    sub_13DC18(a1[4]);
    v10 = sub_1C90C(a1, a2);
    if (v10)
    {
      v10[4] |= 0x10uLL;
      *(v10 + 57) = a3;
      sub_13DC4C(a1[4]);
      v11 = 0;
      v12 = 7;
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v18 = sub_160F34(0xD3u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetBufferingPeriod", 1236, "pPFData != __null", a1, *a1, a2);
          v21 = sub_175AE4();
          v28 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v21, 211, v28, "AVE_SEI");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
        }
      }

      sub_13DC4C(a1[4]);
      v12 = 4;
      v11 = 4294966296;
    }
  }

  if (sub_160EF0(0xD3u, v12))
  {
    v22 = sub_160F34(0xD3u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v23, 211, v24, "AVE_SEI", "SetBufferingPeriod", a1, *a1, a2, a3, v11);
      v25 = sub_175AE4();
      v29 = sub_160F68(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v25, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v23, 211, v24);
    }
  }

  return v11;
}

uint64_t sub_218D8(void *a1, uint64_t a2, void *a3)
{
  v33 = 0;
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", v7, 211, v8, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v29 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v9, 211, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", v7, 211, v8);
    }
  }

  v10 = sub_135428(a1[5], &v33, 0);
  if (v10)
  {
    if (v10 == -1007)
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v11 = sub_160F34(0xD3u);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?\n", v12, 211, v13, "AVE_SEI", "CreateFrame", 1351, a1, *a1);
          v12 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?", v12, 211);
      }

      sub_21E0C(a1, 5);
    }

    else if (sub_160EF0(0xD3u, 4))
    {
      v19 = sub_160F34(0xD3u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d\n", v20, 211, v21, "AVE_SEI", "CreateFrame", 1360, "ret == 0", a1, *a1, a2, v10);
        v22 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d", v22, 211, v31, "AVE_SEI", "CreateFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d", v20, 211, v21, "AVE_SEI", "CreateFrame");
      }
    }
  }

  else
  {
    v14 = v33;
    *v33 = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[5] = 0u;
    v14[6] = 0u;
    v14[7] = 0u;
    v14[8] = 0u;
    v14[9] = 0u;
    v14[10] = 0u;
    v14[11] = 0u;
    v14[12] = 0u;
    v14[13] = 0u;
    v14[14] = 0u;
    *(v14 + 30) = 0;
    sub_CB4F4((a1 + 6), v14);
    *(v14 + 3) = a2;
    if (sub_160EF0(0xD3u, 7))
    {
      v15 = sub_160F34(0xD3u);
      v16 = sub_175AE4();
      v17 = sub_160F68(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p\n", v16, 211, v17, "AVE_SEI", "CreateFrame", 1369, a1, *a1, a2, v14);
        v18 = sub_175AE4();
        v30 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p", v18, 211, v30, "AVE_SEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p", v16, 211, v17, "AVE_SEI");
      }
    }

    if (a3)
    {
      *a3 = v14;
    }
  }

  if (v10)
  {
    v23 = 4;
  }

  else
  {
    v23 = 7;
  }

  if (sub_160EF0(0xD3u, v23))
  {
    v24 = sub_160F34(0xD3u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v23);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v25, 211, v26, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3, v10);
      v27 = sub_175AE4();
      v32 = sub_160F68(v23);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v27, 211, v32, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v25, 211, v26, "AVE_SEI");
    }
  }

  return v10;
}

uint64_t sub_21E0C(void *a1, uint64_t a2)
{
  v2 = a2;
  memset(v10, 0, sizeof(v10));
  sub_172100(v10, 32, "%p %llu", a1, *a1);
  for (i = sub_CB5C0((a1 + 6), v4); ; i = sub_CB408(v7, v8))
  {
    v7 = i;
    if (i == sub_CB5DC((a1 + 6), v6))
    {
      break;
    }

    sub_22B84(v7, v2, v10);
  }

  return 0;
}

void *sub_21ECC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx\n", v7, 211, v8, "AVE_SEI", "EstimateSEISize", a1, *a1, a2, a3);
      v9 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx", v9, 211, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx", v7, 211, v8);
    }
  }

  sub_13DC18(a1[4]);
  v10 = sub_17800(a1, a2);
  v11 = v10;
  if (v10)
  {
    if ((a1[1] & a3 & v10[4]) != 0)
    {
      v12 = sub_22194(a1, v10, a3);
      if (v12 < 1)
      {
        v17 = 0;
        v18 = 1;
      }

      else
      {
        v13 = v12 - 509;
        if (v12 < 0x1FD)
        {
          v13 = 0;
        }

        v14 = (v13 + 254) / 0xFFu + 2;
        if (v12 >= 0xFF)
        {
          v15 = v14;
        }

        else
        {
          v15 = 1;
        }

        v16 = v15 + v12;
        v17 = v16 + 16;
        v18 = v16 + 24;
      }

      v19 = sub_22580(a1, v11, a3);
      v11 = v18 + sub_22814(a1, v11) + (v19 & ~(v19 >> 31)) + (v19 & ~(v19 >> 31)) + v17 + (((v19 & ~(v19 >> 31)) + v17) >> 1);
    }

    else
    {
      v11 = 0;
    }
  }

  sub_13DC4C(a1[4]);
  if (sub_160EF0(0xD3u, 7))
  {
    v20 = sub_160F34(0xD3u);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d\n", v21, 211, v22, "AVE_SEI", "EstimateSEISize", a1, *a1, a2, a3, v11);
      v23 = sub_175AE4();
      v26 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d", v23, 211, v26, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d", v21, 211, v22, "AVE_SEI");
    }
  }

  return v11;
}

uint64_t sub_22194(uint64_t *a1, void *a2, uint64_t a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    v9 = *a1;
    if (v6)
    {
      if (a2)
      {
        v10 = a2[3];
      }

      else
      {
        v10 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", v7, 211, v8, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v10, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
      if (a2)
      {
        v11 = a2[3];
      }

      else
      {
        v11 = -1;
      }
    }

    else if (a2)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", v7, 211, v8, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v11, a3);
  }

  v12 = a1[1] & a2[4] & a3;
  if (sub_160EF0(0xD3u, 8))
  {
    v13 = sub_160F34(0xD3u);
    v14 = sub_175AE4();
    v15 = sub_160F68(8);
    if (v13)
    {
      printf("%lld %d AVE %s: Active bits for frame %lld: 0x%016llx\n", v14, 211, v15, a2[3], v12);
      v14 = sub_175AE4();
      v15 = sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: Active bits for frame %lld: 0x%016llx", v14, 211, v15, a2[3], v12);
  }

  if (sub_160EF0(0xD3u, 8))
  {
    v16 = sub_160F34(0xD3u);
    v17 = sub_175AE4();
    v18 = sub_160F68(8);
    v19 = a2[4];
    if (v16)
    {
      printf("%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx\n", v17, 211, v18, a1[1], v19);
      v20 = sub_175AE4();
      v21 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx", v20, 211, v21, a1[1], a2[4]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx", v17, 211, v18, a1[1], v19);
    }
  }

  if (v12)
  {
    if ((v12 & 0x400000000) != 0)
    {
      v22 = 5;
    }

    else
    {
      v22 = 0;
    }

    if ((v12 & 0x800000000) != 0)
    {
      v22 += 5;
    }

    if ((v12 & 0x1000000000) != 0)
    {
      v22 += 5;
    }

    if ((v12 & 0x20000000000) != 0)
    {
      v22 += 5;
    }

    if ((v12 & 0x100000000) != 0)
    {
      v22 += 9;
    }

    if ((v12 & 0x200000000) != 0)
    {
      v22 += 9;
    }

    if ((v12 & 0x2000000000) != 0)
    {
      v22 += 13;
    }

    if ((v12 & 0x4000000000) != 0)
    {
      v22 += 15;
    }

    if ((v12 & 0x8000000000) != 0)
    {
      v22 += 9;
    }

    if ((v12 & 0x10000000000) != 0)
    {
      v23 = v22 + 5;
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    v23 = 0;
  }

  if (sub_160EF0(0xD3u, 7))
  {
    v24 = sub_160F34(0xD3u);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v25, 211, v26, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, *a1, a2, a2[3], a3, v23);
      v27 = sub_175AE4();
      v29 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v27, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v25, 211, v26, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes");
    }
  }

  return v23;
}

uint64_t sub_22580(uint64_t *a1, void *a2, uint64_t a3)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v6 = sub_160F34(0xD3u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    v9 = *a1;
    if (v6)
    {
      if (a2)
      {
        v10 = a2[3];
      }

      else
      {
        v10 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", v7, 211, v8, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v10, a3);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *a1;
      if (a2)
      {
        v11 = a2[3];
      }

      else
      {
        v11 = -1;
      }
    }

    else if (a2)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", v7, 211, v8, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v11, a3);
  }

  v12 = a1[1] & a2[4] & a3;
  if (v12)
  {
    if ((v12 & 0x20) != 0)
    {
      v13 = 34;
    }

    else
    {
      v13 = 0;
    }

    if ((v12 & 2) != 0)
    {
      v13 += 56;
    }

    v14 = v13 + ((v12 >> 2) & 0x10);
    if ((v12 & 0x80) != 0)
    {
      v14 += 33;
    }

    v15 = v14 + ((v12 >> 3) & 0x20);
    if ((v12 & 0x200) != 0)
    {
      v16 = v15 + 12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0;
  }

  if (sub_160EF0(0xD3u, 7))
  {
    v17 = sub_160F34(0xD3u);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, *a1, a2, a2[3], a3, v16);
      v20 = sub_175AE4();
      v22 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v20, 211, v22, "AVE_SEI", "EstimateRegisteredSEINALUSizes");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes");
    }
  }

  return v16;
}

uint64_t sub_22814(uint64_t *a1, uint64_t a2)
{
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *a1;
    if (v4)
    {
      if (a2)
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld\n", v5, 211, v6, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v8);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
      v7 = *a1;
      if (a2)
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = -1;
      }
    }

    else if (a2)
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld", v5, 211, v6, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v9);
  }

  if (a1[1] & *(a2 + 32))
  {
    Length = CFDataGetLength(*(a2 + 216));
    v11 = Length;
    v12 = Length - 509;
    if (Length < 0x1FD)
    {
      v12 = 0;
    }

    v13 = (v12 + 254) / 0xFFu + 2;
    if (Length >= 255)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = (Length + Length / 2 + v14 + 513);
    if (sub_160EF0(0xD3u, 8))
    {
      v16 = sub_160F34(0xD3u);
      v17 = sub_175AE4();
      v18 = sub_160F68(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d\n", v17, 211, v18, "AVE_SEI", "EstimateISPMetadataSEITagSize", 1687, a1, *a1, v11, v15);
        v19 = sub_175AE4();
        v25 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d", v19, 211, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d", v17, 211, v18);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  if (sub_160EF0(0xD3u, 7))
  {
    v20 = sub_160F34(0xD3u);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d\n", v21, 211, v22, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, *a1, a2, *(a2 + 24), v15);
      v23 = sub_175AE4();
      v26 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d", v23, 211, v26, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d", v21, 211, v22, "AVE_SEI");
    }
  }

  return v15;
}

void sub_22B84(uint64_t a1, int a2, const char *a3)
{
  v4 = a2;
  v6 = a2;
  if (sub_160EF0(0xD3u, a2))
  {
    v7 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v7 && (-v4 & 0x20) == 0)
      {
        printf("%s Frame #%lld Bits 0x%016llx\n", a3, *(a1 + 24), *(a1 + 32));
      }

      syslog(3, "%s Frame #%lld Bits 0x%016llx", a3, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v8 = v4 & 0x20;
      v9 = v7 ^ 1;
      v10 = sub_175AE4();
      v11 = sub_160F68(v6);
      v12 = *(a1 + 32);
      if ((v9 | (v8 >> 5)))
      {
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", v10, 211, v11, a3, *(a1 + 24), v12);
      }

      else
      {
        printf("%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx\n", v10, 211, v11, a3, *(a1 + 24), v12);
        v13 = sub_175AE4();
        v14 = sub_160F68(v6);
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", v13, 211, v14, a3, *(a1 + 24), *(a1 + 32));
      }

      v4 = a2;
    }
  }

  v142 = a3;
  if (*(a1 + 32))
  {
    if (sub_160EF0(0xD3u, v6))
    {
      v15 = sub_160F34(0xD3u);
      if (v4 < 0)
      {
        if (v15 && (-v4 & 0x20) == 0)
        {
          printf("%s ISP Metadata: %p\n", a3, *(a1 + 216));
        }

        syslog(3, "%s ISP Metadata: %p", a3, *(a1 + 216));
      }

      else
      {
        v16 = v4 & 0x20;
        v17 = v15 ^ 1;
        v18 = sub_175AE4();
        v19 = sub_160F68(v6);
        v20 = *(a1 + 216);
        if ((v17 | (v16 >> 5)))
        {
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v18, 211, v19, a3, v20);
        }

        else
        {
          printf("%lld %d AVE %s: %s ISP Metadata: %p\n", v18, 211, v19, a3, v20);
          v21 = sub_175AE4();
          v22 = sub_160F68(v6);
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v21, 211, v22, a3, *(a1 + 216));
        }

        v4 = a2;
      }
    }

    v23 = *(a1 + 216);
    if (v23)
    {
      BytePtr = CFDataGetBytePtr(v23);
      if (BytePtr)
      {
        v25 = BytePtr;
        v145 = 0;
        memset(v144, 0, sizeof(v144));
        Length = CFDataGetLength(*(a1 + 216));
        v27 = Length;
        if (Length >= 1)
        {
          v28 = 0;
          v29 = Length & 0x7FFFFFFF;
          v140 = Length;
          do
          {
            v30 = 0;
            v31 = v28;
            do
            {
              if (v31 >= v29)
              {
                break;
              }

              sub_172100(v144 + v30, 4, "%02x ", v25[v31]);
              v30 += 3;
              ++v31;
            }

            while (v30 != 96);
            if (sub_160EF0(0xD3u, v6))
            {
              v32 = sub_160F34(0xD3u);
              if (a2 < 0)
              {
                if ((-a2 & 0x20) != 0)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v32;
                }

                if ((v28 | 0x1F) >= v27)
                {
                  v38 = v27;
                }

                else
                {
                  v38 = v28 | 0x1F;
                }

                if (v37 == 1)
                {
                  printf("%s ISPData[%d-%d] %s\n", a3, v28, v38, v144);
                }

                syslog(3, "%s ISPData[%d-%d] %s", a3, v28, v38, v144);
              }

              else
              {
                v33 = v27;
                v34 = v32 ^ 1;
                v35 = sub_175AE4();
                v36 = sub_160F68(v6);
                if ((v28 | 0x1F) < v27)
                {
                  v33 = v28 | 0x1F;
                }

                if ((v34 | ((a2 & 0x20) >> 5)))
                {
                  a3 = v142;
                }

                else
                {
                  a3 = v142;
                  printf("%lld %d AVE %s: %s ISPData[%d-%d] %s\n", v35, 211, v36, v142, v28, v33, v144);
                  v35 = sub_175AE4();
                  v36 = sub_160F68(v6);
                }

                syslog(3, "%lld %d AVE %s: %s ISPData[%d-%d] %s", v35, 211, v36, v142, v28, v33, v144);
                v27 = v140;
              }
            }

            v28 += 32;
          }

          while (v28 < v27);
        }

        v4 = a2;
      }
    }
  }

  if ((*(a1 + 32) & 4) != 0 && sub_160EF0(0xD3u, v6))
  {
    v39 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v39 && (-v4 & 0x20) == 0)
      {
        printf("%s Active Parameter Sets %d\n", a3, *(a1 + 228));
      }

      syslog(3, "%s Active Parameter Sets %d");
    }

    else
    {
      v40 = v39 ^ 1;
      v41 = sub_175AE4();
      v42 = sub_160F68(v6);
      if (((v40 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Active Parameter Sets %d\n", v41, 211, v42, a3, *(a1 + 228));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Active Parameter Sets %d");
    }
  }

  if ((*(a1 + 32) & 8) != 0 && sub_160EF0(0xD3u, v6))
  {
    v43 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v43 && (-v4 & 0x20) == 0)
      {
        printf("%s Picture Timing %d %d %d %d %d\n", a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
      }

      syslog(3, "%s Picture Timing %d %d %d %d %d");
    }

    else
    {
      v44 = v43 ^ 1;
      v45 = sub_175AE4();
      v46 = sub_160F68(v6);
      if (((v44 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Picture Timing %d %d %d %d %d\n", v45, 211, v46, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
        v45 = sub_175AE4();
        v46 = sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Picture Timing %d %d %d %d %d", v45, 211, v46, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
    }
  }

  if ((*(a1 + 32) & 0x10) != 0 && sub_160EF0(0xD3u, v6))
  {
    v47 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v47 && (-v4 & 0x20) == 0)
      {
        printf("%s Buffering Period %d\n", a3, *(a1 + 228));
      }

      syslog(3, "%s Buffering Period %d");
    }

    else
    {
      v48 = v47 ^ 1;
      v49 = sub_175AE4();
      v50 = sub_160F68(v6);
      if (((v48 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Buffering Period %d\n", v49, 211, v50, a3, *(a1 + 228));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Buffering Period %d");
    }
  }

  if ((*(a1 + 32) & 0x20) != 0 && sub_160EF0(0xD3u, v6))
  {
    v51 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v51 && (-v4 & 0x20) == 0)
      {
        printf("%s Content Color Volume bit is set\n", a3);
      }

      syslog(3, "%s Content Color Volume bit is set");
    }

    else
    {
      v52 = v51 ^ 1;
      v53 = sub_175AE4();
      v54 = sub_160F68(v6);
      if (((v52 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Color Volume bit is set\n", v53, 211, v54, a3);
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Color Volume bit is set");
    }
  }

  if ((*(a1 + 32) & 0x40) != 0 && sub_160EF0(0xD3u, v6))
  {
    v55 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v55 && (-v4 & 0x20) == 0)
      {
        printf("%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
      }

      syslog(3, "%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", a3, *(a1 + 148));
    }

    else
    {
      v56 = v55 ^ 1;
      v57 = sub_175AE4();
      v58 = sub_160F68(v6);
      if (((v56 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", v57, 211, v58, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
        v57 = sub_175AE4();
        v58 = sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", v57, 211, v58, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
    }
  }

  if ((*(a1 + 32) & 0x80) != 0 && sub_160EF0(0xD3u, v6))
  {
    v59 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v59 && (-v4 & 0x20) == 0)
      {
        printf("%s Lux Level %d\n", a3, *(a1 + 60));
      }

      syslog(3, "%s Lux Level %d");
    }

    else
    {
      v60 = v59 ^ 1;
      v61 = sub_175AE4();
      v62 = sub_160F68(v6);
      if (((v60 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Lux Level %d\n", v61, 211, v62, a3, *(a1 + 60));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Lux Level %d");
    }
  }

  if ((*(a1 + 36) & 1) != 0 && sub_160EF0(0xD3u, v6))
  {
    v63 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v63 && (-v4 & 0x20) == 0)
      {
        printf("%s Exposure Time %f\n", a3, *(a1 + 64));
      }

      syslog(3, "%s Exposure Time %f");
    }

    else
    {
      v64 = v63 ^ 1;
      v65 = sub_175AE4();
      v66 = sub_160F68(v6);
      if (((v64 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Exposure Time %f\n", v65, 211, v66, a3, *(a1 + 64));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Exposure Time %f");
    }
  }

  if ((*(a1 + 36) & 2) != 0 && sub_160EF0(0xD3u, v6))
  {
    v67 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v67 && (-v4 & 0x20) == 0)
      {
        printf("%s SNR %f\n", a3, *(a1 + 72));
      }

      syslog(3, "%s SNR %f");
    }

    else
    {
      v68 = v67 ^ 1;
      v69 = sub_175AE4();
      v70 = sub_160F68(v6);
      if (((v68 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s SNR %f\n", v69, 211, v70, a3, *(a1 + 72));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s SNR %f");
    }
  }

  if ((*(a1 + 36) & 4) != 0 && sub_160EF0(0xD3u, v6))
  {
    v71 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v71 && (-v4 & 0x20) == 0)
      {
        printf("%s RC %d\n", a3, *(a1 + 80));
      }

      syslog(3, "%s RC %d");
    }

    else
    {
      v72 = v71 ^ 1;
      v73 = sub_175AE4();
      v74 = sub_160F68(v6);
      if (((v72 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s RC %d\n", v73, 211, v74, a3, *(a1 + 80));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s RC %d");
    }
  }

  if ((*(a1 + 36) & 8) != 0 && sub_160EF0(0xD3u, v6))
  {
    v75 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v75 && (-v4 & 0x20) == 0)
      {
        printf("%s Throughput Mode %d\n", a3, *(a1 + 84));
      }

      syslog(3, "%s Throughput Mode %d");
    }

    else
    {
      v76 = v75 ^ 1;
      v77 = sub_175AE4();
      v78 = sub_160F68(v6);
      if (((v76 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Throughput Mode %d\n", v77, 211, v78, a3, *(a1 + 84));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Throughput Mode %d");
    }
  }

  if ((*(a1 + 36) & 0x10) != 0 && sub_160EF0(0xD3u, v6))
  {
    v79 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v79 && (-v4 & 0x20) == 0)
      {
        printf("%s Bitrate %d\n", a3, *(a1 + 88));
      }

      syslog(3, "%s Bitrate %d");
    }

    else
    {
      v80 = v79 ^ 1;
      v81 = sub_175AE4();
      v82 = sub_160F68(v6);
      if (((v80 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Bitrate %d\n", v81, 211, v82, a3, *(a1 + 88));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Bitrate %d");
    }
  }

  if ((*(a1 + 36) & 0x20) != 0 && sub_160EF0(0xD3u, v6))
  {
    v83 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v83 && (-v4 & 0x20) == 0)
      {
        printf("%s Timecode %d %lld\n", a3, *(a1 + 104), *(a1 + 96));
      }

      syslog(3, "%s Timecode %d %lld");
    }

    else
    {
      v84 = v83 ^ 1;
      v85 = sub_175AE4();
      v86 = sub_160F68(v6);
      if (((v84 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Timecode %d %lld\n", v85, 211, v86, a3, *(a1 + 104), *(a1 + 96));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Timecode %d %lld");
    }
  }

  if (*(a1 + 33))
  {
    v87 = 0;
    v141 = -v4;
    v88 = (a1 + 123);
    do
    {
      if (sub_160EF0(0xD3u, v6))
      {
        v89 = sub_160F34(0xD3u);
        if (v4 < 0)
        {
          if ((v141 & 0x20) != 0)
          {
            v99 = 0;
          }

          else
          {
            v99 = v89;
          }

          v100 = *(v88 - 3);
          v101 = *(v88 - 2);
          v102 = *(v88 - 1);
          v103 = *v88;
          if (v99 == 1)
          {
            printf("%s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, v87, v100, v101, *(v88 - 1), v103);
            v100 = *(v88 - 3);
            v101 = *(v88 - 2);
            v102 = *(v88 - 1);
            v103 = *v88;
          }

          syslog(3, "%s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", a3, v87, v100, v101, v102, v103);
        }

        else
        {
          v90 = v4 & 0x20;
          v91 = v89 ^ 1;
          v92 = sub_175AE4();
          v93 = sub_160F68(v6);
          v94 = *(v88 - 3);
          v95 = *(v88 - 2);
          v96 = *v88;
          if ((v91 | (v90 >> 5)))
          {
            a3 = v142;
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v92, 211, v93, v142, v87, v94, v95, *(v88 - 1), v96);
          }

          else
          {
            a3 = v142;
            printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x\n", v92, 211, v93, v142, v87, v94, v95, *(v88 - 1), v96);
            v97 = sub_175AE4();
            v98 = sub_160F68(v6);
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v97, 211, v98, v142, v87, *(v88 - 3), *(v88 - 2), *(v88 - 1), *v88);
          }

          v4 = a2;
        }
      }

      ++v87;
      v88 += 4;
    }

    while (v87 != 3);
    if (sub_160EF0(0xD3u, v6))
    {
      v104 = sub_160F34(0xD3u);
      if (v4 < 0)
      {
        if ((v141 & 0x20) != 0)
        {
          v108 = 0;
        }

        else
        {
          v108 = v104;
        }

        if (v108 == 1)
        {
          printf("%s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
        }

        syslog(3, "%s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v105 = v104 ^ 1;
        v106 = sub_175AE4();
        v107 = sub_160F68(v6);
        if (((v105 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", v106, 211, v107, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
          v106 = sub_175AE4();
          v107 = sub_160F68(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x", v106, 211, v107, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
      }
    }

    if (sub_160EF0(0xD3u, v6))
    {
      v109 = sub_160F34(0xD3u);
      if (v4 < 0)
      {
        if ((v141 & 0x20) != 0)
        {
          v113 = 0;
        }

        else
        {
          v113 = v109;
        }

        if (v113 == 1)
        {
          printf("%s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
        }

        syslog(3, "%s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v110 = v109 ^ 1;
        v111 = sub_175AE4();
        v112 = sub_160F68(v6);
        if (((v110 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v111, 211, v112, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
          v111 = sub_175AE4();
          v112 = sub_160F68(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v111, 211, v112, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
      }
    }

    if (sub_160EF0(0xD3u, v6))
    {
      v114 = sub_160F34(0xD3u);
      if (v4 < 0)
      {
        if ((v141 & 0x20) != 0)
        {
          v118 = 0;
        }

        else
        {
          v118 = v114;
        }

        if (v118 == 1)
        {
          printf("%s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
        }

        syslog(3, "%s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v115 = v114 ^ 1;
        v116 = sub_175AE4();
        v117 = sub_160F68(v6);
        if (((v115 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v116, 211, v117, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
          v116 = sub_175AE4();
          v117 = sub_160F68(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v116, 211, v117, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
      }
    }
  }

  if ((*(a1 + 33) & 2) != 0 && sub_160EF0(0xD3u, v6))
  {
    v119 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v119 && (-v4 & 0x20) == 0)
      {
        printf("%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
      }

      syslog(3, "%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x");
    }

    else
    {
      v120 = v119 ^ 1;
      v121 = sub_175AE4();
      v122 = sub_160F68(v6);
      if (((v120 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", v121, 211, v122, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
        v121 = sub_175AE4();
        v122 = sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x", v121, 211, v122, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
    }
  }

  if ((*(a1 + 36) & 0x40) != 0 && sub_160EF0(0xD3u, v6))
  {
    v123 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v123 && (-v4 & 0x20) == 0)
      {
        printf("%s MCTF %f %f %f %f %f %d %d %d\n", a3, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 204), *(a1 + 208));
      }

      syslog(3, "%s MCTF %f %f %f %f %f %d %d %d");
    }

    else
    {
      v124 = v123 ^ 1;
      v125 = sub_175AE4();
      v126 = sub_160F68(v6);
      if (((v124 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d\n", v125, 211, v126, a3, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 204), *(a1 + 208));
        v125 = sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d", v125);
    }
  }

  if ((*(a1 + 36) & 0x80) != 0 && sub_160EF0(0xD3u, v6))
  {
    v127 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v127 && (-v4 & 0x20) == 0)
      {
        printf("%s Session ID %llu\n", a3, *(a1 + 40));
      }

      syslog(3, "%s Session ID %llu");
    }

    else
    {
      v128 = v127 ^ 1;
      v129 = sub_175AE4();
      v130 = sub_160F68(v6);
      if (((v128 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Session ID %llu\n", v129, 211, v130, a3, *(a1 + 40));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Session ID %llu");
    }
  }

  if ((*(a1 + 37) & 1) != 0 && sub_160EF0(0xD3u, v6))
  {
    v131 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v131 && (-v4 & 0x20) == 0)
      {
        printf("%s Driver Version %d.%d.%d\n", a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
      }

      syslog(3, "%s Driver Version %d.%d.%d");
    }

    else
    {
      v132 = v131 ^ 1;
      v133 = sub_175AE4();
      v134 = sub_160F68(v6);
      if (((v132 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Driver Version %d.%d.%d\n", v133, 211, v134, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
        v133 = sub_175AE4();
        v134 = sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Driver Version %d.%d.%d", v133, 211, v134, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
    }
  }

  if ((*(a1 + 37) & 2) != 0 && sub_160EF0(0xD3u, v6))
  {
    v135 = sub_160F34(0xD3u);
    if (v4 < 0)
    {
      if (v135 && (-v4 & 0x20) == 0)
      {
        printf("%s LookAhead Frame Count %d\n", a3, *(a1 + 92));
      }

      syslog(3, "%s LookAhead Frame Count %d");
    }

    else
    {
      v136 = v4 & 0x20;
      v137 = v135 ^ 1;
      v138 = sub_175AE4();
      v139 = sub_160F68(v6);
      if (((v137 | (v136 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s LookAhead Frame Count %d\n", v138, 211, v139, a3, *(a1 + 92));
        sub_175AE4();
        sub_160F68(v6);
      }

      syslog(3, "%lld %d AVE %s: %s LookAhead Frame Count %d");
    }
  }
}

uint64_t sub_247DC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 1) >= 0x32)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v20 = sub_160F34(0x1Eu);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v21, 30, v22, "AVE_Prop_HEVC_SetInputQueueMaxCount", 468, "(-1) <= maxCnt && maxCnt <= 48", a1, *(a1 + 56), a2, a3, a4, valuePtr, -1, 48);
            v23 = sub_175AE4();
            v29 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v23, 30, v29, "AVE_Prop_HEVC_SetInputQueueMaxCount", 468, "(-1) <= maxCnt && maxCnt <= 48", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v21, 30, v22, "AVE_Prop_HEVC_SetInputQueueMaxCount", 468, "(-1) <= maxCnt && maxCnt <= 48", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106120) = valuePtr;
        if (*(a1 + 104648))
        {
          v10 = sub_12FB1C(*(a1 + 120), v9);
        }

        else
        {
          v10 = 0;
          *(a1 + 11772) = v9;
        }

        if (sub_160EF0(0x1Eu, 7))
        {
          v24 = sub_160F34(0x1Eu);
          v25 = sub_175AE4();
          v26 = sub_160F68(7);
          if (v24)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v25, 30, v26, a1, *(a1 + 56), *a2, valuePtr);
            v25 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v25);
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *(a1 + 56);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_HEVC_SetInputQueueMaxCount", 458, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_HEVC_SetInputQueueMaxCount", 458, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_HEVC_SetInputQueueMaxCount", 448, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v28, "AVE_Prop_HEVC_SetInputQueueMaxCount");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_HEVC_SetInputQueueMaxCount");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t sub_24C68(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 106120);
    if (v10 == -2)
    {
      v10 = 0;
    }

    valuePtr = v10;
    v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      *a5 = v11;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v14 = sub_160F34(0x1Eu);
        v15 = sub_175AE4();
        v16 = sub_160F68(7);
        if (v14)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v15, 30, v16, a1, *(a1 + 56), *a2, valuePtr, v12);
          v15 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v15, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetInputQueueMaxCount", 524, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v24 = sub_175AE4();
          v26 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v24, 30, v26, "AVE_Prop_HEVC_GetInputQueueMaxCount", 524, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetInputQueueMaxCount", 524, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetInputQueueMaxCount", 512, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetInputQueueMaxCount", 512);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetInputQueueMaxCount", 512);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_24FA8(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      if (Value)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      *(a1 + 106124) = v10;
      *(a1 + 11468) = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v12 = Value != 0;
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v12);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing", 567, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing", 567, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing", 557, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v25, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetPreemptiveLoadBalancing");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_252F8(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 11468);
    v11 = &kCFBooleanTrue;
    if (v10 != 2)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 == 2;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetPreemptiveLoadBalancing", 604, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetPreemptiveLoadBalancing", 604);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetPreemptiveLoadBalancing", 604);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_25520(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106128) = v9;
      *(a1 + 688) = *(a1 + 688) & 0xFFFFFFFD | (2 * v9);
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetMaximizePowerEfficiency", 652, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetMaximizePowerEfficiency", 652, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetMaximizePowerEfficiency", 642, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_HEVC_SetMaximizePowerEfficiency");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetMaximizePowerEfficiency");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_25868(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 688) & 2;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = v10 >> 1;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v16);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMaximizePowerEfficiency", 697, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetMaximizePowerEfficiency", 697);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMaximizePowerEfficiency", 697);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_25A8C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3)
  {
    if (!a4)
    {
      Value = -1;
LABEL_11:
      *(a1 + 106132) = Value;
      *(a1 + 692) = Value;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(7);
        if (v15)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v16, 30, v17, a1, *(a1 + 56), *a2, Value);
          v16 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v16);
        return 0;
      }

      return result;
    }

    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      goto LABEL_11;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *(a1 + 56);
      v22 = CFGetTypeID(a4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetRealTime", 746, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetRealTime", 746, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v10 = sub_160F34(0x1Eu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_HEVC_SetRealTime", 734, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v13 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v23, "AVE_Prop_HEVC_SetRealTime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_HEVC_SetRealTime");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_25DD0(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = &kCFBooleanTrue;
    v11 = *(a1 + 692);
    if (!v11)
    {
      v10 = &kCFBooleanFalse;
    }

    v12 = *v10;
    if (v11 < 0)
    {
      v12 = 0;
    }

    *a5 = v12;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v11);
        v15 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRealTime", 784, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetRealTime", 784);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRealTime", 784);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_25FF4(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -101;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 100) >= 0x12D)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_HEVC_SetPriority", 848, "-100 <= priority && priority <= 200", a1, *(a1 + 56), a2, a3, a4, valuePtr, -100, 200);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_HEVC_SetPriority", 848, "-100 <= priority && priority <= 200", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_HEVC_SetPriority", 848, "-100 <= priority && priority <= 200", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106136) = valuePtr;
        *(a1 + 696) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetPriority", 838, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetPriority", 838, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetPriority", 828, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetPriority");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetPriority");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2646C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 696);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetPriority", 894, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetPriority", 894, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetPriority", 894, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetPriority", 884, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetPriority", 884);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetPriority", 884);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2679C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      if (*(a1 + 106140) == v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = sub_12F8E8(*(a1 + 120), *(a1 + 104652));
      }

      *(a1 + 106140) = v9;
      *(a1 + 104652) = v9;
      if (sub_160EF0(0x1Eu, 7))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(7);
        if (v20)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v21, 30, v22, a1, *(a1 + 56), *a2, v9);
          v21 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v21);
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *(a1 + 56);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_HEVC_SetThrottleForBackground", 937, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_HEVC_SetThrottleForBackground", 937, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_HEVC_SetThrottleForBackground", 927, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v24, "AVE_Prop_HEVC_SetThrottleForBackground");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_HEVC_SetThrottleForBackground");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t sub_26AFC(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 104652);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 104652))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetThrottleForBackground", 981, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetThrottleForBackground", 981);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetThrottleForBackground", 981);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_26D24(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 688) |= 4u;
      *(a1 + 106144) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetMinimizeMemoryUsage", 1029, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetMinimizeMemoryUsage", 1029, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetMinimizeMemoryUsage", 1019, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_HEVC_SetMinimizeMemoryUsage");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetMinimizeMemoryUsage");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2706C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 688) & 4;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = v10 >> 2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v16);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMinimizeMemoryUsage", 1067, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetMinimizeMemoryUsage", 1067);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMinimizeMemoryUsage", 1067);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27290(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >> 5 >= 0xC35)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v24, 30, v25, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1125, "0 < maxFrameRate && maxFrameRate <= 100000", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 100000);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v26, 30, v28, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1125, "0 < maxFrameRate && maxFrameRate <= 100000", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v24, 30, v25, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1125, "0 < maxFrameRate && maxFrameRate <= 100000", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106148) = valuePtr;
        *(a1 + 11968) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1115, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1115, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate", 1105, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetMaximumRealTimeFrameRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27700(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11968);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1171, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1171, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1171, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1161, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1161);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetMaximumRealTimeFrameRate", 1161);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27A30(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106152) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality", 1214, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality", 1214, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality", 1204, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetPrioritizeEncodingSpeedOverQuality");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27D6C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 106152);
    v11 = &kCFBooleanTrue;
    if (v10 <= 0)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 0;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetPrioritizeEncodingSpeedOverQuality", 1253, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetPrioritizeEncodingSpeedOverQuality", 1253);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetPrioritizeEncodingSpeedOverQuality", 1253);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_27F9C(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = sub_16FD90(*(a1 + 68));
    if (v10)
    {
      v11 = v10;
      v12 = CFNumberCreate(a3, kCFNumberSInt32Type, (*(v10 + 2) + 4));
      if (v12)
      {
        v13 = v12;
        *a5 = v12;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v15 = sub_160F34(0x1Eu);
          v16 = sub_175AE4();
          v17 = sub_160F68(7);
          if (v15)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v16, 30, v17, a1, *(a1 + 56), *a2, *(*(v11 + 2) + 4), v13);
            v16 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v16, 30);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_GetNumberOfCores", 1306, "pNum != __null", a1, *(a1 + 56), a2, a3, a4, a5, *(*(v11 + 2) + 4));
            v29 = sub_175AE4();
            v32 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v29, 30, v32, "AVE_Prop_HEVC_GetNumberOfCores", 1306, "pNum != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_GetNumberOfCores", 1306, "pNum != __null", a1);
          }
        }

        return 4294966293;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %p %p %d\n", v23, 30, v24, "AVE_Prop_HEVC_GetNumberOfCores", 1301, "pDevCap != __null", a1, *(a1 + 56), a2, a3, a4, a5, *(a1 + 68));
          v25 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %p %p %d", v25, 30, v31, "AVE_Prop_HEVC_GetNumberOfCores", 1301, "pDevCap != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %p %p %d", v23, 30, v24, "AVE_Prop_HEVC_GetNumberOfCores", 1301, "pDevCap != __null", a1);
        }
      }

      return 4294966294;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetNumberOfCores", 1293, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v30, "AVE_Prop_HEVC_GetNumberOfCores", 1293);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetNumberOfCores", 1293);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_283F0(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = sub_17D5E4(*(a1 + 104628));
    if (v10)
    {
      v11 = v10[2];
      v12 = v10[3];
    }

    else
    {
      v12 = 1;
      v11 = 8;
    }

    v17 = sub_E7234(*(a1 + 68), 1, 2, v11, v12, 1);
    valuePtr = v17;
    if (v17 <= 0)
    {
      v24 = v17;
      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find DevCap Pixel Perf %p %lld %p %p %p %d %lld\n", v26, 30, v27, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1360, "pixelPerf > 0", a1, *(a1 + 56), a3, a4, a5, *(a1 + 68), v24);
          v28 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find DevCap Pixel Perf %p %lld %p %p %p %d %lld", v28, 30, v34, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1360, "pixelPerf > 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find DevCap Pixel Perf %p %lld %p %p %p %d %lld", v26, 30, v27, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1360, "pixelPerf > 0", a1);
        }
      }

      return 4294966294;
    }

    else
    {
      v18 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
      if (v18)
      {
        v19 = v18;
        *a5 = v18;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v21 = sub_160F34(0x1Eu);
          v22 = sub_175AE4();
          v23 = sub_160F68(7);
          if (v21)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %lld %p\n", v22, 30, v23, a1, *(a1 + 56), *a2, valuePtr, v19);
            v22 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld %p", v22, 30);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v29 = sub_160F34(0x1Eu);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld\n", v30, 30, v31, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1365, "pNum != __null", a1, *(a1 + 56), a2, a3, a4, a5, valuePtr);
            v32 = sub_175AE4();
            v35 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld", v32, 30, v35, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1365, "pNum != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld", v30, 30, v31, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1365, "pNum != __null", a1);
          }
        }

        return 4294966293;
      }
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1343, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v16 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v33, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1343);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_GetMaxEncoderPixelRate", 1343);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_28860(uint64_t a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a1;
  if (a4)
  {
    v8 = sub_16FD90(a1);
    if (v8)
    {
      v9 = v8;
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v11 = Mutable;
        if ((a2 & 0x30000) == 0x10000)
        {
          v12 = kVTPropertyReadWriteStatus_ReadOnly;
        }

        else
        {
          v12 = kVTPropertyReadWriteStatus_ReadWrite;
        }

        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, kVTPropertyType_Enumeration);
        CFDictionarySetValue(v11, kVTPropertyReadWriteStatusKey, v12);
        v13 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (v13)
        {
          v14 = v13;
          v15 = &qword_20C218;
          v16 = 86;
          while (1)
          {
            if (!*(v15 + 3))
            {
              if (CFEqual(*v15, kVTProfileLevel_HEVC_Main42210_AutoLevel))
              {
                v17 = *(v9 + 1);
                v18 = v17 != 5 && v17 <= 7;
                v19 = kVTProfileLevel_HEVC_Main42210_AutoLevel;
                if (v18)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                v19 = *v15;
              }

              CFArrayAppendValue(v14, v19);
            }

LABEL_19:
            v15 += 2;
            if (!--v16)
            {
              CFDictionarySetValue(v11, kVTPropertySupportedValueListKey, v14);
              CFDictionarySetValue(a4, kVTCompressionPropertyKey_ProfileLevel, v11);
              CFRelease(v14);
              v20 = 0;
              goto LABEL_41;
            }
          }
        }

        if (sub_160EF0(0x1Eu, 4))
        {
          v33 = sub_160F34(0x1Eu);
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
          if (v33)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p\n", v34, 30, v35, "AVE_Prop_HEVC_AddProfileLevel", 1422, "pTmpArray != __null", v6, a2, a3, a4);
            v36 = sub_175AE4();
            v41 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p", v36, 30, v41);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p", v34, 30, v35);
          }
        }

        v20 = 4294966293;
LABEL_41:
        CFRelease(v11);
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v29 = sub_160F34(0x1Eu);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p\n", v30, 30, v31, "AVE_Prop_HEVC_AddProfileLevel", 1409, "pTmpDict != __null", v6, a2, a3, a4);
            v32 = sub_175AE4();
            v40 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p", v32, 30, v40);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p", v30, 30, v31);
          }
        }

        return 4294966293;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v26, 30, v27, "AVE_Prop_HEVC_AddProfileLevel", 1403, "pDevCap != __null", v6, a2, a3, a4);
          v28 = sub_175AE4();
          v39 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v28, 30, v39);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v26, 30, v27);
        }
      }

      return 4294966294;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v21 = sub_160F34(0x1Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v22, 30, v23, "AVE_Prop_HEVC_AddProfileLevel", 1398, "pDict != __null", v6, a2, a3, 0);
        v24 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v24, 30, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v22, 30, v23);
      }
    }

    return 4294966295;
  }

  return v20;
}

uint64_t sub_28D90(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = (a1 + 24732);
      v10 = sub_14CE6C(a4, (a1 + 106156), 0x80u);
      sub_172100((a1 + 106156), 128, "%s", v10);
      v11 = &qword_20C220 + 1;
      v12 = 86;
      while (!CFEqual(a4, *(v11 - 3)))
      {
        v11 += 4;
        if (!--v12)
        {
          v13 = 0;
LABEL_10:
          if (sub_160EF0(0x1Eu, 4))
          {
            v14 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | unsupported profile/level %p %lld %s %s %d %d\n", v15, 30, v16, "AVE_Prop_HEVC_SetProfileLevel", 1534, "eProfile != HEVC_Profile_Invalid", a1, *(a1 + 56), *a2, (a1 + 106156), 0, v13);
              v17 = sub_175AE4();
              v40 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported profile/level %p %lld %s %s %d %d", v17, 30, v40, "AVE_Prop_HEVC_SetProfileLevel", 1534);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported profile/level %p %lld %s %s %d %d", v15, 30, v16, "AVE_Prop_HEVC_SetProfileLevel", 1534);
            }
          }

          return 4294965292;
        }
      }

      v27 = *(v11 - 1);
      v13 = *v11;
      if (v27 <= 0xA)
      {
        if (((1 << v27) & 0x584) != 0)
        {
          if ((*(a1 + 10782) & 1) == 0)
          {
            *v9 = 0x200000002;
            *(a1 + 10782) = 1;
          }
        }

        else if (!v27)
        {
          goto LABEL_10;
        }
      }

      *(a1 + 104628) = v27;
      if (v13)
      {
        *(a1 + 104632) = v13;
      }

      v29 = v27 > 0xA || ((1 << v27) & 0x7C6) == 0;
      if (v29 || *(a1 + 10752) == 2)
      {
        goto LABEL_54;
      }

      v30 = *v9 + 8;
      if (v30 <= *(a1 + 24736) + 8)
      {
        v30 = *(a1 + 24736) + 8;
      }

      v31 = sub_DDADC(*(a1 + 68), *(a1 + 64), *(a1 + 716), 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v30, v27, 0x1414C4C20, *(a1 + 16));
      if (!v31)
      {
LABEL_54:
        if (sub_160EF0(0x1Eu, 7))
        {
          v36 = sub_160F34(0x1Eu);
          v37 = sub_175AE4();
          v38 = sub_160F68(7);
          if (v36)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d\n", v37, 30, v38, a1, *(a1 + 56), *a2, v27, v13);
            v37 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d", v37);
        }

        return 0;
      }

      else
      {
        v28 = v31;
        if (sub_160EF0(0x1Eu, 4))
        {
          v32 = sub_160F34(0x1Eu);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d\n", v33, 30, v34, "AVE_Prop_HEVC_SetProfileLevel", 1568, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v28);
            v35 = sub_175AE4();
            v42 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", v35, 30, v42, "AVE_Prop_HEVC_SetProfileLevel", 1568, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", v33, 30, v34, "AVE_Prop_HEVC_SetProfileLevel", 1568, "ret == 0");
          }
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *(a1 + 56);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetProfileLevel", 1501, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetProfileLevel", 1501, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetProfileLevel", 1491, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v41 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v41, "AVE_Prop_HEVC_SetProfileLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_SetProfileLevel");
      }
    }

    return 4294966295;
  }

  return v28;
}

uint64_t sub_293E4(uint64_t a1, const char **a2, CFAllocatorRef alloc, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, (a1 + 106156), 0);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %s %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, (a1 + 106156), v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %s %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s\n", v21, 30, v22, "AVE_Prop_HEVC_GetProfileLevel", 1610, "pStr != __null", a1, alloc, a4, a5, (a1 + 106156));
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v23, 30, v25, "AVE_Prop_HEVC_GetProfileLevel", 1610);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v21, 30, v22, "AVE_Prop_HEVC_GetProfileLevel", 1610);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetProfileLevel", 1601, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, alloc, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetProfileLevel", 1601);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetProfileLevel", 1601);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_296F0(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1663, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1663, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1663, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106284) = valuePtr;
        *(a1 + 1348) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1653, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1653, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetMaxAllowedFrameQP", 1643, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetMaxAllowedFrameQP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetMaxAllowedFrameQP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_29B68(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1348);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1709, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1709, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1709, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1699, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1699);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetMaxAllowedFrameQP", 1699);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_29E98(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1762, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1762, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1762, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106288) = valuePtr;
        *(a1 + 1344) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1752, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1752, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetMinAllowedFrameQP", 1742, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetMinAllowedFrameQP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetMinAllowedFrameQP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2A310(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1344);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1808, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1808, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1808, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1798, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1798);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetMinAllowedFrameQP", 1798);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2A640(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1861, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1861, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1861, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106292) = valuePtr;
        *(a1 + 1236) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1851, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1851, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter", 1841, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetSoftMaxQuantizationParameter");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2AAB8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1236);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1907, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1907, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1907, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1897, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1897);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetSoftMaxQuantizationParameter", 1897);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2ADE8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1960, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1960, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1960, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106296) = valuePtr;
        *(a1 + 1232) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1950, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1950, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter", 1940, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetSoftMinQuantizationParameter");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2B260(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1232);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 2006, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 2006, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 2006, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 1996, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 1996);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetSoftMinQuantizationParameter", 1996);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2B590(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_SetAverageBitRate", 2057, "iBitRate >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_HEVC_SetAverageBitRate", 2057, "iBitRate >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_HEVC_SetAverageBitRate", 2057, "iBitRate >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106300) = valuePtr;
        if (v9)
        {
          *(a1 + 1136) = v9;
          *(a1 + 10783) = 1;
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetAverageBitRate", 2048, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetAverageBitRate", 2048, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetAverageBitRate", 2038, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetAverageBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetAverageBitRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2B9F4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1136);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetAverageBitRate", 2108, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetAverageBitRate", 2108, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetAverageBitRate", 2108, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetAverageBitRate", 2098, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetAverageBitRate", 2098);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetAverageBitRate", 2098);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2BD24(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (*(a1 + 10556) == 1)
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
        v9 = valuePtr;
        if (valuePtr > 0)
        {
          *(a1 + 106304) = valuePtr;
          *(a1 + 1132) = 2;
          *(a1 + 1136) = v9;
          *(a1 + 10783) = 257;
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v11 = sub_160F34(0x1Eu);
            v12 = sub_175AE4();
            v13 = sub_160F68(7);
            if (v11)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
              v12 = sub_175AE4();
              sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
            return 0;
          }

          return result;
        }

        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetConstantBitRate", 2167, "iBitRate > 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v29 = sub_175AE4();
            v31 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v29, 30, v31, "AVE_Prop_HEVC_SetConstantBitRate", 2167, "iBitRate > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetConstantBitRate", 2167, "iBitRate > 0");
          }
        }
      }

      else if (sub_160EF0(0x1Eu, 4))
      {
        v23 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetConstantBitRate", 2157, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_SetConstantBitRate", 2157);
      }

      return 4294965292;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *(a1 + 56);
      v22 = CFGetTypeID(a4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetConstantBitRate", 2151, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetConstantBitRate", 2151, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetConstantBitRate", 2141, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v30, "AVE_Prop_HEVC_SetConstantBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetConstantBitRate");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_2C274(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1136);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetConstantBitRate", 2216, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetConstantBitRate", 2216, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetConstantBitRate", 2216, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetConstantBitRate", 2206, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetConstantBitRate", 2206);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetConstantBitRate", 2206);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2C5A4(uint64_t a1, const char **a2, const void *a3, const __CFArray *a4)
{
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = a1 + 104640;
      v10 = sub_17D13C(a4, &v42);
      if (v10)
      {
        sub_16CEF8(&v42, 30, 4, "AVE_Prop_HEVC_SetDataRateLimits", 2264);
      }

      else
      {
        v20 = v43;
        *(a1 + 106312) = v42;
        *(a1 + 106328) = v20;
        *(a1 + 106344) = v44;
      }

      v21 = v42;
      *v9 = v42 != 0;
      if (v21 >= 1)
      {
        v41 = (a1 + 104640);
        v22 = 0;
        v23 = &v43;
        do
        {
          v24 = *v23;
          if (*v23 <= 10.0)
          {
            if (*(v23 - 1) <= 0.0)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (sub_160EF0(0x1Eu, 5))
            {
              v25 = sub_160F34(0x1Eu);
              v26 = sub_175AE4();
              v27 = sub_160F68(5);
              if (v25)
              {
                printf("%lld %d AVE %s: DataRateLimitsSeconds is longer than 10s. Force to 10s.\n", v26, 30, v27);
                v28 = sub_175AE4();
                v39 = sub_160F68(5);
                syslog(3, "%lld %d AVE %s: DataRateLimitsSeconds is longer than 10s. Force to 10s.", v28, 30, v39);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: DataRateLimitsSeconds is longer than 10s. Force to 10s.", v26, 30, v27);
              }
            }

            v24 = *(v23 - 1) * 10.0 / *v23;
            *(v23 - 1) = v24;
            *v23 = 10.0;
          }

          if (v24 <= 0.0)
          {
LABEL_38:
            *v41 = 0;
            goto LABEL_39;
          }

          ++v22;
          v23 += 2;
        }

        while (v22 < v42);
        v9 = a1 + 104640;
        if (*v41)
        {
          goto LABEL_33;
        }

        goto LABEL_39;
      }

      if (v21)
      {
LABEL_33:
        *(a1 + 1192) = v44;
        v29 = v43;
        *(a1 + 1160) = v42;
        *(a1 + 1176) = v29;
        if (*(v9 + 4) == 30566)
        {
          *(a1 + 1132) = 4;
          *(a1 + 10784) = 1;
          if (*(a1 + 10556) != 1)
          {
            if (sub_160EF0(0x1Eu, 4))
            {
              v30 = sub_160F34(0x1Eu);
              v31 = sub_175AE4();
              v32 = sub_160F68(4);
              if (v30)
              {
                printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p\n", v31, 30, v32, "AVE_Prop_HEVC_SetDataRateLimits", 2303, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
                v33 = sub_175AE4();
                v40 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p", v33, 30, v40, "AVE_Prop_HEVC_SetDataRateLimits", 2303);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p", v31, 30, v32, "AVE_Prop_HEVC_SetDataRateLimits", 2303);
              }
            }

            return 4294965292;
          }
        }
      }

LABEL_39:
      if (sub_160EF0(0x1Eu, 7))
      {
        v34 = sub_160F34(0x1Eu);
        v35 = sub_175AE4();
        v36 = sub_160F68(7);
        if (v34)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v35, 30, v36, a1, *(a1 + 56), *a2, v42);
          v35 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v35);
      }

      return v10;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      v18 = *(a1 + 56);
      v19 = CFGetTypeID(a4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_HEVC_SetDataRateLimits", 2258, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_HEVC_SetDataRateLimits", 2258, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_HEVC_SetDataRateLimits", 2248, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v38, "AVE_Prop_HEVC_SetDataRateLimits");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_HEVC_SetDataRateLimits");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_2CB80(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    if (sub_17D318((a1 + 1160), Mutable))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to make DRL %p %lld %p %p %p %p %d\n", v12, 30, v13, "AVE_Prop_HEVC_GetDataRateLimits", 2348, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 1160));
          v14 = sub_175AE4();
          v23 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRL %p %lld %p %p %p %p %d", v14, 30, v23, "AVE_Prop_HEVC_GetDataRateLimits", 2348, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRL %p %lld %p %p %p %p %d", v12, 30, v13, "AVE_Prop_HEVC_GetDataRateLimits", 2348, "ret == 0", a1);
        }
      }

      return 4294966293;
    }

    else
    {
      *a5 = Mutable;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(7);
        if (v20)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v21, 30, v22, a1, *(a1 + 56), *a2, *(a1 + 1160), Mutable);
          v21 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v21, 30);
        return 0;
      }
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_GetDataRateLimits", 2336, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v18 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v24, "AVE_Prop_HEVC_GetDataRateLimits", 2336);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v17, "AVE_Prop_HEVC_GetDataRateLimits", 2336);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2CEB8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr <= 0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_SetVariableBitRate", 2400, "iBitRate > 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_HEVC_SetVariableBitRate", 2400, "iBitRate > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_HEVC_SetVariableBitRate", 2400, "iBitRate > 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106352) = valuePtr;
        *(a1 + 1132) = 5;
        *(a1 + 10783) = 257;
        *(a1 + 1136) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetVariableBitRate", 2391, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetVariableBitRate", 2391, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetVariableBitRate", 2381, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetVariableBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetVariableBitRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2D320(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1136);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetVariableBitRate", 2449, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetVariableBitRate", 2449, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetVariableBitRate", 2449, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetVariableBitRate", 2439, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetVariableBitRate", 2439);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetVariableBitRate", 2439);
      }
    }

    return 4294966295;
  }

  return result;
}