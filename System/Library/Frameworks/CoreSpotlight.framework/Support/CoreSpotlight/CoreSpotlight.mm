void sub_100001228()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10002356C();
  }
}

CFAllocatorRef sub_100001258(void *a1)
{
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  context.allocate = sub_1000012D4;
  context.reallocate = sub_1000012E8;
  context.deallocate = sub_100001300;
  context.preferredSize = j__malloc_good_size;
  return CFAllocatorCreate(kCFAllocatorDefault, &context);
}

const __CFString *sub_100001314(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringHasPrefix(result, @"dyn."))
    {
      values[0] = @"public.item";
      values[1] = v1;
      values[2] = @"public.data";
      return CFArrayCreate(kCFAllocatorDefault, values, 3, &kCFTypeArrayCallBacks);
    }

    else
    {
      if (qword_10003CB50 != -1)
      {
        sub_1000235B4();
      }

      value = 0;
      if (CFStringHasPrefix(v1, @"com.apple.iwork"))
      {
        Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
        v3 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        sub_100001694(v1, v3, Mutable);
        value = CFArrayCreateCopy(kCFAllocatorDefault, v3);
        CFRelease(v3);
        CFRelease(Mutable);
      }

      else
      {
        os_unfair_lock_lock(&unk_10003CB60);
        if (CFDictionaryGetValueIfPresent(qword_10003CB58, v1, &value))
        {
          CFRetain(value);
        }

        else
        {
          os_unfair_lock_unlock(&unk_10003CB60);
          v4 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
          v5 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          sub_100001694(v1, v5, v4);
          value = CFArrayCreateCopy(kCFAllocatorDefault, v5);
          CFRelease(v5);
          CFRelease(v4);
          os_unfair_lock_lock(&unk_10003CB60);
          cf = 0;
          if (CFDictionaryGetValueIfPresent(qword_10003CB58, v1, &cf))
          {
            CFRelease(value);
            value = CFRetain(cf);
          }

          else
          {
            CFDictionarySetValue(qword_10003CB58, v1, value);
          }
        }

        os_unfair_lock_unlock(&unk_10003CB60);
      }

      return value;
    }
  }

  return result;
}

void sub_10000156C(id a1)
{
  qword_10003CB58 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  key[0] = kUTTypeItem;
  v1 = CFArrayCreate(kCFAllocatorDefault, key, 1, &kCFTypeArrayCallBacks);
  CFDictionarySetValue(qword_10003CB58, key[0], v1);
  CFRelease(v1);
  key[0] = kUTTypeFolder;
  key[1] = kUTTypeDirectory;
  key[2] = kUTTypeItem;
  v2 = CFArrayCreate(kCFAllocatorDefault, key, 3, &kCFTypeArrayCallBacks);
  CFDictionarySetValue(qword_10003CB58, key[0], v2);
  CFRelease(v2);
}

void sub_100001694(const void *a1, __CFArray *a2, __CFSet *a3)
{
  CFSetAddValue(a3, a1);
  CFArrayAppendValue(a2, a1);
  v6 = UTTypeCopyParentIdentifiers();
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        if (!CFSetContainsValue(a3, ValueAtIndex))
        {
          sub_100001694(ValueAtIndex, a2, a3);
        }
      }
    }

    CFRelease(v7);
  }
}

void *sub_10000176C(uint64_t a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *v2 = sub_100005FF8(((v1 + 3) & 0xFFFFFFFC) + 8);
  return v2;
}

void sub_1000017C4(uint64_t *a1)
{
  sub_100006048(*a1);

  free(a1);
}

uint64_t sub_100001820(uint64_t *a1)
{
  v3 = 0;
  v1 = sub_1000060BC(*a1, &v3);
  if (v1)
  {
    return v1 + 4;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_100001858(uint64_t *a1)
{
  v3 = 0;
  result = sub_1000060BC(*a1, &v3);
  if (result)
  {
    return sub_1000060EC(*a1, ((*result - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  }

  return result;
}

_DWORD *sub_1000018CC(unsigned int **a1, size_t a2, const void *a3)
{
  v6 = (a2 + 3) & 0xFFFFFFFC;
  v7 = sub_100006360(*a1, v6 + 8);
  *v7 = a2 + 4;
  v8 = v7 + 1;
  if (a3)
  {
    memcpy(v7 + 1, a3, a2);
  }

  *(v8 + v6) = 0;
  sub_100006480(*a1, v6 + 4);
  return v8;
}

_DWORD *sub_10000194C(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + (((*(a2 - 4) - 4) + 3) & 0x1FFFFFFFCLL));
  if (*v4)
  {
    return v4 + 1;
  }

  v7[1] = v2;
  v7[2] = v3;
  v7[0] = 0;
  v6 = sub_10000625C(*a1, v4, v7, 0);
  if (v6)
  {
    return (v6 + 4);
  }

  else
  {
    return 0;
  }
}

void *sub_1000019B8(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(a2 - 4) - 1) & 0xFFFFFFFFFFFFFFFCLL;
    result = sub_100006694(*result, a2 + v3);
    *(a2 + v3) = 0;
  }

  return result;
}

void *sub_1000019FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x4620uLL, 0x10F0040DF486990uLL);
  atomic_fetch_add_explicit(&dword_10003CB68, 1u, memory_order_relaxed);
  if (sub_100001A90(v8, a1, a2, a3, a4))
  {
    sub_100002000(v8);
    return 0;
  }

  return v8;
}

uint64_t sub_100001A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __chkstk_darwin(a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v5;
  bzero(v5, 0x4620uLL);
  __strlcpy_chk();
  sub_100002378(v14);
  *v14 = 0;
  v51 = xmmword_10002A478;
  v52 = 0;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = &v51;
  }

  if (!v9)
  {
    v9 = sub_1000049D4(v15);
  }

  *(v14 + 9688) = malloc_type_malloc(0x1000uLL, 0x2004093837F09uLL);
  *(v14 + 9680) = sub_10000176C(v9 << 8);
  *(v14 + 9640) = sub_100005FF8(v9 << 8);
  *(v14 + 9696) = 0;
  *(v14 + 9704) = -1;
  v16 = *(v15 + 2);
  *(v14 + 1032) = *v15;
  *(v14 + 1048) = v16;
  *(v14 + 1056) = v9;
  v48 = 5;
  v49 = xmmword_10002A350;
  v50 = 0;
  sub_1000046F4(v15, &v48, (v14 + 1128));
  bzero(v55, 0x8A8uLL);
  v45 = 5;
  v46 = xmmword_10002A360;
  v47 = 0;
  sub_1000046F4(v15, &v45, v55);
  v17 = v56;
  v18 = v57;
  *(v14 + 1096) = v56;
  *(v14 + 1080) = v18;
  v19 = v58;
  v20 = v59;
  *(v14 + 1088) = v58;
  *(v14 + 1112) = v20;
  v21 = v60;
  *(v14 + 1120) = v60;
  *(v14 + 1028) = v7 & 0xFFFFFFF9 | 4;
  *(v14 + 9708) = 0;
  *(v14 + 9712) = (~v7 & 0x18) == 0;
  if (v11)
  {
    v22 = v11;
  }

  else
  {
    v22 = &v51;
  }

  if ((*(v22 + 1) & 0x80000000) == 0)
  {
    sub_1000236A4();
  }

  if (!v18)
  {
    sub_100023678();
  }

  if (!v17)
  {
    sub_10002364C();
  }

  if (!v19)
  {
    sub_100023620();
  }

  if (!v20)
  {
    sub_1000235F4();
  }

  if (!v21)
  {
    sub_1000235C8();
  }

  *(v14 + 9716) = ((v7 >> 5) & 1) == 0;
  *(v14 + 9720) = (v7 >> 6) & 1;
  *(v14 + 1064) = v7 & 1;
  v23 = (v14 + 8616);
  *(v14 + 8616) = 0;
  *(v14 + 3360) = v14 + 8616;
  *(v14 + 3376) = v14 + 8616;
  bzero(v54, 0x400uLL);
  if (*v13 == 46)
  {
    v24 = v13;
    do
    {
      if (v24[1] != 47)
      {
        break;
      }

      v25 = *(v24 + 2);
      v24 += 2;
    }

    while (v25 == 46);
  }

  if (__strlcpy_chk() > 0x3FF)
  {
    v29 = __error();
    v30 = 63;
LABEL_33:
    *v29 = v30;
    return 0xFFFFFFFFLL;
  }

  v26 = strrchr((v14 + 8616), 47);
  if (v26 && ((v27 = v26, *v23 != 47) || *(v14 + 8617)))
  {
    __strlcpy_chk();
    v28 = v27 - v23;
    if (v27 == v23)
    {
      *(v14 + 8617) = 0;
      v28 = 1;
    }

    else
    {
      *v27 = 0;
    }
  }

  else
  {
    __strlcpy_chk();
    v28 = 0;
    *v23 = 0;
  }

  *(v14 + 3352) = v28;
  *(v14 + 9736) = 0;
  if (!(*(v14 + 1096) | *(v14 + 1088) | *(v14 + 1112)))
  {
    v29 = __error();
    v30 = 22;
    goto LABEL_33;
  }

  v31 = malloc_type_malloc(*(v14 + 1056) + 4, 0x100004052888210uLL);
  if (sub_10001BD9C(v13, (v14 + 1032), v31, v9, 8))
  {
LABEL_30:
    v32 = *__error();
LABEL_31:
    *__error() = v32;
LABEL_53:
    free(v31);
    return 0xFFFFFFFFLL;
  }

  *(v14 + 9724) = *(v31 + *(v14 + 1088));
  *(v14 + 9728) = *(v31 + *(v14 + 1096));
  v33 = *(v14 + 1080);
  if (v33)
  {
    v34 = *v31;
    if (v33 + 8 <= v34)
    {
      v35 = v31 + v33;
      v36 = v31 + v33 + *(v31 + v33);
      if (&v36[*(v31 + v33 + 4)] <= v31 + v34)
      {
        v37 = *v13;
        if ((v37 == 46 || v37 == 47) && !v13[1])
        {
          strncpy(v36, v13, 2uLL);
          *(v35 + 1) = 2;
        }
      }
    }
  }

  if (*(v14 + 9708))
  {
    v38 = *(v31 + *(v14 + 1112));
  }

  else
  {
    bzero(v53, 0x400uLL);
    __strlcpy_chk();
    if ((*v13 != 46 || v13[1]) && __strlcat_chk() > 0x3FF)
    {
      v32 = 63;
      goto LABEL_31;
    }

    atomic_fetch_add_explicit(&dword_10003CB6C, 1u, memory_order_relaxed);
    v39 = open(v53, 32772);
    if (v39 > 0x7FF)
    {
      if ((v39 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
        if (v39 == -1)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      *(v14 + 4 * v39 + 9756) = 957;
      ++*(v14 + 9752);
    }

    v38 = v39;
  }

  if (sub_100004F24(v14, v38))
  {
    goto LABEL_53;
  }

  v41 = *(v14 + 3368);
  v42 = *(v14 + 3376);
  if (*(v14 + 9664))
  {
    v43 = *(v14 + 9672);
    if (v43)
    {
      v44 = (*(v43 + 16))(v43, v14);
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 0;
  }

  sub_100005008(v14, v31, v41, v42, v44);
  free(v31);
  return 0;
}

void sub_100002000(void *a1)
{
  sub_1000026E4(a1);
  atomic_fetch_add_explicit(&dword_10003CB68, 0xFFFFFFFF, memory_order_relaxed);
  v2 = a1[1208];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[1209];
  if (v3)
  {
    _Block_release(v3);
  }

  free(a1);
}

void *sub_100002060(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 9664) = result;
  *(a1 + 9716) = 1;
  return result;
}

void *sub_100002094(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 9672) = result;
  return result;
}

char *sub_1000020C0(uint64_t a1, __int128 *a2, size_t a3, int a4, void *a5, int *a6, int *a7, uint64_t a8, double a9)
{
  v17 = malloc_type_calloc(1uLL, 0x4620uLL, 0x10F0040DF486990uLL);
  atomic_fetch_add_explicit(&dword_10003CB68, 1u, memory_order_relaxed);
  __strlcpy_chk();
  sub_100002378(v17);
  *v17 = 2;
  v44[1] = 0;
  v44[2] = 0;
  v43 = 0;
  v44[0] = 0x200000000000005;
  v42 = 12;
  v40 = 12;
  v41 = -1;
  if (a5)
  {
    v18 = a7;
  }

  else
  {
    v18 = &v40;
  }

  if (a5)
  {
    v19 = a6;
  }

  else
  {
    v19 = &v42;
  }

  if (a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = v44;
  }

  v21 = *(a2 + 2);
  *(v17 + 4148) = *a2;
  *(v17 + 4164) = v21;
  v22 = *(v17 + 2074);
  if (*(v17 + 2074))
  {
    v23 = v20 + 1;
    v24 = v17 + 4152;
    v25 = *(v17 + 2074);
    do
    {
      v26 = *v23++;
      *v24++ |= v26;
      --v25;
    }

    while (v25);
    v27 = &v38;
    v38 = xmmword_10002A370;
    v39 = 0;
    v28 = v17 + 4152;
    do
    {
      v29 = *v27;
      v27 = (v27 + 4);
      *v28++ |= v29;
      --v22;
    }

    while (v22);
  }

  v37[1] = 0;
  v37[2] = 0;
  v37[0] = 0x400000000005;
  *(v17 + 138) = sub_100004900(v17 + 1037, v37);
  v30 = sub_1000019FC(a1, (v17 + 4148), 0, a8);
  *(v17 + 1076) = v30;
  if (v30)
  {
    *(v17 + 257) = a8;
    *(v17 + 427) = a9;
    v31 = *a2;
    *(v17 + 131) = *(a2 + 2);
    *(v17 + 1032) = v31;
    if (!a3)
    {
      a3 = sub_1000049D4(a2);
    }

    *(v17 + 132) = a3;
    *(v17 + 429) = a3;
    *(v17 + 430) = malloc_type_malloc(a3, 0xF0144666uLL);
    v32 = *v20;
    *(v17 + 433) = v20[2];
    *(v17 + 3448) = v32;
    v33 = malloc_type_malloc(*v19, 0x51A6ACCCuLL);
    memcpy(v33, v19, *v19);
    *(v17 + 434) = v33;
    v34 = malloc_type_malloc(*v18, 0x3C4E4938uLL);
    memcpy(v34, v18, *v18);
    *(v17 + 435) = v34;
    *(v17 + 856) = a4 | 1;
    sub_1000046F4(v17 + 1037, v20, v17 + 4176);
    sub_1000046F4(v17 + 1037, a2, v17 + 6392);
  }

  else
  {
    sub_100002000(v17);
    return 0;
  }

  return v17;
}

uint64_t sub_100002378(uint64_t a1)
{
  bzero(&v12, 0x878uLL);
  result = statfs((a1 + 4), &v12);
  if (!result)
  {
    v11 = 0;
    v10 = xmmword_10002A490;
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    result = sub_10001BD9C(v12.f_mntonname, &v10, &v7, 0x24uLL, 0);
    if (!result)
    {
      v3 = DWORD1(v8);
      v4 = DWORD1(v7);
      v5 = BYTE8(v7) & BYTE8(v8);
      *(a1 + 3408) = BYTE8(v7) & BYTE8(v8) & 1;
      *(a1 + 3409) = (v5 & 8) != 0;
      v6 = ((v4 & v3) >> 14) & 1;
      if (!(*v12.f_fstypename ^ 0x73666361 | v12.f_fstypename[4]))
      {
        LOBYTE(v6) = 1;
      }

      *(a1 + 3410) = v6;
    }
  }

  return result;
}

char *sub_100002478(uint64_t a1, __int128 *a2, unint64_t a3, int a4, void *a5, unsigned int *a6, unsigned int *a7, char a8, double a9)
{
  v16 = malloc_type_calloc(1uLL, 0x4620uLL, 0x10F0040DF486990uLL);
  atomic_fetch_add_explicit(&dword_10003CB68, 1u, memory_order_relaxed);
  __strlcpy_chk();
  sub_100002378(v16);
  *v16 = 1;
  v16[1064] = a8 & 1;
  if (a8)
  {
    v35[1] = 0;
    v35[2] = 0;
    v35[0] = 0x200000000000005;
    *(v16 + 139) = sub_100004900(a2, v35);
  }

  *(v16 + 857) = 1024;
  v17 = *a2;
  *(v16 + 131) = *(a2 + 2);
  *(v16 + 1032) = v17;
  if (!a3)
  {
    a3 = sub_1000049D4(a2);
  }

  *(v16 + 132) = a3;
  *(v16 + 429) = a3 << 10;
  *(v16 + 430) = malloc_type_malloc(a3 << 10, 0xD5DC0FC4uLL);
  v34[1] = 0;
  v34[2] = 0;
  v34[0] = 0x200000000000005;
  if (!a5)
  {
    a7 = &unk_10002A4B4;
    a6 = &unk_10002A4A8;
  }

  v18 = v34;
  if (a5)
  {
    v18 = a5;
  }

  v19 = v18[2];
  *(v16 + 3448) = *v18;
  *(v16 + 433) = v19;
  v20 = malloc_type_malloc(*a6, 0xD021A4EAuLL);
  memcpy(v20, a6, *a6);
  *(v16 + 434) = v20;
  v21 = malloc_type_malloc(*a7, 0x3061C34CuLL);
  memcpy(v21, a7, *a7);
  *(v16 + 435) = v21;
  *(v16 + 856) = a4 | 1;
  *(v16 + 427) = a9;
  v22 = 1.0;
  if (a9 != 0.0)
  {
    v22 = a9;
  }

  v23 = *(v16 + 430);
  v24 = *(v16 + 429);
  v25 = *(v16 + 857);
  v26 = *(v16 + 434);
  v27 = *v26;
  v28 = *v21;
  *(v16 + 436) = v16 + 1032;
  *(v16 + 437) = v23;
  *(v16 + 438) = v24;
  *(v16 + 439) = v25;
  *(v16 + 440) = v22;
  *(v16 + 882) = 0;
  *(v16 + 442) = v26;
  *(v16 + 443) = v27;
  *(v16 + 444) = v21;
  *(v16 + 445) = v28;
  *(v16 + 223) = *(v16 + 3448);
  *(v16 + 448) = *(v16 + 433);
  v31 = 5;
  v32 = xmmword_10002A350;
  v33 = 0;
  sub_1000046F4(v16 + 258, &v31, v16 + 1128);
  return v16;
}

void sub_1000026E4(uint64_t a1)
{
  if (!*a1)
  {
    if (!*(a1 + 9708))
    {
      v9 = *(a1 + 9696);
      if (v9)
      {
        v10 = a1 + 9756;
        do
        {
          v11 = *(*(a1 + 9688) + 8 * v9 - 8);
          if (!v11)
          {
            break;
          }

          v12 = *(v11 + 48);
          if (v12 != -1)
          {
            if ((v12 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
              if (v12 <= 2047)
              {
                v13 = *(a1 + 9752);
                *(a1 + 9752) = v13 - 1;
                v14 = *(v10 + 4 * (v12 & 0x7FFFFFFF));
                if (v14 < 0 || v13 <= 0)
                {
                  sub_1000236D0();
                }

                if (v14)
                {
                  *(v10 + 4 * (v12 & 0x7FFFFFFF)) = -v14;
                }
              }
            }

            close(v12);
            v9 = *(a1 + 9696);
          }

          *(a1 + 9696) = --v9;
        }

        while (v9);
      }
    }

    free(*(a1 + 9688));
    free(*(a1 + 9648));
    *(a1 + 9648) = 0;
    v2 = *(a1 + 9704);
    if ((v2 & 0x80000000) == 0)
    {
      atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
      if (v2 <= 0x7FF)
      {
        v3 = *(a1 + 9752);
        *(a1 + 9752) = v3 - 1;
        v4 = *(a1 + 9756 + 4 * v2);
        if (v4 < 0 || v3 <= 0)
        {
          sub_1000236FC();
        }

        if (v4)
        {
          *(a1 + 9756 + 4 * v2) = -v4;
        }
      }

      close(v2);
    }

    v5 = *(a1 + 9680);
    if (v5)
    {
      sub_1000017C4(v5);
    }

    v6 = *(a1 + 9640);
    if (v6)
    {
      sub_100006048(v6);
    }
  }

  free(*(a1 + 3440));
  free(*(a1 + 3472));
  free(*(a1 + 3480));
  v7 = *(a1 + 8608);
  if (v7)
  {
    sub_100002000(v7);
  }

  v8 = *(a1 + 1072);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 1072) = 0;
  }
}

uint64_t sub_10000286C(uint64_t result)
{
  do
  {
    *(result + 3400) = 1;
    result = *(result + 8608);
  }

  while (result);
  return result;
}

uint64_t sub_100002880(int *a1)
{
  for (i = 0; ; i = 1)
  {
    *(a1 + 425) = 0;
    v3 = *a1;
    if (*a1 != 2)
    {
      break;
    }

    a1 = *(a1 + 1076);
  }

  if (v3 == 1)
  {
    v4 = 0;
    a1[856] |= 1u;
  }

  else if (v3)
  {
    v4 = 0;
  }

  else
  {
    sub_1000026E4(a1);
    bzero(v8, 0x400uLL);
    __strlcpy_chk();
    v6 = *(a1 + 258);
    v7 = *(a1 + 131);
    if (sub_100001A90(a1, v8, &v6, *(a1 + 132), a1[257]))
    {
      v4 = -1;
    }

    else
    {
      v4 = 0;
    }
  }

  if (i)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000298C(uint64_t a1)
{
  v1 = *(a1 + 8608);
  if (!v1)
  {
    v1 = a1;
  }

  return *(v1 + 9696);
}

_DWORD *sub_1000029E0(_DWORD *a1)
{
  if (*a1 == 2)
  {
    return a1 + 1598;
  }

  else
  {
    return 0;
  }
}

void sub_100002A00(uint64_t a1, CFTypeRef cf)
{
  v3 = CFRetain(cf);
  v4 = *(a1 + 8608);
  if (v4)
  {
    v5 = *(v4 + 1072);
    if (v5)
    {
      CFRelease(v5);
      v4 = *(a1 + 8608);
    }

    v6 = (v4 + 1072);
  }

  else
  {
    v6 = (a1 + 1072);
    v7 = *(a1 + 1072);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  *v6 = v3;
}

uint64_t sub_100002A68(uint64_t a1)
{
  v1 = *(a1 + 8608);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(v1 + 1072);
  if (v2)
  {
    CFRetain(*(v1 + 1072));
  }

  return v2;
}

uint64_t sub_100002AA4(uint64_t result)
{
  v1 = *(result + 8608);
  if (!v1)
  {
    v1 = result;
  }

  *(v1 + 1065) = 0;
  return result;
}

uint64_t sub_100002ACC(int *a1, __int128 *a2, uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))
{
  v3 = a1;
  v143 = 0u;
  v144 = 0u;
  a1[851] = 0;
  v4 = *(a1 + 1076);
  if (v4)
  {
    *(v4 + 3404) = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = *v3;
  if (!*v3)
  {
    v7 = v3;
    goto LABEL_35;
  }

  if (v6 == 1)
  {
    if (*(v3 + 1064) == 1 && !*(v3 + 134))
    {
      *(v3 + 134) = SIUINT64SetCreate();
    }

    v8 = CFAbsoluteTimeGetCurrent();
    while (1)
    {
      v147.d_ino = 0;
      if (searchfs(v3 + 4, (v3 + 872), &v147.d_ino, 0x8000103u, v3[856], (v3 + 898)))
      {
        v9 = *__error();
        v10 = v9 == 35;
        v11 = v9 == 35 || v9 == 0;
        if (!v11)
        {
          v3[856] &= ~1u;
          if (v9 != 35)
          {
            goto LABEL_361;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      if (v147.d_ino)
      {
        break;
      }

LABEL_29:
      v3[856] &= ~1u;
      if (!v10)
      {
LABEL_361:
        v22 = 0;
        v21 = v3[850];
LABEL_42:
        v3[851] = v21;
        v3[850] = 0;
        *__error() = v9;
        if (v9)
        {
          v25 = 1;
        }

        else
        {
          v25 = v22;
        }

        goto LABEL_350;
      }

LABEL_30:
      v18 = *(v3 + 427);
      v19 = CFAbsoluteTimeGetCurrent();
      v20 = v3;
      if (v18 < v19 - v8)
      {
        do
        {
          v20[850] = 1;
          v20 = *(v20 + 1076);
        }

        while (v20);
      }

      v21 = v3[850];
      if (v21)
      {
        v22 = 0;
        goto LABEL_42;
      }
    }

    v12 = *(v3 + 430);
    v13 = 1;
    while (1)
    {
      v14 = *(v3 + 134);
      *(v3 + 1065) = v14 != 0;
      if (v14)
      {
        if (SIUINT64SetContainsValue())
        {
          goto LABEL_28;
        }

        v15 = *(v3 + 134) != 0;
      }

      else
      {
        v15 = 0;
      }

      *(v3 + 1065) = v15;
      v16 = a3(v3, (v3 + 836), a2, v3[846], v12);
      if (*(v3 + 1065) == 1)
      {
        SIUINT64SetAddValue();
      }

      if (v16 == 1)
      {
        v21 = 0;
        v22 = -1;
        goto LABEL_42;
      }

LABEL_28:
      v12 = (v12 + *v12);
      if (v147.d_ino <= v13++)
      {
        goto LABEL_29;
      }
    }
  }

  if (v6 != 2)
  {
    v25 = 0xFFFFFFFFLL;
    goto LABEL_350;
  }

  *&v143 = Current;
  *(&v143 + 1) = a3;
  *&v144 = a2;
  *(&v144 + 1) = v3;
  v7 = *(v3 + 1076);
  a3 = sub_100003ED0;
  a2 = &v143;
LABEL_35:
  if (*(v7 + 1064) == 1 && !*(v7 + 1072))
  {
    *(v7 + 1072) = SIUINT64SetCreate();
  }

  v23 = *(v7 + 9696);
  if (v23)
  {
    v24 = *(*(v7 + 9688) + 8 * v23 - 8);
  }

  else
  {
    v24 = 0;
  }

  v26 = -1;
  if (!*(v7 + 9708))
  {
    atomic_fetch_add_explicit(&dword_10003CB6C, 1u, memory_order_relaxed);
    v114 = open(".", 32772);
    v26 = v114;
    if (v114 > 0x7FF)
    {
      if ((v114 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
        goto LABEL_342;
      }
    }

    else
    {
      *(v7 + 4 * v114 + 9756) = 1607;
      ++*(v7 + 9752);
    }

    if ((*(v7 + 9704) & 0x80000000) != 0 && (!v24 || (*(v24 + 48) & 0x80000000) != 0))
    {
      goto LABEL_47;
    }

    if (!pthread_fchdir_np())
    {
      v133 = *(v7 + 9704);
      if ((v133 & 0x80000000) == 0)
      {
        atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
        if (v133 <= 0x7FF)
        {
          v134 = *(v7 + 9752);
          *(v7 + 9752) = v134 - 1;
          v135 = *(v7 + 9756 + 4 * v133);
          if (v135 < 0 || v134 <= 0)
          {
            sub_100023888();
          }

          if (v135)
          {
            *(v7 + 9756 + 4 * v133) = -v135;
          }
        }
      }

      close(v133);
      *(v7 + 9704) = -1;
      goto LABEL_47;
    }

    v115 = *__error();
    atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
    if (v26 <= 2047)
    {
      v116 = *(v7 + 9752);
      *(v7 + 9752) = v116 - 1;
      v117 = *(v7 + 9756 + 4 * v26);
      if (v117 < 0 || v116 <= 0)
      {
        sub_100023728();
      }

      if (v117)
      {
        *(v7 + 9756 + 4 * v26) = -v117;
      }
    }

    v118 = v26;
LABEL_341:
    close(v118);
    *__error() = v115;
LABEL_342:
    v25 = 1;
    goto LABEL_350;
  }

LABEL_47:
  v136 = v26;
  v27 = *(v7 + 1056);
  v28 = 10;
  if (*(v7 + 9712))
  {
    v28 = 0;
  }

  v140 = v27 << v28;
  v29 = malloc_type_malloc(v27 << v28, 0x1BB4496BuLL);
  v30 = 0;
  v138 = v7 + 9756;
  v139 = v29;
  v137 = v3;
  while (2)
  {
    if (*(v7 + 9700) == 2)
    {
      goto LABEL_144;
    }

    v30 = 0;
    *(v7 + 9700) = 0;
    if (*(v7 + 3400))
    {
LABEL_52:
      *(v7 + 9700) = 1;
      goto LABEL_143;
    }

    v30 = 0;
    LODWORD(v31) = 0;
    while (1)
    {
      v32 = *(v7 + 9696);
      if (!v32)
      {
        goto LABEL_284;
      }

      while (1)
      {
        v24 = *(*(v7 + 9688) + 8 * v32 - 8);
        if (!v24)
        {
          goto LABEL_142;
        }

        v33 = *v24;
        if (*v24 && v31 == 0)
        {
          break;
        }

        if (!*(v7 + 9708))
        {
          v35 = *(v24 + 48);
          if (v35 != -1)
          {
            if ((v35 & 0x80000000) == 0)
            {
              atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
              if (v35 <= 0x7FF)
              {
                v36 = *(v7 + 9752);
                *(v7 + 9752) = v36 - 1;
                v37 = *(v138 + 4 * (v35 & 0x7FF));
                if (v37 < 0 || v36 <= 0)
                {
                  sub_1000237AC();
                }

                if (v37)
                {
                  *(v138 + 4 * (v35 & 0x7FF)) = -v37;
                }
              }
            }

            close(v35);
            v32 = *(v7 + 9696);
          }
        }

        *(v7 + 9696) = --v32;
        if (!v32)
        {
LABEL_141:
          v24 = 0;
LABEL_142:
          if (v30 == 1)
          {
            goto LABEL_274;
          }

          goto LABEL_143;
        }

        v38 = *(*(v7 + 9688) + 8 * v32 - 8);
        if (v38)
        {
          if (*(v7 + 1080))
          {
            *(v7 + 9736) = *(v38 + 56);
          }

          if (*(v7 + 9708) || !pthread_fchdir_np())
          {
            v31 = 0;
          }

          else
          {
            v31 = *__error();
          }

          v39 = *(v7 + 9680);
          v40 = sub_10000194C(v39, *(v38 + 8));
          sub_1000019B8(v39, v40);
          v32 = *(v7 + 9696);
          if (!v32)
          {
            goto LABEL_141;
          }
        }

        else
        {
          v31 = 0;
        }

        v24 = *(*(v7 + 9688) + 8 * v32 - 8);
        if (v24)
        {
          LODWORD(v31) = sub_100005138(v7, v31, *(v24 + 16));
          *(v7 + 3348) = 2;
          v41 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
          if (v41 == 2)
          {
            v30 = 0;
          }

          else
          {
            v30 = v41;
          }

          if (v41 == 1)
          {
            goto LABEL_142;
          }

          v32 = *(v7 + 9696);
        }

        if (!v32)
        {
          goto LABEL_141;
        }
      }

      if (*(v7 + 9712) && !*(v7 + 1080))
      {
        v42 = sub_10000194C(*(v7 + 9680), *v24);
        if (v42)
        {
          sub_1000018AC(*(v7 + 9680), v42);
        }
      }

      else
      {
        v42 = 0;
      }

      *(v24 + 16) = v33;
      LODWORD(v31) = sub_100005138(v7, 0, v33);
      if (*(v7 + 9664) && ((v43 = *(v7 + 9672)) == 0 || (*(v43 + 16))(v43, v7)))
      {
        v44 = *(v24 + 40);
        if (v44 != *(v24 + 24))
        {
          v45 = *(v24 + 32);
          *(v24 + 40) = v44 + 1;
          v46 = *(v45 + 8 * v44);
          goto LABEL_98;
        }
      }

      else if (v33 != *(v24 + 8))
      {
        v46 = sub_10000194C(*(v7 + 9680), v33);
        goto LABEL_98;
      }

      v46 = 0;
LABEL_98:
      *v24 = v46;
      if (*&v33[*(v7 + 1096)] == 1 && *(v7 + 9664))
      {
        v47 = *(v7 + 9672);
        if (!v47)
        {
          goto LABEL_286;
        }

        if ((*(v47 + 16))(v47, v7))
        {
          break;
        }
      }

      if (*(v7 + 9708))
      {
        v48 = *(v7 + 1112);
        if (v48 + 8 <= *v33)
        {
          v49 = *&v33[v48];
LABEL_124:
          v59 = 1;
          goto LABEL_127;
        }
      }

      else
      {
        v50 = *(v7 + 1080);
        if (v50)
        {
          v51 = *v33;
          if (v50 + 8 <= v51)
          {
            v52 = &v33[v50];
            v53 = *(v52 + 1);
            v54 = &v52[*v52];
            if (&v54[v53] <= &v33[v51])
            {
              v42 = v54;
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v42 = 0;
          }
        }

        atomic_fetch_add_explicit(&dword_10003CB6C, 1u, memory_order_relaxed);
        v55 = open(v42, 32772);
        LODWORD(v49) = v55;
        if (v55 > 0x7FF)
        {
          if ((v55 & 0x80000000) != 0)
          {
            atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
            goto LABEL_126;
          }
        }

        else
        {
          *(v138 + 4 * v55) = 749;
          ++*(v7 + 9752);
        }

        if (!pthread_fchdir_np())
        {
          v49 = v49;
          goto LABEL_124;
        }

        v56 = *__error();
        atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
        if (v49 <= 2047)
        {
          v57 = *(v7 + 9752);
          *(v7 + 9752) = v57 - 1;
          v58 = *(v138 + 4 * v49);
          if (v58 < 0 || v57 <= 0)
          {
            sub_100023780();
          }

          if (v58)
          {
            *(v138 + 4 * v49) = -v58;
          }
        }

        close(v49);
        *__error() = v56;
      }

LABEL_126:
      __error();
      v59 = 0;
      v49 = -1;
LABEL_127:
      *(v7 + 3348) = 1;
      if (*(v7 + 9720))
      {
        *(v7 + 3388) = 0;
        v60 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
        *(v7 + 3388) = 0;
      }

      else
      {
        v60 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
      }

      if (v60)
      {
        v61 = 0;
      }

      else
      {
        v61 = v59;
      }

      if (v61 == 1)
      {
        if (!sub_100004F24(v7, v49))
        {
          v108 = *(v7 + 9696);
          v29 = v139;
          v30 = 0;
          if (v108)
          {
            v24 = *(*(v7 + 9688) + 8 * v108 - 8);
            goto LABEL_143;
          }

LABEL_284:
          v24 = 0;
          goto LABEL_143;
        }

        sub_1000053D8(v7, v49);
        v29 = v139;
      }

      else
      {
        sub_1000053D8(v7, v49);
        if (v60 == 1)
        {
          v29 = v139;
          goto LABEL_274;
        }

        *(v7 + 3348) = 2;
        v11 = v60 == 3;
        v29 = v139;
        if (!v11 && a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392)) == 1)
        {
LABEL_274:
          if (*(v7 + 9708))
          {
            v30 = 1;
            v25 = 0xFFFFFFFFLL;
            if (v24)
            {
              goto LABEL_278;
            }
          }

          else
          {
            v119 = *(v7 + 9696);
            v25 = 0xFFFFFFFFLL;
            if (v119)
            {
              do
              {
                v120 = *(*(v7 + 9688) + 8 * v119 - 8);
                if (!v120)
                {
                  break;
                }

                v121 = *(v120 + 48);
                if (v121 != -1)
                {
                  if ((v121 & 0x80000000) == 0)
                  {
                    atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
                    if (v121 <= 2047)
                    {
                      v122 = *(v7 + 9752);
                      *(v7 + 9752) = v122 - 1;
                      v123 = *(v138 + 4 * (v121 & 0x7FFFFFFF));
                      if (v123 < 0 || v122 <= 0)
                      {
                        sub_100023804();
                      }

                      if (v123)
                      {
                        *(v138 + 4 * (v121 & 0x7FFFFFFF)) = -v123;
                      }
                    }
                  }

                  close(v121);
                  v119 = *(v7 + 9696);
                }

                *(v7 + 9696) = --v119;
              }

              while (v119);
              v25 = 0xFFFFFFFFLL;
            }
          }

          goto LABEL_322;
        }
      }

      v30 = 2;
      if (*(v7 + 3400))
      {
        goto LABEL_52;
      }
    }

    if (!*(v7 + 9664))
    {
      sub_100023754();
    }

LABEL_286:
    *(v7 + 3348) = 0;
    v30 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
    v29 = v139;
    if ((v30 & 0xFFFFFFFD) == 0)
    {
      v109 = *v24;
      if (*v24)
      {
        if (*&v109[*(v7 + 1096)] == 1)
        {
          v110 = 0;
          do
          {
            *(v24 + 16) = v109;
            v111 = *(v24 + 40);
            if (v111 == *(v24 + 24))
            {
              v112 = 0;
            }

            else
            {
              v113 = *(v24 + 32);
              *(v24 + 40) = v111 + 1;
              v112 = *(v113 + 8 * v111);
            }

            *v24 = v112;
            v110 = sub_100005138(v7, v110, v109);
            *(v7 + 3348) = 0;
            v30 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
            if ((v30 & 0xFFFFFFFD) != 0)
            {
              break;
            }

            v109 = *v24;
            if (!*v24)
            {
              break;
            }
          }

          while (*&v109[*(v7 + 1096)] == 1);
        }
      }
    }

    if (v30 != 2)
    {
      goto LABEL_142;
    }

    v30 = 0;
LABEL_143:
    if (*(v7 + 3400))
    {
      goto LABEL_273;
    }

LABEL_144:
    if (!v24)
    {
      goto LABEL_273;
    }

    if (*(v7 + 3400) && !*(v7 + 9700))
    {
      *(v7 + 9700) = 2;
      goto LABEL_273;
    }

    *(v7 + 9700) = 0;
    bzero(v148, 0x400uLL);
    if (*(v7 + 9708))
    {
      d_name = v148;
      sub_10001BCC0(v148, *(v7 + 9724), *(v24 + 48));
    }

    else
    {
      d_name = ".";
    }

    if (*(v7 + 9712))
    {
      v63 = opendir(d_name);
      if (!v63)
      {
        goto LABEL_273;
      }

      v64 = v63;
      bzero(&v147, 0x418uLL);
      v146 = 0;
      if (*(v7 + 9664))
      {
        v65 = *(v7 + 9672);
        if (v65)
        {
          v66 = (*(v65 + 16))(v65, v7);
        }

        else
        {
          v66 = 1;
        }
      }

      else
      {
        v66 = 0;
      }

      while (1)
      {
        while (1)
        {
LABEL_221:
          if (v30 != 1 && !readdir_r(v64, &v147, &v146))
          {
            v90 = v146;
            if (v146)
            {
              continue;
            }
          }

          closedir(v64);
          if (*(v7 + 9716) && (!*(v7 + 9664) || (v101 = *(v7 + 9672)) != 0 && ((*(v101 + 16))(v101, v7) & 1) == 0))
          {
            if (v30 != 1)
            {
              *&v145.st_dev = 0;
              v102 = sub_1000060BC(*(v7 + 9640), &v145);
              if (*&v145.st_dev >= 4uLL)
              {
                v103 = v102;
                v104 = *v102;
                if (*&v145.st_dev >= v104)
                {
                  v105 = 0;
                  do
                  {
                    v105 = sub_100005138(v7, v105, v103);
                    *(v7 + 3348) = 0;
                    v106 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
                    sub_1000060EC(*(v7 + 9640), v104);
                    if (v106 == 2)
                    {
                      v30 = 0;
                    }

                    else
                    {
                      v30 = v106;
                    }

                    if (v30 == 1)
                    {
                      break;
                    }

                    *&v145.st_dev = 0;
                    v107 = sub_1000060BC(*(v7 + 9640), &v145);
                    if (*&v145.st_dev < 4uLL)
                    {
                      break;
                    }

                    v103 = v107;
                    v104 = *v107;
                  }

                  while (*&v145.st_dev >= v104);
                }
              }

              v29 = v139;
            }

            sub_100006524(*(v7 + 9640));
          }

          else
          {
            sub_100005284(v7);
          }

          goto LABEL_273;
          if (v146->d_name[0] != 46 || v146->d_name[1] && (v146->d_name[1] != 46 || v146->d_name[2]))
          {
            if (*(v7 + 9708))
            {
              sub_10001BCC0(v148, *(v7 + 9724), v146->d_ino);
              v90 = v146;
            }

            else
            {
              d_name = v146->d_name;
            }

            d_type = v90->d_type;
            if (!d_type)
            {
              memset(&v145, 0, sizeof(v145));
              v92 = sub_10001BD10(d_name, &v145);
              v93 = v146;
              if (!v92)
              {
                v146->d_type = v145.st_mode >> 12;
              }

              d_type = v93->d_type;
            }

            v94 = d_type == 8 || d_type == 4;
            if (v94 && (!sub_10001BD9C(d_name, (v7 + 1032), v29, v140, 8) || !*__error()))
            {
              break;
            }
          }
        }

        if (v146->d_type != 8)
        {
          break;
        }

        if (*(v7 + 9724) == *(v29 + *(v7 + 1088)))
        {
          if (!*(v7 + 9716))
          {
            sub_100005138(v7, 0, v29);
            *(v7 + 3348) = 0;
            v100 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
            if (v100 == 2)
            {
              v30 = 0;
            }

            else
            {
              v30 = v100;
            }

            goto LABEL_221;
          }

          if (!v66)
          {
            sub_1000064AC(*(v7 + 9640), *v29, v29);
            goto LABEL_221;
          }

          v95 = v7;
          v96 = v29;
          d_namlen = 0;
          v98 = 0;
          v99 = 1;
          goto LABEL_250;
        }
      }

      if ((*(v29 + *(v7 + 1120)) & 3) != 0 || *(v7 + 9724) != *(v29 + *(v7 + 1088)))
      {
        goto LABEL_221;
      }

      d_namlen = v146->d_namlen;
      v98 = v146->d_name;
      v95 = v7;
      v96 = v29;
      v99 = v66;
LABEL_250:
      sub_100005008(v95, v96, d_namlen, v98, v99);
      goto LABEL_221;
    }

    atomic_fetch_add_explicit(&dword_10003CB6C, 1u, memory_order_relaxed);
    v67 = open(d_name, 32772);
    v68 = v67;
    v69 = v67;
    if (v67 > 0x7FF)
    {
      if ((v67 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
        v3 = v137;
        goto LABEL_273;
      }
    }

    else
    {
      *(v138 + 4 * v67) = 1654;
      ++*(v7 + 9752);
    }

    while (2)
    {
      v70 = sub_10001BDB4(v68, (v7 + 1032), v29, v140, 8);
      if ((v70 & 0x80000000) == 0)
      {
        v71 = v70;
        if (!v70)
        {
          v80 = v30 != 1;
          goto LABEL_193;
        }

        if (*(v7 + 9664))
        {
          v72 = *(v7 + 9672);
          if (v72)
          {
            v73 = (*(v72 + 16))(v72, v7);
          }

          else
          {
            v73 = 1;
          }
        }

        else
        {
          v73 = 0;
        }

        v74 = 0;
        v30 = 0;
        v75 = 1;
        while (2)
        {
          if (*(v7 + 9724) == *(v29 + *(v7 + 1088)))
          {
            v76 = *(v29 + *(v7 + 1096));
            if ((v76 - 1) <= 1 && (!*(v7 + 1072) || (SIUINT64SetContainsValue() & 1) == 0))
            {
              if (v76 == 1)
              {
                if (*(v7 + 9716))
                {
                  if (v73)
                  {
                    v77 = v7;
                    v78 = v29;
                    v79 = 1;
                    goto LABEL_178;
                  }

                  sub_1000064AC(*(v7 + 9640), *v29, v29);
                }

                else
                {
                  v74 = sub_100005138(v7, v74, v29);
                  *(v7 + 3348) = 0;
                  *(v7 + 1065) = *(v7 + 1072) != 0;
                  v30 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
                  if (*(v7 + 1065) == 1)
                  {
                    SIUINT64SetAddValue();
                  }

                  if (v30 == 2)
                  {
                    v30 = 0;
                  }
                }
              }

              else if ((*(v29 + *(v7 + 1120)) & 3) == 0)
              {
                v77 = v7;
                v78 = v29;
                v79 = v73;
LABEL_178:
                sub_100005008(v77, v78, 0, 0, v79);
              }
            }
          }

          if (v75 >= v71)
          {
            goto LABEL_187;
          }

          v29 = (v29 + *v29);
          ++v75;
          if (v30 == 1)
          {
            goto LABEL_187;
          }

          continue;
        }
      }

      LODWORD(v74) = *__error();
LABEL_187:
      v80 = v30 != 1;
      if (!v74)
      {
        v29 = v139;
        v68 = v69;
        if (v30 == 1)
        {
          goto LABEL_193;
        }

        continue;
      }

      break;
    }

    v29 = v139;
    v68 = v69;
LABEL_193:
    if (*(v7 + 9716) && (!*(v7 + 9664) || (v81 = *(v7 + 9672)) != 0 && ((*(v81 + 16))(v81, v7) & 1) == 0))
    {
      v3 = v137;
      if (v30 != 1)
      {
        v147.d_ino = 0;
        v82 = sub_1000060BC(*(v7 + 9640), &v147);
        if (v147.d_ino >= 4)
        {
          v83 = v82;
          v84 = *v82;
          if (v147.d_ino >= v84)
          {
            v85 = 0;
            do
            {
              v85 = sub_100005138(v7, v85, v83);
              *(v7 + 3348) = 0;
              *(v7 + 1065) = *(v7 + 1072) != 0;
              v86 = a3(v7, v7 + 3344, a2, *(v7 + 3384), *(v7 + 3392));
              if (*(v7 + 1065) == 1)
              {
                SIUINT64SetAddValue();
              }

              sub_1000060EC(*(v7 + 9640), v84);
              if (v86 == 2)
              {
                v30 = 0;
              }

              else
              {
                v30 = v86;
              }

              if (v30 == 1)
              {
                break;
              }

              v147.d_ino = 0;
              v87 = sub_1000060BC(*(v7 + 9640), &v147);
              if (v147.d_ino < 4)
              {
                break;
              }

              v83 = v87;
              v84 = *v87;
            }

            while (v147.d_ino >= v84);
          }
        }

        v29 = v139;
      }

      sub_100006524(*(v7 + 9640));
    }

    else
    {
      v3 = v137;
      if (v80)
      {
        sub_100005284(v7);
      }

      else
      {
        v30 = 1;
      }
    }

    atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
    if (v68 <= 2047)
    {
      v88 = *(v7 + 9752);
      *(v7 + 9752) = v88 - 1;
      v89 = *(v138 + 4 * v68);
      if (v89 < 0 || v88 <= 0)
      {
        sub_1000237D8();
      }

      if (v89)
      {
        *(v138 + 4 * v68) = -v89;
      }
    }

    close(v68);
LABEL_273:
    if (v30 == 1)
    {
      goto LABEL_274;
    }

    v25 = 0;
    if (v24)
    {
LABEL_278:
      if (v30 == 1 || *(v7 + 3400))
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_322:
  v124 = sub_100006524(*(v7 + 9640));
  if (*(v7 + 3400))
  {
    *(v7 + 3404) = 1;
    v125 = v136;
    if (!*(v7 + 9708))
    {
      atomic_fetch_add_explicit(&dword_10003CB6C, 1u, memory_order_relaxed);
      v126 = open(".", 32772, v124);
      if (v126 <= 0x7FF)
      {
        *(v138 + 4 * v126) = 1868;
        ++*(v7 + 9752);
        goto LABEL_332;
      }

      if ((v126 & 0x80000000) != 0)
      {
        atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
        *(v7 + 9704) = v126;
        *(v7 + 3404) = 0;
        v25 = 1;
      }

      else
      {
LABEL_332:
        *(v7 + 9704) = v126;
      }
    }

    *(v7 + 3400) = 0;
    if ((v136 & 0x80000000) == 0)
    {
LABEL_334:
      if (pthread_fchdir_np())
      {
        *(v7 + 3404) = 0;
        v115 = *__error();
        atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
        if (v125 <= 0x7FF)
        {
          v127 = *(v7 + 9752);
          *(v7 + 9752) = v127 - 1;
          v128 = *(v138 + 4 * v125);
          if (v128 < 0 || v127 <= 0)
          {
            sub_100023830();
          }

          if (v128)
          {
            *(v138 + 4 * v125) = -v128;
          }
        }

        v118 = v125;
        goto LABEL_341;
      }

      atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
      if (v125 <= 0x7FF)
      {
        v129 = *(v7 + 9752);
        *(v7 + 9752) = v129 - 1;
        v130 = *(v138 + 4 * v125);
        if (v130 < 0 || v129 <= 0)
        {
          sub_10002385C();
        }

        if (v130)
        {
          *(v138 + 4 * v125) = -v130;
        }
      }

      close(v125);
    }
  }

  else
  {
    v125 = v136;
    if ((v136 & 0x80000000) == 0)
    {
      goto LABEL_334;
    }
  }

  free(v29);
LABEL_350:
  v131 = *(v3 + 1076);
  if (v131)
  {
    v3[851] = *(v131 + 3404);
    v3[850] = 0;
  }

  return v25;
}

uint64_t sub_100003ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 24);
  v7 = *(a2 + 4);
  if (v7 == 2)
  {
    if (*(v6 + 3416) < CFAbsoluteTimeGetCurrent() - *a3)
    {
      do
      {
        *(v6 + 3400) = 1;
        v6 = *(v6 + 8608);
      }

      while (v6);
    }

    return 0;
  }

  v12 = *a2;
  if (v7 != 1 || v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    if ((*(v6 + 3424) & 0x40) == 0)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v15 = *(a2 + 16);
    if (qword_10003CB78 != -1)
    {
      sub_1000238B4();
    }

    v14 = fcntl(dword_10003AE90, 52, v15) >= 0;
    v12 = *a2;
  }

  if (v12 < 1)
  {
LABEL_18:
    v16 = 1;
    goto LABEL_26;
  }

LABEL_17:
  if ((*(v6 + 3424) & 0x20) == 0)
  {
    goto LABEL_18;
  }

  if ((*(a5 + *(v6 + 1104) + 8) & 0x40) != 0)
  {
    goto LABEL_22;
  }

  v17 = *(a2 + 32);
  if (!v17)
  {
LABEL_24:
    v16 = 1;
    goto LABEL_25;
  }

  if (*v17 != 46)
  {
    LODWORD(v17) = 0;
    goto LABEL_24;
  }

LABEL_22:
  v16 = 0;
  LODWORD(v17) = *(a2 + 4) == 1;
LABEL_25:
  v14 |= v17;
LABEL_26:
  v18 = *(a2 + 4);
  v19 = *(v6 + 3424);
  if (v18 == 1)
  {
    if ((v19 & 4) == 0)
    {
      return (2 * v14);
    }
  }

  else if (!v18 && (v19 & 8) == 0)
  {
    return (2 * v14);
  }

  if (!sub_100004224(v19, (v6 + 4176), a5, *(v6 + 3472), *(v6 + 3480)) || (v16 & 1) == 0)
  {
    return (2 * v14);
  }

  if ((*(v6 + 1028) & 0x80) == 0)
  {
    sub_100004490(v6 + 6392, a5, *(v6 + 3440));
    a5 = *(v6 + 3440);
  }

  v20 = (*(a3 + 8))(v6, a2, *(a3 + 16), a4, a5);
  if (v14)
  {
    v21 = 2;
  }

  else
  {
    v21 = v20;
  }

  if (v20 == 1)
  {
    return 1;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_1000040C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t (*a6)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))
{
  v8 = sub_1000019FC(a1, a2, a3, a4);
  if (!v8)
  {
    return 4294967294;
  }

  v9 = v8;
  v10 = sub_100002ACC(v8, a5, a6);
  sub_100002000(v9);
  return v10;
}

uint64_t sub_100004120(uint64_t a1, __int128 *a2, unint64_t a3, int a4, void *a5, unsigned int *a6, unsigned int *a7, char a8, __int128 *a9)
{
  v9 = sub_100002478(a1, a2, a3, a4, a5, a6, a7, a8, 0.0);
  if (!v9)
  {
    return 4294967294;
  }

  v10 = v9;
  do
  {
    v11 = sub_100002ACC(v10, a9, sub_100003EB4);
  }

  while (v11 && *__error() == 35);
  sub_100002000(v10);
  return v11;
}

uint64_t sub_1000041A0(uint64_t a1, __int128 *a2, unint64_t a3, int a4, void *a5, unsigned int *a6, unsigned int *a7, char a8, uint64_t a9, uint64_t a10)
{
  *&v11 = _NSConcreteStackBlock;
  *(&v11 + 1) = 0x40000000;
  v12 = sub_100004210;
  v13 = &unk_100034EC8;
  v14 = a10;
  v15 = a9;
  return sub_100004120(a1, a2, a3, a4, a5, a6, a7, a8, &v11);
}

BOOL sub_100004224(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (*a2 >= 1)
  {
    v7 = 0;
    v8 = (a5 + 4);
    v9 = (a4 + 4);
    v10 = a2 + 394;
    v11 = a2 + 74;
    v12 = a2 + 34;
    v37 = a2 + 74;
    v13 = a2 + 54;
    while (1)
    {
      v14 = *&v10[2 * v7];
      v15 = *&v11[2 * v7];
      if (!v15)
      {
        goto LABEL_33;
      }

      if (!*(v12 + v7))
      {
        v18 = 1;
        goto LABEL_35;
      }

      v16 = (a3 + v15);
      v17 = *(v13 + v7);
      v18 = 1;
      if (v17 > 2)
      {
        if (v17 == 3)
        {
          v32 = *v16;
          v33 = *v9;
          v34 = a1;
          if ((a1 & 2) != 0)
          {
            v18 = strcasestr(&v16[v32], &v9[v33]) != 0;
            v5 = *a2;
          }

          else
          {
            v18 = strcasecmp(&v16[v32], &v9[v33]) == 0;
          }

          a1 = v34;
          v11 = v37;
        }

        else if (v17 == 4 && v14 >= 4)
        {
          if ((*v8 & *v16) == *v9)
          {
            v23 = v14 >> 2;
            v24 = 1;
            do
            {
              v25 = v24;
              if (v23 == v24)
              {
                break;
              }

              v26 = v8[v24] & *&v16[4 * v24];
              v27 = *&v9[4 * v24++];
            }

            while (v26 == v27);
            v18 = v25 >= v23;
          }

          else
          {
LABEL_40:
            v18 = 0;
          }
        }

        goto LABEL_34;
      }

      if (v17 != 1)
      {
        break;
      }

      if (v14 >= 4)
      {
        v28 = v14 >> 2;
        v29 = v8;
        v30 = v9;
        while (1)
        {
          v31 = *v16;
          if (*v16 > *v30 && v31 < *v29)
          {
            break;
          }

          if (v31 < *v30 || v31 > *v29)
          {
            goto LABEL_40;
          }

          v16 += 4;
          v30 += 4;
          ++v29;
          v18 = 1;
          if (!--v28)
          {
            goto LABEL_34;
          }
        }

LABEL_33:
        v18 = 1;
      }

LABEL_34:
      v9 += v14;
      v8 = (v8 + v14);
LABEL_35:
      if (++v7 >= v5 || !v18)
      {
        goto LABEL_44;
      }
    }

    if (v17 != 2 || v14 < 8)
    {
      goto LABEL_34;
    }

    v19 = v14 >> 3;
    v20 = v8;
    v21 = v9;
    while (1)
    {
      v22 = *v16;
      if (*v16 > *v21 && v22 < *v20)
      {
        goto LABEL_33;
      }

      if (v22 < *v21 || v22 > *v20)
      {
        goto LABEL_40;
      }

      v16 += 8;
      v21 += 8;
      ++v20;
      v18 = 1;
      if (!--v19)
      {
        goto LABEL_34;
      }
    }
  }

  v18 = 1;
LABEL_44:
  if (a1 >= 0)
  {
    return v18;
  }

  else
  {
    return !v18;
  }
}

uint64_t sub_100004490(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = &a3[*(a1 + 40)];
  v17 = (a3 + 4);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a2 + v6);
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = sub_100004610(*(a2 + v8));
    }

    else
    {
      v7 = -1;
    }
  }

  if (*(a1 + 4) < 1)
  {
    goto LABEL_16;
  }

  v9 = 0;
  do
  {
    sub_100004640(*(a1 + 8 * v9 + 1576), *(a1 + v9 + 56), *(a1 + 8 * v9 + 296), a2, &v17, &v16);
    ++v9;
    v10 = *(a1 + 4);
  }

  while (v9 < v10);
  if (v7 == 2 && v10 >= 1)
  {
    if (*(a1 + 8) >= 1)
    {
      v11 = a1 + 8 * v10;
      v12 = (a1 + v10 + 56);
      do
      {
        v13 = *v12++;
        sub_100004640(*(v11 + 1576), v13, *(v11 + 296), a2, &v17, &v16);
        v11 += 8;
        LODWORD(v10) = v10 + 1;
      }

      while (*(a1 + 8) + *(a1 + 4) > v10);
    }
  }

  else
  {
LABEL_16:
    if (v7 == 1 && *(a1 + 16) >= 1)
    {
      v14 = *(a1 + 12);
      do
      {
        sub_100004640(*(a1 + 8 * v14 + 1576), *(a1 + v14 + 56), *(a1 + 8 * v14 + 296), a2, &v17, &v16);
        ++v14;
      }

      while (v14 < *(a1 + 16) + *(a1 + 12));
    }
  }

  result = v16 - a3;
  *a3 = v16 - a3;
  return result;
}

uint64_t sub_100004610(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 14 > 2)
  {
    return 0;
  }

  else
  {
    return dword_10002A4C0[v1 >> 12];
  }
}

void sub_100004640(size_t __n, int a2, uint64_t a3, uint64_t a4, unsigned int **a5, void **a6)
{
  if (a3)
  {
    if (a2)
    {
      v9 = a4 + a3;
      v10 = *a6 - *a5;
      v11 = *(a4 + a3 + 4);
      memcpy(*a6, (a4 + a3 + *(a4 + a3)), v11);
      v12 = *a5;
      *v12 = v10;
      v12[1] = v11;
      *a6 = *a6 + ((*(v9 + 4) + 3) & 0xFFFFFFFC);
    }

    else
    {
      memcpy(*a5, (a4 + a3), __n);
    }
  }

  else
  {
    bzero(*a5, __n);
  }

  *a5 = (*a5 + __n);
}

uint64_t sub_1000046F4(_DWORD *a1, _DWORD *a2, char *a3)
{
  v4 = a2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  bzero(a3, 0x8A8uLL);
  v6 = a3 + 56;
  v7 = a3 + 136;
  v8 = a3 + 216;
  v9 = a3 + 296;
  v10 = a3 + 936;
  v11 = a3 + 1576;
  v28[1] = 0;
  v28[2] = 0;
  v28[0] = 0x800000005;
  *(a3 + 3) = sub_100004900(v5, v28);
  v27[1] = 0;
  v27[2] = 0;
  v27[0] = 0x2000000000005;
  v12 = sub_100004900(v5, v27);
  result = 0;
  v14 = 0;
  v15 = 4;
  *(a3 + 4) = v12;
  v16 = off_100034EE8;
  *(a3 + 40) = vdupq_n_s64(4uLL);
  v17 = &off_10003AE98;
  v18 = 4;
  do
  {
    v19 = v17 != &off_10003AB70;
    if (v17 == &off_10003AB70)
    {
      v20 = a3 + 4;
      v14 = v18;
    }

    else
    {
      if (v17 != &off_10003AC10)
      {
        v19 = 0;
        goto LABEL_11;
      }

      v20 = a3 + 12;
      v18 = v14;
    }

    *v20 = result;
LABEL_11:
    ++v4;
    ++v5;
    v21 = *(v17 + 2);
    if (v21)
    {
      v22 = v17 + 3;
      do
      {
        v23 = *v5 & v21;
        if ((*v4 & v21) != 0)
        {
          v24 = *(v22 - 1) != *v22;
          if (v23)
          {
            v25 = v18;
          }

          else
          {
            v25 = 0;
          }

          *v9 = v25;
          v9 += 8;
          *v10 = *(a3 + 5);
          v10 += 8;
          *v11 = *(v22 - 1);
          v11 += 8;
          *v6++ = v24;
          *v7++ = *(v22 + 3);
          *v8++ = *(v22 + 2);
          *(a3 + 5) += *(v22 - 1);
          if (v17 == &off_10003AB70)
          {
            ++*(a3 + 2);
          }

          result = (result + 1);
          if (v19)
          {
            ++*(a3 + 4);
          }
        }

        if (v23)
        {
          v18 += *(v22 - 1);
        }

        v21 = *(v22 + 6);
        v22 += 5;
      }

      while (v21);
      v15 = *(a3 + 6);
    }

    if (v18 > v15)
    {
      v15 = v18;
    }

    *(a3 + 6) = v15;
    v26 = v16[1];
    ++v16;
    v17 = v26;
  }

  while (v26);
  *a3 = result;
  return result;
}

uint64_t sub_100004900(_DWORD *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = off_100034EE8;
  v4 = &off_10003AE98;
  v5 = 4;
  do
  {
    ++a2;
    ++a1;
    if (v4 == &off_10003AB70)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    if (v4 == &off_10003AC10)
    {
      v5 = v2;
    }

    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 6;
      do
      {
        if ((*a1 & v7) != 0)
        {
          if (v7 == *a2)
          {
            return v5;
          }

          v5 += *(v8 - 4);
        }

        v9 = *v8;
        v8 += 10;
        v7 = v9;
      }

      while (v9);
    }

    v10 = v3[1];
    ++v3;
    v4 = v10;
    v2 = v6;
  }

  while (v10);
  return 0;
}

char *sub_10000498C(char *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  if (a2 + 8 > v3)
  {
    return 0;
  }

  v5 = *&a1[a2 + 4];
  result = &a1[a2 + *&a1[a2]];
  if (&result[v5] > &a1[v3])
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

unint64_t sub_1000049D4(_DWORD *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = off_100034EE8;
  v4 = &off_10003AE98;
  v5 = 4;
  do
  {
    ++a1;
    if (v4 == &off_10003AB70)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    if (v4 == &off_10003AC10)
    {
      v1 = v5;
      v5 = v2;
    }

    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 3;
      do
      {
        if ((*a1 & v7) != 0)
        {
          v5 += *v8;
        }

        v7 = *(v8 + 6);
        v8 += 5;
      }

      while (v7);
    }

    v9 = v3[1];
    ++v3;
    v4 = v9;
    v2 = v6;
  }

  while (v9);
  if (v5 <= v1)
  {
    return v1;
  }

  else
  {
    return v5;
  }
}

_WORD *sub_100004A5C(_WORD *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = (a2 + 4);
    v4 = result + 2;
    do
    {
      v5 = *v3++;
      *v4++ |= v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100004A88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (*(result + a3 + 56))
  {
    sub_1000238C8();
  }

  if (!*(result + a3 + 216))
  {
    sub_100023920();
  }

  v4 = result + 8 * a3;
  v5 = *(v4 + 296);
  v6 = *(v4 + 1576);
  if (v6 == 8)
  {
    *(a2 + v5) = a4;
  }

  else
  {
    if (v6 != 4)
    {
      sub_1000238F4();
    }

    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0x7FFFFFFF;
    }

    else
    {
      v7 = a4;
    }

    *(a2 + v5) = v7;
  }

  return result;
}

void *sub_100004AFC(uint64_t a1, uint64_t a2, int a3, void *__src)
{
  if (*(a1 + a3 + 56))
  {
    sub_10002394C();
  }

  if (!*(a1 + a3 + 216))
  {
    sub_100023978();
  }

  v4 = a1 + 8 * a3;
  v5 = *(v4 + 1576);
  v6 = (a2 + *(v4 + 296));

  return memcpy(v6, __src, v5);
}

void *sub_100004B58(uint64_t a1, uint64_t a2, int a3, void *__src, size_t __n, char **a6)
{
  if (!*(a1 + a3 + 56))
  {
    sub_1000239D0();
  }

  v7 = a3;
  if (!*(a1 + a3 + 216))
  {
    sub_1000239A4();
  }

  v11 = *a6;
  if (!*a6)
  {
    v11 = (a2 + *(a1 + 48));
    *a6 = v11;
  }

  result = memcpy(v11, __src, __n);
  v13 = (a2 + *(a1 + 8 * v7 + 296));
  v14 = *a6;
  *v13 = *a6 - v13;
  v13[1] = __n;
  *a6 = &v14[(__n + 3) & 0xFFFFFFFFFFFFFFFCLL];
  return result;
}

void *sub_100004C00(uint64_t a1, uint64_t a2, int a3, char *__s, char **a5)
{
  v10 = strlen(__s) + 1;

  return sub_100004B58(a1, a2, a3, __s, v10, a5);
}

_DWORD *sub_100004C70(_DWORD *result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = result;
  v22 = 0;
  v23 = &a9;
  if (*a2 <= 0)
  {
LABEL_22:
    v20 = v10 + *(a2 + 6);
    goto LABEL_23;
  }

  v11 = 0;
  do
  {
    v12 = *(a2 + v11 + 216);
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v14 = v23++;
        v15 = *v14;
        v16 = strlen(*v14);
        result = sub_100004B58(a2, v10, v11, v15, v16 + 1, &v22);
        goto LABEL_17;
      }

      if (v12 == 4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 == 1)
      {
        if (*&a2[2 * v11 + 394] == 4)
        {
          v17 = v23++;
          LODWORD(v21) = *v17;
          goto LABEL_14;
        }

LABEL_15:
        v19 = v23++;
        v18 = *v19;
        goto LABEL_16;
      }

      if (v12 == 2)
      {
        if (*&a2[2 * v11 + 394] == 8)
        {
          v13 = v23++;
          v21 = *v13;
LABEL_14:
          v18 = &v21;
LABEL_16:
          result = sub_100004AFC(a2, v10, v11, v18);
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (!*(a2 + v11 + 216))
      {
        sub_1000239FC();
      }
    }

LABEL_17:
    ++v11;
  }

  while (v11 < *a2);
  LODWORD(v20) = v22;
  if (!v22)
  {
    goto LABEL_22;
  }

LABEL_23:
  *v10 = v20 - v10;
  return result;
}

uint64_t sub_100004DD0(uint64_t result, _DWORD *a2, char **a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = &unk_10003CB70;
  }

  v4 = *v3;
  if (!*v3)
  {
    v4 = a2 + *(result + 48);
    *v3 = v4;
  }

  *a2 = v4 - a2;
  return result;
}

void *sub_100004E00(void *result, uint64_t a2, _OWORD *a3)
{
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v5 = result + 37;
  v6 = result[3];
  if (v6)
  {
    v7 = *(a2 + v6);
  }

  else
  {
    v8 = result[4];
    if (v8)
    {
      result = sub_100004610(*(a2 + v8));
      v7 = result;
    }

    else
    {
      v7 = -1;
    }
  }

  v9 = 0;
  v10 = &unk_10002A390;
  do
  {
    v11 = *v5;
    v12 = v5[160];
    if (*v5)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = *(v10 - 1);
      if (v12 == *v10)
      {
        result = memcpy(a3 + v14, (a2 + v11), v12);
      }

      else
      {
        if (((0x504000uLL >> v9) & 1) == 0)
        {
          sub_100023A28();
        }

        v15 = *(a2 + v11);
        if (v9 == 20)
        {
          *(a3 + v14) = v15 + 2;
          goto LABEL_19;
        }

        *(a3 + v14) = v15;
      }
    }

    if (v9 == 18 && v7 == -1)
    {
      return result;
    }

LABEL_19:
    if (v7 == 2 && v9 == 20)
    {
      break;
    }

    v10 += 2;
    ++v5;
    v13 = v9 == 28;
    v9 += 2;
  }

  while (!v13);
  return result;
}

uint64_t sub_100004F24(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9696) < 512)
  {
    bzero(v8, 0x440uLL);
    v5 = sub_1000018CC(*(a1 + 9680), 0x440uLL, v8);
    *(v5 + 6) = a2;
    strcpy(v5 + 64, (a1 + 8616));
    *(v5 + 1) = v5;
    v6 = *(a1 + 9696);
    *(*(a1 + 9688) + 8 * v6) = v5;
    *(a1 + 9696) = v6 + 1;
    if (*(a1 + 1080))
    {
      v7 = *(a1 + 3352);
      *(a1 + 9736) = v7;
      *(v5 + 7) = v7;
    }

    return 0;
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

void *sub_100005008(uint64_t a1, unsigned int *a2, size_t a3, const void *a4, int a5)
{
  v9 = *(a1 + 9696);
  if (v9)
  {
    v10 = *(*(a1 + 9688) + 8 * v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  result = sub_1000018CC(*(a1 + 9680), *a2, a2);
  v12 = result;
  if (*(a1 + 9712) && !*(a1 + 1080))
  {
    result = sub_1000018CC(*(a1 + 9680), a3, a4);
  }

  v10[1] = result;
  if (a5)
  {
    v13 = v10[3];
    v14 = *(a1 + 9656);
    if (v13 >= v14)
    {
      v15 = 2 * v14;
      if (!v14)
      {
        v15 = 8;
      }

      *(a1 + 9656) = v15;
      result = malloc_type_realloc(*(a1 + 9648), 8 * v15, 0x80040B8603338uLL);
      *(a1 + 9648) = result;
      v13 = v10[3];
    }

    else
    {
      result = *(a1 + 9648);
    }

    result[v13] = v12;
    v10[3] = v13 + 1;
  }

  else if (!*v10)
  {
    *v10 = v12;
  }

  return result;
}

uint64_t sub_100005138(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = *(a1 + 1080);
  if (v6)
  {
    v7 = *a3;
    if (v6 + 8 > v7 || (v8 = &a3[v6], v9 = *(v8 + 1), v10 = &v8[*v8], &v10[v9] > &a3[v7]))
    {
      a2 = 2;
      v11 = -1;
LABEL_5:
      *(a1 + 3376) = a1 + *(a1 + 3352) - v11 + 8616;
      *(a1 + 3368) = v11;
      goto LABEL_6;
    }

    v11 = v9 - 1;
    v13 = *(a1 + 9736);
    if (v13 == 1)
    {
      if (*(a1 + 8616) == 47)
      {
        strlcpy((a1 + 8617), v10, 0x3FFuLL);
        goto LABEL_12;
      }
    }

    else if (!v13)
    {
      __strlcpy_chk();
LABEL_12:
      --v9;
LABEL_15:
      *(a1 + 3352) = *(a1 + 9736) + v9;
      goto LABEL_5;
    }

    if ((v13 + v9) > 0x3FF)
    {
      a2 = 63;
      goto LABEL_5;
    }

    *(a1 + 8616 + v13) = 47;
    strlcpy((a1 + 8616 + *(a1 + 9736) + 1), v10, 1023 - *(a1 + 9736));
    goto LABEL_15;
  }

LABEL_6:
  *(a1 + 3384) = a2;
  *(a1 + 3392) = a3;
  *(a1 + 3344) = *(a1 + 9696) - 1;
  return a2;
}

_DWORD *sub_100005284(_DWORD *result)
{
  if (*(result + 1208))
  {
    v1 = result;
    result = *(result + 1209);
    if (!result || (result = (*(result + 2))(result, v1), result))
    {
      v2 = v1[2424];
      if (v2)
      {
        v3 = *(*(v1 + 1211) + 8 * v2 - 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = v3[5];
      v5 = v3[3];
      if (v4)
      {
        if (v4 < v5)
        {
          if (!*v3)
          {
            sub_100023A80();
          }

          if (*v3 != *(v3[4] + 8 * v4 - 8))
          {
            sub_100023A54();
          }
        }
      }

      else if (v5)
      {
        v6 = *(v1 + 1206);
        __compar[0] = _NSConcreteStackBlock;
        __compar[1] = 0x40000000;
        __compar[2] = sub_1000054A0;
        __compar[3] = &unk_100034F58;
        __compar[4] = v1;
        qsort_b(v6, v5, 8uLL, __compar);
        result = sub_1000018CC(*(v1 + 1210), 8 * v3[3], *(v1 + 1206));
        v3[4] = result;
        if (*v3)
        {
          sub_100023AAC();
        }

        if (v3[5])
        {
          sub_100023AD8();
        }

        v3[5] = 1;
        *v3 = *result;
      }

      else if (*v3)
      {
        sub_100023B04();
      }

      v3[1] = v3[4];
    }
  }

  return result;
}

uint64_t sub_1000053D8(uint64_t result, uint64_t a2)
{
  if (a2 != -1)
  {
    v2 = result;
    if (!*(result + 9708))
    {
      v3 = a2;
      v4 = *(result + 9696);
      if (v4 && *(*(result + 9688) + 8 * v4 - 8))
      {
        pthread_fchdir_np();
      }

      if ((v3 & 0x80000000) == 0)
      {
        atomic_fetch_add_explicit(&dword_10003CB6C, 0xFFFFFFFF, memory_order_relaxed);
        if (v3 <= 0x7FF)
        {
          v5 = *(v2 + 9752);
          *(v2 + 9752) = v5 - 1;
          v6 = *(v2 + 9756 + 4 * (v3 & 0x7FF));
          if (v6 < 0 || v5 <= 0)
          {
            sub_100023B30();
          }

          if (v6)
          {
            *(v2 + 9756 + 4 * (v3 & 0x7FF)) = -v6;
          }
        }
      }

      return close(v3);
    }
  }

  return result;
}

ssize_t sub_1000054BC(ssize_t result)
{
  v1 = (result + 16);
  *(result + 4120) = result + 16;
  *(result + 4112) = result + 16;
  if (!*(result + 4128))
  {
    v2 = result;
    result = pread(*result, v1, 0x1000uLL, *(result + 8));
    if (result == -1)
    {
      v3 = __stderrp;
      v4 = __error();
      v5 = *v4;
      *(v2 + 4128) = *v4;
      return fprintf(v3, "\npread error(%d) offset: 0x%llx \n", v5, *(v2 + 8));
    }

    else
    {
      *(v2 + 8) += result;
      *(v2 + 4112) = v1;
      *(v2 + 4120) = &v1[result];
      if (!result)
      {
        *(v2 + 4128) = -1;
      }
    }
  }

  return result;
}

ssize_t sub_100005570(ssize_t result, int a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 4120) = result + 16;
  *(result + 4112) = result + 16;
  *(result + 4128) = 0;
  return sub_1000054BC(result);
}

uint64_t sub_10000558C(ssize_t a1)
{
  v2 = *(a1 + 4112);
  if ((*(a1 + 4120) - v2) < 11)
  {
    v7 = 0;
    memset(v13, 0, sizeof(v13));
    while (1)
    {
      if (v2 >= *(a1 + 4120))
      {
        sub_1000054BC(a1);
        v2 = *(a1 + 4112);
      }

      v8 = v2 + 1;
      *(a1 + 4112) = v2 + 1;
      v9 = *v2;
      *(v13 + v7) = v9;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      ++v7;
      v2 = v8;
      if (v7 == 11)
      {
        return 0;
      }
    }

    result = 0;
    if (v7 != 10)
    {
      v10 = *(a1 + 4128);
      if (!v10)
      {
        result = 0;
        v11 = v13;
        do
        {
          v12 = *v11++;
          result |= (v12 & 0x7F) << v10;
          v10 += 7;
        }

        while (v12 < 0);
      }
    }
  }

  else
  {
    v3 = 0;
    result = 0;
    v5 = v2 + 1;
    do
    {
      v6 = *(v5 - 1);
      *(a1 + 4112) = v5;
      result |= (v6 & 0x7F) << v3;
      v3 += 7;
      ++v5;
    }

    while (v6 < 0);
  }

  return result;
}

uint64_t sub_1000056B4(ssize_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 4112);
  if ((*(a1 + 4120) - v9) >= 11)
  {
    result = *v9;
    if (*v9 < 0)
    {
      v15 = v9[1];
      if (v9[1] < 0)
      {
        v16 = v9[2];
        if (v9[2] < 0)
        {
          v18 = v9[3];
          if (v9[3] < 0)
          {
            v19 = v9[4];
            if (v19 < 0)
            {
              sub_100023B5C(result, a2, a3, a4, a5, a6, a7, a8);
            }

            v20 = ((v18 & 0x7F) << 21) | (v19 << 28) | ((v16 & 0x7F) << 14) | ((v15 & 0x7F) << 7) | (result & 0x7F);
            v11 = 5;
            result = v20;
            goto LABEL_22;
          }

          v17 = ((v16 & 0x7F) << 14) | (v18 << 21) | ((v15 & 0x7F) << 7) | (result & 0x7F);
          v11 = 4;
        }

        else
        {
          v17 = ((v15 & 0x7F) << 7) | (v16 << 14) | (result & 0x7F);
          v11 = 3;
        }

        result = v17;
      }

      else
      {
        result = result & 0x7F | (v15 << 7);
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }

LABEL_22:
    *(a1 + 4112) = &v9[v11];
    return result;
  }

  v12 = 0;
  memset(v21, 0, sizeof(v21));
  while (1)
  {
    if (v9 >= *(a1 + 4120))
    {
      sub_1000054BC(a1);
      v9 = *(a1 + 4112);
    }

    v13 = (v9 + 1);
    *(a1 + 4112) = v9 + 1;
    v14 = *v9;
    *(v21 + v12) = v14;
    if ((v14 & 0x80000000) == 0)
    {
      break;
    }

    ++v12;
    v9 = v13;
    if (v12 == 11)
    {
      return 0;
    }
  }

  result = 0;
  if (v12 != 10 && !*(a1 + 4128))
  {
    result = LOBYTE(v21[0]);
    if (SLOBYTE(v21[0]) < 0)
    {
      if (SBYTE1(v21[0]) < 0)
      {
        if (SBYTE2(v21[0]) < 0)
        {
          if (SBYTE3(v21[0]) < 0)
          {
            if (SBYTE4(v21[0]) < 0)
            {
              sub_100023B5C(LOBYTE(v21[0]), a2, a3, a4, a5, a6, a7, a8);
            }

            return ((BYTE3(v21[0]) & 0x7F) << 21) | (SBYTE4(v21[0]) << 28) | ((BYTE2(v21[0]) & 0x7F) << 14) | ((BYTE1(v21[0]) & 0x7F) << 7) | v21[0] & 0x7F;
          }

          else
          {
            return ((BYTE2(v21[0]) & 0x7F) << 14) | (BYTE3(v21[0]) << 21) | ((BYTE1(v21[0]) & 0x7F) << 7) | v21[0] & 0x7F;
          }
        }

        else
        {
          return ((BYTE1(v21[0]) & 0x7F) << 7) | (BYTE2(v21[0]) << 14) | v21[0] & 0x7F;
        }
      }

      else
      {
        return v21[0] & 0x7F | (BYTE1(v21[0]) << 7);
      }
    }
  }

  return result;
}

unint64_t sub_1000058C4(ssize_t a1)
{
  v2 = *(a1 + 4120);
  v3 = *(a1 + 4112);
  if ((v2 - v3) < 11)
  {
    if (v3 >= v2)
    {
      sub_1000054BC(a1);
      v3 = *(a1 + 4112);
    }

    memset(v18, 0, sizeof(v18));
    v6 = v3 + 1;
    *(a1 + 4112) = v3 + 1;
    v7 = *v3;
    v17 = v7;
    if (v7 < 0)
    {
      if (v7 >= 0xC0u)
      {
        v9 = 4;
        v10 = 5;
        v11 = 6;
        v12 = 7;
        v13 = 8;
        if (v7 == 255)
        {
          v13 = 9;
        }

        if (v7 >= 0xFEu)
        {
          v12 = v13;
        }

        if (v7 >= 0xFCu)
        {
          v11 = v12;
        }

        if (v7 >= 0xF8u)
        {
          v10 = v11;
        }

        if (v7 >= 0xF0u)
        {
          v9 = v10;
        }

        if (v7 >= 0xE0u)
        {
          v8 = v9;
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 2;
      }

      v14 = v18;
      v15 = v8 - 1;
      do
      {
        if (v6 >= *(a1 + 4120))
        {
          sub_1000054BC(a1);
          v6 = *(a1 + 4112);
        }

        *(a1 + 4112) = v6 + 1;
        *v14++ = *v6++;
        --v15;
      }

      while (v15);
    }

    v16 = &v17;
    return sub_100005A5C(&v16);
  }

  else
  {
    v4 = (a1 + 4112);

    return sub_100005A5C(v4);
  }
}

unint64_t sub_100005A5C(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (**a1 < 0)
  {
    v4 = **a1;
    if (v4 > 0xBF)
    {
      if (v4 > 0xDF)
      {
        if (v4 > 0xEF)
        {
          if (v4 > 0xF7)
          {
            if (v4 > 0xFB)
            {
              if (v4 > 0xFD)
              {
                if (v4 == 255)
                {
                  v2 = *(v1 + 1);
                  v3 = 9;
                }

                else
                {
                  v2 = (v1[1] << 48) | (v1[2] << 40) | (v1[3] << 32) | (v1[4] << 24) | (v1[5] << 16) | (v1[6] << 8) | v1[7];
                  v3 = 8;
                }
              }

              else
              {
                v2 = ((v2 & 1) << 48) | (v1[1] << 40) | (v1[2] << 32) | (v1[3] << 24) | (v1[4] << 16) | (v1[5] << 8) | v1[6];
                v3 = 7;
              }
            }

            else
            {
              v2 = ((v2 & 3) << 40) | (v1[1] << 32) | (v1[2] << 24) | (v1[3] << 16) | (v1[4] << 8) | v1[5];
              v3 = 6;
            }
          }

          else
          {
            v2 = ((v2 & 7) << 32) | (v1[1] << 24) | (v1[2] << 16) | (v1[3] << 8) | v1[4];
            v3 = 5;
          }
        }

        else
        {
          v2 = ((v2 & 0xF) << 24) | (v1[1] << 16) | (v1[2] << 8) | v1[3];
          v3 = 4;
        }
      }

      else
      {
        v2 = ((v2 & 0x1F) << 16) | (v1[1] << 8) | v1[2];
        v3 = 3;
      }
    }

    else
    {
      v3 = 2;
      v2 = v1[1] | ((v2 & 0x3F) << 8);
    }
  }

  else
  {
    v3 = 1;
  }

  *a1 = &v1[v3];
  return v2;
}

uint64_t sub_100005BF8(ssize_t a1)
{
  v2 = *(a1 + 4120);
  v3 = *(a1 + 4112);
  if ((v2 - v3) < 11)
  {
    if (v3 >= v2)
    {
      sub_1000054BC(a1);
      v3 = *(a1 + 4112);
    }

    memset(v15, 0, sizeof(v15));
    v6 = v3 + 1;
    *(a1 + 4112) = v3 + 1;
    v7 = *v3;
    v14 = v7;
    if (v7 < 0)
    {
      v8 = 3;
      v9 = 4;
      if (v7 >= 0xF0u)
      {
        v9 = 5;
      }

      if (v7 >= 0xE0u)
      {
        v8 = v9;
      }

      if (v7 >= 0xC0u)
      {
        v10 = v8;
      }

      else
      {
        v10 = 2;
      }

      v11 = v15;
      v12 = v10 - 1;
      do
      {
        if (v6 >= *(a1 + 4120))
        {
          sub_1000054BC(a1);
          v6 = *(a1 + 4112);
        }

        *(a1 + 4112) = v6 + 1;
        *v11++ = *v6++;
        --v12;
      }

      while (v12);
    }

    v13 = &v14;
    return sub_100005D5C(&v13);
  }

  else
  {
    v4 = (a1 + 4112);

    return sub_100005D5C(v4);
  }
}

uint64_t sub_100005D5C(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (**a1 < 0)
  {
    if (v2 > 0xBF)
    {
      if (v2 > 0xDF)
      {
        if (v2 > 0xEF)
        {
          v2 = *(v1 + 1);
          v3 = 5;
        }

        else
        {
          v2 = ((v2 & 0xF) << 24) | (v1[1] << 16) | (v1[2] << 8) | v1[3];
          v3 = 4;
        }
      }

      else
      {
        v2 = ((v2 & 0x1F) << 16) | (v1[1] << 8) | v1[2];
        v3 = 3;
      }
    }

    else
    {
      v3 = 2;
      v2 = v1[1] | ((v2 & 0x3F) << 8);
    }
  }

  else
  {
    v3 = 1;
  }

  *a1 = &v1[v3];
  return v2;
}

size_t sub_100005DF8(ssize_t a1, char *__dst, size_t __nbyte)
{
  v3 = *(a1 + 4128);
  if (!v3)
  {
    v5 = __nbyte;
    v8 = *(a1 + 4120);
    v9 = *(a1 + 4112);
    v10 = v8 - v9;
    if (v8 != v9)
    {
      if (__nbyte <= v10)
      {
        memcpy(__dst, v9, __nbyte);
        *(a1 + 4112) += v5;
        return v5;
      }

      memcpy(__dst, v9, v8 - v9);
      *(a1 + 4112) += v10;
      v5 -= v10;
    }

    if (pread(*a1, &__dst[v10], v5, *(a1 + 8)) == v5)
    {
      v3 = v5 + v10;
      *(a1 + 8) += v3;
      *(a1 + 4120) = a1 + 16;
      *(a1 + 4112) = a1 + 16;
      *(a1 + 4128) = 0;
      sub_1000054BC(a1);
    }

    else
    {
      v11 = __stderrp;
      v12 = __error();
      v13 = *v12;
      *(a1 + 4128) = *v12;
      fprintf(v11, "\npread error(%d) offset: 0x%llx\n", v13, *(a1 + 8));
      return -1;
    }
  }

  return v3;
}

void sub_100005F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

void sub_100005FD8()
{
  MEMORY[0xBAD] = -559038737;

  abort();
}

_DWORD *sub_100005FF8(int a1)
{
  result = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040023F4036uLL);
  *result = ((a1 + 4127) & 0xFFFFF000) - 32;
  return result;
}

void sub_100006048(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      do
      {
        v3 = v2[1];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(*(a1 + 16));

    free(a1);
  }
}

uint64_t sub_1000060BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2 && (v3 = *(v2 + 24)) != 0)
  {
    if (a2)
    {
      *a2 = v3;
    }

    return *(a1 + 40);
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_1000060EC(void *a1, unint64_t a2)
{
  v3 = a1[3];
  if (!v3)
  {
    sub_100023BF0();
  }

  v5 = v3[3];
  while (1)
  {
    if (a2 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = a2;
    }

    v3[3] = v5 - v6;
    a1[1] -= v6;
    v7 = a1[5];
    a1[5] = v7 + v6;
    if (!v3[3] && v3 != a1[4])
    {
      v8 = v3[1];
      a1[3] = v8;
      a1[5] = 0;
      if (v8)
      {
        *v8 = 0;
        a1[5] = a1[3] + 32;
      }

      if (a1[2])
      {
        free(v3);
        --dword_10003CC80;
      }

      else
      {
        a1[2] = v3;
      }
    }

    v3 = a1[3];
    a2 -= v6;
    if (!a2)
    {
      break;
    }

    v5 = v3[3];
    if (!v5)
    {
      v9 = v7 + v6;
      v11 = a1[1];
      if (!v11)
      {
        goto LABEL_23;
      }

LABEL_21:
      v10 = 0;
LABEL_22:
      if (v10 <= v11)
      {
LABEL_23:
        if (a2)
        {
          sub_100023B98();
        }

        return v9;
      }

LABEL_26:
      sub_100023BC4();
    }
  }

  v9 = v7 + v6;
  if (v3)
  {
    v10 = v3[3];
    v11 = a1[1];
    if (v10)
    {
      goto LABEL_22;
    }

    if (v11)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (a1[1])
  {
    goto LABEL_26;
  }

  return v9;
}

BOOL sub_100006218(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  while (v2 + 32 > a2 || v2 + 32 + *(v2 + 16) < a2)
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 8) != 0;
}

unint64_t sub_10000625C(uint64_t a1, unint64_t a2, unint64_t *a3, _BYTE *a4)
{
  v4 = *(a1 + 24);
  if (!a2 || !v4)
  {
    if (!v4)
    {
LABEL_19:
      result = 0;
      v8 = 0;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  while (1)
  {
    v5 = v4 + 32;
    if (v4 + 32 <= a2 && v5 + *(v4 + 16) >= a2)
    {
      break;
    }

    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  if (v4 == *(a1 + 24))
  {
LABEL_8:
    v5 = *(a1 + 40);
  }

  if (a2)
  {
    result = a2;
  }

  else
  {
    result = v5;
  }

  v7 = *(v4 + 24);
  if (v5 + v7 > result)
  {
    v8 = v7 + v5 - result;
    goto LABEL_20;
  }

  v9 = *(v4 + 8);
  if (!v9)
  {
    goto LABEL_19;
  }

  v8 = *(v9 + 24);
  v10 = v9 + 32;
  if (v8)
  {
    result = v10;
  }

  else
  {
    result = 0;
  }

LABEL_20:
  if (a3)
  {
    *a3 = v8;
  }

  if (a4)
  {
    if (v4)
    {
      LOBYTE(v4) = *(v4 + 8) != 0;
    }

    *a4 = v4;
  }

  return result;
}

BOOL sub_100006314(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3)
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && !*(v3 + 24))
  {
    return 1;
  }

  if (v2)
  {
    return (v2 - *(a1 + 48) + *(v2 + 16) + 32) >= a2;
  }

  return 0;
}

void *sub_100006360(unsigned int *a1, unint64_t a2)
{
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  if (v4)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && !*(v4 + 24))
  {
    result = (v4 + 32);
    goto LABEL_12;
  }

  if (!v3)
  {
    v8 = sub_100006408(a1, a2);
    v8[3] = 0;
    *v8 = 0;
    v8[1] = 0;
    *(a1 + 3) = v8;
    *(a1 + 4) = v8;
    result = v8 + 4;
LABEL_12:
    *(a1 + 5) = result;
    goto LABEL_13;
  }

  result = *(a1 + 6);
  if ((v3 - result + *(v3 + 16) + 32) >= a2)
  {
    return result;
  }

  v7 = sub_100006408(a1, a2);
  *(*(a1 + 4) + 8) = v7;
  v7[3] = 0;
  *v7 = *(a1 + 4);
  v7[1] = 0;
  *(a1 + 4) = v7;
  result = v7 + 4;
LABEL_13:
  *(a1 + 6) = result;
  return result;
}

_DWORD *sub_100006408(unsigned int *a1, unint64_t a2)
{
  result = *(a1 + 2);
  if (result && result[4] >= a2)
  {
    *(a1 + 2) = 0;
  }

  else
  {
    v4 = *a1;
    if (v4 <= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4;
    }

    result = malloc_type_malloc(v5 + 32, 0x1020040CD42B41CuLL);
    result[4] = v5;
    ++dword_10003CC80;
  }

  return result;
}

void *sub_100006480(void *result, uint64_t a2)
{
  result[6] += a2;
  *(result[4] + 24) += a2;
  result[1] += a2;
  return result;
}

void *sub_1000064AC(unsigned int *a1, unint64_t a2, const void *a3)
{
  v6 = sub_100006360(a1, a2);
  v7 = v6;
  if (a3)
  {
    memcpy(v6, a3, a2);
  }

  *(a1 + 6) += a2;
  *(*(a1 + 4) + 24) += a2;
  *(a1 + 1) += a2;
  return v7;
}

double sub_100006524(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v4 = v2[1];
      if (a1[2])
      {
        free(v2);
        --dword_10003CC80;
      }

      else
      {
        a1[2] = v2;
      }

      v2 = v4;
    }

    while (v4);
  }

  a1[1] = 0;
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

void *sub_100006594(void *a1, unint64_t a2)
{
  result = a1[3];
  if ((result + 4) <= a2)
  {
    if (result + *(result + 4) + 32 >= a2)
    {
      v9 = a1[5];
      v8 = a1 + 5;
      result[3] -= a2 - v9;
      *(v8 - 4) -= a2 - v9;
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (result)
  {
    do
    {
LABEL_5:
      if ((result + 4) <= a2 && result + *(result + 4) + 32 >= a2)
      {
        break;
      }

      v5 = result[1];
      v6 = a1[2];
      a1[1] -= result[3];
      if (v6)
      {
        free(result);
        --dword_10003CC80;
      }

      else
      {
        a1[2] = result;
      }

      result = v5;
    }

    while (v5);
  }

  *result = 0;
  a1[3] = result;
  v7 = a2 - result - 32;
  result[3] -= v7;
  a1[1] -= v7;
  v8 = a1 + 5;
LABEL_13:
  *v8 = a2;
  return result;
}

void *sub_100006694(void *a1, unint64_t a2)
{
  result = a1[4];
  if (result)
  {
    do
    {
      if ((result + 4) <= a2 && result + *(result + 4) + 32 >= a2)
      {
        break;
      }

      v5 = *result;
      v6 = a1[2];
      a1[1] -= result[3];
      if (v6)
      {
        free(result);
        --dword_10003CC80;
      }

      else
      {
        a1[2] = result;
      }

      result = v5;
    }

    while (v5);
  }

  result[1] = 0;
  a1[4] = result;
  a1[1] -= result[3];
  v7 = a2 - result - 32;
  result[3] = v7;
  if (result == a1[3])
  {
    v7 = a2 - a1[5];
    result[3] = v7;
  }

  a1[1] += v7;
  a1[6] = a2;
  return result;
}

_DWORD *sub_10000676C(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3)
  {
    result = *(a3 + 16);
    v9 = *(a3 + 24);
    if (a1)
    {
      do
      {
LABEL_3:
        v10 = *a1;
        v11 = a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v11 = 0;
        if (!a2)
        {
          break;
        }

        a1 = (a2 + 12 * (*a1 >> 1));
      }

      while (v10 > 1);
      goto LABEL_9;
    }
  }

  else
  {
    result = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
    v9 = 16;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_9:
  v12 = 0;
  while (1)
  {
    v13 = v11;
    if (v12 >= v9)
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_21;
    }

LABEL_12:
    v14 = v13[2];
    if (v12 && result[v12 - 1] <= v14)
    {
      sub_100023C1C();
    }

    v11 = 0;
    v15 = v12 + 1;
    result[v12++] = v14;
    if (a2)
    {
      v16 = *v13;
      v12 = v15;
      if (*v13 >= 2)
      {
        while (1)
        {
          v11 = (a2 + 12 * (v16 >> 1));
          v16 = *v11;
          if ((*v11 & 1) == 0)
          {
            break;
          }

          if (v16 < 2)
          {
            v11 = 0;
            break;
          }
        }

        v12 = v15;
      }
    }
  }

  v9 *= 2;
  result = reallocf(result, 4 * v9);
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_21:
  result[v12] = 0;
  if (a3)
  {
    *(a3 + 16) = result;
    *(a3 + 24) = v9;
  }

  *a4 = v12;
  return result;
}

void sub_1000068B0(char *a1, ...)
{
  va_start(va, a1);
  v1[0] = 0;
  va_copy(&v1[1], va);
  vasprintf(v1, a1, va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v3 = v1[0];
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v1[0]);
}

uint64_t sub_10000696C(uint64_t result, unint64_t *a2, unsigned int a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    v5 = result;
    v6 = 0;
    v7 = a3;
    do
    {
      if (v6)
      {
        v8 = *(v5 + 24);
        if (v8 <= v3)
        {
          sub_100023C60();
        }

        v10 = *(v5 + 8);
        v9 = *(v5 + 16);
        if (v9 + 10 > v10)
        {
          do
          {
            v10 *= 2;
          }

          while (v10 < v9 + 10);
          *(v5 + 8) = v10;
          v11 = malloc_type_realloc(*v5, v10, 0xF29073FuLL);
          *v5 = v11;
          v9 = *(v5 + 16);
          v8 = *(v5 + 24);
        }

        else
        {
          v11 = *v5;
        }

        result = sub_1000086A4(v11, v9, v8 - v3);
        *(v5 + 16) = result;
        *(v5 + 24) = v3;
      }

      else
      {
        v12 = *(v5 + 8);
        v13 = *(v5 + 16);
        if (v13 + 10 > v12)
        {
          do
          {
            v12 *= 2;
          }

          while (v12 < v13 + 10);
          *(v5 + 8) = v12;
          v14 = malloc_type_realloc(*v5, v12, 0xF29073FuLL);
          *v5 = v14;
          v13 = *(v5 + 16);
        }

        else
        {
          v14 = *v5;
        }

        v15 = sub_1000086A4(v14, v13, v3);
        *(v5 + 16) = v15;
        *(v5 + 24) = v3;
        v16 = *(v5 + 8);
        if (v15 + 10 > v16)
        {
          do
          {
            v16 *= 2;
          }

          while (v16 < v15 + 10);
          *(v5 + 8) = v16;
          v18 = malloc_type_realloc(*v5, v16, 0xF29073FuLL);
          *v5 = v18;
          v17 = *(v5 + 16);
        }

        else
        {
          v17 = v15;
          v18 = *v5;
        }

        v19 = sub_1000086A4(v18, v17, v3);
        *(v5 + 16) = v19;
        *(v5 + 24) = v3;
        v20 = *(v5 + 8);
        if (v19 + 10 > v20)
        {
          do
          {
            v20 *= 2;
          }

          while (v20 < v19 + 10);
          *(v5 + 8) = v20;
          v22 = malloc_type_realloc(*v5, v20, 0xF29073FuLL);
          *v5 = v22;
          v21 = *(v5 + 16);
        }

        else
        {
          v21 = v19;
          v22 = *v5;
        }

        result = sub_1000086A4(v22, v21, v7);
        *(v5 + 16) = result;
      }

      v23 = v4[1];
      ++v4;
      v3 = v23;
      v6 = 1;
    }

    while (v23);
    v24 = *(v5 + 8);
    if (result + 10 > v24)
    {
      do
      {
        v24 *= 2;
      }

      while (v24 < result + 10);
      *(v5 + 8) = v24;
      v25 = malloc_type_realloc(*v5, v24, 0xF29073FuLL);
      *v5 = v25;
      result = *(v5 + 16);
    }

    else
    {
      v25 = *v5;
    }

    v25[result] = 0;
    *(v5 + 16) = result + 1;
    *(v5 + 24) = 0;
  }

  return result;
}

uint64_t sub_100006B68(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int (*a7)(void, void), uint64_t a8)
{
  if (*a2 >= a3)
  {
    v14 = 0;
    v17 = *a2;
    goto LABEL_67;
  }

  v10 = a4;
  v13 = 0;
  v14 = 0;
  v15 = *a2;
  while (1)
  {
    v16 = v15 + 1;
    v14 |= (*(a1 + v15) & 0x7F) << v13;
    if ((*(a1 + v15) & 0x80) == 0 || v13 == 63)
    {
      break;
    }

    v13 += 7;
    ++v15;
    if (a3 == v16)
    {
      v17 = a3;
LABEL_67:
      sub_100008944(a1, a2, a3, a4, a5, a6, a7, a8, "PostingChunk.c", 90, "offset < bufferLength", "", *a2, v17, a3, v14, 923);
      goto LABEL_70;
    }
  }

  *a2 = v16;
  if (!v14)
  {
    return 0;
  }

  if (v16 >= a3)
  {
    v19 = 0;
    v20 = v15 + 1;
    goto LABEL_69;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v19 |= (*(a1 + v15 + 1) & 0x7F) << v18;
    if ((*(a1 + v15 + 1) & 0x80) == 0 || v18 == 63)
    {
      break;
    }

    v18 += 7;
    if (a3 - 1 == ++v15)
    {
      v20 = a3;
LABEL_69:
      sub_100008944(a1, a2, a3, a4, a5, a6, a7, a8, "PostingChunk.c", 90, "offset < bufferLength", "", v16, v20, a3, v19, 929);
      goto LABEL_70;
    }
  }

  v21 = v15 + 2;
  *a2 = v15 + 2;
  v22 = a3 - v15 - 2;
  if (v14 > v19)
  {
    v23 = a6;
    v24 = 1;
    (a7)(a8, v14, 1, 0, 0, a5, a6);
    if (v19)
    {
      while (1)
      {
        v25 = v14 - v19;
        if (v14 <= v19 || v25 >= v10)
        {
          goto LABEL_71;
        }

        v24 = (a7)(a8, (v14 - v19), 1, 0, 0, a5, v23);
        if (!v24)
        {
          return v24;
        }

        v26 = *a2;
        if (*a2 + 5 <= a3)
        {
          break;
        }

        LODWORD(v19) = sub_1000089A4(a1, a2, a3);
LABEL_31:
        LODWORD(v14) = v25;
        if (!v19)
        {
          return v24;
        }
      }

      v27 = v26 + 1;
      LODWORD(v19) = *(a1 + v26);
      if (*(a1 + v26) < 0)
      {
        v28 = v26 + 2;
        v29 = *(a1 + v27);
        v30 = *(a1 + v27);
        if (v29 < 0)
        {
          v31 = *(a1 + v28);
          v32 = v31;
          if (v31 < 0)
          {
            v28 = v26 + 4;
            v34 = *(a1 + v26 + 3);
            v35 = *(a1 + v26 + 3);
            if (v34 < 0)
            {
              v36 = *(a1 + v28);
              if (v36 < 0)
              {
                sub_100023CA4();
              }

              v37 = ((v35 & 0x7F) << 21) | (v36 << 28) | ((v32 & 0x7F) << 14) | ((v30 & 0x7F) << 7) | v19 & 0x7F;
              v28 = *a2 + 5;
              LODWORD(v19) = v37;
              goto LABEL_30;
            }

            v33 = ((v32 & 0x7F) << 14) | (v35 << 21) | ((v30 & 0x7F) << 7) | v19 & 0x7F;
          }

          else
          {
            v33 = ((v30 & 0x7F) << 7) | (v31 << 14) | v19 & 0x7F;
            v28 = v26 + 3;
          }

          LODWORD(v19) = v33;
        }

        else
        {
          LODWORD(v19) = v19 & 0x7F | (v30 << 7);
        }
      }

      else
      {
        v28 = v26 + 1;
      }

LABEL_30:
      *a2 = v28;
      goto LABEL_31;
    }

    return v24;
  }

  if (v14 >= v19)
  {
    if (v21 >= a3)
    {
      v40 = 0;
      v45 = v15 + 2;
      goto LABEL_75;
    }

    v39 = 0;
    v40 = 0;
    v41 = v15 + 3;
    v42 = (v21 + a1);
    v43 = a6;
    while (1)
    {
      v44 = *v42++;
      v40 |= (v44 & 0x7F) << v39;
      if ((v44 & 0x80) == 0 || v39 == 63)
      {
        break;
      }

      v39 += 7;
      ++v41;
      if (!--v22)
      {
        v45 = a3;
LABEL_75:
        sub_100008944(a1, a2, a3, a4, a5, a6, a7, a8, "PostingChunk.c", 90, "offset < bufferLength", "", v21, v45, a3, v40, 899);
        goto LABEL_70;
      }
    }

    *a2 = v41;
    if (v40 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v40;
    }

    while (1)
    {
      v47 = (a7)(a8, v14, 1, 0, v46, a5, v43);
      if (!v40 || !v47)
      {
        break;
      }

      v55 = *a2;
      v56 = a3 - *a2;
      if (a3 <= *a2)
      {
        v58 = 0;
        v64 = *a2;
LABEL_77:
        sub_100008944(v47, v48, v49, v50, v51, v52, v53, v54, "PostingChunk.c", 90, "offset < bufferLength", "", v55, v64, a3, v58, 912);
LABEL_70:
        v63 = 2816;
LABEL_73:
        *v63 = -559038737;
        abort();
      }

      v57 = 0;
      v58 = 0;
      v59 = (a1 + v55);
      v60 = ~v55;
      while (1)
      {
        v61 = *v59++;
        v58 |= (v61 & 0x7F) << v57;
        if ((v61 & 0x80) == 0 || v57 == 63)
        {
          break;
        }

        v57 += 7;
        --v60;
        if (!--v56)
        {
          v64 = a3;
          goto LABEL_77;
        }
      }

      *a2 = -v60;
      v14 -= v58;
      if (!v58)
      {
        return 1;
      }
    }

    return v47 != 0;
  }

  if (*(a1 + v15 + 2))
  {
    if (v14 >= a4 || v19 > a4)
    {
LABEL_71:
      sub_1000068B0("%s:%u: failed assertion '%s' %s %d, %d");
    }

    else
    {
      v38 = ((v19 - v14 + 7) >> 3) + v15 + 2;
      if (v38 <= a3)
      {
        if (a7(a8, v14))
        {
          *a2 = v38;
          return 1;
        }

        return 0;
      }

      sub_1000068B0("%s:%u: failed assertion '%s' %s %ld, %ld");
    }

    v63 = 2986;
    goto LABEL_73;
  }

  return sub_1000070D8(v14, v19, a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000070D8(unsigned int a1, unsigned int a2, uint64_t a3, unint64_t *a4, unint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t (*a9)(uint64_t), uint64_t a10)
{
  v18 = *a4;
  if (*a4 + 5 > a5)
  {
    v19 = sub_1000089A4(a3, a4, a5);
    goto LABEL_13;
  }

  v20 = v18 + 1;
  v19 = *(a3 + v18);
  if (*(a3 + v18) < 0)
  {
    v21 = v18 + 2;
    v22 = *(a3 + v20);
    v23 = *(a3 + v20);
    if (v22 < 0)
    {
      v24 = *(a3 + v21);
      v25 = v24;
      if (v24 < 0)
      {
        v21 = v18 + 4;
        v27 = *(a3 + v18 + 3);
        v28 = *(a3 + v18 + 3);
        if (v27 < 0)
        {
          v44 = *(a3 + v21);
          if (v44 < 0)
          {
            sub_100023CA4();
          }

          v45 = ((v28 & 0x7F) << 21) | (v44 << 28) | ((v25 & 0x7F) << 14) | ((v23 & 0x7F) << 7) | v19 & 0x7F;
          v21 = *a4 + 5;
          v19 = v45;
          goto LABEL_12;
        }

        v26 = ((v25 & 0x7F) << 14) | (v28 << 21) | ((v23 & 0x7F) << 7) | v19 & 0x7F;
      }

      else
      {
        v26 = ((v23 & 0x7F) << 7) | (v24 << 14) | v19 & 0x7F;
        v21 = v18 + 3;
      }

      v19 = v26;
    }

    else
    {
      v19 = v19 & 0x7F | (v23 << 7);
    }
  }

  else
  {
    v21 = v18 + 1;
  }

LABEL_12:
  *a4 = v21;
LABEL_13:
  if (v19)
  {
    sub_100023CE8(v19);
  }

  do
  {
    while (1)
    {
      v29 = *a4;
      if (*a4 + 5 > a5)
      {
        v30 = sub_1000089A4(a3, a4, a5);
        goto LABEL_26;
      }

      v31 = v29 + 1;
      v30 = *(a3 + v29);
      if (*(a3 + v29) < 0)
      {
        v32 = v29 + 2;
        v33 = *(a3 + v31);
        v34 = *(a3 + v31);
        if (v33 < 0)
        {
          v35 = *(a3 + v32);
          v36 = v35;
          if (v35 < 0)
          {
            v32 = v29 + 4;
            v38 = *(a3 + v29 + 3);
            v39 = *(a3 + v29 + 3);
            if (v38 < 0)
            {
              v41 = *(a3 + v32);
              if (v41 < 0)
              {
                sub_100023CA4();
              }

              v42 = ((v39 & 0x7F) << 21) | (v41 << 28) | ((v36 & 0x7F) << 14) | ((v34 & 0x7F) << 7) | v30 & 0x7F;
              v32 = *a4 + 5;
              v30 = v42;
              goto LABEL_25;
            }

            v37 = ((v36 & 0x7F) << 14) | (v39 << 21) | ((v34 & 0x7F) << 7) | v30 & 0x7F;
          }

          else
          {
            v37 = ((v34 & 0x7F) << 7) | (v35 << 14) | v30 & 0x7F;
            v32 = v29 + 3;
          }

          v30 = v37;
        }

        else
        {
          v30 = v30 & 0x7F | (v34 << 7);
        }
      }

      else
      {
        v32 = v29 + 1;
      }

LABEL_25:
      *a4 = v32;
LABEL_26:
      v40 = a2 - v30;
      if (a2 < v30)
      {
        sub_1000068B0("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 868, "delta <= docID", "", v30, a2);
        goto LABEL_43;
      }

      if (v40 < a1)
      {
        sub_1000068B0("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 871, "docID >= firstDocID", "", a2 - v30, a1);
        goto LABEL_43;
      }

      if (v30 < 2)
      {
        break;
      }

      if (v40 + 1 >= a6)
      {
        sub_1000068B0("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 875, "docID+1 < maxValidId", "", a2 - v30, a6);
        goto LABEL_43;
      }

      a2 -= v30;
      if ((a9(a10) & 1) == 0)
      {
        return 0;
      }
    }

    a2 -= v30;
  }

  while (v30);
  if (a1 >= a6)
  {
    sub_1000068B0("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 882, "firstDocID < maxValidId", "", a1, a6);
    goto LABEL_43;
  }

  if (v40 > a6)
  {
    sub_1000068B0("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 883, "docID <= maxValidId", "", v40, a6);
LABEL_43:
    MEMORY[0xBAA] = -559038737;
    abort();
  }

  return (a9)(a10, a1, v40 - a1, 0, 0, a7, a8);
}

uint64_t sub_100007490(uint64_t result, uint64_t a2, unsigned int a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = 0;
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  *(result + 36) = v4;
  return result;
}

unint64_t sub_1000074B8(uint64_t a1, int *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v77 = 0;
  for (LODWORD(v10) = *(a1 + 36); ; LODWORD(v10) = 4)
  {
    while (1)
    {
      if (v10 > 3)
      {
        if ((v10 - 5) >= 2)
        {
          if (v10 != 4)
          {
            goto LABEL_109;
          }

          v22 = *(v9 + 8);
          if (v22 >= *v9)
          {
            v29 = *(v9 + 32);
            if (!v29)
            {
              while (1)
              {
                a3 = *(v9 + 24);
                if (v77 >= a3)
                {
                  goto LABEL_109;
                }

                v30 = *(v9 + 16);
                if (v77 + 5 <= a3)
                {
                  v31 = v77 + 1;
                  a1 = *(v30 + v77);
                  if (*(v30 + v77) < 0)
                  {
                    v32 = v77 + 2;
                    v33 = *(v30 + v31);
                    v34 = *(v30 + v31);
                    if (v33 < 0)
                    {
                      v35 = *(v30 + v32);
                      v36 = v35;
                      if (v35 < 0)
                      {
                        v32 = v77 + 4;
                        v38 = *(v30 + v77 + 3);
                        if (*(v30 + v77 + 3) < 0)
                        {
                          v39 = *(v30 + v32);
                          if (v39 < 0)
                          {
                            sub_100023CA4();
                          }

                          v37 = ((v38 & 0x7F) << 21) | (v39 << 28) | ((v36 & 0x7F) << 14) | ((v34 & 0x7F) << 7) | (a1 & 0x7F);
                          v32 = v77 + 5;
                        }

                        else
                        {
                          v37 = ((v36 & 0x7F) << 14) | (v38 << 21) | ((v34 & 0x7F) << 7) | (a1 & 0x7F);
                        }
                      }

                      else
                      {
                        v37 = ((v34 & 0x7F) << 7) | (v35 << 14) | (a1 & 0x7F);
                        v32 = v77 + 3;
                      }

                      a1 = v37;
                    }

                    else
                    {
                      a1 = a1 & 0x7F | (v34 << 7);
                    }
                  }

                  else
                  {
                    v32 = v77 + 1;
                  }

                  v77 = v32;
                }

                else
                {
                  a1 = sub_1000089A4(*(v9 + 16), &v77, a3);
                  v22 = *(v9 + 8);
                }

                *(v9 + 8) = --v22;
                if (a1 >= 2)
                {
                  v29 = a1 - 1;
                  break;
                }

                if (!a1)
                {
                  v40 = v22 - *v9;
                  v29 = v40 + 1;
                  *(v9 + 32) = v40 + 1;
                  if (v40 == -1)
                  {
                    goto LABEL_23;
                  }

                  break;
                }
              }
            }

            v41 = 0;
            *(v9 + 32) = v29 - 1;
            v42 = v22 - 1;
            goto LABEL_67;
          }
        }

        else
        {
          v16 = *(v9 + 24);
          if (v77 >= v16)
          {
            goto LABEL_109;
          }

          v17 = 0;
          v18 = 0;
          v19 = v77;
          while (1)
          {
            v20 = v19 + 1;
            v21 = *(*(v9 + 16) + v19);
            v18 |= (v21 & 0x7F) << v17;
            if ((v21 & 0x80) == 0 || v17 == 63)
            {
              break;
            }

            v17 += 7;
            v19 = v20;
            if (v16 == v20)
            {
              sub_100008944(a1, a2, a3, a4, a5, a6, a7, a8, "PostingChunk.c", 90, "offset < bufferLength", "", v77, v16, v16, v18, 1129);
              goto LABEL_98;
            }
          }

          v77 = v20;
          if (v18)
          {
            v22 = *v9 - v18;
            *v9 = v22;
            if (v10 == 5)
            {
              v41 = 1;
            }

            else
            {
              v41 = 2;
            }

            goto LABEL_76;
          }
        }

LABEL_23:
        LODWORD(v10) = 0;
        goto LABEL_44;
      }

      if (!v10)
      {
        break;
      }

      if (v10 == 2)
      {
        v10 = *(v9 + 8);
        if (!v10)
        {
          goto LABEL_44;
        }

        v43 = v77;
        v44 = *(v9 + 24);
        if (v77 >= v44)
        {
          goto LABEL_109;
        }

        v22 = *v9 - v10;
        *v9 = v22;
        v45 = *(v9 + 16);
        v46 = v43 + 5;
        if (v43 + 5 <= v44)
        {
          v55 = v43 + 1;
          v47 = *(v45 + v43);
          if (*(v45 + v43) < 0)
          {
            v56 = v43 + 2;
            v58 = *(v45 + v55);
            v59 = *(v45 + v55);
            if (v58 < 0)
            {
              v60 = *(v45 + v56);
              v61 = v60;
              if (v60 < 0)
              {
                v56 = v43 + 4;
                v66 = *(v45 + v43 + 3);
                v67 = *(v45 + v43 + 3);
                if (v66 < 0)
                {
                  v74 = *(v45 + v56);
                  if (v74 < 0)
                  {
                    sub_100023CA4();
                  }

                  v62 = ((v67 & 0x7F) << 21) | (v74 << 28) | ((v61 & 0x7F) << 14) | ((v59 & 0x7F) << 7) | v47 & 0x7F;
                  v56 = v46;
                }

                else
                {
                  v62 = ((v61 & 0x7F) << 14) | (v67 << 21) | ((v59 & 0x7F) << 7) | v47 & 0x7F;
                }
              }

              else
              {
                v62 = ((v59 & 0x7F) << 7) | (v60 << 14) | v47 & 0x7F;
                v56 = v43 + 3;
              }

              v47 = v62;
            }

            else
            {
              v47 = v47 & 0x7F | (v59 << 7);
            }
          }

          else
          {
            v56 = v43 + 1;
          }

          v77 = v56;
        }

        else
        {
          v47 = sub_1000089A4(*(v9 + 16), &v77, v44);
          v22 = *v9;
        }

        v41 = 0;
        v42 = v47;
LABEL_67:
        *(v9 + 8) = v42;
        goto LABEL_76;
      }

      if (v10 != 3)
      {
        goto LABEL_109;
      }

      v11 = *(v9 + 32);
      v12 = v77;
      if (v11)
      {
        v13 = *(v9 + 8);
        v15 = v77;
LABEL_75:
        v41 = 0;
        v77 = v15;
        v22 = v13 - byte_10002A520[(((v11 - 1) & v11 ^ v11) - 11 * ((((((v11 - 1) & v11 ^ v11) - ((117 * ((v11 - 1) & v11 ^ v11)) >> 8)) >> 1) + ((117 * ((v11 - 1) & v11 ^ v11)) >> 8)) >> 3))];
        *(v9 + 32) = (v11 - 1) & v11;
LABEL_76:
        v48 = *(v9 + 16);
        v49 = *(v9 + 24);
        v50 = v49 - v77;
        if (v49 >= v77)
        {
          v51 = v48 + v77;
        }

        else
        {
          v50 = 0;
          v51 = v48 + v49;
        }

        *(v9 + 16) = v51;
        *(v9 + 24) = v50;
        if (a2)
        {
          goto LABEL_80;
        }

        return v22;
      }

      v13 = *(v9 + 8);
      v14 = v13 - *v9;
      while (v14 >= 9 && v12 < *(v9 + 24))
      {
        v13 -= 8;
        *(v9 + 8) = v13;
        v15 = v12 + 1;
        v11 = *(*(v9 + 16) + v12);
        *(v9 + 32) = v11;
        v14 -= 8;
        ++v12;
        if (v11)
        {
          goto LABEL_75;
        }
      }

      LODWORD(v10) = 0;
      v77 = v12;
LABEL_44:
      *(v9 + 36) = 0;
    }

    a3 = *(v9 + 24);
    if (v77 >= a3)
    {
      goto LABEL_109;
    }

    v23 = 0;
    v22 = 0;
    a1 = *(v9 + 16);
    v24 = v77 + 3;
    v25 = v77;
    while (1)
    {
      v26 = v25 + 1;
      v22 |= (*(a1 + v25) & 0x7F) << v23;
      if ((*(a1 + v25) & 0x80) == 0 || v23 == 63)
      {
        break;
      }

      v23 += 7;
      ++v24;
      ++v25;
      if (a3 == v26)
      {
        sub_100008944(a1, a2, a3, a4, a5, a6, a7, a8, "PostingChunk.c", 90, "offset < bufferLength", "", v77, a3, a3, v22, 985);
        goto LABEL_98;
      }
    }

    v77 = v25 + 1;
    *v9 = v22;
    if (v26 >= a3 || !v22)
    {
      goto LABEL_109;
    }

    v27 = 0;
    v28 = 0;
    while (1)
    {
      v28 |= (*(a1 + 6 + v24 - 8) & 0x7F) << v27;
      if ((*(a1 + 6 + v24 - 8) & 0x80) == 0 || v27 == 63)
      {
        break;
      }

      v27 += 7;
      ++v24;
      if (1 - a3 + v24 == 3)
      {
        sub_100008944(a1, a2, a3, a4, a5, a6, a7, a8, "PostingChunk.c", 90, "offset < bufferLength", "", v25 + 1, a3, a3, v28, 993);
LABEL_98:
        MEMORY[0xB00] = -559038737;
        abort();
      }
    }

    v77 = v24 - 1;
    *(v9 + 8) = v28;
    if (v22 > v28)
    {
      v41 = 0;
      *(v9 + 36) = 2;
      goto LABEL_76;
    }

    if (v22 >= v28)
    {
      break;
    }

    if (*(a1 + v24 - 1))
    {
      v41 = 0;
      v22 = v28 - 1;
      *(v9 + 36) = 3;
      v77 = v24;
      *(v9 + 32) = *(a1 + v24 - 1) & 0xFE;
      goto LABEL_76;
    }

    v77 = v24;
    *(v9 + 32) = 0x400000000;
  }

  if (v24 - 1 >= a3)
  {
    goto LABEL_109;
  }

  v53 = v24 + 4;
  if (v24 + 4 > a3)
  {
    v54 = sub_1000089A4(a1, &v77, a3);
    goto LABEL_105;
  }

  v54 = *(a1 + v24 - 1);
  if (*(a1 + v24 - 1) < 0)
  {
    v57 = *(a1 + v24);
    if (*(a1 + v24) < 0)
    {
      v63 = a1 + v24;
      v64 = *(a1 + v24 + 1);
      if (*(a1 + v24 + 1) < 0)
      {
        v68 = *(v63 + 2);
        v69 = *(v63 + 2);
        if (v68 < 0)
        {
          v75 = *(a1 + v24 + 3);
          if (v75 < 0)
          {
            sub_100023CA4();
          }

          v76 = ((v69 & 0x7F) << 21) | (v75 << 28) | ((v64 & 0x7F) << 14) | ((v57 & 0x7F) << 7) | v54 & 0x7F;
          v24 = v53;
          v54 = v76;
          goto LABEL_104;
        }

        v24 += 3;
        v65 = ((v64 & 0x7F) << 14) | (v69 << 21) | ((v57 & 0x7F) << 7);
      }

      else
      {
        v24 += 2;
        v65 = ((v57 & 0x7F) << 7) | (v64 << 14);
      }

      v54 = v65 & 0xFFFFFF80 | v54 & 0x7F;
    }

    else
    {
      ++v24;
      v54 = v54 & 0x7F | (v57 << 7);
    }
  }

LABEL_104:
  v77 = v24;
LABEL_105:
  switch(v54)
  {
    case 2:
      *(v9 + 36) = 6;
      v41 = 2;
      goto LABEL_76;
    case 1:
      *(v9 + 36) = 5;
      v41 = 1;
      goto LABEL_76;
    case 0:
      *(v9 + 36) = 0;
      v41 = 1;
      *v9 = 0;
      *(v9 + 8) = 0;
      goto LABEL_76;
  }

LABEL_109:
  *(v9 + 36) = 1;
  v70 = *(v9 + 16);
  v71 = *(v9 + 24);
  v72 = v71 - v77;
  if (v71 >= v77)
  {
    v73 = v70 + v77;
  }

  else
  {
    v72 = 0;
    v73 = v70 + v71;
  }

  *(v9 + 16) = v73;
  *(v9 + 24) = v72;
  v22 = 0;
  if (a2)
  {
    v41 = 0;
LABEL_80:
    *a2 = v41;
  }

  return v22;
}

void sub_100007BBC(void **a1, _DWORD *a2, uint64_t size, uint64_t a4)
{
  v4 = a4;
  v5 = size;
  v7 = a1;
  if (size)
  {
    if (a4)
    {
      v8 = *(a4 + 32);
      if (*(a4 + 40) < size)
      {
        v9 = malloc_type_realloc(*(a4 + 32), size, 0x100004077774924uLL);
        *(v4 + 32) = v9;
        if (!v9)
        {
          sub_100023D40();
        }

        v8 = v9;
        *(v4 + 40) = v5;
      }

      bzero(v8, v5);
    }

    else
    {
      v8 = malloc_type_calloc(size, 1uLL, 0x100004077774924uLL);
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = (v5 - 1);
    v20 = a2[v19];
    if (*a2 < 0x200000u)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    if (*a2 >> 28)
    {
      v22 = 5;
    }

    else
    {
      v22 = v21;
    }

    if (*a2 < 0x80u)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (*a2 >> 14)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v25 = 16 * v24;
    v26 = v5 - 2;
    v53 = v5;
    v27 = -v5;
    v28 = 1 - v5;
    v52 = v8;
    v29 = &v8[v19];
    v30 = &a2[v19];
    v31 = 8 * v24 + 8;
    v32 = (2 * v24) | 1;
    v33 = v20;
    do
    {
      v34 = v30[v13];
      if (v28 == v13)
      {
        v35 = 0;
      }

      else
      {
        v35 = a2[(v26 + v13)] + ~v34;
      }

      v36 = v34 - v20 + 1;
      v37 = v31 + v15 - 8 * v14;
      v38 = v17 + v34;
      v39 = v16 + v25 + v36;
      v57[0] = v37;
      v57[1] = v39;
      v58 = v18 + 8 + 8 * (v32 + v13 + v17 + v34 - v33);
      if (v39 <= v58)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2;
      }

      if (v37 <= v39)
      {
        v41 = 2 * (v37 > v58);
      }

      else
      {
        v41 = v40;
      }

      v42 = v36 + v16 + v35;
      v43 = v18 + 8 + 8 * (v13 + v38 + v35 - v33);
      v44 = v57[v41];
      v45 = v44 + 8;
      v46 = v43 > v44 + 8;
      v47 = v44 + 4;
      v48 = (v44 + 7) & 0xFFFFFFF8;
      v49 = 3;
      if (v43 <= v45)
      {
        v49 = 1;
      }

      v50 = 2 * v46;
      if (v41)
      {
        v15 = v48;
        v14 = v12 + 1;
      }

      if (v42 <= v47)
      {
        v49 = v50;
      }

      v29[v13] = dword_10002A52C[4 * v41 + v49];
      if (v42 > v47)
      {
        v16 = v48;
        v20 = 0;
      }

      if (v28 != v13 && v42 > v47)
      {
        v20 = a2[(v26 + v13)];
        v16 = v48;
      }

      if (v43 > v45)
      {
        v18 = v48;
        v17 = v12 + 1;
        v33 = 0;
      }

      if (v28 != v13 && v43 > v45)
      {
        v33 = a2[(v26 + v13)];
        v18 = v48;
        v17 = v12 + 1;
      }

      --v13;
      v31 += 8;
      ++v12;
    }

    while (v27 + v12);
    v57[0] = 0;
    v10 = v52;
    v51 = *v52;
    if ((v51 - 4) < 4)
    {
      v11 = 1;
      v7 = a1;
      v4 = a4;
      v5 = v53;
    }

    else
    {
      v7 = a1;
      v4 = a4;
      v5 = v53;
      if ((v51 - 8) >= 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 2;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v57[0] = 0;
  }

  for (i = v11; ; v11 = i)
  {
    sub_100007F84(v7, v11, a2, v10, v5, v57);
    if (v57[0] >= v5)
    {
      break;
    }

    sub_1000084B8(&i, v10[v57[0]]);
  }

  if (!v4)
  {

    free(v10);
  }
}

void sub_100007F84(void **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6 >= a5)
  {
    return;
  }

  v7 = a5;
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v10 = 0;
      v71 = 1;
      v11 = (a3 + 4 * v6);
      v12 = *v11;
      v13 = v6 - (a5 - 1);
      v14 = a4 + 1;
      v15 = v11;
      while (1)
      {
        v17 = *v15++;
        v16 = v17;
        if (v13 == v10)
        {
          break;
        }

        v18 = sub_1000084B8(&v71, *(v14 + v6));
        --v10;
        ++v14;
        if (v18)
        {
          v7 = v6 - v10;
          break;
        }
      }

      v19 = a6;
      *a6 = v7;
      v20 = v12 + 1 - v16;
      if (v12 + 1 == v16)
      {
        sub_100023ED8();
      }

      v21 = a1[1];
      v22 = a1[2];
      if (v22 + 10 > v21)
      {
        do
        {
          v21 *= 2;
        }

        while (v21 < v22 + 10);
        a1[1] = v21;
        v23 = malloc_type_realloc(*a1, v21, 0xF29073FuLL);
        *a1 = v23;
        v22 = a1[2];
        v19 = a6;
      }

      else
      {
        v23 = *a1;
      }

      v24 = sub_1000086A4(v23, v22, v16);
      a1[2] = v24;
      a1[3] = v16;
      v25 = v16 + v20;
      v26 = a1[1];
      if (v24 + 10 > v26)
      {
        do
        {
          v26 *= 2;
        }

        while (v26 < v24 + 10);
        a1[1] = v26;
        v28 = malloc_type_realloc(*a1, v26, 0xF29073FuLL);
        *a1 = v28;
        v27 = a1[2];
        v19 = a6;
      }

      else
      {
        v27 = v24;
        v28 = *a1;
      }

      v29 = sub_1000086A4(v28, v27, v25);
      a1[2] = v29;
      a1[3] = v25;
      v30 = (v20 + 7) >> 3;
      v31 = v29 + (v30 + 4);
      v32 = a1[1];
      if (v31 > v32)
      {
        do
        {
          v32 *= 2;
        }

        while (v32 < v31);
        a1[1] = v32;
        v33 = malloc_type_realloc(*a1, v32, 0xF29073FuLL);
        *a1 = v33;
        v29 = a1[2];
        v19 = a6;
      }

      else
      {
        v33 = *a1;
      }

      bzero(&v33[v29], (v20 + 7) >> 3);
      v34 = *v19;
      v35 = a1[2];
      if (v6 < v34)
      {
        v36 = &v35[*a1];
        v37 = *v11;
        v38 = v34 - v6;
        do
        {
          v39 = *v11++;
          v36[(v37 - v39) >> 3] |= 1 << ((v37 - v39) & 7);
          --v38;
        }

        while (v38);
        v35 = a1[2];
      }

      a1[2] = &v35[v30];
      return;
    }

LABEL_23:

    sub_100008A9C(a1, a3, a4, a5, a6);
    return;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      *a6 = v6 + 1;
      return;
    }

    goto LABEL_23;
  }

  v40 = (*(a3 + 4 * v6) + 1);
  v72 = 2;
  v41 = v6 + 1;
  v42 = 1 - v6;
  v68 = (a5 - 1);
  v43 = v68 - v6;
  v44 = (v6 + a4 + 1);
  v45 = v6;
  while (v43)
  {
    v46 = *v44++;
    --v42;
    --v43;
    ++v45;
    if (sub_1000084B8(&v72, v46))
    {
      v47 = -v42;
      goto LABEL_31;
    }
  }

  v45 = v7;
  v47 = v68;
LABEL_31:
  v48 = *(a3 + 4 * v47);
  v49 = a1[1];
  v50 = a1[2];
  if (v50 + 10 > v49)
  {
    do
    {
      v49 *= 2;
    }

    while (v49 < v50 + 10);
    a1[1] = v49;
    v51 = malloc_type_realloc(*a1, v49, 0xF29073FuLL);
    *a1 = v51;
    v50 = a1[2];
  }

  else
  {
    v51 = *a1;
  }

  v52 = sub_1000086A4(v51, v50, v48);
  a1[2] = v52;
  a1[3] = v48;
  v53 = a1[1];
  if (v52 + 10 > v53)
  {
    do
    {
      v53 *= 2;
    }

    while (v53 < v52 + 10);
    a1[1] = v53;
    v55 = malloc_type_realloc(*a1, v53, 0xF29073FuLL);
    *a1 = v55;
    v54 = a1[2];
  }

  else
  {
    v54 = v52;
    v55 = *a1;
  }

  v56 = sub_1000086A4(v55, v54, v40);
  a1[2] = v56;
  a1[3] = v40;
  v57 = a1[1];
  if (v56 + 10 > v57)
  {
    do
    {
      v57 *= 2;
    }

    while (v57 < v56 + 10);
    a1[1] = v57;
    v58 = malloc_type_realloc(*a1, v57, 0xF29073FuLL);
    *a1 = v58;
    v56 = a1[2];
  }

  else
  {
    v58 = *a1;
  }

  v59 = v56 + 1;
  v58[v56] = 0;
  a1[2] = (v56 + 1);
  v60 = *(a3 + 4 * v6);
  if (v60 <= v48)
  {
    sub_100023D84();
  }

  if (v60 >= v40)
  {
    sub_100023DC8();
  }

  if (v41 < v45)
  {
    do
    {
      v61 = *(a3 + 4 * v41);
      if (v60 < v61)
      {
        sub_100023E94();
      }

      --v60;
      while (v60 > v61)
      {
        if (v60 >= v40)
        {
          sub_100023E0C();
        }

        if (v60 <= v48)
        {
          sub_100023E50();
        }

        v62 = a1[3];
        if (v62 <= v60)
        {
          sub_100023C60();
        }

        v63 = a1[1];
        if (v59 + 10 > v63)
        {
          do
          {
            v63 *= 2;
          }

          while (v63 < v59 + 10);
          a1[1] = v63;
          v64 = malloc_type_realloc(*a1, v63, 0xF29073FuLL);
          *a1 = v64;
          v59 = a1[2];
          v62 = a1[3];
        }

        else
        {
          v64 = *a1;
        }

        v59 = sub_1000086A4(v64, v59, v62 - v60);
        a1[2] = v59;
        a1[3] = v60--;
        v61 = *(a3 + 4 * v41);
      }

      ++v41;
    }

    while (v41 != v45);
    LODWORD(v41) = v45;
  }

  v65 = a1[1];
  v66 = a6;
  if (v59 + 10 > v65)
  {
    do
    {
      v65 *= 2;
    }

    while (v65 < v59 + 10);
    a1[1] = v65;
    v67 = malloc_type_realloc(*a1, v65, 0xF29073FuLL);
    *a1 = v67;
    v59 = a1[2];
    v66 = a6;
  }

  else
  {
    v67 = *a1;
  }

  v67[v59] = 0;
  a1[2] = (v59 + 1);
  a1[3] = 0;
  *v66 = v41;
}

uint64_t sub_1000084B8(unsigned int *a1, int a2)
{
  v2 = 0;
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          if (*a1 == 2)
          {
            return 0;
          }

          break;
        case 10:
          if (*a1 == 1)
          {
            return 0;
          }

          break;
        case 11:
          break;
        default:
          return v2;
      }

LABEL_32:
      v3 = 2;
      goto LABEL_33;
    }

    if (a2 != 6)
    {
      if (a2 != 7)
      {
        if (!*a1)
        {
          goto LABEL_32;
        }

        return 0;
      }

      goto LABEL_29;
    }

    if (*a1 != 1)
    {
LABEL_29:
      v3 = 1;
      goto LABEL_33;
    }

    return 0;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (*a1 != 1)
      {
        return 0;
      }

      goto LABEL_27;
    }

    if (a2 == 2)
    {
      if (*a1 != 2)
      {
        return 0;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        if (!*a1)
        {
          goto LABEL_29;
        }
      }

      else if (*a1 != 2)
      {
        goto LABEL_29;
      }

      return 0;
    }

    v2 = *a1;
    if (v2)
    {
LABEL_27:
      v3 = 0;
LABEL_33:
      *a1 = v3;
      return 1;
    }
  }

  return v2;
}

void *sub_1000085D4(uint64_t a1)
{
  *(a1 + 8) = 16;
  *a1 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  *(a1 + 24) = 16;
  *(a1 + 16) = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  *(a1 + 40) = 16;
  result = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  *(a1 + 32) = result;
  return result;
}

void sub_100008658(uint64_t a1)
{
  if (a1)
  {
    free(*a1);
    free(*(a1 + 16));
    v2 = *(a1 + 32);

    free(v2);
  }
}

uint64_t sub_1000086A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (HIDWORD(a3))
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      v9 = a1 + a2;
      *v9 = a3 | 0x80;
      v10 = vdupq_n_s64(a3);
      v10.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v10, xmmword_10002A510), vshlq_u64(v10, xmmword_10002A500))) | 0x80008000800080;
      *(v9 + 1) = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
      *(v9 + 5) = (a3 >> 35) | 0x80;
      *(v9 + 6) = (a3 >> 42) | 0x80;
      *(v9 + 7) = (a3 >> 49) | 0x80;
      *(v9 + 8) = HIBYTE(a3);
      result = a2 + 10;
      *(v9 + 9) = 1;
    }

    else
    {
      v5 = a3 | 0x80;
      if (HIBYTE(a3))
      {
        v11 = a1 + a2;
        *v11 = v5;
        v12 = vdupq_n_s64(a3);
        v12.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v12, xmmword_10002A510), vshlq_u64(v12, xmmword_10002A500))) | 0x80008000800080;
        *(v11 + 1) = vuzp1_s8(*v12.i8, *v12.i8).u32[0];
        *(v11 + 5) = (a3 >> 35) | 0x80;
        *(v11 + 6) = (a3 >> 42) | 0x80;
        *(v11 + 7) = (a3 >> 49) | 0x80;
        result = a2 + 9;
        *(v11 + 8) = HIBYTE(a3);
      }

      else if (a3 >> 49)
      {
        v14 = a1 + a2;
        *v14 = v5;
        v15 = vdupq_n_s64(a3);
        v15.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v15, xmmword_10002A510), vshlq_u64(v15, xmmword_10002A500))) | 0x80008000800080;
        *(v14 + 1) = vuzp1_s8(*v15.i8, *v15.i8).u32[0];
        *(v14 + 5) = (a3 >> 35) | 0x80;
        *(v14 + 6) = (a3 >> 42) | 0x80;
        result = a2 + 8;
        *(v14 + 7) = a3 >> 49;
      }

      else
      {
        v6 = a1 + a2;
        *v6 = v5;
        v7 = vdupq_n_s64(a3);
        v7.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_10002A510), vshlq_u64(v7, xmmword_10002A500))) | 0x80008000800080;
        *(v6 + 1) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
        if (a3 >> 42)
        {
          *(v6 + 5) = (a3 >> 35) | 0x80;
          result = a2 + 7;
          *(v6 + 6) = a3 >> 42;
        }

        else
        {
          result = a2 + 6;
          *(v6 + 5) = a3 >> 35;
        }
      }
    }
  }

  else if (a3 >> 28)
  {
    v8 = (a1 + a2);
    *v8 = a3 | 0x80;
    v8[1] = (a3 >> 7) | 0x80;
    v8[2] = (a3 >> 14) | 0x80;
    v8[3] = (a3 >> 21) | 0x80;
    result = a2 + 5;
    v8[4] = a3 >> 28;
  }

  else if (a3 >= 0x200000)
  {
    v13 = (a1 + a2);
    *v13 = a3 | 0x80;
    v13[1] = (a3 >> 7) | 0x80;
    v13[2] = (a3 >> 14) | 0x80;
    result = a2 + 4;
    v13[3] = a3 >> 21;
  }

  else
  {
    v3 = (a1 + a2);
    if (a3 >= 0x4000)
    {
      *v3 = a3 | 0x80;
      v3[1] = (a3 >> 7) | 0x80;
      result = a2 + 3;
      v3[2] = a3 >> 14;
    }

    else if (a3 >= 0x80)
    {
      *v3 = a3 | 0x80;
      result = a2 + 2;
      v3[1] = a3 >> 7;
    }

    else
    {
      result = a2 + 1;
      *v3 = a3;
    }
  }

  return result;
}

void sub_100008944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s Offset past bounds; incoming %ld, current %ld, buffer length %ld, val %llu from %d", va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100023F1C(v8);
  }

  free(v8[0]);
}

uint64_t sub_1000089A4(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (*a2 >= a3)
  {
    sub_100023FA0();
  }

  v5 = v3 + 1;
  v6 = *(a1 + v3);
  result = *(a1 + v3);
  if (v6 < 0)
  {
    if (v5 >= a3)
    {
      sub_100023FE4();
    }

    v8 = v3 + 2;
    v9 = *(a1 + v5);
    v10 = *(a1 + v5);
    if (v9 < 0)
    {
      if (v8 >= a3)
      {
        sub_100024028();
      }

      v11 = v3 + 3;
      v12 = *(a1 + v8);
      v13 = v12;
      if (v12 < 0)
      {
        if (v11 >= a3)
        {
          sub_10002406C();
        }

        v8 = v3 + 4;
        v15 = *(a1 + v11);
        v16 = *(a1 + v11);
        if (v15 < 0)
        {
          if (v8 >= a3)
          {
            sub_1000240B0();
          }

          v18 = *(a1 + v8);
          if (v18 < 0)
          {
            sub_1000240F4();
          }

          v8 = v3 + 5;
          v17 = ((v16 & 0x7F) << 21) | (v18 << 28) | ((v13 & 0x7F) << 14);
        }

        else
        {
          v17 = ((v13 & 0x7F) << 14) | (v16 << 21);
        }

        v14 = v17 & 0xFFFFC000 | ((v10 & 0x7F) << 7) | result & 0x7F;
      }

      else
      {
        v14 = ((v10 & 0x7F) << 7) | (v12 << 14) | (result & 0x7F);
        v8 = v3 + 3;
      }

      result = v14;
    }

    else
    {
      result = result & 0x7F | (v10 << 7);
    }
  }

  else
  {
    v8 = v3 + 1;
  }

  *a2 = v8;
  return result;
}

_BYTE *sub_100008A9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int *a5)
{
  v22 = 0;
  v10 = *a5;
  v11 = *(a2 + 4 * v10);
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  if (v13 + 10 > v12)
  {
    do
    {
      v12 *= 2;
    }

    while (v12 < v13 + 10);
    *(a1 + 8) = v12;
    v14 = malloc_type_realloc(*a1, v12, 0xF29073FuLL);
    *a1 = v14;
    v13 = *(a1 + 16);
  }

  else
  {
    v14 = *a1;
  }

  v15 = sub_1000086A4(v14, v13, v11);
  v16 = v10 + 1;
  *(a1 + 16) = v15;
  *(a1 + 24) = v11;
  if (v16 < a4)
  {
    while ((sub_1000084B8(&v22, *(a3 + v16)) & 1) == 0)
    {
      v17 = *(a2 + 4 * v16);
      if (v11 <= v17)
      {
        sub_100023C60();
      }

      v18 = *(a1 + 8);
      if (v15 + 10 > v18)
      {
        do
        {
          v18 *= 2;
        }

        while (v18 < v15 + 10);
        *(a1 + 8) = v18;
        v19 = malloc_type_realloc(*a1, v18, 0xF29073FuLL);
        *a1 = v19;
        v15 = *(a1 + 16);
        v11 = *(a1 + 24);
      }

      else
      {
        v19 = *a1;
      }

      v15 = sub_1000086A4(v19, v15, v11 - v17);
      ++v16;
      *(a1 + 16) = v15;
      *(a1 + 24) = v17;
      v11 = v17;
      if (v16 == a4)
      {
        v16 = a4;
        break;
      }
    }
  }

  v20 = *(a1 + 8);
  if (v15 + 10 > v20)
  {
    do
    {
      v20 *= 2;
    }

    while (v20 < v15 + 10);
    *(a1 + 8) = v20;
    result = malloc_type_realloc(*a1, v20, 0xF29073FuLL);
    *a1 = result;
    v15 = *(a1 + 16);
  }

  else
  {
    result = *a1;
  }

  result[v15] = 0;
  *(a1 + 16) = v15 + 1;
  *(a1 + 24) = 0;
  *a5 = v16;
  return result;
}

uint64_t sub_100008CFC(unsigned __int8 *a1, unsigned int a2, unsigned int a3)
{
  v3 = -1640531527;
  if (a2 < 0xC)
  {
    v5 = -1640531527;
    v4 = a2;
  }

  else
  {
    v4 = a2;
    v5 = -1640531527;
    do
    {
      v6 = *(a1 + 1) + v3;
      v7 = *(a1 + 2) + a3;
      v8 = (*a1 + v5 - (v6 + v7)) ^ (v7 >> 13);
      v9 = (v6 - v7 - v8) ^ (v8 << 8);
      v10 = (v7 - v8 - v9) ^ (v9 >> 13);
      v11 = (v8 - v9 - v10) ^ (v10 >> 12);
      v12 = (v9 - v10 - v11) ^ (v11 << 16);
      v13 = (v10 - v11 - v12) ^ (v12 >> 5);
      v5 = (v11 - v12 - v13) ^ (v13 >> 3);
      v3 = (v12 - v13 - v5) ^ (v5 << 10);
      a3 = (v13 - v5 - v3) ^ (v3 >> 15);
      a1 += 12;
      v4 -= 12;
    }

    while (v4 > 0xB);
  }

  v14 = a3 + a2;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 != 9)
      {
        if (v4 != 10)
        {
          v14 += a1[10] << 24;
        }

        v14 += a1[9] << 16;
      }

      v14 += a1[8] << 8;
    }

    else
    {
      if (v4 == 6)
      {
LABEL_22:
        v3 += a1[5] << 8;
        goto LABEL_23;
      }

      if (v4 == 7)
      {
LABEL_21:
        v3 += a1[6] << 16;
        goto LABEL_22;
      }
    }

    v3 += a1[7] << 24;
    goto LABEL_21;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
LABEL_25:
      v5 += a1[2] << 16;
      goto LABEL_26;
    }

    if (v4 == 4)
    {
LABEL_24:
      v5 += a1[3] << 24;
      goto LABEL_25;
    }

LABEL_23:
    v3 += a1[4];
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    goto LABEL_27;
  }

  if (v4 != 2)
  {
    goto LABEL_28;
  }

LABEL_26:
  v5 += a1[1] << 8;
LABEL_27:
  v5 += *a1;
LABEL_28:
  v15 = (v5 - (v3 + v14)) ^ (v14 >> 13);
  v16 = (v3 - v14 - v15) ^ (v15 << 8);
  v17 = (v14 - v15 - v16) ^ (v16 >> 13);
  v18 = (v15 - v16 - v17) ^ (v17 >> 12);
  v19 = (v16 - v17 - v18) ^ (v18 << 16);
  v20 = (v17 - v18 - v19) ^ (v19 >> 5);
  v21 = (v18 - v19 - v20) ^ (v20 >> 3);
  return (v20 - v21 - ((v19 - v20 - v21) ^ (v21 << 10))) ^ (((v19 - v20 - v21) ^ (v21 << 10)) >> 15);
}

uint64_t sub_100008F00(int a1)
{
  v1 = (-1640531527 - a1) ^ ((a1 - 4) << 8);
  v2 = (8 - a1 - v1) ^ (v1 >> 13);
  v3 = (a1 - 4 - v1 - v2) ^ (v2 >> 12);
  v4 = (v1 - v2 - v3) ^ (v3 << 16);
  v5 = (v2 - v3 - v4) ^ (v4 >> 5);
  v6 = (v3 - v4 - v5) ^ (v5 >> 3);
  return (v5 - v6 - ((v4 - v5 - v6) ^ (v6 << 10))) ^ (((v4 - v5 - v6) ^ (v6 << 10)) >> 15);
}

uint64_t sub_100008F70(int a1, int a2)
{
  v2 = a1 - a2 - 8;
  v3 = (a2 - (a1 - a2) - 1640531527) ^ (v2 << 8);
  v4 = (16 - (a1 - a2) - v3) ^ (v3 >> 13);
  v5 = (v2 - v3 - v4) ^ (v4 >> 12);
  v6 = (v3 - v4 - v5) ^ (v5 << 16);
  v7 = (v4 - v5 - v6) ^ (v6 >> 5);
  v8 = (v5 - v6 - v7) ^ (v7 >> 3);
  return (v7 - v8 - ((v6 - v7 - v8) ^ (v8 << 10))) ^ (((v6 - v7 - v8) ^ (v8 << 10)) >> 15);
}

uint64_t sub_100008FE8(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 - 8;
  v2 = (a1 - (HIDWORD(a1) - a1) - 1640531527) ^ (v1 << 8);
  v3 = (16 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  return (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
}

unint64_t sub_100009064(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 + 608135808;
  v2 = (a1 - (HIDWORD(a1) - a1) + 2046299953) ^ (v1 << 8);
  v3 = (-608135800 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  v8 = (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
  v9 = a1 + 608135808 - HIDWORD(a1);
  v10 = (HIDWORD(a1) - (v9 + 8) - 1640531527) ^ (v9 << 8);
  v11 = (8 - v9 - v10) ^ (v10 >> 13);
  v12 = (v9 - v10 - v11) ^ (v11 >> 12);
  v13 = (v10 - v11 - v12) ^ (v12 << 16);
  v14 = (v11 - v12 - v13) ^ (v13 >> 5);
  v15 = (v12 - v13 - v14) ^ (v14 >> 3);
  return v8 | (((v14 - v15 - ((v13 - v14 - v15) ^ (v15 << 10))) ^ (((v13 - v14 - v15) ^ (v15 << 10)) >> 15)) << 32);
}

unint64_t sub_100009168(int a1)
{
  v1 = (2 * a1 + 2046299953) ^ ((608135808 - a1) << 8);
  v2 = (a1 - 608135800 - v1) ^ (v1 >> 13);
  v3 = (608135808 - a1 - v1 - v2) ^ (v2 >> 12);
  v4 = (v1 - v2 - v3) ^ (v3 << 16);
  v5 = (v2 - v3 - v4) ^ (v4 >> 5);
  v6 = (v3 - v4 - v5) ^ (v5 >> 3);
  v7 = (v5 - v6 - ((v4 - v5 - v6) ^ (v6 << 10))) ^ (((v4 - v5 - v6) ^ (v6 << 10)) >> 15);
  v8 = (2046299953 - a1) ^ ((a1 + 608135808) << 8);
  v9 = (-608135800 - a1 - v8) ^ (v8 >> 13);
  v10 = (a1 + 608135808 - v8 - v9) ^ (v9 >> 12);
  v11 = (v8 - v9 - v10) ^ (v10 << 16);
  v12 = (v9 - v10 - v11) ^ (v11 >> 5);
  v13 = (v10 - v11 - v12) ^ (v12 >> 3);
  return v7 | (((v12 - v13 - ((v11 - v12 - v13) ^ (v13 << 10))) ^ (((v11 - v12 - v13) ^ (v13 << 10)) >> 15)) << 32);
}

void sub_1000093F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000940C(uint64_t a1, void *a2, void *a3)
{
  v47 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v48 = v5;
  if (v5)
  {
    v46 = WeakRetained;
    v7 = [*(a1 + 32) delegate];
    [v7 udatedWithAddedMountPoints:0 andRemovedMountPoints:0];

    v8 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100024138(v5, v8);
    }

LABEL_61:

    WeakRetained = v46;
    goto LABEL_62;
  }

  if (WeakRetained)
  {
    v46 = WeakRetained;
    v52 = [@"com.apple.filesystems.UserFS.FileProvider/" length];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v47;
    v51 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (!v51)
    {
      v9 = 0;
LABEL_40:

      v26 = v46;
      objc_sync_enter(v26);
      v55 = v26;
      [v26 _domainsByPath];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v27 = v61 = 0u;
      v28 = 0;
      v29 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
      if (v29)
      {
        v30 = *v61;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v61 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v60 + 1) + 8 * i);
            v33 = [v27 objectForKeyedSubscript:v32];
            v34 = [v9 objectForKeyedSubscript:v32];
            v35 = v34 == 0;

            if (v35)
            {
              v36 = [NSMutableDictionary dictionaryWithObject:v33 forKey:v32];

              v28 = v36;
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
        }

        while (v29);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v8 = v9;
      v37 = 0;
      v38 = [v8 countByEnumeratingWithState:&v56 objects:v72 count:16];
      if (v38)
      {
        v39 = *v57;
        do
        {
          for (j = 0; j != v38; j = j + 1)
          {
            if (*v57 != v39)
            {
              objc_enumerationMutation(v8);
            }

            v41 = *(*(&v56 + 1) + 8 * j);
            v42 = [v8 objectForKeyedSubscript:v41];
            v43 = [v27 objectForKeyedSubscript:v41];
            v44 = v43 == 0;

            if (v44)
            {
              if (v37)
              {
                [v37 setObject:v42 forKeyedSubscript:v41];
              }

              else
              {
                v37 = [NSMutableDictionary dictionaryWithObject:v42 forKey:v41];
              }
            }
          }

          v38 = [v8 countByEnumeratingWithState:&v56 objects:v72 count:16];
        }

        while (v38);
      }

      [v55 set_domainsByPath:v8];
      objc_sync_exit(v55);

      v45 = [v55 delegate];
      [v45 udatedWithAddedMountPoints:v37 andRemovedMountPoints:v28];

      goto LABEL_61;
    }

    v9 = 0;
    v50 = *v69;
    while (1)
    {
      for (k = 0; k != v51; k = k + 1)
      {
        if (*v69 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v68 + 1) + 8 * k);
        if ([v10 length] > v52 && objc_msgSend(v10, "hasPrefix:", @"com.apple.filesystems.UserFS.FileProvider/"))
        {
          v11 = [obj objectForKeyedSubscript:v10];
          v54 = [v10 substringFromIndex:v52];
          v12 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v76 = v11;
            v77 = 2112;
            v78 = v54;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "found %@ %@", buf, 0x16u);
          }

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v13 = [v11 storageURLs];
          v14 = [v13 countByEnumeratingWithState:&v64 objects:v74 count:16];
          if (v14)
          {
            v15 = *v65;
            do
            {
              for (m = 0; m != v14; m = m + 1)
              {
                if (*v65 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v64 + 1) + 8 * m);
                if ([v17 isFileURL])
                {
                  v18 = v17;
                  v19 = [v17 fileSystemRepresentation];
                  v20 = v19;
                  if (v19)
                  {
                    v21 = strlen(v19);
                    if (v21 >= 0x3E)
                    {
                      v22 = v21;
                      if (!strncmp(v20, "/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd/", 0x3CuLL))
                      {
                        v23 = [NSString stringWithFormat:@"%s%s", "/private/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd/", v20 + 60];
                      }

                      else
                      {
                        if (v22 < 0x46 || strncmp(v20, "/private/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd/", 0x44uLL))
                        {
                          continue;
                        }

                        v23 = [NSString stringWithUTF8String:v20];
                      }

                      v24 = v23;
                      if (v23)
                      {
                        if (!v9)
                        {
                          v9 = objc_opt_new();
                        }

                        v25 = logForCSLogCategoryDefault();
                        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v76 = v54;
                          v77 = 2112;
                          v78 = v24;
                          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "adding %@ %@", buf, 0x16u);
                        }

                        [v9 setObject:v11 forKeyedSubscript:v24];
                      }
                    }
                  }
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v64 objects:v74 count:16];
            }

            while (v14);
          }
        }
      }

      v51 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
      if (!v51)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_62:
}

uint64_t sub_10000A104(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      if (*(a1 + 40))
      {
        v5 = *(a1 + 48);
        if (v5 <= a4)
        {
          fprintf(__stderrp, "### bad term id %lld >= %lld\n", a4, v5);
        }
      }
    }
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

void sub_10000A258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A414(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  if (v4 >= 1 && *(result + 40) == 1)
  {
    result = fprintf(__stderrp, "### unexpected link from 0x%llx to 0x%llx\n", a2, a2);
    *a3 = 1;
  }

  return result;
}

void sub_10000A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A5E8;
  v10[3] = &unk_100035048;
  v11 = *(a1 + 32);
  v12 = a5;
  v13 = a6;
  sub_100023210(a2, v8, v10);
}

void sub_10000A5E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

CFTypeRef sub_10000B48C(uint64_t a1)
{
  if (qword_10003CB88 != -1)
  {
    sub_100024220();
  }

  v2 = qword_10003CB80;

  return CFRetain(v2);
}

void sub_10000C124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C150(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v8.i32[1] = 1;
      v8.i32[0] = *(a1 + 48);
      *(WeakRetained + 28) = vadd_s32(*(WeakRetained + 28), v8);
      v9 = atomic_load(WeakRetained + 6);
      if (v9 > 0x80000)
      {
        atomic_store(0, WeakRetained + 6);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "issue split", v11, 2u);
        }

        _SIIssueSplit();
      }
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 48);
    v11[0] = 67109120;
    v11[1] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "adding %d records canceled", v11, 8u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [NSError errorWithDomain:@"SIIndexer" code:89 userInfo:0];
    (*(v5 + 16))(v5, v6);
LABEL_13:
  }
}

void sub_10000C2E8(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a1[1];
  v5[2](v5, *a1, a2);
  free(a1);

  objc_autoreleasePoolPop(v4);
}

void sub_10000C66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C694(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v8.i32[1] = 1;
      v8.i32[0] = *(a1 + 48);
      *(WeakRetained + 28) = vadd_s32(*(WeakRetained + 28), v8);
      v9 = atomic_load(WeakRetained + 6);
      if (v9 > 0x80000)
      {
        atomic_store(0, WeakRetained + 6);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "issue split", v11, 2u);
        }

        _SIIssueSplit();
      }
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 48);
    v11[0] = 67109120;
    v11[1] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "adding %d records canceled", v11, 8u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [NSError errorWithDomain:@"SIIndexer" code:89 userInfo:0];
    (*(v5 + 16))(v5, v6);
LABEL_13:
  }
}

void sub_10000CACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000CAF0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      *buf = 67109120;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "deleted %d records canceled", buf, 8u);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [NSError errorWithDomain:@"SIIndexer" code:89 userInfo:0];
      (*(v5 + 16))(v5, v6);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      ++WeakRetained[8];
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }

    _objc_release_x1();
  }
}

uint64_t sub_10000CD0C(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    result = *(*(result + 32) + 136);
    if (result)
    {
      return SISyncIndex();
    }
  }

  return result;
}

void sub_10000D6BC(void *a1, uint64_t a2)
{
  v4 = objc_retainBlock(a1);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, a2);
    v4 = v5;
  }

  if (a1)
  {
    CFRelease(a1);
    v4 = v5;
  }
}

void *sub_10000D72C(void *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return _SISetCSAttributes(*(result[4] + 136), result[5], result[6], 0, sub_10000D764, result[7], @"com.apple.test");
  }

  return result;
}

void sub_10000D764(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    sub_1000242A4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v8 = a1;
  [v8 lock];
  [v8 unlockWithCondition:1];
}

void sub_10000DB0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  ++*(a6 + 24);
  if (*(a6 + 16) == 1)
  {
    v10 = _MDPlistBytesCopyPlistAtIndex();
  }

  else
  {
    v10 = 0;
  }

  v19 = v10;
  v11 = [v10 count];
  if (a4 >= 2)
  {
    v12 = v11;
    v13 = a4;
    for (i = 1; i != v13; ++i)
    {
      v15 = *a6;
      v16 = kCFNull;
      if (v12 > i)
      {
        v17 = [v19 objectAtIndex:i];
        v6 = v17;
        if (v17)
        {
          v16 = v17;
        }

        else
        {
          v16 = kCFNull;
        }
      }

      v18 = [NSNumber numberWithLongLong:*(a3 + 8 * i)];
      [v15 setObject:v16 forKey:v18];

      if (v12 > i)
      {
      }
    }
  }
}

void sub_10000DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s ", va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

id sub_10000DFF8(void *a1, int a2, _OWORD *a3)
{
  v3 = a3[3];
  v7[2] = a3[2];
  v7[3] = v3;
  v4 = a3[5];
  v7[4] = a3[4];
  v7[5] = v4;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return [a1 _syncFinished:a2 != 0 docCounts:v7];
}

id sub_10000E040(void *a1, _OWORD *a2)
{
  v2 = a2[3];
  v6[2] = a2[2];
  v6[3] = v2;
  v3 = a2[5];
  v6[4] = a2[4];
  v6[5] = v3;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return [a1 _preSync:v6];
}

void sub_10000E150(id a1)
{
  SI_PersistentIDStoreGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance[4] = nullsub_5;
  Instance[5] = sub_10000E28C;
  Instance[6] = sub_10000E2F8;
  Instance[7] = sub_10000E364;
  Instance[8] = sub_10000E3B0;
  Instance[9] = sub_10000E43C;
  Instance[10] = sub_10000E444;
  Instance[11] = sub_10000E44C;
  Instance[12] = nullsub_6;
  Instance[13] = nullsub_7;
  Instance[14] = nullsub_8;
  Instance[16] = sub_10000E460;
  Instance[17] = sub_10000E470;
  Instance[18] = sub_10000E4C0;
  Instance[19] = sub_10000E4C8;
  qword_10003CB80 = Instance;
}

char *sub_10000E28C(int a1, uint64_t a2, char *__str)
{
  v3 = __str;
  if (a2 < 3)
  {
    if (a2 == 2)
    {
      strcpy(__str, "/2");
    }

    else
    {
      return 0;
    }
  }

  else
  {
    snprintf(__str, 0x400uLL, "/2/%llu", a2);
  }

  return v3;
}

char *sub_10000E2F8(int a1, uint64_t a2, char *__str)
{
  v3 = __str;
  if (a2 < 3)
  {
    if (a2 == 2)
    {
      strcpy(__str, "/2");
    }

    else
    {
      return 0;
    }
  }

  else
  {
    snprintf(__str, 0x400uLL, "/2/%llu", a2);
  }

  return v3;
}

uint64_t sub_10000E364(int a1, char *__s)
{
  v2 = strrchr(__s, 47);
  if (!v2 || !v2[1])
  {
    return 0;
  }

  v3 = v2 + 1;

  return atoll(v3);
}

uint64_t sub_10000E3B0(int a1, char *__s, uint64_t a3, void *a4, int a5)
{
  result = strrchr(__s, 47);
  if (result)
  {
    if (!*(result + 1))
    {
      return 0;
    }

    v8 = atoll((result + 1));
    v9 = v8;
    if (v8 >= 3)
    {
      *a4 = 2;
      if (a5)
      {
        a4[1] = v8;
        return 2;
      }

      return 1;
    }

    result = 0;
    if (v9 == 2 && a5)
    {
      *a4 = 2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10000E470(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, int *a6)
{
  if (a2 == 2)
  {
    if (a4)
    {
      *a3 = 2;
      goto LABEL_7;
    }

    return 0;
  }

  else
  {
    if (a2 >= 3)
    {
      v6 = 2;
      *a3 = 2;
      if (!a4)
      {
LABEL_8:
        result = 0;
        *a6 = v6;
        return result;
      }

      a3[1] = a2;
LABEL_7:
      v6 = 1;
      goto LABEL_8;
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_10000E4D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_10000EAB0(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:kDADiskDescriptionVolumePathKey];
  bzero(v4, 0x400uLL);
  if ([v1 getFileSystemRepresentation:v4 maxLength:1024])
  {
    v2 = [NSString stringWithUTF8String:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *sub_10000EB78(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:kDADiskDescriptionVolumeUUIDKey];

  if (v1 && (v2 = CFGetTypeID(v1), v2 == CFUUIDGetTypeID()))
  {
    v3 = CFUUIDCreateString(kCFAllocatorDefault, v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10000EBF8(__DADisk *a1, void *a2)
{
  v3 = a2;
  v4 = DADiskCopyDescription(a1);
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:kDADiskDescriptionVolumeNameKey];
  v6 = [(__CFDictionary *)v4 objectForKeyedSubscript:kDADiskDescriptionMediaBSDNameKey];
  v7 = sub_10000EAB0(v4);
  v8 = sub_10000EB78(v4);
  v9 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    v21 = a1;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "collectUUIDsFromDisk %p %@ %@ %@ %@", buf, 0x34u);
  }

  if (v8)
  {
    [v3 addObject:v8];
  }

  else
  {
    v10 = DADiskCopyIOMedia(a1);
    if (v10)
    {
      v11 = v10;
      *buf = 0;
      IORegistryEntryCreateIterator(v10, "IOService", 1u, buf);
      if (*buf)
      {
        v12 = IOIteratorNext(*buf);
        if (v12)
        {
          v13 = v12;
          do
          {
            if (IOObjectConformsTo(v13, "IOMedia"))
            {
              v14 = DADiskCreateFromIOMedia(kCFAllocatorDefault, qword_10003CBA0, v13);
              if (v14)
              {
                v15 = v14;
                sub_10000EBF8(v14, v3);
                CFRelease(v15);
              }
            }

            IOObjectRelease(v13);
            v13 = IOIteratorNext(*buf);
          }

          while (v13);
        }

        IOObjectRelease(*buf);
      }

      IOObjectRelease(v11);
    }

    else if (v7)
    {
      v16 = [qword_10003CB90 indexQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100018064;
      block[3] = &unk_1000356E0;
      v18 = v7;
      v19 = v3;
      dispatch_sync(v16, block);
    }
  }
}

void sub_10000EEC0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [qword_10003CB90 indexerForVolume:{*(*(&v10 + 1) + 8 * v5), v10}];
        v7 = v6;
        if (v6)
        {
          v8 = qword_10003CB90;
          v9 = [v6 path];
          [v8 _closeIndexAtPath:v9];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

void sub_10000F0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F0F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F110(void *a1)
{
  v1 = qword_10003CBE0;
  v2 = a1;
  dispatch_assert_queue_V2(v1);
  [qword_10003CC88 enumerateKeysAndObjectsUsingBlock:v2];
}

void sub_10000F170(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = v7;
  if (!*(a1 + 40) && ![v7 readOnly] || (objc_msgSend(v8, "domain"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "UTF8String"), v9, v10) && !strcmp(v10, *(a1 + 40)))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

id sub_10000F404(void *a1)
{
  v1 = a1;
  dispatch_assert_queue_V2(qword_10003CBE0);
  if (v1)
  {
    v2 = [qword_10003CC88 objectForKeyedSubscript:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10000F470(void *a1, void *a2)
{
  v3 = qword_10003CBE0;
  v4 = a2;
  v5 = a1;
  dispatch_assert_queue_V2(v3);
  [qword_10003CC88 setObject:v5 forKeyedSubscript:v4];
}

uint64_t sub_10000F604(id *a1)
{
  if ([a1[4] count])
  {
    v2 = [a1[5] fpMonitor];
    v3 = [v2 domainsByPath];
    v4 = [v3 count];

    if (!v4)
    {
      v28 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Quitting -- All providers removed", buf, 2u);
      }

      exit(0);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = a1[4];
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v41;
    *&v7 = 138412290;
    v29 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v29;
          v47 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "mount removed: %@", buf, 0xCu);
        }

        if ([v11 length])
        {
          v13 = objc_opt_new();
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10000FA0C;
          v38[3] = &unk_100035338;
          v38[4] = v11;
          v14 = v13;
          v39 = v14;
          sub_10000F110(v38);
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v34 objects:v45 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v35;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v35 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [a1[5] _closeIndexAtPath:{*(*(&v34 + 1) + 8 * j), v29}];
              }

              v17 = [v15 countByEnumeratingWithState:&v34 objects:v45 count:16];
            }

            while (v17);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = a1[6];
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v30 + 1) + 8 * k);
        v26 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "mount added: %@", buf, 0xCu);
        }

        [a1[5] _handleMount:v25 force:0];
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v22);
  }

  [a1[5] queryActiviate];
  return notify_post("com.apple.spotlight.IndexAgent.volumes.changed");
}

void sub_10000FA0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_10000FB08(uint64_t a1)
{
  v2 = +[NSMutableString string];
  v3 = [*(a1 + 32) fpMonitor];
  v4 = [v3 domainsByPath];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        [v2 appendFormat:@"domain: %@ path:%@\n", v11, v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000FD08;
  v15[3] = &unk_100035388;
  v12 = v2;
  v16 = v12;
  sub_10000F110(v15);
  v13 = [v12 dataUsingEncoding:4];
  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, 0, v13);
  }
}

uint64_t sub_100010E10(uint64_t a1)
{
  v2 = 32 * (*(a1 + 64) & 1);
  v14 = xmmword_10002A600;
  v15 = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  if (getattrlist((a1 + 88), &v14, &v11, 0x24uLL, 0))
  {
    v3 = logForCSLogCategoryDefault();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_5:

      goto LABEL_10;
    }

    v4 = *__error();
    *buf = 67109120;
    v17 = v4;
    v5 = "getattrlist error: %d";
    v6 = v3;
    v7 = 8;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v5, buf, v7);
    goto LABEL_5;
  }

  v8 = DWORD1(v12);
  v3 = logForCSLogCategoryDefault();
  v9 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    *buf = 0;
    v5 = "no va_capabilities";
    v6 = v3;
    v7 = 2;
    goto LABEL_4;
  }

  if (v9)
  {
    *buf = 67109120;
    v17 = DWORD1(v11);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "va_capabilities: 0x%x", buf, 8u);
  }

  v2 = v2 & 0xFFFFFF7F | ((BYTE4(v11) & 1) << 7);
LABEL_10:
  if (!strncmp((a1 + 1112), "HFS:", 4uLL))
  {
    return v2 | 0x100;
  }

  if (!strncmp((a1 + 1112), "apfs:", 5uLL))
  {
    return v2 | 0x200;
  }

  return v2;
}

void sub_10001186C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000118C8(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.CoreSpotlight"];
  v2 = [v1 pathForResource:@"schema" ofType:@"mdplist"];
  v3 = v2;
  if (v2)
  {
    v4 = open([v2 UTF8String], 0);
    if (v4 != -1)
    {
      v5 = v4;
      memset(&v8, 0, sizeof(v8));
      if (!fstat(v4, &v8))
      {
        v6 = mmap(0, v8.st_size, 1, 1, v5, 0);
        if (v6 != -1)
        {
          v7 = v6;
          qword_10003CBB0 = _MDPlistContainerCreateWithBytes();
          if (!qword_10003CBB0)
          {
            munmap(v7, v8.st_size);
          }
        }
      }

      close(v5);
    }
  }

  if (qword_10003CBB0)
  {
    _MDPlistContainerGetBytes();
    _MDPlistContainerGetLength();
    SISetDefaultSchemaData();
  }

  _SISetFileOptions();
}

void sub_100011A1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Commiting changes for %@", &v5, 0xCu);
    }

    [WeakRetained issueCommit];
  }
}

void sub_100011D80(id a1)
{
  qword_10003CBB8 = dispatch_semaphore_create(4);

  _objc_release_x1();
}

void sub_100011DB8(id a1, NSError *a2)
{
  v2 = a2;
  dispatch_semaphore_signal(qword_10003CBB8);
  v3 = logForCSLogCategoryDefault();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000244FC();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "import complete", v5, 2u);
  }
}

int sub_1000120AC(id a1, FSI *a2, $BE29EE10B35F8D1B495DDC58B4A6E89B *a3, int a4, const void *a5)
{
  if (a4)
  {
    return 2;
  }

  var1 = a3->var1;
  if (var1 == 2)
  {
    rmdir(a3->var3);
  }

  else if (!var1)
  {
    v8 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      var3 = a3->var3;
      v10 = 136315138;
      v11 = var3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "unlink %s", &v10, 0xCu);
    }

    unlink(a3->var3);
  }

  return 0;
}

void sub_100012738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100012768(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  [v1 setQueryTask:0 forID:v2];
}

void sub_1000127CC(uint64_t a1, void *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000245AC();
  }

  v11 = 0;
  if (a3 <= 4)
  {
    switch(a3)
    {
      case 0:
LABEL_14:
        v12 = 0;
        v11 = 0;
        v14 = *(a1 + 96);
        goto LABEL_15;
      case 1:
        v11 = 0;
        if (*(*(*(a1 + 72) + 8) + 24))
        {
          goto LABEL_46;
        }

        v13 = 0;
        v14 = 0;
        v12 = 1;
        goto LABEL_20;
      case 2:
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v11 = 0;
        *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_20:
        if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0 && ([*(a1 + 32) clientCanceled] & 1) == 0)
        {
          v15 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v15, "qid", *(a1 + 80));
          xpc_dictionary_set_uint64(v15, "t", a3);
          v16 = [*(a1 + 40) UTF8String];
          if (v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = "";
          }

          xpc_dictionary_set_string(v15, "pc", v17);
          if (v12)
          {
            v18 = logForCSLogCategoryQuery();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              sub_1000247B4((a1 + 80), v18);
            }
          }

          else
          {
            if (v11)
            {
              xpc_dictionary_set_data(v15, "rd", [v11 bytes], objc_msgSend(v11, "length"));
            }

            else if (v13)
            {
              [CSXPCConnection dictionary:v15 setPlistBytes:a6 forKey:"rd" sizeKey:"rdl"];
              v19 = logForCSLogCategoryQuery();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                sub_100024630();
              }
            }

            if (v14)
            {
              VectorCount = _MDStoreOIDArrayGetVectorCount();
              Vector = _MDStoreOIDArrayGetVector();
              xpc_dictionary_set_data(v15, "od", Vector, 8 * VectorCount);
              v22 = logForCSLogCategoryQuery();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                sub_1000246B4();
              }
            }

            v18 = logForCSLogCategoryQuery();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              sub_100024738((a1 + 80), v18);
            }
          }

          v23 = *(a1 + 48);
          v24 = [*(a1 + 56) queue];
          xpc_connection_send_message_with_reply(v23, v15, v24, &stru_100035500);
        }

        break;
    }
  }

  else
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        *buf = *(a1 + 88);
        v11 = [NSData dataWithBytes:buf length:8];
        v12 = 0;
        v13 = 0;
        v14 = 0;
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    if (a3 == 7)
    {
      v12 = 0;
      v13 = 0;
      v11 = 0;
      v14 = 1;
      goto LABEL_20;
    }

    if (a3 == 8)
    {
      v12 = 0;
      v14 = 0;
LABEL_15:
      v13 = 1;
      goto LABEL_20;
    }
  }

  if (a3 == 1)
  {
    v25 = *(*(a1 + 72) + 8);
    if ((*(v25 + 24) & 1) == 0)
    {
      *(v25 + 24) = 1;
      v26 = [*(a1 + 32) queryTask];
      [v26 finishWithError:0];
      [v26 removeJob:v9];
      v27 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = *(a1 + 80);
        *buf = 67109120;
        *&buf[4] = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Finished qid:%d", buf, 8u);
      }

      [v26 schedule];
    }
  }

LABEL_46:
}

void sub_100012C30(id a1, OS_xpc_object *a2)
{
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "received query reply", v3, 2u);
  }
}

void sub_1000130F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak((v39 - 152));
  _Unwind_Resume(a1);
}

CFTypeRef sub_100013114(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:v5];

  if (!v6)
  {
    if ([v5 isEqualToString:@"kMDItemIsTrashed"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"_FPIsTrashed"))
    {
      v7 = &kCFBooleanTrue;
      if (!*(a1 + 32))
      {
        v7 = &kCFBooleanFalse;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (([v5 isEqualToString:@"kMDItemFileProviderID"] & 1) == 0)
      {
LABEL_12:
        v8 = 0;
        goto LABEL_11;
      }

      v6 = @"com.apple.filesystems.UserFS.FileProvider";
    }
  }

  v8 = CFRetain(v6);
LABEL_11:

  return v8;
}

void sub_1000131EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 80);
    *buf = 67109376;
    v61 = v5;
    v62 = 1024;
    LODWORD(v63) = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Query[%d] found %d items", buf, 0xEu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (([*(a1 + 32) clientCanceled] & 1) == 0 && WeakRetained)
  {
    v43 = WeakRetained;
    Mutable = _MDPlistBytesCreateMutable();
    _MDPlistBytesBeginPlist();
    _MDPlistBytesBeginArray();
    _MDPlistBytesAddNull();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v42 = v3;
    v8 = v3;
    v48 = [v8 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (!v48)
    {
      goto LABEL_65;
    }

    v47 = *v56;
    v44 = v8;
    v46 = a1;
    while (1)
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v56 != v47)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v55 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@":MD:kMDItemPathFromMountPoint", v42}];
        v12 = v11;
        if (v11)
        {
          v49 = i;
          v50 = v11;
          v13 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = *(a1 + 80);
            *buf = 67109378;
            v61 = v14;
            v62 = 2112;
            v63 = v50;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Query[%d] found %@", buf, 0x12u);
          }

          if (!*(a1 + 40))
          {
            v19 = sub_100020E24(v50);
            v12 = v50;
            i = v49;
            if (!v19)
            {
              goto LABEL_63;
            }

LABEL_20:
            if (*(a1 + 105) == 1)
            {
              v20 = [v10 objectForKeyedSubscript:@":MD:_kMDItemOID"];
              v21 = [v20 integerValue];

              if (!v21)
              {
                goto LABEL_61;
              }

              v22 = [v10 objectForKeyedSubscript:@"_kMDItemFileName"];
              if (![v22 length])
              {

                v21 = 0;
LABEL_61:
                i = v49;
                goto LABEL_62;
              }

              v23 = [v10 objectForKeyedSubscript:@":MD:_kMDItemOIDParent"];
              v24 = [v23 integerValue];

              v8 = v44;
              v21 = [v43 identifierForItem:v21 name:v22 parentID:v24];

              i = v49;
              if (!v21)
              {
LABEL_62:

                v12 = v50;
                goto LABEL_63;
              }
            }

            else
            {
              v21 = v12;
            }

            if (!_MDSimpleQueryObjectMatches())
            {
              goto LABEL_62;
            }

            v45 = v21;
            v25 = [v21 UTF8String];
            _MDPlistBytesBeginArray();
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v26 = [*(a1 + 48) fetchAttributes];
            v27 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
            if (!v27)
            {
              goto LABEL_59;
            }

            v28 = v27;
            v29 = *v52;
            while (2)
            {
              v30 = 0;
LABEL_30:
              if (*v52 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v51 + 1) + 8 * v30);
              v32 = [v10 objectForKeyedSubscript:v31];
              if (v32)
              {
                v33 = v32;
                __MDPlistBytesAddObject();

                goto LABEL_42;
              }

              if (([v31 isEqualToString:@"kMDItemFilename"] & 1) != 0 || objc_msgSend(v31, "isEqualToString:", @"FPFilename"))
              {
                v34 = [v10 objectForKeyedSubscript:@"_kMDItemFileName"];
                if (v34)
                {
                  v35 = v34;
                  __MDPlistBytesAddObject();
                }

LABEL_42:
                if (v28 == ++v30)
                {
                  v36 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
                  v28 = v36;
                  if (!v36)
                  {
LABEL_59:

                    _MDPlistBytesEndArray();
                    a1 = v46;
                    v8 = v44;
                    v21 = v45;
                    goto LABEL_61;
                  }

                  continue;
                }

                goto LABEL_30;
              }

              break;
            }

            if (([v31 isEqualToString:@"_FPItemIdentifier"] & 1) != 0 || objc_msgSend(v31, "isEqualToString:", @"_kMDItemExternalID"))
            {
              strlen(v25);
            }

            else if (([v31 isEqualToString:@"_FPParentFileItemID"] & 1) != 0 || objc_msgSend(v31, "isEqualToString:", @"FPParentFileItemID"))
            {
              strchr(v25, 47);
            }

            else
            {
              if (([v31 isEqualToString:@"_FPDomainIdentifier"] & 1) != 0 || objc_msgSend(v31, "isEqualToString:", @"FPDomainIdentifier"))
              {
                __MDPlistBytesAddObject();
                goto LABEL_42;
              }

              if (([v31 isEqualToString:@"kMDItemIsTrashed"] & 1) != 0 || objc_msgSend(v31, "isEqualToString:", @"_FPIsTrashed"))
              {
                _MDPlistBytesAddBoolean();
                goto LABEL_42;
              }

              if (([v31 isEqualToString:@"_FPUserFSUSBFileProviderID"] & 1) == 0 && (objc_msgSend(v31, "isEqualToString:", @"kMDItemFileProviderID") & 1) == 0 && !objc_msgSend(v31, "isEqualToString:", @"kMDItemFileProviderID"))
              {
                _MDPlistBytesAddNull();
                goto LABEL_42;
              }
            }

            _MDPlistBytesAddCString();
            goto LABEL_42;
          }

          v15 = [v50 length];
          v12 = v50;
          i = v49;
          if (v15 > *(a1 + 88))
          {
            v16 = [v50 hasPrefix:*(a1 + 40)];
            v12 = v50;
            if (v16)
            {
              if (*(a1 + 104) != 1)
              {
                goto LABEL_20;
              }

              v17 = [v50 substringFromIndex:*(a1 + 88) + 1];
              v18 = sub_100020E24(v17);

              i = v49;
              v12 = v50;
              if (v18)
              {
                goto LABEL_20;
              }
            }
          }
        }

LABEL_63:
      }

      v48 = [v8 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (!v48)
      {
LABEL_65:

        _MDPlistBytesEndArray();
        _MDPlistBytesEndPlist();
        v37 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v37, "qid", *(a1 + 80));
        xpc_dictionary_set_uint64(v37, "t", 0);
        v38 = [*(a1 + 56) UTF8String];
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = "";
        }

        xpc_dictionary_set_string(v37, "pc", v39);
        [CSXPCConnection dictionary:v37 setPlistBytes:Mutable forKey:"rd" sizeKey:"rdl"];
        v40 = [*(a1 + 32) clientConnection];
        v41 = [*(a1 + 64) queue];
        xpc_connection_send_message_with_reply(v40, v37, v41, &stru_100035568);

        CFRelease(Mutable);
        v3 = v42;
        WeakRetained = v43;
        break;
      }
    }
  }
}

uint64_t sub_100013970(uint64_t a1, int a2)
{
  v4 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 64);
    v17[0] = 67109376;
    v17[1] = v5;
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Query[%d] complete: %d", v17, 0xEu);
  }

  v6 = [*(a1 + 32) searchToken];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) clientCanceled];

    if ((v8 & 1) == 0)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v9, "qid", *(a1 + 64));
      xpc_dictionary_set_uint64(v9, "t", 1uLL);
      v10 = [*(a1 + 40) UTF8String];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = "";
      }

      xpc_dictionary_set_string(v9, "pc", v11);
      v12 = [*(a1 + 32) clientConnection];
      v13 = [*(a1 + 48) queue];
      xpc_connection_send_message_with_reply(v12, v9, v13, &stru_1000355B0);
    }
  }

  v14 = *(a1 + 56);
  v15 = [NSNumber numberWithInteger:*(a1 + 64)];
  [v14 setQueryTask:0 forID:v15];

  return _MDSimpleQueryDeallocate();
}

void sub_100013C18(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 getQueryTaskForID:*(a1 + 32)];
  [v3 setClientCanceled:1];
  [v3 cancel];
}

void sub_100013FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013FE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  switch(a3)
  {
    case 6:
      goto LABEL_4;
    case 1:
      v11 = *(*(a1 + 48) + 8);
      if ((*(v11 + 24) & 1) == 0)
      {
        *(v11 + 24) = 1;
        v12 = [*(a1 + 40) queryTask];
        [v12 finishWithError:0];
        [v12 removeJob:v7];
        [v12 schedule];
        v13 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 56);
          *buf = 134217984;
          v21 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "removing oid: %lld", buf, 0xCu);
        }

        v16 = *(a1 + 56);
        v15 = a1 + 56;
        v17 = *(v15 - 24);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000142C0;
        v18[3] = &unk_1000355F8;
        v18[4] = v16;
        [v17 removeRecordsForIDs:v15 count:1 completionHandler:v18];
      }

      break;
    case 0:
LABEL_4:
      VectorCount = _MDStoreOIDArrayGetVectorCount();
      Vector = _MDStoreOIDArrayGetVector();
      v10 = *(a1 + 32);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000141E0;
      v19[3] = &unk_1000355F8;
      v19[4] = VectorCount;
      [v10 removeRecordsForIDs:Vector count:VectorCount completionHandler:v19];
      break;
  }
}

void sub_1000141E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000248E0();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "removing %lud oids complete", &v7, 0xCu);
  }
}

void sub_1000142C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100024954();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "removing oid: %lld complete", &v7, 0xCu);
  }
}

void sub_100015388(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000249C8();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8[0] = 67109376;
    v8[1] = v6;
    v9 = 2048;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%d] removing oid: %lld complete", v8, 0x12u);
  }
}

void sub_100015478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100024A38();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8[0] = 67109376;
    v8[1] = v6;
    v9 = 2048;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%d] update oid: %lld complete", v8, 0x12u);
  }
}

void sub_100015568(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logForCSLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100024AA8();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8[0] = 67109376;
    v8[1] = v6;
    v9 = 2048;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%d] add oid: %lld complete", v8, 0x12u);
  }
}