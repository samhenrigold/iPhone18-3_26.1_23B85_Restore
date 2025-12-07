uint64_t sub_138D3C(const void *a1, void *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d %lld\n", v6, 11, v7, "AVE_Plugin_AVC_CompleteFrames", a1, *a2, *(a2 + 2), 0);
      v6 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d %lld", v6, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      v11 = sub_F46C0(v9);
      if (v11 && sub_160EF0(0xBu, 4))
      {
        v12 = sub_160F34(0xBu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d\n", v13, 11, v14, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0", a1, *a2, *(a2 + 2), v10, v9, v11);
          v15 = sub_175AE4();
          v33 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d", v15, 11, v33, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d", v13, 11, v14, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v21, 11, v22, "AVE_Plugin_AVC_CompleteFrames", 465, "pPI != __null", a1, 0, 0);
          v23 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v23, 11, v35);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v21, 11, v22);
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v9);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v16 = sub_160F34(0xBu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d\n", v17, 11, v18, "AVE_Plugin_AVC_CompleteFrames", 460, "encoder != __null", 0, *a2, *(a2 + 2), 0, 0);
        v19 = sub_175AE4();
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v19, 11, v34, "AVE_Plugin_AVC_CompleteFrames", 460);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v17, 11, v18, "AVE_Plugin_AVC_CompleteFrames", 460);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v24 = sub_175AE4() - v4;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 7;
  }

  v26 = sub_175994(v11);
  if (v11)
  {
    v25 = 4;
  }

  if (sub_160EF0(0xBu, v25))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v25);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_CompleteFrames", a1, *a2, *(a2 + 2), v10, v24, v11, v26);
      v30 = sub_175AE4();
      v31 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v30, 11, v31, "AVE_Plugin_AVC_CompleteFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v28, 11, v29, "AVE_Plugin_AVC_CompleteFrames");
    }
  }

  return v26;
}

uint64_t sub_1392BC(const void *a1, void *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    *a2 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = *(v9 + 56);
      kdebug_trace();
      v11 = sub_F4A58(v9, a2);
      if (v11 && sub_160EF0(0xBu, 4))
      {
        v12 = sub_160F34(0xBu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC property dictionary %p %p %lld %d\n", v13, 11, v14, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", 540, "ret == 0", a1, a2, v10, v11);
          v15 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC property dictionary %p %p %lld %d", v15, 11, v32, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC property dictionary %p %p %lld %d", v13, 11, v14, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d\n", v21, 11, v22, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", 528, "pPI != __null", a1, a2, 0, 0);
          v23 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v23, 11, v34, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v21, 11, v22, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v9);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v16 = sub_160F34(0xBu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v17, 11, v18, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", 521, "encoder != __null && supportedPropertyDictionaryOut != __null", a1, a2, 0, 0);
        v19 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v19, 11, v33, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v17, 11, v18, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v24 = sub_175AE4() - v4;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 7;
  }

  v26 = sub_175994(v11);
  if (v11)
  {
    v25 = 4;
  }

  if (sub_160EF0(0xBu, v25))
  {
    v27 = sub_160F34(0xBu);
    v28 = sub_175AE4();
    v29 = sub_160F68(v25);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", a1, a2, v10, v24, v11, v26);
      v30 = sub_175AE4();
      v35 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v30, 11, v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v29);
    }
  }

  return v26;
}

uint64_t sub_1397EC(const void *a1, const __CFDictionary *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_AVC_SetProperties", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v9 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      CFDictionaryApplyFunction(a2, sub_13C614, v9);
      kdebug_trace();
      sub_13DC4C(*v9);
      v11 = 0;
      v12 = 1;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v17 = sub_160F34(0xBu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_SetProperties", 608, "pPI != __null", a1, a2, 0, 0);
          v20 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_AVC_SetProperties");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_AVC_SetProperties");
        }
      }

      v12 = 0;
      v10 = 0;
      v11 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v13 = sub_160F34(0xBu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_AVC_SetProperties", 603, "encoder != __null && propertyDictionary != __null", a1, a2, 0, 0);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_AVC_SetProperties");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_AVC_SetProperties");
      }
    }

    v12 = 0;
    v10 = 0;
    v11 = 4294966295;
  }

  v21 = sub_175AE4() - v4;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 7;
  }

  v23 = sub_175994(v11);
  if (v12)
  {
    v24 = v22;
  }

  else
  {
    v24 = 4;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_AVC_SetProperties", a1, a2, v10, v21, v11, v23);
      v28 = sub_175AE4();
      v32 = sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t sub_139C44(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, 0);
      v6 = sub_175AE4();
      v38 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v38, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v17 = sub_F50AC(v8, v10, v11, v12, v13, v14, v15, v16);
      if (v17 && sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %lld %p %d\n", v19, 11, v20, "AVE_Plugin_AVC_PrepareToEncodeFrames", 672, "ret == 0", a1, v9, v8, v17);
          v21 = sub_175AE4();
          v39 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %lld %p %d", v21, 11, v39, "AVE_Plugin_AVC_PrepareToEncodeFrames");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %lld %p %d", v19, 11, v20, "AVE_Plugin_AVC_PrepareToEncodeFrames");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v26 = sub_160F34(0xBu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v27, 11, v28, "AVE_Plugin_AVC_PrepareToEncodeFrames", 661, "pPI != __null", a1, 0, 0);
          v29 = sub_175AE4();
          v41 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v29, 11, v41);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v27, 11, v28);
        }
      }

      v9 = 0;
      v17 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v22 = sub_160F34(0xBu);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_PrepareToEncodeFrames", 657, "encoder != __null", 0, 0, 0);
        v25 = sub_175AE4();
        v40 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v25, 11, v40);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v23, 11, v24);
      }
    }

    v9 = 0;
    v17 = 4294966295;
  }

  v30 = sub_175AE4() - v2;
  if (v30 >= 50000)
  {
    v31 = 5;
  }

  else
  {
    v31 = 6;
  }

  v32 = sub_175994(v17);
  if (v17)
  {
    v33 = 4;
  }

  else
  {
    v33 = v31;
  }

  if (sub_160EF0(0xBu, v33))
  {
    v34 = sub_160F34(0xBu);
    v35 = sub_175AE4();
    v36 = sub_160F68(v33);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v35, 11, v36, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, v9, v30, v17, v32);
      v35 = sub_175AE4();
      sub_160F68(v33);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v35, 11);
  }

  return v32;
}

uint64_t sub_13A148(const void *a1, int a2, const void *a3)
{
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x %p %lld\n", v8, 11, v9, "AVE_Plugin_AVC_BeginPass", a1, a2, a3, 0);
      v8 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x %p %lld", v8, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = sub_F55C4(v11, a2);
      if (v13 && sub_160EF0(0xBu, 4))
      {
        v14 = sub_160F34(0xBu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to begin AVC Multipass %p 0x%x %lld %p %d\n", v15, 11, v16, "AVE_Plugin_AVC_BeginPass", 732, "ret == 0", a1, a2, v12, v11, v13);
          v17 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin AVC Multipass %p 0x%x %lld %p %d", v17, 11, v35, "AVE_Plugin_AVC_BeginPass", 732);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin AVC Multipass %p 0x%x %lld %p %d", v15, 11, v16, "AVE_Plugin_AVC_BeginPass", 732);
        }
      }

      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v22 = sub_160F34(0xBu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p 0x%x %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_BeginPass", 721, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p 0x%x %p %lld %d", v25, 11, v37, "AVE_Plugin_AVC_BeginPass", 721);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p 0x%x %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_BeginPass", 721);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v18 = sub_160F34(0xBu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d\n", v19, 11, v20, "AVE_Plugin_AVC_BeginPass", 716, "encoder != __null", 0, a2, a3, 0, 0);
        v21 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v21, 11, v36, "AVE_Plugin_AVC_BeginPass", 716);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v19, 11, v20, "AVE_Plugin_AVC_BeginPass", 716);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  if ((sub_175AE4() - v6) >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_175994(v13);
  if (v13)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_160EF0(0xBu, v28))
  {
    v29 = sub_160F34(0xBu);
    v30 = sub_175AE4();
    v31 = sub_160F68(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d\n", v30, 11, v31, "AVE_Plugin_AVC_BeginPass", a1, a2, a3, v12, v13);
      v32 = sub_175AE4();
      v33 = sub_160F68(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d", v32, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t sub_13A6B8(const void *a1, _BYTE *a2, const void *a3)
{
  v38 = 0;
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, v9, "AVE_Plugin_AVC_EndPass", a1, a2, a3, 0);
      v8 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v8, 11);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      *a2 = 0;
      v13 = sub_F5C3C(v11, &v38);
      if (v13)
      {
        if (sub_160EF0(0xBu, 4))
        {
          v14 = sub_160F34(0xBu);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to end AVC Multipass %p %p %p %lld %p %d\n", v15, 11, v16, "AVE_Plugin_AVC_EndPass", 796, "ret == 0", a1, a2, a3, v12, v11, v13);
            v17 = sub_175AE4();
            v35 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end AVC Multipass %p %p %p %lld %p %d", v17, 11, v35, "AVE_Plugin_AVC_EndPass", 796, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end AVC Multipass %p %p %p %lld %p %d", v15, 11, v16, "AVE_Plugin_AVC_EndPass", 796, "ret == 0");
          }
        }
      }

      else if (v38)
      {
        *a2 = 1;
      }

      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v22 = sub_160F34(0xBu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_EndPass", 783, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v25, 11, v37, "AVE_Plugin_AVC_EndPass", 783);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_EndPass", 783);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v18 = sub_160F34(0xBu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_AVC_EndPass", 778, "encoder != __null && furtherPassesRequestedOut != __null", a1, a2, a3, 0, 0);
        v21 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v21, 11, v36, "AVE_Plugin_AVC_EndPass", 778);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_AVC_EndPass", 778);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  if ((sub_175AE4() - v6) >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_175994(v13);
  if (v13)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_160EF0(0xBu, v28))
  {
    v29 = sub_160F34(0xBu);
    v30 = sub_175AE4();
    v31 = sub_160F68(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_AVC_EndPass", a1, a2, a3, v12, v13);
      v32 = sub_175AE4();
      v33 = sub_160F68(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d", v32, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t sub_13AC24(const void *a1, pthread_mutex_t *a2, const void *a3, unint64_t a4, pthread_mutex_t *a5)
{
  v6 = a4;
  v8 = HIDWORD(a4);
  v51 = 0;
  v9 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v10 = sub_160F34(0xBu);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld\n", v11, 11, v12, "AVE_Plugin_AVC_StartTileSession", a1, a2, a3, v6, v8, a5, 0);
      v13 = sub_175AE4();
      v43 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v13, 11, v43, "AVE_Plugin_AVC_StartTileSession");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v11, 11, v12, "AVE_Plugin_AVC_StartTileSession");
    }
  }

  v48 = a3;
  if (a1 && a2 && v6 >= 1 && v8 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = DerivedStorage;
    if (DerivedStorage)
    {
      v51 = __PAIR64__(v8, v6);
      sub_13DC18(*DerivedStorage);
      v16 = v15[7];
      kdebug_trace();
      v15[2] = a2;
      v15[14] = a5;
      *(v15 + 8) = 2;
      v17 = sub_F6F68(v15, &v51);
      if (!v17)
      {
        v31 = v15[14];
        if (v31)
        {
          CFRetain(v31);
        }

        v18 = 0;
        goto LABEL_29;
      }

      v18 = v17;
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d\n", v20, 11, v21, "AVE_Plugin_AVC_StartTileSession", 877, "ret == 0", a1, a2, v6, v8, a5, v16, v15, v18);
          v47 = sub_175AE4();
          v44 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v47, 11, v44, "AVE_Plugin_AVC_StartTileSession", 877, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v20, 11, v21, "AVE_Plugin_AVC_StartTileSession", 877, "ret == 0", a1);
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v26 = a5;
        v27 = sub_160F34(0xBu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v42 = v28;
        a5 = v26;
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d\n", v42, 11, v29, "AVE_Plugin_AVC_StartTileSession", 857, "pPI != __null", a1, a2, v6, v8, v26, 0, 0);
          v30 = sub_175AE4();
          v46 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v30, 11, v46, "AVE_Plugin_AVC_StartTileSession", 857, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v42, 11, v29, "AVE_Plugin_AVC_StartTileSession", 857, "pPI != __null");
        }
      }

      v16 = 0;
      v18 = 4294966296;
    }

    v15[2] = 0;
    v15[14] = 0;
LABEL_29:
    kdebug_trace();
    sub_13DC4C(*v15);
    goto LABEL_30;
  }

  if (sub_160EF0(0xBu, 4))
  {
    v22 = sub_160F34(0xBu);
    v23 = sub_175AE4();
    v24 = sub_160F68(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_StartTileSession", 851, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0", a1, a2, v6, v8, a5, 0, 0);
      v25 = sub_175AE4();
      v45 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v25, 11, v45, "AVE_Plugin_AVC_StartTileSession", 851, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_StartTileSession", 851, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
    }
  }

  v16 = 0;
  v18 = 4294966295;
LABEL_30:
  v32 = sub_175AE4() - v9;
  if (v32 >= 50000)
  {
    v33 = 5;
  }

  else
  {
    v33 = 6;
  }

  v34 = sub_175994(v18);
  if (v18)
  {
    v33 = 4;
  }

  if (sub_160EF0(0xBu, v33))
  {
    v35 = v16;
    v36 = sub_160F34(0xBu);
    v37 = sub_175AE4();
    v38 = sub_160F68(v33);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d\n", v37, 11, v38, "AVE_Plugin_AVC_StartTileSession", a1, a2, v48, v6, v8, a5, v35, v32, v18, v34);
      v39 = sub_175AE4();
      v40 = sub_160F68(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v39, 11, v40, "AVE_Plugin_AVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v37, 11, v38, "AVE_Plugin_AVC_StartTileSession", a1, a2);
    }
  }

  return v34;
}

uint64_t sub_13B3C0(const void *a1, int a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v6, 11, v7, "AVE_Plugin_AVC_PrepareToEncodeTiles", a1, a2, 0);
      v6 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v6);
  }

  if (a1)
  {
    if (a2)
    {
      if (sub_160EF0(0xBu, 4))
      {
        v8 = sub_160F34(0xBu);
        v9 = sub_175AE4();
        v10 = sub_160F68(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d\n", v9, 11, v10, "AVE_Plugin_AVC_PrepareToEncodeTiles", 940, "!expectPartialTiles", a1, a2, 0, 0);
          v11 = sub_175AE4();
          v44 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v11, 11, v44, "AVE_Plugin_AVC_PrepareToEncodeTiles");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v9, 11, v10, "AVE_Plugin_AVC_PrepareToEncodeTiles");
        }
      }

      v18 = 0;
      v26 = 4294966294;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v17 = DerivedStorage;
      if (DerivedStorage)
      {
        sub_13DC18(*DerivedStorage);
        v18 = v17[7];
        kdebug_trace();
        v26 = sub_F50AC(v17, v19, v20, v21, v22, v23, v24, v25);
        if (v26 && sub_160EF0(0xBu, 4))
        {
          v27 = sub_160F34(0xBu);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %d %lld %p %d\n", v28, 11, v29, "AVE_Plugin_AVC_PrepareToEncodeTiles", 955, "ret == 0", a1, 0, v18, v17, v26);
            v30 = sub_175AE4();
            v46 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %d %lld %p %d", v30, 11, v46, "AVE_Plugin_AVC_PrepareToEncodeTiles", 955);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %d %lld %p %d", v28, 11, v29, "AVE_Plugin_AVC_PrepareToEncodeTiles", 955);
          }
        }
      }

      else
      {
        if (sub_160EF0(0xBu, 4))
        {
          v31 = sub_160F34(0xBu);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %d %lld %d\n", v32, 11, v33, "AVE_Plugin_AVC_PrepareToEncodeTiles", 944, "pPI != __null", a1, 0, 0, 0);
            v34 = sub_175AE4();
            v47 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %d %lld %d", v34, 11, v47, "AVE_Plugin_AVC_PrepareToEncodeTiles");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %d %lld %d", v32, 11, v33, "AVE_Plugin_AVC_PrepareToEncodeTiles");
          }
        }

        v18 = 0;
        v26 = 4294966296;
      }

      kdebug_trace();
      sub_13DC4C(*v17);
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v12 = sub_160F34(0xBu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d\n", v13, 11, v14, "AVE_Plugin_AVC_PrepareToEncodeTiles", 935, "encoder != __null", 0, a2, 0, 0);
        v15 = sub_175AE4();
        v45 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v15, 11, v45, "AVE_Plugin_AVC_PrepareToEncodeTiles");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v13, 11, v14, "AVE_Plugin_AVC_PrepareToEncodeTiles");
      }
    }

    v18 = 0;
    v26 = 4294966295;
  }

  v35 = sub_175AE4() - v4;
  if (v35 >= 50000)
  {
    v36 = 5;
  }

  else
  {
    v36 = 6;
  }

  v37 = sub_175994(v26);
  if (v26)
  {
    v38 = 4;
  }

  else
  {
    v38 = v36;
  }

  if (sub_160EF0(0xBu, v38))
  {
    v39 = sub_160F34(0xBu);
    v40 = sub_175AE4();
    v41 = sub_160F68(v38);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d\n", v40, 11, v41, "AVE_Plugin_AVC_PrepareToEncodeTiles", a1, a2, v18, v35, v26, v37);
      v42 = sub_175AE4();
      v48 = sub_160F68(v38);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d", v42, 11, v48);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d", v40, 11, v41);
    }
  }

  return v37;
}

uint64_t sub_13B9EC(const void *a1, const void *a2, const void *a3, unint64_t a4, unint64_t a5, const void *a6, _DWORD *a7)
{
  v8 = a5;
  memset(v53, 0, sizeof(v53));
  v55 = 0;
  v56 = 0;
  memset(v54, 0, sizeof(v54));
  v11 = HIDWORD(a4);
  v12 = HIDWORD(a5);
  v13 = sub_175AE4();
  v46 = v11;
  v47 = v8;
  v49 = v12;
  if (sub_160EF0(0xBu, 8))
  {
    v43 = v13;
    v14 = sub_160F34(0xBu);
    v15 = sub_175AE4();
    v16 = sub_160F68(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld\n", v15, 11, v16, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0);
      v17 = sub_175AE4();
      v39 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld", v17, 11, v39, "AVE_Plugin_AVC_EncodeTile", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld", v15, 11, v16, "AVE_Plugin_AVC_EncodeTile", a1, a2);
    }

    v13 = v43;
  }

  if (a1 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = DerivedStorage;
    if (DerivedStorage)
    {
      v55 = __PAIR64__(v11, a4);
      v56 = __PAIR64__(v12, v8);
      sub_13DC18(*DerivedStorage);
      v20 = *(v19 + 56);
      kdebug_trace();
      v22 = sub_F7BF0(v19, a2, a3, &v55, v54, v53, a6, v21);
      ++*(v19 + 48);
    }

    else if (sub_160EF0(0xBu, 4))
    {
      v45 = v13;
      v27 = sub_160F34(0xBu);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %d %d %d %d %p %p %lld %d\n", v28, 11, v29, "AVE_Plugin_AVC_EncodeTile", 1022, "pPI != __null", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0, 0);
        v42 = sub_175AE4();
        v41 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %d %d %d %d %p %p %lld %d", v42, 11, v41, "AVE_Plugin_AVC_EncodeTile", 1022, "pPI != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %d %d %d %d %p %p %lld %d", v28, 11, v29, "AVE_Plugin_AVC_EncodeTile", 1022, "pPI != __null", a1, a2, a3);
      }

      v20 = 0;
      v22 = 4294966296;
      v13 = v45;
    }

    else
    {
      v20 = 0;
      v22 = 4294966296;
    }

    kdebug_trace();
    if (a7)
    {
      *a7 |= 1u;
    }

    sub_13DC4C(*v19);
  }

  else if (sub_160EF0(0xBu, 4))
  {
    v44 = v13;
    v23 = sub_160F34(0xBu);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d\n", v24, 11, v25, "AVE_Plugin_AVC_EncodeTile", 1014, "encoder != __null && imageBuffer != __null", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0, 0);
      v26 = sub_175AE4();
      v40 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d", v26, 11, v40, "AVE_Plugin_AVC_EncodeTile", 1014, "encoder != __null && imageBuffer != __null", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d", v24, 11, v25, "AVE_Plugin_AVC_EncodeTile", 1014, "encoder != __null && imageBuffer != __null", a1, a2, a3);
    }

    v20 = 0;
    v22 = 4294966295;
    v13 = v44;
  }

  else
  {
    v20 = 0;
    v22 = 4294966295;
  }

  v30 = sub_175AE4() - v13;
  if (v30 >= 50000)
  {
    v31 = 5;
  }

  else
  {
    v31 = 8;
  }

  v32 = sub_175994(v22);
  if (v22)
  {
    v33 = 4;
  }

  else
  {
    v33 = v31;
  }

  if (sub_160EF0(0xBu, v33))
  {
    v34 = sub_160F34(0xBu);
    v35 = sub_175AE4();
    v36 = sub_160F68(v33);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d\n", v35, 11, v36, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4, v46, v47, v49, a6, a7, v20, v30, v22, v32);
      v48 = sub_175AE4();
      v37 = sub_160F68(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d", v48, 11, v37, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d", v35, 11, v36, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4);
    }
  }

  return v32;
}

uint64_t sub_13C108(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_AVC_CompleteTiles", a1, 0);
      v6 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_AVC_CompleteTiles", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_AVC_CompleteTiles", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = sub_F46C0(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_CompleteTiles", 1107, "ret == 0", a1, v9, v8, v10);
          v14 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_AVC_CompleteTiles");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_CompleteTiles");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v19 = sub_160F34(0xBu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_CompleteTiles", 1096, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_CompleteTiles", 1091, "encoder != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_175AE4() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 7;
  }

  v25 = sub_175994(v10);
  if (v10)
  {
    v24 = 4;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v26 = sub_160F34(0xBu);
    v27 = sub_175AE4();
    v28 = sub_160F68(v24);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v27, 11, v28, "AVE_Plugin_AVC_CompleteTiles", a1, v9, v23, v10, v25);
      v29 = sub_175AE4();
      sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v29, 11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v27, 11);
    }
  }

  return v25;
}

void sub_13C614(const __CFString *a1, const void *a2, const void *a3)
{
  v6 = sub_E7EA8(a3, a1, a2);
  if (v6)
  {
    v7 = v6;
    if (sub_160EF0(0xBu, 4))
    {
      v8 = sub_160F34(0xBu);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d fail to set property AVC %p %p %p %d\n", v9, 11, v10, "AVE_Plugin_AVC_ApplierFunc", 576, a1, a2, a3, v7);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d fail to set property AVC %p %p %p %d", v11, 11, v12);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d fail to set property AVC %p %p %p %d", v9, 11, v10);
      }
    }
  }
}

uint64_t sub_13C738(unsigned int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v4 = sub_14B9CC(@"MotionEstimationModeID", *a1, a2);
    if (!v4)
    {
      v13 = sub_14B9CC(@"MotionEstimationHorizontalSearchRange", a1[1], a2);
      if (v13)
      {
        v5 = v13;
        if (!sub_160EF0(0x36u, 4))
        {
          return v5;
        }

        v14 = sub_160F34(0x36u);
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
        if (!v14)
        {
          goto LABEL_29;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", v7, 54, v8, "AVE_SearchRange_Make", 82, "ret == 0", a1, a2, v5);
      }

      else
      {
        v15 = sub_14B9CC(@"MotionEstimationVerticalSearchRange", a1[2], a2);
        if (v15)
        {
          v5 = v15;
          if (!sub_160EF0(0x36u, 4))
          {
            return v5;
          }

          v16 = sub_160F34(0x36u);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (!v16)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", v7, 54, v8, "AVE_SearchRange_Make", 87, "ret == 0", a1, a2, v5);
        }

        else
        {
          v5 = sub_14B9CC(@"MotionEstimationCacheMode", a1[3], a2);
          if (!v5 || !sub_160EF0(0x36u, 4))
          {
            return v5;
          }

          v17 = sub_160F34(0x36u);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (!v17)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", v7, 54, v8, "AVE_SearchRange_Make", 92, "ret == 0", a1, a2, v5);
        }
      }

      v9 = sub_175AE4();
      v19 = sub_160F68(4);
      goto LABEL_28;
    }

    v5 = v4;
    if (sub_160EF0(0x36u, 4))
    {
      v6 = sub_160F34(0x36u);
      v7 = sub_175AE4();
      v8 = sub_160F68(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", v7, 54, v8, "AVE_SearchRange_Make", 77, "ret == 0", a1, a2, v5);
        v9 = sub_175AE4();
        v19 = sub_160F68(4);
LABEL_28:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", v9, 54, v19);
        return v5;
      }

LABEL_29:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", v7, 54, v8);
    }
  }

  else
  {
    if (sub_160EF0(0x36u, 4))
    {
      v10 = sub_160F34(0x36u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 54, v12, "AVE_SearchRange_Make", 72, "pEntry != __null && pDict != __null", a1, a2);
        v11 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 54);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t sub_13CB28(unsigned int *a1, int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = 0;
    for (i = a1; ; i += 4)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        break;
      }

      v9 = Mutable;
      v10 = sub_13C738(i, Mutable);
      if (v10)
      {
        v11 = v10;
        CFRelease(v9);
        return v11;
      }

      CFArrayAppendValue(a3, v9);
      CFRelease(v9);
      if (a2 == ++v6)
      {
        return 0;
      }
    }

    if (sub_160EF0(0x36u, 4))
    {
      v16 = sub_160F34(0x36u);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d\n", v17, 54, v18, "AVE_SearchRange_MakeArray", 168, "pDict != __null", a1, a2, a3, v6);
        v19 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", v19, 54, v22, "AVE_SearchRange_MakeArray");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", v17, 54, v18, "AVE_SearchRange_MakeArray");
      }
    }

    return 4294966293;
  }

  else
  {
    if (sub_160EF0(0x36u, 4))
    {
      v12 = sub_160F34(0x36u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v13, 54, v14, "AVE_SearchRange_MakeArray", 160, "pEntry != __null && num > 0 && pArray != __null", a1, a2, a3);
        v15 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 54, v21);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v13, 54, v14);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_13CDC4(const void *a1, _DWORD *a2)
{
  memset(&rect, 0, sizeof(rect));
  if (!a1 || !a2)
  {
    if (sub_160EF0(0x32u, 4))
    {
      v11 = sub_160F34(0x32u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v12, 50, v13, "AVE_PIP_RetrieveEntry", 28, "pDict != __null && psEntry != __null", a1, a2);
        v12 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v12, 50);
    }

    return 4294966295;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      v17 = CFGetTypeID(a1);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld\n", v15, 30, v16, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, a2, v17);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        v41 = a2;
        v42 = CFGetTypeID(a1);
      }

      else
      {
        v41 = a2;
        v42 = v17;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld", v15, 30, v16, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, v41, v42);
    }

    return 4294965293;
  }

  Value = CFDictionaryGetValue(a1, @"Rectangle");
  if (!Value)
  {
    if (sub_160EF0(0x32u, 4))
    {
      v19 = sub_160F34(0x32u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p\n", v20, 50, v21, "AVE_PIP_RetrieveEntry", 39, "pRect != __null", a1, a2);
        v20 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p", v20, 50);
    }

    return 4294966288;
  }

  v6 = Value;
  v7 = CFDictionaryGetTypeID();
  if (v7 != CFGetTypeID(v6))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      v25 = CFGetTypeID(v6);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld\n", v23, 30, v24, "AVE_PIP_RetrieveEntry", 44, "CFDictionaryGetTypeID() == CFGetTypeID(pRect)", a1, a2, v6, v25);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        CFGetTypeID(v6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld", v23, 30, v24, "AVE_PIP_RetrieveEntry");
    }

    return 4294965293;
  }

  if (CGRectMakeWithDictionaryRepresentation(v6, &rect))
  {
    *a2 = vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(rect.origin)), vcvtq_s64_f64(vrndaq_f64(rect.size)));
    if (sub_160EF0(0x32u, 8))
    {
      v8 = sub_160F34(0x32u);
      v9 = sub_175AE4();
      v10 = sub_160F68(8);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)\n", v9, 50, v10, "AVE_PIP_RetrieveEntry", 55, *a2, a2[1], a2[2], a2[3]);
        v9 = sub_175AE4();
        sub_160F68(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)", v9, 50);
    }

    v30 = sub_14C90C(a1, @"BorderTop", a2 + 6);
    if (!v30)
    {
      v35 = sub_14C90C(a1, @"BorderLeft", a2 + 4);
      if (v35)
      {
        v18 = v35;
        if (!sub_160EF0(0x32u, 4))
        {
          return v18;
        }

        v36 = sub_160F34(0x32u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (!v36)
        {
          goto LABEL_62;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 66, "ret == 0", a1, a2, v18);
      }

      else
      {
        v37 = sub_14C90C(a1, @"BorderRight", a2 + 5);
        if (v37)
        {
          v18 = v37;
          if (!sub_160EF0(0x32u, 4))
          {
            return v18;
          }

          v38 = sub_160F34(0x32u);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          if (!v38)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 71, "ret == 0", a1, a2, v18);
        }

        else
        {
          v18 = sub_14C90C(a1, @"BorderBottom", a2 + 7);
          if (!v18 || !sub_160EF0(0x32u, 4))
          {
            return v18;
          }

          v39 = sub_160F34(0x32u);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          if (!v39)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 76, "ret == 0", a1, a2, v18);
        }
      }

      v34 = sub_175AE4();
      v40 = sub_160F68(4);
      goto LABEL_61;
    }

    v18 = v30;
    if (sub_160EF0(0x32u, 4))
    {
      v31 = sub_160F34(0x32u);
      v32 = sub_175AE4();
      v33 = sub_160F68(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 61, "ret == 0", a1, a2, v18);
        v34 = sub_175AE4();
        v40 = sub_160F68(4);
LABEL_61:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v34, 50, v40);
        return v18;
      }

LABEL_62:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v32, 50, v33);
    }
  }

  else
  {
    if (sub_160EF0(0x32u, 4))
    {
      v26 = sub_160F34(0x32u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p\n", v27, 50, v28, "AVE_PIP_RetrieveEntry", 48, "res", a1, a2);
        v27 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p", v27, 50);
    }

    return 4294966296;
  }

  return v18;
}

uint64_t sub_13D684(unsigned int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  memset(v15, 0, sizeof(v15));
  sub_CB274(a4, a5, v15, 32);
  v8 = a3;
  if (sub_160EF0(a2, a3))
  {
    v9 = sub_160F34(a2);
    if (a3 < 0)
    {
      if (!v9 || (-a3 & 0x20) != 0)
      {
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v15, *a1);
      }

      else
      {
        printf("PIP %s | %d %d %d %d | %d %d %d %d\n", v15, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v15, *a1);
      }
    }

    else
    {
      v10 = a3 & 0x20;
      v11 = v9 ^ 1;
      v12 = sub_175AE4();
      v13 = sub_160F68(v8);
      if (((v11 | (v10 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d\n", v12, a2, v13, v15, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        v12 = sub_175AE4();
        v13 = sub_160F68(v8);
      }

      syslog(3, "%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d", v12, a2, v13);
    }
  }

  return 0;
}

uint64_t sub_13D890(int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v10 = 0;
    v11 = (a1 + 1);
    do
    {
      sub_13D684(v11, a2, a3, a4, a5);
      ++v10;
      v11 += 8;
    }

    while (v10 < *a1);
  }

  return 0;
}

uint64_t sub_13D92C(CFDictionaryRef theDict, _DWORD *a2)
{
  if (theDict && a2)
  {
    a2[8] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Value = CFDictionaryGetValue(theDict, @"PictureInPictureRegion");
    if (Value)
    {
      v5 = sub_13CDC4(Value, a2 + 1);
      if (v5)
      {
        if (sub_160EF0(0x32u, 4))
        {
          v6 = sub_160F34(0x32u);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", v7, 50, v8, "AVE_PIP_GetInfo", 229, "ret == 0", theDict, a2, v5);
            v9 = sub_175AE4();
            v14 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 50, v14);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v7, 50, v8);
          }
        }
      }

      else
      {
        *a2 = 1;
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x32u, 4))
    {
      v10 = sub_160F34(0x32u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 50, v12, "AVE_PIP_GetInfo", 217, "pProperty != __null && pInfo != __null", theDict, a2);
        v11 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 50);
    }

    return 4294966295;
  }

  return v5;
}

pthread_mutex_t *sub_13DB68()
{
  v0 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  v1 = v0;
  if (v0)
  {
    *&v0->__opaque[24] = 0u;
    *&v0->__opaque[40] = 0u;
    *&v0->__sig = 0u;
    *&v0->__opaque[8] = 0u;
    if (pthread_mutex_init(v0, 0))
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_13DBD0(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_destroy(a1))
  {
    v2 = 4294966296;
  }

  else
  {
    v2 = 0;
  }

  free(a1);
  return v2;
}

uint64_t sub_13DC18(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_lock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t sub_13DC4C(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_unlock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t sub_13DC80(int a1, uint64_t a2, unsigned __int8 a3, unsigned int a4)
{
  if (((a1 == 1) & a3) != 0)
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_13DC94(int a1, int a2, int a3, int a4)
{
  if (a2 == 2)
  {
    v6 = ((a3 + 31) & 0xFFFFFFE0) * ((a4 + 31) >> 5);
    if (a1 >= 30)
    {
      v6 = (((a4 + 63) >> 5) & 0x3FFFFFE) * ((a3 + 63) & 0xFFFFFFC0);
    }
  }

  else if (a2 == 1)
  {
    v4 = (a3 + 15) & 0xFFFFFFF0;
    if (a1 < 30)
    {
      v5 = (a4 + 15) >> 4;
    }

    else
    {
      v4 = (v4 + 63) & 0x3FFFFFC0;
      v5 = ((a4 + 63) >> 4) & 0xFFFFFFFC;
    }

    v6 = v4 * v5;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + 4095) & 0xFFFFF000;
}

uint64_t sub_13DD38(int a1, int a2)
{
  if (a1)
  {
    v2 = 17314;
  }

  else
  {
    v2 = 1574;
  }

  if (a2)
  {
    return v2 + 264;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_13DD58(uint64_t a1, const char *a2, IOSurfaceID a3, uint64_t a4, uint64_t **a5)
{
  if (a3 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v10 = sub_160F34(0x4Cu);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", v11, 76, v12, "AVE_CreateUSurface", 64, "SID != 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v15 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 64);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v11, 76, v12, "AVE_CreateUSurface", 64);
    }
  }

  return 4294966295;
}

uint64_t sub_13E130(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t **a5)
{
  if (a3 >= 1 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v10 = sub_160F34(0x4Cu);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", v11, 76, v12, "AVE_CreateUSurface", 122, "size > 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v15 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 122);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v11, 76, v12, "AVE_CreateUSurface", 122);
    }
  }

  return 4294966295;
}

uint64_t sub_13E518(void *a1)
{
  if (a1)
  {
    sub_131AE4(a1);
    nullsub_1();
    operator delete();
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v1 = sub_160F34(0x4Cu);
    v2 = sub_175AE4();
    v3 = sub_160F68(4);
    if (v1)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v2, 76, v3, "AVE_DestroyUSurface", 174, "pSurface != __null", 0);
      v2 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v2);
  }

  return 4294966295;
}

uint64_t sub_13E648(const void *a1, uint64_t a2, const void *a3)
{
  if (a1 && a3)
  {
    return 0;
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v7 = sub_160F34(0x4Cu);
    v8 = sub_175AE4();
    v9 = sub_160F68(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", v8, 76, v9, "AVE_CreateInUSurfaces", 219, "pSInfoSet != __null && pSet != __null", a1, a2, a3);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v10, 76, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v8, 76, v9);
    }
  }

  sub_13E77C(a3);
  return 4294966295;
}

uint64_t sub_13E77C(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  if (sub_160EF0(0x4Cu, 4))
  {
    v2 = sub_160F34(0x4Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v3, 76, v4, "AVE_DestroyInUSurfaces", 245, "pSet != __null", 0);
      v3 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v3);
  }

  return 4294966295;
}

uint64_t sub_13E888(uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    *a2 = sub_132370(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a2[1] = sub_132370(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    a2[2] = sub_132370(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    a2[3] = sub_132370(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a2[4] = sub_132370(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    a2[5] = sub_132370(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    a2[6] = sub_132370(v10);
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = a1[v11 + 7];
    if (v14)
    {
      a2[v11 + 7] = sub_132370(v14);
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  v15 = a1[9];
  if (v15)
  {
    a2[9] = sub_132370(v15);
  }

  v16 = a1[10];
  if (v16)
  {
    a2[10] = sub_132370(v16);
  }

  v17 = a1[11];
  if (v17)
  {
    a2[11] = sub_132370(v17);
  }

  return 0;
}

uint64_t sub_13E990(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t **a4, IOSurfaceID a5)
{
  memset(v33, 0, sizeof(v33));
  if (!a1 || !a4)
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v17 = sub_160F34(0x4Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", v18, 76, v19, "AVE_CreateDataUSurfaces", 352, "pSInfoSet != __null && pSet != __null", a1, a2, a4);
        v20 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v20, 76, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v18, 76, v19);
      }
    }

    v21 = 4294966295;
    goto LABEL_24;
  }

  v9 = sub_14E230(4);
  v11 = a1[14];
  v10 = a1[15];
  v12 = v9[1];
  sub_172100(v33, 64, "%s-%lld", *v9, a2);
  if (v11 >= 1)
  {
    v14 = a4 + 1;
    v13 = a4[1];
    if (v13)
    {
      v15 = sub_132524(v13);
      v16 = *v14;
      if (v15 >= v10)
      {
        if (v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_13E518(v16);
        *v14 = 0;
      }
    }

    v22 = sub_13E130(a2, v33, v10, v12, a4 + 1);
    if (v22)
    {
      v21 = v22;
      if (!sub_160EF0(0x4Cu, 4))
      {
LABEL_24:
        sub_13ED4C(a4);
        return v21;
      }

      v23 = sub_160F34(0x4Cu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v24, 76, v25, "AVE_CreateDataUSurfaces", 372, "ret == 0", v33, v21);
        v26 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v26, 76);
        goto LABEL_24;
      }

LABEL_23:
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v24, 76);
      goto LABEL_24;
    }
  }

LABEL_17:
  if (a5)
  {
    v27 = sub_14E230(5);
    v21 = sub_13DD58(a2, v33, a5, v27[1], a4);
    if (v21)
    {
      if (!sub_160EF0(0x4Cu, 4))
      {
        goto LABEL_24;
      }

      v28 = sub_160F34(0x4Cu);
      v24 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v24, 76, v29, "AVE_CreateDataUSurfaces", 386, "ret == 0", v33, v21);
        v30 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v30, 76);
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v21 = 0;
    *a4 = 0;
  }

  return v21;
}

uint64_t sub_13ED4C(uint64_t a1)
{
  if (a1)
  {
    result = *a1;
    if (result)
    {
      result = sub_13E518(result);
      *a1 = 0;
    }

    if (*(a1 + 8))
    {
      result = sub_13E518(*(a1 + 8));
      *(a1 + 8) = 0;
    }

    if (*(a1 + 16))
    {
      result = sub_13E518(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    if (*(a1 + 24))
    {
      result = sub_13E518(*(a1 + 24));
      *(a1 + 24) = 0;
    }

    if (*(a1 + 32))
    {
      result = sub_13E518(*(a1 + 32));
      *(a1 + 32) = 0;
    }

    if (*(a1 + 40))
    {
      result = sub_13E518(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    if (*(a1 + 48))
    {
      result = sub_13E518(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    v3 = 0;
    v4 = a1 + 56;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(v4 + 8 * v3))
      {
        result = sub_13E518(*(v4 + 8 * v3));
        *(v4 + 8 * v3) = 0;
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    if (*(a1 + 72))
    {
      result = sub_13E518(*(a1 + 72));
      *(a1 + 72) = 0;
    }

    if (*(a1 + 80))
    {
      result = sub_13E518(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    if (*(a1 + 88))
    {
      result = sub_13E518(*(a1 + 88));
      *(a1 + 88) = 0;
    }
  }

  else
  {
    if (sub_160EF0(0x4Cu, 4))
    {
      v7 = sub_160F34(0x4Cu);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 76, v9, "AVE_DestroyDataUSurfaces", 414, "pSet != __null", 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_13EF48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (sub_160EF0(0x3Cu, 6))
  {
    v6 = sub_160F34(0x3Cu);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %lld %d %p\n", v7, 60, v8, "AVE_TimeStats_Create", a1, v4, 0);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %lld %d %p", v7);
  }

  if ((v4 & 0x80000000) != 0 || !a3)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v16 = sub_160F34(0x3Cu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p\n", v17, 60, v18, "AVE_TimeStats_Create", 29, "num >= 0 && ppTS != __null", a1, v4, a3);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v19, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v17, 60, v18);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  else
  {
    v9 = malloc_type_malloc(0xD8uLL, 0x10A0040F185B927uLL);
    if (v9)
    {
      v10 = v9;
      v11 = sub_13F408(v9, a1, v4);
      if (v11)
      {
        if (sub_160EF0(0x3Cu, 4))
        {
          v12 = sub_160F34(0x3Cu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d\n", v13, 60, v14, "AVE_TimeStats_Create", 37, "ret == 0", v10, a1, v4, v11);
            v15 = sub_175AE4();
            v29 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v15, 60, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v13, 60, v14);
          }
        }

        sub_13F8D8(v10);
        free(v10);
      }

      else
      {
        *a3 = v10;
      }
    }

    else
    {
      if (sub_160EF0(0x3Cu, 4))
      {
        v20 = sub_160F34(0x3Cu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p\n", v21, 60, v22, "AVE_TimeStats_Create", 33, "pTS != __null", a1, v4, a3);
          v23 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v23, 60, v31);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v21, 60, v22);
        }
      }

      v10 = 0;
      v11 = 4294966293;
    }
  }

  if (sub_160EF0(0x3Cu, 6))
  {
    v24 = sub_160F34(0x3Cu);
    v25 = sub_175AE4();
    v26 = sub_160F68(6);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %lld %d %p %d\n", v25, 60, v26, "AVE_TimeStats_Create", a1, v4, v10, v11);
      v27 = sub_175AE4();
      sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v27, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v25, 60);
    }
  }

  return v11;
}

uint64_t sub_13F408(_OWORD *a1, uint64_t a2, unsigned int a3)
{
  if (sub_160EF0(0x3Cu, 6))
  {
    v6 = sub_160F34(0x3Cu);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d\n", v7, 60, v8, "AVE_TimeStats_Init", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d", v7);
  }

  if (!a1 || (a3 & 0x80000000) != 0)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v13 = sub_160F34(0x3Cu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d\n", v14, 60, v15, "AVE_TimeStats_Init", 104, "pTS != __null && num >= 0", a1, a2, a3);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v16, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v14, 60, v15);
      }
    }

    v12 = 4294966295;
  }

  else
  {
    *(a1 + 26) = 0;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    v9 = sub_13DB68();
    if (v9)
    {
      v10 = v9;
      if (!a3)
      {
        a3 = 2;
      }

      v11 = malloc_type_malloc(16 * a3, 0x1000040451B5BE8uLL);
      if (v11)
      {
        v12 = 0;
        *a1 = a2;
        *(a1 + 2) = a3;
        *(a1 + 2) = v11;
        *(a1 + 22) = v10;
        goto LABEL_28;
      }

      if (sub_160EF0(0x3Cu, 4))
      {
        v21 = sub_160F34(0x3Cu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d\n", v22, 60, v23, "AVE_TimeStats_Init", 119, "pTP != __null", a1, a2, a3);
          v24 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v24, 60, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v22, 60, v23);
        }
      }

      sub_13DBD0(v10);
    }

    else if (sub_160EF0(0x3Cu, 4))
    {
      v17 = sub_160F34(0x3Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d\n", v18, 60, v19, "AVE_TimeStats_Init", 110, "pMutex != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v20, 60, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v18, 60, v19);
      }
    }

    v12 = 4294966293;
  }

LABEL_28:
  if (sub_160EF0(0x3Cu, 6))
  {
    v25 = sub_160F34(0x3Cu);
    v26 = sub_175AE4();
    v27 = sub_160F68(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d\n", v26, 60, v27, "AVE_TimeStats_Init", a1, a2, a3, v12);
      v28 = sub_175AE4();
      sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v26);
    }
  }

  return v12;
}

uint64_t sub_13F8D8(_OWORD *a1)
{
  if (sub_160EF0(0x3Cu, 6))
  {
    v2 = sub_160F34(0x3Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 60, v4, "AVE_TimeStats_Uninit", a1);
      v5 = sub_175AE4();
      v17 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v17, "AVE_TimeStats_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 60, v4, "AVE_TimeStats_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 2);
    if (v6)
    {
      free(v6);
      *(a1 + 2) = 0;
    }

    v7 = *(a1 + 22);
    if (v7)
    {
      sub_13DBD0(v7);
    }

    v8 = 0;
    *(a1 + 26) = 0;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v9 = sub_160F34(0x3Cu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v10, 60, v11, "AVE_TimeStats_Uninit", 166, "pTS != __null", 0);
        v10 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v10);
    }

    v8 = 4294966295;
  }

  if (sub_160EF0(0x3Cu, 6))
  {
    v12 = sub_160F34(0x3Cu);
    v13 = sub_175AE4();
    v14 = sub_160F68(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
      v15 = sub_175AE4();
      v18 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 60, v18, "AVE_TimeStats_Uninit", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_13FB64(_OWORD *a1)
{
  if (sub_160EF0(0x3Cu, 6))
  {
    v2 = sub_160F34(0x3Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 60, v4, "AVE_TimeStats_Destroy", a1);
      v5 = sub_175AE4();
      v15 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v15, "AVE_TimeStats_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 60, v4, "AVE_TimeStats_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = sub_13F8D8(a1);
    free(a1);
  }

  else
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v7 = sub_160F34(0x3Cu);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 60, v9, "AVE_TimeStats_Destroy", 73, "pTS != __null", 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    v6 = 4294966295;
  }

  if (sub_160EF0(0x3Cu, 6))
  {
    v10 = sub_160F34(0x3Cu);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
      v13 = sub_175AE4();
      v16 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v16, "AVE_TimeStats_Destroy", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
    }
  }

  return v6;
}

uint64_t sub_13FDC0(uint64_t a1)
{
  if (sub_160EF0(0x3Cu, 6))
  {
    v2 = sub_160F34(0x3Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 60, v4, "AVE_TimeStats_Restart", a1);
      v5 = sub_175AE4();
      v15 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v15, "AVE_TimeStats_Restart", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 60, v4, "AVE_TimeStats_Restart", a1);
    }
  }

  if (a1)
  {
    sub_13DC18(*(a1 + 176));
    ++*(a1 + 24);
    sub_13DC4C(*(a1 + 176));
    v6 = 0;
  }

  else
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v7 = sub_160F34(0x3Cu);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 60, v9, "AVE_TimeStats_Restart", 203, "pTS != __null", 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    v6 = 4294966295;
  }

  if (sub_160EF0(0x3Cu, 6))
  {
    v10 = sub_160F34(0x3Cu);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v11, 60, v12, "AVE_TimeStats_Restart", a1, v6);
      v13 = sub_175AE4();
      v16 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v16, "AVE_TimeStats_Restart", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v11, 60, v12, "AVE_TimeStats_Restart", a1, v6);
    }
  }

  return v6;
}

uint64_t sub_140028(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (sub_160EF0(0x3Cu, 7))
  {
    v6 = sub_160F34(0x3Cu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v7, 60, v8, "AVE_TimeStats_AddStartTime", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v7);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v12 = sub_160F34(0x3Cu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v13, 60, v14, "AVE_TimeStats_AddStartTime", 235, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v15 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v15, 60, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v13, 60, v14);
      }
    }

    v11 = 4294966295;
  }

  else
  {
    sub_13DC18(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 24);
      if (a2 == 5)
      {
        *(v9 + 16 * (v10 % *(a1 + 8))) = a3;
      }

      v11 = 0;
      if (!v10)
      {
        *(a1 + 16 * a2 + 32) = a3;
      }
    }

    else
    {
      if (sub_160EF0(0x3Cu, 4))
      {
        v16 = sub_160F34(0x3Cu);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v17, 60, v18, "AVE_TimeStats_AddStartTime", 240, "pTS->psTP != __null", a1, a2, a3);
          v19 = sub_175AE4();
          v26 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v19, 60, v26);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v17, 60, v18);
        }
      }

      v11 = 4294966285;
    }

    sub_13DC4C(*(a1 + 176));
  }

  if (sub_160EF0(0x3Cu, 7))
  {
    v20 = sub_160F34(0x3Cu);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v21, 60, v22, "AVE_TimeStats_AddStartTime", a1, a2, a3, v11);
      v23 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v23, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v21, 60);
    }
  }

  return v11;
}

uint64_t sub_1403FC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (sub_160EF0(0x3Cu, 7))
  {
    v6 = sub_160F34(0x3Cu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v7, 60, v8, "AVE_TimeStats_AddEndTime", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v7);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v11 = sub_160F34(0x3Cu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v12, 60, v13, "AVE_TimeStats_AddEndTime", 282, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v14 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v14, 60, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v12, 60, v13);
      }
    }

    v10 = 4294966295;
  }

  else
  {
    sub_13DC18(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      if (a2 == 5)
      {
        *(v9 + 16 * (*(a1 + 24) % *(a1 + 8)) + 8) = a3;
      }

      v10 = 0;
      *(a1 + 16 * a2 + 40) = a3;
    }

    else
    {
      if (sub_160EF0(0x3Cu, 4))
      {
        v15 = sub_160F34(0x3Cu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v16, 60, v17, "AVE_TimeStats_AddEndTime", 287, "pTS->psTP != __null", a1, a2, a3);
          v18 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v18, 60, v25);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v16, 60, v17);
        }
      }

      v10 = 4294966285;
    }

    sub_13DC4C(*(a1 + 176));
  }

  if (sub_160EF0(0x3Cu, 7))
  {
    v19 = sub_160F34(0x3Cu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v20, 60, v21, "AVE_TimeStats_AddEndTime", a1, a2, a3, v10);
      v22 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v22, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v20, 60);
    }
  }

  return v10;
}

uint64_t sub_1407CC(uint64_t a1)
{
  if (sub_160EF0(0x3Cu, 7))
  {
    v2 = sub_160F34(0x3Cu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 60, v4, "AVE_TimeStats_Calc", a1);
      v5 = sub_175AE4();
      v28 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v28, "AVE_TimeStats_Calc", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 60, v4, "AVE_TimeStats_Calc", a1);
    }
  }

  if (!a1)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v17 = sub_160F34(0x3Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v18, 60, v19, "AVE_TimeStats_Calc", 326, "pTS != __null", 0);
        v18 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v18);
    }

    v16 = 4294966295;
    goto LABEL_38;
  }

  sub_13DC18(*(a1 + 176));
  v6 = *(a1 + 16);
  if (!v6)
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v20 = sub_160F34(0x3Cu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p\n", v21, 60, v22, "AVE_TimeStats_Calc", 331, "pTS->psTP != __null", a1);
        v21 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p", v21);
    }

    v16 = 4294966285;
    goto LABEL_37;
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v7 = (a1 + 184);
  *(a1 + 200) = 0;
  v8 = *(a1 + 24);
  LODWORD(v9) = *(a1 + 8);
  if (v8 < v9)
  {
    v9 = (v8 + 1);
  }

  else
  {
    v9 = v9;
  }

  if (v9 < 1)
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = (v6 + 8);
  do
  {
    v15 = *v14 - *(v14 - 1);
    if (v15 < 1)
    {
      goto LABEL_21;
    }

    if (v12)
    {
      if (v15 < v11)
      {
        *v7 = v15;
        v11 = v15;
      }

      if (v15 <= v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v7 = v15;
      v11 = v15;
    }

    *(a1 + 200) = v15;
    v10 = v15;
LABEL_20:
    v13 += v15;
    ++v12;
LABEL_21:
    v14 += 2;
    --v9;
  }

  while (v9);
  if (v12)
  {
    v16 = 0;
    *(a1 + 192) = v13 / v12;
    *(a1 + 208) = v12;
    goto LABEL_37;
  }

LABEL_28:
  v16 = 0;
LABEL_37:
  sub_13DC4C(*(a1 + 176));
LABEL_38:
  if (sub_160EF0(0x3Cu, 7))
  {
    v23 = sub_160F34(0x3Cu);
    v24 = sub_175AE4();
    v25 = sub_160F68(7);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
      v26 = sub_175AE4();
      v29 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 60, v29, "AVE_TimeStats_Calc", a1, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
    }
  }

  return v16;
}

uint64_t sub_140BA4(void *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  memset(v33, 0, sizeof(v33));
  if (a1)
  {
    v10 = a3;
    result = sub_160EF0(a2, a3);
    if (result)
    {
      sub_CB274(a4, a5, v33, 32);
      sub_13DC18(a1[22]);
      if (sub_160EF0(a2, a3))
      {
        v12 = sub_160F34(a2);
        if (a3 < 0)
        {
          if (v12 && (-a3 & 0x20) == 0)
          {
            printf("TimeStats ID: %lld %s | Session: %lld Process: %lld\n", *a1, v33, a1[7] - a1[4], a1[15] - a1[14]);
          }

          syslog(3, "TimeStats ID: %lld %s | Session: %lld Process: %lld");
        }

        else
        {
          v13 = v12 ^ 1;
          v14 = sub_175AE4();
          v15 = sub_160F68(a3);
          if (((v13 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld\n", v14, a2, v15, *a1, v33, a1[7] - a1[4], a1[15] - a1[14]);
            v14 = sub_175AE4();
            v15 = sub_160F68(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld", v14, a2, v15, *a1, v33, a1[7] - a1[4], a1[15] - a1[14]);
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v20 = sub_160F34(a2);
        if (a3 < 0)
        {
          if (!v20 || (-a3 & 0x20) != 0)
          {
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v33, a1[5] - a1[4], a1[7] - a1[6]);
          }

          else
          {
            printf("TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", *a1, v33, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v33, a1[5] - a1[4], a1[7] - a1[6]);
          }
        }

        else
        {
          v21 = v20 ^ 1;
          v22 = sub_175AE4();
          v23 = sub_160F68(a3);
          if (((v21 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", v22, a2, v23, *a1, v33, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            v22 = sub_175AE4();
            v23 = sub_160F68(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", v22, a2, v23, *a1, v33, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
        }
      }

      if (sub_160EF0(a2, a3))
      {
        v24 = sub_160F34(a2);
        if (a3 < 0)
        {
          if (v24 && (-a3 & 0x20) == 0)
          {
            printf("TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", *a1, v33, a1[23], a1[24], a1[25], *(a1 + 52));
          }

          syslog(3, "TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d");
        }

        else
        {
          v25 = a3 & 0x20;
          v26 = v24 ^ 1;
          v27 = sub_175AE4();
          v28 = sub_160F68(v10);
          if ((v26 | (v25 >> 5)))
          {
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v27, a2, v28);
          }

          else
          {
            v29 = a2;
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", v27, a2, v28, *a1, v33, a1[23], a1[24], a1[25], *(a1 + 52));
            v30 = sub_175AE4();
            v32 = sub_160F68(v10);
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v30, v29, v32);
          }
        }
      }

      sub_13DC4C(a1[22]);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x3Cu, 4))
    {
      v16 = sub_160F34(0x3Cu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d\n", v17, 60, v18, "AVE_TimeStats_Print", 404, "pTS != __null", 0, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v19, 60, v31, "AVE_TimeStats_Print");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v17, 60, v18, "AVE_TimeStats_Print");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1412CC(const void *a1, unint64_t a2, pthread_mutex_t *a3)
{
  cf = 0;
  v3 = HIDWORD(a2);
  memset(v147, 0, sizeof(v147));
  if (sub_160EF0(0xDu, 6))
  {
    v4 = sub_160F34(0xDu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %lld %p\n", v5, 13, v6, "AVE_Plugin_OF_StartSession", a1, a2, v3, 0, a3);
      v7 = sub_175AE4();
      v109 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %p", v7, 13, v109);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %p", v5, 13, v6);
    }
  }

  if (!a1 || !a3 || a2 < 1 || v3 <= 0)
  {
    if (sub_160EF0(0xBu, 4))
    {
      v19 = sub_160F34(0xBu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      v22 = v3;
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %lld %d\n", v20, 11, v21, "AVE_Plugin_OF_StartSession", 348, "object != __null && session != __null && dimensions.width > 0 && dimensions.height > 0", a1, a3, a2, v3, 0, 0);
        v23 = sub_175AE4();
        v111 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %lld %d", v23, 11, v111, "AVE_Plugin_OF_StartSession", 348);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %lld %d", v20, 11, v21, "AVE_Plugin_OF_StartSession", 348);
      }
    }

    else
    {
      v22 = v3;
    }

    v10 = 0;
    v12 = 4294966295;
    goto LABEL_81;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (!DerivedStorage)
  {
    if (sub_160EF0(0xBu, 4))
    {
      v24 = sub_160F34(0xBu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get OF %p %p %d %d %lld %d\n", v25, 11, v26, "AVE_Plugin_OF_StartSession", 353, "pPI != __null", a1, a3, a2, v3, 0, 0);
        v27 = sub_175AE4();
        v112 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %p %d %d %lld %d", v27, 11, v112, "AVE_Plugin_OF_StartSession", 353);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %p %d %d %lld %d", v25, 11, v26, "AVE_Plugin_OF_StartSession", 353);
      }
    }

    v10 = 0;
    goto LABEL_77;
  }

  sub_13DC18(*DerivedStorage);
  v10 = v9[10];
  kdebug_trace();
  v9[1] = a3;
  v9[4] = v9;
  v9[5] = sub_144B1C;
  v9[7] = a3;
  if (*(v9 + 87200) == 1)
  {
    v11 = sub_173A20(v9, a2, 0);
    if (v11)
    {
      v12 = v11;
      if (sub_160EF0(0xDu, 4))
      {
        v13 = v10;
        v14 = sub_160F34(0xDu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | DMV: fail to start session %p %p %d %d %lld %p %d\n", v15, 13, v16, "AVE_Plugin_OF_StartSession", 373, "ret == 0", a1, a3, a2, v3, v13, v9, v12);
          v17 = sub_175AE4();
          v140 = v9;
          v141 = v12;
          v138 = v3;
          v139 = v13;
          v132 = a3;
          v137 = a2;
          v10 = v13;
          v125 = a1;
          v119 = 373;
          v110 = sub_160F68(4);
          v18 = "%lld %d AVE %s: %s:%d %s | DMV: fail to start session %p %p %d %d %lld %p %d";
LABEL_48:
          syslog(3, v18, v17, 13, v110, "AVE_Plugin_OF_StartSession", v119, "ret == 0", v125, v132, v137, v138, v139, v140, v141);
          goto LABEL_78;
        }

        v10 = v13;
        syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to start session %p %p %d %d %lld %p %d", v15, 13, v16, "AVE_Plugin_OF_StartSession", 373, "ret == 0");
      }

      goto LABEL_78;
    }

    v32 = sub_158978(*(v9 + 23), *(v9 + 22), 0x4000, 2, a2, v3, a2, v3, 0x414C4C20u, 1, v147, &cf);
    if (v32)
    {
      v33 = v32;
      if (sub_160EF0(0xDu, 4))
      {
        v34 = v10;
        v35 = sub_160F34(0xDu);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v35)
        {
          v126 = v34;
          v10 = v34;
          v38 = v3;
          printf("%lld %d AVE %s: %s:%d %s | DMV: fail to create dict %lld %d\n", v36, 13, v37, "AVE_Plugin_OF_StartSession", 386, "res == noErr", v126, v33);
          v39 = sub_175AE4();
          v127 = v10;
          v133 = v33;
          v120 = 386;
          v113 = sub_160F68(4);
          v40 = "%lld %d AVE %s: %s:%d %s | DMV: fail to create dict %lld %d";
          goto LABEL_57;
        }

        v10 = v34;
        syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to create dict %lld %d", v36, 13);
      }

      goto LABEL_77;
    }

    v49 = VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes();
    if (v49)
    {
      v50 = v49;
      if (sub_160EF0(0xDu, 4))
      {
        v51 = v10;
        v52 = sub_160F34(0xDu);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v52)
        {
          v129 = v51;
          v10 = v51;
          v38 = v3;
          printf("%lld %d AVE %s: %s:%d %s | DMV: fail to set source pixel buffer attributes %lld %d\n", v53, 13, v54, "AVE_Plugin_OF_StartSession", 392, "res == noErr", v129, v50);
          v39 = sub_175AE4();
          v127 = v10;
          v133 = v50;
          v120 = 392;
          v113 = sub_160F68(4);
          v40 = "%lld %d AVE %s: %s:%d %s | DMV: fail to set source pixel buffer attributes %lld %d";
          goto LABEL_57;
        }

        v10 = v51;
        syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to set source pixel buffer attributes %lld %d", v53, 13);
      }

      goto LABEL_77;
    }

    v60 = *(v9 + 340);
    v61 = *(v9 + 343);
    v47 = v10;
    if (*(v9 + 345))
    {
      v62 = 2 * v60 * v61;
      v63 = *(v9 + 341) * v61;
    }

    else
    {
      v62 = v61 * v60;
      v63 = 2 * v61 * *(v9 + 341);
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v68 = Mutable;
      v88 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v88)
      {
        v70 = v88;
        sub_14B9CC(kCVPixelBufferWidthKey, (v62 + 31) & 0xFFFFFFE0, v88);
        sub_14B9CC(kCVPixelBufferHeightKey, v63, v70);
        sub_14B9CC(kCVPixelBufferPixelFormatTypeKey, 1278226536, v70);
        CFDictionarySetValue(v70, kCVPixelBufferIOSurfacePropertiesKey, v68);
        v89 = VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes();
        v9[10901] = v70;
        if (!v89)
        {
          v12 = 0;
LABEL_132:
          CFRelease(v70);
          goto LABEL_133;
        }

        if (sub_160EF0(0xDu, 4))
        {
          v90 = sub_160F34(0xDu);
          v91 = sub_175AE4();
          v92 = sub_160F68(4);
          if (v90)
          {
            printf("%lld %d AVE %s: %s:%d %s | DMV: Failed to set MV pixel buffer attributes %lld %d\n", v91, 13, v92, "AVE_Plugin_OF_StartSession", 432, "res == noErr", v10, 0);
            v91 = sub_175AE4();
            v131 = v10;
            v117 = sub_160F68(4);
          }

          else
          {
            v131 = v10;
            v117 = v92;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: Failed to set MV pixel buffer attributes %lld %d", v91, 13, v117, "AVE_Plugin_OF_StartSession", 432, "res == noErr", v131, 0);
        }

LABEL_131:
        v12 = 4294966296;
        goto LABEL_132;
      }

      if (sub_160EF0(0xDu, 4))
      {
        v102 = sub_160F34(0xDu);
        v103 = sub_175AE4();
        v104 = sub_160F68(4);
        if (!v102)
        {
          v10 = v47;
          syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d", v103, 13, v104);
          goto LABEL_123;
        }

        printf("%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d\n", v103, 13, v104, "AVE_Plugin_OF_StartSession", 418, "pMVPixelBufferAttributes", 0, v47, 0);
        v100 = sub_175AE4();
        v135 = v47;
        v124 = "pMVPixelBufferAttributes";
        v122 = 418;
        v118 = sub_160F68(4);
        v101 = "%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d";
        goto LABEL_111;
      }

      v12 = 4294966296;
      goto LABEL_133;
    }

    if (!sub_160EF0(0xDu, 4))
    {
      v12 = 4294966296;
      goto LABEL_78;
    }

    v95 = sub_160F34(0xDu);
    v45 = sub_175AE4();
    v96 = sub_160F68(4);
    if (!v95)
    {
      v134 = v10;
      v136 = 0;
      v123 = "IOSurfaceProperties";
      v128 = 0;
      v121 = 414;
      v114 = v96;
      v48 = "%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d";
      goto LABEL_60;
    }

    printf("%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d\n", v45, 13, v96, "AVE_Plugin_OF_StartSession", 414, "IOSurfaceProperties", 0, v10, 0);
    v45 = sub_175AE4();
    v134 = v10;
    v136 = 0;
    v123 = "IOSurfaceProperties";
    v128 = 0;
    v121 = 414;
    v114 = sub_160F68(4);
    v48 = "%lld %d AVE %s: %s:%d %s | DMV: CFDictionaryCreateMutable failed %p %lld %d";
    goto LABEL_43;
  }

  v28 = sub_147D04(v9, a2);
  if (!v28)
  {
    v41 = sub_14E470(*(v9 + 23), 2, 2);
    if (*(v9 + 348) <= *v41)
    {
      v42 = *v41;
    }

    else
    {
      v42 = *(v9 + 348);
    }

    if (*(v9 + 349) <= v41[1])
    {
      v43 = v41[1];
    }

    else
    {
      v43 = *(v9 + 349);
    }

    if (!sub_158978(*(v9 + 23), *(v9 + 22), 56, 2, a2, v3, v42, v43, 0x414C4C20u, 1, v147, &cf))
    {
      v55 = VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes();
      if (v55)
      {
        v56 = v55;
        if (sub_160EF0(0xDu, 4))
        {
          v57 = v10;
          v58 = sub_160F34(0xDu);
          v39 = sub_175AE4();
          v59 = sub_160F68(4);
          if (!v58)
          {
            v127 = v57;
            v133 = v56;
            v10 = v57;
            v120 = 464;
            v113 = v59;
            v40 = "%lld %d AVE %s: %s:%d %s | fail to set source pixel buffer attributes %lld %d";
            goto LABEL_76;
          }

          v130 = v57;
          v10 = v57;
          v38 = v3;
          printf("%lld %d AVE %s: %s:%d %s | fail to set source pixel buffer attributes %lld %d\n", v39, 13, v59, "AVE_Plugin_OF_StartSession", 464, "res == noErr", v130, v56);
          v39 = sub_175AE4();
          v127 = v10;
          v133 = v56;
          v120 = 464;
          v113 = sub_160F68(4);
          v40 = "%lld %d AVE %s: %s:%d %s | fail to set source pixel buffer attributes %lld %d";
LABEL_57:
          LODWORD(v3) = v38;
LABEL_76:
          syslog(3, v40, v39, 13, v113, "AVE_Plugin_OF_StartSession", v120, "res == noErr", v127, v133, v136);
        }

LABEL_77:
        v12 = 4294966296;
        goto LABEL_78;
      }

      v142 = v10;
      v64 = *(v9 + 348);
      if (*(v9 + 10480))
      {
        v65 = 2;
      }

      else
      {
        v65 = 0;
      }

      v66 = *(v9 + 349);
      v67 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v67)
      {
        v68 = v67;
        v69 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v69)
        {
          v70 = v69;
          sub_14B9CC(kCVPixelBufferWidthKey, ((v64 << v65) + 15) >> 4, v69);
          sub_14B9CC(kCVPixelBufferHeightKey, ((v66 << v65) + 15) >> 4, v70);
          v71 = v9 + 1310;
          v10 = v142;
          if (*(v9 + 11720) != 1 || (v72 = 842089320, !*(v9 + 10483)) && *(v9 + 24) <= 29)
          {
            if (sub_160EF0(0xDu, 5))
            {
              v73 = sub_160F34(0xDu);
              v74 = sub_175AE4();
              v75 = sub_160F68(5);
              if (v73)
              {
                printf("%lld %d AVE %s: %s:%d: IncludeMotionConfidence is not supported, requires UseMultiPassSearch for this SoC\n", v74, 13, v75, "AVE_Plugin_OF_StartSession", 491);
                v76 = sub_175AE4();
                v71 = v9 + 1310;
                v115 = sub_160F68(5);
                syslog(3, "%lld %d AVE %s: %s:%d: IncludeMotionConfidence is not supported, requires UseMultiPassSearch for this SoC", v76, 13, v115, "AVE_Plugin_OF_StartSession", 491);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d: IncludeMotionConfidence is not supported, requires UseMultiPassSearch for this SoC", v74, 13, v75, "AVE_Plugin_OF_StartSession", 491);
              }
            }

            *(v71 + 1240) = 0;
            v72 = 843264104;
          }

          sub_14B9CC(kCVPixelBufferPixelFormatTypeKey, v72, v70);
          CFDictionarySetValue(v70, kCVPixelBufferIOSurfacePropertiesKey, v68);
          v12 = VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes();
          if (!v12)
          {
            goto LABEL_132;
          }

          if (sub_160EF0(0xDu, 4))
          {
            v105 = sub_160F34(0xDu);
            v106 = sub_175AE4();
            v107 = sub_160F68(4);
            if (v105)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to set pixel buffer attributes %lld %d\n", v106, 13, v107, "AVE_Plugin_OF_StartSession", 501, "res == noErr", v142, v12);
              v108 = sub_175AE4();
              sub_160F68(4);
              v10 = v142;
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set pixel buffer attributes %lld %d", v108, 13);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set pixel buffer attributes %lld %d", v106, 13);
            }
          }

          goto LABEL_131;
        }

        if (sub_160EF0(0xDu, 4))
        {
          v97 = sub_160F34(0xDu);
          v98 = sub_175AE4();
          v99 = sub_160F68(4);
          if (!v97)
          {
            v10 = v142;
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d", v98, 13, v99);
            goto LABEL_123;
          }

          v47 = v142;
          printf("%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d\n", v98, 13, v99, "AVE_Plugin_OF_StartSession", 479, "pMVPixelBufferAttributes != __null", 0, v142, 0);
          v100 = sub_175AE4();
          v135 = v142;
          v124 = "pMVPixelBufferAttributes != __null";
          v122 = 479;
          v118 = sub_160F68(4);
          v101 = "%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d";
LABEL_111:
          v10 = v47;
          syslog(3, v101, v100, 13, v118, "AVE_Plugin_OF_StartSession", v122, v124, 0, v135, 0);
LABEL_123:
          v12 = 4294966296;
          goto LABEL_133;
        }

        v12 = 4294966296;
        v10 = v142;
LABEL_133:
        CFRelease(v68);
        goto LABEL_78;
      }

      if (!sub_160EF0(0xDu, 4))
      {
        v12 = 4294966296;
        v10 = v142;
        goto LABEL_78;
      }

      v93 = sub_160F34(0xDu);
      v45 = sub_175AE4();
      v94 = sub_160F68(4);
      v10 = v142;
      if (v93)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d\n", v45, 13, v94, "AVE_Plugin_OF_StartSession", 475, "IOSurfaceProperties != __null", 0, v142, 0);
        v45 = sub_175AE4();
        v134 = v142;
        v136 = 0;
        v123 = "IOSurfaceProperties != __null";
        v128 = 0;
        v121 = 475;
        v114 = sub_160F68(4);
        v48 = "%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d";
        v10 = v142;
      }

      else
      {
        v134 = v142;
        v136 = 0;
        v123 = "IOSurfaceProperties != __null";
        v128 = 0;
        v121 = 475;
        v114 = v94;
        v48 = "%lld %d AVE %s: %s:%d %s | fail to create diction %p %lld %d";
      }

LABEL_60:
      syslog(3, v48, v45, 13, v114, "AVE_Plugin_OF_StartSession", v121, v123, v128, v134, v136);
      goto LABEL_77;
    }

    if (!sub_160EF0(0xDu, 4))
    {
      goto LABEL_77;
    }

    v44 = sub_160F34(0xDu);
    v45 = sub_175AE4();
    v46 = sub_160F68(4);
    if (!v44)
    {
      v128 = v10;
      v134 = 0;
      v121 = 459;
      v123 = "res == noErr";
      v114 = v46;
      v48 = "%lld %d AVE %s: %s:%d %s | fail to create dict %lld %d";
      goto LABEL_60;
    }

    v47 = v10;
    printf("%lld %d AVE %s: %s:%d %s | fail to create dict %lld %d\n", v45, 13, v46, "AVE_Plugin_OF_StartSession", 459, "res == noErr", v10, 0);
    v45 = sub_175AE4();
    v128 = v10;
    v134 = 0;
    v121 = 459;
    v123 = "res == noErr";
    v114 = sub_160F68(4);
    v48 = "%lld %d AVE %s: %s:%d %s | fail to create dict %lld %d";
LABEL_43:
    v10 = v47;
    goto LABEL_60;
  }

  v12 = v28;
  if (sub_160EF0(0xDu, 4))
  {
    v29 = v10;
    v30 = sub_160F34(0xDu);
    v17 = sub_175AE4();
    v31 = sub_160F68(4);
    if (v30)
    {
      v10 = v29;
      printf("%lld %d AVE %s: %s:%d %s | fail to start OF %p %p %d %d %lld %p %d\n", v17, 13, v31, "AVE_Plugin_OF_StartSession", 443, "ret == 0", a1, a3, a2, v3, v29, v9, v12);
      v17 = sub_175AE4();
      v140 = v9;
      v141 = v12;
      v138 = v3;
      v139 = v29;
      v132 = a3;
      v137 = a2;
      v125 = a1;
      v119 = 443;
      v110 = sub_160F68(4);
    }

    else
    {
      v140 = v9;
      v141 = v12;
      v10 = v29;
      v138 = v3;
      v139 = v29;
      v132 = a3;
      v137 = a2;
      v125 = a1;
      v119 = 443;
      v110 = v31;
    }

    v18 = "%lld %d AVE %s: %s:%d %s | fail to start OF %p %p %d %d %lld %p %d";
    goto LABEL_48;
  }

LABEL_78:
  v22 = v3;
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  kdebug_trace();
  sub_13DC4C(*v9);
LABEL_81:
  v77 = sub_175AE4();
  if (v77 >= 50000)
  {
    v78 = 5;
  }

  else
  {
    v78 = 6;
  }

  v79 = sub_175994(v12);
  if (v12)
  {
    v80 = 4;
  }

  else
  {
    v80 = v78;
  }

  if (sub_160EF0(0xDu, v80))
  {
    v81 = v10;
    v82 = sub_160F34(0xDu);
    v83 = sub_175AE4();
    v84 = sub_160F68(v80);
    if (v82)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d %lld %lld %d %d\n", v83, 13, v84, "AVE_Plugin_OF_StartSession", a1, a3, a2, v22, v81, v77, v12, v79);
      v85 = sub_175AE4();
      v116 = sub_160F68(v80);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %lld %lld %d %d", v85, 13, v116, "AVE_Plugin_OF_StartSession");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %lld %lld %d %d", v83, 13, v84, "AVE_Plugin_OF_StartSession");
    }
  }

  return v79;
}

uint64_t sub_142748(const void *a1, uint64_t a2, __CVBuffer *a3, __CVBuffer *a4, int a5, const void *a6)
{
  v12 = sub_175AE4();
  if (sub_160EF0(0xDu, 8))
  {
    v13 = sub_160F34(0xDu);
    v14 = sub_175AE4();
    v15 = sub_160F68(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %zu %p %p %d %p\n", v14, 13, v15, "AVE_Plugin_OF_ProcessFrames", a1, a2, a3, a4, a5, a6);
      v16 = sub_175AE4();
      v71 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %zu %p %p %d %p", v16, 13, v71, "AVE_Plugin_OF_ProcessFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %zu %p %p %d %p", v14, 13, v15, "AVE_Plugin_OF_ProcessFrames");
    }
  }

  v83 = a6;
  v84 = a5;
  if (a1 && a3 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v18 = DerivedStorage;
    v82 = v12;
    if (!DerivedStorage)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v32 = sub_160F34(0xDu);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF %lld %d\n", v33, 13, v34, "AVE_Plugin_OF_ProcessFrames", 594, "pPI", 0, 0);
          v33 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %lld %d", v33, 13);
      }

      Mutable = 0;
      goto LABEL_56;
    }

    v19 = DerivedStorage + 10752;
    sub_13DC18(*DerivedStorage);
    v81 = *(v18 + 80);
    kdebug_trace();
    if ((*(v18 + 87200) & 1) != 0 || ((v35 = *(v18 + 87192)) == 0 ? (ID = 0) : (IOSurface = CVPixelBufferGetIOSurface(v35), ID = IOSurfaceGetID(IOSurface)), *(v18 + 87184) == 1 && (v53 = CVPixelBufferGetIOSurface(a3), ID == IOSurfaceGetID(v53))))
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, @"MakeKeyFrame", kCFBooleanTrue);
      v58 = sub_148880(v18, a2, a3, Mutable, v54, v55, v56, v57);
      if (v58)
      {
        v38 = v58;
        if (sub_160EF0(0xDu, 4))
        {
          v59 = sub_160F34(0xDu);
          v60 = sub_175AE4();
          v61 = sub_160F68(4);
          if (v59)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to process %p %lld %d\n", v60, 13, v61, "AVE_Plugin_OF_ProcessFrames", 619, "ret == 0", *(v18 + 87192), v81, v38);
            v80 = sub_175AE4();
            v74 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %lld %d", v80, 13, v74);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %lld %d", v60, 13, v61);
          }
        }

LABEL_57:
        kdebug_trace();
        sub_175994(v38);
        VTMotionEstimationProcessorSessionEmitMotionVectors();
        if (!Mutable)
        {
LABEL_59:
          sub_13DC4C(*v18);
          v12 = v82;
          goto LABEL_60;
        }

LABEL_58:
        CFRelease(Mutable);
        goto LABEL_59;
      }
    }

    if (sub_160EF0(0xDu, 7))
    {
      v25 = sub_160F34(0xDu);
      v26 = sub_175AE4();
      v27 = sub_160F68(7);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %d %zu\n", v26, 13, v27, "AVE_Plugin_OF_ProcessFrames", 623, *(v19 + 280), a2);
        v26 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %d %zu", v26);
      LOBYTE(a5) = v84;
    }

    if (*(v18 + 87200) == 1)
    {
      v39 = sub_174284(v18, a2, a4, 0, v21, v22, v23, v24);
      if (v39)
      {
        v40 = v39;
        if (sub_160EF0(0xDu, 4))
        {
          v41 = sub_160F34(0xDu);
          v42 = sub_175AE4();
          v43 = sub_160F68(4);
          if (!v41)
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to process %d %lld %d", v42, 13, v43);
            goto LABEL_56;
          }

          printf("%lld %d AVE %s: %s:%d %s | DMV: fail to process %d %lld %d\n", v42, 13, v43, "AVE_Plugin_OF_ProcessFrames", 630, "ret == 0", *(v18 + 87136), v81, v40);
          v44 = sub_175AE4();
          v45 = sub_160F68(4);
          v78 = v81;
          v79 = v40;
          v77 = *(v18 + 87136);
          v76 = 630;
          v73 = v45;
          v46 = "%lld %d AVE %s: %s:%d %s | DMV: fail to process %d %lld %d";
LABEL_35:
          syslog(3, v46, v44, 13, v73, "AVE_Plugin_OF_ProcessFrames", v76, "ret == 0", v77, v78, v79);
LABEL_56:
          v38 = 4294966296;
          goto LABEL_57;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v47 = sub_148880(v18, a2, a4, 0, v21, v22, v23, v24);
      if (v47)
      {
        v48 = v47;
        if (sub_160EF0(0xDu, 4))
        {
          v49 = sub_160F34(0xDu);
          v50 = sub_175AE4();
          v51 = sub_160F68(4);
          if (!v49)
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d %lld %d", v50, 13, v51);
            goto LABEL_56;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to process %d %lld %d\n", v50, 13, v51, "AVE_Plugin_OF_ProcessFrames", 636, "ret == 0", *(v18 + 87136), v81, v48);
          v44 = sub_175AE4();
          v52 = sub_160F68(4);
          v78 = v81;
          v79 = v48;
          v77 = *(v18 + 87136);
          v76 = 636;
          v73 = v52;
          v46 = "%lld %d AVE %s: %s:%d %s | fail to process %d %lld %d";
          goto LABEL_35;
        }

LABEL_36:
        v38 = 4294966296;
        goto LABEL_57;
      }

      v62 = *(v18 + 87192);
      if (v62)
      {
        CVBufferRelease(v62);
        *(v18 + 87192) = 0;
      }

      if (a5)
      {
        *(v18 + 87184) = 1;
        *(v18 + 87192) = CVBufferRetain(a4);
      }

      else
      {
        *(v18 + 87184) = 0;
      }
    }

    kdebug_trace();
    v38 = 0;
    if (!Mutable)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (sub_160EF0(0xDu, 4))
  {
    v28 = sub_160F34(0xDu);
    v29 = sub_175AE4();
    v30 = sub_160F68(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d %s | %s wrong parameter %p %zu %p %p %d %p\n", v29, 13, v30, "AVE_Plugin_OF_ProcessFrames", 590, "object != __null && referenceFrame != __null && currentFrame != __null", "AVE_Plugin_OF_ProcessFrames", a1, a2, a3, a4, a5, a6);
      v31 = sub_175AE4();
      v72 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %s wrong parameter %p %zu %p %p %d %p", v31, 13, v72, "AVE_Plugin_OF_ProcessFrames", 590, "object != __null && referenceFrame != __null && currentFrame != __null", "AVE_Plugin_OF_ProcessFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | %s wrong parameter %p %zu %p %p %d %p", v29, 13, v30, "AVE_Plugin_OF_ProcessFrames", 590, "object != __null && referenceFrame != __null && currentFrame != __null", "AVE_Plugin_OF_ProcessFrames");
    }
  }

  v38 = 4294966295;
LABEL_60:
  if ((sub_175AE4() - v12) >= 50000)
  {
    v63 = 5;
  }

  else
  {
    v63 = 8;
  }

  v64 = sub_175994(v38);
  if (v38)
  {
    v65 = 4;
  }

  else
  {
    v65 = v63;
  }

  if (sub_160EF0(0xDu, v65))
  {
    v66 = sub_160F34(0xDu);
    v67 = sub_175AE4();
    v68 = sub_160F68(v65);
    if (v66)
    {
      printf("%lld %d AVE %s: %s Exit %p %zu %p %p %d %p %d %d\n", v67, 13, v68, "AVE_Plugin_OF_ProcessFrames", a1, a2, a3, a4, v84, v83, v38, v64);
      v69 = sub_175AE4();
      v75 = sub_160F68(v65);
      syslog(3, "%lld %d AVE %s: %s Exit %p %zu %p %p %d %p %d %d", v69, 13, v75, "AVE_Plugin_OF_ProcessFrames", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %zu %p %p %d %p %d %d", v67, 13, v68, "AVE_Plugin_OF_ProcessFrames", a1);
    }
  }

  return v64;
}

uint64_t sub_14312C(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xDu, 7))
  {
    v3 = sub_160F34(0xDu);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 13, v5, "AVE_Plugin_OF_CompleteFrames", a1);
      v6 = sub_175AE4();
      v37 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 13, v37, "AVE_Plugin_OF_CompleteFrames", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 13, v5, "AVE_Plugin_OF_CompleteFrames", a1);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    v9 = DerivedStorage + 10752;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = v8[10];
      kdebug_trace();
      if (*(v9 + 1184) == 1)
      {
        v11 = sub_1751F8(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v12 = sub_160F34(0xDu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to complete session %p %lld %d\n", v13, 13, v14, "AVE_Plugin_OF_CompleteFrames", 723, "ret == 0", v8, v10, v11);
            v15 = sub_175AE4();
            v38 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to complete session %p %lld %d", v15, 13, v38);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to complete session %p %lld %d", v13, 13, v14);
          }
        }
      }

      else
      {
        v11 = sub_14953C(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v24 = sub_160F34(0xDu);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to complete OF %p %lld %d\n", v25, 13, v26, "AVE_Plugin_OF_CompleteFrames", 729, "ret == 0", v8, v10, v11);
            v27 = sub_175AE4();
            v41 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete OF %p %lld %d", v27, 13, v41);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete OF %p %lld %d", v25, 13, v26);
          }
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d\n", v21, 11, v22, "AVE_Plugin_OF_CompleteFrames", 713, "pPI != __null", a1, 0, 0);
          v23 = sub_175AE4();
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v23, 11, v40);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v21, 11, v22);
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    v28 = v9[147];
    if (v28)
    {
      CVBufferRelease(v28);
      v9[147] = 0;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v16 = sub_160F34(0xDu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v17, 13, v18, "AVE_Plugin_OF_CompleteFrames", 708, "object != __null", 0, 0, 0);
        v19 = sub_175AE4();
        v39 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v19, 13, v39);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v17, 13, v18);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v29 = sub_175AE4() - v2;
  if (v29 >= 50000)
  {
    v30 = 5;
  }

  else
  {
    v30 = 7;
  }

  v31 = sub_175994(v11);
  if (v11)
  {
    v30 = 4;
  }

  if (sub_160EF0(0xDu, v30))
  {
    v32 = sub_160F34(0xDu);
    v33 = sub_175AE4();
    v34 = sub_160F68(v30);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v33, 13, v34, "AVE_Plugin_OF_CompleteFrames", a1, v10, v29, v11, v31);
      v35 = sub_175AE4();
      sub_160F68(v30);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v35, 13);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v33, 13);
    }
  }

  return v31;
}

uint64_t sub_143734(const void *a1, void *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 11, v7, "AVE_Plugin_OF_CopySupportedPropertyDictionary", a1, a2);
      v8 = sub_175AE4();
      v34 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 11, v34, "AVE_Plugin_OF_CopySupportedPropertyDictionary", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 11, v7, "AVE_Plugin_OF_CopySupportedPropertyDictionary", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v10 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v11 = *(v10 + 80);
      kdebug_trace();
      v12 = sub_146AA0(v10, a2);
      if (v12 && sub_160EF0(0xBu, 4))
      {
        v13 = sub_160F34(0xBu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF property dictionary %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_OF_CopySupportedPropertyDictionary", 797, "ret == 0", a1, a2, v11, v12);
          v16 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF property dictionary %p %p %lld %d", v16, 11, v35, "AVE_Plugin_OF_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF property dictionary %p %p %lld %d", v14, 11, v15, "AVE_Plugin_OF_CopySupportedPropertyDictionary");
        }
      }

      kdebug_trace();
      sub_13DC4C(*v10);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v21 = sub_160F34(0xBu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d\n", v22, 11, v23, "AVE_Plugin_OF_CopySupportedPropertyDictionary", 786, "pPI != __null", a1, a2, 0);
          v24 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d", v24, 11, v37);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d", v22, 11, v23);
        }
      }

      v11 = 0;
      v12 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d\n", v18, 11, v19, "AVE_Plugin_OF_CopySupportedPropertyDictionary", 779, "processor != __null && supportedPropertyDictionaryOut != __null", a1, a2, 0);
        v20 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v20, 11, v36);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v18, 11, v19);
      }
    }

    v11 = 0;
    v12 = 4294966295;
  }

  v25 = sub_175AE4() - v4;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_175994(v12);
  if (v12)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_160EF0(0xBu, v28))
  {
    v29 = sub_160F34(0xBu);
    v30 = sub_175AE4();
    v31 = sub_160F68(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v30, 11, v31, "AVE_Plugin_OF_CopySupportedPropertyDictionary", a1, a2, v11, v25, v12, v27);
      v32 = sub_175AE4();
      v38 = sub_160F68(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v32, 11, v38);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t sub_143C48(const void *a1, const __CFDictionary *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 11, v7, "AVE_Plugin_OF_SetProperties", a1, a2);
      v8 = sub_175AE4();
      v30 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 11, v30, "AVE_Plugin_OF_SetProperties", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 11, v7, "AVE_Plugin_OF_SetProperties", a1, a2);
    }
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v10 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v11 = v10[10];
      kdebug_trace();
      CFDictionaryApplyFunction(a2, sub_1472D0, v10);
      kdebug_trace();
      sub_13DC4C(*v10);
      v12 = 0;
      v13 = 1;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d\n", v19, 11, v20, "AVE_Plugin_OF_SetProperties", 843, "pPI != __null", a1, a2, 0);
          v21 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d", v21, 11, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %d", v19, 11, v20);
        }
      }

      v13 = 0;
      v11 = 0;
      v12 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v14 = sub_160F34(0xBu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d\n", v15, 11, v16, "AVE_Plugin_OF_SetProperties", 838, "processor != __null && propertyDictionary != __null", a1, a2, 0);
        v17 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v17, 11, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v15, 11, v16);
      }
    }

    v13 = 0;
    v11 = 0;
    v12 = 4294966295;
  }

  v22 = sub_175AE4() - v4;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 6;
  }

  v24 = sub_175994(v12);
  if (!v13)
  {
    v23 = 4;
  }

  if (sub_160EF0(0xBu, v23))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v23);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_OF_SetProperties", a1, a2, v11, v22, v12, v24);
      v28 = sub_175AE4();
      v33 = sub_160F68(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v24;
}

uint64_t AVE_Plugin_OF_CreateInstance(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  memset(v66, 0, sizeof(v66));
  v6 = sub_175AE4();
  sub_160F98();
  sub_151990();
  v7 = sub_1502C8();
  sub_1621A4((v7 + 138));
  if (sub_160EF0(0xDu, 0))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(0);
    if (v8)
    {
      printf("%lld %d AVE %s: Compiled %s in %s on %s %s\n", v9, 13, v10, "905.5.3", "prod", "Oct 23 2025", "06:45:17");
      v9 = sub_175AE4();
      sub_160F68(0);
    }

    syslog(3, "%lld %d AVE %s: Compiled %s in %s on %s %s", v9);
  }

  v11 = sub_160D68(v66, 128);
  if (v11 >= 1 && sub_160EF0(0xDu, 0))
  {
    v12 = sub_160F34(0xDu);
    v13 = sub_175AE4();
    v14 = sub_160F68(0);
    if (v12)
    {
      printf("%lld %d AVE %s: Temporary Path: %s\n", v13, 13, v14, v66);
      v15 = sub_175AE4();
      v58 = sub_160F68(0);
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v15, 13, v58, v66);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v13, 13, v14, v66);
    }
  }

  if (sub_160EF0(0xDu, 6))
  {
    v16 = sub_160F34(0xDu);
    v17 = sub_175AE4();
    v18 = sub_160F68(6);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v17, 13, v18, "AVE_Plugin_OF_CreateInstance", a1, a2, a3, 0);
      v17 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v17, 13);
  }

  if (a3)
  {
    VTMotionEstimationProcessorGetClassID();
    if (CMDerivedObjectCreate())
    {
      if (sub_160EF0(0xDu, 4))
      {
        v19 = sub_160F34(0xDu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create OF object %p %p %d\n", v20, 13, v21, "AVE_Plugin_OF_CreateInstance", 958, "res == noErr", a1, a3, v11);
          v22 = sub_175AE4();
          v59 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create OF object %p %p %d", v22, 13, v59);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create OF object %p %p %d", v20, 13, v21);
        }
      }

      v34 = 4294966292;
LABEL_38:
      if (cf)
      {
        CFRelease(cf);
        v38 = 0;
        v28 = 0;
        cf = 0;
      }

      else
      {
        v38 = 0;
        v28 = 0;
      }

      goto LABEL_41;
    }

    kdebug_trace();
    *a3 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v46 = sub_160F34(0xDu);
        v47 = sub_175AE4();
        v48 = sub_160F68(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF object %p %d\n", v47, 13, v48, "AVE_Plugin_OF_CreateInstance", 965, "pPI != __null", 0, v11);
          v47 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF object %p %d", v47, 13);
      }

      v34 = 4294966296;
      goto LABEL_38;
    }

    v28 = DerivedStorage;
    bzero(DerivedStorage, 0x154B0uLL);
    v29 = sub_13DB68();
    *v28 = v29;
    if (!v29)
    {
      if (sub_160EF0(0xBu, 4))
      {
        v49 = sub_160F34(0xBu);
        v50 = sub_175AE4();
        v51 = sub_160F68(4);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create mutex %p %p %lld %p %p %d\n", v50, 11, v51, "AVE_Plugin_OF_CreateInstance", 972, "pPI->pPIMutex != __null", a1, a3, 0, cf, v28, v11);
          v52 = sub_175AE4();
          v62 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %p %p %lld %p %p %d", v52, 11, v62, "AVE_Plugin_OF_CreateInstance", 972, "pPI->pPIMutex != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %p %p %lld %p %p %d", v50, 11, v51, "AVE_Plugin_OF_CreateInstance", 972, "pPI->pPIMutex != __null");
        }
      }

      v34 = 4294966293;
      goto LABEL_72;
    }

    *(v28 + 87200) = 0;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"AVE_DMV_UseDMV");
      if (Value)
      {
        v31 = Value;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v31))
        {
          valuePtr = 0;
          CFNumberGetValue(v31, kCFNumberIntType, &valuePtr);
          *(v28 + 87200) = valuePtr == 1;
        }
      }
    }

    if (*(v28 + 87200) == 1)
    {
      v33 = sub_172B78(v28, a1, a2);
      if (v33)
      {
        v34 = v33;
        if (sub_160EF0(0xDu, 4))
        {
          v35 = sub_160F34(0xDu);
          v36 = sub_175AE4();
          v37 = sub_160F68(4);
          if (v35)
          {
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to create session %p %p %p %d\n", v36, 13, v37, "AVE_Plugin_OF_CreateInstance", 989, "ret == 0", a1, cf, v28, v34);
            v36 = sub_175AE4();
            v37 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to create session %p %p %p %d", v36, 13, v37, "AVE_Plugin_OF_CreateInstance");
        }

LABEL_72:
        if (*v28)
        {
          sub_13DBD0(*v28);
          *v28 = 0;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v53 = sub_1473E4(v28, a1, a2);
      if (v53)
      {
        v34 = v53;
        if (sub_160EF0(0xDu, 4))
        {
          v54 = sub_160F34(0xDu);
          v55 = sub_175AE4();
          v56 = sub_160F68(4);
          if (v54)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create OF %p %p %p %d\n", v55, 13, v56, "AVE_Plugin_OF_CreateInstance", 995, "ret == 0", a1, cf, v28, v34);
            v57 = sub_175AE4();
            v63 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create OF %p %p %p %d", v57, 13, v63, "AVE_Plugin_OF_CreateInstance");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create OF %p %p %p %d", v55, 13, v56, "AVE_Plugin_OF_CreateInstance");
          }
        }

        goto LABEL_72;
      }
    }

    v34 = 0;
    v38 = v28[10];
    *a3 = cf;
LABEL_41:
    kdebug_trace();
    goto LABEL_44;
  }

  if (sub_160EF0(0xDu, 4))
  {
    v23 = sub_160F34(0xDu);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v24, 13, v25, "AVE_Plugin_OF_CreateInstance", 951, "instanceOut != __null", a1, 0, 0, v11);
      v26 = sub_175AE4();
      v60 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v26, 13, v60, "AVE_Plugin_OF_CreateInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v24, 13, v25, "AVE_Plugin_OF_CreateInstance");
    }
  }

  v28 = 0;
  v38 = 0;
  v34 = 4294966295;
LABEL_44:
  if ((sub_175AE4() - v6) >= 50000)
  {
    v39 = 5;
  }

  else
  {
    v39 = 6;
  }

  v40 = sub_175994(v34);
  if (v34)
  {
    v39 = 4;
  }

  if (sub_160EF0(0xBu, v39))
  {
    v41 = sub_160F34(0xBu);
    v42 = sub_175AE4();
    v43 = sub_160F68(v39);
    if (v41)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %p %p %d\n", v42, 11, v43, "AVE_Plugin_OF_CreateInstance", a1, a3, v38, cf, v28, v40);
      v44 = sub_175AE4();
      v61 = sub_160F68(v39);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %p %p %d", v44, 11, v61, "AVE_Plugin_OF_CreateInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %p %p %d", v42, 11, v43, "AVE_Plugin_OF_CreateInstance");
    }
  }

  return v40;
}

void sub_144B1C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(a4 + 40);
  sub_175AE4();
  if (sub_160EF0(0xDu, 7))
  {
    v11 = sub_160F34(0xDu);
    v12 = sub_175AE4();
    v13 = sub_160F68(7);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %zu %p %d\n", v12, 13, v13, "AVE_Plugin_OF_EmitMotionVectors", a1, a2, a3, a4, a5);
      v14 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %zu %p %d", v14, 13, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %zu %p %d", v12, 13, v13);
    }
  }

  if (a1)
  {
    v15 = *(a1 + 80);
    if (*(a1 + 87200) == 1)
    {
      VTMotionEstimationProcessorSessionEmitMotionVectors();
      v16 = *(a4 + 2568);
      if (v16)
      {
        CFRelease(v16);
        *(a4 + 2568) = 0;
      }
    }

    else
    {
      VTMotionEstimationProcessorSessionEmitMotionVectors();
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_OF_EmitMotionVectors", 293, "pPI != __null && (pBuffer != __null || pUserData != __null)", 0, a2, a4, 0, 0);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v20, 11, v25, "AVE_Plugin_OF_EmitMotionVectors", 293);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v18, 11, v19, "AVE_Plugin_OF_EmitMotionVectors", 293);
      }
    }

    v15 = 0;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v21 = sub_160F34(0xDu);
    v22 = sub_175AE4();
    v23 = sub_160F68(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %zu %zu %lld\n", v22, 13, v23, "AVE_Plugin_OF_EmitMotionVectors", *(a4 + 2552), v10, v15);
      v22 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %zu %zu %lld", v22);
  }
}

uint64_t sub_144E30(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_OF_Invalidate", a1, 0);
      v6 = sub_175AE4();
      v37 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v37, "AVE_Plugin_OF_Invalidate", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_OF_Invalidate", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    v9 = DerivedStorage + 10752;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = v8[10];
      kdebug_trace();
      if (*(v9 + 1184) == 1)
      {
        v11 = sub_1751F8(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v12 = sub_160F34(0xDu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to stop DMV %p %lld %p %d\n", v13, 13, v14, "AVE_Plugin_OF_Invalidate", 57, "ret == 0", a1, v10, v8, v11);
            v15 = sub_175AE4();
            v38 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to stop DMV %p %lld %p %d", v15, 13, v38, "AVE_Plugin_OF_Invalidate");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to stop DMV %p %lld %p %d", v13, 13, v14, "AVE_Plugin_OF_Invalidate");
          }
        }
      }

      else
      {
        v11 = sub_14953C(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v24 = sub_160F34(0xDu);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to stop OF %p %lld %p %d\n", v25, 13, v26, "AVE_Plugin_OF_Invalidate", 64, "ret == 0", a1, v10, v8, v11);
            v27 = sub_175AE4();
            v41 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop OF %p %lld %p %d", v27, 13, v41, "AVE_Plugin_OF_Invalidate");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop OF %p %lld %p %d", v25, 13, v26, "AVE_Plugin_OF_Invalidate");
          }
        }
      }
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d\n", v21, 11, v22, "AVE_Plugin_OF_Invalidate", 44, "pPI != __null", a1, 0, 0);
          v23 = sub_175AE4();
          v40 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v23, 11, v40);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v21, 11, v22);
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    v28 = v9[147];
    if (v28)
    {
      CVBufferRelease(v28);
      v9[147] = 0;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v16 = sub_160F34(0xBu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v17, 11, v18, "AVE_Plugin_OF_Invalidate", 39, "object != __null", 0, 0, 0);
        v19 = sub_175AE4();
        v39 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v19, 11, v39);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v17, 11, v18);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v29 = sub_175AE4() - v2;
  if (v29 >= 50000)
  {
    v30 = 5;
  }

  else
  {
    v30 = 6;
  }

  v31 = sub_175994(v11);
  if (v11)
  {
    v32 = 4;
  }

  else
  {
    v32 = v30;
  }

  if (sub_160EF0(0xDu, v32))
  {
    v33 = sub_160F34(0xDu);
    v34 = sub_175AE4();
    v35 = sub_160F68(v32);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v34, 13, v35, "AVE_Plugin_OF_Invalidate", a1, v10, v29, v11, v31);
      v34 = sub_175AE4();
      sub_160F68(v32);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v34, 13);
  }

  return v31;
}

void sub_145438(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xDu, 6))
  {
    v3 = sub_160F34(0xDu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 13, v5, "AVE_Plugin_OF_Finalize", a1, 0);
      v6 = sub_175AE4();
      v35 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 13, v35, "AVE_Plugin_OF_Finalize", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 13, v5, "AVE_Plugin_OF_Finalize", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    v9 = DerivedStorage + 10752;
    if (DerivedStorage)
    {
      sub_13DC18(*DerivedStorage);
      v10 = v8[10];
      kdebug_trace();
      if (*(v9 + 1184) == 1)
      {
        v11 = sub_17558C(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v12 = sub_160F34(0xDu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | DMV: fail to destroy session %p %lld %p %d\n", v13, 13, v14, "AVE_Plugin_OF_Finalize", 125, "ret == 0", a1, v10, v8, v11);
            v13 = sub_175AE4();
            v36 = sub_160F68(4);
          }

          else
          {
            v36 = v14;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | DMV: fail to destroy session %p %lld %p %d", v13, 13, v36, "AVE_Plugin_OF_Finalize");
        }
      }

      else
      {
        v11 = sub_1498D0(v8);
        if (v11 && sub_160EF0(0xDu, 4))
        {
          v23 = sub_160F34(0xDu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to destroy OF %p %lld %p %d\n", v24, 13, v25, "AVE_Plugin_OF_Finalize", 132, "ret == 0", a1, v10, v8, v11);
            v26 = sub_175AE4();
            v39 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy OF %p %lld %p %d", v26, 13, v39, "AVE_Plugin_OF_Finalize");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy OF %p %lld %p %d", v24, 13, v25, "AVE_Plugin_OF_Finalize");
          }
        }
      }
    }

    else
    {
      if (sub_160EF0(0xDu, 4))
      {
        v19 = sub_160F34(0xDu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d\n", v20, 13, v21, "AVE_Plugin_OF_Finalize", 112, "pPI != __null", a1, 0, 0);
          v22 = sub_175AE4();
          v38 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v22, 13, v38);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get OF %p %lld %d", v20, 13, v21);
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    v27 = v9[147];
    if (v27)
    {
      CVBufferRelease(v27);
      v9[147] = 0;
    }

    kdebug_trace();
    sub_13DC4C(*v8);
    sub_13DBD0(*v8);
    *v8 = 0;
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v15 = sub_160F34(0xDu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 13, v17, "AVE_Plugin_OF_Finalize", 107, "object != __null", 0, 0, 0);
        v18 = sub_175AE4();
        v37 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 13, v37);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 13, v17);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v28 = sub_175AE4() - v2;
  if (v28 >= 50000)
  {
    v29 = 5;
  }

  else
  {
    v29 = 6;
  }

  v30 = sub_175994(v11);
  if (v11)
  {
    v31 = 4;
  }

  else
  {
    v31 = v29;
  }

  if (sub_160EF0(0xBu, v31))
  {
    v32 = sub_160F34(0xBu);
    v33 = sub_175AE4();
    v34 = sub_160F68(v31);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v33, 11, v34, "AVE_Plugin_OF_Finalize", a1, v10, v28, v11, v30);
      v33 = sub_175AE4();
      sub_160F68(v31);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v33, 11);
  }
}

uint64_t sub_145A68(const void *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v8 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v9 = sub_160F34(0xBu);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v10, 11, v11, "AVE_Plugin_OF_CopyProperty", a1, a2, a3, a4);
      v10 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v10, 11);
  }

  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v13 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v14 = v13[10];
      kdebug_trace();
      v15 = sub_1466F4(v13, a3, a2, a4);
      kdebug_trace();
      sub_13DC4C(*v13);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %p %d\n", v21, 11, v22, "AVE_Plugin_OF_CopyProperty", 191, "pPI != __null", a1, a2, a3, a4, 0);
          v23 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %p %d", v23, 11, v35, "AVE_Plugin_OF_CopyProperty", 191);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %p %d", v21, 11, v22, "AVE_Plugin_OF_CopyProperty", 191);
        }
      }

      v13 = 0;
      v14 = 0;
      v15 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v16 = sub_160F34(0xBu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %d\n", v17, 11, v18, "AVE_Plugin_OF_CopyProperty", 186, "object != __null && propertyKey != __null && propertyValueOut != __null", a1, a2, a3, a4, 0);
        v19 = sub_175AE4();
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %d", v19, 11, v34, "AVE_Plugin_OF_CopyProperty", 186);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %d", v17, 11, v18, "AVE_Plugin_OF_CopyProperty", 186);
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = 4294966295;
  }

  v24 = sub_175AE4() - v8;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 6;
  }

  v26 = sub_175994(v15);
  if (v15)
  {
    v27 = 4;
  }

  else
  {
    v27 = v25;
  }

  if (sub_160EF0(0xBu, v27))
  {
    v28 = a1;
    v29 = a3;
    v30 = sub_160F34(0xBu);
    v37 = sub_175AE4();
    v31 = sub_160F68(v27);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d\n", v37, 11, v31, "AVE_Plugin_OF_CopyProperty", v28, v13, v29, a4, v14, v24, v15, v26);
      v32 = sub_175AE4();
      v36 = sub_160F68(v27);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v32, 11, v36, "AVE_Plugin_OF_CopyProperty", v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v37, 11, v31, "AVE_Plugin_OF_CopyProperty", v28);
    }
  }

  return v26;
}

uint64_t sub_145F10(const void *a1, const __CFString *a2, const void *a3)
{
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v8, 11, v9, "AVE_Plugin_OF_SetProperty", a1, a2, a3);
      v8 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v8);
  }

  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[10];
      kdebug_trace();
      v13 = sub_14636C(v11, a2, a3);
      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %d\n", v19, 11, v20, "AVE_Plugin_OF_SetProperty", 242, "pPI != __null", a1, a2, a3, 0);
          v21 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %d", v21, 11, v32, "AVE_Plugin_OF_SetProperty");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get OF CM object storage %p %p %p %d", v19, 11, v20, "AVE_Plugin_OF_SetProperty");
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v14 = sub_160F34(0xBu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d\n", v15, 11, v16, "AVE_Plugin_OF_SetProperty", 237, "object != __null && propertyKey != __null && propertyValue != __null", a1, a2, a3, 0);
        v17 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d", v17, 11, v31, "AVE_Plugin_OF_SetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d", v15, 11, v16, "AVE_Plugin_OF_SetProperty");
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v22 = sub_175AE4() - v6;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 6;
  }

  v24 = sub_175994(v13);
  if (v13)
  {
    v25 = 4;
  }

  else
  {
    v25 = v23;
  }

  if (sub_160EF0(0xBu, v25))
  {
    v26 = sub_160F34(0xBu);
    v27 = sub_175AE4();
    v28 = sub_160F68(v25);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v27, 11, v28, "AVE_Plugin_OF_SetProperty", a1, a2, a3, v12, v22, v13, v24);
      v29 = sub_175AE4();
      v33 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v29, 11, v33, "AVE_Plugin_OF_SetProperty");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v27, 11, v28, "AVE_Plugin_OF_SetProperty");
    }
  }

  return v13;
}

uint64_t sub_14636C(void *a1, const __CFString *a2, const void *a3)
{
  if (sub_160EF0(0xDu, 7))
  {
    v6 = sub_160F34(0xDu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 13, v8, "AVE_Session_OF_SetProperty", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2)
  {
    v9 = sub_4F8C(a1, a2, a3);
    if (v9 && sub_160EF0(0xDu, 4))
    {
      v10 = sub_160F34(0xDu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld %p %p %d\n", v11, 13, v12, "AVE_Session_OF_SetProperty", 71, "ret == 0", a1, a1[10], a2, a3, v9);
        v13 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld %p %p %d", v13, 13, v23, "AVE_Session_OF_SetProperty", 71);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld %p %p %d", v11, 13, v12, "AVE_Session_OF_SetProperty", 71);
      }
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v14 = sub_160F34(0xDu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p\n", v15, 13, v16, "AVE_Session_OF_SetProperty", 66, "pINS != __null && pKey != __null", a1, a2, a3);
        v17 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p", v17, 13, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p", v15, 13, v16);
      }
    }

    v9 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v18 = sub_160F34(0xDu);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v19, 13, v20, "AVE_Session_OF_SetProperty", a1, v9);
      v21 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v21, 13, v25, "AVE_Session_OF_SetProperty", a1, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v19, 13, v20, "AVE_Session_OF_SetProperty", a1, v9);
    }
  }

  return v9;
}

uint64_t sub_1466F4(void *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (sub_160EF0(0xDu, 7))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 13, v10, "AVE_Session_OF_GetProperty", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 13);
  }

  if (a1 && a3 && a4)
  {
    v11 = sub_5114(a1, a2, a3, a4);
    if (v11 && sub_160EF0(0xDu, 4))
    {
      v12 = sub_160F34(0xDu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld %p %p %p %d\n", v13, 13, v14, "AVE_Session_OF_GetProperty", 102, "ret == 0", a1, a1[10], a2, a3, a4, v11);
        v15 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld %p %p %p %d", v15, 13, v25, "AVE_Session_OF_GetProperty", 102, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld %p %p %p %d", v13, 13, v14, "AVE_Session_OF_GetProperty", 102, "ret == 0");
      }
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v16 = sub_160F34(0xDu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v17, 13, v18, "AVE_Session_OF_GetProperty", 97, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v19, 13, v26, "AVE_Session_OF_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v17, 13, v18, "AVE_Session_OF_GetProperty");
      }
    }

    v11 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v20 = sub_160F34(0xDu);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v21, 13, v22, "AVE_Session_OF_GetProperty", a1, v11);
      v23 = sub_175AE4();
      v27 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 13, v27, "AVE_Session_OF_GetProperty", a1, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v21, 13, v22, "AVE_Session_OF_GetProperty", a1, v11);
    }
  }

  return v11;
}

uint64_t sub_146AA0(uint64_t a1, void *a2)
{
  if (sub_160EF0(0xDu, 7))
  {
    v4 = sub_160F34(0xDu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 13, v6, "AVE_Session_OF_GetPropertyDict", a1, a2);
      v7 = sub_175AE4();
      v22 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 13, v22, "AVE_Session_OF_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 13, v6, "AVE_Session_OF_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 87144);
    if (v8)
    {
      v9 = CFGetRetainCount(*(a1 + 87144));
      if (v9 != 1 && sub_160EF0(0xDu, 5))
      {
        v10 = sub_160F34(0xDu);
        v11 = sub_175AE4();
        v12 = sub_160F68(5);
        if (v10)
        {
          printf("%lld %d AVE %s: %s: property dictionary reference count %p %lld %d\n", v11, 13, v12, "AVE_Session_OF_GetPropertyDict", a1, *(a1 + 80), v9);
          v11 = sub_175AE4();
          sub_160F68(5);
        }

        syslog(3, "%lld %d AVE %s: %s: property dictionary reference count %p %lld %d", v11);
      }

      CFRetain(v8);
      v16 = 0;
    }

    else
    {
      v16 = 4294966288;
    }

    *a2 = v8;
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v13 = sub_160F34(0xDu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p\n", v14, 13, v15, "AVE_Session_OF_GetPropertyDict", 124, "pINS != __null && ppDict != __null", a1, a2);
        v14 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p", v14, 13);
    }

    v16 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v17 = sub_160F34(0xDu);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v18, 13, v19, "AVE_Session_OF_GetPropertyDict", a1, v16);
      v20 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 13, v23, "AVE_Session_OF_GetPropertyDict", a1, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v18, 13, v19, "AVE_Session_OF_GetPropertyDict", a1, v16);
    }
  }

  return v16;
}

uint64_t sub_146DFC(uint64_t a1, const __CFAllocator *a2)
{
  v4 = sub_1502C8();
  if (sub_160EF0(0xDu, 7))
  {
    v5 = sub_160F34(0xDu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 13, v7, "AVE_Session_OF_CreatePropertyDict", a1, a2);
      v8 = sub_175AE4();
      v29 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 13, v29, "AVE_Session_OF_CreatePropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 13, v7, "AVE_Session_OF_CreatePropertyDict", a1, a2);
    }
  }

  if (a1)
  {
    if (v4[396])
    {
      v9 = 257;
    }

    else
    {
      v9 = 258;
    }

    Mutable = CFDictionaryCreateMutable(a2, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(a1 + 87144) = Mutable;
    if (Mutable)
    {
      v11 = sub_4D2C(*(a1 + 92), v9, *(a1 + 80), Mutable);
      if (!v11)
      {
        goto LABEL_28;
      }

      if (sub_160EF0(0xDu, 4))
      {
        v12 = sub_160F34(0xDu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %p %lld 0x%x %d %d\n", v13, 13, v14, "AVE_Session_OF_CreatePropertyDict", 189, "ret == 0", a1, *(a1 + 80), v9, *(a1 + 92), v11);
          v15 = sub_175AE4();
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %p %lld 0x%x %d %d", v15, 13, v30, "AVE_Session_OF_CreatePropertyDict");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %p %lld 0x%x %d %d", v13, 13, v14, "AVE_Session_OF_CreatePropertyDict");
        }
      }
    }

    else
    {
      if (sub_160EF0(0xDu, 4))
      {
        v19 = sub_160F34(0xDu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFDict %p %lld 0x%x %d %d\n", v20, 13, v21, "AVE_Session_OF_CreatePropertyDict", 184, "pINS->pPropDict != __null", a1, *(a1 + 80), v9, *(a1 + 92), 0);
          v22 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFDict %p %lld 0x%x %d %d", v22, 13, v31, "AVE_Session_OF_CreatePropertyDict");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFDict %p %lld 0x%x %d %d", v20, 13, v21, "AVE_Session_OF_CreatePropertyDict");
        }
      }

      v11 = 4294966293;
    }

    v23 = *(a1 + 87144);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 87144) = 0;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v16 = sub_160F34(0xDu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p\n", v17, 13, v18, "AVE_Session_OF_CreatePropertyDict", 167, "pINS != __null", 0);
        v17 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p", v17);
    }

    LODWORD(v9) = 0;
    v11 = 4294966295;
  }

LABEL_28:
  if (sub_160EF0(0xDu, 7))
  {
    v24 = sub_160F34(0xDu);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v25, 13, v26, "AVE_Session_OF_CreatePropertyDict", a1, v9, v11);
      v27 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v25);
    }
  }

  return v11;
}

void sub_1472D0(const __CFString *a1, const void *a2, void *a3)
{
  v6 = sub_14636C(a3, a1, a2);
  if (v6)
  {
    v7 = v6;
    if (sub_160EF0(0xBu, 4))
    {
      v8 = sub_160F34(0xBu);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s: Failed to set property %p %p %p %d\n", v9, 11, v10, "AVE_Session_OF_ApplierFunc", a1, a2, a3, v7);
        v9 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s: Failed to set property %p %p %p %d", v9, 11);
    }
  }
}

uint64_t sub_1473E4(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  if (sub_160EF0(0xDu, 6))
  {
    v6 = sub_160F34(0xDu);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v7, 13, v8, "AVE_Session_OF_Create", a1);
      v9 = sub_175AE4();
      v45 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v9, 13, v45, "AVE_Session_OF_Create", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v7, 13, v8, "AVE_Session_OF_Create", a1);
    }
  }

  v10 = sub_1502C8();
  *(a1 + 10724) = 2;
  *(a1 + 88) = 2;
  *(a1 + 10508) = 0x100000001;
  *(a1 + 664) = v10[103];
  v11 = sub_1289FC(2, 2, (a1 + 24));
  if (v11)
  {
    v12 = v11;
    if (sub_160EF0(0xDu, 4))
    {
      v13 = sub_160F34(0xDu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to open OF %p %lld %d\n", v14, 13, v15, "AVE_Session_OF_Create", 250, "ret == 0", a1, 0, v12);
        v16 = sub_175AE4();
        v46 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open OF %p %lld %d", v16, 13, v46);
        goto LABEL_36;
      }

      v53 = 0;
      v54 = v12;
      v52 = a1;
      v51 = 250;
      v48 = v15;
      v25 = "%lld %d AVE %s: %s:%d %s | fail to open OF %p %lld %d";
LABEL_20:
      syslog(3, v25, v14, 13, v48, "AVE_Session_OF_Create", v51, "ret == 0", v52, v53, v54);
    }
  }

  else
  {
    *(a1 + 92) = sub_129100(*(a1 + 24));
    *(a1 + 80) = sub_129118(*(a1 + 24));
    *(a1 + 96) = *(sub_16FD90(*(a1 + 92)) + 1);
    v17 = *(a1 + 80);
    sub_13EF48(v17, v10[403], (a1 + 72));
    if (*(a1 + 96) <= 6)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v22 = sub_160F34(0xDu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | %lld %d is not supported optical flow\n", v23, 13, v24, "AVE_Session_OF_Create", 259, "pINS->eDevType >= AVE_DevType_H13", v17, *(a1 + 96));
          v23 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | %lld %d is not supported optical flow", v23, 13);
      }

      v12 = 4294966294;
      goto LABEL_36;
    }

    sub_CBCA0(*(a1 + 80), (a1 + 616));
    *(a1 + 16) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (sub_160EF0(0xDu, 7))
    {
      v18 = sub_160F34(0xDu);
      v19 = sub_175AE4();
      v20 = sub_160F68(7);
      if (v18)
      {
        printf("%lld %d AVE %s: %s Enter %p\n", v19, 13, v20, "AVE_SetEncoderDefault", a1);
        v21 = sub_175AE4();
        v47 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s Enter %p", v21, 13, v47, "AVE_SetEncoderDefault", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s Enter %p", v19, 13, v20, "AVE_SetEncoderDefault", a1);
      }
    }

    *(a1 + 10708) = 0;
    *(a1 + 10716) = 1;
    *(a1 + 10733) = 0;
    *(a1 + 10740) = 5;
    *(a1 + 10744) = 0x300000006;
    *(a1 + 10798) = 257;
    *(a1 + 10816) = 0;
    *(a1 + 10832) = 0;
    *(a1 + 10824) = 0;
    *(a1 + 10840) = 0;
    *(a1 + 10812) = -1;
    *(a1 + 10804) = 0;
    *(a1 + 10800) = 0x1000000;
    *(a1 + 10807) = 0;
    *(a1 + 10752) = 1;
    v26 = *(a1 + 1288);
    *(a1 + 10880) = 0;
    *(a1 + 11396) = 0;
    *(a1 + 11716) = 0;
    *(a1 + 11424) = 0u;
    *(a1 + 11440) = 0u;
    *(a1 + 11456) = 0u;
    *(a1 + 11472) = 0u;
    *(a1 + 11488) = 0u;
    *(a1 + 11504) = 0u;
    *(a1 + 11520) = 0u;
    *(a1 + 11536) = 0u;
    *(a1 + 11552) = 0u;
    *(a1 + 11568) = 0u;
    *(a1 + 11584) = 0u;
    *(a1 + 11600) = 0u;
    *(a1 + 11616) = 0u;
    *(a1 + 11632) = 0u;
    *(a1 + 11648) = 0u;
    *(a1 + 11664) = 0u;
    *(a1 + 11680) = 0u;
    *(a1 + 11696) = 0u;
    bzero((a1 + 10882), 0x201uLL);
    v27 = -288;
    do
    {
      *(a1 + v27 + 11712) = 0;
      v27 += 48;
    }

    while (v27);
    *(a1 + 11416) = 0x100000006;
    *(a1 + 11724) = 0;
    *(a1 + 11744) = 0;
    *(a1 + 11752) = 0;
    *(a1 + 11756) = 0;
    *(a1 + 1424) = 0;
    *(a1 + 1416) = 0;
    v28 = *(a1 + 1192);
    *(a1 + 10488) = 0;
    *(a1 + 1192) = v28 & 0xFFFFFAFF;
    *(a1 + 10122) = 0;
    *(a1 + 10128) = 2;
    *(a1 + 10125) = 0;
    *(a1 + 10196) = 1;
    *(a1 + 10200) = 0;
    *(a1 + 10204) = 1;
    v29 = *(a1 + 1396);
    *(a1 + 10212) = v29;
    *(a1 + 10468) = 4;
    *(a1 + 10156) = 256;
    *(a1 + 10474) = 0;
    *(a1 + 10136) = 0;
    *(a1 + 10140) = 0x800000001;
    *(a1 + 10123) = 1;
    v30 = *(a1 + 1392);
    *(a1 + 10760) = 1;
    *(a1 + 1088) = ((v30 * v29) * 1.5 * 0.075 * 30.0);
    *(a1 + 1064) = 0;
    *(a1 + 1084) = 1;
    *(a1 + 1168) = 0x3FF0000000000000;
    *(a1 + 1304) = 0;
    *(a1 + 10844) = 0;
    *(a1 + 10732) = 1;
    *(a1 + 11412) = 0;
    *(a1 + 644) = -1;
    *(a1 + 1184) = 0xC0000000CLL;
    *(a1 + 1296) = 0xC0000000CLL;
    *(a1 + 1288) = v26 & 0xF7FE7C89 | 0x200;
    *(a1 + 1096) = 0x1A0000001ALL;
    *(a1 + 1104) = 26;
    *(a1 + 1276) = 1;
    *(a1 + 1280) = 0x100000001;
    *(a1 + 11400) = 30;
    *(a1 + 1112) = 0u;
    *(a1 + 1128) = 0u;
    *(a1 + 1144) = 0;
    *(a1 + 1072) = 0;
    *(a1 + 11768) = 0;
    *(a1 + 10132) = 0;
    bzero((a1 + 11952), 0xC7D8uLL);
    *(a1 + 10124) = 1;
    *(a1 + 10482) = 1;
    *(a1 + 10120) = 4 * (*(a1 + 96) > 8);
    *(a1 + 1240) = 1;
    *(a1 + 1204) = xmmword_185FA0;
    *(a1 + 1220) = 0;
    *(a1 + 1224) = 0xBFF0000000000000;
    *(a1 + 1232) = 0xBFF0000000000000;
    *(a1 + 10810) = 1;
    *(a1 + 648) = 0;
    *(a1 + 668) = 0;
    if (sub_160EF0(0xDu, 7))
    {
      v31 = sub_160F34(0xDu);
      v32 = sub_175AE4();
      v33 = sub_160F68(7);
      if (v31)
      {
        printf("%lld %d AVE %s: %s Exit %p %d\n", v32, 13, v33, "AVE_SetEncoderDefault", a1, 0);
        v34 = sub_175AE4();
        v49 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s Exit %p %d", v34, 13, v49, "AVE_SetEncoderDefault", a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s Exit %p %d", v32, 13, v33, "AVE_SetEncoderDefault", a1, 0);
      }
    }

    if (a3)
    {
      CFDictionaryApplyFunction(a3, sub_1472D0, a1);
    }

    v12 = sub_146DFC(a1, a2);
    if (!v12)
    {
      *(a1 + 64) = 30565;
      goto LABEL_42;
    }

    if (sub_160EF0(0xDu, 4))
    {
      v35 = sub_160F34(0xDu);
      v14 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create property dictionary %p %lld %d\n", v14, 13, v36, "AVE_Session_OF_Create", 281, "ret == 0", a1, *(a1 + 80), v12);
        v37 = sub_175AE4();
        v50 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create property dictionary %p %lld %d", v37, 13, v50);
        goto LABEL_36;
      }

      v53 = *(a1 + 80);
      v54 = v12;
      v52 = a1;
      v51 = 281;
      v48 = v36;
      v25 = "%lld %d AVE %s: %s:%d %s | Failed to create property dictionary %p %lld %d";
      goto LABEL_20;
    }
  }

LABEL_36:
  v38 = *(a1 + 87144);
  if (v38)
  {
    CFRelease(v38);
    *(a1 + 87144) = 0;
  }

  v39 = *(a1 + 16);
  if (v39)
  {
    CFRelease(v39);
    *(a1 + 16) = 0;
  }

  v40 = *(a1 + 616);
  if (v40)
  {
    sub_CC04C(v40);
    *(a1 + 616) = 0;
  }

LABEL_42:
  if (sub_160EF0(0xDu, 6))
  {
    v41 = sub_160F34(0xDu);
    v42 = sub_175AE4();
    v43 = sub_160F68(6);
    if (v41)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v42, 13, v43, "AVE_Session_OF_Create", a1, a2, a3, v12);
      v42 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v42, 13);
  }

  return v12;
}

uint64_t sub_147D04(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  if (sub_160EF0(0xDu, 7))
  {
    v5 = sub_160F34(0xDu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: OF: ENTER %s, width = %d, height = %d\n", v6, 13, v7, "AVE_Session_OF_Start", a2, v4);
      v8 = sub_175AE4();
      v69 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: OF: ENTER %s, width = %d, height = %d", v8, 13, v69, "AVE_Session_OF_Start", a2, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: OF: ENTER %s, width = %d, height = %d", v6, 13, v7, "AVE_Session_OF_Start", a2, v4);
    }
  }

  if (a2 < 2 || v4 <= 1)
  {
    if (sub_160EF0(0xDu, 4))
    {
      v16 = sub_160F34(0xDu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        v19 = a2;
        printf("%lld %d AVE %s: %s:%d %s | OF: Resolution (%dx%d) is not supported\n", v17, 13, v18, "AVE_Session_OF_Start", 324, "dimensions.width >= 2 && dimensions.height >= 2", a2, v4);
        v20 = sub_175AE4();
        v77 = v19;
        v78 = v4;
        v75 = 324;
        v76 = "dimensions.width >= 2 && dimensions.height >= 2";
        v71 = sub_160F68(4);
        v21 = "%lld %d AVE %s: %s:%d %s | OF: Resolution (%dx%d) is not supported";
LABEL_56:
        syslog(3, v21, v20, 13, v71, "AVE_Session_OF_Start", v75, v76, v77, v78);
        goto LABEL_69;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Resolution (%dx%d) is not supported", v17);
    }

LABEL_69:
    v53 = 4294966295;
    goto LABEL_70;
  }

  *(a1 + 1392) = a2;
  *(a1 + 1396) = v4;
  v9 = (a1 + 87136);
  v10 = (a1 + 24664);
  v11 = (a1 + 10480);
  *(a1 + 11404) = a2;
  *(a1 + 11408) = v4;
  if (sub_160EF0(0xDu, 7))
  {
    v12 = sub_160F34(0xDu);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v13, 13, v14, "AVE_PrepareCropParams", a1);
      v15 = sub_175AE4();
      v70 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v15, 13, v70, "AVE_PrepareCropParams", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v13, 13, v14, "AVE_PrepareCropParams", a1);
    }
  }

  v22 = *(a1 + 1392);
  v23 = *(a1 + 1396);
  *v10 = 0;
  *(a1 + 24668) = 0u;
  v24 = sub_14E470(*(a1 + 92), 2, 2);
  v25 = *(a1 + 1396);
  if ((v25 & 0xF) != 0 || v25 < v24[1])
  {
    v26 = *(a1 + 96);
    if (v26 > 16 || v26 >= 12 && (*v11 & 1) == 0)
    {
      *(a1 + 87156) = v25;
    }

    v27 = (v25 + 15) & 0xFFFFFFF0;
    if (v27 <= v24[1])
    {
      v27 = v24[1];
    }

    *(a1 + 1396) = v27;
    *v10 = 1;
    *(a1 + 24680) = v27 - v23;
  }

  v28 = *(a1 + 1392);
  if ((v28 & 0xF) != 0 || v28 < *v24)
  {
    v29 = *(a1 + 96);
    if (v29 > 16 || v29 >= 12 && (*v11 & 1) == 0)
    {
      *(a1 + 87152) = v28;
    }

    v30 = (v28 + 15) & 0xFFFFFFF0;
    if (v30 <= *v24)
    {
      v30 = *v24;
    }

    *(a1 + 1392) = v30;
    *v10 = 1;
    *(a1 + 24672) = v30 - v22;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v31 = sub_160F34(0xDu);
    v32 = sub_175AE4();
    v33 = sub_160F68(7);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d input -> %dx%d\n", v32, 13, v33, "AVE_PrepareCropParams", 1050, v22, v23);
      v32 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s:%d input -> %dx%d", v32);
  }

  if (sub_160EF0(0xDu, 7))
  {
    v34 = sub_160F34(0xDu);
    v35 = sub_175AE4();
    v36 = sub_160F68(7);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d input multiple -> %dx%d\n", v35, 13, v36, "AVE_PrepareCropParams", 1052, *(a1 + 1392), *(a1 + 1396));
      v35 = sub_175AE4();
      sub_160F68(7);
      v9 = (a1 + 87136);
      v11 = (a1 + 10480);
    }

    syslog(3, "%lld %d AVE %s: %s:%d input multiple -> %dx%d", v35);
  }

  if (sub_160EF0(0xDu, 7))
  {
    v37 = sub_160F34(0xDu);
    v38 = sub_175AE4();
    v39 = sub_160F68(7);
    if (v37)
    {
      printf("%lld %d AVE %s: %s:%d frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v38, 13, v39, "AVE_PrepareCropParams", 1054, *(a1 + 24680), *(a1 + 24672));
      v38 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s:%d frame_crop_bottom_offset %d frame_crop_right_offset %d", v38);
  }

  if (sub_160EF0(0xDu, 7))
  {
    v40 = sub_160F34(0xDu);
    v41 = sub_175AE4();
    v42 = sub_160F68(7);
    if (v40)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v41, 13, v42, "AVE_PrepareCropParams", a1, 0);
      v43 = sub_175AE4();
      v72 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v43, 13, v72, "AVE_PrepareCropParams", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v41, 13, v42, "AVE_PrepareCropParams", a1, 0);
    }
  }

  if (sub_14E248(*(a1 + 92), 2, 2, *(a1 + 1392), *(a1 + 1396), 1))
  {
    if (sub_160EF0(0xDu, 4))
    {
      v44 = sub_160F34(0xDu);
      v45 = sub_175AE4();
      v46 = sub_160F68(4);
      if (!v44)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Dimension (%dx%d) is not supported", v45);
        goto LABEL_69;
      }

      v47 = a2;
      printf("%lld %d AVE %s: %s:%d %s | OF: Dimension (%dx%d) is not supported\n", v45, 13, v46, "AVE_Session_OF_Start", 339, "dimensionsRequirement == 0", a2, v4);
      v20 = sub_175AE4();
      v77 = v47;
      v78 = v4;
      v75 = 339;
      v76 = "dimensionsRequirement == 0";
      v71 = sub_160F68(4);
      v21 = "%lld %d AVE %s: %s:%d %s | OF: Dimension (%dx%d) is not supported";
      goto LABEL_56;
    }

    goto LABEL_69;
  }

  if (v11[3] && *(a1 + 96) <= 8)
  {
    if (sub_160EF0(3u, 4))
    {
      v59 = sub_160F34(3u);
      v60 = sub_175AE4();
      v61 = sub_160F68(4);
      if (v59)
      {
        printf("%lld %d AVE %s: %s:%d %s | OF: UseMultiPassSearch is not supported on this Hw\n", v60, 3, v61, "AVE_OF_VerifySessionProperties", 941, "pINS->eDevType >= AVE_DevType_H13S");
        v62 = sub_175AE4();
        v74 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: UseMultiPassSearch is not supported on this Hw", v62, 3, v74, "AVE_OF_VerifySessionProperties", 941, "pINS->eDevType >= AVE_DevType_H13S");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: UseMultiPassSearch is not supported on this Hw", v60, 3, v61, "AVE_OF_VerifySessionProperties", 941, "pINS->eDevType >= AVE_DevType_H13S");
      }
    }

    v53 = 4294966294;
    goto LABEL_87;
  }

  if (*v11 != 1)
  {
    goto LABEL_75;
  }

  if (*(a1 + 96) <= 6)
  {
    if (sub_160EF0(3u, 4))
    {
      v63 = sub_160F34(3u);
      v64 = sub_175AE4();
      v65 = sub_160F68(4);
      if (v63)
      {
        printf("%lld %d AVE %s: %s:%d %s | OF: kAVEMotionVectorSize_4x4 is not supported on this Hw\n", v64, 3, v65, "AVE_OF_VerifySessionProperties", 950, "pINS->eDevType >= AVE_DevType_H13");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | OF: kAVEMotionVectorSize_4x4 is not supported on this Hw");
    }

    goto LABEL_86;
  }

  v48 = *(a1 + 1392);
  if (v48 <= 0x1000)
  {
    v49 = *(a1 + 1396);
    if (v49 <= 0x1000 && (v48 < 0x801 || v49 < 0x801))
    {
LABEL_75:
      v53 = 0;
      *v9 = 0;
      *(a1 + 64) = 30566;
      goto LABEL_70;
    }
  }

  if (sub_160EF0(3u, 4))
  {
    v50 = sub_160F34(3u);
    v51 = sub_175AE4();
    v52 = sub_160F68(4);
    if (v50)
    {
      printf("%lld %d AVE %s: %s:%d %s | OF: Session is to large for kAVEMotionVectorSize_4x4\n", v51, 3, v52, "AVE_OF_VerifySessionProperties", 958, "false");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session is to large for kAVEMotionVectorSize_4x4");
  }

LABEL_86:
  v53 = 4294966296;
LABEL_87:
  if (sub_160EF0(0xDu, 4))
  {
    v66 = sub_160F34(0xDu);
    v67 = sub_175AE4();
    v68 = sub_160F68(4);
    if (v66)
    {
      printf("%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifySessionProperties failed %d\n", v67, 13, v68, "AVE_Session_OF_Start", 343, "ret == 0", v53);
      v67 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifySessionProperties failed %d", v67);
  }

LABEL_70:
  if (sub_160EF0(0xDu, 7))
  {
    v54 = sub_160F34(0xDu);
    v55 = sub_175AE4();
    v56 = sub_160F68(7);
    if (v54)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v55, 13, v56, "AVE_Session_OF_Start", v53);
      v57 = sub_175AE4();
      v73 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v57, 13, v73, "AVE_Session_OF_Start", v53);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v55, 13, v56, "AVE_Session_OF_Start", v53);
    }
  }

  return v53;
}

uint64_t sub_148880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v8;
  pixelBuffer = v11;
  v76 = 0;
  v16 = (v8 + 87136);
  v75 = 0;
  v74 = 0;
  sub_175AE4();
  if (sub_160EF0(0xDu, 7))
  {
    v17 = sub_160F34(0xDu);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v18, 13, v19, "AVE_Session_OF_Process", v15, v12, v10);
      v18 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v18);
  }

  v20 = sub_175AE4();
  v21 = pixelBuffer;
  v16[4] = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  v16[5] = CVPixelBufferGetHeightOfPlane(v21, 0);
  if (!*v16)
  {
    v22 = sub_1502C8();
    v79[0] = *(v15 + 1392);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v21);
    v24 = sub_167CD8(PixelFormatType);
    if (!v24)
    {
      if (sub_160EF0(3u, 4))
      {
        v36 = sub_160F34(3u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        v39 = *(v15 + 80);
        v40 = CVPixelBufferGetPixelFormatType(v21);
        if (v36)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v37, 3, v38, "AVE_Session_OF_Process", 410, "pPixelFmt != __null", v15, v39, v40);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
          CVPixelBufferGetPixelFormatType(v21);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v37, 3, v38);
      }

      v43 = 4294966295;
      goto LABEL_57;
    }

    if (*(v22 + 420))
    {
      v25 = (v22 + 105);
    }

    else
    {
      v25 = 0;
    }

    sub_CC848(*(v15 + 616), v25, *(v15 + 88), 4, v22[103], v22[104], v79, 1, *(v24 + 3), *(v24 + 1), 0);
    v21 = pixelBuffer;
  }

  sub_CCF60(*(v15 + 616), 0, v21);
  v26 = *(v15 + 64);
  if (v26 == 30566)
  {
    if (sub_149250(v15, &pixelBuffer, &v76, &v75, &v74, 1))
    {
      if (sub_160EF0(0xDu, 4))
      {
        v30 = sub_160F34(0xDu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifyImageBuffer failed\n", v31, 13, v32, "AVE_Session_OF_Process", 439, "ret == 0");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifyImageBuffer failed");
      }

      goto LABEL_52;
    }

    bzero(v80, 0x1078uLL);
    v79[0] = v15 + 624;
    v79[1] = v15 + 1392;
    v41 = *(v15 + 616);
    v79[2] = v15 + 10704;
    v80[1] = v41;
    v84 = v15 + 11952;
    v85 = v15 + 24188;
    v86 = v15 + 31992;
    v87 = v15 + 41624;
    v88 = v15 + 63112;
    v89 = v20;
    v42 = sub_12A644(*(v15 + 24), v79, v15 + 32, 1, *(v15 + 16), 0, 0, v15 + 100, (v15 + 11724), 0);
    if (!v42)
    {
      goto LABEL_35;
    }

    v43 = v42;
    if (sub_160EF0(0xDu, 4))
    {
      v44 = sub_160F34(0xDu);
      v45 = sub_175AE4();
      v46 = sub_160F68(4);
      if (v44)
      {
        printf("%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Start failed %d\n", v45, 13, v46, "AVE_Session_OF_Process", 459, "ret == 0", v43);
        v45 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Start failed %d", v45);
    }
  }

  else
  {
    if (v26 == 30568)
    {
      if (sub_149250(v15, &pixelBuffer, &v76, &v75, &v74, 0))
      {
        if (sub_160EF0(3u, 4))
        {
          v27 = sub_160F34(3u);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifyImageBuffer failed.\n", v28, 3, v29, "AVE_Session_OF_Process", 429, "ret == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_OF_VerifyImageBuffer failed.");
        }

LABEL_52:
        v43 = 4294966296;
        goto LABEL_57;
      }

LABEL_35:
      *(v15 + 64) = 30568;
      bzero(v78, 0x1738uLL);
      v71 = 0;
      v69 = 0u;
      v70 = 0u;
      memset(v68, 0, sizeof(v68));
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v62 = 0u;
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      bzero(v79, 0x4A40uLL);
      *&v68[1] = *(v15 + 87168);
      *&v69 = v79;
      *(&v69 + 1) = v78;
      v61[1] = pixelBuffer;
      v68[3] = v59;
      v83 = *(v15 + 10156);
      v47 = v16[4];
      if (!v47)
      {
        v47 = *(v15 + 1392);
      }

      v81 = v47;
      v48 = v16[5];
      if (!v48)
      {
        v48 = *(v15 + 1396);
      }

      v82 = v48;
      if (v10)
      {
        Value = CFDictionaryGetValue(v10, @"MakeKeyFrame");
        if (Value)
        {
          if (CFEqual(Value, kCFBooleanTrue))
          {
            LODWORD(v79[0]) = 2;
          }
        }
      }

      v72 = *v16;
      v73 = 0;
      v61[0] = v14;
      v43 = sub_12D95C(*(v15 + 24), v61);
      if (v43 && sub_160EF0(0xDu, 4))
      {
        v50 = sub_160F34(0xDu);
        v51 = sub_175AE4();
        v52 = sub_160F68(4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Process failed %d\n", v51, 13, v52, "AVE_Session_OF_Process", 504, "ret == 0", v43);
          v51 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Process failed %d", v51);
      }

      goto LABEL_57;
    }

    if (sub_160EF0(0xDu, 4))
    {
      v33 = sub_160F34(0xDu);
      v34 = sub_175AE4();
      v35 = sub_160F68(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | OF: Incorrect session status = 0x%08x.\n", v34, 13, v35, "AVE_Session_OF_Process", 468, "false", *(v15 + 64));
        v34 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Incorrect session status = 0x%08x.", v34);
    }

    v43 = 4294966285;
  }

LABEL_57:
  if (v76 == 1 && pixelBuffer)
  {
    CVPixelBufferRelease(pixelBuffer);
  }

  ++*v16;
  if (sub_160EF0(0xDu, 7))
  {
    v53 = sub_160F34(0xDu);
    v54 = sub_175AE4();
    v55 = sub_160F68(7);
    if (v53)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v54, 13, v55, "AVE_Session_OF_Process", v43);
      v56 = sub_175AE4();
      v58 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v56, 13, v58, "AVE_Session_OF_Process", v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v54, 13, v55, "AVE_Session_OF_Process", v43);
    }
  }

  return v43;
}

uint64_t sub_149250(uint64_t a1, const void **a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, int a6)
{
  memset(v39, 0, sizeof(v39));
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v11 = *(a1 + 87152);
  if (!v11)
  {
    v11 = *(a1 + 1392);
  }

  v28 = v11;
  v12 = *(a1 + 87156);
  if (!v12)
  {
    v12 = *(a1 + 1396);
  }

  v29 = v12;
  v13 = *(a1 + 10724);
  v30 = vrev64_s32(*(a1 + 88));
  v31 = *(a1 + 668);
  v32 = v13;
  result = sub_DCDC0(&v28, a2, (a1 + 87160));
  if (!result)
  {
    v15 = (a1 + 10123);
    *a3 = v39[6];
    v16 = HIDWORD(v38);
    *a4 = DWORD2(v38);
    *a5 = v16;
    v17 = *(a1 + 96);
    if (v17 <= 16 && (v17 < 12 || (*(a1 + 10480) & 1) != 0))
    {
      *(a1 + 10474) = BYTE1(v39[6]);
    }

    else
    {
      *(a1 + 10474) = 0;
      if (v28 != *(a1 + 1392) || v29 != *(a1 + 1396))
      {
        v18 = 1;
LABEL_14:
        *(a1 + 10802) = v18;
        v19 = HIDWORD(v36);
        v20 = HIDWORD(v36) & 0xFFFFFFFE;
        *(a1 + 10156) = (HIDWORD(v36) & 0xFFFFFFFE) == 2;
        if (v19 == 3)
        {
          *(a1 + 10481) = BYTE4(v37);
        }

        if (a6)
        {
          v21 = DWORD2(v35);
          *(a1 + 10720) = DWORD1(v35);
          v22 = v36;
          *(a1 + 24640) = v36;
          *(a1 + 10140) = v22;
          *(a1 + 10144) = v21;
          *v15 = v19 != 1;
          *(a1 + 10733) = 1;
        }

        if (v17 > 16 || *(a1 + 10480) != 1 || v20 != 2 && *(a1 + 10144) < 9u)
        {
          return 0;
        }

        if (sub_160EF0(0xDu, 4))
        {
          v23 = sub_160F34(0xDu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | Format %d is not supported, %d %d %d %d %d\n", v24, 13, v25, "AVE_OF_VerifyImageBuffer", 699, "!((pINS->eDevType < AVE_DevType_H15) && pINS->VideoParams.scaled_src_en && (pINS->VideoParams.input_compress || pINS->VideoParams.input_bitdepth > 8))", *(a1 + 10720), *(a1 + 10144), *(a1 + 24640), *(a1 + 10140), *(a1 + 10156), *v15);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Format %d is not supported, %d %d %d %d %d", v26, 13, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Format %d is not supported, %d %d %d %d %d", v24, 13, v25);
          }
        }

        return 4294966294;
      }
    }

    v18 = BYTE2(v39[6]);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_14953C(uint64_t a1)
{
  if (sub_160EF0(0xDu, 7))
  {
    v2 = sub_160F34(0xDu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 13, v4, "AVE_Session_OF_Complete", a1);
      v5 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 13, v23, "AVE_Session_OF_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 13, v4, "AVE_Session_OF_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 72);
    v7 = sub_175AE4();
    sub_140028(v6, 6u, v7);
    if (*(a1 + 64) == 30568)
    {
      v26 = sub_175AE4();
      v8 = sub_12D170(*(a1 + 24), &v26);
      if (v8 && sub_160EF0(0xDu, 4))
      {
        v9 = sub_160F34(0xDu);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to complete %p %lld %d\n", v10, 13, v11, "AVE_Session_OF_Complete", 542, "ret == 0", a1, *(a1 + 80), v8);
          v12 = sub_175AE4();
          v24 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to complete %p %lld %d", v12, 13, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to complete %p %lld %d", v10, 13, v11);
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v13 = sub_160F34(0xDu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v14, 13, v15, "AVE_Session_OF_Complete", 530, "pINS != __null", 0);
        v14 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v14);
    }

    v8 = 4294966295;
  }

  v16 = *(a1 + 72);
  v17 = sub_175AE4();
  sub_1403FC(v16, 6u, v17);
  if (sub_160EF0(0xDu, 7))
  {
    v18 = sub_160F34(0xDu);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v19, 13, v20, "AVE_Session_OF_Complete", a1, v8);
      v21 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v21, 13, v25, "AVE_Session_OF_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v19, 13, v20, "AVE_Session_OF_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_1498D0(uint64_t a1)
{
  if (sub_160EF0(0xDu, 7))
  {
    v2 = sub_160F34(0xDu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: OF: ENTER %s\n", v3, 13, v4, "AVE_Session_OF_Destroy");
      v5 = sub_175AE4();
      v21 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: OF: ENTER %s", v5, 13, v21, "AVE_Session_OF_Destroy");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: OF: ENTER %s", v3, 13, v4, "AVE_Session_OF_Destroy");
    }
  }

  v6 = sub_175AE4();
  if (*(a1 + 64) == 30568)
  {
    v23 = v6;
    sub_12C9EC(*(a1 + 24), &v23, 1);
  }

  v7 = sub_12916C(*(a1 + 24));
  *(a1 + 24) = 0;
  if (v7 && sub_160EF0(0xDu, 4))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Destroy failed %d\n", v9, 13, v10, "AVE_Session_OF_Destroy", 587, "ret == 0", v7);
      v9 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | OF: AVE_USL_Drv_Destroy failed %d", v9);
  }

  sub_151B10();
  v11 = *(a1 + 72);
  if (v11)
  {
    sub_13FB64(v11);
    *(a1 + 72) = 0;
  }

  v12 = *(a1 + 616);
  if (v12)
  {
    sub_CCDA4(v12);
    sub_CC04C(*(a1 + 616));
    *(a1 + 616) = 0;
  }

  v13 = *(a1 + 87144);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 87144) = 0;
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 16) = 0;
  }

  v15 = *(a1 + 87160);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 87160) = 0;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v16 = sub_160F34(0xDu);
    v17 = sub_175AE4();
    v18 = sub_160F68(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v17, 13, v18, "AVE_Session_OF_Destroy", v7);
      v19 = sub_175AE4();
      v22 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v19, 13, v22, "AVE_Session_OF_Destroy", v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v17, 13, v18, "AVE_Session_OF_Destroy", v7);
    }
  }

  return v7;
}

uint64_t sub_149BB4(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", v11, 20, v12, "AVE_CFArray_AddChar", 27, "pNum != __null", valuePtr, a2);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddChar", 23, "pArray != __null", a1, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_149DD8(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", v11, 20, v12, "AVE_CFArray_AddSInt16", 55, "pNum != __null", valuePtr, a2);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddSInt16", 51, "pArray != __null", a1, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_149FFC(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", v11, 20, v12, "AVE_CFArray_AddSInt32", 83, "pNum != __null", valuePtr, a2);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddSInt32", 79, "pArray != __null", a1, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_14A220(uint64_t a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p\n", v11, 20, v12, "AVE_CFArray_AddSInt64", 110, "pNum != __null", valuePtr, a2);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p", v11, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p\n", v8, 20, v9, "AVE_CFArray_AddSInt64", 106, "pArray != __null", a1, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_14A444(__CFArray *a1, double a2)
{
  valuePtr = a2;
  if (a1)
  {
    v4 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFArrayAppendValue(a1, v4);
      CFRelease(v5);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", v11, 20, v12, "AVE_CFArray_AddFloat64", 138, "pNum != __null", a2, a1);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", v11);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddFloat64", 134, "pArray != __null", a2, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t sub_14A680(__CFArray *a1, double a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v10 = sub_160F34(0x14u);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", v11, 20, v12, "AVE_CFArray_AddDouble", 165, "pNum != __null", valuePtr, a1);
          v11 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", v11);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddDouble", 161, "pArray != __null", a2, 0);
        v8 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t sub_14A8C4(CFArrayRef theArray, CFIndex idx, _BYTE *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberCharType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetChar", 191, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14AB6C(CFArrayRef theArray, CFIndex idx, _WORD *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetSInt16", 229, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetSInt16", 229, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt16", 222, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14AE14(CFArrayRef theArray, CFIndex idx, _DWORD *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt32", 253, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14B0BC(CFArrayRef theArray, CFIndex idx, void *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt64", 284, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14B364(CFArrayRef theArray, CFIndex idx, void *a3)
{
  v4 = idx;
  valuePtr = 0;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberFloat64Type, &valuePtr))
        {
          result = 0;
        }

        else
        {
          result = 4294966288;
        }

        *a3 = valuePtr;
        return result;
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", v14, 20, v15, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_26;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_26;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_26:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", v14, 20, v15, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetFloat64", 316, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14B618(void *key, int a2, CFMutableDictionaryRef theDict)
{
  if (key && theDict)
  {
    v6 = &kCFBooleanTrue;
    if (!a2)
    {
      v6 = &kCFBooleanFalse;
    }

    CFDictionaryAddValue(theDict, key, *v6);
    return 0;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v8 = sub_160F34(0x14u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v9, 20, v10, "AVE_CFDict_AddBool", 378, "pKey != __null && pDict != __null", key, a2, theDict);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v11, 20, v12);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v9, 20, v10);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14B76C(const void *a1, __CFDictionary *a2, double a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a2, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v12 = sub_160F34(0x14u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p\n", v13, 20, v14, "AVE_CFDict_AddDouble", 493, "pNum != __null", a1, valuePtr, a2);
          v13 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p", v13, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v9 = sub_160F34(0x14u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p\n", v10, 20, v11, "AVE_CFDict_AddDouble", 489, "pKey != __null && pDict != __null", a1, a3, a2);
        v10 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p", v10, 20);
    }

    return 4294966295;
  }
}

uint64_t sub_14B9CC(const void *a1, int a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v13 = sub_160F34(0x14u);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p\n", v14, 20, v15, "AVE_CFDict_AddSInt32", 584, "pNum != __null", a1, valuePtr, a3);
          v16 = sub_175AE4();
          v18 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", v14, 20, v15);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v9 = sub_160F34(0x14u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFDict_AddSInt32", 580, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14BC0C(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x14u, 4))
      {
        v13 = sub_160F34(0x14u);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p\n", v14, 20, v15, "AVE_CFDict_AddSInt64", 614, "pNum != __null", a1, valuePtr, a3);
          v16 = sub_175AE4();
          v18 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", v14, 20, v15);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v9 = sub_160F34(0x14u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p\n", v10, 20, v11, "AVE_CFDict_AddSInt64", 610, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14BE4C(CFDictionaryRef theDict, void *key, BOOL *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        v8 = CFBooleanGetValue(Value);
        result = 0;
        *a3 = v8 != 0;
        return result;
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v14 = sub_160F34(0x14u);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      if (Value)
      {
        v17 = CFGetTypeID(Value);
      }

      else
      {
        v17 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld\n", v15, 20, v16, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v17);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (!Value)
      {
        v18 = -1;
        goto LABEL_25;
      }
    }

    else if (!Value)
    {
      v18 = -1;
      goto LABEL_25;
    }

    v18 = CFGetTypeID(Value);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld", v15, 20, v16, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v18);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v10 = sub_160F34(0x14u);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFDict_GetBool", 640, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v13 = sub_175AE4();
      v19 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
    }
  }

  return 4294966295;
}

uint64_t sub_14C0FC(CFDictionaryRef theDict, void *key, _BYTE *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberCharType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetChar", 690, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetChar", 690, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetChar", 676, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14C3AC(CFDictionaryRef theDict, void *key, void *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberDoubleType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetDouble", 788, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14C65C(CFDictionaryRef theDict, void *key, _WORD *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt16Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetSInt16", 877, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetSInt16", 877, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt16", 863, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14C90C(CFDictionaryRef theDict, void *key, _DWORD *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt32Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt32", 901, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t sub_14CBBC(CFDictionaryRef theDict, void *key, void *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberSInt64Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!sub_160EF0(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = sub_160F34(0x14u);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", v14, 20, v15, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", v14, 20, v15, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (sub_160EF0(0x14u, 4))
  {
    v9 = sub_160F34(0x14u);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt64", 939, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = sub_175AE4();
      v18 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

const char *sub_14CE6C(const __CFString *a1, char *a2, unsigned int a3)
{
  if (a1)
  {
    result = CFStringGetCStringPtr(a1, 0);
    if (a3 >= 1 && a2 && !result)
    {
      CFStringGetCString(a1, a2, a3, 0);
      return a2;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v7 = sub_160F34(0x14u);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v8, 20, v9, "AVE_CFStr_GetStr", 975, "pStr != __null", 0, a2, a3);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 20, v11);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v8, 20, v9);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_14CFC0(CFStringRef applicationID, CFStringRef key, char *a3, uint64_t a4)
{
  v4 = a4;
  if (applicationID && key && a3 && a4 > 0)
  {
    v8 = CFPreferencesCopyAppValue(key, applicationID);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        v11 = sub_14CE6C(v9, a3, v4);
        if (v11 != a3)
        {
          sub_172100(a3, v4, "%s", v11);
        }

        v12 = 0;
      }

      else
      {
        v12 = 4294966296;
      }

      CFRelease(v9);
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v13 = sub_160F34(0x14u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", v14, 20, v15, "AVE_CFPref_GetStr", 1006, "pAppID != __null && pKey != __null && pVal != __null && num > 0", applicationID, key, a3, v4);
        v16 = sub_175AE4();
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v16, 20, v18, "AVE_CFPref_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v14, 20, v15, "AVE_CFPref_GetStr");
      }
    }

    return 4294966295;
  }

  return v12;
}

uint64_t sub_14D180(CFStringRef applicationID, CFStringRef key, BOOL *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFBooleanGetTypeID())
      {
        v9 = CFEqual(v7, kCFBooleanTrue) != 0;
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 != CFStringGetTypeID())
        {
          goto LABEL_19;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"true", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"yes", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"1", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        if (CFStringCompare(v7, @"false", 1uLL) && CFStringCompare(v7, @"no", 1uLL) && CFStringCompare(v7, @"0", 1uLL))
        {
LABEL_19:
          v10 = 4294966296;
          goto LABEL_20;
        }

        v9 = 0;
      }

LABEL_7:
      v10 = 0;
      *a3 = v9;
LABEL_20:
      CFRelease(v7);
      return v10;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v11 = sub_160F34(0x14u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v12, 20, v13, "AVE_CFPref_GetBool", 1047, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v14 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v13);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14D3D4(CFStringRef applicationID, CFStringRef key, _DWORD *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          v19 = 0;
          valuePtr = 0;
          v15 = sub_14CE6C(v7, &valuePtr, 0xCu);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetUInt32", 1151, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14D5E0(CFStringRef applicationID, CFStringRef key, uintmax_t *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr[0];
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v19 = 0;
          v15 = sub_14CE6C(v7, valuePtr, 0x14u);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetUInt64", 1202, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14D7EC(CFStringRef applicationID, CFStringRef key, _DWORD *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, valuePtr))
        {
          v9 = 0;
          *a3 = *valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          *&valuePtr[5] = 0;
          *valuePtr = 0;
          v15 = sub_14CE6C(v7, valuePtr, 0xDu);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetInt32", 1252, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}