uint64_t sub_10010A524(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  v8 = 0;
  while (1)
  {
    v9 = a1(a2, a3, v4);
    v10 = v9;
    if (v9 < 0)
    {
      break;
    }

    if (v9)
    {
      a3 += v9;
      v8 += v9;
      v4 -= v9;
      if (v4)
      {
        continue;
      }
    }

    return v8;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcRead", 82, 37, 0, "pcRead failed");
  return v10;
}

uint64_t sub_10010A5D0(_BYTE *a1, unsigned int a2, int a3)
{
  v6 = malloc(0x40000uLL);
  if (a1)
  {
    memset_s(a1, 0xACuLL, 0, 0xACuLL);
  }

  if (!((((a2 >> 11) & 1) + ((a2 >> 12) & 1) + ((a2 >> 13) & 1) + ((a2 >> 14) & 1)) | (a2 >> 15) & 1))
  {
    goto LABEL_38;
  }

  v19[0] = 0;
  v19[1] = 0;
  memset(&c, 0, sizeof(c));
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  v7 = *a1 & 0xE0 | (a2 >> 11);
  *a1 = *a1 & 0xE0 | (a2 >> 11);
  if ((a2 & 0x800) != 0)
  {
    sub_10010403C(v19);
    LOBYTE(v7) = *a1;
    if ((*a1 & 2) == 0)
    {
LABEL_6:
      if ((v7 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_6;
  }

  j__CC_SHA1_Init(&c);
  LOBYTE(v7) = *a1;
  if ((*a1 & 4) == 0)
  {
LABEL_7:
    if ((v7 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_30:
    CC_SHA384_Init(&v16);
    if ((*a1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_29:
  CC_SHA256_Init(&v17);
  LOBYTE(v7) = *a1;
  if ((*a1 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  if ((v7 & 0x10) != 0)
  {
LABEL_9:
    CC_SHA512_Init(&v15);
  }

LABEL_10:
  v8 = read(a3, v6, 0x40000uLL);
  if (v8 < 0)
  {
LABEL_26:
    v11 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithFD", 44, 102, *v11, "read", *v15.count, *v15.hash, *&v15.hash[2], *&v15.hash[4], *&v15.hash[6], *v15.wbuf, *&v15.wbuf[2], *&v15.wbuf[4], *&v15.wbuf[6], *&v15.wbuf[8], *&v15.wbuf[10], *&v15.wbuf[12], *&v15.wbuf[14], v16.count[0], v16.count[1], v16.hash[0], v16.hash[1], v16.hash[2], v16.hash[3], v16.hash[4], v16.hash[5], v16.hash[6], v16.hash[7], v16.wbuf[0], v16.wbuf[1], v16.wbuf[2], v16.wbuf[3], v16.wbuf[4], v16.wbuf[5], v16.wbuf[6], v16.wbuf[7], v16.wbuf[8], v16.wbuf[9], v16.wbuf[10], v16.wbuf[11], v16.wbuf[12], v16.wbuf[13], v16.wbuf[14], v16.wbuf[15], *v17.count, *v17.hash, *&v17.hash[2], *&v17.hash[4], *&v17.hash[6]);
    v12 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v9 = v8;
  while (v9)
  {
    v10 = *a1;
    if (*a1)
    {
      sub_10010404C(v19, v6, v9);
      v10 = *a1;
      if ((*a1 & 2) == 0)
      {
LABEL_15:
        if ((v10 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else if ((*a1 & 2) == 0)
    {
      goto LABEL_15;
    }

    j__CC_SHA1_Update(&c, v6, v9);
    v10 = *a1;
    if ((*a1 & 4) == 0)
    {
LABEL_16:
      if ((v10 & 8) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_23:
    CC_SHA256_Update(&v17, v6, v9);
    v10 = *a1;
    if ((*a1 & 8) != 0)
    {
LABEL_24:
      CC_SHA384_Update(&v16, v6, v9);
      if ((*a1 & 0x10) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      CC_SHA512_Update(&v15, v6, v9);
      goto LABEL_19;
    }

LABEL_17:
    if ((v10 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_19:
    v9 = read(a3, v6, 0x40000uLL);
    if (v9 < 0)
    {
      goto LABEL_26;
    }
  }

  v13 = *a1;
  if ((*a1 & 1) == 0)
  {
    if ((*a1 & 2) == 0)
    {
      goto LABEL_34;
    }

LABEL_41:
    j__CC_SHA1_Final(a1 + 8, &c);
    v13 = *a1;
    if ((*a1 & 4) != 0)
    {
      goto LABEL_42;
    }

LABEL_35:
    if ((v13 & 8) == 0)
    {
      goto LABEL_36;
    }

LABEL_43:
    CC_SHA384_Final(a1 + 60, &v16);
    if ((*a1 & 0x10) == 0)
    {
      goto LABEL_38;
    }

LABEL_37:
    CC_SHA512_Final(a1 + 108, &v15);
    goto LABEL_38;
  }

  sub_10010409C(a1 + 1, v19);
  v13 = *a1;
  if ((*a1 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_34:
  if ((v13 & 4) == 0)
  {
    goto LABEL_35;
  }

LABEL_42:
  CC_SHA256_Final(a1 + 28, &v17);
  v13 = *a1;
  if ((*a1 & 8) != 0)
  {
    goto LABEL_43;
  }

LABEL_36:
  if ((v13 & 0x10) != 0)
  {
    goto LABEL_37;
  }

LABEL_38:
  v12 = 0;
LABEL_39:
  free(v6);
  return v12;
}

uint64_t sub_10010A8A4(_BYTE *a1, unsigned int a2, char *a3, const char *a4)
{
  if ((sub_1000F4680(v12, 0x400uLL, a3, a4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", 73, 102, 0, "invalid path");
    return 0xFFFFFFFFLL;
  }

  v7 = open(v12, 0);
  if (v7 < 0)
  {
    v10 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", 77, 102, v10, "%s");
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  if ((sub_10010A5D0(a1, a2, v7) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", 79, 102, 0, "computing hashes: %s", a4);
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  close(v8);
  return v9;
}

uint64_t sub_10010A9F0(int a1, unsigned int *a2, unsigned int a3, unsigned __int8 *a4)
{
  result = 0xFFFFFFFFLL;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      *v9.count = 0uLL;
      sub_10010403C(&v9);
      sub_10010404C(&v9, a4, a3);
      sub_10010409C(a2, &v9);
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      memset(&v9, 0, 96);
      j__CC_SHA1_Init(&v9);
      j__CC_SHA1_Update(&v9, a4, a3);
      j__CC_SHA1_Final(a2, &v9);
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        memset(&v9, 0, 104);
        CC_SHA256_Init(&v9);
        CC_SHA256_Update(&v9, a4, a3);
        CC_SHA256_Final(a2, &v9);
        break;
      case 4:
        memset(&v9, 0, sizeof(v9));
        CC_SHA384_Init(&v9);
        CC_SHA384_Update(&v9, a4, a3);
        CC_SHA384_Final(a2, &v9);
        break;
      case 5:
        memset(&v9, 0, sizeof(v9));
        CC_SHA512_Init(&v9);
        CC_SHA512_Update(&v9, a4, a3);
        CC_SHA512_Final(a2, &v9);
        break;
      default:
        return result;
    }
  }

  return 0;
}

uint64_t sub_10010AB90(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 13 > 6)
  {
    return 0;
  }

  else
  {
    return dword_10037C6D0[v1 >> 12];
  }
}

uint64_t sub_10010ABC0(char *__s, char *a2, char *a3, AAHeader header)
{
  if (__s)
  {
    memset_s(__s, 0x48uLL, 0, 0x48uLL);
  }

  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
  }

  if (a3)
  {
    memset_s(a3, 0xACuLL, 0, 0xACuLL);
  }

  FieldCount = AAHeaderGetFieldCount(header);
  if (FieldCount)
  {
    v9 = FieldCount;
    v10 = 0;
    value = 0;
    hash_function = 0;
    do
    {
      FieldKey = AAHeaderGetFieldKey(header, v10);
      if (!__s)
      {
        goto LABEL_34;
      }

      v12 = FieldKey.ikey & 0xFFFFFF;
      if ((FieldKey.ikey & 0xFFFFFF) <= 0x474C45)
      {
        if (v12 == 4475207)
        {
          if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
          {
            *__s |= 2u;
            *(__s + 2) = value;
          }
        }

        else if (v12 == 4475221)
        {
          if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
          {
            *__s |= 1u;
            *(__s + 1) = value;
          }
        }

        else if (v12 == 4476749 && (AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *__s |= 8u;
          *(__s + 4) = value;
        }
      }

      else if ((FieldKey.ikey & 0xFFFFFF) > 0x4D5442)
      {
        if (v12 == 5067843)
        {
          if (AAHeaderGetFieldTimespec(header, v10, (__s + 40)) < 0)
          {
            goto LABEL_34;
          }

          v13 = *__s | 0x20;
          goto LABEL_31;
        }

        if (v12 == 5067853 && (AAHeaderGetFieldTimespec(header, v10, (__s + 56)) & 0x80000000) == 0)
        {
          v13 = *__s | 0x40;
          goto LABEL_31;
        }
      }

      else if (v12 == 4672582)
      {
        if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *__s |= 4u;
          *(__s + 3) = value;
        }
      }

      else if (v12 == 5067842 && (AAHeaderGetFieldTimespec(header, v10, (__s + 24)) & 0x80000000) == 0)
      {
        v13 = *__s | 0x10;
LABEL_31:
        *__s = v13;
      }

LABEL_34:
      if (a3)
      {
        v14 = FieldKey.ikey & 0xFFFFFF;
        if ((FieldKey.ikey & 0xFFFFFF) <= 0x334852)
        {
          if (v14 == 3229779)
          {
            if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 2)
            {
              *a3 |= 2u;
              *(a3 + 8) = *v25;
              *(a3 + 6) = v26;
            }
          }

          else if (v14 == 3295315 && (AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 3)
          {
            *a3 |= 4u;
            v15 = v26;
            *(a3 + 28) = *v25;
            *(a3 + 44) = v15;
          }
        }

        else if (v14 == 3360851)
        {
          if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 4)
          {
            *a3 |= 8u;
            v16 = v26;
            *(a3 + 60) = *v25;
            *(a3 + 76) = v16;
            *(a3 + 92) = v27;
          }
        }

        else if (v14 == 3491923)
        {
          if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 5)
          {
            *a3 |= 0x10u;
            v17 = v26;
            *(a3 + 108) = *v25;
            *(a3 + 124) = v17;
            v18 = v28;
            *(a3 + 140) = v27;
            *(a3 + 156) = v18;
          }
        }

        else if (v14 == 5458755 && (AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 1)
        {
          *a3 |= 1u;
          *(a3 + 1) = *v25;
        }
      }

      if (!a2)
      {
        goto LABEL_84;
      }

      v19 = FieldKey.ikey & 0xFFFFFF;
      if ((FieldKey.ikey & 0xFFFFFF) > 0x524640)
      {
        if (v19 == 5391937)
        {
          if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
          {
            *a2 |= 2u;
            *(a2 + 3) = value;
          }
        }

        else if (v19 == 5523009 && (AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *a2 |= 1u;
          *(a2 + 2) = value;
        }

        goto LABEL_84;
      }

      if (v19 != 4411984)
      {
        if (v19 == 4803654 && (AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *a2 |= 4u;
          *(a2 + 2) = value;
        }

        goto LABEL_84;
      }

      if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
      {
        v20 = *a2;
        *a2 |= 8u;
        if (value > 67)
        {
          switch(value)
          {
            case 'D':
              v21 = 4;
              goto LABEL_83;
            case 'E':
              v21 = 5;
              goto LABEL_83;
            case 'F':
              v21 = 6;
              goto LABEL_83;
          }
        }

        else
        {
          switch(value)
          {
            case 'A':
              v21 = 1;
              goto LABEL_83;
            case 'B':
              v21 = 2;
              goto LABEL_83;
            case 'C':
              v21 = 3;
LABEL_83:
              *(a2 + 1) = v21;
              goto LABEL_84;
          }
        }

        *a2 = v20 & 0xF7;
      }

LABEL_84:
      ++v10;
    }

    while (v9 != v10);
  }

  return 0;
}

uint64_t sub_10010B1BC(char *a1, _BYTE *a2, _BYTE *a3, unsigned int a4, int a5)
{
  memset(&v18, 0, sizeof(v18));
  if (fstat(a5, &v18) < 0)
  {
    v15 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithFD", 217, 102, v15, "fstat");
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    memset_s(a1, 0x48uLL, 0, 0x48uLL);
    v10 = *a1 & 0x80 | a4 & 0x7F;
    *a1 = v10;
    if (a4)
    {
      *(a1 + 1) = v18.st_uid;
      if ((a4 & 2) == 0)
      {
LABEL_5:
        if ((a4 & 8) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_35;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_5;
    }

    *(a1 + 2) = v18.st_gid;
    if ((a4 & 8) == 0)
    {
LABEL_6:
      if ((a4 & 4) == 0)
      {
LABEL_8:
        if ((a4 & 0x30) != 0)
        {
          v17[1] = 0;
          v17[2] = 0;
          memset(v19, 0, sizeof(v19));
          v17[0] = 0x220000000005;
          if (!fgetattrlist(a5, v17, v19, 0x40uLL, 1u) && LODWORD(v19[0]) == 36)
          {
            *(a1 + 40) = *(v19 + 4);
            *(a1 + 24) = *(&v19[1] + 4);
          }

          v10 = *a1;
        }

        if ((v10 & 0x40) != 0)
        {
          *(a1 + 56) = v18.st_mtimespec;
        }

        goto LABEL_15;
      }

LABEL_7:
      *(a1 + 3) = v18.st_flags;
      goto LABEL_8;
    }

LABEL_35:
    *(a1 + 4) = v18.st_mode & 0xFFF;
    if ((a4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
    *a2 = (a4 >> 7) & 0xF | *a2 & 0xF0;
    st_mode = v18.st_mode;
    v12 = v18.st_mode & 0xF000;
    if (v12 == 0x8000)
    {
      if (((a4 >> 7) & 2) == 0 && (a4 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      *&v19[0] = 0;
      v16 = 0;
      LODWORD(v17[0]) = 0;
      if ((ParallelCompressionAFSCGetMetadataFD(a5, v19, v17, &v16) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithFD", 277, 102, 0, "querying AFSC metadata");
        return 0xFFFFFFFFLL;
      }

      v13 = v16;
      *(a2 + 2) = v17[0];
      *(a2 + 3) = v13;
      st_mode = v18.st_mode;
      v12 = v18.st_mode & 0xF000;
    }

    if (v12 != 0x8000 && v12 != 0x4000)
    {
LABEL_25:
      if ((st_mode & 0xF000) == 0x8000 && (*a2 & 8) != 0)
      {
        *(a2 + 1) = sub_1000F59EC(a5);
      }

      goto LABEL_28;
    }

LABEL_23:
    if ((*a2 & 4) != 0)
    {
      *(a2 + 2) = default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
      st_mode = v18.st_mode;
    }

    goto LABEL_25;
  }

LABEL_28:
  if (!a3 || (v18.st_mode & 0xF000) != 0x8000 || (sub_10010A5D0(a3, a4, a5) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithFD", 290, 102, 0, "computing file digests");
  return 0xFFFFFFFFLL;
}

uint64_t sub_10010B4C4(char *a1, _BYTE *a2, _BYTE *a3, unsigned int a4, char *__s, const char *a6)
{
  memset(&v24, 0, sizeof(v24));
  if ((sub_1000F4680(v26, 0x800uLL, __s, a6) & 0x80000000) != 0)
  {
    v17 = "invalid path";
    v18 = 309;
LABEL_36:
    v19 = 0;
LABEL_38:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", v18, 102, v19, v17, v21);
    return 0xFFFFFFFFLL;
  }

  if (lstat(v26, &v24) < 0)
  {
    v19 = *__error();
    v21 = v26;
    v17 = "lstat: %s";
    v18 = 310;
    goto LABEL_38;
  }

  if (a1)
  {
    memset_s(a1, 0x48uLL, 0, 0x48uLL);
    v10 = *a1 & 0x80 | a4 & 0x7F;
    *a1 = v10;
    if (a4)
    {
      *(a1 + 1) = v24.st_uid;
      if ((a4 & 2) == 0)
      {
LABEL_6:
        if ((a4 & 8) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_42;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 2) = v24.st_gid;
    if ((a4 & 8) == 0)
    {
LABEL_7:
      if ((a4 & 4) == 0)
      {
LABEL_9:
        if ((a4 & 0x30) != 0)
        {
          v23[1] = 0;
          v23[2] = 0;
          memset(v25, 0, sizeof(v25));
          v23[0] = 0x220000000005;
          if (!getattrlist(v26, v23, v25, 0x40uLL, 1u) && LODWORD(v25[0]) == 36)
          {
            *(a1 + 40) = *(v25 + 4);
            *(a1 + 24) = *(&v25[1] + 4);
          }

          v10 = *a1;
        }

        if ((v10 & 0x40) != 0)
        {
          *(a1 + 56) = v24.st_mtimespec;
        }

        goto LABEL_16;
      }

LABEL_8:
      *(a1 + 3) = v24.st_flags;
      goto LABEL_9;
    }

LABEL_42:
    *(a1 + 4) = v24.st_mode & 0xFFF;
    if ((a4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_16:
  if (!a2)
  {
    goto LABEL_29;
  }

  memset_s(a2, 0x38uLL, 0, 0x38uLL);
  *a2 = (a4 >> 7) & 0xF | *a2 & 0xF0;
  st_mode = v24.st_mode;
  v12 = v24.st_mode & 0xF000;
  if (v12 == 0x8000)
  {
    if (((a4 >> 7) & 2) == 0 && (a4 & 0x80000000) == 0)
    {
LABEL_24:
      if ((*a2 & 4) != 0)
      {
        *(a2 + 2) = default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
        st_mode = v24.st_mode;
      }

      goto LABEL_26;
    }

    *&v25[0] = 0;
    v22 = 0;
    LODWORD(v23[0]) = 0;
    if ((ParallelCompressionAFSCGetMetadata(v26, v25, v23, &v22) & 0x80000000) == 0)
    {
      v13 = v22;
      *(a2 + 2) = v23[0];
      *(a2 + 3) = v13;
      st_mode = v24.st_mode;
      v12 = v24.st_mode & 0xF000;
      goto LABEL_22;
    }

    v21 = v26;
    v17 = "querying AFSC metadata: %s";
    v18 = 370;
    goto LABEL_36;
  }

LABEL_22:
  if (v12 == 0x8000 || v12 == 0x4000)
  {
    goto LABEL_24;
  }

LABEL_26:
  if ((st_mode & 0xF000) == 0x8000 && (*a2 & 8) != 0)
  {
    *(a2 + 1) = sub_1000F5FF4(v26);
  }

LABEL_29:
  if (!a3 || (v24.st_mode & 0xF000) != 0x8000)
  {
    return 0;
  }

  v14 = open(v26, 0);
  if (v14 < 0)
  {
    v20 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", 384, 102, v20, "open: %s");
  }

  else
  {
    v15 = v14;
    if ((sub_10010A5D0(a3, a4, v14) & 0x80000000) == 0)
    {
      close(v15);
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", 385, 102, 0, "computing file digests: %s", v26);
    close(v15);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10010B878(char *a1, char *__s, const char *a3, char a4)
{
  if ((sub_1000F4680(v44, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 399, 102, 0, "invalid path");
    return 0xFFFFFFFFLL;
  }

  v42[1] = 0;
  v42[2] = 0;
  v42[0] = 5;
  memset(v43, 0, sizeof(v43));
  v6 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    v43[0] = *(a1 + 40);
    v7 = 512;
    HIDWORD(v42[0]) = 512;
    v8 = 16;
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
  if ((*a1 & 0x40) != 0)
  {
LABEL_7:
    v9 = (v43 + v8);
    v10 = *(a1 + 56);
    *v9 = v10;
    v9[1] = v10;
    v8 |= 0x20u;
    v7 |= 0x1400u;
    HIDWORD(v42[0]) = v7;
  }

LABEL_8:
  if ((v6 & 0x10) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v11 = *(a1 + 1);
    if ((v6 & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  *(v43 + v8) = *(a1 + 24);
  v8 += 16;
  HIDWORD(v42[0]) = v7 | 0x2000;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_10:
  v11 = -1;
  if ((v6 & 2) != 0)
  {
LABEL_11:
    v12 = *(a1 + 2);
    goto LABEL_15;
  }

LABEL_14:
  v12 = -1;
LABEL_15:
  memset(&v41, 0, sizeof(v41));
  if (lstat(v44, &v41) < 0)
  {
    v18 = __error();
    if ((a4 & 1) != 0 && *v18 == 13)
    {
      return 0;
    }

    v20 = *__error();
    v21 = 451;
    goto LABEL_33;
  }

  v13 = v41.st_mode & 0xF000;
  if (v13 != 0x4000 && v13 != 40960 && v13 != 0x8000)
  {
    if ((*a1 & 1) != 0 && v11 != v41.st_uid || (v16 = 1, (*a1 & 2) != 0) && v12 != v41.st_gid)
    {
      if (!lchown(v44, v11, v12) || (v22 = __error(), (a4 & 1) != 0) && *v22 == 1)
      {
        v16 = 1;
      }

      else
      {
        v32 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 502, 102, *v32, "%s", v44);
        v16 = 0;
      }
    }

    if ((*a1 & 8) != 0)
    {
      v33 = *(a1 + 4) & 0xFFF;
      if (v33 != (v41.st_mode & 0xFFF))
      {
        if (lchmod(v44, v33))
        {
          v34 = __error();
          if ((a4 & 1) == 0 || *v34 != 1)
          {
            v35 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 507, 102, *v35, "%s", v44);
            v16 = 0;
          }
        }
      }
    }

    if (HIDWORD(v42[0]))
    {
      if (setattrlist(v44, v42, v43, v8, 1u))
      {
        v36 = __error();
        if ((a4 & 1) == 0 || *v36 != 1)
        {
          v37 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 520, 102, *v37, "%s", v44);
          v16 = 0;
        }
      }
    }

    if ((*a1 & 4) != 0)
    {
      v38 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v41.st_flags >> 5) & 1));
      if (v41.st_flags != v38)
      {
        if (lchflags(v44, v38))
        {
          v39 = __error();
          if ((a4 & 1) == 0 || *v39 != 1)
          {
            v40 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 534, 102, *v40, "%s", v44);
            v16 = 0;
          }
        }
      }
    }

    goto LABEL_62;
  }

  v14 = open(v44, 0x200000);
  if (v14 < 0)
  {
    v20 = *__error();
    v21 = 464;
LABEL_33:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", v21, 102, v20, "%s", v44);
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  if ((*a1 & 1) != 0 && v11 != v41.st_uid || (v16 = 1, (*a1 & 2) != 0) && v12 != v41.st_gid)
  {
    if (!fchown(v14, v11, v12) || (v17 = __error(), (a4 & 1) != 0) && *v17 == 1)
    {
      v16 = 1;
    }

    else
    {
      v23 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 468, 102, *v23, "%s", v44);
      v16 = 0;
    }
  }

  if ((*a1 & 8) != 0)
  {
    v24 = *(a1 + 4) & 0xFFF;
    if (v24 != (v41.st_mode & 0xFFF))
    {
      if (fchmod(v15, v24))
      {
        v25 = __error();
        if ((a4 & 1) == 0 || *v25 != 1)
        {
          v26 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 472, 102, *v26, "%s", v44);
          v16 = 0;
        }
      }
    }
  }

  if (HIDWORD(v42[0]))
  {
    if (fsetattrlist(v15, v42, v43, v8, 1u))
    {
      v27 = __error();
      if ((a4 & 1) == 0 || *v27 != 1)
      {
        v28 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 477, 102, *v28, "%s", v44);
        v16 = 0;
      }
    }
  }

  if ((*a1 & 4) != 0)
  {
    v29 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v41.st_flags >> 5) & 1));
    if (v41.st_flags != v29)
    {
      if (fchflags(v15, v29))
      {
        v30 = __error();
        if ((a4 & 1) == 0 || *v30 != 1)
        {
          v31 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 491, 102, *v31, "%s", v44);
          v16 = 0;
        }
      }
    }
  }

  close(v15);
LABEL_62:
  if (v16)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10010BEB4(char *a1, int a2, char a3)
{
  memset(&v44, 0, sizeof(v44));
  if (fstat(a2, &v44) < 0)
  {
    v9 = __error();
    if ((a3 & 1) == 0 || *v9 != 13)
    {
      v10 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 553, 102, *v10, "fstat");
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  v42 = 0;
  v43 = 0;
  v41 = 5;
  memset(v49, 0, sizeof(v49));
  v39 = 0;
  v40 = 0;
  v38 = 5;
  memset(v48, 0, sizeof(v48));
  v6 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    v49[0] = *(a1 + 40);
    v7 = 512;
    HIDWORD(v41) = 512;
    v48[0] = v49[0];
    HIDWORD(v38) = 512;
    v8 = 16;
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  if ((*a1 & 0x40) != 0)
  {
LABEL_9:
    v12 = *(a1 + 56);
    *(v49 + v8) = v12;
    v13 = v8 + 16;
    *(v49 + v13) = v12;
    *(v48 + v8) = v12;
    v8 |= 0x20u;
    v7 |= 0x1400u;
    HIDWORD(v41) = v7;
    *(v48 + v13) = v12;
    HIDWORD(v38) = v7;
  }

LABEL_10:
  if ((v6 & 0x10) != 0)
  {
    v14 = *(a1 + 24);
    *(v49 + v8) = v14;
    *(v48 + v8) = v14;
    v8 += 16;
    v7 |= 0x2000u;
    HIDWORD(v41) = v7;
    HIDWORD(v38) = v7;
  }

  v15 = v7;
  v16 = v8;
  if (v6)
  {
    v17 = *(a1 + 1);
    v15 = v7;
    v16 = v8;
    if (v17 != v44.st_uid)
    {
      *(v49 + v8) = v17;
      v16 = v8 + 4;
      v15 = v7 | 0x8000;
      HIDWORD(v41) = v7 | 0x8000;
    }
  }

  if ((v6 & 2) != 0)
  {
    v18 = *(a1 + 2);
    if (v18 != v44.st_gid)
    {
      *(v49 + v16) = v18;
      v16 += 4;
      v15 |= 0x10000u;
      HIDWORD(v41) = v15;
    }
  }

  if ((v6 & 8) != 0)
  {
    v19 = *(a1 + 4) & 0xFFF;
    if (v19 != (v44.st_mode & 0xFFF))
    {
      *(v49 + v16) = v19;
      v16 += 4;
      v15 |= 0x20000u;
      HIDWORD(v41) = v15;
      *(v48 + v8) = v19;
      v8 += 4;
      v7 |= 0x20000u;
      HIDWORD(v38) = v7;
    }
  }

  if ((v6 & 4) != 0)
  {
    v20 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v44.st_flags >> 5) & 1));
    if (v20 != v44.st_flags)
    {
      *(v49 + v16) = v20;
      v16 += 4;
      v15 |= 0x40000u;
      HIDWORD(v41) = v15;
      *(v48 + v8) = v20;
      v8 += 4;
      HIDWORD(v38) = v7 | 0x40000;
    }
  }

  if (!v15)
  {
    return 0;
  }

  result = fsetattrlist(a2, &v41, v49, v16, 1u);
  if (result)
  {
    v21 = __error();
    if ((a3 & 1) == 0 || *v21 != 1 || (result = fsetattrlist(a2, &v38, v48, v8, 1u), result))
    {
      v22 = __error();
      if ((a3 & 1) != 0 && *v22 == 1)
      {
        return 0;
      }

      if (*a1)
      {
        v23 = *(a1 + 1);
        if ((*a1 & 2) != 0)
        {
LABEL_35:
          v24 = *(a1 + 2);
          if ((*a1 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v23 = -1;
        if ((*a1 & 2) != 0)
        {
          goto LABEL_35;
        }
      }

      v24 = -1;
      if ((*a1 & 1) == 0)
      {
LABEL_40:
        v25 = 1;
        if ((*a1 & 2) == 0 || v24 == v44.st_gid)
        {
LABEL_47:
          if ((*a1 & 8) != 0)
          {
            v28 = *(a1 + 4) & 0xFFF;
            if (v28 != (v44.st_mode & 0xFFF))
            {
              if (fchmod(a2, v28))
              {
                v29 = __error();
                if ((a3 & 1) == 0 || *v29 != 1)
                {
                  v30 = __error();
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 667, 102, *v30, "fchmod");
                  v25 = 0;
                }
              }
            }
          }

          v31 = *a1;
          if ((*a1 & 0x40) != 0)
          {
            v32 = *(a1 + 8);
            v46 = *(a1 + 7);
            v45.tv_sec = v46;
            v47 = v32 / 1000;
            v45.tv_usec = v32 / 1000;
            if (futimes(a2, &v45))
            {
              v33 = __error();
              if ((a3 & 1) == 0 || *v33 != 1)
              {
                v34 = __error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 675, 102, *v34, "futimes");
                v25 = 0;
              }
            }

            v31 = *a1;
          }

          if ((v31 & 4) != 0)
          {
            v35 = *(a1 + 3) & 0xFFFFFFDF | (32 * ((v44.st_flags >> 5) & 1));
            if (v44.st_flags != v35)
            {
              if (fchflags(a2, v35))
              {
                v36 = __error();
                if ((a3 & 1) == 0 || *v36 != 1)
                {
                  v37 = __error();
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 689, 102, *v37, "fchflags");
                  v25 = 0;
                }
              }
            }
          }

          if (v25)
          {
            return 0;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }

LABEL_42:
        if (!fchown(a2, v23, v24) || (v26 = __error(), (a3 & 1) != 0) && *v26 == 1)
        {
          v25 = 1;
        }

        else
        {
          v27 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 663, 102, *v27, "fchown", v38, v39, v40, v41, v42, v43);
          v25 = 0;
        }

        goto LABEL_47;
      }

LABEL_39:
      if (v23 != v44.st_uid)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }
  }

  return result;
}

uint64_t sub_10010C43C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 & 1) != 0 && (*a1)
  {
    v3 = *(a1 + 4) != *(a2 + 4);
    if ((a3 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((a3 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((*a1 & 2) != 0 && *(a1 + 8) != *(a2 + 8))
  {
    v3 |= 2u;
  }

LABEL_9:
  if ((a3 & 8) != 0 && (*a1 & 8) != 0 && *(a1 + 16) != *(a2 + 16))
  {
    v3 |= 8u;
  }

  if ((a3 & 4) != 0 && (*a1 & 4) != 0 && *(a1 + 12) != *(a2 + 12))
  {
    v3 |= 4u;
  }

  if ((a3 & 0x40) != 0 && (*a1 & 0x40) != 0)
  {
    v4 = *(a1 + 56) - *(a2 + 56);
    if ((v4 - 2) < 0xFFFFFFFFFFFFFFFDLL || (*(a1 + 64) + 1000000000 * v4 - *(a2 + 64) + 2000) >= 0xFA1)
    {
      v3 |= 0x40u;
    }
  }

  if ((a3 & 0x10) != 0 && (*a1 & 0x10) != 0)
  {
    v5 = *(a1 + 24) - *(a2 + 24);
    if ((v5 - 2) < 0xFFFFFFFFFFFFFFFDLL || (*(a1 + 32) + 1000000000 * v5 - *(a2 + 32) + 2000) >= 0xFA1)
    {
      v3 |= 0x10u;
    }
  }

  if ((a3 & 0x20) != 0 && (*a1 & 0x20) != 0)
  {
    v6 = *(a1 + 40) - *(a2 + 40);
    if ((v6 - 2) < 0xFFFFFFFFFFFFFFFDLL || (*(a1 + 48) + 1000000000 * v6 - *(a2 + 48) + 2000) >= 0xFA1)
    {
      v3 |= 0x20u;
    }
  }

  return v3;
}

uint64_t sub_10010C5B0(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0 && (*a1 & 2) != 0)
  {
    v3 = (*(a1 + 12) != *(a2 + 12)) << 8;
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((*a1 & 1) != 0 && *(a1 + 8) != *(a2 + 8))
  {
    v3 |= 0x80u;
  }

LABEL_9:
  if ((a3 & 0x200) != 0 && (*a1 & 4) != 0 && *(a1 + 16) != *(a2 + 16))
  {
    v3 |= 0x200u;
  }

  if ((a3 & 0x400) != 0 && (*a1 & 8) != 0 && *(a1 + 4) != *(a2 + 4))
  {
    v3 |= 0x400u;
  }

  return v3;
}

uint64_t sub_10010C644(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (a3 & 0x800) != 0 && (*a1)
  {
    v6 = (*(a1 + 4) != *(a2 + 4)) << 11;
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((*a1 & 2) != 0 && *(a1 + 8) ^ *(a2 + 8) | *(a1 + 16) ^ *(a2 + 16) | (*(a1 + 24) ^ *(a2 + 24)))
  {
    v6 |= 0x1000u;
  }

LABEL_9:
  if ((a3 & 0x2000) != 0 && (*a1 & 4) != 0 && *(a1 + 28) ^ *(a2 + 28) | *(a1 + 36) ^ *(a2 + 36) | *(a1 + 44) ^ *(a2 + 44) | *(a1 + 52) ^ *(a2 + 52))
  {
    v6 |= 0x2000u;
  }

  if ((a3 & 0x4000) != 0 && (*a1 & 8) != 0 && memcmp((a1 + 60), (a2 + 60), 0x30uLL))
  {
    v6 |= 0x4000u;
  }

  if (a3 < 0 && (*a1 & 0x10) != 0 && memcmp((a1 + 108), (a2 + 108), 0x40uLL))
  {
    v6 |= 0x8000u;
  }

  return v6;
}

uint64_t sub_10010C798(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6, char *__s, const char *a8, uint64_t a9)
{
  v82 = 0;
  memset(v81, 0, sizeof(v81));
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  memset(v84, 0, 172);
  if ((sub_1000F4680(v83, 0x800uLL, __s, a8) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 781, 102, 0, "invalid path: %s", a8);
    v25 = 0;
    v38 = 0;
    v48 = 0;
    v57 = 0xFFFFFFFFLL;
    goto LABEL_84;
  }

  v67 = a6;
  v68 = a3;
  v71 = a1;
  v17 = *a1;
  v73 = a2;
  v18 = *a2;
  v19 = *a3;
  v20 = *a4;
  v21 = AAEntryXATBlobCreate();
  v22 = AAEntryACLBlobCreate();
  v24 = v22;
  xat = v21;
  if (!v21 || !v22)
  {
    v58 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 808, 102, *v58, "malloc");
    v25 = 0;
    v57 = 0xFFFFFFFFLL;
    a6 = v67;
    v38 = v24;
LABEL_83:
    v48 = xat;
    goto LABEL_84;
  }

  v25 = 0;
  v26 = 0;
  v23.i16[0] = v20;
  v23.i16[1] = v18;
  v27 = vmovl_u16((*&vshl_u16(vzip1_s16(v23, vdup_lane_s16(v23, 1)), 0xFFFDFFFEFFFFFFFELL) & 0xFF01FF01FF01FF01));
  v28.i64[0] = v27.u32[0];
  v28.i64[1] = v27.u32[1];
  v29.i64[0] = 255;
  v29.i64[1] = 255;
  v30 = vandq_s8(v28, v29);
  v28.i64[0] = v27.u32[2];
  v28.i64[1] = v27.u32[3];
  v31 = vshlq_u64(vandq_s8(v28, v29), xmmword_10037C6B0);
  *v29.i8 = vdup_n_s32(v19);
  v32 = vshl_u32(*v29.i8, 0xFFFFFFFCFFFFFFFELL);
  v33 = vorrq_s8(vshlq_u64(v30, xmmword_10037C6C0), v31);
  v34 = *&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | (((v20 >> 1) & 1) << 17);
  v29.i32[0] &= 0xFFFFFF01;
  v29.i32[1] = (v19 >> 3) & 0xFFFFFF01;
  *v33.i8 = vorr_s8(vshl_u32(*v29.i8, 0xE0000000BLL), vshl_u32((*&v32 & 0xFFFFFF01FFFFFF01), 0xF0000000DLL));
  v35 = (v17 & 0x7F | ((v18 & 1) << 7) | (((v19 >> 1) & 1) << 12) & 0xFFFFFFFFFFFEFFFFLL | ((v20 & 1) << 16) | (v33.i16[0] | v33.i16[2]) & 0xF800 | v34 | 0x80000) & a5;
  if (v35 >= 0x80000)
  {
    v36 = v35;
  }

  else
  {
    v36 = v35 & 0x607FF;
  }

  v37 = 1;
  v38 = v22;
  *v69 = v22;
  while (1)
  {
    v39 = v26;
    if ((v36 & 0x20000) != 0 && (sub_10010E2A0(xat, __s, a8) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 813, 102, 0, "loading file XAT: %s");
      goto LABEL_76;
    }

    if ((v36 & 0x40000) != 0 && (sub_100111C50(v38, __s, a8, a9) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 814, 102, 0, "loading file ACL: %s");
LABEL_76:
      v57 = 0xFFFFFFFFLL;
LABEL_77:
      a6 = v67;
      goto LABEL_83;
    }

    if ((sub_10010B4C4(v81, v79, v84, v36, __s, a8) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 815, 102, 0, "loading file attributes: %s");
      goto LABEL_76;
    }

    v70 = sub_10010C43C(v81, v71, v36);
    v40 = sub_10010C5B0(v79, v73, v36) | v70;
    v25 = sub_10010C644(v84, v68, v36) ? v40 | 0x80000 : v40;
    if ((v36 & 0x20000) != 0)
    {
      if (*(a4 + 4))
      {
        if (AAEntryXATBlobGetEncodedSize(xat) == *(a4 + 4))
        {
          EncodedData = AAEntryXATBlobGetEncodedData(xat);
          v42 = (memcmp(EncodedData, *(a4 + 3), *(a4 + 4)) != 0) << 17;
        }

        else
        {
          v42 = 0x20000;
        }

        v25 = v42 | v25 & 0xFFFDFFFF;
        if ((v36 & 0x40000) == 0)
        {
LABEL_18:
          if ((v36 & 0x10000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v25 = v25 & 0xFFFDFFFF | ((AAEntryXATBlobGetEntryCount(xat) != 0) << 17);
        if ((v36 & 0x40000) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else if ((v36 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    if (*(a4 + 6))
    {
      if (AAEntryACLBlobGetEncodedSize(v38) == *(a4 + 6))
      {
        v43 = AAEntryACLBlobGetEncodedData(v38);
        v44 = (memcmp(v43, *(a4 + 5), *(a4 + 6)) != 0) << 18;
      }

      else
      {
        v44 = 0x40000;
      }

      v25 = v44 | v25 & 0xFFFBFFFF;
      if ((v36 & 0x10000) == 0)
      {
LABEL_38:
        if (v25)
        {
          goto LABEL_39;
        }

        v57 = 0;
        goto LABEL_82;
      }
    }

    else
    {
      v25 = v25 & 0xFFFBFFFF | ((AAEntryACLBlobGetEntryCount(v38) != 0) << 18);
      if ((v36 & 0x10000) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_34:
    memset(&v78, 0, sizeof(v78));
    v45 = open(v83, 0);
    if (v45 < 0)
    {
      v59 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 838, 102, v59, "open: %s");
LABEL_81:
      v57 = 0xFFFFFFFFLL;
LABEL_82:
      a6 = v67;
      v38 = *v69;
      goto LABEL_83;
    }

    v46 = v45;
    if (fstat(v45, &v78) < 0)
    {
      v60 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 839, 102, *v60, "fstat: %s", v83);
      close(v46);
      goto LABEL_81;
    }

    v47 = ParallelArchiveECCVerifyFileSegment(v46, 0, v78.st_size, *(a4 + 1), *(a4 + 2));
    close(v46);
    if (v47 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 842, 102, 0, "verifying data: %s");
      goto LABEL_81;
    }

    if (v47)
    {
      goto LABEL_38;
    }

    v25 |= 0x80000u;
LABEL_39:
    v38 = *v69;
    if (v39 & 1 | ((a9 & 0x20000000000000) == 0) & v37)
    {
      v57 = 0;
      goto LABEL_77;
    }

    v48 = xat;
    if ((v36 & 0x10000) == 0 || (v25 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    v77 = 0;
    v75 = 0;
    v76 = -1;
    if ((ParallelCompressionAFSCGetMetadata(v83, &v77, &v76, &v75) & 0x80000000) != 0)
    {
      v62 = "get AFSC attributes";
      v63 = 861;
      goto LABEL_89;
    }

    memset(&v78, 0, sizeof(v78));
    v49 = open(v83, 2);
    if ((v49 & 0x80000000) != 0)
    {
      v64 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 866, 102, v64, "open: %s");
      goto LABEL_90;
    }

    v50 = v49;
    if (fstat(v49, &v78) < 0)
    {
      break;
    }

    memset(v74, 0, sizeof(v74));
    v51 = ParallelArchiveECCFixFileSegment(v50, 0, v78.st_size, *(a4 + 1), *(a4 + 2), v74);
    close(v50);
    if (v51 >= 1)
    {
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 871, 102, "Fixed data using ECC: %s", v52, v53, v54, a8);
    }

    ParallelCompressionAFSCFixupMetadata(v83, v76, v75);
    v38 = *v69;
LABEL_48:
    if ((v25 & 0x184) != 0)
    {
      if ((*v71 & 4) != 0)
      {
        v55 = ((*(v71 + 3) >> 5) & 1) - 1;
      }

      else
      {
        v55 = -1;
      }

      if (*v73)
      {
        v55 = *(v73 + 2);
      }

      if ((*v73 & 2) != 0)
      {
        v56 = *(v73 + 3);
      }

      else
      {
        v56 = 0;
      }

      ParallelCompressionAFSCFixupMetadata(v83, v55, v56);
    }

    if ((v25 & 0x200) != 0)
    {
      sub_1000F5A94(v83, *(v73 + 2));
    }

    if ((v25 & 0x20000) != 0)
    {
      if ((sub_10010DEF4(xat, *(a4 + 3), *(a4 + 4)) & 0x80000000) != 0)
      {
        v62 = "invalid XAT blob in manifest";
        v63 = 902;
        goto LABEL_89;
      }

      AAEntryXATBlobApplyToPath(xat, __s, a8, a9 | 8);
    }

    if ((v25 & 0x40000) != 0)
    {
      if ((sub_1001117B8(v38, *(a4 + 5), *(a4 + 6)) & 0x80000000) == 0)
      {
        AAEntryACLBlobApplyToPath(v38, __s, a8, a9 | 8);
        goto LABEL_66;
      }

      v62 = "invalid ACL blob in manifest";
      v63 = 909;
LABEL_89:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", v63, 102, 0, v62, v66);
      goto LABEL_90;
    }

LABEL_66:
    v37 = 0;
    v26 = 1;
    if (v70)
    {
      sub_10010B878(v71, __s, a8, a9);
      v37 = 0;
      v26 = 1;
    }
  }

  v65 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 867, 102, *v65, "fstat: %s", v83);
  close(v50);
LABEL_90:
  v57 = 0xFFFFFFFFLL;
  a6 = v67;
LABEL_84:
  *a6 = v25;
  a6[1] = 0;
  AAEntryXATBlobDestroy(v48);
  AAEntryACLBlobDestroy(v38);
  return v57;
}

uint64_t sub_10010D058(const char *a1, const char *a2, char a3)
{
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  *v41 = 0u;
  memset(&v40, 0, sizeof(v40));
  v6 = open(a1, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    if (fstat(v6, &v40) < 0)
    {
      v18 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 948, 102, v18, "stat: %s");
    }

    else if ((v40.st_mode & 0xF000) == 0x8000)
    {
      if ((sub_10010B1BC(v45, v41, 0, 0xFFFFFFFF, v7) & 0x80000000) == 0)
      {
        v8 = AAEntryXATBlobCreate();
        v9 = v8;
        if (v8 && (sub_10010E3F0(v8, v7) & 0x80000000) == 0)
        {
          v10 = AAEntryACLBlobCreate();
          v11 = v10;
          if (!v10 || (sub_100111DB0(v10, v7, 0) & 0x80000000) != 0)
          {
            v21 = "get ACL";
            v22 = 954;
            v23 = 0;
          }

          else if (clonefile(a1, a2, 0))
          {
            if ((v41[0] & 8) != 0 && v41[1] >= 1 && (v12 = open_dprotected_np(a2, 1537, v41[1], 0, 420), (v12 & 0x80000000) == 0) || (v12 = open(a2, 1537, 420), (v12 & 0x80000000) == 0))
            {
              v13 = v12;
              if (v40.st_size)
              {
                v14 = malloc(0x40000uLL);
                if (!v14)
                {
                  v15 = __error();
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 980, 102, *v15, "malloc");
                }

                if (sub_1000F5A84(v40.st_flags))
                {
                  v16 = fgetxattr(v7, "com.apple.decmpfs", v14, 0x40000uLL, 0, 32);
                  if ((v16 & 0x8000000000000000) != 0)
                  {
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 988, 102, 0, "Missing decmpfs xattr");
                    goto LABEL_64;
                  }

                  if (v16 > 0x40000)
                  {
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 989, 102, 0, "invalid decmpfs xattr size");
LABEL_64:
                    close(v7);
                    close(v13);
LABEL_65:
                    unlink(a2);
                    goto LABEL_29;
                  }

                  if (fsetxattr(v13, "com.apple.decmpfs", v14, v16, 0, 0) < 0)
                  {
                    v38 = *__error();
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 990, 102, v38, "fsetxattr decmpfs");
                    goto LABEL_64;
                  }

                  v33 = fgetxattr(v7, "com.apple.ResourceFork", 0, 0, 0, 32);
                  if (v33 >= 1)
                  {
                    v34 = v33;
                    v35 = 0;
                    while (1)
                    {
                      if (v34 - v35 >= 0x40000)
                      {
                        v36 = 0x40000;
                      }

                      else
                      {
                        v36 = v34 - v35;
                      }

                      v37 = fgetxattr(v7, "com.apple.ResourceFork", v14, v36, v35, 32);
                      if (v37 < 0)
                      {
                        v26 = "read resource fork";
                        v27 = 1000;
                        goto LABEL_46;
                      }

                      if (v37 != v36)
                      {
                        v26 = "truncated read resource fork";
                        v27 = 1001;
                        goto LABEL_46;
                      }

                      if (fsetxattr(v13, "com.apple.ResourceFork", v14, v36, v35, 0) < 0)
                      {
                        break;
                      }

                      v35 += v36;
                      if (v35 >= v34)
                      {
                        goto LABEL_76;
                      }
                    }

                    v28 = *__error();
                    v26 = "write resource fork";
                    v27 = 1002;
                    goto LABEL_47;
                  }

LABEL_76:
                  if (fchflags(v13, 0x20u) < 0)
                  {
                    v26 = "set UF_COMPRESSED";
                    v27 = 1008;
                    goto LABEL_46;
                  }
                }

                else
                {
                  st_size = v40.st_size;
                  if (v40.st_size >= 1)
                  {
                    while (1)
                    {
                      if (st_size >= 0x40000)
                      {
                        v30 = 0x40000;
                      }

                      else
                      {
                        v30 = st_size;
                      }

                      v31 = read(v7, v14, v30);
                      if (v31 < 0)
                      {
                        v28 = *__error();
                        v26 = "read";
                        v27 = 1034;
                        goto LABEL_47;
                      }

                      if (v31 != v30)
                      {
                        v26 = "truncated read";
                        v27 = 1035;
                        goto LABEL_46;
                      }

                      v32 = write(v13, v14, v30);
                      if (v32 < 0)
                      {
                        v28 = *__error();
                        v26 = "write";
                        v27 = 1037;
                        goto LABEL_47;
                      }

                      if (v32 != v30)
                      {
                        break;
                      }

                      st_size -= v30;
                      if (st_size < 1)
                      {
                        goto LABEL_38;
                      }
                    }

                    v26 = "truncated write";
                    v27 = 1038;
                    goto LABEL_46;
                  }
                }

LABEL_38:
                if ((sub_10010BEB4(v45, v13, a3) & 0x80000000) == 0 && (sub_10010EABC(v9, v13, a3) & 0x80000000) == 0 && (sub_1001126B4(v11, v13, a3) & 0x80000000) == 0)
                {
                  v25 = 0;
                  v19 = 1;
                  if ((v41[0] & 4) != 0 && v42)
                  {
                    if ((sub_1000F5A94(v13, v42) & 0x80000000) != 0)
                    {
                      v26 = "setting internal attributes";
                      v27 = 1055;
                      goto LABEL_46;
                    }

                    v25 = 0;
                  }

LABEL_48:
                  close(v7);
                  if ((v13 & 0x80000000) != 0)
                  {
                    goto LABEL_30;
                  }

                  close(v13);
                  if (!v25)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_65;
                }

                v26 = "setting attributes";
                v27 = 1050;
LABEL_46:
                v28 = 0;
LABEL_47:
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v27, 102, v28, v26);
                v19 = 0;
                v25 = 1;
                goto LABEL_48;
              }

LABEL_37:
              v14 = 0;
              goto LABEL_38;
            }

            v23 = *__error();
            v39 = a2;
            v21 = "open: %s";
            v22 = 972;
          }

          else
          {
            v24 = open(a2, 0, 420);
            if ((v24 & 0x80000000) == 0)
            {
              v13 = v24;
              goto LABEL_37;
            }

            v23 = *__error();
            v39 = a2;
            v21 = "open: %s";
            v22 = 961;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v22, 102, v23, v21, v39);
          goto LABEL_28;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 952, 102, 0, "get XAT");
LABEL_27:
        v11 = 0;
LABEL_28:
        close(v7);
        v14 = 0;
        goto LABEL_29;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 950, 102, 0, "get attributes");
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 949, 102, 0, "not a regular file: %s");
    }

    v9 = 0;
    goto LABEL_27;
  }

  v17 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 947, 102, *v17, "open: %s", a1);
  v14 = 0;
  v11 = 0;
  v9 = 0;
LABEL_29:
  v19 = 0;
LABEL_30:
  AAEntryXATBlobDestroy(v9);
  AAEntryACLBlobDestroy(v11);
  free(v14);
  if (v19)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *sub_10010D7B4(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  v8 = malloc(0x38uLL);
  v9 = v8;
  if (!v8)
  {
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "aaAsyncByteStreamAlloc", 191, 97, *v13, "malloc");
    return v9;
  }

  memset_s(v8, 0x38uLL, 0, 0x38uLL);
  *v9 = a1;
  v9[1] = a2;
  if (a3)
  {
    v10 = malloc(0x70uLL);
    v11 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

    memset_s(v10, 0x70uLL, 0, 0x70uLL);
    v12 = a3 >= 1 ? a3 : 5;
    *(v11 + 24) = v12;
    *(v11 + 100) = vbsl_s8(vclez_f32(__PAIR64__(LODWORD(a5), LODWORD(a4))), 0x40A0000041200000, __PAIR64__(LODWORD(a5), LODWORD(a4)));
    *(v11 + 10) = -1;
    *(v11 + 11) = -1;
    if ((pthread_mutex_init(v11, 0) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    free(v11);
  }

  v11 = 0;
LABEL_10:
  v9[6] = v11;
  return v9;
}

uint64_t AAAsyncByteStreamGetRange(void *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v3(*a1);
  v8 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = a1[6];
  if (v7)
  {
    if (!v9)
    {
      return v8;
    }

    v10 = *a2;
    v11 = *a3;
    if (pthread_mutex_lock(v9) < 0)
    {
      v30 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 64, 97, v30, "mutex lock");
      return v8;
    }

    v15 = *(v9 + 80);
    if (!v10)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 68, 97, "Async stream returning EOF, but we still have ranges in flight", v12, v13, v14);
      }

      goto LABEL_50;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = *(v9 + 72);
      v17 = *(v9 + 80);
      do
      {
        v18 = (v16 + 40 * v17);
        if (v18[1] == v11 && *v18 == v10)
        {
          goto LABEL_50;
        }

        v17 = *(v16 + 40 * v17 + 32);
      }

      while ((v17 & 0x8000000000000000) == 0);
    }

    v19 = *(v9 + 88);
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    v35 = *(v9 + 64);
    if (v35)
    {
      v36 = 2 * v35;
    }

    else
    {
      v36 = 32;
    }

    if (40 * v36 < 0x2000000001)
    {
      v37 = *(v9 + 72);
      v38 = realloc(v37, 40 * v36);
      if (v38)
      {
        *(v9 + 72) = v38;
        v19 = *(v9 + 64);
        if (v19 < v36)
        {
          v39 = v19 + 1;
          for (i = 40 * v19; ; i += 40)
          {
            v41 = &v38[i];
            if (v38)
            {
              memset_s(&v38[i], 0x28uLL, 0, 0x28uLL);
            }

            v42 = v36 == v39 ? -1 : v39;
            *(v41 + 4) = v42;
            if (v36 == v39)
            {
              break;
            }

            v38 = *(v9 + 72);
            ++v39;
          }

          v19 = *(v9 + 64);
        }

        *(v9 + 64) = v36;
        v15 = *(v9 + 80);
LABEL_13:
        v20 = *(v9 + 72) + 40 * v19;
        v21 = *(v20 + 32);
        *(v20 + 32) = v15;
        *(v9 + 80) = v19;
        *(v9 + 88) = v21;
        *v20 = v10;
        *(v20 + 8) = v11;
        *(v20 + 16) = *(v9 + 96) - 1;
        v22 = *(v9 + 100) + vcvtd_n_f64_u64(v10, 0x14uLL) * *(v9 + 104);
        *(v20 + 24) = sub_1000F4248() + v22;
        goto LABEL_50;
      }

      free(v37);
    }

    else
    {
      *__error() = 12;
    }

    *(v9 + 72) = 0;
    v45 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 84, 97, *v45, "malloc");
    *(v9 + 64) = 0;
    *(v9 + 80) = -1;
    *(v9 + 88) = -1;
LABEL_50:
    if (pthread_mutex_unlock(v9) < 0)
    {
      v46 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 108, 97, v46, "mutex unlock");
    }

    return v8;
  }

  if (!v9)
  {
    return 0;
  }

  if (pthread_mutex_lock(v9) < 0)
  {
    v31 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 149, 97, v31, "mutex lock");
    return 0xFFFFFFFFLL;
  }

  v26 = sub_1000F4248();
  v27 = *(v9 + 80);
  if (v27 < 0)
  {
LABEL_20:
    v8 = 0;
  }

  else
  {
    v28 = *(v9 + 72);
    while (1)
    {
      v29 = v28 + 40 * v27;
      if (*(v29 + 24) < v26)
      {
        break;
      }

      v27 = *(v28 + 40 * v27 + 32);
      if (v27 < 0)
      {
        goto LABEL_20;
      }
    }

    v32 = *(v29 + 16);
    if (v32 <= 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 159, 97, 0, "Async stream range timed out (FAIL): %zu bytes at %llu", *v29, *(v29 + 8));
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v33 = *v29;
      v34 = *(v29 + 8);
      *(v29 + 24) = v26 + *(v9 + 100) + vcvtd_n_f64_u64(*v29, 0x14uLL) * *(v9 + 104);
      *(v29 + 16) = v32 - 1;
      *a2 = v33;
      *a3 = v34;
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 170, 97, "Async stream range timed out (retry): %zu bytes at %llu", v23, v24, v25, v33, v34);
      v8 = 1;
    }
  }

  if (pthread_mutex_unlock(v9) < 0)
  {
    v43 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 177, 97, v43, "mutex unlock");
    return 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t AAAsyncByteStreamProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    v8 = a1[6];
    if (v8)
    {
      if (pthread_mutex_lock(a1[6]) < 0)
      {
        v19 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", 116, 97, v19, "mutex lock");
      }

      else
      {
        v12 = (v8 + 80);
        v13 = *(v8 + 80);
        if (v13 < 0)
        {
LABEL_10:
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", 128, 97, "Async stream receiving an unknown segment", v9, v10, v11);
        }

        else
        {
          v14 = *(v8 + 72);
          v15 = -1;
          while (1)
          {
            v16 = v13;
            v17 = (v14 + 40 * v13);
            if (v17[1] == a4 && *v17 == a3)
            {
              break;
            }

            v13 = *(v14 + 40 * v16 + 32);
            v15 = v16;
            if (v13 < 0)
            {
              goto LABEL_10;
            }
          }

          v20 = v14 + 40 * v15 + 32;
          if (v15 >= 0)
          {
            v12 = v20;
          }

          *v12 = v17[4];
          v17[4] = *(v8 + 88);
          *(v8 + 88) = v16;
        }

        if (pthread_mutex_unlock(v8) < 0)
        {
          v21 = *__error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", 140, 97, v21, "mutex unlock");
        }
      }
    }
  }

  v22 = a1[3];
  v23 = *a1;

  return v22(v23, a2, a3, a4);
}

void *AAAsyncByteStreamCancel(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return v1(*result);
  }

  return result;
}

uint64_t AAAsyncByteStreamClose(uint64_t (**a1)(void))
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    v2 = a1[1]();
    *a1 = 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    free(*(v3 + 9));
    pthread_mutex_destroy(v3);
    free(v3);
  }

  free(a1);
  return v2;
}

uint64_t sub_10010DEDC(void *a1)
{
  v1 = a1[5];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010DEF4(unint64_t *a1, char *__src, rsize_t __smax)
{
  *a1 = 0;
  a1[3] = 0;
  v3 = a1 + 3;
  if (!__smax)
  {
    return 0;
  }

  if (__smax < 4)
  {
    goto LABEL_3;
  }

  v8 = 0;
  v9 = 1;
  while (2)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *&__src[v11];
      if (v12 < 4)
      {
        goto LABEL_3;
      }

      v13 = __CFADD__(v12, v11);
      v14 = v12 + v11;
      if (v13 || v14 > __smax)
      {
        goto LABEL_3;
      }

      if (v8)
      {
        v15 = a1[2];
        v16 = (*a1)++;
        *(v15 + 8 * v16) = v11;
        if (v14 >= __smax)
        {
          goto LABEL_42;
        }

        ++v10;
        goto LABEL_14;
      }

      ++v10;
      if (v14 >= __smax)
      {
        break;
      }

LABEL_14:
      v11 = v14;
      if (v14 + 4 > __smax)
      {
        goto LABEL_3;
      }
    }

    if (v9)
    {
      if (v10 <= 0xFFFFFFFE)
      {
        v17 = a1[1];
        if (v17 >= v10)
        {
          goto LABEL_28;
        }

        v18 = a1[1];
        do
        {
          if (v18)
          {
            v18 *= 2;
          }

          else
          {
            v18 = 16;
          }
        }

        while (v18 < v10);
        if (v18 <= v17)
        {
LABEL_28:
          if ((__smax & 0x8000000000000000) == 0)
          {
            v21 = a1[4];
            if (v21 >= __smax)
            {
              goto LABEL_40;
            }

            do
            {
              while (!v21)
              {
                v21 = 0x4000;
                v23 = 0x4000;
                if (__smax <= 0x4000)
                {
                  goto LABEL_38;
                }
              }

              v22 = v21 >> 1;
              if ((v21 & (v21 >> 1)) != 0)
              {
                v22 = v21 & (v21 >> 1);
              }

              v21 += v22;
            }

            while (v21 < __smax);
            v23 = v21;
            if (v21 >= 0x2000000001)
            {
              *__error() = 12;
            }

            else
            {
LABEL_38:
              v24 = a1[5];
              v25 = realloc(v24, v23);
              if (v25)
              {
                a1[4] = v23;
                a1[5] = v25;
LABEL_40:
                v9 = 0;
                v8 = 1;
                if (__smax < 4)
                {
                  goto LABEL_3;
                }

                continue;
              }

              free(v24);
            }

            *v3 = 0;
            v3[1] = 0;
            v3[2] = 0;
          }
        }

        else
        {
          a1[1] = v18;
          if (8 * v18 >= 0x2000000001)
          {
            *__error() = 12;
          }

          else
          {
            v19 = a1[2];
            v20 = realloc(v19, 8 * v18);
            if (v20)
            {
              a1[2] = v20;
              goto LABEL_28;
            }

            free(v19);
          }

          a1[2] = 0;
        }
      }

LABEL_3:
      *a1 = 0;
      a1[3] = 0;
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithEncodedData", 72, 104, 0, "invalid XAT blob");
      goto LABEL_4;
    }

    break;
  }

LABEL_42:
  *v3 = 0;
  if ((__smax & 0x8000000000000000) != 0)
  {
    goto LABEL_3;
  }

  v26 = a1[4];
  if (v26 < __smax)
  {
    v27 = 0x4000;
    do
    {
      while (!v26)
      {
        v26 = 0x4000;
        if (__smax <= 0x4000)
        {
          goto LABEL_54;
        }
      }

      v28 = v26 >> 1;
      if ((v26 & (v26 >> 1)) != 0)
      {
        v28 = v26 & (v26 >> 1);
      }

      v26 += v28;
    }

    while (v26 < __smax);
    v27 = v26;
    if (v26 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_75:
      a1[4] = 0;
      a1[5] = 0;
      goto LABEL_3;
    }

LABEL_54:
    v29 = a1[5];
    v30 = realloc(v29, v27);
    if (!v30)
    {
      free(v29);
      goto LABEL_75;
    }

    a1[4] = v27;
    a1[5] = v30;
  }

  v31 = a1[5];
  if (__src)
  {
    memcpy((v31 + *v3), __src, __smax);
  }

  else if (v31)
  {
    memset_s((v31 + *v3), __smax, 0, __smax);
  }

  a1[3] += __smax;
  v32 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v33 = 0;
  while (v32 <= v33)
  {
    v34 = 0;
    v35 = 0xFFFFFFFFLL;
LABEL_66:
    v36 = (v34 + 1);
    v37 = v35 - 4;
    while (*v36++)
    {
      if (!--v37)
      {
        goto LABEL_73;
      }
    }

    result = 0;
    if (++v33 == v32)
    {
      return result;
    }
  }

  v34 = (a1[5] + *(a1[2] + 8 * v33));
  v35 = *v34;
  if (v35 >= 5)
  {
    goto LABEL_66;
  }

LABEL_73:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithEncodedData", 84, 104, 0, "invalid XAT key");
LABEL_4:
  *a1 = 0;
  a1[3] = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10010E2A0(AAEntryXATBlob_impl *a1, char *__s, const char *a3)
{
  if ((sub_1000F4680(v9, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 99, 104, 0, "invalid path %s/%s");
    return 0xFFFFFFFFLL;
  }

  v4 = open(v9, 0x200000);
  if (v4 < 0)
  {
    v7 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 110, 104, v7, "open: %s");
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if ((sub_10010E3F0(a1, v4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 112, 104, 0, "aaEntryXATBlobInitWithFD failed: %s", v9);
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  close(v5);
  return v6;
}

uint64_t sub_10010E3F0(AAEntryXATBlob_impl *a1, int fd)
{
  *a1 = 0;
  *(a1 + 3) = 0;
  v4 = flistxattr(fd, 0, 0, 0);
  if (v4 < 1)
  {
    v6 = 0;
    v7 = 0;
LABEL_5:
    free(v6);
    free(v7);
    return 0;
  }

  v5 = v4;
  if (v4 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_26:
    v17 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 144, 104, *v17, "malloc");
    v6 = 0;
    v7 = 0;
    goto LABEL_27;
  }

  v9 = malloc(v4);
  if (!v9)
  {
    goto LABEL_26;
  }

  v7 = v9;
  v10 = flistxattr(fd, v9, v5, 0);
  if (v10 < 1)
  {
    v18 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 153, 104, *v18, "listxattr");
    v6 = 0;
    goto LABEL_27;
  }

  v22 = v10;
  v11 = 0;
  v6 = 0;
  v12 = 0;
  v13 = v7;
  while (v7[v11])
  {
LABEL_24:
    if (++v11 == v10)
    {
      goto LABEL_5;
    }
  }

  v14 = fgetxattr(fd, v13, 0, 0, 0, 0);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v19 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 167, 104, v19, "getxattr failed for name=%s");
    goto LABEL_27;
  }

  v15 = v14;
  if (v14 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 169, 104, 0, "attribute data is too large name=%s");
    goto LABEL_27;
  }

  if (v14 <= v12)
  {
    v16 = v6;
    goto LABEL_21;
  }

  do
  {
    if (v12)
    {
      v12 += v12 >> 1;
    }

    else
    {
      v12 = 256;
    }
  }

  while (v14 > v12);
  if (v12 < 0x2000000001)
  {
    v16 = realloc(v6, v12);
    if (!v16)
    {
      free(v6);
      goto LABEL_35;
    }

LABEL_21:
    if (fgetxattr(fd, v13, v16, v12, 0, 0) < 0)
    {
      v20 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 187, 104, v20, "getxattr failed for name=%s");
    }

    else
    {
      if ((AAEntryXATBlobAppendEntry(a1, v13, v16, v15) & 0x80000000) == 0)
      {
        v13 = &v7[v11 + 1];
        v6 = v16;
        v10 = v22;
        goto LABEL_24;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 190, 104, 0, "inserting XAT entry");
    }

    v6 = v16;
    goto LABEL_27;
  }

  *__error() = 12;
LABEL_35:
  v21 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 178, 104, *v21, "malloc");
  v6 = 0;
LABEL_27:
  free(v6);
  free(v7);
  *a1 = 0;
  *(a1 + 3) = 0;
  return 0xFFFFFFFFLL;
}

int AAEntryXATBlobAppendEntry(AAEntryXATBlob xat, const char *key, const uint8_t *data, size_t data_size)
{
  v8 = strlen(key);
  v9 = v8 + 1;
  v10 = v8 + 5;
  if (v8 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v11 = data_size + v10, __CFADD__(data_size, v10)) || v11 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobAppendEntry", 377, 104, 0, "invalid attribute size");
    return -1;
  }

  if (v11 < 4)
  {
    goto LABEL_48;
  }

  v12 = (xat + 24);
  v13 = *(xat + 3);
  v14 = v13 + v11;
  if (__CFADD__(v13, v11))
  {
    goto LABEL_48;
  }

  v16 = *xat;
  v15 = *(xat + 1);
  v17 = *xat + 1;
  if (v15 < v17)
  {
    v18 = *(xat + 1);
    do
    {
      if (v18)
      {
        v18 *= 2;
      }

      else
      {
        v18 = 16;
      }
    }

    while (v18 < v17);
    if (v18 > v15)
    {
      v20 = (xat + 16);
      v19 = *(xat + 2);
      *(xat + 1) = v18;
      if (8 * v18 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_47:
        *xat = 0;
        *v20 = 0;
        *(xat + 3) = 0;
        goto LABEL_48;
      }

      v39 = v19;
      v40 = v16;
      v21 = realloc(v19, 8 * v18);
      if (!v21)
      {
        free(v39);
        goto LABEL_47;
      }

      *v20 = v21;
      v16 = v40;
    }
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v22 = *(xat + 4);
  if (v22 < v14)
  {
    do
    {
      while (!v22)
      {
        v22 = 0x4000;
        if (v14 <= 0x4000)
        {
          v22 = 0x4000;
          goto LABEL_29;
        }
      }

      v23 = v22 >> 1;
      if ((v22 & (v22 >> 1)) != 0)
      {
        v23 = v22 & (v22 >> 1);
      }

      v22 += v23;
    }

    while (v22 < v14);
    if (v22 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_42;
    }

LABEL_29:
    v41 = v16;
    v24 = *(xat + 5);
    v25 = realloc(v24, v22);
    if (v25)
    {
      *(xat + 4) = v22;
      *(xat + 5) = v25;
      v16 = v41;
      goto LABEL_31;
    }

    free(v24);
LABEL_42:
    *(xat + 4) = 0;
    *(xat + 5) = 0;
LABEL_43:
    *xat = 0;
    *(xat + 3) = 0;
    goto LABEL_48;
  }

LABEL_31:
  v26 = *v12;
  v27 = *v12 + v11;
  if (__CFADD__(*v12, v11) || (v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if (v22 < v27)
  {
    do
    {
      while (!v22)
      {
        v22 = 0x4000;
        if (v27 <= 0x4000)
        {
          v42 = v16;
          v29 = (xat + 40);
          v22 = 0x4000;
          goto LABEL_53;
        }
      }

      v28 = v22 >> 1;
      if ((v22 & (v22 >> 1)) != 0)
      {
        v28 = v22 & (v22 >> 1);
      }

      v22 += v28;
    }

    while (v22 < v27);
    v29 = (xat + 40);
    if (v22 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_61;
    }

    v42 = v16;
LABEL_53:
    v39 = v29;
    v33 = *v29;
    v30 = realloc(v33, v22);
    if (v30)
    {
      *(xat + 5) = v30;
      v31 = (xat + 40);
      *(xat + 4) = v22;
      v26 = *(xat + 3);
      goto LABEL_55;
    }

    free(v33);
    v29 = v39;
LABEL_61:
    *v29 = 0;
    *v12 = 0;
    *(xat + 4) = 0;
    goto LABEL_48;
  }

  v42 = v16;
  v31 = (xat + 40);
  v30 = *(xat + 5);
  if (v30)
  {
LABEL_55:
    memset_s(&v30[v26], v11, 0, v11);
    v26 = *v12;
  }

  *(xat + 3) = v26 + v11;
  v34 = *(xat + 2);
  v35 = (*xat)++;
  *(v34 + 8 * v35) = v13;
  if (v13 >= 0xFFFFFFFFFFFFFFFCLL || v13 + 4 > *v12 || (*(*v31 + v13) = v11, v42 < 0))
  {
LABEL_48:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobAppendEntry", 381, 104, 0, "alloc XAT entry", v39);
    return -1;
  }

  v36 = *(xat + 5);
  v37 = *(*(xat + 2) + 8 * v42);
  *(v36 + v37) = v11;
  v38 = (v36 + v37 + 4);
  memcpy(v38, key, v9);
  memcpy(&v38[v9], data, data_size);
  return 0;
}

uint64_t sub_10010EABC(void *a1, int fd, char a3)
{
  if ((a3 & 8) != 0)
  {
    v6 = flistxattr(fd, 0, 0, 0);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v8 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", 28, 104, v8, "listxattr");
LABEL_38:
      v9 = 0;
      goto LABEL_39;
    }

    v7 = v6;
    if (v6)
    {
      if (v6 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_37:
        v28 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", 34, 104, v28, "malloc");
        goto LABEL_38;
      }

      v21 = malloc(v6);
      if (!v21)
      {
        goto LABEL_37;
      }

      v9 = v21;
      v22 = flistxattr(fd, v21, v7, 0);
      if (v22 < 0)
      {
        v30 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", 43, 104, v30, "listxattr");
        goto LABEL_39;
      }

      v23 = v22;
      if (v22)
      {
        v24 = v9 + 1;
        v25 = v9;
        do
        {
          if (*(v24 - 1))
          {
            v26 = v25;
          }

          else
          {
            v27 = fremovexattr(fd, v25, 0);
            v26 = v24;
            if (v27 < 0)
            {
              v31 = *__error();
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", 57, 104, v31, "removexattr failed for name=%s");
LABEL_39:
              free(v9);
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobApplyToFD", 212, 104, 0, "clearing extended attributes");
              return 0xFFFFFFFFLL;
            }
          }

          ++v24;
          v25 = v26;
          --v23;
        }

        while (v23);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (*a1)
  {
    v10 = 0;
    while (1)
    {
      v11 = (a1[5] + *(a1[2] + 8 * v10));
      v14 = *v11;
      v12 = (v11 + 1);
      v13 = v14;
      if (v14 < 5)
      {
        goto LABEL_27;
      }

      v15 = 0;
      v16 = (a1[5] + *(a1[2] + 8 * v10) + v13);
      while (v12[v15])
      {
        v17 = &v12[++v15];
        if (&v12[v15] >= v16)
        {
          if (!v15)
          {
            goto LABEL_27;
          }

          goto LABEL_18;
        }
      }

      v17 = &v12[v15];
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v17 == v16)
      {
LABEL_27:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobApplyToFD", 225, 104, 0, "invalid XAT entry key %zu");
        return 0xFFFFFFFFLL;
      }

      v18 = v16 == v17 + 1 ? 0 : v17 + 1;
      if (fsetxattr(fd, v12, v18, v16 - (v17 + 1), 0, 0) < 0)
      {
        v19 = __error();
        if ((a3 & 1) == 0 || *v19 != 1)
        {
          break;
        }
      }

      if (++v10 >= *a1)
      {
        return 0;
      }
    }

    v29 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobApplyToFD", 238, 104, v29, "setxattr");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

AAEntryXATBlob AAEntryXATBlobCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobCreate", 251, 104, *v2, "malloc");
  }

  return v1;
}

void AAEntryXATBlobDestroy(AAEntryXATBlob xat)
{
  if (xat)
  {
    free(*(xat + 2));
    free(*(xat + 5));
    memset_s(xat + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(xat, 0x30uLL, 0, 0x30uLL);

    free(xat);
  }
}

AAEntryXATBlob AAEntryXATBlobCreateWithEncodedData(const uint8_t *data, size_t data_size)
{
  v4 = AAEntryXATBlobCreate();
  v5 = v4;
  if (v4 && (sub_10010DEF4(v4, data, data_size) & 0x80000000) != 0)
  {
    AAEntryXATBlobDestroy(v5);
    return 0;
  }

  return v5;
}

AAEntryXATBlob AAEntryXATBlobCreateWithPath(const char *dir, const char *path, AAFlagSet flags)
{
  v5 = AAEntryXATBlobCreate();
  v6 = v5;
  if (v5 && (sub_10010E2A0(v5, dir, path) & 0x80000000) != 0)
  {
    AAEntryXATBlobDestroy(v6);
    return 0;
  }

  return v6;
}

int AAEntryXATBlobClear(AAEntryXATBlob xat)
{
  *xat = 0;
  *(xat + 3) = 0;
  return 0;
}

int AAEntryXATBlobApplyToPath(AAEntryXATBlob xat, const char *dir, const char *path, AAFlagSet flags)
{
  v4 = flags;
  if ((sub_1000F4680(v11, 0x800uLL, dir, path) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 299, 104, 0, "invalid path %s/%s");
    return -1;
  }

  v6 = open(v11, 0x200000);
  if (v6 < 0)
  {
    v9 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 304, 104, v9, "open: %s");
    return -1;
  }

  v7 = v6;
  if ((sub_10010EABC(xat, v6, v4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 306, 104, 0, "applying XAT blob: %s", v11);
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  close(v7);
  return v8;
}

int AAEntryXATBlobGetEntry(AAEntryXATBlob xat, uint32_t i, size_t key_capacity, char *key, size_t *key_length, size_t data_capacity, uint8_t *data, size_t *data_size)
{
  if (*xat <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobGetEntry", 328, 104, 0, "invalid XAT index %u", data, data_size);
    return -1;
  }

  v8 = (*(xat + 5) + *(*(xat + 2) + 8 * i));
  v9 = v8 + 1;
  v10 = *v8;
  if (v10 < 5)
  {
    goto LABEL_15;
  }

  v14 = 0;
  while (v9[v14])
  {
    if (++v14 + 4 >= v10)
    {
      goto LABEL_15;
    }
  }

  v15 = v10 - 5 - v14;
  if (v15 >= v10)
  {
LABEL_15:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobGetEntry", 338, 104, 0, "invalid XAT blob");
    return -1;
  }

  if (key_length)
  {
    *key_length = v14;
  }

  if (data_size)
  {
    *data_size = v15;
  }

  if (v14 >= key_capacity)
  {
    if (key_capacity)
    {
      return -1;
    }
  }

  else
  {
    memcpy(key, v9, v14);
    key[v14] = 0;
  }

  if (v15 > data_capacity)
  {
    if (!data_capacity)
    {
      return 0;
    }

    return -1;
  }

  memcpy(data, v8 + v10 - v15, v15);
  return 0;
}

int AAEntryXATBlobSetEntry(AAEntryXATBlob xat, uint32_t i, const char *key, const uint8_t *data, size_t data_size)
{
  if (*xat <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobSetEntry", 401, 104, 0, "invalid XAT index");
    return -1;
  }

  v10 = strlen(key);
  v11 = v10 + 1;
  v12 = v10 + 5;
  if (v10 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v14 = data_size + v12, __CFADD__(data_size, v12)) || v14 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobSetEntry", 409, 104, 0, "invalid attribute size");
    return -1;
  }

  if (v14 < 4)
  {
    goto LABEL_11;
  }

  v15 = i;
  v16 = *(*(xat + 2) + 8 * i);
  v17 = *(xat + 5);
  v18 = *&v17[v16];
  v19 = v16 + v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_11;
  }

  v20 = *(xat + 3);
  v21 = v20 - v19;
  if (v20 < v19)
  {
    goto LABEL_11;
  }

  v22 = v14 - v18;
  if (v14 > v18)
  {
    v23 = v20 + v22;
    if ((v20 + v22) < 0)
    {
LABEL_11:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobSetEntry", 412, 104, 0, "alloc XAT entry", v42, v43, v44, v45);
      return -1;
    }

    v24 = *(xat + 4);
    if (v24 < v23)
    {
      v25 = 0x4000;
      do
      {
        while (!v24)
        {
          v24 = 0x4000;
          if (v23 <= 0x4000)
          {
            goto LABEL_29;
          }
        }

        v26 = v24 >> 1;
        if ((v24 & (v24 >> 1)) != 0)
        {
          v26 = v24 & (v24 >> 1);
        }

        v24 += v26;
      }

      while (v24 < v23);
      v25 = v24;
      if (v24 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_44;
      }

LABEL_29:
      v43 = v22;
      v44 = v20 - v19;
      v45 = v15;
      v42 = v25;
      v32 = realloc(v17, v25);
      if (v32)
      {
        v22 = v43;
        *(xat + 4) = v42;
        *(xat + 5) = v32;
        v17 = v32;
        v21 = v20 - v19;
        v15 = v45;
        goto LABEL_31;
      }

      free(v17);
LABEL_44:
      *(xat + 3) = 0;
      *(xat + 4) = 0;
      *(xat + 5) = 0;
      goto LABEL_11;
    }

LABEL_31:
    if (v20 != v19)
    {
      v33 = &v17[v19];
      v34 = &v17[v19 + v22];
      v35 = v15;
      v36 = v22;
      memmove(v34, v33, v21);
      v22 = v36;
      v15 = v35;
    }

    v20 = *(xat + 3) + v22;
    goto LABEL_34;
  }

  if (v14 < v18)
  {
    v27 = v18 - v14;
    if (v20 != v19)
    {
      v28 = &v17[v19];
      v29 = &v17[v19 - v27];
      v30 = v15;
      v31 = v27;
      memmove(v29, v28, v21);
      v27 = v31;
      v15 = v30;
      v19 = *(xat + 3);
    }

    v20 = v19 - v27;
LABEL_34:
    *(xat + 3) = v20;
  }

  if (v16 >= 0xFFFFFFFFFFFFFFFCLL || v16 + 4 > v20)
  {
    goto LABEL_11;
  }

  *(*(xat + 5) + v16) = v14;
  if (*xat > v15)
  {
    v37 = v15;
    while (v16 < 0xFFFFFFFFFFFFFFFCLL && v16 + 4 <= *(xat + 3))
    {
      v38 = *(*(xat + 5) + v16);
      *(*(xat + 2) + 8 * v37) = v16;
      v16 += v38;
      if (++v37 >= *xat)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_11;
  }

LABEL_42:
  v39 = *(xat + 5);
  v40 = *(*(xat + 2) + 8 * v15);
  *(v39 + v40) = v14;
  v41 = (v39 + v40 + 4);
  memcpy(v41, key, v11);
  memcpy(&v41[v11], data, data_size);
  return 0;
}

int AAEntryXATBlobRemoveEntry(AAEntryXATBlob xat, uint32_t i)
{
  v2 = *xat;
  if (*xat <= i || (v4 = i, v5 = *(*(xat + 2) + 8 * i), v6 = *(xat + 5), v7 = *(v6 + v5), v8 = __CFADD__(v5, v7), v9 = v5 + v7, v8) || (v10 = *(xat + 3), v10 < v9))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobRemoveEntry", 426, 104, 0, "invalid XAT index %u", i);
    return -1;
  }

  else
  {
    if (v7)
    {
      if (v10 != v9)
      {
        memmove((v6 + v9 - v7), (v6 + v9), v10 - v9);
        v9 = *(xat + 3);
        v2 = *xat;
      }

      *(xat + 3) = v9 - v7;
    }

    v12 = v2 - 1;
    *xat = v12;
    if (v12 > v4)
    {
      v13 = *(xat + 2);
      do
      {
        *(v13 + 8 * v4) = *(v13 + 8 * v4 + 8) - v7;
        ++v4;
      }

      while (v4 < *xat);
    }

    return 0;
  }
}

uint64_t ParallelCompressionGetCompressedSize(uint64_t a1, unint64_t a2, int a3)
{
  v3 = a2;
  if (a2 >= 0x400)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0;
    v5 = sub_1000FF498(a1, a2);
    if (v5)
    {
      DWORD2(v8) = a3;
      LODWORD(v8) = 0;
      DWORD1(v8) = sub_1000F4290();
      *&v9 = 0x200000;
      *(&v9 + 1) = sub_1000FF510;
      *(&v10 + 1) = v5;
      *&v11 = sub_10010F724;
      v12 = &v7;
      if (!ParallelCompressionEncode(&v8))
      {
        if (v7 < v3)
        {
          v3 = v7;
        }

        goto LABEL_9;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", 75, 39, 0, "ParallelCompressionEncode");
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", 64, 39, 0, "IMemStreamCreate");
    }

    v3 = -1;
LABEL_9:
    j__free(v5);
  }

  return v3;
}

uint64_t sub_10010F738(uint64_t a1)
{
  if (ParallelCompressionDecode(a1))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamThreadProc", 100, 39, 0, "decoder failed");
  }

  return 0;
}

uint64_t sub_10010F780(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x48uLL);
  v11 = v10;
  if (v10)
  {
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    v12 = sub_1000F9EEC(a4);
    *(v11 + 64) = v12;
    if (!v12)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 112, 39, 0, "fail to init buffer");
      goto LABEL_7;
    }

    *v11 = 0;
    *(v11 + 4) = a5;
    *(v11 + 8) = a1;
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    *(v11 + 32) = sub_1000FAB94;
    *(v11 + 40) = sub_1000FA760;
    *(v11 + 48) = v12;
    if (sub_1000E766C((v11 + 56), sub_10010F738, v11, 0))
    {
      v13 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 125, 39, v13, "failed to start decoder thread");
LABEL_7:
      sub_10010F8CC(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 107, 39, *v14, "malloc");
  }

  return v11;
}

void sub_10010F8CC(void *a1)
{
  if (a1)
  {
    if (a1[8])
    {
      while (1)
      {
        v2 = sub_1000FAC38(a1[8], v5, 0x400uLL);
        if (v2 < 0)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_7;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 155, 39, 0, "flushing shared buffer");
    }

LABEL_7:
    v3 = a1[7];
    if (v3)
    {
      if (sub_1000E79CC(v3))
      {
        v4 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 163, 39, *v4, "failed to join decoder thread");
      }
    }

    sub_1000FA398(a1[8]);
    free(a1);
  }
}

uint64_t sub_10010F9BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    return sub_1000FAC38(*(a1 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10010F9D0(uint64_t result)
{
  if (result)
  {
    return sub_1000FA760(*(result + 64));
  }

  return result;
}

uint64_t sub_10010F9E0(uint64_t a1)
{
  if (ParallelCompressionEncode(a1))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamThreadProc", 192, 39, 0, "encoder failed");
  }

  return 0;
}

uint64_t sub_10010FA28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7)
{
  v14 = malloc(0x60uLL);
  v15 = v14;
  if (v14)
  {
    v14[10] = 0;
    *(v14 + 3) = 0u;
    *(v14 + 4) = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v16 = sub_1000F9EEC(a4);
    *(v15 + 88) = v16;
    if (!v16)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 204, 39, 0, "init buffer");
      goto LABEL_7;
    }

    *(v15 + 4) = a7;
    *(v15 + 8) = a5;
    *v15 = 0;
    *(v15 + 16) = a6;
    *(v15 + 24) = sub_1000FAC38;
    *(v15 + 32) = sub_1000FA760;
    *(v15 + 40) = v16;
    *(v15 + 48) = a1;
    *(v15 + 56) = a2;
    *(v15 + 64) = a3;
    if (sub_1000E766C((v15 + 80), sub_10010F9E0, v15, 0))
    {
      v17 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 219, 39, v17, "failed to start encoder thread");
LABEL_7:
      sub_10010FB94(v15);
      return 0;
    }
  }

  else
  {
    v18 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 199, 39, *v18, "malloc");
  }

  return v15;
}

void sub_10010FB94(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 72))
    {
      sub_1000FAB94(*(a1 + 88), 0, 0);
    }

    v2 = *(a1 + 80);
    if (v2 && sub_1000E79CC(v2))
    {
      v3 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamDestroy", 260, 39, *v3, "failed to join encoder thread");
    }

    sub_1000FA398(*(a1 + 88));

    free(a1);
  }
}

uint64_t sub_10010FC2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  v4 = *(a1 + 72);
  if (a3)
  {
    if (v4)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamWrite", 241, 39, 0, "extra bytes written after EOF has been sent");
      return -1;
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    *(a1 + 72) = 1;
  }

  v6 = *(a1 + 88);

  return sub_1000FAB94(v6, a2, a3);
}

uint64_t sub_10010FCB0(uint64_t result)
{
  if (result)
  {
    return sub_1000FA760(*(result + 88));
  }

  return result;
}

uint64_t *sub_10010FCC0(int a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x10uLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = 0;
    v12 = sub_1000FE0F8(a1, a2, a3);
    *v11 = v12;
    if (!v12 || (v13 = sub_10010F780(sub_1000FE21C, sub_1000FE584, v12, a4, a5), (v11[1] = v13) == 0))
    {
      sub_10010FDA4(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IFileDecoderStreamCreateWithFD", 285, 39, *v14, "malloc");
  }

  return v11;
}

void sub_10010FDA4(uint64_t a1)
{
  if (a1)
  {
    sub_10010F8CC(*(a1 + 8));
    sub_1000FE0A0(*a1);

    free(a1);
  }
}

void *sub_10010FDF0(const char *a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x10uLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = 0;
    v12 = sub_1000FDD20(a1, a2, a3);
    *v11 = v12;
    if (!v12 || (v13 = sub_10010F780(sub_1000FE21C, sub_1000FE584, v12, a4, a5), (v11[1] = v13) == 0))
    {
      sub_10010FDA4(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IFileDecoderStreamCreateWithFilename", 304, 39, *v14, "malloc");
  }

  return v11;
}

uint64_t sub_10010FED4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && (v3 = *(a1 + 8)) != 0)
  {
    return sub_1000FAC38(*(v3 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t *sub_10010FEF0(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    result = sub_1000FE584(*result);
    v2 = v1[1];
    if (v2)
    {
      v3 = *(v2 + 64);

      return sub_1000FA760(v3);
    }
  }

  return result;
}

void *sub_10010FF44(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = sub_1000FE674(a1, a2);
    *v13 = v14;
    if (!v14 || (v15 = sub_10010FA28(sub_1000FE740, sub_1000FE900, v14, a3, a4, a5, a6), (v13[1] = v15) == 0))
    {
      sub_100110038(v13);
      return 0;
    }
  }

  else
  {
    v16 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFD", 355, 39, *v16, "malloc");
  }

  return v13;
}

void sub_100110038(uint64_t a1)
{
  if (a1)
  {
    sub_10010FB94(*(a1 + 8));
    sub_1000FE6F0(*a1);

    free(a1);
  }
}

int **sub_100110084(const char *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = sub_1000FE594(a1, a2);
    *v13 = v14;
    if (!v14 || (v15 = sub_10010FA28(sub_1000FE740, sub_1000FE900, v14, a3, a4, a5, a6), (v13[1] = v15) == 0))
    {
      sub_100110038(v13);
      return 0;
    }
  }

  else
  {
    v16 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFilename", 374, 39, *v16, "malloc");
  }

  return v13;
}

uint64_t *sub_100110180(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    result = sub_1000FE900(*result);
    v2 = v1[1];
    if (v2)
    {
      v3 = *(v2 + 88);

      return sub_1000FA760(v3);
    }
  }

  return result;
}

void *sub_1001101D4(uint64_t (*a1)(uint64_t, uint64_t, unint64_t), uint64_t a2, uint64_t a3, size_t a4)
{
  v8 = malloc(0xD8uLL);
  v9 = v8;
  if (v8)
  {
    v8[26] = 0;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    if (a4 <= 0x1000)
    {
      a4 = 4096;
    }

    *v8 = 0uLL;
    v10 = sub_100120834(a4);
    *(v9 + 56) = v10;
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = sub_100120834(a4);
    *(v9 + 64) = v11;
    if (!v11)
    {
      goto LABEL_26;
    }

    *(v9 + 32) = -1;
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    if (sub_100120D44(*(v9 + 56), 0xCuLL, a1, a3) != 12)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 465, 39, 0, "couldn't read enough header bytes from compressed file");
      goto LABEL_26;
    }

    v12 = sub_1001209F0(*(v9 + 56));
    if ((*(v9 + 32) & 0x80000000) != 0)
    {
      v13 = v12;
      if (*v12 == 25200 && *(v12 + 2) == 122)
      {
        v19 = 0;
        while (1)
        {
          v20 = v13[3];
          if (v20 == sub_100119FE4(v19))
          {
            break;
          }

          if (++v19 == 7)
          {
            if ((*(v9 + 32) & 0x80000000) == 0)
            {
              return v9;
            }

            goto LABEL_12;
          }
        }

        *(v9 + 40) = bswap64(*(v13 + 4));
        *(v9 + 48) = sub_10011AE94(v19);
        sub_100120A4C(*(v9 + 56), 0xCuLL);
        if ((sub_1001208C8(*(v9 + 56), *(v9 + 40)) & 0x8000000000000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 487, 39, 0, "MemBufferIncreaseCapacity in");
        }

        else
        {
          if ((sub_1001208C8(*(v9 + 64), *(v9 + 40)) & 0x8000000000000000) == 0)
          {
            *(v9 + 32) = 0;
            return v9;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 488, 39, 0, "MemBufferIncreaseCapacity out");
        }

        goto LABEL_26;
      }

LABEL_12:
      if (*v13 == 1484404733 && *(v13 + 2) == 90)
      {
        if (!lzma_stream_decoder())
        {
          *(v9 + 32) = 1;
          return v9;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 503, 39, 0, "lzma_stream_decoder");
        goto LABEL_26;
      }

      v16 = *v13 == 23106 && v13[2] == 104;
      if (v16 && v13[3] - 49 <= 8)
      {
        if (BZ2_bzDecompressInit((v9 + 72), 0, 0))
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 514, 39, 0, "BZ2_bzDecompressInit");
LABEL_26:
          sub_100110758(v9);
          return 0;
        }

        v26 = 3;
LABEL_60:
        *(v9 + 32) = v26;
        return v9;
      }

      v21 = *v13;
      if (v21 == 120)
      {
        if (-1108378657 * (v13[1] | 0x7800u) <= 0x8421084)
        {
          if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB) == COMPRESSION_STATUS_OK)
          {
            sub_100120A4C(*(v9 + 56), 2uLL);
            *(v9 + 32) = 2;
            return v9;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 570, 39, 0, "compression_stream_init");
          goto LABEL_26;
        }
      }

      else if (v21 == 31 && v13[1] == 139 && v13[2] == 8)
      {
        if ((sub_100120D44(*(v9 + 56), 0x1000uLL, *v9, *(v9 + 16)) & 0x8000000000000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 525, 39, 0, "reading gzip header data");
          goto LABEL_26;
        }

        v22 = sub_1001209DC(*(v9 + 56));
        if ((v13[3] & 4) != 0)
        {
          if (v22 <= 0xB)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 531, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          v23 = *(v13 + 5) + 12;
          if (v23 > v22)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 534, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }
        }

        else
        {
          v23 = 10;
        }

        if ((v13[3] & 8) != 0)
        {
          v24 = v23 + 2;
          if (v23 + 2 > v22)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 539, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          if (v23 + 2 < v22)
          {
            while (v13[v23 + 1])
            {
              if (v22 - 2 == ++v23)
              {
                v24 = v22;
                goto LABEL_42;
              }
            }

            v24 = v23 + 2;
          }
        }

        else
        {
          v24 = v23;
        }

LABEL_42:
        if ((v13[3] & 0x10) != 0)
        {
          v25 = v24 + 2;
          if (v24 + 2 > v22)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 545, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          if (v24 + 2 < v22)
          {
            while (v13[v24 + 1])
            {
              if (v22 - 2 == ++v24)
              {
                v25 = v22;
                goto LABEL_44;
              }
            }

            v25 = v24 + 2;
          }
        }

        else
        {
          v25 = v24;
        }

LABEL_44:
        if ((v13[3] & 2) != 0)
        {
          v25 += 2;
          if (v25 > v22)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 551, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }
        }

        sub_100120A4C(*(v9 + 56), v25);
        if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 557, 39, 0, "compression_stream_init");
          goto LABEL_26;
        }

        v26 = 2;
        goto LABEL_60;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 579, 39, 0, "Could not identify compressed stream format");
      goto LABEL_26;
    }
  }

  else
  {
    v17 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 452, 39, *v17, "malloc");
  }

  return v9;
}

void sub_100110758(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    switch(v2)
    {
      case 3:
        BZ2_bzDecompressEnd((a1 + 72));
        break;
      case 2:
        compression_stream_destroy((a1 + 72));
        break;
      case 1:
        lzma_end();
        break;
    }

    sub_100120944(*(a1 + 56));
    sub_100120944(*(a1 + 64));
    j__free(*(a1 + 24));

    free(a1);
  }
}

void *sub_1001107E8(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = sub_1000FF498(a1, a2);
  if (v4)
  {
    v5 = v4;
    result = sub_1001101D4(sub_1000FF510, sub_1000FF584, v4, a3);
    if (result)
    {
      result[3] = v5;
      return result;
    }

    j__free(v5);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreateWithBuffer", 596, 39, 0, "IMemStreamCreate failed");
  }

  return 0;
}

uint64_t sub_100110884(void *a1, char *a2, size_t a3)
{
  if (a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (!a3)
      {
        return v7;
      }

      v8 = sub_1001209DC(a1[8]);
      if (v8)
      {
        if (v8 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = v8;
        }

        v10 = sub_1001209F0(a1[8]);
        memcpy(a2, v10, v9);
        sub_100120A4C(a1[8], v9);
        v7 += v9;
        a3 -= v9;
        if (!a3)
        {
          return v7;
        }

        a2 += v9;
      }

      if (*(a1 + 52))
      {
        return v7;
      }

      v11 = a1[7];
      if (!*(a1 + 8))
      {
        v23 = sub_1001209DC(v11);
        v24 = v23;
        if (v23 <= 0xF)
        {
          if ((sub_100120D44(a1[7], 16 - v23, *a1, a1[2]) & 0x8000000000000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 645, 39, 0, "reading block header failed");
            return -1;
          }

          v25 = sub_1001209DC(a1[7]);
          if (!v25)
          {
            *(a1 + 52) = 1;
            return v7;
          }

          v24 = v25;
        }

        v26 = sub_1001209F0(a1[7]);
        v28 = *v26;
        v27 = v26[1];
        v29 = bswap64(*v26);
        v30 = bswap64(v27);
        v31 = a1[5];
        if (v29 > v31 || v30 > v31)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 655, 39, 0, "invalid block header");
          return -1;
        }

        sub_100120A4C(a1[7], 0x10uLL);
        v33 = v30 >= v24 - 16;
        v34 = v30 - (v24 - 16);
        if (v34 != 0 && v33)
        {
          if (sub_100120D44(a1[7], v34, *a1, a1[2]) != v34)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 665, 39, 0, "reading block payload failed");
            return -1;
          }

          sub_1001209DC(a1[7]);
        }

        if (v28 == v27)
        {
          v35 = sub_100120A00(a1[8]);
          v36 = sub_1001209F0(a1[7]);
          memcpy(v35, v36, v29);
        }

        else
        {
          v47 = a1[6];
          v48 = sub_100120A00(a1[8]);
          v49 = sub_1001209F0(a1[7]);
          if (v47(v48, v29, v49, v30) != v29)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 677, 39, 0, "decoding block payload failed");
            return -1;
          }
        }

        sub_100120A4C(a1[7], v30);
        sub_100120AD4(a1[8], v29);
        goto LABEL_64;
      }

      if ((sub_100120D44(v11, 0xFFFFFFFFFFFFFFFFLL, *a1, a1[2]) & 0x8000000000000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 687, 39, 0, "reading payload failed");
        return -1;
      }

      v12 = sub_1001209F0(a1[7]);
      v13 = sub_1001209DC(a1[7]);
      v14 = sub_100120A00(a1[8]);
      v15 = sub_1001209E4(a1[8]);
      v16 = v15;
      v17 = *(a1 + 8);
      switch(v17)
      {
        case 1:
          a1[9] = v12;
          a1[10] = v13;
          a1[12] = v14;
          a1[13] = v15;
          v42 = lzma_code();
          v43 = v42;
          if (v42 > 0xA || ((1 << v42) & 0x403) == 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 738, 39, 0, "decoding lzma payload");
            v50 = 1;
            goto LABEL_62;
          }

          v44 = a1[9];
          v45 = a1[12];
          sub_100120A4C(a1[7], v44 - v12);
          if (v45 == v14 && v44 == v12)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_100120AD4(a1[8], v45 - v14);
          if (v43 != 1)
          {
            v50 = 14;
LABEL_62:
            if (v43 > 0xA || ((1 << v43) & 0x403) == 0)
            {
              continue;
            }

            goto LABEL_64;
          }

          break;
        case 3:
          a1[9] = v12;
          *(a1 + 20) = v13;
          a1[12] = v14;
          *(a1 + 26) = v15;
          v37 = BZ2_bzDecompress((a1 + 9));
          if (v37 < 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 722, 39, 0, "decoding bzip2 payload");
            return -1;
          }

          v38 = v37;
          v39 = a1[9];
          v40 = a1[12];
          sub_100120A4C(a1[7], v39 - v12);
          if (v40 == v14 && v39 == v12)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_100120AD4(a1[8], v40 - v14);
          if (v38 != 4)
          {
            goto LABEL_64;
          }

          break;
        case 2:
          a1[11] = v12;
          a1[12] = v13;
          a1[9] = v14;
          a1[10] = v15;
          v18 = compression_stream_process((a1 + 9), 0);
          if (v18 < 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 706, 39, 0, "decoding zlib payload");
            return -1;
          }

          v19 = v18;
          v20 = a1[12];
          v21 = a1[10];
          sub_100120A4C(a1[7], v13 - v20);
          if (v16 == v21 && v13 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_100120AD4(a1[8], v16 - v21);
          if (v19 != COMPRESSION_STATUS_END)
          {
            goto LABEL_64;
          }

          break;
        default:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 748, 39, 0, "invalid decoder: %d");
          return -1;
      }

      *(a1 + 52) = 1;
LABEL_64:
      if (v6 >= 3)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 753, 39, 0, "Truncated stream");
        return -1;
      }

      v50 = 0;
    }

    while (!v50);
  }

  return -1;
}

uint64_t sub_100110D7C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v2(*(result + 16));
    }

    v3 = *(v1 + 24);

    return sub_1000FF584(v3);
  }

  return result;
}

void *sub_100110DC8(int a1, unint64_t st_size, unint64_t a3, unsigned int a4)
{
  v8 = calloc(1uLL, 0x70uLL);
  if (!v8)
  {
    v12 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamCreateWithFD", 889, 39, *v12, "malloc");
    return v8;
  }

  memset(&v41, 0, sizeof(v41));
  if (fstat(a1, &v41))
  {
    v9 = *__error();
    v10 = "accessing file";
    v11 = 896;
    goto LABEL_20;
  }

  if (v41.st_size < st_size)
  {
    st_size = v41.st_size;
  }

  if (st_size + a3 > v41.st_size || a3 == -1)
  {
    a3 = v41.st_size - st_size;
  }

  *v8 = a1;
  if (pread(a1, &__buf, 0xCuLL, st_size) != 12)
  {
    v10 = "reading file header";
    v11 = 906;
    goto LABEL_19;
  }

  if (__buf != 25200 || v44 != 122)
  {
    v10 = "invalid file header";
    v11 = 907;
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v16 = v45;
  if (v45 <= 0x64u)
  {
    switch(v45)
    {
      case '-':
        v17 = 6;
        break;
      case '4':
        v17 = 3;
        break;
      case 'b':
        v17 = 5;
        break;
      default:
        goto LABEL_35;
    }
  }

  else if (v45 > 0x77u)
  {
    if (v45 == 120)
    {
      v17 = 1;
    }

    else
    {
      if (v45 != 122)
      {
        goto LABEL_35;
      }

      v17 = 0;
    }
  }

  else
  {
    if (v45 != 101)
    {
      if (v45 == 102)
      {
        v17 = 2;
        goto LABEL_39;
      }

LABEL_35:
      v8[2] = 0;
LABEL_57:
      v40 = v16;
      v10 = "Unsupported decoder in file header: %c";
      v11 = 920;
      goto LABEL_19;
    }

    v17 = 4;
  }

LABEL_39:
  v18 = sub_10011AE94(v17);
  v8[2] = v18;
  if (!v18)
  {
    v16 = v45;
    goto LABEL_57;
  }

  *(v8 + 8) = bswap64(v46);
  v19 = st_size + 12;
  v20 = a3 + st_size;
  if (v19 < v20)
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      if (pread(*v8, v42, 0x10uLL, v19) != 16)
      {
        v40 = v19;
        v10 = "reading block header at offset %llu";
        v11 = 932;
        goto LABEL_19;
      }

      v23 = bswap64(v42[0]);
      v24 = bswap64(v42[1]);
      v25 = *(v8 + 8);
      if (v25 < v23 || v25 < v24)
      {
        v10 = "Invalid sizes in file block header";
        v11 = 936;
        goto LABEL_19;
      }

      v28 = v8[5];
      v27 = v8[6];
      if (v28 >= v21)
      {
        if (v21)
        {
          v21 += v21 >> 1;
        }

        else
        {
          v21 = 32;
        }

        v27 = reallocf(v27, 32 * v21);
        v8[6] = v27;
        if (!v27)
        {
          v9 = *__error();
          v10 = "malloc";
          v11 = 944;
LABEL_20:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamCreateWithFD", v11, 39, v9, v10, v40);
          sub_1001112C8(v8);
          return 0;
        }

        v28 = v8[5];
      }

      v29 = &v27[32 * v28];
      *v29 = v22;
      *(v29 + 2) = v23;
      *(v29 + 2) = v19 + 16;
      *(v29 + 6) = v24;
      *(v29 + 7) = -1;
      v8[5] = v28 + 1;
      v19 += 16 + v24;
      v22 += v23;
      if (v19 >= v20)
      {
        goto LABEL_59;
      }
    }
  }

  v22 = 0;
LABEL_59:
  if (v19 != v20)
  {
    v10 = "extra bytes found in file";
    v11 = 961;
    goto LABEL_19;
  }

  v8[3] = v22;
  *(v8 + 14) = a4;
  v30 = calloc(a4, 0x10uLL);
  v8[8] = v30;
  if (!v30)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 967;
    goto LABEL_20;
  }

  v31 = calloc(*(v8 + 14), *(v8 + 8));
  v8[9] = v31;
  if (!v31)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 969;
    goto LABEL_20;
  }

  v32 = *(v8 + 14);
  if (v32)
  {
    v33 = (v32 + 1) & 0x1FFFFFFFELL;
    v34 = vdupq_n_s64(v32 - 1);
    v35 = xmmword_1003772E0;
    v36 = (v8[8] + 16);
    v37 = vdupq_n_s64(2uLL);
    do
    {
      v38 = vmovn_s64(vcgeq_u64(v34, v35));
      if (v38.i8[0])
      {
        *(v36 - 2) = -1;
      }

      if (v38.i8[4])
      {
        *v36 = -1;
      }

      v35 = vaddq_s64(v35, v37);
      v36 += 4;
      v33 -= 2;
    }

    while (v33);
  }

  v39 = malloc(*(v8 + 8));
  v8[10] = v39;
  if (!v39)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 977;
    goto LABEL_20;
  }

  return v8;
}

void sub_1001112C8(void **a1)
{
  if (a1)
  {
    free(a1[6]);
    free(a1[8]);
    free(a1[9]);
    free(a1[10]);

    free(a1);
  }
}

uint64_t sub_100111324(uint64_t a1, char *__dst, unint64_t a3, unint64_t a4)
{
  ++*(a1 + 8);
  if (a3)
  {
    v6 = a3;
    v8 = 0;
    v40 = (a1 + 88);
    v38 = (a1 + 96);
    while (1)
    {
      if (a4 >= *(a1 + 24))
      {
        goto LABEL_38;
      }

      v9 = *(a1 + 32);
      v10 = a4 / v9;
      if (a4 / v9 >= *(a1 + 40))
      {
        break;
      }

      v11 = *(a1 + 48);
      v12 = v11 + 32 * v10;
      v13 = a4 % v9;
      v14 = *(v12 + 8);
      if (v14 <= (a4 % v9))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 1000, 39, 0, "Block offset out of range");
        return -1;
      }

      v15 = (v14 - v13);
      if (v6 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v6;
      }

      if (!v16)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 1003, 39, 0, "Invalid block size in read");
        return -1;
      }

      v17 = *(v12 + 28);
      if (v17 == -1)
      {
        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        if (v19)
        {
          v21 = 0;
          v22 = (v20 + 8);
          LODWORD(v17) = -1;
          while (*(v22 - 1) != -1)
          {
            if (v17 == -1 || *v22 < *(v20 + 16 * v17 + 8))
            {
              LODWORD(v17) = v21;
            }

            ++v21;
            v22 += 2;
            if (v19 == v21)
            {
              goto LABEL_23;
            }
          }

          LODWORD(v17) = v21;
        }

        else
        {
          LODWORD(v17) = -1;
        }

LABEL_23:
        v23 = (v20 + 16 * v17);
        v24 = *(a1 + 72);
        if (*v23 != -1)
        {
          *(v11 + 32 * *v23 + 28) = -1;
          *v23 = -1;
        }

        v39 = (v20 + 16 * v17);
        v25 = (v17 * v9);
        v26 = *(v12 + 24);
        v27 = *a1;
        if (v14 == v26)
        {
          v28 = pread(v27, (v24 + v25), v14, *(v12 + 16));
          if (v28 < 0)
          {
            v34 = *__error();
            v32 = "read block";
            v33 = 862;
            goto LABEL_48;
          }

          if (*(v12 + 8) != v28)
          {
            v32 = "Truncated block";
            v33 = 863;
            goto LABEL_47;
          }
        }

        else
        {
          v36 = v25;
          v37 = v24;
          v29 = pread(v27, *(a1 + 80), v26, *(v12 + 16));
          if (v29 < 0)
          {
            v34 = *__error();
            v32 = "read block";
            v33 = 870;
            goto LABEL_48;
          }

          if (*(v12 + 24) != v29)
          {
            v32 = "Truncated block";
            v33 = 871;
LABEL_47:
            v34 = 0;
LABEL_48:
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "loadBlock", v33, 39, v34, v32);
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 1006, 39, 0, "loading block");
            return -1;
          }

          v30 = (*(a1 + 16))(v37 + v36, *(a1 + 32), *(a1 + 80));
          if (v30 < 0 || *(v12 + 8) != v30)
          {
            v32 = "decoding compressed block";
            v33 = 874;
            goto LABEL_47;
          }
        }

        *(v12 + 28) = v17;
        v18 = v38;
        *v39 = v10;
      }

      else
      {
        v18 = v40;
        if (*(*(a1 + 64) + 16 * v17) != v10)
        {
          v32 = "Cache inconsistency";
          v33 = 835;
          goto LABEL_47;
        }
      }

      ++*v18;
      if (v17 >= *(a1 + 56))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 1007, 39, 0, "Invalid cache index");
        return -1;
      }

      v31 = *(a1 + 72);
      *(*(a1 + 64) + 16 * v17 + 8) = *(a1 + 8);
      memcpy(__dst, (v31 + (*(a1 + 32) * v17) + v13), v16);
      __dst += v16;
      a4 += v16;
      v8 += v16;
      v6 -= v16;
      if (!v6)
      {
        goto LABEL_38;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 997, 39, 0, "Block index out of range");
    return -1;
  }

  v8 = 0;
LABEL_38:
  *(a1 + 104) += v8;
  return v8;
}

uint64_t sub_100111728(uint64_t result)
{
  if (result)
  {
    *(result + 4) = 1;
  }

  return result;
}

size_t sub_100111738(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

size_t sub_100111778(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

uint64_t sub_1001117B8(uint64_t *a1, char *__src, rsize_t __smax)
{
  *a1 = 0;
  a1[3] = 0;
  v3 = a1 + 3;
  if (!__smax)
  {
    return 0;
  }

  if (__smax < 4)
  {
    goto LABEL_3;
  }

  v8 = 0;
  v9 = 1;
  while (2)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *&__src[v11];
      if (v12 < 4)
      {
        goto LABEL_3;
      }

      v13 = __CFADD__(v12, v11);
      v14 = v12 + v11;
      if (v13 || v14 > __smax)
      {
        goto LABEL_3;
      }

      if ((v8 & 1) == 0)
      {
        break;
      }

      v15 = a1[2];
      v16 = (*a1)++;
      *(v15 + 8 * v16) = v11;
      if (v14 >= __smax)
      {
        goto LABEL_42;
      }

      ++v10;
LABEL_14:
      v11 = v14;
      if (v14 + 4 > __smax)
      {
        goto LABEL_3;
      }
    }

    ++v10;
    if (v14 < __smax)
    {
      goto LABEL_14;
    }

    if ((v9 & 1) == 0)
    {
LABEL_42:
      *v3 = 0;
      if ((__smax & 0x8000000000000000) != 0)
      {
        break;
      }

      v26 = a1[4];
      if (v26 < __smax)
      {
        v27 = 0x4000;
        do
        {
          while (!v26)
          {
            v26 = 0x4000;
            if (__smax <= 0x4000)
            {
              goto LABEL_54;
            }
          }

          v28 = v26 >> 1;
          if ((v26 & (v26 >> 1)) != 0)
          {
            v28 = v26 & (v26 >> 1);
          }

          v26 += v28;
        }

        while (v26 < __smax);
        v27 = v26;
        if (v26 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_79;
        }

LABEL_54:
        v29 = a1[5];
        v30 = realloc(v29, v27);
        if (v30)
        {
          a1[4] = v27;
          a1[5] = v30;
          goto LABEL_56;
        }

        free(v29);
LABEL_79:
        a1[4] = 0;
        a1[5] = 0;
        break;
      }

LABEL_56:
      v31 = a1[5];
      if (__src)
      {
        memcpy((v31 + *v3), __src, __smax);
      }

      else if (v31)
      {
        memset_s((v31 + *v3), __smax, 0, __smax);
      }

      a1[3] += __smax;
      v32 = *a1;
      if (*a1)
      {
        v33 = 0;
        while (1)
        {
          if (v32 == v33 || (v34 = a1[5] + *(a1[2] + 8 * v33), (*v34 + 1) <= 0x16))
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 179, 100, 0, "invalid ACL blob");
            goto LABEL_4;
          }

          v35 = *(v34 + 4);
          if ((v35 - 65) > 0x14 || ((1 << (v35 - 65)) & 0x100809) == 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 188, 100, 0, "invalid ACL entry type %c");
            goto LABEL_4;
          }

          HIDWORD(v38) = *(v34 + 21) - 71;
          LODWORD(v38) = HIDWORD(v38);
          v37 = v38 >> 1;
          v39 = v37 > 7;
          v40 = (1 << v37) & 0xC3;
          if (v39 || v40 == 0)
          {
            break;
          }

          if ((*(v34 + 5) & 0xFFFFFFFFFCFDFE0FLL) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 199, 100, 0, "invalid ACL flags 0x%llx");
            goto LABEL_4;
          }

          if ((*(v34 + 13) & 0xFFFFFFFFFFEFC001) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 200, 100, 0, "invalid ACL perms 0x%llx");
            goto LABEL_4;
          }

          result = 0;
          if (v32 == ++v33)
          {
            return result;
          }
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 197, 100, 0, "invalid ACL qualifier type %c");
        goto LABEL_4;
      }

      return 0;
    }

    if (v10 > 0xFFFFFFFE)
    {
      break;
    }

    v17 = a1[1];
    if (v17 >= v10)
    {
      goto LABEL_28;
    }

    v18 = a1[1];
    do
    {
      if (v18)
      {
        v18 *= 2;
      }

      else
      {
        v18 = 16;
      }
    }

    while (v18 < v10);
    if (v18 <= v17)
    {
      goto LABEL_28;
    }

    a1[1] = v18;
    if (8 * v18 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_89:
      a1[2] = 0;
      break;
    }

    v19 = a1[2];
    v20 = realloc(v19, 8 * v18);
    if (!v20)
    {
      free(v19);
      goto LABEL_89;
    }

    a1[2] = v20;
LABEL_28:
    if ((__smax & 0x8000000000000000) != 0)
    {
      break;
    }

    v21 = a1[4];
    if (v21 >= __smax)
    {
LABEL_40:
      v9 = 0;
      v8 = 1;
      if (__smax >= 4)
      {
        continue;
      }
    }

    else
    {
      do
      {
        while (!v21)
        {
          v21 = 0x4000;
          v23 = 0x4000;
          if (__smax <= 0x4000)
          {
            goto LABEL_38;
          }
        }

        v22 = v21 >> 1;
        if ((v21 & (v21 >> 1)) != 0)
        {
          v22 = v21 & (v21 >> 1);
        }

        v21 += v22;
      }

      while (v21 < __smax);
      v23 = v21;
      if (v21 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_86;
      }

LABEL_38:
      v24 = a1[5];
      v25 = realloc(v24, v23);
      if (v25)
      {
        a1[4] = v23;
        a1[5] = v25;
        goto LABEL_40;
      }

      free(v24);
LABEL_86:
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    break;
  }

LABEL_3:
  *a1 = 0;
  a1[3] = 0;
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 169, 100, 0, "invalid ACL blob");
LABEL_4:
  *a1 = 0;
  a1[3] = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_100111C50(AAEntryACLBlob_impl *a1, char *__s, const char *a3, uint64_t a4)
{
  v4 = a4;
  if ((sub_1000F4680(v11, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 215, 100, 0, "invalid path %s/%s");
    return 0xFFFFFFFFLL;
  }

  v6 = open(v11, 0x200000);
  if (v6 < 0)
  {
    v9 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 219, 100, v9, "open: %s");
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if ((sub_100111DB0(a1, v6, v4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 221, 100, 0, "initializing ACL blob: %s", v11);
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  close(v7);
  return v8;
}

uint64_t sub_100111DB0(AAEntryACLBlob_impl *a1, int a2, char a3)
{
  v6 = sysconf(71);
  v7 = sysconf(70);
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 <= 4096)
  {
    v9 = 4096;
  }

  else
  {
    v9 = v8;
  }

  if (v8 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_14:
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 243, 100, *v15, "malloc");
    goto LABEL_15;
  }

  v10 = malloc(v9);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  *a1 = 0;
  *(a1 + 3) = 0;
  fd_np = acl_get_fd_np(a2, ACL_TYPE_EXTENDED);
  if (!fd_np)
  {
LABEL_13:
    free(v11);
    return 0;
  }

  v13 = fd_np;
  entry_p = 0;
  if (acl_get_entry(fd_np, 0, &entry_p))
  {
LABEL_12:
    acl_free(v13);
    goto LABEL_13;
  }

  while (1)
  {
    tag_type_p = ACL_UNDEFINED_TAG;
    flagset_p = 0;
    mask_p = 0;
    *id_type = 0;
    memset(&sid, 0, sizeof(sid));
    memset(&ace, 0, sizeof(ace));
    memset(out, 0, 256);
    if (acl_get_tag_type(entry_p, &tag_type_p))
    {
      v24 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 272, 100, v24, "acl_get_tag_type");
      goto LABEL_66;
    }

    if (tag_type_p - 1 <= 1)
    {
      break;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 274, 100, "Warning: ACL tag type is not ALLOW/DENY (ignoring entry): %d\n", v16, v17, v18, tag_type_p);
LABEL_60:
    if (acl_get_entry(v13, -1, &entry_p))
    {
      goto LABEL_12;
    }
  }

  ace.tag = tag_type_p;
  if (acl_get_flagset_np(entry_p, &flagset_p))
  {
    v25 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 278, 100, v25, "acl_get_flagset_np");
    goto LABEL_66;
  }

  if (acl_get_flag_np(flagset_p, ACL_FLAG_NO_INHERIT))
  {
    ace.flags = 0x20000;
    v19 = 0x20000;
  }

  else
  {
    v19 = 0;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
  {
    v19 |= 0x10uLL;
    ace.flags = v19;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_FILE_INHERIT))
  {
    v19 |= 0x20uLL;
    ace.flags = v19;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_DIRECTORY_INHERIT))
  {
    v19 |= 0x40uLL;
    ace.flags = v19;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_LIMIT_INHERIT))
  {
    v19 |= 0x80uLL;
    ace.flags = v19;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_ONLY_INHERIT))
  {
    ace.flags = v19 | 0x100;
  }

  if (acl_get_permset_mask_np(entry_p, &mask_p))
  {
    v26 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 289, 100, v26, "acl_get_permset_mask_np");
    goto LABEL_66;
  }

  ace.perms = mask_p & 0x103FFE;
  qualifier = acl_get_qualifier(entry_p);
  if (!qualifier)
  {
    v27 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 294, 100, v27, "acl_get_qualifier");
    goto LABEL_66;
  }

  v21 = qualifier;
  if ((a3 & 4) != 0)
  {
    goto LABEL_57;
  }

  if (!mbr_uuid_to_id(qualifier, &id_type[1], id_type))
  {
    if (id_type[0] == 1)
    {
      memset(&v29, 0, 32);
      v28 = 0;
      v22 = 0;
      if (getgrgid_r(id_type[1], &v29, v11, v9, &v28) || !v28 || !v29.pw_name)
      {
LABEL_52:
        if (v22)
        {
          goto LABEL_58;
        }

        goto LABEL_53;
      }

      if (strlen(v29.pw_name) <= 0xFF)
      {
        v22 = 71;
        goto LABEL_50;
      }
    }

    else
    {
      if (id_type[0])
      {
        goto LABEL_53;
      }

      memset(&v29, 0, sizeof(v29));
      v28 = 0;
      v22 = 0;
      if (getpwuid_r(id_type[1], &v29, v11, v9, &v28) || !v28 || !v29.pw_name)
      {
        goto LABEL_52;
      }

      if (strlen(v29.pw_name) <= 0xFF)
      {
        v22 = 85;
LABEL_50:
        ace.qualifier_type = v22;
        __strlcpy_chk();
        goto LABEL_52;
      }
    }

    v22 = 0;
    goto LABEL_52;
  }

LABEL_53:
  if (!mbr_uuid_to_sid(v21, &sid) && !mbr_sid_to_string(&sid, v11) && strlen(v11) <= 0xFF)
  {
    ace.qualifier_type = 83;
    __strlcpy_chk();
    goto LABEL_58;
  }

LABEL_57:
  ace.qualifier_type = 73;
  uuid_unparse_upper(v21, out);
LABEL_58:
  v23 = strlen(out);
  if ((AAEntryACLBlobAppendEntry(a1, &ace, out, v23) & 0x80000000) == 0)
  {
    acl_free(v21);
    goto LABEL_60;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 340, 100, 0, "encoding entry");
  acl_free(v21);
LABEL_66:
  acl_free(v13);
  free(v11);
LABEL_15:
  *a1 = 0;
  *(a1 + 3) = 0;
  return 0xFFFFFFFFLL;
}

int AAEntryACLBlobAppendEntry(AAEntryACLBlob acl, const AAAccessControlEntry *ace, const uint8_t *qualifier_value, size_t qualifier_size)
{
  if ((sub_100113138(ace) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobAppendEntry", 618, 100, 0, "invalid ACL entry");
    return -1;
  }

  if (qualifier_size > 0xFFFFFFE9 || (v8 = (qualifier_size + 22), qualifier_size == -23))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobAppendEntry", 622, 100, 0, "ACL entry size out of range");
    return -1;
  }

  if (v8 < 4)
  {
    goto LABEL_49;
  }

  v9 = (acl + 24);
  v10 = *(acl + 3);
  v11 = v10 + v8;
  if (__CFADD__(v10, v8))
  {
    goto LABEL_49;
  }

  v13 = *acl;
  v12 = *(acl + 1);
  v14 = *acl + 1;
  if (v12 < v14)
  {
    v15 = *(acl + 1);
    do
    {
      if (v15)
      {
        v15 *= 2;
      }

      else
      {
        v15 = 16;
      }
    }

    while (v15 < v14);
    if (v15 > v12)
    {
      v36 = *acl;
      v17 = (acl + 16);
      v16 = *(acl + 2);
      *(acl + 1) = v15;
      if (8 * v15 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_48:
        *acl = 0;
        *v17 = 0;
        *(acl + 3) = 0;
        goto LABEL_49;
      }

      v18 = realloc(v16, 8 * v15);
      if (!v18)
      {
        free(v16);
        goto LABEL_48;
      }

      *v17 = v18;
      v13 = v36;
    }
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_44;
  }

  v19 = *(acl + 4);
  if (v19 < v11)
  {
    do
    {
      while (!v19)
      {
        v19 = 0x4000;
        if (v11 <= 0x4000)
        {
          v19 = 0x4000;
          goto LABEL_30;
        }
      }

      v20 = v19 >> 1;
      if ((v19 & (v19 >> 1)) != 0)
      {
        v20 = v19 & (v19 >> 1);
      }

      v19 += v20;
    }

    while (v19 < v11);
    if (v19 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_43;
    }

LABEL_30:
    v21 = *(acl + 5);
    v22 = realloc(v21, v19);
    if (v22)
    {
      *(acl + 4) = v19;
      *(acl + 5) = v22;
      goto LABEL_32;
    }

    free(v21);
LABEL_43:
    *(acl + 4) = 0;
    *(acl + 5) = 0;
LABEL_44:
    *acl = 0;
    *(acl + 3) = 0;
    goto LABEL_49;
  }

LABEL_32:
  v23 = *v9;
  v24 = *v9 + v8;
  if (__CFADD__(*v9, v8) || (v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  if (v19 < v24)
  {
    do
    {
      while (!v19)
      {
        v19 = 0x4000;
        if (v24 <= 0x4000)
        {
          v26 = (acl + 40);
          v19 = 0x4000;
          goto LABEL_53;
        }
      }

      v25 = v19 >> 1;
      if ((v19 & (v19 >> 1)) != 0)
      {
        v25 = v19 & (v19 >> 1);
      }

      v19 += v25;
    }

    while (v19 < v24);
    v26 = (acl + 40);
    if (v19 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_69;
    }

LABEL_53:
    v37 = v26;
    v30 = *v26;
    v27 = realloc(v30, v19);
    if (v27)
    {
      *(acl + 5) = v27;
      v28 = (acl + 40);
      *(acl + 4) = v19;
      v23 = *(acl + 3);
      goto LABEL_55;
    }

    free(v30);
    v26 = v37;
LABEL_69:
    *v26 = 0;
    *v9 = 0;
    *(acl + 4) = 0;
    goto LABEL_49;
  }

  v28 = (acl + 40);
  v27 = *(acl + 5);
  if (v27)
  {
LABEL_55:
    memset_s(&v27[v23], (qualifier_size + 22), 0, (qualifier_size + 22));
    v23 = *v9;
  }

  *(acl + 3) = v23 + v8;
  v31 = *(acl + 2);
  v32 = (*acl)++;
  *(v31 + 8 * v32) = v10;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL || v10 + 4 > *v9 || (*(*v28 + v10) = v8, v13 < 0))
  {
LABEL_49:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobAppendEntry", 626, 100, 0, "alloc ACL entry");
    return -1;
  }

  v33 = *(acl + 5) + *(*(acl + 2) + 8 * v13);
  *v33 = v8;
  if (ace->tag == ACL_EXTENDED_DENY)
  {
    v34 = 68;
  }

  else
  {
    v34 = 0;
  }

  if (ace->tag == ACL_EXTENDED_ALLOW)
  {
    v35 = 65;
  }

  else
  {
    v35 = v34;
  }

  *(v33 + 4) = v35;
  *(v33 + 5) = ace->flags;
  *(v33 + 13) = ace->perms;
  *(v33 + 21) = ace->qualifier_type;
  if (qualifier_size)
  {
    memcpy((v33 + 22), qualifier_value, qualifier_size);
  }

  return 0;
}

uint64_t sub_1001126B4(unint64_t *a1, int a2, char a3)
{
  memset(&v50, 0, sizeof(v50));
  if (fstat(a2, &v50))
  {
    v6 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 370, 100, *v6, "fstat");
    return 0xFFFFFFFFLL;
  }

  v8 = v50.st_mode & 0xF000;
  if (v8 != 0x8000 && v8 != 0x4000)
  {
    return 0;
  }

  v9 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v11 = a1[2];
  do
  {
    v12 = *v11++;
    v13 = *(a1[5] + 4 + v12);
    if (v13 == 68 || v13 == 65)
    {
      ++v10;
    }

    --v9;
  }

  while (v9);
  if (!v10)
  {
    return 0;
  }

  acl_p = 0;
  v14 = sysconf(71);
  v15 = sysconf(70);
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 4096)
  {
    v17 = 4096;
  }

  else
  {
    v17 = v16;
  }

  if (v16 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_24:
    v21 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 403, 100, *v21, "malloc");
    v19 = 0;
    goto LABEL_81;
  }

  v18 = malloc(v17);
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = v18;
  if ((a3 & 8) != 0)
  {
    fd_np = acl_p;
  }

  else
  {
    fd_np = acl_get_fd_np(a2, ACL_TYPE_EXTENDED);
    acl_p = fd_np;
  }

  if (!fd_np)
  {
    fd_np = acl_init(v10);
    acl_p = fd_np;
    if (!fd_np)
    {
      v36 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 415, 100, v36, "acl_init");
      goto LABEL_81;
    }
  }

  v22 = *a1;
  if (*a1)
  {
    v23 = 0;
    while (1)
    {
      v24 = a1[5] + *(a1[2] + 8 * v23);
      flagset_p = 0;
      entry_p = 0;
      memset(uu, 0, sizeof(uu));
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      *in = 0u;
      v52 = 0u;
      v25 = *v24;
      v26 = *(v24 + 4);
      if (v26 == 65)
      {
        v27 = ACL_EXTENDED_ALLOW;
      }

      else
      {
        if (v26 != 68)
        {
          goto LABEL_62;
        }

        v27 = ACL_EXTENDED_DENY;
      }

      if ((*(v24 + 5) & 0xFFFFFFFFFCFDFE0FLL) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 444, 100, 0, "invalid ACE flags: 0x%016llx");
        goto LABEL_81;
      }

      if ((*(v24 + 13) & 0xFFFFFFFFFFEFC001) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 445, 100, 0, "invalid ACE perms: 0x%016llx");
        goto LABEL_81;
      }

      if ((v25 - 278) <= 0xFFFFFEFE)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 448, 100, 0, "qualifier too long");
        goto LABEL_81;
      }

      v28 = v25 - 22;
      __memcpy_chk();
      in[v28] = 0;
      HIDWORD(v30) = *(v24 + 21) - 71;
      LODWORD(v30) = HIDWORD(v30);
      v29 = v30 >> 1;
      if (v29 > 5)
      {
        break;
      }

      if (v29)
      {
        if (v29 != 1)
        {
          goto LABEL_80;
        }

        if (uuid_parse(in, uu))
        {
LABEL_73:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 486, 100, 0, "could not resolve qualifier (type %c): %s");
          goto LABEL_81;
        }

        goto LABEL_55;
      }

      memset(&v46, 0, 32);
      v45 = 0;
      v34 = getgrnam_r(in, &v46, v19, v17, &v45);
      v32 = 0;
      if (!v34 && v45)
      {
        v33 = mbr_gid_to_uuid(v46.pw_uid, uu);
LABEL_53:
        v32 = v33 == 0;
      }

LABEL_54:
      if (!v32)
      {
        goto LABEL_73;
      }

LABEL_55:
      if (acl_create_entry(&acl_p, &entry_p))
      {
        v38 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 489, 100, v38, "acl_create_entry");
        goto LABEL_81;
      }

      if (acl_set_tag_type(entry_p, v27))
      {
        v39 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 490, 100, v39, "acl_set_tag_type");
        goto LABEL_81;
      }

      if (acl_set_permset_mask_np(entry_p, *(v24 + 13)))
      {
        v40 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 491, 100, v40, "acl_set_permset_mask_np");
        goto LABEL_81;
      }

      if (acl_get_flagset_np(entry_p, &flagset_p))
      {
        v41 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 492, 100, v41, "acl_get_flagset_np");
        goto LABEL_81;
      }

      if (acl_add_flag_np(flagset_p, *(v24 + 5)))
      {
        v42 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 493, 100, v42, "acl_add_flag_np");
        goto LABEL_81;
      }

      if (acl_set_qualifier(entry_p, uu))
      {
        v43 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 494, 100, v43, "acl_set_qualifier");
        goto LABEL_81;
      }

      v22 = *a1;
LABEL_62:
      if (++v23 >= v22)
      {
        fd_np = acl_p;
        goto LABEL_64;
      }
    }

    if (v29 == 6)
    {
      memset(&v46, 0, sizeof(v46));
      if (mbr_string_to_sid(in, &v46))
      {
        v32 = 0;
        goto LABEL_54;
      }

      v33 = mbr_sid_to_uuid(&v46, uu);
    }

    else
    {
      if (v29 != 7)
      {
LABEL_80:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 483, 100, 0, "invalid qualifier type: %d");
LABEL_81:
        v7 = 0xFFFFFFFFLL;
        goto LABEL_82;
      }

      memset(&v46, 0, sizeof(v46));
      v45 = 0;
      v31 = getpwnam_r(in, &v46, v19, v17, &v45);
      v32 = 0;
      if (v31 || !v45)
      {
        goto LABEL_54;
      }

      v33 = mbr_uid_to_uuid(v46.pw_uid, uu);
    }

    goto LABEL_53;
  }

LABEL_64:
  if (acl_set_fd(a2, fd_np) < 0)
  {
    v35 = __error();
    if ((a3 & 1) == 0 || *v35 != 1)
    {
      v37 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 499, 100, v37, "acl_set_fd");
      goto LABEL_81;
    }
  }

  v7 = 0;
LABEL_82:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  free(v19);
  return v7;
}

AAEntryACLBlob AAEntryACLBlobCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobCreate", 521, 100, *v2, "malloc");
  }

  return v1;
}

void AAEntryACLBlobDestroy(AAEntryACLBlob acl)
{
  if (acl)
  {
    free(*(acl + 2));
    free(*(acl + 5));
    memset_s(acl + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(acl, 0x30uLL, 0, 0x30uLL);

    free(acl);
  }
}

AAEntryACLBlob AAEntryACLBlobCreateWithEncodedData(const uint8_t *data, size_t data_size)
{
  v4 = AAEntryACLBlobCreate();
  v5 = v4;
  if (v4 && (sub_1001117B8(v4, data, data_size) & 0x80000000) != 0)
  {
    AAEntryACLBlobDestroy(v5);
    return 0;
  }

  return v5;
}

AAEntryACLBlob AAEntryACLBlobCreateWithPath(const char *dir, const char *path, AAFlagSet flags)
{
  v6 = AAEntryACLBlobCreate();
  v7 = v6;
  if (v6 && (sub_100111C50(v6, dir, path, flags) & 0x80000000) != 0)
  {
    AAEntryACLBlobDestroy(v7);
    return 0;
  }

  return v7;
}

int AAEntryACLBlobClear(AAEntryACLBlob acl)
{
  *acl = 0;
  *(acl + 3) = 0;
  return 0;
}

int AAEntryACLBlobApplyToPath(AAEntryACLBlob acl, const char *dir, const char *path, AAFlagSet flags)
{
  v4 = flags;
  if ((sub_1000F4680(v11, 0x800uLL, dir, path) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 569, 100, 0, "invalid path %s/%s");
    return -1;
  }

  v6 = open(v11, 0x200000);
  if (v6 < 0)
  {
    v9 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 571, 100, v9, "open: %s");
    return -1;
  }

  v7 = v6;
  if ((sub_1001126B4(acl, v6, v4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 573, 100, 0, "applying ACL blob: %s", v11);
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  close(v7);
  return v8;
}

int AAEntryACLBlobGetEntry(AAEntryACLBlob acl, uint32_t i, AAAccessControlEntry *ace, size_t qualifier_capacity, uint8_t *qualifier_value, size_t *qualifier_size)
{
  if (*acl <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobGetEntry", 593, 100, 0, "invalid ACL index %u", i);
  }

  else
  {
    v7 = *(acl + 5) + *(*(acl + 2) + 8 * i);
    v8 = (*v7 - 22);
    v9 = *(v7 + 4);
    if (v9 == 65)
    {
      v10 = ACL_EXTENDED_ALLOW;
    }

    else
    {
      v10 = 2 * (v9 == 68);
    }

    ace->tag = v10;
    ace->qualifier_type = *(v7 + 21);
    ace->flags = *(v7 + 5);
    ace->perms = *(v7 + 13);
    if (qualifier_size)
    {
      *qualifier_size = v8;
    }

    if (!qualifier_capacity)
    {
      return 0;
    }

    if (v8 <= qualifier_capacity)
    {
      memcpy(qualifier_value, (v7 + 22), v8);
      return 0;
    }
  }

  return -1;
}

uint64_t sub_100113138(uint64_t a1)
{
  if ((*a1 - 3) > 0xFFFFFFFD)
  {
    HIDWORD(v2) = *(a1 + 24) - 71;
    LODWORD(v2) = HIDWORD(v2);
    v1 = v2 >> 1;
    v3 = v1 > 7;
    v4 = (1 << v1) & 0xC3;
    if (v3 || v4 == 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 156, 100, 0, "invalid ACL qualifier type %c");
    }

    else if ((*(a1 + 16) & 0xFFFFFFFFFCFDFE0FLL) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 158, 100, 0, "invalid ACL flags 0x%llx");
    }

    else
    {
      if ((*(a1 + 8) & 0xFFFFFFFFFFEFC001) == 0)
      {
        return 0;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 159, 100, 0, "invalid ACL perms 0x%llx");
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 148, 100, 0, "invalid ACL entry tag %c");
  }

  return 0xFFFFFFFFLL;
}

int AAEntryACLBlobSetEntry(AAEntryACLBlob acl, uint32_t i, const AAAccessControlEntry *ace, const uint8_t *qualifier_value, size_t qualifier_size)
{
  if ((sub_100113138(ace) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", 648, 100, 0, "invalid ACL entry");
    return -1;
  }

  if (*acl <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", 649, 100, 0, "invalid ACL index %u");
    return -1;
  }

  if (qualifier_size > 0xFFFFFFE9 || (v10 = (qualifier_size + 22), qualifier_size == -23))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", 653, 100, 0, "ACL entry size out of range");
    return -1;
  }

  v11 = i;
  v12 = *(*(acl + 2) + 8 * i);
  v13 = *(acl + 5);
  v14 = *&v13[v12];
  v15 = v12 + v14;
  if (__CFADD__(v12, v14) || (v16 = *(acl + 3), v17 = v16 - v15, v16 < v15))
  {
LABEL_7:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", 656, 100, 0, "alloc ACL entry");
    return -1;
  }

  if (v10 > v14)
  {
    v19 = v10 - v14;
    v20 = v16 + v10 - v14;
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_7;
    }

    v21 = *(acl + 4);
    if (v21 < v20)
    {
      v22 = 0x4000;
      do
      {
        while (!v21)
        {
          v21 = 0x4000;
          if (v20 <= 0x4000)
          {
            goto LABEL_29;
          }
        }

        v23 = v21 >> 1;
        if ((v21 & (v21 >> 1)) != 0)
        {
          v23 = v21 & (v21 >> 1);
        }

        v21 += v23;
      }

      while (v21 < v20);
      v22 = v21;
      if (v21 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_54;
      }

LABEL_29:
      v36 = v19;
      v35 = v22;
      v26 = realloc(v13, v22);
      if (v26)
      {
        v19 = v36;
        *(acl + 4) = v35;
        *(acl + 5) = v26;
        v13 = v26;
        v17 = v16 - v15;
        goto LABEL_31;
      }

      free(v13);
LABEL_54:
      *(acl + 3) = 0;
      *(acl + 4) = 0;
      *(acl + 5) = 0;
      goto LABEL_7;
    }

LABEL_31:
    if (v16 != v15)
    {
      v27 = v19;
      memmove(&v13[v15 + v19], &v13[v15], v17);
      v19 = v27;
    }

    v16 = *(acl + 3) + v19;
    goto LABEL_34;
  }

  if (v10 < v14)
  {
    v24 = v14 - v10;
    if (v16 != v15)
    {
      v25 = v24;
      memmove(&v13[v15 - v24], &v13[v15], v17);
      v24 = v25;
      v15 = *(acl + 3);
    }

    v16 = v15 - v24;
LABEL_34:
    *(acl + 3) = v16;
  }

  if (v12 >= 0xFFFFFFFFFFFFFFFCLL || v12 + 4 > v16)
  {
    goto LABEL_7;
  }

  *(*(acl + 5) + v12) = v10;
  if (*acl > v11)
  {
    v28 = v11;
    while (v12 < 0xFFFFFFFFFFFFFFFCLL && v12 + 4 <= *(acl + 3))
    {
      v29 = *(acl + 5);
      v30 = *(v29 + v12);
      v31 = *(acl + 2);
      *(v31 + 8 * v28) = v12;
      v12 += v30;
      if (++v28 >= *acl)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_7;
  }

  v29 = *(acl + 5);
  v31 = *(acl + 2);
LABEL_44:
  v32 = v29 + *(v31 + 8 * v11);
  *v32 = v10;
  if (ace->tag == ACL_EXTENDED_DENY)
  {
    v33 = 68;
  }

  else
  {
    v33 = 0;
  }

  if (ace->tag == ACL_EXTENDED_ALLOW)
  {
    v34 = 65;
  }

  else
  {
    v34 = v33;
  }

  *(v32 + 4) = v34;
  *(v32 + 5) = ace->flags;
  *(v32 + 13) = ace->perms;
  *(v32 + 21) = ace->qualifier_type;
  if (qualifier_size)
  {
    memcpy((v32 + 22), qualifier_value, qualifier_size);
  }

  return 0;
}

int AAEntryACLBlobRemoveEntry(AAEntryACLBlob acl, uint32_t i)
{
  v2 = *acl;
  if (*acl <= i || (v4 = i, v5 = *(*(acl + 2) + 8 * i), v6 = *(acl + 5), v7 = *(v6 + v5), v8 = __CFADD__(v5, v7), v9 = v5 + v7, v8) || (v10 = *(acl + 3), v10 < v9))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobRemoveEntry", 673, 100, 0, "invalid ACL index %u", i);
    return -1;
  }

  else
  {
    if (v7)
    {
      if (v10 != v9)
      {
        memmove((v6 + v9 - v7), (v6 + v9), v10 - v9);
        v9 = *(acl + 3);
        v2 = *acl;
      }

      *(acl + 3) = v9 - v7;
    }

    v12 = v2 - 1;
    *acl = v12;
    if (v12 > v4)
    {
      v13 = *(acl + 2);
      do
      {
        *(v13 + 8 * v4) = *(v13 + 8 * v4 + 8) - v7;
        ++v4;
      }

      while (v4 < *acl);
    }

    return 0;
  }
}

off_t AAByteStreamProcess(AAByteStream istream, AAByteStream ostream)
{
  v4 = malloc(0x40000uLL);
  if (v4)
  {
    v5 = v4;
    v6 = AAByteStreamRead(istream, v4, 0x40000uLL);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v6;
      v8 = 0;
      while (2)
      {
        if (!v7)
        {
          free(v5);
          return v8;
        }

        v9 = 0;
        v8 += v7;
        do
        {
          v10 = AAByteStreamWrite(ostream, &v5[v9], v7 - v9);
          if (v10 < 0)
          {
            AAByteStreamCancel(istream);
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 40, 58, 0, "byte stream write error");
            goto LABEL_14;
          }

          if (!v10)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 42, 58, 0, "byte stream truncated write");
            goto LABEL_14;
          }

          v9 += v10;
        }

        while (v9 < v7);
        v7 = AAByteStreamRead(istream, v5, 0x40000uLL);
        if ((v7 & 0x8000000000000000) == 0)
        {
          continue;
        }

        break;
      }
    }

    AAByteStreamCancel(ostream);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 26, 58, 0, "byte stream read error");
LABEL_14:
    free(v5);
  }

  else
  {
    v11 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 18, 58, *v11, "malloc");
  }

  return -1;
}

void *AEADecryptAsyncStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v6 = a6;
  if (!a6)
  {
    v6 = sub_1000F4290();
  }

  v12 = malloc(0x4A0uLL);
  v13 = v12;
  if (!v12)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 884;
    goto LABEL_8;
  }

  memset_s(v12, 0x4A0uLL, 0, 0x4A0uLL);
  if (pthread_mutex_init((v13 + 56), 0))
  {
    v14 = "pthread_mutex_init";
    v15 = 885;
LABEL_6:
    v16 = 0;
LABEL_8:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "AEADecryptAsyncStreamOpen", v15, 114, v16, v14);
    sub_1001143DC(v13);
    AAAsyncByteStreamClose(0);
    return 0;
  }

  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 1128) = -1;
  *(v13 + 1144) = -1;
  *(v13 + 1152) = -1;
  *(v13 + 32) = a5 >> 62;
  *(v13 + 40) = a5;
  *(v13 + 1160) = v6;
  v18 = calloc(v6, 8uLL);
  *(v13 + 1168) = v18;
  if (!v18)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 899;
    goto LABEL_8;
  }

  if (*(v13 + 1160))
  {
    v19 = 0;
    while (1)
    {
      v20 = malloc(0x468uLL);
      v21 = v20;
      if (v20)
      {
        memset_s(v20, 0x468uLL, 0, 0x468uLL);
        *v21 = v13;
      }

      else
      {
        v22 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerAlloc", 129, 114, *v22, "malloc");
      }

      *(*(v13 + 1168) + 8 * v19) = v21;
      v23 = *(v13 + 1168);
      if (!*(v23 + 8 * v19))
      {
        break;
      }

      ++v19;
      v18 = *(v13 + 1160);
      if (v19 >= v18)
      {
        goto LABEL_20;
      }
    }

    v14 = "Worker alloc";
    v15 = 903;
    goto LABEL_6;
  }

  v23 = v18;
  LODWORD(v18) = 0;
LABEL_20:
  v24 = sub_1001021B4(v18, v23, sub_100113B20);
  *(v13 + 1176) = v24;
  if (!v24)
  {
    v14 = "creating worker pool";
    v15 = 906;
    goto LABEL_6;
  }

  *(v13 + 52) = 0;
  if (sub_100114298(v13, 12))
  {
    v14 = "add range";
    v15 = 910;
    goto LABEL_6;
  }

  *(v13 + 1128) = 0;
  result = sub_10010D7B4(v13, sub_1001143DC, ~(a5 >> 55) & 4, 20.0, 1.0);
  if (!result)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 921;
    goto LABEL_8;
  }

  result[2] = sub_1001145BC;
  result[3] = sub_100114710;
  result[4] = sub_100114948;
  result[5] = sub_10011495C;
  return result;
}

uint64_t sub_100113B20(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  if (v1 >= *(*result + 1120))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 183, 114, 0, "Invalid range index");
  }

  else
  {
    v3 = *(v2 + 1136) + 32 * v1;
    v4 = *(v3 + 24);
    if (*(v2 + 1096) <= v4)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 191, 114, 0, "Invalid segment index");
    }

    else
    {
      v5 = *(v2 + 784);
      if (v5 >= 0x101)
      {
        goto LABEL_62;
      }

      v6 = result;
      v35 = *(v2 + 1136) + 32 * v1;
      v7 = *(v3 + 28);
      v8 = (*(v2 + 1104) + *(v2 + 800) * v4);
      v9 = *(v2 + 152) * v4;
      v11 = *v8;
      v10 = v8[1];
      v12 = v8 + 2;
      v13 = (result + 612);
      memcpy((result + 612), v8 + 2, v5);
      *(v6 + 608) = v5;
      __s2 = v13;
      memset_s(&v13[v5], 256 - v5, 0, 256 - v5);
      result = sub_1000FB3BC(*(v2 + 160));
      if (v11 == v10)
      {
        v14 = 0;
      }

      else
      {
        v14 = result;
      }

      v15 = *(v6 + 16);
      if (v15 != 1)
      {
        if (v15)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 307, 114, 0, "Invalid op");
        }

        else if (v7 == 3)
        {
          v16 = *(v2 + 16);
          if (!v16)
          {
LABEL_29:
            result = 0;
            *(v35 + 28) = 4;
            return result;
          }

          v17 = v16(*v2, v11, v9, *(v2 + 148), __s2, *(v6 + 608));
          if ((v17 & 0x80000000) == 0)
          {
            if (v17)
            {
              *(v35 + 28) = 6;
              atomic_fetch_add((v2 + 120), 1u);
              if (*(v2 + 32) >= 3u)
              {
                fprintf(__stderrp, "Segment %u skipped, offset=%jd, payload=%u, raw=%u\n");
              }

              return 0;
            }

            goto LABEL_29;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 220, 114, 0, "Client selection callback reported an error");
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 207, 114, 0, "Invalid segment state");
        }

        goto LABEL_48;
      }

      if (v7 == 2)
      {
        if (*(v6 + 32) == v10)
        {
          v33 = v11;
          v18 = *(v2 + 324);
          if (v18 >= 0x101)
          {
            goto LABEL_62;
          }

          memcpy((v6 + 352), v12 + *(v2 + 784), *(v2 + 324));
          *(v6 + 348) = v18;
          memset_s((v6 + 352 + v18), 256 - v18, 0, 256 - v18);
          v19 = *(v2 + 156);
          v37 = 0;
          memset(v36, 0, sizeof(v36));
          memset(&__s[8], 0, 252);
          memset(v38, 0, 260);
          *&__s[8] = 19267;
          *__s = 0x5F41454100000006;
          memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
          *&__s[*__s + 4] = v4 / v19;
          *__s = 10;
          memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
          v20 = *(v2 + 384);
          if (v20 && *(v2 + 520))
          {
            v21 = v20(v36, *(v2 + 312));
            memset_s(__s, 0x104uLL, 0, 0x104uLL);
            v22 = 0;
            if ((v21 & 0x80000000) == 0)
            {
              goto LABEL_33;
            }
          }

          else
          {
            memset_s(__s, 0x104uLL, 0, 0x104uLL);
          }

          v22 = 1;
LABEL_33:
          memset(v38 + 8, 0, 224);
          memset(&v38[14] + 8, 0, 28);
          WORD4(v38[0]) = 19283;
          *&v38[0] = 0x5F41454100000006;
          result = memset_s(v38 + 10, 0xFAuLL, 0, 0xFAuLL);
          v23 = LODWORD(v38[0]);
          if (LODWORD(v38[0]) < 0xFD)
          {
            *(v38 + LODWORD(v38[0]) + 4) = v4 % v19;
            LODWORD(v38[0]) = v23 + 4;
            memset_s(v38 + v23 + 8, 252 - v23, 0, 252 - v23);
            memset(__s, 0, sizeof(__s));
            v24 = *(v2 + 384);
            if (v24 && LODWORD(v36[0]))
            {
              v25 = v24(v6 + 88, *(v2 + 316), v36, v38, __s);
              memset_s(v38, 0x104uLL, 0, 0x104uLL);
              if ((v25 & 0x80000000) == 0)
              {
                memset_s(v36, 0x104uLL, 0, 0x104uLL);
                if (!v22)
                {
                  v26 = *(v2 + 408);
                  if (v26 && *(v6 + 348) == *(v2 + 324) && (v27 = (v6 + 40), (v26(*(v6 + 40), *(v6 + 32)) & 0x80000000) == 0))
                  {
                    if (v14)
                    {
                      v27 = (v6 + 64);
                      v28 = compression_decode_buffer(*(v6 + 64), *(v6 + 48), *(v6 + 40), *(v6 + 32), *(v6 + 80), v14);
                      *(v6 + 56) = v28;
                    }

                    else
                    {
                      v28 = *(v6 + 32);
                    }

                    if (v28 == v33 && (v30 = *v27, (sub_1000FB1CC(v6 + 868, *(v2 + 148), v30, v28) & 0x80000000) == 0) && (v31 = *(v6 + 868), *(v2 + 784) == v31) && v31 == *(v6 + 608) && !memcmp((v6 + 872), __s2, v31))
                    {
                      v32 = *(v2 + 24);
                      if (!v32 || (v32(*v2, v28, v9, v30) & 0x80000000) == 0)
                      {
                        *(v35 + 28) = 5;
                        atomic_fetch_add((v2 + 120), 1u);
                        if (*(v2 + 32) >= 3u)
                        {
                          fprintf(__stderrp, "Segment %u processed, offset=%jd, payload=%u, raw=%u\n");
                        }

                        return 0;
                      }

                      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 297, 114, 0, "Client processing callback reported an error");
                    }

                    else
                    {
                      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 285, 114, 0, "Segment data failed verification");
                    }
                  }

                  else
                  {
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 259, 114, 0, "Segment decryption");
                  }

                  goto LABEL_48;
                }

                goto LABEL_45;
              }
            }

            else
            {
              memset_s(v38, 0x104uLL, 0, 0x104uLL);
            }

            memset_s(v36, 0x104uLL, 0, 0x104uLL);
LABEL_45:
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 252, 114, 0, "derive segment encryption key");
            goto LABEL_48;
          }

LABEL_62:
          __break(1u);
          return result;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 242, 114, 0, "Segment payload size mismatch");
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 239, 114, 0, "Invalid segment state");
      }
    }
  }

LABEL_48:
  v29 = 0;
  atomic_compare_exchange_strong((v2 + 48), &v29, 1u);
  return 0xFFFFFFFFLL;
}

unint64_t sub_100114298(void *a1, uint64_t a2)
{
  v4 = a1[140];
  v5 = a1[139];
  if (v4 >= v5)
  {
    v6 = 2 * v5;
    v7 = v5 == 0;
    v8 = 32;
    if (!v7)
    {
      v8 = v6;
    }

    a1[139] = v8;
    if ((32 * v8) >= 0x2000000001)
    {
      *__error() = 12;
LABEL_14:
      a1[142] = 0;
      v15 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushRange", 346, 114, *v15, "malloc");
      a1[139] = 0;
      a1[140] = 0;
      return -1;
    }

    v9 = a1[142];
    v10 = realloc(v9, 32 * v8);
    if (!v10)
    {
      free(v9);
      goto LABEL_14;
    }

    a1[142] = v10;
    v4 = a1[140];
  }

  v11 = a1[142];
  if (v4)
  {
    v12 = &v11[4 * v4];
    v13 = *(v12 - 4) + *(v12 - 3);
    a1[140] = v4 + 1;
LABEL_11:
    memset_s(v12, 0x20uLL, 0, 0x20uLL);
    v14 = v13;
    goto LABEL_12;
  }

  v13 = 0;
  v14 = 0;
  a1[140] = 1;
  v12 = v11;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  *v12 = a2;
  v12[1] = v14;
  v12[2] = -1;
  *(v12 + 6) = -1;
  return v4;
}

uint64_t sub_1001143DC(uint64_t a1)
{
  v2 = atomic_load((a1 + 48));
  v3 = v2 == 0;
  if ((sub_100102638(*(a1 + 1176)) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncClose", 850, 114, 0, "ThreadPoolDestroy");
    v3 = 0;
  }

  v4 = *(a1 + 1168);
  if (v4)
  {
    v5 = *(a1 + 1160);
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(*(a1 + 1168) + 8 * i);
        if (v7)
        {
          v8 = *(v7 + 40);
          if (v8)
          {
            memset_s(*(v7 + 40), *(v7 + 24), 0, *(v7 + 24));
          }

          free(v8);
          v9 = *(v7 + 64);
          if (v9)
          {
            memset_s(*(v7 + 64), *(v7 + 48), 0, *(v7 + 48));
          }

          free(v9);
          v10 = *(v7 + 80);
          if (v10)
          {
            memset_s(*(v7 + 80), *(v7 + 72), 0, *(v7 + 72));
          }

          free(v10);
          memset_s(v7, 0x468uLL, 0, 0x468uLL);
          free(v7);
          v5 = *(a1 + 1160);
        }
      }

      v4 = *(a1 + 1168);
    }

    free(v4);
  }

  v11 = *(a1 + 808);
  if (v11)
  {
    memset_s(*(a1 + 808), *(a1 + 792), 0, *(a1 + 792));
  }

  free(v11);
  v12 = *(a1 + 1136);
  if (v12)
  {
    memset_s(*(a1 + 1136), 32 * *(a1 + 1112), 0, 32 * *(a1 + 1112));
  }

  free(v12);
  v13 = *(a1 + 1104);
  if (v13)
  {
    v14 = *(a1 + 800) * *(a1 + 1088);
    memset_s(*(a1 + 1104), v14, 0, v14);
  }

  free(v13);
  AEAContextDestroy(*(a1 + 128));
  pthread_mutex_destroy((a1 + 56));
  memset_s(a1, 0x4A0uLL, 0, 0x4A0uLL);
  free(a1);
  return (v3 - 1);
}

uint64_t sub_1001145BC(uint64_t a1, void *a2, void *a3)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncGetRange", 743, 114, 0, "lockState");
LABEL_18:
    v15 = 0;
    atomic_compare_exchange_strong((a1 + 48), &v15, 1u);
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 52) == 4)
  {
    v7 = *(a1 + 1128);
    if (v7 < 0)
    {
LABEL_9:
      v10 = atomic_load((a1 + 120));
      if (*(a1 + 1096) == v10)
      {
        *(a1 + 52) = 5;
      }
    }

    else
    {
      v8 = *(a1 + 1136);
      while (1)
      {
        v9 = v8 + 32 * v7;
        if (*(v9 + 28) == 4)
        {
          break;
        }

        v7 = *(v9 + 16);
        *(a1 + 1128) = v7;
        if (v7 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v11 = *(a1 + 1128);
  if (v11 < 0)
  {
    if (*(a1 + 52) == 5)
    {
      *a2 = 0;
      *a3 = 0;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = *(a1 + 1136) + 32 * v11;
    v13 = *(v12 + 8);
    *a2 = *v12;
    *a3 = v13;
    v14 = 1;
    *(v12 + 28) = 1;
    *(a1 + 1128) = *(v12 + 16);
  }

  if (pthread_mutex_unlock((a1 + 56)))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncGetRange", 782, 114, 0, "unlockState");
    goto LABEL_18;
  }

  return v14;
}

uint64_t sub_100114710(uint64_t a1, uint64_t *a2, size_t a3, uint64_t a4)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  if (!pthread_mutex_lock((a1 + 56)))
  {
    __key[0] = 0;
    v16 = 0u;
    __key[1] = a4;
    v9 = bsearch(__key, *(a1 + 1136), *(a1 + 1120), 0x20uLL, sub_100115A80);
    if (v9)
    {
      if (v9[7] != 1)
      {
LABEL_21:
        v12 = 0;
        goto LABEL_24;
      }

      v9[7] = 2;
      if (*v9 == a3)
      {
        v10 = *(a1 + 52);
        if (v10 <= 1)
        {
          if (v10)
          {
            if (v10 != 1)
            {
              goto LABEL_22;
            }

            v11 = sub_100114AA0(a1, a2, a3);
          }

          else
          {
            v11 = sub_100114968(a1, a2, a3);
          }
        }

        else
        {
          switch(v10)
          {
            case 2:
              v11 = sub_100114E84(a1, a2, a3);
              break;
            case 3:
              v11 = sub_10011560C(a1, a2, a3);
              break;
            case 4:
              v11 = sub_100115938(a1, (v9 - *(a1 + 1136)) >> 5, a2, a3);
              break;
            default:
LABEL_22:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 822, 114, 0, "Invalid archive");
              goto LABEL_23;
          }
        }

        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 808, 114, 0, "Invalid size received: %zu\n");
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 800, 114, 0, "Invalid offset received: %jd\n");
    }

LABEL_23:
    v12 = 1;
LABEL_24:
    if (pthread_mutex_unlock((a1 + 56)))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 825, 114, 0, "unlockState");
    }

    else if (!v12)
    {
      return 0;
    }

    goto LABEL_26;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 796, 114, 0, "lockState");
LABEL_26:
  v13 = 0;
  atomic_compare_exchange_strong((a1 + 48), &v13, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100114968(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a1 + 32) >= 3u)
  {
    fprintf(__stderrp, "Magic received: %zu B\n", a3);
  }

  if (a3 == 12)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    memset(v7, 0, sizeof(v7));
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    v13 = *a2;
    v14 = *(a2 + 2);
    if ((sub_1000FADA8(v11, &v13) & 0x80000000) == 0 && (sub_1000DB560((a1 + 312), v11) & 0x80000000) == 0 && (sub_1000FB160(v7, v11, (a1 + 312)) & 0x80000000) == 0)
    {
      result = 0;
      **(a1 + 1136) = v8;
      *(a1 + 52) = 1;
      *(a1 + 1128) = 0;
      return result;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processMagic", 494, 114, 0, "Invalid archive");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processMagic", 487, 114, 0, "Invalid magic");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100114AA0(void *a1, _DWORD *a2, size_t a3)
{
  if (*(a1 + 8) >= 3u)
  {
    fprintf(__stderrp, "Prologue received: %zu B\n", a3);
  }

  v6 = sub_100116CE4(a2, a3);
  a1[16] = v6;
  if (!v6)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 514, 114, 0, "creating encryption context");
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = a1[1];
  if (v8)
  {
    if ((v8(*a1, v6) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 518, 114, 0, "Context setup callback returned an error");
      return 0xFFFFFFFFLL;
    }

    v7 = a1[16];
  }

  if ((sub_100115E00(v7, (a1 + 17), a1 + 130, 0, 1, 0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 521, 114, 0, "Archive unlock");
    return 0xFFFFFFFFLL;
  }

  v9 = sub_1000FAD8C(*(a1 + 37));
  a1[98] = v9;
  if (v9 <= 0x1F)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 525, 114, 0, "Invalid checksum mode for decrypt to file, at least 256 bits are required");
    return 0xFFFFFFFFLL;
  }

  result = sub_1000FB160((a1 + 26), a1 + 34, a1 + 78);
  if ((result & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 528, 114, 0, "Invalid archive");
    return 0xFFFFFFFFLL;
  }

  if (a1[1])
  {
    v11 = a1[16];
    *v11 = *(a1 + 17);
    v12 = *(a1 + 19);
    v13 = *(a1 + 21);
    v14 = *(a1 + 23);
    *(v11 + 64) = a1[25];
    *(v11 + 32) = v13;
    *(v11 + 48) = v14;
    *(v11 + 16) = v12;
    result = (a1[1])(*a1, a1[16]);
    if ((result & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 534, 114, 0, "Client post-unlock callback returned an error");
      return 0xFFFFFFFFLL;
    }
  }

  if ((*(a1 + 47) & 4) != 0)
  {
    *(a1[16] + 2740) = 1;
  }

  v15 = *(a1 + 39);
  v16 = ((a1[21] + *(a1 + 38) - 1) / *(a1 + 38) + v15 - 1) / v15;
  if (HIDWORD(v16))
  {
    v17 = 0;
  }

  else
  {
    v17 = (v16 * v15) >> 32 == 0;
  }

  if (!v17)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 546, 114, 0, "Invalid archive, too many clusters");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 195) = v16;
  v18 = *(a1 + 81);
  if (v18 >= 0x101)
  {
    __break(1u);
  }

  else
  {
    memcpy(a1 + 820, a2 + a1[33], *(a1 + 81));
    *(a1 + 204) = v18;
    memset_s(a1 + v18 + 820, 256 - v18, 0, 256 - v18);
    if (*(a1 + 195))
    {
      v19 = a1[98] + *(a1 + 81) + 8;
      a1[100] = v19;
      v20 = v16 * *(a1 + 39);
      a1[136] = v20;
      a1[137] = 0;
      if (v20 * v19 >= 0x2000000001)
      {
        *__error() = 12;
        a1[138] = 0;
LABEL_37:
        v25 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 569, 114, v25, "malloc");
        return 0xFFFFFFFFLL;
      }

      v22 = malloc(v20 * v19);
      a1[138] = v22;
      if (!v22)
      {
        goto LABEL_37;
      }

      v23 = sub_100114298(a1, a1[38]);
      if ((v23 & 0x8000000000000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 573, 114, 0, "inserting first cluster header range");
        return 0xFFFFFFFFLL;
      }

      v24 = v23;
      result = 0;
      *(a1 + 13) = 2;
      a1[141] = v24;
      *(a1 + 269) = 0;
    }

    else
    {
      v21 = sub_100115A98(a1);
      if (v21 < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 556, 114, 0, "inserting padding range");
        return 0xFFFFFFFFLL;
      }

      if (!v21 && (sub_100115B40(a1) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 559, 114, 0, "Streaming data setup");
        return 0xFFFFFFFFLL;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100114E84(uint64_t a1, void *__src, size_t __n)
{
  LODWORD(v60) = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  if (*(a1 + 32) >= 3u)
  {
    fprintf(__stderrp, "Cluster header received: %zu B\n", __n);
  }

  v6 = *(a1 + 808);
  if (v6)
  {
    v7 = *(a1 + 792);
    goto LABEL_5;
  }

  v7 = *(a1 + 304);
  *(a1 + 792) = v7;
  if (v7 >= 0x2000000001)
  {
    *__error() = 12;
    *(a1 + 808) = 0;
LABEL_49:
    v40 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processClusterHeader", 596, 114, v40, "malloc", v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
LABEL_54:
    v39 = 0xFFFFFFFFLL;
    goto LABEL_55;
  }

  v6 = malloc(v7);
  *(a1 + 808) = v6;
  if (!v6)
  {
    goto LABEL_49;
  }

LABEL_5:
  if (v7 != __n)
  {
    v12 = "Invalid cluster header size";
    v13 = 600;
LABEL_53:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processClusterHeader", v13, 114, 0, v12, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    goto LABEL_54;
  }

  memcpy(v6, __src, __n);
  v8 = *(a1 + 1076);
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  memset(&__s[8], 0, 252);
  memset(v63, 0, 260);
  *&__s[8] = 19267;
  *__s = 0x5F41454100000006;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  *&__s[*__s + 4] = v8;
  *__s = 10;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v9 = *(a1 + 384);
  if (!v9 || !*(a1 + 520))
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  v10 = v9(v61, *(a1 + 312));
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  v11 = 0;
  if (v10 < 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  memset(v63 + 12, 0, 248);
  *(v63 + 4) = 0x4B4548435F414541;
  LODWORD(v63[0]) = 8;
  memset_s(v63 + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(__s, 0, sizeof(__s));
  v14 = *(a1 + 384);
  if (!v14 || !LODWORD(v61[0]))
  {
    memset_s(v63, 0x104uLL, 0, 0x104uLL);
    goto LABEL_51;
  }

  v15 = v14(&v44, *(a1 + 316), v61, v63, __s);
  memset_s(v63, 0x104uLL, 0, 0x104uLL);
  if (v15 < 0)
  {
LABEL_51:
    memset_s(v61, 0x104uLL, 0, 0x104uLL);
    goto LABEL_52;
  }

  memset_s(v61, 0x104uLL, 0, 0x104uLL);
  if (v11)
  {
LABEL_52:
    v12 = "Cluster header encryption key derivation";
    v13 = 611;
    goto LABEL_53;
  }

  v16 = *(a1 + 408);
  if (!v16 || *(a1 + 816) != *(a1 + 324) || (result = v16(*(a1 + 808), *(a1 + 288), a1 + 816, &v44, *(a1 + 808) + *(a1 + 288), *(a1 + 304) - *(a1 + 288)), (result & 0x80000000) != 0))
  {
    v12 = "Cluster header decryption";
    v13 = 622;
    goto LABEL_53;
  }

  v18 = *(a1 + 324);
  v19 = *(a1 + 156);
  if (v19)
  {
    v20 = 0;
    v21 = *(a1 + 784) + 8;
    v22 = v19 * *(a1 + 1076);
    v23 = *(a1 + 296);
    v24 = *(a1 + 280);
    while (1)
    {
      v25 = *(a1 + 1096);
      if (v25 >= *(a1 + 1088))
      {
        v12 = "Invalid archive";
        v13 = 634;
        goto LABEL_53;
      }

      v26 = (*(a1 + 1104) + *(a1 + 800) * v25);
      memcpy(v26, (*(a1 + 808) + v24), v21);
      result = memcpy(v26 + v21, (*(a1 + 808) + v23), v18);
      v27 = *v26;
      if (!v27)
      {
        goto LABEL_41;
      }

      v28 = *(a1 + 1120);
      if (v28)
      {
        v28 = *(*(a1 + 1136) + 32 * v28 - 32) + *(*(a1 + 1136) + 32 * v28 - 24);
      }

      v29 = v26[1];
      if ((v28 + v29) > *(a1 + 176) || (v30 = *(a1 + 1080) + v27, v31 = *(a1 + 168), v30 > v31))
      {
        v12 = "Invalid archive: segment size mismatch";
        v13 = 648;
        goto LABEL_53;
      }

      if (v29 > v27 || (v30 != v31 ? (v32 = v27 >= *(a1 + 152)) : (v32 = 1), !v32))
      {
        v42 = v26[1];
        v43 = *v26;
        v12 = "Invalid segment sizes: payload=%u raw=%u";
        v13 = 651;
        goto LABEL_53;
      }

      ++*(a1 + 1096);
      *(a1 + 1080) = v30;
      result = sub_100114298(a1, v29);
      if (result < 0)
      {
        break;
      }

      v24 += v21;
      v23 += v18;
      v33 = *(a1 + 1136);
      v34 = v33 + 32 * result;
      *(v34 + 24) = v22;
      *(v34 + 28) = 3;
      v35 = *(a1 + 1152);
      v36 = (v33 + 32 * v35 + 16);
      if (v35 < 0)
      {
        v36 = (a1 + 1144);
      }

      *v36 = result;
      *(a1 + 1152) = result;
      ++v20;
      ++v22;
      if (v20 >= *(a1 + 156))
      {
LABEL_41:
        LODWORD(v18) = *(a1 + 324);
        goto LABEL_42;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushSegmentRange", 386, 114, 0, "inserting segment range");
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processClusterHeader", 658, 114, 0, "inserting segment range", v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    goto LABEL_54;
  }

LABEL_42:
  if (v18 < 0x101)
  {
    memcpy((a1 + 820), (*(a1 + 808) + *(a1 + 288)), v18);
    *(a1 + 816) = v18;
    memset_s((a1 + 820 + v18), 256 - v18, 0, 256 - v18);
    v37 = *(a1 + 1076) + 1;
    *(a1 + 1076) = v37;
    if (v37 == *(a1 + 780))
    {
      v38 = sub_100115A98(a1);
      if (v38 < 0)
      {
        v12 = "inserting padding range";
        v13 = 669;
      }

      else
      {
        if (v38 || (sub_100115B40(a1) & 0x80000000) == 0)
        {
          v39 = 0;
LABEL_55:
          memset_s(&v44, 0x104uLL, 0, 0x104uLL);
          return v39;
        }

        v12 = "Streaming data setup";
        v13 = 672;
      }
    }

    else
    {
      v41 = sub_100114298(a1, *(a1 + 304));
      if ((v41 & 0x8000000000000000) == 0)
      {
        v39 = 0;
        *(a1 + 1128) = v41;
        goto LABEL_55;
      }

      v12 = "inserting next cluster header range";
      v13 = 679;
    }

    goto LABEL_53;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) >= 3u)
  {
    fprintf(__stderrp, "Padding received: %zu B\n", a3);
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  __s = 0u;
  v18 = 0u;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (*(a1 + 488) && (*(v15 + 7) = 1262571615, *&v15[0] = 0x5F41454100000007, memset_s((v15 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v6 = *(a1 + 384)) != 0) && *(a1 + 520) && (v6(&__s, *(a1 + 312)) & 0x80000000) == 0)
  {
    v7 = (*(a1 + 488))(&__s);
  }

  else
  {
    v7 = 0;
  }

  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v15, 0x104uLL, 0, 0x104uLL);
  if (!v7)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPadding", 699, 114, 0, "authenticating padding");
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 496);
  v9 = !v8 || (v8(v7, a2, a3) & 0x80000000) != 0;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  __s = 0u;
  v18 = 0u;
  v10 = *(a1 + 504);
  if (!v10)
  {
    goto LABEL_22;
  }

  if (*(a1 + 816) != *(a1 + 324))
  {
    goto LABEL_22;
  }

  if ((v10(v7, &__s) & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (__s != *(a1 + 324))
  {
    goto LABEL_22;
  }

  if (__s >= 8)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v12 |= *(&__s + v11 + 4) ^ *(a1 + 820 + v11);
      v13 = v11 + 16;
      v11 += 8;
    }

    while (v13 <= __s);
    if (v12)
    {
LABEL_22:
      memset_s(&__s, 0x104uLL, 0, 0x104uLL);
LABEL_23:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPadding", 702, 114, 0, "authenticating padding");
      return 0xFFFFFFFFLL;
    }
  }

  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  if (v9)
  {
    goto LABEL_23;
  }

  if ((sub_100115B40(a1) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPadding", 705, 114, 0, "Streaming data setup");
  return 0xFFFFFFFFLL;
}

uint64_t sub_100115938(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = a4;
  if (*(a1 + 32) >= 3u)
  {
    fprintf(__stderrp, "Segment received: %zu B\n", a4);
  }

  v8 = sub_100102924(*(a1 + 1176));
  if (!v8)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", 720, 114, 0, "ThreadPoolGetWorker");
    goto LABEL_9;
  }

  v9 = v8;
  v10 = 1;
  if (*(v8 + 24) < v4)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", 723, 114, 0, "Invalid segment size");
    v10 = 0;
    v4 = 0;
  }

  memcpy(*(v9 + 40), a3, v4);
  *(v9 + 32) = v4;
  *(v9 + 16) = 1;
  *(v9 + 8) = a2;
  if ((sub_100102A58(*(a1 + 1176)) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", 728, 114, 0, "ThreadPoolRunWorker");
LABEL_9:
    v10 = 0;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100115A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 < v3;
  v5 = v2 != v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100115A98(uint64_t a1)
{
  if (*(*(a1 + 128) + 2740))
  {
    return 0;
  }

  v2 = *(a1 + 1120);
  if (v2)
  {
    v2 = *(*(a1 + 1136) + 32 * v2 - 32) + *(*(a1 + 1136) + 32 * v2 - 24);
  }

  v3 = *(a1 + 176);
  if (v3 == v2)
  {
    return 0;
  }

  if (v3 >= v2)
  {
    v5 = sub_100114298(a1, v3 - v2);
    if ((v5 & 0x8000000000000000) == 0)
    {
      *(a1 + 52) = 3;
      *(a1 + 1128) = v5;
      return 1;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushPaddingRange", 375, 114, 0, "inserting padding range");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100115B40(uint64_t a1)
{
  if (!*(a1 + 780))
  {
    result = 0;
    *(a1 + 52) = 5;
    return result;
  }

  if (!*(a1 + 1160))
  {
LABEL_14:
    v13 = *(a1 + 1120);
    if (v13)
    {
      v14 = 0;
      v15 = 24;
      do
      {
        if (*(*(a1 + 1136) + v15) != -1)
        {
          v16 = sub_100102924(*(a1 + 1176));
          if (!v16)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 449, 114, 0, "ThreadPoolGetWorker");
            return 0xFFFFFFFFLL;
          }

          *(v16 + 16) = 0;
          *(v16 + 8) = v14;
          if ((sub_100102A58(*(a1 + 1176)) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 452, 114, 0, "ThreadPoolRunWorker");
            return 0xFFFFFFFFLL;
          }

          v13 = *(a1 + 1120);
        }

        ++v14;
        v15 += 32;
      }

      while (v14 < v13);
    }

    if ((sub_100102B28(*(a1 + 1176)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 454, 114, 0, "ThreadPoolSync");
      return 0xFFFFFFFFLL;
    }

    v17 = *(a1 + 1120);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = (*(a1 + 1136) + 28);
      do
      {
        v22 = *v20;
        v20 += 8;
        v21 = v22;
        if (v22 == 4)
        {
          v23 = v19 + 1;
        }

        else
        {
          v23 = v19;
        }

        if (v21 == 6)
        {
          ++v18;
        }

        else
        {
          v19 = v23;
        }

        --v17;
      }

      while (v17);
      v17 = (v18 + v19);
    }

    if (*(a1 + 1096) != v17 || *(a1 + 1080) != *(a1 + 168))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 467, 114, 0, "Segment count/size mismatch");
      return 0xFFFFFFFFLL;
    }

    result = 0;
    *(a1 + 52) = 4;
    *(a1 + 1128) = *(a1 + 1144);
    return result;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(*(a1 + 1168) + 8 * v2);
    if (v3[3])
    {
      goto LABEL_5;
    }

    v4 = *v3;
    v5 = *(*v3 + 152);
    v6 = malloc(v5);
    v3[5] = v6;
    if (!v6)
    {
      v25 = 144;
      goto LABEL_44;
    }

    v3[3] = v5;
    v7 = sub_1000FB3BC(*(v4 + 160));
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = v7;
    v9 = malloc(v5);
    v3[8] = v9;
    if (!v9)
    {
      v25 = 152;
      goto LABEL_44;
    }

    v3[6] = v5;
    v10 = compression_decode_scratch_buffer_size(v8);
    if (!v10)
    {
      goto LABEL_5;
    }

    v11 = v10;
    if (v10 >= 0x2000000001)
    {
      break;
    }

    v12 = malloc(v10);
    v3[10] = v12;
    if (!v12)
    {
      goto LABEL_43;
    }

    v3[9] = v11;
LABEL_5:
    if (++v2 >= *(a1 + 1160))
    {
      goto LABEL_14;
    }
  }

  *__error() = 12;
  v3[10] = 0;
LABEL_43:
  v25 = 159;
LABEL_44:
  v26 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerAllocBuffers", v25, 114, *v26, "malloc");
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 440, 114, 0, "Worker buffer allocation");
  return 0xFFFFFFFFLL;
}

uint64_t sub_100115E00(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, int a5, int a6)
{
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  memset(v45, 0, sizeof(v45));
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  *v93 = 0u;
  v92 = 0;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  *__n = 0u;
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v12 = *(a1 + 1372);
  *a2 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *(a2 + 16) = v13;
  if ((sub_1000DB560(v50, a2) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 33, 57, 0, "initializing crypto params");
    goto LABEL_74;
  }

  if ((sub_1000FB160(v45, a2, v50) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 34, 57, 0, "deriving container offsets");
    goto LABEL_74;
  }

  v16 = DWORD2(v50[0]);
  if (DWORD2(v50[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  v44 = a4;
  __memcpy_chk();
  LODWORD(v93[0]) = v16;
  memset_s(v93 + v16 + 4, 256 - v16, 0, 256 - v16);
  v17 = v52;
  if (v52 >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v72[0]) = v17;
  memset_s(v72 + v17 + 4, 256 - v17, 0, 256 - v17);
  if (*a2 <= 4u && ((1 << *a2) & 0x15) != 0)
  {
    v18 = *(a1 + 332);
    if (v18)
    {
      if (v18 >= 0x101)
      {
        goto LABEL_78;
      }

      __memcpy_chk();
      LODWORD(v74[0]) = v18;
      memset_s(v74 + v18 + 4, 256 - v18, 0, 256 - v18);
    }

    else if (*(a1 + 592))
    {
      if (!*(&v59 + 1) || (v34 = (*(&v59 + 1))(v74, a1 + 592), LODWORD(v74[0]) != v51) || v34 < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 47, 57, 0, "deriving signing public key");
        goto LABEL_74;
      }
    }
  }

  if (!a6 || !v12)
  {
    if ((sub_1000FB3CC(v50, a2, __n, (a1 + 72), (a1 + 2152), v72, v74, (a1 + 852), (a1 + 1112), v93, *(a1 + 2432), *(a1 + 2440)) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 70, 57, 0, "Main key derivation");
LABEL_74:
    v29 = 0;
    goto LABEL_75;
  }

  v19 = *(a1 + 1372);
  if (v19 >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(__n[0]) = v19;
  memset_s(__n + v19 + 4, 256 - v19, 0, 256 - v19);
LABEL_17:
  if (!a5)
  {
    goto LABEL_20;
  }

  if (*a2 > 5u)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 102, 57, 0, "Unsupported signature mode");
    goto LABEL_74;
  }

  v20 = 1 << *a2;
  if ((v20 & 0x2A) != 0)
  {
    goto LABEL_20;
  }

  if ((v20 & 0x14) == 0)
  {
    v41 = *(a1 + 2448);
    if (v41 >= 0x101)
    {
      goto LABEL_78;
    }

    __memcpy_chk();
    LODWORD(v68[0]) = v41;
    memset_s(v68 + v41 + 4, 256 - v41, 0, 256 - v41);
    goto LABEL_62;
  }

  memset(&v118[8], 0, 252);
  memset(__s, 0, 260);
  *&v118[7] = 1262834527;
  *v118 = 0x5F41454100000007;
  memset_s(&v118[11], 0xF9uLL, 0, 0xF9uLL);
  if (!*(&v53 + 1) || !LODWORD(__n[0]))
  {
    memset_s(v118, 0x104uLL, 0, 0x104uLL);
    goto LABEL_69;
  }

  v35 = (*(&v53 + 1))(v70, LODWORD(v50[0]), __n, v118, __s);
  memset_s(v118, 0x104uLL, 0, 0x104uLL);
  if (v35 < 0)
  {
LABEL_69:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 89, 57, 0, "deriving signature encryption key");
    goto LABEL_74;
  }

  if (!*(&v58 + 1))
  {
LABEL_73:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 90, 57, 0, "decrypting signature");
    goto LABEL_74;
  }

  memset(__s, 0, 260);
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  v114 = 0;
  memset(v113, 0, sizeof(v113));
  if (*(a1 + 2448) != HIDWORD(v51))
  {
    goto LABEL_72;
  }

  if (LODWORD(v70[0]) != LODWORD(v50[0]))
  {
    goto LABEL_72;
  }

  *(v115 + 4) = 0x324B45535F414541;
  LODWORD(v115[0]) = 8;
  memset_s((v115 | 0xC), 0xF8uLL, 0, 0xF8uLL);
  memset(v118, 0, sizeof(v118));
  if (!*(&v53 + 1) || !LODWORD(v70[0]) || ((*(&v53 + 1))(__s, DWORD1(v50[0]), v70, v115, v118) & 0x80000000) != 0)
  {
    goto LABEL_72;
  }

  v36 = DWORD2(v51);
  if (DWORD2(v51) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v68[0]) = v36;
  memset_s(v68 + v36 + 4, 256 - v36, 0, 256 - v36);
  v37 = HIDWORD(v50[0]);
  if (HIDWORD(v50[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v113[0]) = v37;
  memset_s(v113 + v37 + 4, 256 - v37, 0, 256 - v37);
  if (((*(&v58 + 1))(v68 + 4, LODWORD(v68[0]), v113, __s, 0, 0) & 0x80000000) != 0)
  {
LABEL_72:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v113, 0x104uLL, 0, 0x104uLL);
    memset_s(v115, 0x104uLL, 0, 0x104uLL);
    goto LABEL_73;
  }

  v38 = v68[0];
  v39 = DWORD2(v51);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v113, 0x104uLL, 0, 0x104uLL);
  memset_s(v115, 0x104uLL, 0, 0x104uLL);
  if (v38 != v39)
  {
    goto LABEL_73;
  }

LABEL_62:
  if (!*(&v56 + 1) || (v42 = (*(&v56 + 1))(v66, *(a1 + 2720), *(a1 + 2728)), LODWORD(v66[0]) != DWORD1(v51)) || v42 < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 94, 57, 0, "digesting prologue");
    goto LABEL_74;
  }

  if (!*(&v57 + 1) || ((*(&v57 + 1))(v68, v74, v66) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 97, 57, 0, "verifying signature");
    goto LABEL_74;
  }

LABEL_20:
  v21 = HIDWORD(v50[0]);
  if (HIDWORD(v50[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v64[0]) = v21;
  memset_s(v64 + v21 + 4, 256 - v21, 0, 256 - v21);
  v22 = *(a1 + 2720);
  v24 = *(v22 + v46 + 16);
  v23 = *(v22 + v46 + 32);
  v110 = *(v22 + v46);
  v111 = v24;
  v112 = v23;
  v25 = HIDWORD(v50[0]);
  v26 = *(a2 + 4);
  v27 = (v26 + HIDWORD(v50[0]));
  v28 = malloc(v27);
  v29 = v28;
  if (!v28)
  {
    v40 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 113, 57, *v40, "malloc");
LABEL_75:
    v31 = 0xFFFFFFFFLL;
    goto LABEL_76;
  }

  memcpy(v28, (v22 + *(&v46 + 1)), v25);
  memcpy(&v29[v25], (v22 + *(&v45[0] + 1)), v26);
  memset(__s + 12, 0, 248);
  *(__s + 4) = 0x4B4548525F414541;
  LODWORD(__s[0]) = 8;
  memset_s(__s + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(v118, 0, sizeof(v118));
  if (!*(&v53 + 1) || !LODWORD(__n[0]))
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
LABEL_58:
    v31 = 0xFFFFFFFFLL;
    goto LABEL_59;
  }

  v30 = (*(&v53 + 1))(v62, DWORD1(v50[0]), __n, __s, v118);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v30 < 0 || !v55 || LODWORD(v64[0]) != HIDWORD(v50[0]) || ((v55)(&v110, 48, v64, v62, v29, v27) & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  if ((sub_1000FAE84(a2, &v110) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 126, 57, 0, "Invalid root header");
    goto LABEL_58;
  }

  v31 = v44;
  if (a3)
  {
    v32 = LODWORD(__n[0]);
    if (LODWORD(__n[0]) >= 0x101)
    {
      goto LABEL_78;
    }

    memcpy(a3 + 1, __n + 4, LODWORD(__n[0]));
    *a3 = v32;
    memset_s(a3 + v32 + 4, 256 - v32, 0, 256 - v32);
  }

  if (v44)
  {
    v33 = LODWORD(v93[0]);
    if (LODWORD(v93[0]) < 0x101)
    {
      memcpy(v44 + 1, v93 + 4, LODWORD(v93[0]));
      *v44 = v33;
      memset_s(v44 + v33 + 4, 256 - v33, 0, 256 - v33);
      v31 = 0;
      goto LABEL_59;
    }

LABEL_78:
    __break(1u);
  }

LABEL_59:
  memset_s(v29, v27, 0, v27);
LABEL_76:
  free(v29);
  memset_s(v50, 0xD0uLL, 0, 0xD0uLL);
  memset_s(v45, 0x68uLL, 0, 0x68uLL);
  memset_s(&v110, 0x30uLL, 0, 0x30uLL);
  memset_s(v72, 0x104uLL, 0, 0x104uLL);
  memset_s(v70, 0x104uLL, 0, 0x104uLL);
  memset_s(v68, 0x104uLL, 0, 0x104uLL);
  memset_s(v66, 0x104uLL, 0, 0x104uLL);
  memset_s(v93, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v64, 0x104uLL, 0, 0x104uLL);
  memset_s(v62, 0x104uLL, 0, 0x104uLL);
  memset_s(v74, 0x104uLL, 0, 0x104uLL);
  return v31;
}

uint64_t sub_100116CE4(_DWORD *a1, size_t a2)
{
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(__s, 0, sizeof(__s));
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = malloc(0xAB8uLL);
  v5 = v4;
  if (!v4)
  {
    v8 = *__error();
    v6 = "malloc";
    v7 = 161;
LABEL_16:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextCreateWithPrologue", v7, 57, v8, v6, v17);
    AEAContextDestroy(v5);
    return 0;
  }

  memset_s(v4, 0xAB8uLL, 0, 0xAB8uLL);
  *(v5 + 684) = 1;
  if (a2 <= 0xB)
  {
    v6 = "Invalid prologue";
    v7 = 167;
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if ((sub_1000FADA8(v5, a1) & 0x80000000) != 0)
  {
    v6 = "Invalid magic";
    v7 = 168;
    goto LABEL_15;
  }

  if ((sub_1000DB560(__s, v5) & 0x80000000) != 0)
  {
    v6 = "Invalid container";
    v7 = 169;
    goto LABEL_15;
  }

  if ((sub_1000FB160(&v17, v5, __s) & 0x80000000) != 0)
  {
    v6 = "deriving container offsets";
    v7 = 170;
    goto LABEL_15;
  }

  if (v21 != a2)
  {
    v6 = "Prologue size mismatch";
    v7 = 171;
    goto LABEL_15;
  }

  *(v5 + 341) = a2;
  if (a2 >= 0x2000000001)
  {
    *__error() = 12;
    *(v5 + 340) = 0;
LABEL_28:
    v8 = *__error();
    v6 = "malloc";
    v7 = 176;
    goto LABEL_16;
  }

  v10 = malloc(a2);
  *(v5 + 340) = v10;
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  memcpy(v10, a1, a2);
  v12 = *(v5 + 1);
  if (v12)
  {
    v13 = malloc(*(v5 + 1));
    *(v5 + 339) = v13;
    if (!v13)
    {
      v8 = *__error();
      v6 = "malloc";
      v7 = 184;
      goto LABEL_16;
    }

    memcpy(v13, &v11[*(&v17 + 1)], v12);
  }

  if (!*(&v35 + 1) || (result = (*(&v35 + 1))(v5 + 1892, v11, a2), *(v5 + 473) != DWORD1(v26)) || (result & 0x80000000) != 0)
  {
    v6 = "digesting prologue";
    v7 = 189;
    goto LABEL_15;
  }

  v14 = HIDWORD(v25);
  if (HIDWORD(v25) < 0x101)
  {
    v15 = *(v5 + 340);
    v16 = v18;
    __memcpy_chk();
    *(v5 + 612) = v14;
    memset_s(v5 + v14 + 2452, 256 - v14, 0, 256 - v14);
    if (v15)
    {
      memset_s((v15 + v16), v14, 0, v14);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void AEAContextDestroy(AEAContext context)
{
  if (context)
  {
    v2 = *(context + 339);
    if (v2)
    {
      memset_s(*(context + 339), *(context + 1), 0, *(context + 1));
    }

    free(v2);
    v3 = *(context + 340);
    if (v3)
    {
      memset_s(*(context + 340), *(context + 341), 0, *(context + 341));
    }

    free(v3);
    memset_s(context, 0xAB8uLL, 0, 0xAB8uLL);

    free(context);
  }
}

AEAContext AEAContextCreateWithProfile(AEAProfile profile)
{
  v2 = malloc(0xAB8uLL);
  v3 = v2;
  if (!v2)
  {
    v4 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithProfile", 237, 57, v4, "malloc");
    goto LABEL_5;
  }

  memset_s(v2, 0xAB8uLL, 0, 0xAB8uLL);
  *(v3 + 684) = 0;
  if ((sub_1000FACD4(v3, profile) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithProfile", 243, 57, 0, "Invalid profile: %u");
LABEL_5:
    AEAContextDestroy(v3);
    return 0;
  }

  return v3;
}

AEAContext AEAContextCreateWithEncryptedStream(AAByteStream encrypted_stream)
{
  memset(__s, 0, sizeof(__s));
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  *__size = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  LODWORD(v18) = 0;
  v17 = 0;
  if (*(encrypted_stream + 2))
  {
    v2 = 0;
    v3 = &v17;
    v4 = 12;
    do
    {
      v5 = (*(encrypted_stream + 2))(*encrypted_stream, v3, v4);
      if (v5 < 0)
      {
        goto LABEL_12;
      }

      if (!v5)
      {
        break;
      }

      v3 = (v3 + v5);
      v2 += v5;
      v4 -= v5;
    }

    while (v4);
    if (v2 != 12)
    {
      goto LABEL_12;
    }

    if ((sub_1000FADA8(v26, &v17) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 264, 57, 0, "Invalid magic", v17, v18, v19, v20, v21, v22);
      goto LABEL_13;
    }

    if ((sub_1000DB560(__s, v26) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 265, 57, 0, "Invalid container", v17, v18, v19, v20, v21, v22);
      goto LABEL_13;
    }

    if ((sub_1000FB160(&v19, v26, __s) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 266, 57, 0, "deriving container offsets", v17, v18, v19, v20, v21, v22);
      goto LABEL_13;
    }

    v6 = __size[0];
    if (__size[0] >= 0x2000000001)
    {
      *__error() = 12;
LABEL_27:
      v15 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 271, 57, v15, "malloc", v17, v18, v19, v20, v21, v22);
      goto LABEL_13;
    }

    v10 = malloc(__size[0]);
    if (!v10)
    {
      goto LABEL_27;
    }

    v7 = v10;
    *v10 = v17;
    v10[2] = v18;
    if (*(encrypted_stream + 2))
    {
      v11 = 0;
      if (v6 != 12)
      {
        v12 = (v10 + 3);
        v13 = v6 - 12;
        while (1)
        {
          v14 = (*(encrypted_stream + 2))(*encrypted_stream, v12, v13);
          if (v14 < 0)
          {
            break;
          }

          if (v14)
          {
            v12 += v14;
            v11 += v14;
            v13 -= v14;
            if (v13)
            {
              continue;
            }
          }

          goto LABEL_30;
        }

        v11 = v14;
      }
    }

    else
    {
      v11 = -1;
    }

LABEL_30:
    if (v11 == v6 - 12)
    {
      v16 = sub_100116CE4(v7, v6);
      if (v16)
      {
        v8 = v16;
        free(v7);
        return v8;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 280, 57, 0, "Context creation", v17, v18, v19, v20, v21, v22);
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 276, 57, 0, "reading prologue", v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
LABEL_12:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 263, 57, 0, "reading magic", v17, v18, v19, v20, v21, v22);
LABEL_13:
    v7 = 0;
  }

  free(v7);
  AEAContextDestroy(0);
  return 0;
}

uint64_t AEAContextGetFieldUInt(AEAContext context, AEAContextField field)
{
  if (field > 3)
  {
    if (field > 13)
    {
      if (field == 14)
      {
        return *(context + 5);
      }

      if (field == 17)
      {
        return *(context + 5);
      }
    }

    else
    {
      if (field == 4)
      {
        return *(context + 4);
      }

      if (field == 13)
      {
        return *(context + 4);
      }
    }

    goto LABEL_19;
  }

  if (field <= 1)
  {
    if (!field)
    {
      return *context;
    }

    if (field == 1)
    {
      return *(context + 7);
    }

LABEL_19:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldUInt", 314, 57, 0, "Invalid field");
    return -1;
  }

  if (field == 2)
  {
    return *(context + 3);
  }

  else
  {
    return *(context + 6);
  }
}

int AEAContextGetFieldBlob(AEAContext context, AEAContextField field, AEAContextFieldRepresentation representation, size_t buf_capacity, uint8_t *buf, size_t *buf_size)
{
  if (field > 0x13)
  {
    goto LABEL_18;
  }

  if (((1 << field) & 0xC1260) != 0)
  {
    if (representation)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 337, 57, 0, "Invalid representation");
      return -1;
    }

    goto LABEL_7;
  }

  if (((1 << field) & 0xD80) == 0)
  {
LABEL_18:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 346, 57, 0, "Invalid field");
    return -1;
  }

  if (representation != 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 343, 57, 0, "Invalid representation");
    return -1;
  }

LABEL_7:
  if (field > 9)
  {
    if (field <= 11)
    {
      if (field == 10)
      {
        v6 = (context + 852);
      }

      else
      {
        v6 = (context + 1112);
      }

LABEL_34:

      return sub_10011772C(v6, buf_capacity, buf, buf_size);
    }

    switch(field)
    {
      case 0xCu:
        v6 = (context + 1632);
        goto LABEL_34;
      case 0x12u:
        v6 = (context + 1892);
        goto LABEL_34;
      case 0x13u:
        v6 = (context + 2152);
        goto LABEL_34;
    }

LABEL_37:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 375, 57, 0, "Invalid field");
    return -1;
  }

  if (field > 6)
  {
    if (field == 7)
    {
      v6 = (context + 332);
    }

    else if (field == 8)
    {
      v6 = (context + 592);
    }

    else
    {
      v6 = (context + 72);
    }

    goto LABEL_34;
  }

  if (field != 5)
  {
    if (field == 6)
    {
      v6 = (context + 1372);
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  if (buf_size)
  {
    *buf_size = *(context + 1);
  }

  if (buf_capacity)
  {
    v7 = *(context + 1);
    if (v7 > buf_capacity)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 358, 57, 0, "buf_capacity is too small");
      return -1;
    }

    memcpy(buf, *(context + 339), v7);
  }

  return 0;
}

uint64_t sub_10011772C(unsigned int *a1, size_t a2, void *__dst, void *a4)
{
  if (a4)
  {
    *a4 = *a1;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *a1;
  if (v4 <= a2)
  {
    memcpy(__dst, a1 + 1, v4);
    return 0;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "getFieldBlob", 212, 57, 0, "buf_capacity is too small");
    return 0xFFFFFFFFLL;
  }
}

int AEAContextSetFieldUInt(AEAContext context, AEAContextField field, uint64_t value)
{
  if (field != 1 && *(context + 684))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 384, 57, 0, "Context can't be modified");
    return -1;
  }

  if (field <= 2)
  {
    if (field == 1)
    {
      if (value - 16 >= 0xFFFFFFFFFFFFFFF2)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 415, 57, 0, "Invalid padding size");
        return -1;
      }

      result = 0;
      *(context + 7) = value;
      return result;
    }

    if (field == 2)
    {
      if (value > 2)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 429, 57, 0, "Invalid checksum mode");
        return -1;
      }

      *(context + 3) = value;
      v5 = sub_1000FAD8C(value);
      result = 0;
      *(context + 12) = v5;
      return result;
    }

LABEL_30:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 439, 57, 0, "Invalid field");
    return -1;
  }

  if (field == 17)
  {
    result = 0;
    v6 = 32;
    if (value > 0x20)
    {
      v6 = value;
    }

    if (v6 >= 0x40000)
    {
      LODWORD(v6) = 0x40000;
    }

    *(context + 5) = v6;
    return result;
  }

  if (field == 4)
  {
    result = 0;
    v7 = 0x4000;
    if (value > 0x4000)
    {
      v7 = value;
    }

    if (v7 >= 0x10000000)
    {
      LODWORD(v7) = 0x10000000;
    }

    *(context + 4) = v7;
    return result;
  }

  if (field != 3)
  {
    goto LABEL_30;
  }

  if (value <= 1284)
  {
    if (value && value != 256 && value != 774)
    {
      goto LABEL_40;
    }
  }

  else if (value > 2048)
  {
    if (value != 2304 && value != 2049)
    {
      goto LABEL_40;
    }
  }

  else if (value != 1285 && value != 1794)
  {
LABEL_40:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 398, 57, 0, "Invalid compression algorithm");
    return -1;
  }

  result = 0;
  *(context + 6) = value;
  return result;
}

int AEAContextSetFieldBlob(AEAContext context, AEAContextField field, AEAContextFieldRepresentation representation, const uint8_t *buf, size_t buf_size)
{
  if (field > 0x13)
  {
    goto LABEL_21;
  }

  if (((1 << field) & 0x81260) != 0)
  {
    if (representation)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 458, 57, 0, "Invalid representation");
      return -1;
    }

    if (field == 19 && buf_size <= 0x13)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 471, 57, 0, "Password is too short");
      return -1;
    }

    goto LABEL_7;
  }

  if (((1 << field) & 0xD80) == 0)
  {
LABEL_21:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 467, 57, 0, "Invalid field");
    return -1;
  }

  if (representation != 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 464, 57, 0, "Invalid representation");
    return -1;
  }

LABEL_7:
  if (field > 8)
  {
    if (field > 10)
    {
      switch(field)
      {
        case 0xBu:
          v8 = context + 1112;
          goto LABEL_32;
        case 0xCu:
          v8 = context + 1632;
          goto LABEL_32;
        case 0x13u:
          v8 = context + 2152;
          goto LABEL_32;
      }

LABEL_35:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 502, 57, 0, "Invalid field");
      return -1;
    }

    if (field == 9)
    {
      v8 = context + 72;
    }

    else
    {
      v8 = context + 852;
    }

LABEL_32:

    return sub_100117C68(v8, buf, buf_size);
  }

  if (field > 6)
  {
    if (field == 7)
    {
      v8 = context + 332;
    }

    else
    {
      v8 = context + 592;
    }

    goto LABEL_32;
  }

  if (field != 5)
  {
    if (field == 6)
    {
      v8 = context + 1372;
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (*(context + 684))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 477, 57, 0, "Context can't be modified");
    return -1;
  }

  v10 = *(context + 339);
  if (v10)
  {
    memset_s(*(context + 339), *(context + 1), 0, *(context + 1));
  }

  free(v10);
  *(context + 339) = 0;
  *(context + 1) = 0;
  if (buf_size)
  {
    if (buf_size >= 0x4000001)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 483, 57, 0, "Invalid auth data size: %zu");
      return -1;
    }

    v11 = malloc(buf_size);
    *(context + 339) = v11;
    if (!v11)
    {
      v12 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 486, 57, v12, "malloc");
      return -1;
    }

    *(context + 1) = buf_size;
    memcpy(v11, buf, buf_size);
  }

  return 0;
}