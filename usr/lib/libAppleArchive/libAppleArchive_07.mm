uint64_t aaEntryAttributesInitWithPath(char *a1, _BYTE *a2, _BYTE *a3, unsigned int a4, char *__s, const char *a6)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(&v24, 0, sizeof(v24));
  if ((concatPath(v26, 0x800uLL, __s, a6) & 0x80000000) != 0)
  {
    v17 = "invalid path";
    v18 = 309;
LABEL_36:
    v19 = 0;
LABEL_38:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", v18, 102, v19, v17, v21);
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
        *(a2 + 2) = getFileAPFSInternalFlagsFD();
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
    *(a2 + 1) = getFileProtectionClass(v26);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", 384, 102, v20, "open: %s");
  }

  else
  {
    v15 = v14;
    if ((aaEntryHashesInitWithFD(a3, a4, v14) & 0x80000000) == 0)
    {
      close(v15);
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithPath", 385, 102, 0, "computing file digests: %s", v26);
    close(v15);
  }

  return 0xFFFFFFFFLL;
}

uint64_t aaEntryAttributesApplyToPath(char *a1, char *__s, const char *a3, char a4)
{
  v45 = *MEMORY[0x29EDCA608];
  if ((concatPath(v44, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 399, 102, 0, "invalid path");
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
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 502, 102, *v32, "%s", v44);
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
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 507, 102, *v35, "%s", v44);
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
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 520, 102, *v37, "%s", v44);
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
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 534, 102, *v40, "%s", v44);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", v21, 102, v20, "%s", v44);
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
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 468, 102, *v23, "%s", v44);
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
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 472, 102, *v26, "%s", v44);
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
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 477, 102, *v28, "%s", v44);
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
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToPath", 491, 102, *v31, "%s", v44);
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

uint64_t aaEntryAttributesApplyToFD(char *a1, int a2, char a3)
{
  v50 = *MEMORY[0x29EDCA608];
  memset(&v44, 0, sizeof(v44));
  if (fstat(a2, &v44) < 0)
  {
    v9 = __error();
    if ((a3 & 1) == 0 || *v9 != 13)
    {
      v10 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 553, 102, *v10, "fstat");
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
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 667, 102, *v30, "fchmod");
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
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 675, 102, *v34, "futimes");
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
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 689, 102, *v37, "fchflags");
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
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesApplyToFD", 663, 102, *v27, "fchown", v38, v39, v40, v41, v42, v43);
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

uint64_t aaEntryAttributesCmp(uint64_t a1, uint64_t a2, char a3)
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

uint64_t aaEntryInternalAttributesCmp(uint64_t a1, uint64_t a2, __int16 a3)
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

uint64_t aaEntryHashesCmp(uint64_t a1, uint64_t a2, __int16 a3)
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

uint64_t aaCheckAndFixWithPath(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6, char *__s, const char *a8, uint64_t a9)
{
  v82 = *MEMORY[0x29EDCA608];
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  memset(v81, 0, 172);
  if ((concatPath(v80, 0x800uLL, __s, a8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 781, 102, 0, "invalid path: %s", a8);
    v25 = 0;
    v38 = 0;
    v48 = 0;
    v54 = 0xFFFFFFFFLL;
    goto LABEL_84;
  }

  v64 = a6;
  v65 = a3;
  v68 = a1;
  v17 = *a1;
  v70 = a2;
  v18 = *a2;
  v19 = *a3;
  v20 = *a4;
  v21 = AAEntryXATBlobCreate();
  v22 = AAEntryACLBlobCreate();
  v24 = v22;
  xat = v21;
  if (!v21 || !v22)
  {
    v55 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 808, 102, *v55, "malloc");
    v25 = 0;
    v54 = 0xFFFFFFFFLL;
    a6 = v64;
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
  v31 = vshlq_u64(vandq_s8(v28, v29), xmmword_296AD1F30);
  *v29.i8 = vdup_n_s32(v19);
  v32 = vshl_u32(*v29.i8, 0xFFFFFFFCFFFFFFFELL);
  v33 = vorrq_s8(vshlq_u64(v30, xmmword_296AD1F40), v31);
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
  *v66 = v22;
  while (1)
  {
    v39 = v26;
    if ((v36 & 0x20000) != 0 && (aaEntryXATBlobInitWithPath(xat, __s, a8) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 813, 102, 0, "loading file XAT: %s");
      goto LABEL_76;
    }

    if ((v36 & 0x40000) != 0 && (aaEntryACLBlobInitWithPath(v38, __s, a8, a9) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 814, 102, 0, "loading file ACL: %s");
LABEL_76:
      v54 = 0xFFFFFFFFLL;
LABEL_77:
      a6 = v64;
      goto LABEL_83;
    }

    if ((aaEntryAttributesInitWithPath(v78, v76, v81, v36, __s, a8) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 815, 102, 0, "loading file attributes: %s");
      goto LABEL_76;
    }

    v67 = aaEntryAttributesCmp(v78, v68, v36);
    v40 = aaEntryInternalAttributesCmp(v76, v70, v36) | v67;
    v25 = aaEntryHashesCmp(v81, v65, v36) ? v40 | 0x80000 : v40;
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

        v54 = 0;
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
    memset(&v75, 0, sizeof(v75));
    v45 = open(v80, 0);
    if ((v45 & 0x80000000) != 0)
    {
      v56 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 838, 102, v56, "open: %s");
LABEL_81:
      v54 = 0xFFFFFFFFLL;
LABEL_82:
      a6 = v64;
      v38 = *v66;
      goto LABEL_83;
    }

    v46 = v45;
    if (fstat(v45, &v75) < 0)
    {
      v57 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 839, 102, *v57, "fstat: %s", v80);
      close(v46);
      goto LABEL_81;
    }

    v47 = ParallelArchiveECCVerifyFileSegment(v46, 0, v75.st_size, *(a4 + 1), *(a4 + 2));
    close(v46);
    if (v47 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 842, 102, 0, "verifying data: %s");
      goto LABEL_81;
    }

    if (v47)
    {
      goto LABEL_38;
    }

    v25 |= 0x80000u;
LABEL_39:
    v38 = *v66;
    if (v39 & 1 | ((a9 & 0x20000000000000) == 0) & v37)
    {
      v54 = 0;
      goto LABEL_77;
    }

    v48 = xat;
    if ((v36 & 0x10000) == 0 || (v25 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    v74 = 0;
    v72 = 0;
    v73 = -1;
    if ((ParallelCompressionAFSCGetMetadata(v80, &v74, &v73, &v72) & 0x80000000) != 0)
    {
      v59 = "get AFSC attributes";
      v60 = 861;
      goto LABEL_89;
    }

    memset(&v75, 0, sizeof(v75));
    v49 = open(v80, 2);
    if ((v49 & 0x80000000) != 0)
    {
      v61 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 866, 102, v61, "open: %s");
      goto LABEL_90;
    }

    v50 = v49;
    if (fstat(v49, &v75) < 0)
    {
      break;
    }

    memset(v71, 0, sizeof(v71));
    v51 = ParallelArchiveECCFixFileSegment(v50, 0, v75.st_size, *(a4 + 1), *(a4 + 2), v71);
    close(v50);
    if (v51 >= 1)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 871, 102, "Fixed data using ECC: %s", a8);
    }

    ParallelCompressionAFSCFixupMetadata(v80, v73, v72);
    v38 = *v66;
LABEL_48:
    if ((v25 & 0x184) != 0)
    {
      if ((*v68 & 4) != 0)
      {
        v52 = ((*(v68 + 3) >> 5) & 1) - 1;
      }

      else
      {
        v52 = -1;
      }

      if (*v70)
      {
        v52 = *(v70 + 2);
      }

      if ((*v70 & 2) != 0)
      {
        v53 = *(v70 + 3);
      }

      else
      {
        v53 = 0;
      }

      ParallelCompressionAFSCFixupMetadata(v80, v52, v53);
    }

    if ((v25 & 0x200) != 0)
    {
      setFileAPFSInternalFlags(v80, *(v70 + 2));
    }

    if ((v25 & 0x20000) != 0)
    {
      if ((aaEntryXATBlobInitWithEncodedData(xat, *(a4 + 3), *(a4 + 4)) & 0x80000000) != 0)
      {
        v59 = "invalid XAT blob in manifest";
        v60 = 902;
        goto LABEL_89;
      }

      AAEntryXATBlobApplyToPath(xat, __s, a8, a9 | 8);
    }

    if ((v25 & 0x40000) != 0)
    {
      if ((aaEntryACLBlobInitWithEncodedData(v38, *(a4 + 5), *(a4 + 6)) & 0x80000000) == 0)
      {
        AAEntryACLBlobApplyToPath(v38, __s, a8, a9 | 8);
        goto LABEL_66;
      }

      v59 = "invalid ACL blob in manifest";
      v60 = 909;
LABEL_89:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", v60, 102, 0, v59, v63);
      goto LABEL_90;
    }

LABEL_66:
    v37 = 0;
    v26 = 1;
    if (v67)
    {
      aaEntryAttributesApplyToPath(v68, __s, a8, a9);
      v37 = 0;
      v26 = 1;
    }
  }

  v62 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCheckAndFixWithPath", 867, 102, *v62, "fstat: %s", v80);
  close(v50);
LABEL_90:
  v54 = 0xFFFFFFFFLL;
  a6 = v64;
LABEL_84:
  *a6 = v25;
  a6[1] = 0;
  AAEntryXATBlobDestroy(v48);
  AAEntryACLBlobDestroy(v38);
  return v54;
}

uint64_t aaCopyFile(const char *a1, const char *a2, char a3)
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
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 948, 102, v18, "stat: %s");
    }

    else if ((v40.st_mode & 0xF000) == 0x8000)
    {
      if ((aaEntryAttributesInitWithFD(v45, v41, 0, 0xFFFFFFFF, v7) & 0x80000000) == 0)
      {
        v8 = AAEntryXATBlobCreate();
        v9 = v8;
        if (v8 && (aaEntryXATBlobInitWithFD(v8, v7) & 0x80000000) == 0)
        {
          v10 = AAEntryACLBlobCreate();
          v11 = v10;
          if (!v10 || (aaEntryACLBlobInitWithFD(v10, v7, 0) & 0x80000000) != 0)
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
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 980, 102, *v15, "malloc");
                }

                if (statIsCompressed(v40.st_flags))
                {
                  v16 = fgetxattr(v7, "com.apple.decmpfs", v14, 0x40000uLL, 0, 32);
                  if ((v16 & 0x8000000000000000) != 0)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 988, 102, 0, "Missing decmpfs xattr");
                    goto LABEL_64;
                  }

                  if (v16 > 0x40000)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 989, 102, 0, "invalid decmpfs xattr size");
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
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 990, 102, v38, "fsetxattr decmpfs");
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
                if ((aaEntryAttributesApplyToFD(v45, v13, a3) & 0x80000000) == 0 && (aaEntryXATBlobApplyToFD(v9, v13, a3) & 0x80000000) == 0 && (aaEntryACLBlobApplyToFD(v11, v13, a3) & 0x80000000) == 0)
                {
                  v25 = 0;
                  v19 = 1;
                  if ((v41[0] & 4) != 0 && v42)
                  {
                    if ((setFileAPFSInternalFlags(v13, v42) & 0x80000000) != 0)
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
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v27, 102, v28, v26);
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

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", v22, 102, v23, v21, v39);
          goto LABEL_28;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 952, 102, 0, "get XAT");
LABEL_27:
        v11 = 0;
LABEL_28:
        close(v7);
        v14 = 0;
        goto LABEL_29;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 950, 102, 0, "get attributes");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 949, 102, 0, "not a regular file: %s");
    }

    v9 = 0;
    goto LABEL_27;
  }

  v17 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaCopyFile", 947, 102, *v17, "open: %s", a1);
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

uint64_t AARandomAccessDecodeAndExtract(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, unint64_t a6, int DefaultNThreads)
{
  v170 = *MEMORY[0x29EDCA608];
  memset(&v169, 0, sizeof(v169));
  v14 = malloc(0x520uLL);
  if (!v14)
  {
    v33 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreate", 812, 120, *v33, "malloc");
    goto LABEL_28;
  }

  v15 = v14;
  memset_s(v14, 0x520uLL, 0, 0x520uLL);
  *v15 = a1;
  *(v15 + 8) = a2;
  if (!realpath_DARWIN_EXTSN(a3, (v15 + 16)) || lstat((v15 + 16), &v169) < 0 || (v169.st_mode & 0xF000) != 0x4000)
  {
    v30 = *__error();
    v165 = a3;
    v31 = "invalid directory: %s";
    v32 = 819;
LABEL_26:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreate", v32, 120, v30, v31, v165);
    stateDestroy(v15);
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1352, 120, 0, "creating state");
    v15 = 0;
    goto LABEL_29;
  }

  *(v15 + 1056) = a6;
  *(v15 + 1040) = a4;
  *(v15 + 1048) = a5;
  *(v15 + 1080) = a6 >> 62;
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  *(v15 + 1152) = DefaultNThreads;
  *(v15 + 1064) = isDirEmpty((v15 + 16)) == 0;
  *(v15 + 1068) = (a6 >> 54) & 1;
  VolumeCapabilities = getVolumeCapabilities((v15 + 16));
  v17 = VolumeCapabilities & ~(VolumeCapabilities >> 63);
  v18 = 268;
  if ((v17 & 8) == 0)
  {
    v18 = 264;
  }

  v19 = v18 & 0xFFFFFFFFFFFFFFDFLL | (32 * (v17 & 1));
  if ((a6 & 0x20) == 0 && (v17 & 2) != 0)
  {
    v20 = v19 | 0x40;
  }

  else
  {
    v20 = v19;
  }

  *(v15 + 1088) = v20;
  v21 = StringTableCreate();
  *(v15 + 1096) = v21;
  if (!v21)
  {
    v31 = "string table creation";
    v32 = 842;
    goto LABEL_49;
  }

  v22 = calloc(*(v15 + 1152), 8uLL);
  *(v15 + 1160) = v22;
  if (!v22)
  {
    v30 = *__error();
    v31 = "malloc";
    v32 = 845;
    goto LABEL_26;
  }

  if (*(v15 + 1152))
  {
    v23 = 0;
    while (1)
    {
      v24 = malloc(0x858uLL);
      v25 = v24;
      if (v24)
      {
        memset_s(v24, 0x858uLL, 0, 0x858uLL);
        *(v25 + 40) = 0x40000;
        v26 = malloc(0x40000uLL);
        *(v25 + 32) = v26;
        if (v26)
        {
          *(v25 + 2104) = -1;
          goto LABEL_22;
        }

        v27 = 120;
      }

      else
      {
        v27 = 116;
      }

      v28 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreate", v27, 120, *v28, "malloc");
      workerDestroy_0(v25);
      v25 = 0;
LABEL_22:
      *(*(v15 + 1160) + 8 * v23) = v25;
      v29 = *(v15 + 1160);
      if (!*(v29 + 8 * v23))
      {
        v31 = "creating new worker";
        v32 = 849;
        goto LABEL_49;
      }

      ++v23;
      v22 = *(v15 + 1152);
      if (v23 >= v22)
      {
        goto LABEL_34;
      }
    }
  }

  v29 = v22;
  LODWORD(v22) = 0;
LABEL_34:
  v36 = ThreadPoolCreate(v22, v29, workerProc_3);
  *(v15 + 1168) = v36;
  if (!v36)
  {
    v31 = "ThreadPoolCreate";
    v32 = 854;
LABEL_49:
    v30 = 0;
    goto LABEL_26;
  }

  if (pthread_mutex_init((v15 + 1176), 0) < 0)
  {
    v31 = "pthread_mutex_init";
    v32 = 857;
    goto LABEL_49;
  }

  if (*(v15 + 1080))
  {
    v37 = MEMORY[0x29EDCA610];
    fwrite("DecodeAndExtract\n", 0x11uLL, 1uLL, *MEMORY[0x29EDCA610]);
    fprintf(*v37, "  target directory: %s\n", a3);
    if (a2)
    {
      v38 = "yes";
    }

    else
    {
      v38 = "no";
    }

    fprintf(*v37, "  manifest: %s\n", v38);
    if ((a6 & 0x40000000000000) != 0)
    {
      v39 = "no";
    }

    else
    {
      v39 = "yes";
    }

    fprintf(*v37, "  path checking: %s\n", v39);
    v40 = *(v15 + 1080);
    if (!*(v15 + 8))
    {
LABEL_97:
      if (v40)
      {
        fwrite("Scanning archive\n", 0x11uLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      goto LABEL_99;
    }

    *&v169.st_dev = 0;
    if (v40)
    {
      fwrite("Scanning manifest\n", 0x12uLL, 1uLL, *v37);
    }

LABEL_52:
    RealTime = getRealTime();
    v167 = 0;
    value = 0;
    Header = AAArchiveStreamReadHeader(*(v15 + 8), &v169);
    if (Header)
    {
      while (1)
      {
        if (Header < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanManifest", 1041, 120, 0, "manifest read");
          goto LABEL_142;
        }

        v43 = *&v169.st_dev;
        v44.ikey = 5784649;
        KeyIndex = AAHeaderGetKeyIndex(*&v169.st_dev, v44);
        if ((KeyIndex & 0x80000000) != 0)
        {
          break;
        }

        FieldUInt = AAHeaderGetFieldUInt(v43, KeyIndex, &value);
        v47 = FieldUInt <= 1 ? 1 : FieldUInt;
        if (v47 <= 0)
        {
          break;
        }

        v48 = *&v169.st_dev;
        v49.ikey = 5915721;
        v50 = AAHeaderGetKeyIndex(*&v169.st_dev, v49);
        if ((v50 & 0x80000000) != 0 || ((v51 = AAHeaderGetFieldUInt(v48, v50, &v167), v51 <= 1) ? (v52 = 1) : (v52 = v51), v52 <= 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanManifest", 1045, 120, 0, "missing IDZ field");
          goto LABEL_142;
        }

        if ((stateAppendEntry(v15, *&v169.st_dev, value, v167, 0) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanManifest", 1048, 120, 0, "adding entry");
          goto LABEL_142;
        }

        v167 = 0;
        value = 0;
        Header = AAArchiveStreamReadHeader(*(v15 + 8), &v169);
        if (!Header)
        {
          goto LABEL_66;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanManifest", 1044, 120, 0, "missing IDX field");
LABEL_142:
      AAHeaderDestroy(*&v169.st_dev);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1363, 120, 0, "scanning manifest");
      goto LABEL_29;
    }

LABEL_66:
    AAHeaderDestroy(*&v169.st_dev);
    v53 = getRealTime();
    if (*(v15 + 1080))
    {
      fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v53 - RealTime);
    }

    if (*(v15 + 8))
    {
      goto LABEL_69;
    }

    v40 = *(v15 + 1080);
    goto LABEL_97;
  }

  if (*(v15 + 8))
  {
    *&v169.st_dev = 0;
    goto LABEL_52;
  }

LABEL_99:
  v72 = getRealTime();
  v73 = malloc(0x10000uLL);
  if (!v73)
  {
    v98 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1074, 120, *v98, "malloc");
    v74 = 0;
    goto LABEL_139;
  }

  v74 = AAHeaderCreate();
  if (!v74)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1076, 120, 0, "AAHeaderCreate");
    goto LABEL_139;
  }

  v75 = *v15;
  v76 = (*v15 + 32);
  if (!*v76)
  {
LABEL_136:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1083, 120, 0, "read");
    goto LABEL_139;
  }

  v77 = 0;
  while (1)
  {
    v78 = 0;
    v79 = v73;
    v80 = v77;
    v81 = 6;
    while (1)
    {
      v82 = (*v76)(*v75, v79, v81, v80);
      if (v82 < 0)
      {
        goto LABEL_136;
      }

      if (!v82)
      {
        break;
      }

      v79 = (v79 + v82);
      v78 += v82;
      v80 += v82;
      v81 -= v82;
      if (!v81)
      {
        goto LABEL_109;
      }
    }

    if (!v78)
    {
      break;
    }

LABEL_109:
    if (v78 <= 5)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1084, 120, 0, "truncated archive");
      goto LABEL_139;
    }

    if (*v73 != 825246017 && *v73 != 826360153)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1085, 120, 0, "invalid header magic");
      goto LABEL_139;
    }

    v83 = *v15;
    if (!*(*v15 + 32))
    {
      goto LABEL_188;
    }

    v84 = v73[2];
    if (v73[2])
    {
      v85 = 0;
      v86 = v73;
      v87 = v77;
      v88 = v73[2];
      while (1)
      {
        v89 = (*(v83 + 32))(*v83, v86, v88, v87);
        if (v89 < 0)
        {
          break;
        }

        if (v89)
        {
          v86 = (v86 + v89);
          v85 += v89;
          v87 += v89;
          v88 -= v89;
          if (v88)
          {
            continue;
          }
        }

        goto LABEL_120;
      }

LABEL_188:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1091, 120, 0, "read");
LABEL_139:
      free(v73);
      AAHeaderDestroy(v74);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1364, 120, 0, "scanning archive");
      goto LABEL_29;
    }

    v85 = 0;
LABEL_120:
    if (v85 < v84)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1092, 120, 0, "truncated archive");
      goto LABEL_139;
    }

    if ((aaHeaderInitWithEncodedData(v74, v73, v84) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1093, 120, 0, "invalid archive");
      goto LABEL_139;
    }

    PayloadSize = AAHeaderGetPayloadSize(v74);
    if (__CFADD__(v84, PayloadSize))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1096, 120, 0, "invalid payload size");
      goto LABEL_139;
    }

    v91 = PayloadSize;
    *&v169.st_dev = 0;
    if ((stateAppendEntry(v15, v74, v77, v84 + PayloadSize, &v169) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1100, 120, 0, "adding entry");
      goto LABEL_139;
    }

    if (*&v169.st_dev && !*(v15 + 1072) && *(*&v169.st_dev + 60) == 68)
    {
      if (v91 == -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1108, 120, 0, "invalid payload size");
        goto LABEL_139;
      }

      EntryData = stateGetEntryData(v15, *&v169.st_dev);
      memcpy(EntryData, v73, v84);
      if (v91)
      {
        v166 = *v15;
        if (!*(*v15 + 32))
        {
          goto LABEL_278;
        }

        v93 = 0;
        v94 = v77 + v84;
        v95 = &EntryData[v84];
        v96 = v91;
        do
        {
          v97 = (*(v166 + 32))(*v166, v95, v96, v94);
          if (v97 < 0)
          {
            goto LABEL_278;
          }

          if (!v97)
          {
            break;
          }

          v95 += v97;
          v93 += v97;
          v94 += v97;
          v96 -= v97;
        }

        while (v96);
        if (v93 != v91)
        {
LABEL_278:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateScanArchive", 1115, 120, 0, "loading DIR entry");
          goto LABEL_139;
        }
      }
    }

    v77 += v84 + v91;
    v75 = *v15;
    v76 = (*v15 + 32);
    if (!*v76)
    {
      goto LABEL_136;
    }
  }

  *(v15 + 1072) = 1;
  free(v73);
  AAHeaderDestroy(v74);
  v53 = getRealTime();
  if (*(v15 + 1080))
  {
    fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v53 - v72);
  }

LABEL_69:
  memset(&v169, 255, 24);
  v54 = *(v15 + 1136);
  if (v54)
  {
    v55 = 0;
    v56 = *(v15 + 1144);
    do
    {
      v57 = 0;
      v58 = (v56 + 72 * v55);
      v59 = v58 + 4;
      v60 = v58 + 3;
      v61 = v58 + 2;
      do
      {
        if (v57 == 2)
        {
          v62 = v59;
        }

        else
        {
          v62 = v60;
        }

        if (!v57)
        {
          v62 = v61;
        }

        v63 = *v62;
        if (v63 != -1)
        {
          v64 = *(&v169.st_dev + v57);
          if (v63 <= v64)
          {
            v65 = *(&v169.st_dev + v57);
          }

          else
          {
            v65 = v63;
          }

          if (v64 != -1)
          {
            v63 = v65;
          }

          *(&v169.st_dev + v57) = v63;
        }

        ++v57;
      }

      while (v57 != 3);
      ++v55;
    }

    while (v55 != v54);
  }

  v66 = 0;
  v67 = 1;
  while (1)
  {
    v68 = *(&v169.st_dev + v66);
    if (v68 == -1)
    {
      goto LABEL_92;
    }

    if (v68 == -2)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAllocClusters", 1164, 120, 0, "too many cluster entries", v53);
      goto LABEL_146;
    }

    v69 = v68 + 1;
    v70 = v15 + 8 * v66;
    *(v70 + 1240) = v68 + 1;
    if (v68 >> 34)
    {
      break;
    }

    v71 = calloc(v69, 8uLL);
    *(v70 + 1264) = v71;
    if (!v71)
    {
      goto LABEL_145;
    }

    memset(v71, 255, 8 * v69);
LABEL_92:
    v67 = v66++ < 2;
    if (v66 == 3)
    {
      goto LABEL_148;
    }
  }

  *__error() = 12;
  *(v70 + 1264) = 0;
LABEL_145:
  v99 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAllocClusters", 1168, 120, v99, "malloc", v100);
LABEL_146:
  if (v67)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1367, 120, 0, "allocating clusters");
    goto LABEL_29;
  }

LABEL_148:
  if (*(v15 + 1080))
  {
    if (*(v15 + 1136))
    {
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v108 = 0;
      v109 = *(v15 + 1144) + 32;
      v110 = *(v15 + 1136);
      do
      {
        v111 = *(v109 + 28);
        switch(v111)
        {
          case 'L':
            ++v103;
            break;
          case 'F':
            ++v102;
            if (*(v109 - 16) != -1)
            {
              ++v107;
            }

            if (*(v109 - 8) != -1)
            {
              ++v106;
            }

            if (*v109 != -1)
            {
              ++v105;
            }

            break;
          case 'D':
            ++v101;
            break;
          default:
            ++v104;
            break;
        }

        v108 += *(v109 - 24);
        v109 += 72;
        --v110;
      }

      while (v110);
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v106 = 0;
      v105 = 0;
      v104 = 0;
      v103 = 0;
      v102 = 0;
      v101 = 0;
    }

    v112 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu entries selected\n", *(v15 + 1136));
    fprintf(*v112, "%12llu archive bytes\n", v108);
    fprintf(*v112, "%12zu regular files\n", v102);
    fprintf(*v112, "%12zu directories\n", v101);
    fprintf(*v112, "%12zu symbolic links\n", v103);
    if (v104)
    {
      fprintf(*v112, "%12zu other entries\n", v104);
    }

    fprintf(*v112, "%12zu bytes allocated in DIR blob\n", *(v15 + 1112));
    if (v107)
    {
      fprintf(*v112, "%12zu regular files in hard link clusters\n", v107);
    }

    if (v106)
    {
      fprintf(*v112, "%12zu regular files in clone clusters\n", v106);
    }

    if (v105)
    {
      fprintf(*v112, "%12zu regular files in same content clusters\n", v105);
    }

    if (*(v15 + 1080))
    {
      fwrite("Creating directories\n", 0x15uLL, 1uLL, *v112);
    }
  }

  v113 = getRealTime();
  v114 = *(v15 + 1136);
  if (v114 / (4 * *(v15 + 1152)) <= 0x64)
  {
    v115 = 100;
  }

  else
  {
    v115 = v114 / (4 * *(v15 + 1152));
  }

  if (v114)
  {
    v116 = 0;
    while (1)
    {
      Worker = ThreadPoolGetWorker(*(v15 + 1168));
      if (!Worker)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateDirs", 1190, 120, 0, "ThreadPoolGetWorker");
        goto LABEL_191;
      }

      *Worker = 0;
      *(Worker + 16) = v116;
      v116 += v115;
      v118 = *(v15 + 1136);
      if (v116 < v118)
      {
        v118 = v116;
      }

      *(Worker + 24) = v118;
      *(Worker + 8) = v15;
      if ((ThreadPoolRunWorker(*(v15 + 1168)) & 0x80000000) != 0)
      {
        break;
      }

      if (v116 >= *(v15 + 1136))
      {
        goto LABEL_187;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateDirs", 1195, 120, 0, "ThreadPoolRunWorker");
LABEL_191:
    v119 = 1;
  }

  else
  {
LABEL_187:
    v119 = 0;
  }

  if ((ThreadPoolSync(*(v15 + 1168)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateDirs", 1199, 120, 0, "ThreadPoolSync");
    goto LABEL_213;
  }

  if (v119)
  {
LABEL_213:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1410, 120, 0, "creating directories");
    goto LABEL_29;
  }

  v120 = getRealTime();
  if (*(v15 + 1080))
  {
    v121 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v120 - v113);
    if (*(v15 + 1080))
    {
      fprintf(*v121, "Creating files (flags=0x%08x)\n", *(v15 + 1088));
    }
  }

  v122 = getRealTime();
  v123 = *(v15 + 1136);
  if (!v123)
  {
LABEL_211:
    v135 = 0;
    goto LABEL_217;
  }

  v124 = 0;
  v125 = (*(v15 + 1144) + 8);
  v126 = *(v15 + 1136);
  do
  {
    v127 = *v125;
    v125 += 9;
    v124 += v127;
    --v126;
  }

  while (v126);
  v128 = 0;
  v129 = 0;
  if (v124 / (6 * *(v15 + 1152)) >= 0x400)
  {
    v130 = v124 / (6 * *(v15 + 1152));
  }

  else
  {
    v130 = v124;
  }

  v131 = 8;
  v132 = 1;
  while (2)
  {
    if (v132 < v123)
    {
      v128 += *(*(v15 + 1144) + v131);
      if (v128 < v130)
      {
LABEL_209:
        v131 += 72;
        if (v132++ >= v123)
        {
          goto LABEL_211;
        }

        continue;
      }
    }

    break;
  }

  v133 = ThreadPoolGetWorker(*(v15 + 1168));
  if (!v133)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateEntries", 1308, 120, 0, "ThreadPoolGetWorker");
    goto LABEL_216;
  }

  *v133 = 1;
  *(v133 + 16) = v129;
  *(v133 + 24) = v132;
  *(v133 + 8) = v15;
  if ((ThreadPoolRunWorker(*(v15 + 1168)) & 0x80000000) == 0)
  {
    v128 = 0;
    v123 = *(v15 + 1136);
    v129 = v132;
    goto LABEL_209;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateEntries", 1313, 120, 0, "ThreadPoolRunWorker");
LABEL_216:
  v135 = 1;
LABEL_217:
  if ((ThreadPoolSync(*(v15 + 1168)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateEntries", 1321, 120, 0, "ThreadPoolSync");
    *(v15 + 1072) = 1;
    goto LABEL_229;
  }

  *(v15 + 1072) = 1;
  if (v135)
  {
LABEL_229:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1413, 120, 0, "creating entries");
    goto LABEL_29;
  }

  v136 = getRealTime();
  if (*(v15 + 1080))
  {
    v137 = v136 - v122;
    v138 = atomic_load((v15 + 1304));
    v139 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12llu data bytes written\n", v138);
    fprintf(*v139, "%12.2f MB/s\n", v138 / v137 * 0.000000953674316);
    fprintf(*v139, "%12.2f time (s)\n", v137);
  }

  v140 = *(v15 + 1076);
  if (v140)
  {
    v141 = *(v15 + 1136);
    if (v141)
    {
      v142 = 0;
      v143 = (*(v15 + 1144) + 68);
      do
      {
        v145 = *v143;
        v143 += 36;
        v144 = v145;
        if (v145 > v142)
        {
          v142 = v144;
        }

        --v141;
      }

      while (v141);
    }

    else
    {
      v142 = 0;
    }
  }

  else
  {
    v142 = -1;
  }

  if (*(v15 + 1080))
  {
    if (v140)
    {
      v146 = "depth loop";
    }

    else
    {
      v146 = "single pass";
    }

    fprintf(*MEMORY[0x29EDCA610], "Setting directories attributes (%s)\n", v146);
  }

  v147 = getRealTime();
  if (*(v15 + 1136) / (4 * *(v15 + 1152)) <= 0x64)
  {
    v148 = 100;
  }

  else
  {
    v148 = *(v15 + 1136) / (4 * *(v15 + 1152));
  }

  while (2)
  {
    if (*(v15 + 1136))
    {
      v149 = 0;
      while (1)
      {
        v150 = ThreadPoolGetWorker(*(v15 + 1168));
        if (!v150)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateSetDirsAttributes", 1232, 120, 0, "ThreadPoolGetWorker");
          goto LABEL_272;
        }

        *v150 = 3;
        *(v150 + 16) = v149;
        v149 += v148;
        v151 = *(v15 + 1136);
        if (v149 < v151)
        {
          v151 = v149;
        }

        *(v150 + 24) = v151;
        *(v150 + 8) = v15;
        *(v150 + 2108) = v142;
        if ((ThreadPoolRunWorker(*(v15 + 1168)) & 0x80000000) != 0)
        {
          break;
        }

        if (v149 >= *(v15 + 1136))
        {
          goto LABEL_248;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateSetDirsAttributes", 1238, 120, 0, "ThreadPoolRunWorker");
      goto LABEL_272;
    }

LABEL_248:
    if ((ThreadPoolSync(*(v15 + 1168)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateSetDirsAttributes", 1240, 120, 0, "ThreadPoolSync");
LABEL_272:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1416, 120, 0, "setting directories attributes");
      goto LABEL_29;
    }

    v152 = v142-- + 1;
    if (v152 > 1)
    {
      continue;
    }

    break;
  }

  v153 = getRealTime();
  if (*(v15 + 1080))
  {
    v154 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v153 - v147);
    if (*(v15 + 1080))
    {
      fwrite("Creating hard links / clones\n", 0x1DuLL, 1uLL, *v154);
    }
  }

  v155 = getRealTime();
  v156 = *(v15 + 1136);
  if (v156 / (4 * *(v15 + 1152)) <= 0x64)
  {
    v157 = 100;
  }

  else
  {
    v157 = v156 / (4 * *(v15 + 1152));
  }

  if (v156)
  {
    v158 = 0;
    while (1)
    {
      v159 = ThreadPoolGetWorker(*(v15 + 1168));
      if (!v159)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateClusters", 1266, 120, 0, "ThreadPoolGetWorker");
        goto LABEL_286;
      }

      *v159 = 2;
      *(v159 + 16) = v158;
      v158 += v157;
      v160 = *(v15 + 1136);
      if (v158 < v160)
      {
        v160 = v158;
      }

      *(v159 + 24) = v160;
      *(v159 + 8) = v15;
      if ((ThreadPoolRunWorker(*(v15 + 1168)) & 0x80000000) != 0)
      {
        break;
      }

      if (v158 >= *(v15 + 1136))
      {
        goto LABEL_263;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateClusters", 1271, 120, 0, "ThreadPoolRunWorker");
LABEL_286:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1419, 120, 0, "creating hard links, clones");
LABEL_29:
    v34 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_263:
    if ((ThreadPoolSync(*(v15 + 1168)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateCreateClusters", 1273, 120, 0, "ThreadPoolSync");
      goto LABEL_286;
    }

    v161 = getRealTime();
    if (*(v15 + 1080))
    {
      fprintf(*MEMORY[0x29EDCA610], "%12.2f time (s)\n", v161 - v155);
    }

    if (atomic_load((v15 + 1296)))
    {
      if (*(v15 + 1080))
      {
        v163 = *MEMORY[0x29EDCA610];
        v164 = atomic_load((v15 + 1296));
        fprintf(v163, "%12llu errors reported\n", v164);
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "AARandomAccessDecodeAndExtract", 1424, 120, 0, "errors reported");
      goto LABEL_29;
    }

    v34 = 0;
  }

  stateDestroy(v15);
  return v34;
}

void stateDestroy(uint64_t a1)
{
  if (a1)
  {
    StringTableDestroy(*(a1 + 1096));
    ThreadPoolDestroy(*(a1 + 1168));
    free(*(a1 + 1120));
    memset_s((a1 + 1104), 0x18uLL, 0, 0x18uLL);
    v2 = *(a1 + 1160);
    if (v2)
    {
      if (*(a1 + 1152))
      {
        v3 = 0;
        do
        {
          workerDestroy_0(*(*(a1 + 1160) + 8 * v3++));
        }

        while (v3 < *(a1 + 1152));
        v2 = *(a1 + 1160);
      }

      free(v2);
    }

    free(*(a1 + 1144));
    pthread_mutex_destroy((a1 + 1176));

    free(a1);
  }
}

uint64_t workerProc_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v236 = *MEMORY[0x29EDCA608];
  v11 = *v9;
  v12 = 0xFFFFFFFFLL;
  if (*v9 > 1)
  {
    if (v11 != 2)
    {
      if (v11 != 3)
      {
        return v12;
      }

      v19 = *(v9 + 8);
      bzero(__s, 0x800uLL);
      data_size[0] = 0;
      offset = 0;
      size[0] = 0;
      length = 0;
      memset(&v234, 0, 72);
      *&v228 = 0;
      v227 = 0u;
      v225 = 0u;
      v226 = 0u;
      if (atomic_load((v19 + 1288)))
      {
LABEL_16:
        v18 = 0;
        v12 = 0xFFFFFFFFLL;
        goto LABEL_382;
      }

      v18 = AAHeaderCreate();
      if (!v18)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 398, 120, 0, "AAHeaderCreate");
        goto LABEL_16;
      }

      v66 = *(v10 + 16);
      if (v66 >= *(v10 + 24))
      {
        v12 = 0;
        goto LABEL_382;
      }

      v213 = v18;
      v67 = 72 * v66;
      v208 = v10;
      while (1)
      {
        v68 = *(v19 + 1144);
        v69 = v68 + v67;
        data_size[0] = 0;
        offset = 0;
        if (*(v68 + v67 + 60) != 68)
        {
          goto LABEL_137;
        }

        v70 = *(v10 + 2108);
        if (v70 != -1 && v70 != *(v68 + v67 + 68))
        {
          goto LABEL_137;
        }

        v71 = (*(*(v19 + 1096) + 32) + *(*(*(v19 + 1096) + 8) + 16 * *(v68 + v67 + 64)));
        if ((stateConcatPath(v19, __s, v71) & 0x80000000) != 0)
        {
          break;
        }

        v72 = strrchr(__s, 47);
        if (!v72)
        {
          v79 = 417;
          goto LABEL_130;
        }

        v73 = v72;
        *v72 = 0;
        v74 = v72 + 1;
        if ((workerUpdateDir(v10, __s) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 420, 120, 0, "opening parent directory");
          goto LABEL_135;
        }

        *v73 = 47;
        EntryData = stateGetEntryData(v19, v68 + v67);
        if (!EntryData)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 426, 120, 0, "invalid entry data");
LABEL_386:
          v12 = 0;
          v18 = v213;
          goto LABEL_382;
        }

        v76 = v68 + v67;
        v77 = *(v76 + 48);
        if (v77 <= 5)
        {
          v78 = 428;
          goto LABEL_134;
        }

        v80 = EntryData;
        v81 = EntryData[2];
        if (v77 < v81)
        {
          v78 = 430;
LABEL_134:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", v78, 120, 0, "invalid entry");
LABEL_135:
          v10 = v208;
          goto LABEL_136;
        }

        if ((aaHeaderInitWithEncodedData(v213, EntryData, v81) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 431, 120, 0, "invalid header");
          goto LABEL_135;
        }

        v82.ikey = 5521752;
        KeyIndex = AAHeaderGetKeyIndex(v213, v82);
        if ((KeyIndex & 0x80000000) != 0 || ((FieldBlob = AAHeaderGetFieldBlob(v213, KeyIndex, data_size, size), FieldBlob <= 1) ? (v85 = 1) : (v85 = FieldBlob), v85 <= 0))
        {
          data_size[0] = 0;
        }

        v86.ikey = 4997953;
        v87 = AAHeaderGetKeyIndex(v213, v86);
        if ((v87 & 0x80000000) != 0 || ((v88 = AAHeaderGetFieldBlob(v213, v87, &offset, &length), v88 <= 1) ? (v89 = 1) : (v89 = v88), v89 <= 0))
        {
          offset = 0;
        }

        v90 = size[0] + v81;
        size[0] += v81;
        v91 = length + v81;
        length += v81;
        if (data_size[0])
        {
          v92 = __CFADD__(v90, data_size[0]);
          v93 = v90 + data_size[0];
          if (v92 || v93 > *(v76 + 48))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 438, 120, 0, "invalid XAT blob size");
            goto LABEL_135;
          }
        }

        if (offset)
        {
          v92 = __CFADD__(v91, offset);
          v94 = v91 + offset;
          if (v92 || v94 > *(v76 + 48))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 441, 120, 0, "invalid ACL blob size");
            goto LABEL_135;
          }
        }

        if ((aaEntryAttributesInitWithHeader(&v234, &v225, 0, v213) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 442, 120, 0, "setting attributes from header");
          goto LABEL_135;
        }

        v10 = v208;
        v95 = openat(*(v208 + 2104), v74, 0);
        if ((v95 & 0x80000000) != 0)
        {
          v97 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 446, 120, v97, "open");
        }

        else
        {
          v96 = v95;
          if ((workerApplyAttr(v208, v69, v95, &v234) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 447, 120, 0, "setting attributes");
          }

          else if (data_size[0] && (workerDecodeAndApplyXAT(v208, v69, v96, v80 + size[0], data_size[0]) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 449, 120, 0, "loading and applying XAT");
          }

          else
          {
            if (!offset || (workerDecodeAndApplyACL(v208, v69, v96, v80 + length, offset) & 0x80000000) == 0)
            {
              close(v96);
              v10 = v208;
              goto LABEL_137;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 450, 120, 0, "loading and applying ACL");
          }

          close(v96);
          v10 = v208;
        }

LABEL_136:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", 454, 120, 0, "set dir attributes failed: %s", v71);
        atomic_fetch_add_explicit((v19 + 1296), 1uLL, memory_order_relaxed);
LABEL_137:
        ++v66;
        v67 += 72;
        if (v66 >= *(v10 + 24))
        {
          goto LABEL_386;
        }
      }

      v79 = 413;
LABEL_130:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerSetDirAttributes", v79, 120, 0, "invalid path");
      goto LABEL_136;
    }

    v30 = *(v9 + 8);
    bzero(__s, 0x800uLL);
    bzero(&v234, 0x800uLL);
    offset = 0;
    size[0] = 0;
    v230 = 0;
    length = 0;
    v229 = 0;
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v224 = 0;
    v222 = 0u;
    v223 = 0u;
    *data_size = 0u;
    v31 = AAHeaderCreate();
    v32 = v31;
    if (!v31)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 689, 120, 0, "AAHeaderCreate");
      goto LABEL_176;
    }

    v33 = *(v10 + 16);
    if (v33 >= *(v10 + 24))
    {
      goto LABEL_380;
    }

    header = v31;
    v34 = 72 * v33 + 32;
    v210 = -1;
    v207 = v10;
    while (1)
    {
      v35 = *(v30 + 1144);
      v36 = v35 + v34;
      if (*(v35 + v34 + 28) != 70)
      {
        goto LABEL_83;
      }

      v37 = *(v36 + 16);
      if (*(v36 - 16) == -1 && *(v35 + v34 - 8) == -1)
      {
        if (*(v35 + v34) == -1 || v37 == 0)
        {
          goto LABEL_83;
        }
      }

      else if (!v37)
      {
        goto LABEL_83;
      }

      v212 = (*(*(v30 + 1096) + 32) + *(*(*(v30 + 1096) + 8) + 16 * *(v35 + v34 + 32)));
      if ((stateConcatPath(v30, __s, v212) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 704, 120, 0, "invalid path");
        goto LABEL_77;
      }

      v38 = v36 - 32;
      v39 = stateGetEntryData(v30, v36 - 32);
      if (!v39)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 708, 120, 0, "invalid entry data");
LABEL_380:
        v12 = 0;
        goto LABEL_381;
      }

      v40 = *(v36 + 16);
      if (v40 <= 5)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 710, 120, 0, "invalid entry");
        goto LABEL_47;
      }

      v41 = v39;
      v42 = v39[2];
      if (v40 < v42)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 712, 120, 0, "invalid entry");
        goto LABEL_75;
      }

      if ((aaHeaderInitWithEncodedData(header, v39, v42) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 713, 120, 0, "invalid header");
        v10 = v207;
        v32 = header;
        goto LABEL_77;
      }

      v44.ikey = 5521752;
      v45 = AAHeaderGetKeyIndex(header, v44);
      if ((v45 & 0x80000000) != 0 || ((v46 = AAHeaderGetFieldBlob(header, v45, size, &offset), v46 <= 1) ? (v47 = 1) : (v47 = v46), v47 <= 0))
      {
        size[0] = 0;
      }

      v48.ikey = 4997953;
      v49 = AAHeaderGetKeyIndex(header, v48);
      if ((v49 & 0x80000000) != 0 || ((v50 = AAHeaderGetFieldBlob(header, v49, &length, &v230), v50 <= 1) ? (v51 = 1) : (v51 = v50), v51 <= 0))
      {
        length = 0;
      }

      v52 = offset + v42;
      offset += v42;
      v53 = v230 + v42;
      v230 += v42;
      if (size[0])
      {
        if (size[0] + v52 > v37)
        {
          break;
        }
      }

      if (length && length + v53 > v37)
      {
        break;
      }

      v32 = header;
      if ((aaEntryAttributesInitWithHeader(&v225, data_size, 0, header) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 722, 120, 0, "setting attributes from header");
LABEL_47:
        v10 = v207;
        goto LABEL_77;
      }

      v57 = *(v36 - 16);
      v58 = *(v30 + 1240);
      v59 = (v30 + 1264);
      v60 = v57;
      if (v57 >= v58 && (v60 = *(v35 + v34 - 8), v59 = (v30 + 1272), v60 >= *(v30 + 1248)) && (v60 = *(v35 + v34), v59 = (v30 + 1280), v60 >= *(v30 + 1256)) || (v61 = *(*v59 + 8 * v60), v61 == -1))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 730, 120, 0, "missing reference entry in cluster");
        goto LABEL_47;
      }

      if ((stateConcatPath(v30, &v234, (*(*(v30 + 1096) + 32) + *(*(*(v30 + 1096) + 8) + 16 * *(*(v30 + 1144) + 72 * v61 + 64)))) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 733, 120, 0, "invalid path");
        goto LABEL_47;
      }

      if (*(v30 + 1064))
      {
        unlink(__s);
      }

      if (v57 >= v58)
      {
        v54 = v212;
        if (clonefile(&v234, __s, 0) && (copyFileSegment(&v234, 0, 0xFFFFFFFFFFFFFFFFLL, __s) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 745, 120, 0, "cloning file, falling back to copy, failed: %s");
LABEL_111:
          v10 = v207;
LABEL_78:
          if ((v210 & 0x80000000) == 0)
          {
            close(v210);
            v210 = -1;
          }

          goto LABEL_80;
        }
      }

      else
      {
        v54 = v212;
        if (link(&v234, __s) < 0)
        {
          v62 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 754, 120, v62, "hard link: %s");
          goto LABEL_111;
        }
      }

      v63 = open(__s, 0x200000);
      if ((v63 & 0x80000000) != 0)
      {
        v210 = v63;
        v65 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 759, 120, *v65, "open: %s", __s);
      }

      else
      {
        v64 = v63;
        if ((workerApplyAttr(v207, v38, v63, &v225) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 760, 120, 0, "setting attributes");
        }

        else if (size[0] && (workerDecodeAndApplyXAT(v207, v38, v64, v41 + offset, size[0]) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 761, 120, 0, "loading and applying XAT");
        }

        else
        {
          if (!length || (workerDecodeAndApplyACL(v207, v38, v64, v41 + v230, length) & 0x80000000) == 0)
          {
            close(v64);
            v55 = 21;
            v210 = -1;
            v10 = v207;
            goto LABEL_81;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 762, 120, 0, "loading and applying ACL");
        }

        close(v64);
        v210 = -1;
      }

      v10 = v207;
LABEL_80:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 766, 120, 0, "extract cluster entry failed: %s", v54);
      atomic_fetch_add_explicit((v30 + 1296), 1uLL, memory_order_relaxed);
      v55 = 22;
LABEL_81:
      v56 = *(v30 + 1048);
      if (v56 && (v56(*(v30 + 1040), v55, v54, v32) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 773, 120, 0, "Caller cancelled");
        v194 = 0;
        atomic_compare_exchange_strong((v30 + 1288), &v194, 1u);
LABEL_176:
        v12 = 0xFFFFFFFFLL;
LABEL_381:
        v18 = v32;
        goto LABEL_382;
      }

LABEL_83:
      ++v33;
      v34 += 72;
      if (v33 >= *(v10 + 24))
      {
        goto LABEL_380;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateClusters", 721, 120, 0, "invalid blob sizes");
LABEL_75:
    v32 = header;
    v10 = v207;
LABEL_77:
    v54 = v212;
    goto LABEL_78;
  }

  if (!v11)
  {
    v21 = v9;
    v22 = *(v9 + 8);
    bzero(__s, 0x800uLL);
    memset(&v234, 0, sizeof(v234));
    v23 = atomic_load((v22 + 1288));
    if (v23 || (v24 = *(v10 + 16), v24 >= *(v21 + 24)))
    {
LABEL_33:
      if (v23)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    v25 = 72 * v24;
    while (1)
    {
      v26 = *(v22 + 1144) + v25;
      if (*(v26 + 60) == 68)
      {
        v27 = (*(*(v22 + 1096) + 32) + *(*(*(v22 + 1096) + 8) + 16 * *(v26 + 64)));
        if ((stateConcatPath(v22, __s, v27) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateDirs", 352, 120, 0, "invalid path");
        }

        else
        {
          if (!mkdir(__s, 0x1EDu))
          {
            goto LABEL_32;
          }

          if (*(v22 + 1068))
          {
            if (*__error() == 2)
            {
              v28 = strlen(__s);
              makePath(__s, v28);
              if (!mkdir(__s, 0x1EDu))
              {
                goto LABEL_32;
              }
            }
          }

          if (*__error() == 17 && !lstat(__s, &v234) && (v234.st_mode & 0xF000) == 0x4000)
          {
            goto LABEL_32;
          }

          v29 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateDirs", 366, 120, v29, "creating directory: %s");
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateDirs", 370, 120, 0, "create dir failed: %s", v27);
        atomic_fetch_add_explicit((v22 + 1296), 1uLL, memory_order_relaxed);
      }

LABEL_32:
      ++v24;
      v25 += 72;
      if (v24 >= *(v21 + 24))
      {
        goto LABEL_33;
      }
    }
  }

  if (v11 != 1)
  {
    return v12;
  }

  v13 = *(v9 + 8);
  bzero(__s, 0x800uLL);
  bzero(&v234, 0x400uLL);
  v230 = 0;
  length = 0;
  v219 = 0;
  v220 = 0;
  v217 = 0;
  v218 = 0;
  v216 = 0;
  v229 = 0;
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v224 = 0;
  v222 = 0u;
  v223 = 0u;
  *data_size = 0u;
  if (atomic_load((v13 + 1288)))
  {
    goto LABEL_10;
  }

  v15 = *(v13 + 1152);
  if (!v15)
  {
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 489, 120, 0, "couldn't determine worker_id");
LABEL_10:
    v17 = 0;
LABEL_11:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v16 = 0;
  while (*(*(v13 + 1160) + 8 * v16) != v10)
  {
    if (v15 == ++v16)
    {
      goto LABEL_9;
    }
  }

  v98 = AAHeaderCreate();
  v17 = v98;
  if (!v98)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 492, 120, 0, "AAHeaderCreate");
    goto LABEL_11;
  }

  v99 = *(v10 + 16);
  if (v99 >= *(v10 + 24))
  {
LABEL_389:
    v12 = 0;
    goto LABEL_12;
  }

  v209 = v10;
  v211 = v98;
  while (1)
  {
    v100 = *(v13 + 1144) + 72 * v99;
    v219 = 0;
    v217 = 0;
    v230 = 0;
    if (*(v100 + 60) != 68)
    {
      break;
    }

    if (*(v13 + 1072))
    {
      goto LABEL_228;
    }

    v101 = stateGetEntryData(v13, v100);
    if (!v101)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 512, 120, 0, "invalid entry data");
      goto LABEL_389;
    }

    v102 = *v13;
    v103 = *(v100 + 8);
    if (*(*v13 + 32))
    {
      if (v103)
      {
        v104 = v101;
        v214 = v8;
        v105 = 0;
        headera = v100;
        v106 = *v100;
        v107 = v101;
        while (1)
        {
          v108 = (*(v102 + 32))(*v102, v107, v103, v106);
          if (v108 < 0)
          {
            break;
          }

          if (v108)
          {
            v107 += v108;
            v105 += v108;
            v106 += v108;
            v103 -= v108;
            if (v103)
            {
              continue;
            }
          }

          goto LABEL_194;
        }

        v105 = v108;
LABEL_194:
        v100 = headera;
        v8 = v214;
        if (v105 != *(headera + 1))
        {
LABEL_390:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 516, 120, 0, "loading dir entry");
          goto LABEL_391;
        }

        if (v105 >= 4 && (*v104 == 825246017 || *v104 == 826360153))
        {
          v17 = v211;
          if (*(headera + 15) == 68)
          {
            goto LABEL_228;
          }

          break;
        }
      }
    }

    else if (v103 != -1)
    {
      goto LABEL_390;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 520, 120, 0, "invalid dir entry");
    v109 = 0;
    v17 = v211;
LABEL_224:
    AAByteStreamClose(v109);
LABEL_225:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 656, 120, 0, "extract entry failed: %s", v8);
    atomic_fetch_add_explicit((v13 + 1296), 1uLL, memory_order_relaxed);
    v127 = 22;
LABEL_226:
    v128 = *(v13 + 1048);
    if (v128 && (v128(*(v13 + 1040), v127, v8, v17) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 663, 120, 0, "Caller cancelled");
      v195 = 0;
      atomic_compare_exchange_strong((v13 + 1288), &v195, 1u);
      goto LABEL_11;
    }

LABEL_228:
    if (++v99 >= *(v10 + 24))
    {
      goto LABEL_389;
    }
  }

  v8 = (*(*(v13 + 1096) + 32) + *(*(*(v13 + 1096) + 8) + 16 * *(v100 + 64)));
  if ((stateConcatPath(v13, __s, v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 528, 120, 0, "invalid path");
    v109 = 0;
    goto LABEL_224;
  }

  v215 = v8;
  v110 = strrchr(__s, 47);
  if (!v110)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 532, 120, 0, "invalid path");
    v109 = 0;
    goto LABEL_223;
  }

  v111 = v110;
  *v110 = 0;
  v112 = v110 + 1;
  if ((workerUpdateDir(v10, __s) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 535, 120, 0, "opening parent directory");
    v109 = 0;
    goto LABEL_223;
  }

  headerb = v100;
  *v111 = 47;
  v113 = *v13;
  if (!*(*v13 + 32))
  {
LABEL_218:
    v126 = 541;
LABEL_219:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", v126, 120, 0, "invalid entry");
    goto LABEL_220;
  }

  v114 = 0;
  v115 = *v100;
  v116 = *(v209 + 32);
  v117 = 6;
  do
  {
    v118 = (*(v113 + 32))(*v113, v116, v117, v115);
    if (v118 < 0)
    {
      goto LABEL_218;
    }

    if (!v118)
    {
      break;
    }

    v116 += v118;
    v114 += v118;
    v115 += v118;
    v117 -= v118;
  }

  while (v117);
  if (v114 != 6)
  {
    goto LABEL_218;
  }

  v119 = *v13;
  if (!*(*v13 + 32))
  {
    goto LABEL_271;
  }

  v120 = *(v209 + 32);
  v121 = *(v120 + 4);
  if (*(v120 + 4))
  {
    v122 = 0;
    v123 = *headerb;
    v124 = *(v120 + 4);
    while (1)
    {
      v125 = (*(v119 + 32))(*v119, v120, v124, v123);
      if (v125 < 0)
      {
        break;
      }

      if (v125)
      {
        v120 += v125;
        v122 += v125;
        v123 += v125;
        v124 -= v125;
        if (v124)
        {
          continue;
        }
      }

      goto LABEL_232;
    }

    v122 = v125;
  }

  else
  {
    v122 = 0;
  }

LABEL_232:
  if (v122 != v121)
  {
LABEL_271:
    v126 = 544;
    goto LABEL_219;
  }

  v129 = v121;
  v10 = v209;
  v17 = v211;
  v202 = v129;
  v8 = v215;
  if ((aaHeaderInitWithEncodedData(v211, *(v209 + 32), v129) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 545, 120, 0, "invalid header");
LABEL_286:
    v109 = 0;
    goto LABEL_224;
  }

  v130 = *(headerb + 15);
  if (v130 != 70)
  {
    goto LABEL_244;
  }

  v131.ikey = 5521732;
  v132 = AAHeaderGetKeyIndex(v211, v131);
  if ((v132 & 0x80000000) != 0)
  {
    if (*(headerb + 2) == -1 && *(headerb + 3) == -1 && *(headerb + 4) == -1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 553, 120, 0, "DAT field is required");
      goto LABEL_286;
    }

    goto LABEL_347;
  }

  if (AAHeaderGetFieldBlob(v211, v132, &v230, &v220) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 549, 120, 0, "getting DAT field");
    goto LABEL_286;
  }

  v133 = *(headerb + 2);
  if (v133 != -1 && !stateShouldCreateFileInCluster(v13, 0, v133, v99) || (v134 = *(headerb + 3), v134 != -1) && !stateShouldCreateFileInCluster(v13, 1u, v134, v99) || (v135 = *(headerb + 4), v135 != -1) && !stateShouldCreateFileInCluster(v13, 2u, v135, v99))
  {
    AAByteStreamClose(0);
    v203 = *(*(v13 + 1160) + 8 * v16);
    EncodedSize = AAHeaderGetEncodedSize(v211);
    v152 = AAHeaderClone(v211);
    v153.ikey = 5521732;
    v154 = AAHeaderGetKeyIndex(v152, v153);
    v200 = v152;
    if ((v154 & 0x80000000) == 0 && AAHeaderRemoveField(v152, v154) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDeferEntry", 293, 120, 0, "removing DAT field");
      goto LABEL_375;
    }

    key = v154;
    v155 = AAHeaderGetEncodedSize(v152);
    PayloadSize = AAHeaderGetPayloadSize(v152);
    __n = v155 + PayloadSize;
    if (__CFADD__(v155, PayloadSize))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDeferEntry", 298, 120, 0, "entry too large to defer");
      goto LABEL_375;
    }

    v167 = v155;
    v168 = workerReserve(v203, __n);
    if (v168 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDeferEntry", 301, 120, 0, "allocating worker buf");
      goto LABEL_375;
    }

    v169 = v203[4];
    EncodedData = AAHeaderGetEncodedData(v152);
    memcpy(v169, EncodedData, v155);
    FieldCount = AAHeaderGetFieldCount(v211);
    if (FieldCount)
    {
      v171 = 0;
      do
      {
        FieldType = AAHeaderGetFieldType(v211, v171);
        v173 = v171;
        v174 = v171 != key || key <= -1;
        if (v174 && FieldType == 5)
        {
          offset = 0;
          size[0] = 0;
          if (AAHeaderGetFieldBlob(v211, v171, size, &offset) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDeferEntry", 313, 120, 0, "getting blob field");
            goto LABEL_375;
          }

          v175 = size[0];
          v176 = *headerb + EncodedSize + offset;
          offset = v176;
          if (size[0] + v167 > v203[5])
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDeferEntry", 315, 120, 0, "invalid blob size");
            goto LABEL_375;
          }

          v177 = *v13;
          if (!*(*v13 + 32))
          {
            goto LABEL_353;
          }

          v178 = 0;
          if (size[0])
          {
            v179 = v203[4] + v167;
            while (1)
            {
              v180 = (*(v177 + 32))(*v177, v179, v175, v176);
              if (v180 < 0)
              {
                break;
              }

              if (v180)
              {
                v179 += v180;
                v178 += v180;
                v176 += v180;
                v175 -= v180;
                if (v175)
                {
                  continue;
                }
              }

              if (v178 != size[0])
              {
                break;
              }

              goto LABEL_332;
            }

LABEL_353:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDeferEntry", 319, 120, 0, "reading blob");
            goto LABEL_375;
          }

LABEL_332:
          v167 += v178;
        }

        v171 = v173 + 1;
      }

      while (v173 + 1 != FieldCount);
    }

    if (v167 != __n)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDeferEntry", 322, 120, 0, "entry size mismatch");
      goto LABEL_375;
    }

    v181 = v203[264];
    v92 = __CFADD__(v181, __n);
    v182 = v181 + __n;
    if (!v92 && (v182 & 0x8000000000000000) == 0)
    {
      v183 = v203 + 264;
      v184 = v203[4];
      v185 = v203[265];
      if (v185 >= v182)
      {
LABEL_366:
        v191 = v203[266];
        if (v184)
        {
          memcpy((v191 + *v183), v184, __n);
        }

        else if (v191)
        {
          memset_s((v191 + *v183), __n, 0, __n);
        }

        v192 = *v183;
        *(headerb + 5) = *v183;
        *(headerb + 6) = __n;
        *v183 = v192 + __n;
        if ((__n & 0x8000000000000000) == 0)
        {
          *(headerb + 14) = v16;
          AAHeaderDestroy(v200);
          v10 = v209;
          v17 = v211;
          v8 = v215;
          goto LABEL_228;
        }
      }

      else
      {
        do
        {
          while (!v185)
          {
            v185 = 0x4000;
            if (v182 <= 0x4000)
            {
              v187 = (v203 + 266);
              v185 = 0x4000;
              goto LABEL_364;
            }
          }

          v186 = v185 >> 1;
          if ((v185 & (v185 >> 1)) != 0)
          {
            v186 = v185 & (v185 >> 1);
          }

          v185 += v186;
        }

        while (v185 < v182);
        v187 = (v203 + 266);
        if (v185 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_373;
        }

LABEL_364:
        v189 = *v187;
        v190 = realloc(*v187, v185);
        if (v190)
        {
          v203[266] = v190;
          v203[265] = v185;
          goto LABEL_366;
        }

        free(v189);
LABEL_373:
        *v187 = 0;
        *v183 = 0;
        v203[265] = 0;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDeferEntry", 325, 120, 0, "storing entry in worker blob");
LABEL_375:
    AAHeaderDestroy(v200);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 651, 120, 0, "storing deferred entry");
    v10 = v209;
    v17 = v211;
LABEL_376:
    v8 = v215;
    goto LABEL_225;
  }

  v130 = *(headerb + 15);
LABEL_244:
  if (v130 == 76)
  {
    v136.ikey = 4935244;
    v137 = AAHeaderGetKeyIndex(v211, v136);
    if ((v137 & 0x80000000) != 0 || ((FieldString = AAHeaderGetFieldString(v211, v137, 0x400uLL, &v234, &length), FieldString <= 1) ? (v139 = 1) : (v139 = FieldString), v139 <= 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 563, 120, 0, "missing LNK field");
      goto LABEL_286;
    }
  }

  v140.ikey = 5521752;
  v141 = AAHeaderGetKeyIndex(v211, v140);
  if ((v141 & 0x80000000) != 0 || ((v142 = AAHeaderGetFieldBlob(v211, v141, &v219, &v218), v142 <= 1) ? (v143 = 1) : (v143 = v142), v143 <= 0))
  {
    v219 = 0;
  }

  v144.ikey = 4997953;
  v145 = AAHeaderGetKeyIndex(v211, v144);
  if ((v145 & 0x80000000) != 0 || ((v146 = AAHeaderGetFieldBlob(v211, v145, &v217, &v216), v146 <= 1) ? (v147 = 1) : (v147 = v146), v147 <= 0))
  {
    v217 = 0;
  }

  v148 = *headerb + v202;
  v220 += v148;
  v218 += v148;
  v216 += v148;
  if ((aaEntryAttributesInitWithHeader(&v225, data_size, 0, v211) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 571, 120, 0, "setting attributes from header");
    goto LABEL_286;
  }

  if (*(v13 + 1064))
  {
    unlinkat(*(v209 + 2104), v112, 0);
  }

  v149 = *(headerb + 15);
  if (v149 != 70)
  {
    if (v149 != 76)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 584, 120, 0, "unsupported entry type");
      goto LABEL_286;
    }

    if ((symlinkat(&v234, *(v209 + 2104), v112) & 0x80000000) == 0)
    {
      v10 = v209;
      v17 = v211;
      v8 = v215;
      if (*(headerb + 15) == 70)
      {
        goto LABEL_269;
      }

      if ((aaEntryAttributesApplyToPath(&v225, (v13 + 16), v215, *(v13 + 1056)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 591, 120, 0, "setting attributes");
        goto LABEL_286;
      }

LABEL_347:
      AAByteStreamClose(0);
      v127 = 21;
      goto LABEL_226;
    }

    v188 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 581, 120, v188, "symlink");
LABEL_220:
    v109 = 0;
    v10 = v209;
LABEL_221:
    v17 = v211;
LABEL_223:
    v8 = v215;
    goto LABEL_224;
  }

LABEL_269:
  if ((v225 & 4) != 0)
  {
    v150 = data_size[0];
    v151 = 0xFFFFFFFFLL;
    if ((BYTE12(v225) & 0x20) != 0 && v230)
    {
      v151 = (LOBYTE(data_size[0]) << 31 >> 31) & data_size[1];
    }
  }

  else
  {
    v150 = data_size[0];
    v151 = 0xFFFFFFFFLL;
  }

  if ((v150 & 8) != 0)
  {
    if ((*(v13 + 1062) & 2) != 0)
    {
      v157 = HIDWORD(data_size[0]);
    }

    else
    {
      v157 = -1;
    }
  }

  else
  {
    v157 = -1;
  }

  v10 = v209;
  v109 = aaArchiveFileOutputStreamOpenAt(*(v209 + 2104), v112, v230, v151, 0, v157, *(v13 + 1088));
  if (!v109)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 610, 120, 0, "creating file stream");
    goto LABEL_221;
  }

  v158 = v230;
  if (!v230)
  {
LABEL_306:
    v165 = aaArchiveFileOutputStreamCloseAndReturnFD(v109);
    if ((v165 & 0x80000000) == 0)
    {
      v166 = v165;
      if ((workerApplyAttr(v209, headerb, v165, &v225) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 637, 120, 0, "setting attributes");
      }

      else if (v219 && (workerLoadAndApplyXAT(v209, headerb, v166, v219, v218) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 638, 120, 0, "loading and applying XAT");
      }

      else
      {
        if (!v217 || (workerLoadAndApplyACL(v209, headerb, v166, v217, v216) & 0x80000000) == 0)
        {
          atomic_fetch_add_explicit((v13 + 1304), v230, memory_order_relaxed);
          close(v166);
          AAByteStreamClose(0);
          v127 = 21;
          v10 = v209;
          v17 = v211;
          v8 = v215;
          goto LABEL_226;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 639, 120, 0, "loading and applying ACL");
      }

      close(v166);
      AAByteStreamClose(0);
      v10 = v209;
      v17 = v211;
      goto LABEL_376;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 636, 120, 0, "invalid fd");
    goto LABEL_220;
  }

  v159 = 0;
  while (1)
  {
    v160 = v158 - v159;
    if (*(v209 + 40) >= v160)
    {
      v161 = v160;
    }

    else
    {
      v161 = *(v209 + 40);
    }

    v162 = AAByteStreamPRead(*v13, *(v209 + 32), v161, v220 + v159);
    if (v162 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 617, 120, 0, "read failed");
      goto LABEL_221;
    }

    v163 = v162;
    if (AAByteStreamWrite(v109, *(v209 + 32), v162) != v162)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 619, 120, 0, "write failed");
      goto LABEL_221;
    }

    v159 += v163;
    v164 = *(v13 + 1048);
    if (v164)
    {
      size[0] = v230;
      size[1] = v159;
      if ((v164(*(v13 + 1040), 60, v215, size) & 0x80000000) != 0)
      {
        break;
      }
    }

    v158 = v230;
    if (v159 >= v230)
    {
      goto LABEL_306;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerCreateEntries", 629, 120, 0, "callback cancel");
  v196 = 0;
  atomic_compare_exchange_strong((v13 + 1288), &v196, 1u);
LABEL_391:
  v12 = 0xFFFFFFFFLL;
  v17 = v211;
LABEL_12:
  v18 = v17;
LABEL_382:
  AAHeaderDestroy(v18);
  return v12;
}

void workerDestroy_0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 2104);
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
    }

    free(*(a1 + 32));
    free(*(a1 + 2128));
    memset_s((a1 + 2112), 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

uint64_t stateConcatPath(uint64_t a1, char *a2, const char *a3)
{
  if (*(a1 + 1068))
  {
    return concatPath(a2, 0x800uLL, (a1 + 16), a3);
  }

  else
  {
    return concatExtractPath(a2, 0x800uLL, (a1 + 16), a3);
  }
}

uint64_t stateGetEntryData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4 == -1)
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v7 = __CFADD__(v11, v12);
    v13 = v11 + v12;
    if (v7 || v13 > *(a1 + 1104))
    {
      return 0;
    }

    return *(a1 + 1120) + v11;
  }

  else
  {
    if (v4 < *(a1 + 1152))
    {
      v5 = *(a2 + 40);
      v6 = *(a2 + 48);
      v7 = __CFADD__(v5, v6);
      v8 = v5 + v6;
      if (!v7)
      {
        v9 = *(*(a1 + 1160) + 8 * v4);
        if (v8 <= *(v9 + 2112))
        {
          return *(v9 + 2128) + v5;
        }
      }

      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateGetEntryData", 1008, 120, 0, "invalid worker index", v2, v3);
    return 0;
  }
}

uint64_t workerUpdateDir(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = v4;
  v6 = *(a1 + 2104);
  if ((v6 & 0x80000000) == 0)
  {
    if (v4 == *(a1 + 2096))
    {
      result = strcmp(__s, (a1 + 48));
      if (!result)
      {
        return result;
      }
    }

    close(v6);
    *(a1 + 2104) = -1;
  }

  if (v5 >= 0x800)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerUpdateDir", 150, 120, 0, "directory path too long");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2096) = v5;
  memcpy((a1 + 48), __s, v5);
  *(a1 + 48 + v5) = 0;
  v8 = open((a1 + 48), 0);
  *(a1 + 2104) = v8;
  if (v8 < 0)
  {
    makePath((a1 + 48), *(a1 + 2096));
    mkdir((a1 + 48), 0x1EDu);
    v9 = open((a1 + 48), 0);
    *(a1 + 2104) = v9;
    if (v9 < 0)
    {
      v10 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerUpdateDir", 164, 120, v10, "open: %s");
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t stateShouldCreateFileInCluster(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (*(a1 + 8 * a2 + 1240) <= a3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateShouldCreateFileInCluster", 1019, 120, 0, "invalid index in HLC/CLC/SLC cluster");
  }

  else if (pthread_mutex_lock((a1 + 1176)) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateShouldCreateFileInCluster", 1020, 120, 0, "pthread_mutex_lock");
  }

  else
  {
    v8 = *(a1 + 8 * a2 + 1264);
    v9 = *(v8 + 8 * a3);
    if (v9 == -1)
    {
      *(v8 + 8 * a3) = a4;
    }

    if ((pthread_mutex_unlock((a1 + 1176)) & 0x80000000) == 0)
    {
      return v9 == -1;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateShouldCreateFileInCluster", 1023, 120, 0, "pthread_mutex_lock");
  }

  return 0xFFFFFFFFLL;
}

uint64_t workerApplyAttr(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v6 = *(a1 + 8);
  v7 = v6[131];
  if (v7 && (v7(v6[130], 23, *(v6[137] + 32) + *(*(v6[137] + 8) + 16 * *(a2 + 64)), a4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerApplyAttr", 178, 120, 0, "user error");
  }

  else
  {
    if ((aaEntryAttributesApplyToFD(a4, a3, v6[132]) & 0x80000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerApplyAttr", 182, 120, 0, "setting attributes");
  }

  return 0xFFFFFFFFLL;
}

uint64_t workerLoadAndApplyXAT(uint64_t a1, uint64_t a2, int a3, size_t a4, uint64_t a5)
{
  if ((workerReserve(a1, a4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerLoadAndApplyXAT", 248, 120, 0, "allocating worker buf");
  }

  else
  {
    v10 = **(a1 + 8);
    if (*(v10 + 32))
    {
      v11 = 0;
      if (a4)
      {
        v12 = *(a1 + 32);
        v13 = a4;
        while (1)
        {
          v14 = (*(v10 + 32))(*v10, v12, v13, a5);
          if (v14 < 0)
          {
            break;
          }

          if (v14)
          {
            v12 += v14;
            v11 += v14;
            a5 += v14;
            v13 -= v14;
            if (v13)
            {
              continue;
            }
          }

          goto LABEL_12;
        }

        v11 = v14;
      }
    }

    else
    {
      v11 = -1;
    }

LABEL_12:
    if (v11 == a4)
    {
      if ((workerDecodeAndApplyXAT(a1, a2, a3, *(a1 + 32), a4) & 0x80000000) == 0)
      {
        return 0;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerLoadAndApplyXAT", 255, 120, 0, "applying XAT");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerLoadAndApplyXAT", 252, 120, 0, "loading XAT blob");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t workerLoadAndApplyACL(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5)
{
  if ((workerReserve(a1, a4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerLoadAndApplyACL", 269, 120, 0, "allocating worker buf");
  }

  else
  {
    v10 = **(a1 + 8);
    if (*(v10 + 32))
    {
      v11 = 0;
      if (a4)
      {
        v12 = *(a1 + 32);
        v13 = a4;
        while (1)
        {
          v14 = (*(v10 + 32))(*v10, v12, v13, a5);
          if (v14 < 0)
          {
            break;
          }

          if (v14)
          {
            v12 += v14;
            v11 += v14;
            a5 += v14;
            v13 -= v14;
            if (v13)
            {
              continue;
            }
          }

          goto LABEL_12;
        }

        v11 = v14;
      }
    }

    else
    {
      v11 = -1;
    }

LABEL_12:
    if (v11 == a4)
    {
      if ((workerDecodeAndApplyACL(a1, a2, a3, *(a1 + 32), a4) & 0x80000000) == 0)
      {
        return 0;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerLoadAndApplyACL", 276, 120, 0, "applying ACL");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerLoadAndApplyACL", 273, 120, 0, "loading ACL blob");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t workerReserve(uint64_t a1, size_t a2)
{
  if (*(a1 + 40) >= a2)
  {
    return 0;
  }

  *(a1 + 40) = a2;
  if (a2 < 0x2000000001)
  {
    v4 = *(a1 + 32);
    v5 = realloc(v4, a2);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *(a1 + 32) = v6;
      return result;
    }

    free(v4);
  }

  else
  {
    *__error() = 12;
  }

  *(a1 + 32) = 0;
  v7 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerReserve", 137, 120, *v7, "malloc");
  return 0xFFFFFFFFLL;
}

uint64_t workerDecodeAndApplyXAT(uint64_t a1, uint64_t a2, int a3, uint8_t *data, size_t data_size)
{
  v7 = *(a1 + 8);
  v8 = AAEntryXATBlobCreateWithEncodedData(data, data_size);
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDecodeAndApplyXAT", 197, 120, 0, "invalid XAT blob");
LABEL_9:
    v10 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v9 = v7[131];
  if (v9 && (v9(v7[130], 24, *(v7[137] + 32) + *(*(v7[137] + 8) + 16 * *(a2 + 64)), v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDecodeAndApplyXAT", 203, 120, 0, "user error");
    goto LABEL_9;
  }

  if ((aaEntryXATBlobApplyToFD(v8, a3, v7[132]) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDecodeAndApplyXAT", 207, 120, 0, "applying XAT");
    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:
  AAEntryXATBlobDestroy(v8);
  return v10;
}

uint64_t workerDecodeAndApplyACL(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t *data, size_t data_size)
{
  v7 = *(a1 + 8);
  v8 = AAEntryACLBlobCreateWithEncodedData(data, data_size);
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDecodeAndApplyACL", 223, 120, 0, "invalid ACL blob");
LABEL_9:
    v10 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v9 = v7[131];
  if (v9 && (v9(v7[130], 25, *(v7[137] + 32) + *(*(v7[137] + 8) + 16 * *(a2 + 64)), v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDecodeAndApplyACL", 229, 120, 0, "user error");
    goto LABEL_9;
  }

  if ((aaEntryACLBlobApplyToFD(v8, a3, v7[132]) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "workerDecodeAndApplyACL", 233, 120, 0, "applying ACL");
    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:
  AAEntryACLBlobDestroy(v8);
  return v10;
}

uint64_t stateAppendEntry(uint64_t a1, AAHeader header, uint64_t a3, rsize_t a4, char **a5)
{
  *&v70[1023] = *MEMORY[0x29EDCA608];
  v66 = -1;
  value = 0;
  v64 = -1;
  v65 = -1;
  v63 = 0;
  length = 0;
  v11.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v11);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, &value), FieldUInt <= 1) ? (v14 = 1) : (v14 = FieldUInt), v14 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 900, 120, 0, "invalid archive stream");
    return 0xFFFFFFFFLL;
  }

  if (value - 66 <= 0x15)
  {
    if (((1 << (value - 66)) & 0x274003) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 913, 120, 0, "unsupported entry type %c: %s");
      return 0xFFFFFFFFLL;
    }

    if (value == 77)
    {
      goto LABEL_13;
    }
  }

  v17.ikey = 5521744;
  v18 = AAHeaderGetKeyIndex(header, v17);
  if ((v18 & 0x80000000) != 0 || ((FieldString = AAHeaderGetFieldString(header, v18, 0x400uLL, &v69, &length), FieldString <= 1) ? (v20 = 1) : (v20 = FieldString), v20 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 920, 120, 0, "missing PAT field");
    return 0xFFFFFFFFLL;
  }

  v21 = *(a1 + 1048);
  if (v21)
  {
    v22 = v21(*(a1 + 1040), 20, &v69, header);
    if (v22 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 926, 120, 0, "Caller cancelled");
    }

    else
    {
      if (v22)
      {
LABEL_13:
        v16 = 0;
        goto LABEL_14;
      }

      LOBYTE(v68[0]) = 0;
      v23 = (*(a1 + 1048))(*(a1 + 1040), 27, &v69, v68);
      if ((v23 & 0x80000000) == 0)
      {
        if (v23)
        {
          __strlcpy_chk();
        }

        goto LABEL_27;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 932, 120, 0, "Caller cancelled");
    }

    v43 = 0;
    atomic_compare_exchange_strong((a1 + 1288), &v43, 1u);
    return 0xFFFFFFFFLL;
  }

LABEL_27:
  v24 = value;
  if (value == 70)
  {
    v25.ikey = 4410440;
    v26 = AAHeaderGetKeyIndex(header, v25);
    if ((v26 & 0x80000000) != 0 || ((v27 = AAHeaderGetFieldUInt(header, v26, &v66), v27 <= 1) ? (v28 = 1) : (v28 = v27), v28 <= 0))
    {
      v66 = -1;
    }

    v29.ikey = 4410435;
    v30 = AAHeaderGetKeyIndex(header, v29);
    if ((v30 & 0x80000000) != 0 || ((v31 = AAHeaderGetFieldUInt(header, v30, &v65), v31 <= 1) ? (v32 = 1) : (v32 = v31), v32 <= 0))
    {
      v65 = -1;
    }

    v33.ikey = 4410451;
    v34 = AAHeaderGetKeyIndex(header, v33);
    if ((v34 & 0x80000000) != 0 || ((v35 = AAHeaderGetFieldUInt(header, v34, &v64), v35 <= 1) ? (v36 = 1) : (v36 = v35), v36 <= 0))
    {
      v64 = -1;
    }

    v24 = value;
  }

  if (v24 == 68 && !*(a1 + 1076))
  {
    v68[0] = 0;
    v49.ikey = 5067853;
    if ((AAHeaderGetKeyIndex(header, v49) & 0x80000000) == 0)
    {
      *(a1 + 1076) = 1;
    }

    v50.ikey = 4672582;
    v51 = AAHeaderGetKeyIndex(header, v50);
    if ((v51 & 0x80000000) == 0)
    {
      v52 = AAHeaderGetFieldUInt(header, v51, v68);
      v53 = v52 <= 1 ? 1 : v52;
      if (v53 >= 1 && (v68[0] & 0x20002) != 0)
      {
        *(a1 + 1076) = 1;
      }
    }
  }

  if ((StringTableAppend(*(a1 + 1096), &v69, length, &v63) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 958, 120, 0, "inserting path in table");
    return 0xFFFFFFFFLL;
  }

  if (value == 68)
  {
    v37 = *(a1 + 1104);
    v38 = v37 + a4;
    if (__CFADD__(v37, a4) || (v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_105;
    }

    v39 = (a1 + 1104);
    v40 = *(a1 + 1112);
    if (v40 < v38)
    {
      do
      {
        while (!v40)
        {
          v40 = 0x4000;
          if (v38 <= 0x4000)
          {
            v42 = (a1 + 1120);
            v40 = 0x4000;
            goto LABEL_91;
          }
        }

        v41 = v40 >> 1;
        if ((v40 & (v40 >> 1)) != 0)
        {
          v41 = v40 & (v40 >> 1);
        }

        v40 += v41;
      }

      while (v40 < v38);
      v42 = (a1 + 1120);
      if (v40 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_104;
      }

LABEL_91:
      v58 = *v42;
      v56 = realloc(*v42, v40);
      if (v56)
      {
        *(a1 + 1120) = v56;
        *(a1 + 1112) = v40;
        v37 = *(a1 + 1104);
        goto LABEL_93;
      }

      free(v58);
LABEL_104:
      *v42 = 0;
      *v39 = 0;
      *(a1 + 1112) = 0;
      goto LABEL_105;
    }

    v56 = *(a1 + 1120);
    if (v56)
    {
LABEL_93:
      memset_s(&v56[v37], a4, 0, a4);
      v37 = *v39;
    }

    *v39 = v37 + a4;
    if ((a4 & 0x8000000000000000) != 0)
    {
LABEL_105:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 964, 120, 0, "inserting blob placeholder");
      return 0xFFFFFFFFLL;
    }

    v59 = v69;
    if (v69)
    {
      v45 = 0;
      v60 = v70;
      do
      {
        if (v59 == 47)
        {
          ++v45;
        }

        v61 = *v60++;
        v59 = v61;
      }

      while (v61);
    }

    else
    {
      v45 = 0;
    }

    v44 = a4;
  }

  else
  {
    v37 = 0;
    v44 = 0;
    v45 = 0;
  }

  v46 = *(a1 + 1136);
  v47 = *(a1 + 1128);
  if (v46 >= v47)
  {
    v54 = 2 * v47;
    if (!v47)
    {
      v54 = 256;
    }

    *(a1 + 1128) = v54;
    if ((72 * v54) < 0x2000000001)
    {
      v55 = *(a1 + 1144);
      v48 = realloc(v55, 72 * v54);
      if (v48)
      {
        *(a1 + 1144) = v48;
        v46 = *(a1 + 1136);
        goto LABEL_84;
      }

      free(v55);
    }

    else
    {
      *__error() = 12;
    }

    *(a1 + 1144) = 0;
    v57 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecodeAndExtract.c", "stateAppendEntry", 973, 120, *v57, "malloc");
    *(a1 + 1128) = 0;
    *(a1 + 1136) = 0;
    return 0xFFFFFFFFLL;
  }

  v48 = *(a1 + 1144);
LABEL_84:
  *(a1 + 1136) = v46 + 1;
  v16 = &v48[72 * v46];
  *(v16 + 15) = value;
  *(v16 + 16) = v63;
  *v16 = a3;
  *(v16 + 1) = a4;
  *(v16 + 2) = v66;
  *(v16 + 3) = v65;
  *(v16 + 4) = v64;
  *(v16 + 5) = v37;
  *(v16 + 6) = v44;
  *(v16 + 34) = v45;
  *(v16 + 14) = -1;
LABEL_14:
  result = 0;
  if (a5)
  {
    *a5 = v16;
  }

  return result;
}

AAFieldKeySet AAFieldKeySetCreate(void)
{
  v0 = malloc(0x10uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x10uLL, 0, 0x10uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreate", 63, 103, *v2, "malloc");
  }

  return v1;
}

AAFieldKeySet AAFieldKeySetCreateWithString(const char *s)
{
  v2 = AAFieldKeySetCreate();
  if (!v2)
  {
    goto LABEL_44;
  }

  v3 = strlen(s) + 1;
  if ((v3 & 3) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 73, 103, 0, "Invalid KeySet string length: %zu");
    return 0;
  }

  if (v3 >= 0x3FFFFFFFDLL)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 75, 103, 0, "String too long: %zu");
    return 0;
  }

  v4 = v3 >> 2;
  if (((v3 >> 2) & 0x80000000) != 0)
  {
LABEL_43:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 77, 103, 0, "realloc_keys");
LABEL_44:
    AAFieldKeySetDestroy(v2);
    return 0;
  }

  v5 = *(v2 + 1);
  if (v5 < v4)
  {
    do
    {
      if (v5)
      {
        v5 += v5 >> 1;
      }

      else
      {
        v5 = 16;
      }
    }

    while (v5 < v4);
    v6 = *(v2 + 1);
    v7 = realloc(v6, 4 * v5);
    if (v7)
    {
      v8 = v7;
      *(v2 + 1) = v7;
      *(v2 + 1) = v5;
      goto LABEL_15;
    }

    free(v6);
    *(v2 + 1) = 0;
    v20 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v20, "malloc");
    *v2 = 0;
    goto LABEL_43;
  }

  v8 = *(v2 + 1);
LABEL_15:
  memcpy(v8, s, v3);
  if (v3)
  {
    v9 = v3;
    do
    {
      *v8 = __toupper(*v8);
      ++v8;
      --v9;
    }

    while (v9);
    *v2 = v4;
    v10 = 0;
    if (v4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v4;
    }

    v12 = MEMORY[0x29EDCA600];
    while (1)
    {
      v13 = *(v2 + 1) + v10;
      if (*(v13 + 3))
      {
        if (*(v13 + 3) != 44)
        {
          break;
        }
      }

      *(v13 + 3) = 0;
      v14 = *(*(v2 + 1) + v10);
      if (v14 > 0x7F)
      {
        v15 = __maskrune(v14, 0x500uLL);
      }

      else
      {
        v15 = *(v12 + 4 * v14 + 60) & 0x500;
      }

      if (!v15 || ((v16 = v14 >> 8, v16 > 0x7F) ? (v17 = __maskrune(v16, 0x500uLL)) : (v17 = *(v12 + 4 * v16 + 60) & 0x500), !v17 || ((v18 = (v14 << 8) >> 24, v18 > 0x7F) ? (v19 = __maskrune(v18, 0x500uLL)) : (v19 = *(v12 + 4 * v18 + 60) & 0x500), HIBYTE(v14) || !v19)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 88, 103, 0, "invalid key set: %s");
        goto LABEL_44;
      }

      v10 += 4;
      if (!--v11)
      {
        goto LABEL_40;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 86, 103, 0, "invalid key set: %s");
    goto LABEL_44;
  }

  *v2 = v4;
LABEL_40:
  qsort(*(v2 + 1), v4, 4uLL, cmp_keys);
  return v2;
}

void AAFieldKeySetDestroy(AAFieldKeySet key_set)
{
  if (key_set)
  {
    free(*(key_set + 1));

    free(key_set);
  }
}

AAFieldKeySet AAFieldKeySetClone(AAFieldKeySet key_set)
{
  v2 = AAFieldKeySetCreate();
  v3 = v2;
  if (!v2)
  {
    goto LABEL_15;
  }

  v4 = *key_set;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      v5 = *(v2 + 1);
      if (v5 >= v4)
      {
        v7 = *(v2 + 1);
        goto LABEL_12;
      }

      do
      {
        if (v5)
        {
          v5 += v5 >> 1;
        }

        else
        {
          v5 = 16;
        }
      }

      while (v5 < v4);
      v6 = *(v2 + 1);
      v7 = realloc(v6, 4 * v5);
      if (v7)
      {
        *(v3 + 1) = v7;
        *(v3 + 1) = v5;
LABEL_12:
        *v3 = v4;
        memcpy(v7, *(key_set + 1), 4 * v4);
        return v3;
      }

      free(v6);
      *(v3 + 1) = 0;
      v8 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v8, "malloc");
      *v3 = 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetClone", 106, 103, 0, "realloc_keys");
LABEL_15:
    AAFieldKeySetDestroy(v3);
    return 0;
  }

  return v3;
}

int AAFieldKeySetContainsKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v10 = key;
  v11 = 0;
  do
  {
    *(&v11 + v3) = __toupper(v10.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  if (*key_set && (v5 = *(key_set + 1), *v5 < v11))
  {
    v6 = v4 - 1;
    v7 = v5[v4 - 1];
    if (v7 < v11)
    {
      return 0;
    }

    if (v4 < 3)
    {
      return v7 == v11;
    }

    v8 = 0;
    do
    {
      if (v5[(v8 + v6) >> 1] >= v11)
      {
        v6 = (v8 + v6) >> 1;
      }

      else
      {
        v8 = (v8 + v6) >> 1;
      }
    }

    while (v6 - v8 > 1);
  }

  else
  {
    v6 = 0;
  }

  if (v6 < v4)
  {
    v7 = *(*(key_set + 1) + 4 * v6);
    return v7 == v11;
  }

  return 0;
}

int AAFieldKeySetInsertKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v17 = key;
  v18 = 0;
  do
  {
    *(&v18 + v3) = __toupper(v17.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  v5 = *key_set + 1;
  if (v5 < 0)
  {
    goto LABEL_21;
  }

  v6 = v18;
  v7 = *(key_set + 1);
  if (v7 < v5)
  {
    do
    {
      if (v7)
      {
        v7 += v7 >> 1;
      }

      else
      {
        v7 = 16;
      }
    }

    while (v7 < v5);
    v8 = *(key_set + 1);
    v9 = realloc(v8, 4 * v7);
    if (v9)
    {
      *(key_set + 1) = v9;
      *(key_set + 1) = v7;
      v4 = *key_set;
      goto LABEL_11;
    }

    free(v8);
    *(key_set + 1) = 0;
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v15, "malloc");
    *key_set = 0;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetInsertKey", 139, 103, 0, "realloc_keys failed");
    return -1;
  }

LABEL_11:
  if (!v4 || (v10 = *(key_set + 1), *v10 >= v6))
  {
    v11 = 0;
    goto LABEL_16;
  }

  v11 = v4 - 1;
  v12 = v10[v4 - 1];
  if (v12 >= v6)
  {
    if (v4 < 3)
    {
      v13 = v11;
      goto LABEL_18;
    }

    v16 = 0;
    do
    {
      if (v10[(v16 + v11) >> 1] >= v6)
      {
        v11 = (v16 + v11) >> 1;
      }

      else
      {
        v16 = (v16 + v11) >> 1;
      }
    }

    while (v11 - v16 > 1);
LABEL_16:
    if (v11 >= v4)
    {
      goto LABEL_23;
    }

    v10 = *(key_set + 1);
    v13 = v11;
    v12 = v10[v11];
LABEL_18:
    if (v12 == v6)
    {
      return 0;
    }

    memmove(&v10[v13 + 1], &v10[v13], 4 * (v4 - v11));
    goto LABEL_23;
  }

  v11 = v4;
LABEL_23:
  result = 0;
  *(*(key_set + 1) + 4 * v11) = v6;
  ++*key_set;
  return result;
}

int AAFieldKeySetRemoveKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v14 = key;
  v15 = 0;
  do
  {
    *(&v15 + v3) = __toupper(v14.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  if (!v4 || (v5 = *(key_set + 1), *v5 >= v15))
  {
    v6 = 0;
LABEL_14:
    if (v6 == v4)
    {
      return 0;
    }

    v5 = *(key_set + 1);
    v9 = v6;
    v7 = v5[v6];
    goto LABEL_16;
  }

  v6 = v4 - 1;
  v7 = v5[v4 - 1];
  if (v7 < v15)
  {
    return 0;
  }

  if (v4 >= 3)
  {
    v8 = 0;
    do
    {
      if (v5[(v8 + v6) >> 1] >= v15)
      {
        v6 = (v8 + v6) >> 1;
      }

      else
      {
        v8 = (v8 + v6) >> 1;
      }
    }

    while (v6 - v8 > 1);
    goto LABEL_14;
  }

  v9 = v4 - 1;
LABEL_16:
  if (v7 == v15)
  {
    v10 = v4 - 1;
    *key_set = v10;
    v11 = __OFSUB__(v10, v6);
    v12 = v10 - v6;
    if (!((v12 < 0) ^ v11 | (v12 == 0)))
    {
      memmove(&v5[v9], &v5[v9 + 1], 4 * v12);
    }
  }

  return 0;
}

int AAFieldKeySetInsertKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2)
  {
    v4 = *(s + 1);
    v5 = *key_set;
    v6 = *(key_set + 1);
    *key_set = 0;
    *(key_set + 1) = 0;
    v7 = v5 + v2;
    if (v5 + v2 >= 0)
    {
      if (!v7)
      {
LABEL_11:
        if (v5)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          while (1)
          {
            v13 = v6[v12];
            v14 = *(v4 + 4 * v11);
            if (v13 == v14)
            {
              *(*(key_set + 1) + 4 * v10) = v13;
              ++v12;
            }

            else
            {
              v15 = *(key_set + 1);
              if (v13 < v14)
              {
                *(v15 + 4 * v10) = v13;
                ++v12;
                goto LABEL_19;
              }

              *(v15 + 4 * v10) = v14;
            }

            ++v11;
LABEL_19:
            ++v10;
            if (v12 >= v5 || v11 >= v2)
            {
              goto LABEL_23;
            }
          }
        }

        v12 = 0;
        v11 = 0;
        v10 = 0;
LABEL_23:
        if (v12 >= v5)
        {
          v18 = v10;
        }

        else
        {
          v16 = &v6[v12];
          v17 = v5 - v12;
          do
          {
            v18 = v10 + 1;
            v19 = *v16++;
            *(*(key_set + 1) + 4 * v10++) = v19;
            --v17;
          }

          while (v17);
        }

        if (v11 >= v2)
        {
          v22 = v18;
        }

        else
        {
          v20 = (v4 + 4 * v11);
          v21 = v2 - v11;
          do
          {
            v22 = v18 + 1;
            v23 = *v20++;
            *(*(key_set + 1) + 4 * v18++) = v23;
            --v21;
          }

          while (v21);
        }

        LODWORD(v2) = 0;
        *key_set = v22;
        goto LABEL_36;
      }

      v8 = 0;
      do
      {
        if (v8)
        {
          v8 += v8 >> 1;
        }

        else
        {
          v8 = 16;
        }
      }

      while (v8 < v7);
      v9 = malloc(4 * v8);
      if (v9)
      {
        *(key_set + 1) = v9;
        *(key_set + 1) = v8;
        goto LABEL_11;
      }

      *(key_set + 1) = 0;
      v24 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v24, "malloc");
      *key_set = 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetInsertKeySet", 178, 103, 0, "realloc_keys");
    LODWORD(v2) = -1;
LABEL_36:
    free(v6);
  }

  return v2;
}

int AAFieldKeySetRemoveKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2)
  {
    v3 = *key_set;
    v4 = *(key_set + 1);
    if (v3)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = *(s + 1);
      while (1)
      {
        v9 = *(v4 + 4 * v7);
        v10 = *(v8 + 4 * v6);
        if (v9 == v10)
        {
          ++v7;
        }

        else if (v9 < v10)
        {
          *(*(key_set + 1) + 4 * v5++) = v9;
          ++v7;
          goto LABEL_9;
        }

        ++v6;
LABEL_9:
        if (v7 >= v3 || v6 >= v2)
        {
          goto LABEL_13;
        }
      }
    }

    v7 = 0;
    v5 = 0;
LABEL_13:
    if (v7 >= v3)
    {
      v13 = v5;
    }

    else
    {
      v11 = (v4 + 4 * v7);
      v12 = v3 - v7;
      do
      {
        v13 = v5 + 1;
        v14 = *v11++;
        *(*(key_set + 1) + 4 * v5++) = v14;
        --v12;
      }

      while (v12);
    }

    *key_set = v13;
  }

  return 0;
}

int AAFieldKeySetSelectKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2 && (v3 = *key_set, v3))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(s + 1);
    v8 = *(key_set + 1);
    do
    {
      v9 = *(v8 + 4 * v6);
      v10 = *(v7 + 4 * v5);
      if (v9 == v10)
      {
        *(*(key_set + 1) + 4 * v4++) = v9;
        ++v6;
        ++v5;
      }

      else if (v9 >= v10)
      {
        ++v5;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < v3 && v5 < v2);
  }

  else
  {
    v4 = 0;
  }

  *key_set = v4;
  return 0;
}

int AAFieldKeySetSerialize(AAFieldKeySet key_set, size_t capacity, char *s)
{
  v3 = *key_set;
  if (v3)
  {
    if (capacity >= 4 * v3)
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = s;
        do
        {
          *v5 = *(*(key_set + 1) + 4 * v4);
          if (v4)
          {
            *(v5 - 1) = 44;
          }

          ++v4;
          v5 += 4;
        }

        while (v4 < *key_set);
        LODWORD(v3) = *key_set;
      }

      s += (4 * v3 - 1);
      goto LABEL_11;
    }
  }

  else if (capacity)
  {
LABEL_11:
    result = 0;
    *s = 0;
    return result;
  }

  return -1;
}

unsigned int **AAPathListCreate()
{
  result = create();
  result[1][4] = 1;
  return result;
}

unsigned int **create()
{
  v0 = malloc(0x20uLL);
  v1 = v0;
  if (!v0)
  {
    v6 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "create", 444, 60, v6, "malloc");
LABEL_11:
    AAPathListDestroy(v1);
    return 0;
  }

  memset_s(v0, 0x20uLL, 0, 0x20uLL);
  v2 = StringTableCreate();
  *(v1 + 16) = v2;
  if (!v2)
  {
    v7 = "StringTableCreate";
    v8 = 447;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "create", v8, 60, 0, v7);
    goto LABEL_11;
  }

  if ((increaseCapacity(v1, 0x100u) & 0x80000000) != 0)
  {
    v7 = "alloc";
    v8 = 450;
    goto LABEL_10;
  }

  v10 = -1;
  if ((StringTableAppend(*(v1 + 16), &unk_296ABFE1D, 0, &v10) & 0x80000000) != 0)
  {
    v7 = "String table insert";
    v8 = 452;
    goto LABEL_10;
  }

  v3 = *(v1 + 8);
  v4 = (*v1)++;
  v5 = v3 + 24 * v4;
  *(v5 + 20) = -1;
  *(v5 + 8) = -1;
  *v5 = -1;
  *(v5 + 12) = v10;
  return v1;
}

void AAPathListDestroy(AAPathList path_list)
{
  if (path_list)
  {
    StringTableDestroy(*(path_list + 2));
    free(*(path_list + 1));

    free(path_list);
  }
}

AAPathList AAPathListCreateWithDirectoryContents(const char *dir, const char *path, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v6 = (MEMORY[0x2A1C7C4A8])(dir, path, msg_data, msg_proc, flags, *&n_threads);
  DefaultNThreads = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v6;
  v90 = *MEMORY[0x29EDCA608];
  v85 = 0;
  bzero(v89, 0x400uLL);
  bzero(v88, 0x400uLL);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (!realpath_DARWIN_EXTSN(v17, v89))
  {
    v24 = *__error();
    v75 = v17;
    v22 = "Invalid dir: %s";
    v23 = 508;
    goto LABEL_47;
  }

  v18 = strlen(v89);
  v20 = v18 != 1 || v89[0] != 47;
  if (v16)
  {
    v21 = v18;
    __strlcpy_chk();
    if ((normalizePath(v88) & 0x80000000) != 0)
    {
      v75 = v17;
      v76 = v16;
      v22 = "Invalid path (subpath normalization failed): %s/%s";
      v23 = 517;
LABEL_46:
      v24 = 0;
      goto LABEL_47;
    }

    if ((concatPath(v87, 0x800uLL, v89, v88) & 0x80000000) != 0)
    {
      v24 = *__error();
      v75 = v17;
      v76 = v16;
      v22 = "Path too long: %s/%s";
      v23 = 523;
    }

    else
    {
      if (realpath_DARWIN_EXTSN(v87, __s))
      {
        if (v20 && (strlen(__s) < v21 || memcmp(__s, v89, v21) || __s[v21] && __s[v21] != 47))
        {
          v75 = v17;
          v76 = v16;
          v22 = "Path resolving outside target dir: %s/%s";
          v23 = 531;
        }

        else
        {
          memset(&v84, 0, sizeof(v84));
          if (!lstat(__s, &v84) && (v84.st_mode & 0xF000) == 0x4000)
          {
            goto LABEL_26;
          }

          v75 = v17;
          v76 = v16;
          v22 = "Not a directory: %s/%s";
          v23 = 534;
        }

        goto LABEL_46;
      }

      v24 = *__error();
      v75 = v17;
      v76 = v16;
      v22 = "Invalid path, doesn't exist: %s/%s";
      v23 = 524;
    }

LABEL_47:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", v23, 60, v24, v22, v75, v76);
    v25 = 0;
LABEL_48:
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v40 = 0;
    v41 = 0;
    goto LABEL_49;
  }

LABEL_26:
  v25 = create();
  if (!v25)
  {
    return v25;
  }

  v83 = DefaultNThreads;
  v26 = strlen(v88);
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = 0;
    v30 = &v25[1][6 * *(v25 + 7)];
    *(v30 + 16) |= 1u;
    do
    {
      v31 = v88[v29];
      if (v31 == 47 || v31 == 0)
      {
        *v87 = -1;
        if ((increaseCapacity(v25, *v25 + 1) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 553, 60, 0, "increase PathList capacity");
LABEL_115:
          v38 = 0;
          v39 = 0;
          v37 = 0;
          v40 = 0;
          v41 = 0;
          goto LABEL_49;
        }

        if ((StringTableAppend(v25[2], &v88[v28], v29 - v28, v87) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 554, 60, 0, "inserting path component in table");
          goto LABEL_115;
        }

        v33 = *v25;
        v34 = &v25[1][6 * *v25];
        *v34 = *v25 - 1;
        v34[3] = *v87;
        v34[4] = v31 != 0;
        *v25 = v33 + 1;
        if (!v31)
        {
          break;
        }

        v28 = ++v29;
      }

      ++v29;
    }

    while (v29 <= v27);
  }

  if (!v12)
  {
    goto LABEL_43;
  }

  v35 = (v12)(v14, 11, v88, 0);
  if (v35 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 570, 60, "abort from callback");
    goto LABEL_48;
  }

  if (v35)
  {
    v36 = &v25[1][6 * (*v25 - 1)];
    *(v36 + 16) |= 1u;
  }

LABEL_43:
  if (DefaultNThreads < 0)
  {
    *__error() = 12;
    v82 = 0;
    v37 = 0;
    *__error() = 12;
  }

  else
  {
    v82 = calloc(DefaultNThreads, 0x28uLL);
    v37 = calloc(DefaultNThreads, 0x38uLL);
  }

  if ((8 * DefaultNThreads) >= 0x2000000001)
  {
    v39 = 0;
    *__error() = 12;
LABEL_64:
    v47 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 578, 60, *v47, "malloc");
    v38 = 0;
LABEL_65:
    v41 = 0;
    v40 = v82;
    goto LABEL_49;
  }

  v48 = malloc(8 * DefaultNThreads);
  v39 = v48;
  if (!v82 || !v37 || !v48)
  {
    goto LABEL_64;
  }

  if (DefaultNThreads >= 1)
  {
    v49 = v37;
    v50 = v48;
    v51 = DefaultNThreads;
    do
    {
      v49[2] = v14;
      v49[3] = v12;
      v49[4] = &v85;
      *v49 = v25;
      v49[1] = v89;
      *(v49 + 10) = (v10 >> 6) & 1;
      *v50++ = v49;
      v49 += 7;
      --v51;
    }

    while (v51);
  }

  v38 = ThreadPoolCreate(DefaultNThreads, v48, expandDirThreadProc);
  if (!v38)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 591, 60, 0, "ThreadPoolCreate");
    goto LABEL_65;
  }

  v79 = v37;
  v52 = *v25;
  if (!*v25)
  {
    goto LABEL_110;
  }

  v53 = 0;
  v54 = v52 - 1;
  if (DefaultNThreads <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = DefaultNThreads;
  }

  v77 = v52 - 1;
  v78 = v55;
  do
  {
    v56 = DefaultNThreads;
    v57 = 0;
    v58 = v55;
    if ((v56 + v52 + ~v54) / v56 <= 0x64)
    {
      v59 = 100;
    }

    else
    {
      v59 = (v56 + v52 + ~v54) / v56;
    }

    v60 = !v53;
    v80 = v53;
    v81 = 1;
    v61 = v82;
    do
    {
      v62 = v54 + v59 * v57;
      *v61 = v60;
      v61[1] = v62;
      v63 = v62 + v59;
      v61[2] = v62 + v59;
      if (v62 > v52)
      {
        v61[1] = v52;
        v62 = v52;
      }

      if (v63 > v52)
      {
        v61[2] = v52;
        v63 = v52;
      }

      if (v62 < v63)
      {
        Worker = ThreadPoolGetWorker(v38);
        if (Worker)
        {
          *(Worker + 48) = v61;
          if ((ThreadPoolRunWorker(v38) & 0x80000000) == 0)
          {
            goto LABEL_92;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 618, 60, 0, "ThreadPoolRunWorker");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 616, 60, 0, "ThreadPoolGetWorker");
        }

        v81 = 0;
      }

LABEL_92:
      ++v57;
      v61 += 10;
      --v58;
    }

    while (v58);
    if ((ThreadPoolSync(v38) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 620, 60, 0, "ThreadPoolSync");
      v74 = atomic_load(&v85);
      v40 = v82;
      DefaultNThreads = v83;
      if (v74 >= 1)
      {
LABEL_122:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 621, 60, 0, "Abort");
      }

LABEL_123:
      v41 = 0;
      goto LABEL_124;
    }

    v65 = atomic_load(&v85);
    v40 = v82;
    DefaultNThreads = v83;
    if (v65 > 0)
    {
      goto LABEL_122;
    }

    if (!v81)
    {
      goto LABEL_123;
    }

    v66 = 0;
    v55 = v78;
    do
    {
      v67 = &v82[5 * v66];
      if (*(v67 + 1) < *(v67 + 2))
      {
        v68 = *(v67 + 4);
        if (v68)
        {
          *v87 = 0;
          if ((increaseCapacity(v25, *v25 + v68) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 631, 60, 0, "alloc");
            goto LABEL_123;
          }

          if ((StringTableAppendTable(v25[2], v67[4], v87) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 632, 60, 0, "String table append");
            goto LABEL_123;
          }

          v69 = v25[1];
          v70 = *v25;
          v71 = v67[3] + 2;
          do
          {
            v72 = &v69[6 * v70++];
            *v25 = v70;
            *v72 = *(v71 - 2);
            v72[3] = *v87 + *(v71 - 1);
            v73 = *v71;
            v71 += 3;
            v72[4] = v73;
            --v68;
          }

          while (v68);
          *(v67 + 4) = 0;
        }
      }

      ++v66;
    }

    while (v66 != v78);
    if (v80)
    {
      break;
    }

    v53 = v52 == *v25;
    v54 = v52 == *v25 ? v77 : v52;
    v52 = *v25;
  }

  while (v54 < *v25);
LABEL_110:
  if ((normalize(v25) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 656, 60, 0, "Tree normalization");
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v40 = v82;
LABEL_124:
  v37 = v79;
LABEL_49:
  if ((ThreadPoolDestroy(v38) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 661, 60, 0, "ThreadPoolDestroy");
    v41 = 0;
  }

  v42 = atomic_load(&v85);
  if (v42 >= 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 662, 60, 0, "threads reported errors");
    v41 = 0;
  }

  if (v37)
  {
    if (DefaultNThreads >= 1)
    {
      v43 = DefaultNThreads;
      v44 = v40 + 4;
      do
      {
        free(*(v44 - 1));
        v45 = *v44;
        v44 += 5;
        StringTableDestroy(v45);
        --v43;
      }

      while (v43);
    }

    free(v37);
    free(v39);
  }

  free(v40);
  if (!v41)
  {
    AAPathListDestroy(v25);
    return 0;
  }

  return v25;
}

uint64_t increaseCapacity(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  if (v2 >= a2)
  {
    return 0;
  }

  do
  {
    if (v2)
    {
      v2 += v2 >> 1;
    }

    else
    {
      v2 = 256;
    }
  }

  while (v2 < a2);
  *(a1 + 4) = v2;
  v4 = *(a1 + 8);
  v5 = realloc(v4, 24 * v2);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *(a1 + 8) = v6;
  }

  else
  {
    free(v4);
    *(a1 + 8) = 0;
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "increaseCapacity", 270, 60, *v8, "malloc");
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t expandDirThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v58 = *MEMORY[0x29EDCA608];
  v9 = *(v8 + 48);
  bzero(__src, 0x400uLL);
  bzero(v56, 0x800uLL);
  v10 = *(v9 + 4);
  if (!v10)
  {
    v10 = StringTableCreate();
    *(v9 + 4) = v10;
    if (!v10)
    {
      v12 = "String table creation";
      v13 = 79;
      goto LABEL_84;
    }
  }

  StringTableClear(v10);
  v9[4] = 0;
  v11 = strlen(*(v8 + 8));
  if (v11 >= 0x800)
  {
    v12 = "dir name too long";
    v13 = 88;
    goto LABEL_84;
  }

  v14 = v11;
  __memcpy_chk();
  v15 = &v56[v14];
  v56[v14] = 0;
  v16 = v9[1];
  if (v16 >= v9[2])
  {
    return 0;
  }

  v17 = v14 + 1;
  while (1)
  {
    v18 = *v8;
    if (**v8 <= v16 || (v55.d_ino = 0, (getPath(v18, v16, 0x400uLL, __src, &v55.d_ino) & 0x80000000) != 0))
    {
      v12 = "get node path";
      v13 = 96;
      goto LABEL_84;
    }

    d_ino = v55.d_ino;
    if (v55.d_ino >= 0x400)
    {
      v12 = "truncated node path";
      v13 = 97;
      goto LABEL_84;
    }

    if (v55.d_ino)
    {
      v20 = v17 + v55.d_ino;
    }

    else
    {
      v20 = v14;
    }

    if (v55.d_ino)
    {
      if (v17 + v55.d_ino >= 0x800)
      {
        v12 = "path too long";
        v13 = 103;
        goto LABEL_84;
      }

      *v15 = 47;
      memcpy(v15 + 1, __src, d_ino);
    }

    v56[v20] = 0;
    memset(&v54, 0, sizeof(v54));
    if (lstat(v56, &v54) < 0)
    {
      v44 = *__error();
      v49 = v56;
      v12 = "lstat %s";
      v13 = 111;
      goto LABEL_85;
    }

    if (!statIsDataless(v54.st_flags))
    {
      break;
    }

    v21 = *(v8 + 24);
    if (v21 && v21(*(v8 + 16), 12, __src, 0))
    {
      v49 = v56;
      v12 = "dataless dir error: %s";
      v13 = 118;
      goto LABEL_84;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 119, 60, "skip dataless dir: %s");
LABEL_73:
    if (++v16 >= v9[2])
    {
      return 0;
    }
  }

  v22 = opendir(v56);
  if (!v22)
  {
    v43 = *(v8 + 24);
    v17 = v14 + 1;
    if (v43 && v43(*(v8 + 16), 12, __src, 0))
    {
      v44 = *__error();
      v49 = v56;
      v12 = "opendir failed: %s";
      v13 = 130;
      goto LABEL_85;
    }

    __error();
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 131, 60, "opendir failed with errno=%d: %s");
    goto LABEL_73;
  }

  v23 = v22;
  v50 = v15;
  memset(&v55, 0, 512);
  v53 = 0;
  while (!readdir_r(v23, &v55, &v53))
  {
    if (!v53)
    {
      goto LABEL_71;
    }

    d_namlen = v55.d_namlen;
    if ((v55.d_namlen != 1 || v55.d_name[0] != 46) && (v55.d_namlen != 2 || v55.d_name[0] != 46 || v55.d_name[1] != 46))
    {
      v25 = v20 + 1 + v55.d_namlen;
      if (v25 >= 0x800)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 162, 60, 0, "path too long");
LABEL_80:
        closedir(v23);
        v12 = "Directory expansion";
        v13 = 211;
        goto LABEL_84;
      }

      v56[v20] = 47;
      memcpy(&v56[v20 + 1], v55.d_name, d_namlen);
      v56[v25] = 0;
      memset(&v52, 0, sizeof(v52));
      if (lstat(v56, &v52))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 169, 60, "stat failed: %s", v56);
      }

      else if (v55.d_type == 4)
      {
        v26 = *v9;
        if (*v9)
        {
LABEL_44:
          if (v52.st_dev == v54.st_dev || *(v8 + 40))
          {
            if (!v26)
            {
              goto LABEL_50;
            }

            v29 = *(v8 + 24);
            if (!v29)
            {
              goto LABEL_58;
            }

            v30 = v29(*(v8 + 16), 10, v50 + 1, 0);
            if (v30 < 0)
            {
              v47 = 182;
              goto LABEL_93;
            }

            if (!v30)
            {
LABEL_50:
              v31 = 1;
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        if (v55.d_type)
        {
          v27 = 0;
        }

        else
        {
          v27 = (v52.st_mode & 0xF000) == 0x4000;
        }

        v28 = v27;
        v26 = *v9;
        if ((((*v9 != 0) ^ v28) & 1) == 0)
        {
          if (v28)
          {
            goto LABEL_44;
          }

          v31 = 0;
LABEL_52:
          v32 = *(v8 + 24);
          if (!v32)
          {
LABEL_58:
            v35 = 1;
            goto LABEL_59;
          }

          v33 = v32(*(v8 + 16), 11, v50 + 1, 0);
          if (v33 < 0)
          {
            v47 = 189;
LABEL_93:
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v47, 60, "abort from callback");
            goto LABEL_80;
          }

          v34 = v31;
          v35 = v33 == 0;
          if (!v33)
          {
            v34 = 1;
          }

          if (v34 == 1)
          {
LABEL_59:
            v51 = -1;
            if ((StringTableAppend(*(v9 + 4), v55.d_name, d_namlen, &v51) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 196, 60, 0, "String insertion failed");
              goto LABEL_80;
            }

            v37 = v9[3];
            v36 = v9[4];
            v38 = *(v9 + 3);
            if (v36 >= v37)
            {
              v39 = 2 * v37;
              if (!v37)
              {
                v39 = 256;
              }

              v9[3] = v39;
              v40 = realloc(v38, 12 * v39);
              if (!v40)
              {
                free(v38);
                *(v9 + 3) = 0;
                v48 = __error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 201, 60, *v48, "malloc");
                v9[3] = 0;
                v9[4] = 0;
                goto LABEL_80;
              }

              *(v9 + 3) = v40;
              v36 = v9[4];
              v38 = v40;
            }

            v9[4] = v36 + 1;
            v41 = &v38[12 * v36];
            v42 = v51;
            *v41 = v16;
            v41[1] = v42;
            v41[2] = !v35;
          }
        }
      }
    }
  }

  if (*__error() != 11)
  {
    v46 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 144, 60, v46, "readdir_r");
    goto LABEL_80;
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 143, 60, "readdir on dataless directory: %s", v56);
LABEL_71:
  closedir(v23);
  if (!**(v8 + 32))
  {
    v15 = v50;
    v17 = v14 + 1;
    goto LABEL_73;
  }

  v12 = "Abort requested";
  v13 = 212;
LABEL_84:
  v44 = 0;
LABEL_85:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v13, 60, v44, v12, v49);
  atomic_fetch_add(*(v8 + 32), 1u);
  return 0;
}

uint64_t normalize(unsigned int **a1)
{
  if (*a1)
  {
    v2 = StringTableSize(a1[2]);
    v30 = 0;
    v3 = *a1;
    if ((StringTableSort(a1[2], &v30) & 0x80000000) != 0)
    {
      v25 = "String table sorting";
      v26 = 379;
LABEL_30:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "normalize", v26, 60, 0, v25);
    }

    else
    {
      if (v3)
      {
        v4 = v30;
        v5 = a1[1] + 3;
        v6 = v3;
        do
        {
          v7 = *v5;
          if (v7 >= v2)
          {
            v25 = "Name out of range";
            v26 = 386;
            goto LABEL_30;
          }

          *v5 = v4[v7];
          *(v5 - 1) = -1;
          v5 += 6;
          --v6;
        }

        while (v6);
        v8 = 0;
        v9 = -1;
        *(a1 + 7) = -1;
        v10 = a1[1];
        v11 = v10 + 2;
        do
        {
          v12 = *(v11 - 2);
          if (v12 == -1)
          {
            if (v9 != -1)
            {
              v25 = "Multiple root nodes";
              v26 = 399;
              goto LABEL_30;
            }

            *(a1 + 7) = v8;
            v9 = v8;
          }

          else
          {
            v13 = &v10[6 * v12];
            *v11 = v13[1];
            v13[1] = v8;
          }

          ++v8;
          v11 += 6;
        }

        while (v3 != v8);
        v14 = calloc(v3, 4uLL);
        if (!v14)
        {
          goto LABEL_28;
        }

        v15 = v14;
        v16 = 0;
        v17 = 0;
        v18 = (a1[1] + 4);
        do
        {
          v19 = *v18;
          v18 += 24;
          if ((v19 & 1) == 0)
          {
            *&v14[4 * v17++] = v16;
          }

          ++v16;
        }

        while (v3 != v16);
        qsort_r(v14, v17, 4uLL, a1, cmpNodesProc);
        v20 = (a1 + 3);
        if (v17)
        {
          v21 = 0;
          v22 = a1[1];
          do
          {
            v23 = *&v15[v21];
            *v20 = v23;
            v20 = &v22[6 * v23 + 5];
            v21 += 4;
          }

          while (4 * v17 != v21);
        }

        goto LABEL_26;
      }

      *(a1 + 7) = -1;
      v27 = calloc(v3, 4uLL);
      if (v27)
      {
        v15 = v27;
        qsort_r(v27, 0, 4uLL, a1, cmpNodesProc);
        v20 = (a1 + 3);
LABEL_26:
        v24 = 0;
        *v20 = -1;
LABEL_32:
        free(v30);
        free(v15);
        return v24;
      }

LABEL_28:
      v28 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "normalize", 410, 60, v28, "malloc");
    }

    v15 = 0;
    v24 = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  return 0;
}

AAPathList AAPathListCreateWithPath(const char *dir, const char *path)
{
  v2 = (MEMORY[0x2A1C7C4A8])(dir, path);
  v4 = v3;
  v5 = v2;
  v30 = *MEMORY[0x29EDCA608];
  bzero(v29, 0x400uLL);
  bzero(v28, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v5, v29))
  {
    v11 = *__error();
    v23 = v5;
    v9 = "Invalid dir: %s";
    v10 = 693;
LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", v10, 60, v11, v9, v23, v24);
    v12 = 0;
    goto LABEL_21;
  }

  v6 = strlen(v29);
  v8 = v6 != 1 || v29[0] != 47;
  __strlcpy_chk();
  if ((normalizePath(v28) & 0x80000000) != 0)
  {
    v23 = v5;
    v24 = v4;
    v9 = "Invalid path (subpath normalization failed): %s/%s";
    v10 = 699;
    goto LABEL_17;
  }

  if ((concatPath(v27, 0x800uLL, v29, v28) & 0x80000000) != 0)
  {
    v11 = *__error();
    v23 = v5;
    v24 = v4;
    v9 = "Path too long: %s/%s";
    v10 = 705;
    goto LABEL_20;
  }

  if (!realpath_DARWIN_EXTSN(v27, __s))
  {
    v11 = *__error();
    v23 = v5;
    v24 = v4;
    v9 = "Invalid path, doesn't exist: %s/%s";
    v10 = 706;
    goto LABEL_20;
  }

  if (v8 && (strlen(__s) < v6 || memcmp(__s, v29, v6) || __s[v6] && __s[v6] != 47))
  {
    v23 = v5;
    v24 = v4;
    v9 = "Path resolving outside target dir: %s/%s";
    v10 = 713;
LABEL_17:
    v11 = 0;
    goto LABEL_20;
  }

  v12 = create();
  if (!v12)
  {
    goto LABEL_21;
  }

  v14 = strlen(v28);
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = &v12[1][6 * *(v12 + 7)];
    *(v18 + 16) |= 1u;
    do
    {
      v19 = v28[v16];
      if (v19 == 47 || v19 == 0)
      {
        v25 = -1;
        if ((increaseCapacity(v12, *v12 + 1) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", 732, 60, 0, "increase PathList capacity");
          goto LABEL_21;
        }

        if ((StringTableAppend(v12[2], &v28[v17], v16 - v17, &v25) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", 733, 60, 0, "inserting path component in table");
LABEL_21:
          AAPathListDestroy(v12);
          return 0;
        }

        v21 = *v12;
        v22 = &v12[1][6 * *v12];
        *v22 = *v12 - 1;
        v22[3] = v25;
        v22[4] = v19 != 0;
        *v12 = v21 + 1;
        if (!v19)
        {
          break;
        }

        v17 = ++v16;
      }

      ++v16;
    }

    while (v16 <= v15);
  }

  if ((normalize(v12) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", 745, 60, 0, "Tree normalization");
    goto LABEL_21;
  }

  return v12;
}

int AAPathListNodeGetPath(AAPathList path_list, uint64_t node, size_t path_capacity, char *path, size_t *path_length)
{
  if (node == -1)
  {
    if (path_capacity)
    {
      *path = 0;
    }

    result = 0;
    *path_length = 0;
  }

  else if (*path_list <= node)
  {
    return -1;
  }

  else
  {
    v7 = 0;
    result = getPath(path_list, node, path_capacity, path, &v7);
    if (path_length)
    {
      *path_length = v7;
    }
  }

  return result;
}

uint64_t getPath(uint64_t a1, unsigned int a2, size_t a3, _BYTE *a4, size_t *a5)
{
  if (a2 == -1)
  {
    v17 = 0;
    if (a3)
    {
      *a4 = 0;
    }

    goto LABEL_15;
  }

  if ((getPath(a1, *(*(a1 + 8) + 24 * a2), a3, a4, a5) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 16);
  v11 = *(v10 + 8) + 16 * *(*(a1 + 8) + 24 * a2 + 12);
  v12 = *(v11 + 8);
  if (!v12)
  {
    return 0;
  }

  v13 = *a5;
  v14 = *a5 + 1;
  if (v14 + v12 < a3)
  {
    v15 = *(v10 + 32);
    v16 = *v11;
    if (v13)
    {
      a4[v13] = 47;
    }

    else
    {
      v14 = 0;
    }

    memcpy(&a4[v14], (v15 + v16), v12);
    v17 = v14 + v12;
    a4[v14 + v12] = 0;
    goto LABEL_15;
  }

  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v13 + (v12 + 1);
LABEL_15:
  result = 0;
  *a5 = v17;
  return result;
}

uint64_t AAPathListGetNode(uint64_t a1, char *__s)
{
  v2 = *(a1 + 28);
  if (v2 != -1)
  {
    v6 = strlen(__s);
    if (!v6)
    {
      return v2;
    }

    v7 = 0;
    v15 = v6;
    while (1)
    {
      v8 = v6 <= v7 + 1 ? v7 + 1 : v6;
      v9 = v7;
      while (__s[v9] != 47)
      {
        if (v8 == ++v9)
        {
          v10 = __s[v8] != 0;
          v9 = v8;
          goto LABEL_14;
        }
      }

      v10 = 1;
LABEL_14:
      if (v9 == v7)
      {
        break;
      }

      v11 = *(a1 + 8);
      v2 = *(v11 + 24 * v2 + 4);
      if (v2 == -1)
      {
        break;
      }

      v16 = v10;
      v12 = *(a1 + 16);
      v13 = *(v12 + 8);
      while (1)
      {
        v14 = *(v11 + 24 * v2 + 12);
        if (v9 - v7 == *(v13 + 16 * v14 + 8) && !strncmp((*(v12 + 32) + *(v13 + 16 * v14)), &__s[v7], v9 - v7))
        {
          break;
        }

        v2 = *(v11 + 24 * v2 + 8);
        if (v2 == -1)
        {
          return -1;
        }
      }

      v6 = v15;
      v7 = v9 + v16;
      if (v9 + v16 >= v15)
      {
        return v2;
      }
    }
  }

  return -1;
}

uint64_t AAPathListMerge(unsigned int *a1, unsigned int *a2)
{
  v16 = 0;
  if (*a2 == 1)
  {
    return 0;
  }

  if ((StringTableAppendTable(*(a1 + 2), *(a2 + 2), &v16) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListMerge", 800, 60, 0, "String table merge");
  }

  else
  {
    v5 = *a1;
    if ((increaseCapacity(a1, *a2 + *a1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListMerge", 804, 60, 0, "Capacity increase");
    }

    else
    {
      if (*a2 >= 2)
      {
        v6 = *(a1 + 1);
        v7 = *a1;
        v8 = (*(a2 + 1) + 40);
        v9 = 1;
        do
        {
          v10 = v6 + 24 * v7++;
          *a1 = v7;
          v11 = v16 + *(v8 - 1);
          v12 = *(v8 - 4);
          v13 = v12 == 0;
          v14 = v5 - 1 + v12;
          if (v13)
          {
            v14 = 0;
          }

          *v10 = v14;
          v15 = *v8;
          v8 += 6;
          *(v10 + 12) = v11;
          *(v10 + 16) = v15;
          *(v10 + 20) = -1;
          *(v10 + 4) = -1;
          ++v9;
        }

        while (v9 < *a2);
      }

      if ((normalize(a1) & 0x80000000) == 0)
      {
        return 0;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListMerge", 816, 60, 0, "Tree normalization");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t AAPathListNodeFirst(AAPathList path_list)
{
  if (*(path_list + 6) == -1)
  {
    return -1;
  }

  else
  {
    return *(path_list + 6);
  }
}

uint64_t AAPathListNodeNext(AAPathList path_list, uint64_t node)
{
  if (*path_list <= node)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListNodeNext", 826, 60, 0, "Invalid node: %llu", node);
    return -1;
  }

  else if (*(*(path_list + 1) + 24 * node + 20) == -1)
  {
    return -1;
  }

  else
  {
    return *(*(path_list + 1) + 24 * node + 20);
  }
}

uint64_t cmpNodesProc(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = (v5 + 24 * v3);
  v7 = (v5 + 24 * *a3);
  if (*v6 == *v7)
  {
    v8 = v6[3];
    v9 = v7[3];
    if (v8 < v9)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v9 < v8;
    }
  }

  else
  {
    if (*a1 <= v3 || (*__s2 = 0, (getPath(a1, v3, 0x400uLL, __s1, __s2) & 0x80000000) != 0) || *__s2 >= 0x400uLL)
    {
      __s1[0] = 0;
    }

    if (*a1 <= v4 || (v12 = 0, (getPath(a1, v4, 0x400uLL, __s2, &v12) & 0x80000000) != 0) || v12 >= 0x400)
    {
      __s2[0] = 0;
    }

    return strcmp(__s1, __s2);
  }
}

AAArchiveStream AAExtractArchiveOutputStreamOpen(const char *dir, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  if (!n_threads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v10 = malloc(0x38uLL);
  v11 = v10;
  if (v10)
  {
    memset_s(v10, 0x38uLL, 0, 0x38uLL);
  }

  memset(&v40, 0, sizeof(v40));
  v12 = malloc(0x690uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x690uLL, 0, 0x690uLL);
    if (v11)
    {
      if (!realpath_DARWIN_EXTSN(dir, v13))
      {
        v15 = *__error();
        v39 = dir;
        v16 = "%s";
        v17 = 1611;
        goto LABEL_16;
      }

      if (stat(v13, &v40) || (v40.st_mode & 0xF000) != 0x4000)
      {
        v39 = dir;
        v16 = "Invalid directory: %s";
        v17 = 1612;
      }

      else
      {
        *(v13 + 1024) = flags;
        *(v13 + 1032) = msg_data;
        *(v13 + 1040) = msg_proc;
        *(v13 + 1656) = getRealTime();
        *(v13 + 1640) = 0;
        *(v13 + 1056) = 1;
        *(v13 + 1072) = 0;
        *(v13 + 1076) = DefaultNThreads;
        v14 = calloc(DefaultNThreads, 4uLL);
        *(v13 + 1080) = v14;
        if (!v14)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
          goto LABEL_22;
        }

        if (pthread_mutex_init((v13 + 1088), 0))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
LABEL_22:
          v16 = "SharedArrayInit";
          v17 = 1619;
          goto LABEL_15;
        }

        if (pthread_cond_init((v13 + 1152), 0))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
          goto LABEL_22;
        }

        VolumeCapabilities = getVolumeCapabilities(v13);
        v27 = -1;
        if (VolumeCapabilities < 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = VolumeCapabilities;
        }

        v28 = 268;
        if ((v27 & 8) == 0)
        {
          v28 = 264;
        }

        v29 = v28 & 0xFFFFFFFFFFFFFFDFLL | (32 * (v27 & 1));
        if ((flags & 0x20) == 0 && (v27 & 2) != 0)
        {
          v30 = v29 | 0x40;
        }

        else
        {
          v30 = v29;
        }

        *(v13 + 1048) = v30;
        if (isDirEmpty(v13) >= 1)
        {
          *(v13 + 1056) = 0;
        }

        for (i = 0; i != 240; i += 80)
        {
          *(v13 + i + 1376) = 0u;
          if (pthread_mutex_init((v13 + i + 1312), 0) < 0)
          {
            v32 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInit", 472, 72, *v32, "pthread_mutex_init");
            v16 = "cluster init";
            v17 = 1638;
            goto LABEL_15;
          }
        }

        *(v13 + 1200) = v13;
        if (pthread_mutex_init((v13 + 1216), 0))
        {
          v15 = *__error();
          v16 = "pthread_mutex_init";
          v17 = 1643;
          goto LABEL_16;
        }

        if ((createThread((v13 + 1208), retireThreadProc, v13 + 1200, 0) & 0x80000000) == 0)
        {
          *(v13 + 1060) = DefaultNThreads;
          if (DefaultNThreads < 0x2E8BA2E9)
          {
            v33 = calloc(DefaultNThreads, 0xB0uLL);
            *(v13 + 1064) = v33;
            if (v33)
            {
              if (!DefaultNThreads)
              {
LABEL_50:
                v11[3] = extractStreamWriteHeader;
                v11[4] = extractStreamWriteBlob;
                v11[2] = extractStreamAbort;
                *v11 = v13;
                v11[1] = extractStreamClose;
                return v11;
              }

              v34 = 0;
              v35 = 176 * DefaultNThreads;
              while (1)
              {
                v36 = *(v13 + 1064);
                v37 = v36 + v34;
                *(v36 + v34) = v13;
                if (AASharedBufferPipeOpen((v36 + v34 + 32), (v36 + v34 + 40), 0x40000uLL) < 0)
                {
                  v16 = "creating shared data buffer";
                  v17 = 1654;
                  goto LABEL_15;
                }

                if (AASharedBufferPipeOpen((v37 + 16), (v37 + 24), 0x4000uLL) < 0)
                {
                  v16 = "creating shared command buffer";
                  v17 = 1655;
                  goto LABEL_15;
                }

                v38 = v36 + v34;
                if ((SemInit(v38 + 48) & 0x80000000) != 0)
                {
                  v16 = "SemInit failed";
                  v17 = 1656;
                  goto LABEL_15;
                }

                if ((createThread((v38 + 8), extractThreadProc, v37, 0) & 0x80000000) != 0)
                {
                  break;
                }

                v34 += 176;
                if (v35 == v34)
                {
                  goto LABEL_50;
                }
              }

              v16 = "creating worker thread";
              v17 = 1657;
              goto LABEL_15;
            }
          }

          else
          {
            *__error() = 12;
            *(v13 + 1064) = 0;
          }

          v15 = *__error();
          v16 = "malloc";
          v17 = 1649;
          goto LABEL_16;
        }

        v16 = "creating retire thread";
        v17 = 1644;
      }

LABEL_15:
      v15 = 0;
      goto LABEL_16;
    }
  }

  v15 = *__error();
  v16 = "malloc";
  v17 = 1610;
LABEL_16:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "AAExtractArchiveOutputStreamOpen", v17, 72, v15, v16, v39);
  free(v11);
  extractStreamClose(v13, v18, v19, v20, v21, v22, v23, v24);
  return 0;
}

uint64_t SemInit(uint64_t a1)
{
  *a1 = 0;
  if (pthread_mutex_init((a1 + 8), 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_cond_init((a1 + 72), 0))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t extractThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v75 = *MEMORY[0x29EDCA608];
  v9 = *v8;
  v10 = *(*v8 + 1064);
  bzero(v73, 0x800uLL);
  bzero(__s, 0x800uLL);
  bzero(__s2, 0x800uLL);
  v11 = malloc(0x40000uLL);
  if (!v11)
  {
    v64 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 756, 72, v64, "malloc");
LABEL_196:
    free(v11);
    return v8;
  }

  if (*(v9 + 1060) <= -1171354717 * ((v8 - v10) >> 4))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 757, 72, 0, "invalid thread ID %d");
    goto LABEL_196;
  }

  v68 = -1171354717 * ((v8 - v10) >> 4);
  v12 = 0;
  v67 = -1;
  while (1)
  {
LABEL_4:
    if (!v12)
    {
      if (pthread_mutex_lock((v9 + 1088)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
      }

      else
      {
        v13 = *(v9 + 1072);
        v14 = *(v9 + 1076);
        v15 = v13;
        if (v13 < v14)
        {
          *(*(v9 + 1080) + 4 * v13) = v68;
          v15 = *(v9 + 1072);
        }

        *(v9 + 1072) = v15 + 1;
        if (v15 || !pthread_cond_broadcast((v9 + 1152)))
        {
          if (pthread_mutex_unlock((v9 + 1088)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
          }

          else if (v13 >= v14)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
          }
        }

        else
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
        }
      }

      if (!pthread_mutex_lock((v8 + 56)))
      {
        while (1)
        {
          v16 = *(v8 + 48);
          if (v16 > 0)
          {
            break;
          }

          if (pthread_cond_wait((v8 + 120), (v8 + 56)))
          {
            goto LABEL_21;
          }
        }

        *(v8 + 48) = v16 - 1;
        pthread_mutex_unlock((v8 + 56));
      }
    }

LABEL_21:
    memset(buf, 0, 12);
    v17 = AAByteStreamRead(*(v8 + 24), buf, 0xCuLL);
    if (v17 != 12)
    {
      break;
    }

    if (SLODWORD(buf[0]) <= 68)
    {
      if (SLODWORD(buf[0]) <= 65)
      {
        if (LODWORD(buf[0]) == 65)
        {
LABEL_50:
          v29 = *(v8 + 168);
          if (v29)
          {
            v30 = v29 + 281;
            v31 = v29 + 275;
            v32 = v29 + 278;
            if (LODWORD(buf[0]) != 65)
            {
              v32 = 0;
            }

            if (LODWORD(buf[0]) == 88)
            {
              v32 = v31;
            }

            if (LODWORD(buf[0]) == 89)
            {
              v33 = v30;
            }

            else
            {
              v33 = v32;
            }

            if (*v33 + *(buf + 4) > v33[1])
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 931, 72, 0, "too many blob bytes received", v66);
              goto LABEL_110;
            }

            v39 = AAByteStreamRead(*(v8 + 40), (v33[2] + *v33), *(buf + 4));
            if (v39 < 0)
            {
              v42 = 933;
              goto LABEL_109;
            }

            v40 = *(buf + 4);
            *(buf + 4) -= v39;
            if (v39)
            {
              v41 = *v33 + v39;
              if (!__CFADD__(*v33, v39) && v41 <= v33[1])
              {
                *v33 = v41;
              }
            }

            if (v40 != v39)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 936, 72, 0, "truncated read", v66);
              goto LABEL_110;
            }
          }

LABEL_76:
          v18 = 0;
        }

        else
        {
          if (LODWORD(buf[0]) == 42)
          {
            goto LABEL_198;
          }

LABEL_83:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 942, 72, 0, "Invalid thread command", v66);
LABEL_110:
          v18 = 1;
        }

        v12 = 1;
        goto LABEL_112;
      }

      if (LODWORD(buf[0]) == 66)
      {
        if (!*(v8 + 168))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 786, 72, 0, "no entry in thread", v66);
          goto LABEL_110;
        }

        goto LABEL_76;
      }

      if (LODWORD(buf[0]) != 68)
      {
        goto LABEL_83;
      }

      v19 = *(v8 + 168);
      if (v19)
      {
        v20 = *(v19 + 2192);
        if (v20 == -1)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 847, 72, 0, "DAT size not received yet", v66);
          goto LABEL_110;
        }

        if (*(v19 + 2288))
        {
          goto LABEL_34;
        }

        if ((*(v19 + 2056) & 4) != 0)
        {
          v43 = 0;
          v44 = 0xFFFFFFFFLL;
          if (v20 && (*(v19 + 2068) & 0x20) != 0)
          {
            if (*(v19 + 2128))
            {
              v44 = *(v19 + 2136);
            }

            else
            {
              v44 = 0;
            }

            if ((*(v19 + 2128) & 0x10) != 0)
            {
              v43 = *(v19 + 2156);
              v58 = *(v19 + 2152);
              if (v58)
              {
                if (v20 <= v58)
                {
                  v43 = v43 & 0xFFFFFFFC;
                  v44 = 10;
                }

                else
                {
                  v43 |= 3uLL;
                }
              }
            }

            else
            {
              v43 = 0;
            }
          }
        }

        else
        {
          v43 = 0;
          v44 = 0xFFFFFFFFLL;
        }

        if ((*(v19 + 2128) & 8) != 0 && (*(v9 + 1030) & 2) != 0)
        {
          v45 = *(v19 + 2132);
        }

        else
        {
          v45 = -1;
        }

        if ((concatExtractPath(v73, 0x800uLL, v9, *(v8 + 168)) & 0x80000000) != 0)
        {
          v57 = 885;
        }

        else
        {
          if (*(v9 + 1056))
          {
            removeFile(v73);
          }

          __strlcpy_chk();
          v53 = strrchr(__s, 47);
          if (v53)
          {
            *v53 = 0;
            v54 = v53 + 1;
            if (v67 < 0)
            {
              goto LABEL_150;
            }

            if (!strcmp(__s, __s2))
            {
              v55 = v67;
            }

            else
            {
              close(v67);
LABEL_150:
              __strlcpy_chk();
              v55 = open(__s2, 0);
              if (v55 < 0)
              {
                v67 = v55;
                v56 = *(v19 + 2288);
LABEL_171:
                if (!v56)
                {
                  v62 = aaArchiveFileOutputStreamOpenAt(-1, v73, *(v19 + 2192), v44, v43, v45, *(v9 + 1048));
                  *(v19 + 2288) = v62;
                  if (!v62)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 904, 72, 0, "opening output file: %s");
                    goto LABEL_110;
                  }
                }

                while (1)
                {
LABEL_34:
                  if (!*(buf + 4))
                  {
                    v12 = 1;
                    goto LABEL_4;
                  }

                  v21 = *(buf + 4) >= 0x40000 ? 0x40000 : *(buf + 4);
                  v22 = AAByteStreamRead(*(v8 + 40), v11, v21);
                  if (v22 < 0)
                  {
                    break;
                  }

                  v23 = v22;
                  *(buf + 4) -= v22;
                  v24 = *(v19 + 2288);
                  if (*(v24 + 24))
                  {
                    v25 = 0;
                    if (v22)
                    {
                      v26 = v11;
                      v27 = v22;
                      while (1)
                      {
                        v28 = (*(v24 + 24))(*v24, v26, v27);
                        if (v28 < 1)
                        {
                          break;
                        }

                        v26 += v28;
                        v25 += v28;
                        v27 -= v28;
                        if (!v27)
                        {
                          goto LABEL_47;
                        }
                      }

                      v25 = v28;
                    }
                  }

                  else
                  {
                    v25 = -1;
                  }

LABEL_47:
                  if (v25 != v23)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 915, 72, 0, "write failed %zd");
                    goto LABEL_110;
                  }
                }

                v42 = 912;
LABEL_109:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v42, 72, 0, "reading payload");
                goto LABEL_110;
              }
            }

            v67 = v55;
            v56 = aaArchiveFileOutputStreamOpenAt(v55, v54, *(v19 + 2192), v44, v43, v45, *(v9 + 1048));
            *(v19 + 2288) = v56;
            goto LABEL_171;
          }

          v57 = 890;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v57, 72, 0, "invalid path: %s");
        goto LABEL_110;
      }

      v18 = 0;
      v12 = 1;
    }

    else
    {
      if ((LODWORD(buf[0]) - 88) < 2)
      {
        goto LABEL_50;
      }

      if (LODWORD(buf[0]) == 69)
      {
        v34 = *(v8 + 168);
        if (!v34)
        {
          v18 = 0;
          v12 = 0;
          goto LABEL_112;
        }

        v35 = *(v34 + 2048);
        if (v35 == 70)
        {
          v36 = *(v34 + 2288);
          if (v36)
          {
            goto LABEL_65;
          }

          if (*(v34 + 2192))
          {
LABEL_91:
            v35 = *(v34 + 2048);
          }

          else
          {
            if ((*(v34 + 2128) & 8) != 0 && (*(v9 + 1030) & 2) != 0)
            {
              v52 = *(v34 + 2132);
            }

            else
            {
              v52 = -1;
            }

            if ((concatExtractPath(v73, 0x800uLL, v9, *(v8 + 168)) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 808, 72, 0, "invalid path: %s");
              goto LABEL_131;
            }

            if (*(v9 + 1056))
            {
              removeFile(v73);
            }

            v36 = aaArchiveFileOutputStreamOpenAt(-1, v73, *(v34 + 2192), 0xFFFFFFFFLL, 0, v52, *(v9 + 1048));
            *(v34 + 2288) = v36;
            if (!v36)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 811, 72, 0, "opening output file: %s");
              goto LABEL_131;
            }

            v35 = *(v34 + 2048);
            if (v35 == 70)
            {
LABEL_65:
              *(v34 + 2296) = aaArchiveFileOutputStreamCloseAndReturnFD(v36);
              *(v34 + 2288) = 0;
              v37 = applyEntryAttributes(v9, v34);
              v38 = *(v34 + 2296);
              if ((v38 & 0x80000000) == 0)
              {
                close(v38);
                *(v34 + 2296) = -1;
              }

              if (v37 < 0)
              {
                v50 = 822;
                goto LABEL_124;
              }

              if (*(v34 + 2300) != 2)
              {
                *(v34 + 2300) = 2;
              }

              goto LABEL_91;
            }
          }
        }

        if (v35 == 70 || v35 == 72)
        {
LABEL_94:
          if ((retireThreadEnqueue(v9 + 1200, *(v8 + 168)) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 837, 72, 0, "sending entry to retire thread", v66);
            goto LABEL_131;
          }

          v18 = 0;
          v12 = 0;
          *(v8 + 168) = 0;
          goto LABEL_112;
        }

        if ((concatExtractPath(v74, 0x800uLL, v9, v34) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 274, 72, 0, "invalid path: %s");
          goto LABEL_130;
        }

        v46 = *(v34 + 2048);
        if (v46 == 68)
        {
          memset(&v70, 0, sizeof(v70));
          if (!*(v9 + 1056) || lstat(v74, &v70))
          {
            goto LABEL_102;
          }

          if ((v70.st_mode & 0xF000) != 0x4000)
          {
            removeFile(v74);
LABEL_102:
            if (mkdir(v74, 0x1EDu))
            {
              if (lstat(v74, &v70) || (v70.st_mode & 0xF000) != 0x4000)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 305, 72, 0, "mkdir failed: %s");
LABEL_130:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 829, 72, 0, "creating fs object: %s");
                goto LABEL_131;
              }
            }

            else if ((*(v34 + 2056) & 3) != 0)
            {
              if (*(v34 + 2056))
              {
                v59 = *(v34 + 2060);
              }

              else
              {
                v59 = -1;
              }

              if ((*(v34 + 2056) & 2) != 0)
              {
                v63 = *(v34 + 2064);
              }

              else
              {
                v63 = -1;
              }

              chown(v74, v59, v63);
            }
          }
        }

        else
        {
          if (*(v9 + 1056))
          {
            removeFile(v74);
            v46 = *(v34 + 2048);
          }

          switch(v46)
          {
            case 'H':
              if (link((v34 + 1024), v74))
              {
                v61 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 320, 72, v61, "link %s");
                goto LABEL_130;
              }

              break;
            case 'P':
              if (mkfifo(v74, 0x1A4u))
              {
                v60 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 325, 72, v60, "mkfifo %s");
                goto LABEL_130;
              }

              break;
            case 'L':
              if (symlink((v34 + 1024), v74))
              {
                v51 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 315, 72, v51, "symlink %s");
                goto LABEL_130;
              }

              break;
            default:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 330, 72, 0, "not implemented yet");
              goto LABEL_130;
          }
        }

        if (*(v34 + 2300) != 2)
        {
          *(v34 + 2300) = 2;
        }

        if (*(v34 + 2048) != 68 && (applyEntryAttributes(v9, v34) & 0x80000000) != 0)
        {
          v50 = 833;
LABEL_124:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v50, 72, 0, "applyEntryAttributes failed: %s");
LABEL_131:
          v12 = 0;
          v18 = 1;
          goto LABEL_112;
        }

        goto LABEL_94;
      }

      if (LODWORD(buf[0]) != 70)
      {
        goto LABEL_83;
      }

      if ((extractThreadFailEntry(v8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 792, 72, 0, "retire failed entry", v66);
        goto LABEL_131;
      }

      v18 = 0;
      v12 = 0;
    }

LABEL_112:
    v47 = *(buf + 4);
    if (*(buf + 4))
    {
      while (1)
      {
        v48 = v47 >= 0x40000 ? 0x40000 : v47;
        v49 = AAByteStreamRead(*(v8 + 40), v11, v48);
        if (v49 < 0)
        {
          break;
        }

        v47 = *(buf + 4) - v49;
        *(buf + 4) -= v49;
        if (!*(buf + 4))
        {
          goto LABEL_118;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 953, 72, 0, "reading payload");
LABEL_121:
      if ((extractThreadFailEntry(v8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 959, 72, 0, "retire failed entry");
      }
    }

    else
    {
LABEL_118:
      if (v18)
      {
        goto LABEL_121;
      }
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 775, 72, 0, "reading thread command, %zd", v17);
LABEL_198:
  free(v11);
  if ((v67 & 0x80000000) == 0)
  {
    close(v67);
  }

  return v8;
}

uint64_t extractStreamClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v83 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v74 = *(result + 1024);
  if (atomic_load((result + 1600)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1486, 72, 0, "stream cancelled");
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  if (*(v9 + 1632) || *(v9 + 1640))
  {
    extractStreamStateFail(v9);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1492, 72, 0, "invalid state on destroy");
    v11 = 0;
  }

  if (*(v9 + 1064))
  {
    v12 = *(v9 + 1060);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(v9 + 1064);
        if (v16)
        {
          v17 = v16 + v13;
          if (*(v17 + 8))
          {
            ++v15;
          }

          if (!v11)
          {
            v18 = *(v17 + 32);
            if (v18)
            {
              AAByteStreamCancel(v18);
              v12 = *(v9 + 1060);
            }
          }
        }

        ++v14;
        v13 += 176;
      }

      while (v14 < v12);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          if (pthread_mutex_lock((v9 + 1088)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
          }

          else
          {
            while (1)
            {
              v20 = *(v9 + 1072);
              if (v20)
              {
                break;
              }

              if (pthread_cond_wait((v9 + 1152), (v9 + 1088)))
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
                goto LABEL_25;
              }
            }

            v21 = v20 - 1;
            *(v9 + 1072) = v21;
            v22 = *(*(v9 + 1080) + 4 * v21);
            if (pthread_mutex_unlock((v9 + 1088)))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
            }

            if (v22 != -1)
            {
              v23 = *(v9 + 1064) + 176 * v22;
              if (!pthread_mutex_lock((v23 + 56)))
              {
                v24 = *(v23 + 48);
                *(v23 + 48) = v24 + 1;
                if (v24 || !pthread_cond_broadcast((v23 + 120)))
                {
                  pthread_mutex_unlock((v23 + 56));
                }
              }

              v82 = 0;
              buf = 42;
              AAByteStreamWrite(*(v23 + 16), &buf, 0xCuLL);
              joinThread(*(v23 + 8));
              AAByteStreamClose(*(v23 + 16));
              AAByteStreamClose(*(v23 + 24));
              AAByteStreamClose(*(v23 + 32));
              AAByteStreamClose(*(v23 + 40));
              if (!pthread_mutex_destroy((v23 + 56)))
              {
                pthread_cond_destroy((v23 + 120));
              }
            }
          }

LABEL_25:
          ;
        }
      }
    }

    free(*(v9 + 1064));
  }

  if (!pthread_mutex_destroy((v9 + 1088)) && !pthread_cond_destroy((v9 + 1152)))
  {
    free(*(v9 + 1080));
  }

  if (*(v9 + 1208))
  {
    retireThreadEnqueue(v9 + 1200, 0);
    joinThread(*(v9 + 1208));
    pthread_mutex_destroy((v9 + 1216));
  }

  if (*(v9 + 1632))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1541, 72, 0, "entry found in extract stream");
    entryRelease(*(v9 + 1632));
    v11 = 0;
  }

  v25 = 0;
  v26 = (v9 + 1384);
  v78 = *(v9 + 1024);
  v75 = v11;
  v76 = v9 + 1312;
  do
  {
    v27 = v76 + 80 * v25;
    if (*(v27 + 64))
    {
      v28 = 0;
      v29 = (v78 & 0x10) == 0 && v25 == 2;
      v30 = v29;
      if (v29)
      {
        v31 = (v78 >> 7) & 1;
      }

      else
      {
        v31 = 0;
      }

      v79 = v31;
      v77 = v30 ^ 1 | ((v78 & 0x80) != 0);
      while (1)
      {
        v32 = (*(v27 + 72) + 32 * v28);
        if (!v32[1])
        {
          goto LABEL_99;
        }

        v33 = v32[2];
        v34 = v26;
        if (v33 != -1 || (v33 = v32[3], v34 = (v9 + 1464), v35 = (*(v27 + 72) + 32 * v28), v33 != -1))
        {
          v35 = (*v34 + 32 * v33);
        }

        v36 = *v35;
        if (*v35)
        {
          if (*(v36 + 575) == 3)
          {
            break;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1049, 72, 0, "no valid DAT entry for cluster %d/%llu", v25, v28);
        while (1)
        {
          v45 = v32[1];
          if (!v45)
          {
            break;
          }

          v32[1] = *(v45 + 8 * v25 + 2336);
          if (*(v45 + 2300) != -1)
          {
            *(v45 + 2300) = -1;
            v46 = *(v9 + 1040);
            if (v46)
            {
              v46(*(v9 + 1032), 22, v45, v45 + 2272);
            }
          }

          entryRelease(v45);
        }

LABEL_99:
        if (++v28 >= *(v27 + 64))
        {
          goto LABEL_107;
        }
      }

      if ((concatExtractPath(&buf, 0x800uLL, v9, *v35) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1071, 72, 0, "invalid DAT path");
      }

      while (1)
      {
        v44 = v32[1];
        if (!v44)
        {
          v26 = (v9 + 1384);
          goto LABEL_99;
        }

        v32[1] = *(v44 + 8 * v25 + 2336);
        if (v44 != v36)
        {
          break;
        }

LABEL_96:
        entryRelease(v44);
      }

      Path = concatExtractPath(v80, 0x800uLL, v9, v44);
      if (Path < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1082, 72, 0, "invalid path: %s", v44);
      }

      unlink(v80);
      if (v25)
      {
        if (v25 == 1)
        {
LABEL_69:
          if ((clonefile(&buf, v80, 0) & 0x80000000) == 0)
          {
            goto LABEL_79;
          }

          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1116, 72, "failed to create clone: %s", v44);
LABEL_78:
          if ((copyFileWithAttributes(&buf, v80, 0, v78 & 1, 0) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1123, 72, 0, "create copy: %s", v44);
            v39 = 0;
            goto LABEL_85;
          }

LABEL_79:
          v38 = 0;
          if ((Path & 0x80000000) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_74;
        }

        if (!v79)
        {
          if (v77)
          {
            goto LABEL_78;
          }

          goto LABEL_69;
        }
      }

      if (link(&buf, v80) < 0)
      {
        v40 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1108, 72, v40, "failed to create hard link: %s");
        goto LABEL_89;
      }

      v38 = 1;
      if ((Path & 0x80000000) == 0)
      {
LABEL_80:
        if (*(v44 + 2300) != 2)
        {
          *(v44 + 2300) = 2;
        }

        v39 = 1;
        if (v38)
        {
LABEL_86:
          if (v39)
          {
            v41 = 3;
LABEL_90:
            if (*(v44 + 2300) != v41)
            {
              *(v44 + 2300) = v41;
              v42 = *(v9 + 1040);
              if (v42)
              {
                if (v41 == -1)
                {
                  v43 = 22;
                }

                else
                {
                  v43 = 21;
                }

                v42(*(v9 + 1032), v43, v44, v44 + 2272);
              }
            }

            goto LABEL_96;
          }

LABEL_89:
          v41 = -1;
          goto LABEL_90;
        }

LABEL_85:
        if ((applyEntryAttributes(v9, v44) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1129, 72, 0, "setting entry attributes: %s");
          goto LABEL_89;
        }

        goto LABEL_86;
      }

LABEL_74:
      v39 = 0;
      if (v38)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

LABEL_107:
    ++v25;
  }

  while (v25 != 3);
  if (!*(v9 + 1560))
  {
    goto LABEL_129;
  }

  v47 = 0;
  v48 = 1;
  while (2)
  {
    v49 = *(*(v9 + 1568) + 8 * v47);
    if ((concatExtractPath(&buf, 0x800uLL, v9, v49) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", 1007, 72, 0, "invalid 'H' PAT", v72, v73);
LABEL_118:
      v51 = 0;
      v52 = -1;
      goto LABEL_119;
    }

    if ((concatExtractPath(v80, 0x800uLL, v9, (v49 + 1024)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", 1008, 72, 0, "invalid 'H' LNK", v72, v73);
      goto LABEL_118;
    }

    if (*(v9 + 1056))
    {
      removeFile(&buf);
    }

    if (link(v80, &buf))
    {
      v50 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", 1010, 72, v50, "link %s ->%s");
      goto LABEL_118;
    }

    v51 = 1;
    v52 = 3;
LABEL_119:
    if (*(v49 + 2300) != v52)
    {
      *(v49 + 2300) = v52;
      v53 = *(v9 + 1040);
      if (v53)
      {
        if (v52 == -1)
        {
          v54 = 22;
        }

        else
        {
          v54 = 21;
        }

        v53(*(v9 + 1032), v54, v49, v49 + 2272);
      }
    }

    entryRelease(v49);
    *(*(v9 + 1568) + 8 * v47) = 0;
    v48 &= v51;
    if (++v47 < *(v9 + 1560))
    {
      continue;
    }

    break;
  }

  *(v9 + 1560) = 0;
  if (!v48)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1550, 72, 0, "process hlinks");
    v75 = 0;
  }

LABEL_129:
  v55 = *(v9 + 1584);
  if (v55)
  {
    v56 = v55 - 1;
    v57 = 1;
    while (1)
    {
      v58 = *(*(v9 + 1592) + 8 * v56);
      if ((concatExtractPath(&buf, 0x800uLL, v9, v58) & 0x80000000) != 0)
      {
        break;
      }

      if ((applyEntryAttributes(v9, v58) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessDirs", 984, 72, 0, "applyEntryAttributes failed");
        goto LABEL_136;
      }

      v59 = 1;
LABEL_137:
      entryRelease(v58);
      *(*(v9 + 1592) + 8 * v56) = 0;
      v57 &= v59;
      if (--v56 == -1)
      {
        *(v9 + 1584) = 0;
        v60 = v75;
        if (!v57)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1553, 72, 0, "process dirs");
          v60 = 0;
        }

        goto LABEL_141;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessDirs", 983, 72, 0, "invalid 'D' PAT");
LABEL_136:
    v59 = 0;
    goto LABEL_137;
  }

  v60 = v75;
LABEL_141:
  v61 = atomic_load((v9 + 1604));
  v62 = MEMORY[0x29EDCA610];
  if (v61)
  {
    v63 = atomic_load((v9 + 1604));
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1556, 72, 0, "%u entries failed to extract", v63);
    v60 = 0;
  }

  else if (v60 && v74 >> 62)
  {
    v64 = getRealTime() - *(v9 + 1656);
    v60 = 1;
    fwrite("Extract archive\n", 0x10uLL, 1uLL, *v62);
    fprintf(*v62, "%12u worker threads\n", *(v9 + 1060));
    fprintf(*v62, "%12u directories\n", *(v9 + 1672));
    fprintf(*v62, "%12u regular files\n", *(v9 + 1668));
    fprintf(*v62, "%12u symbolic links\n", *(v9 + 1676));
    fprintf(*v62, "%12u entries\n", *(v9 + 1664));
    fprintf(*v62, "%12.2f time (s)\n", v64);
  }

  for (j = 0; j != 3; ++j)
  {
    v66 = v76 + 80 * j;
    if (*(v66 + 64))
    {
      v67 = 0;
      do
      {
        v68 = *(v66 + 72);
        v69 = *(v68 + 32 * v67 + 8);
        if (v69)
        {
          do
          {
            fprintf(*v62, "pending %s\n", v69);
            v69 = *&v69[8 * j + 2336];
          }

          while (v69);
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterFree", 485, 72, 0, "cluster has pending entries %d/%llu", j, v67);
          goto LABEL_154;
        }

        while (1)
        {
          v70 = (v68 + 32 * v67);
          v71 = v70[1];
          if (!v71)
          {
            break;
          }

          v70[1] = *(v71 + 8 * v67 + 2336);
          entryRelease(v71);
LABEL_154:
          v68 = *(v66 + 72);
        }

        entryRelease(*v70);
        ++v67;
      }

      while (v67 < *(v66 + 64));
    }

    pthread_mutex_destroy(v66);
    free(*(v66 + 72));
  }

  free(*(v9 + 1568));
  free(*(v9 + 1624));
  memset_s((v9 + 1616), 0x10uLL, 0, 0x10uLL);
  free(*(v9 + 1304));
  free(*(v9 + 1592));
  free(v9);
  return (v60 - 1);
}

uint64_t extractStreamWriteHeader(uint64_t a1, AAHeader header)
{
  v84 = *MEMORY[0x29EDCA608];
  size = 0;
  value = -1;
  offset = 0;
  v3 = *(a1 + 1024);
  *(a1 + 1608) = 0;
  if (*(a1 + 1632) || *(a1 + 1640))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1245, 72, 0, "invalid extract state");
LABEL_4:
    extractStreamStateFail(a1);
    return 0xFFFFFFFFLL;
  }

  v7.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v7);
  if ((KeyIndex & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, KeyIndex, &value) >= 2)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1249, 72, "AA entry missing TYP field");
    goto LABEL_23;
  }

  if (value - 66 > 0x11 || ((1 << (value - 66)) & 0x24457) == 0)
  {
    result = 0;
    *(a1 + 1608) = 1;
    return result;
  }

  length[0] = 0;
  v10.ikey = 5521744;
  v11 = AAHeaderGetKeyIndex(header, v10);
  if ((v11 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v11, 0x400uLL, __s, length) >= 2)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1274, 72, "YAA entry missing/invalid PAT field");
    goto LABEL_23;
  }

  v12 = *(a1 + 1040);
  if (v12)
  {
    v13 = v12(*(a1 + 1032), 20, __s, header);
    if (v13 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1284, 72, 0, "user cancelled");
      goto LABEL_4;
    }

    if (!v13)
    {
      v14 = (*(a1 + 1040))(*(a1 + 1032), 27, __s, length);
      if (v14 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1289, 72, 0, "user cancelled");
        goto LABEL_4;
      }

      if (v14)
      {
        __strlcpy_chk();
      }

      goto LABEL_19;
    }

LABEL_23:
    result = 0;
    *(a1 + 1608) = 1;
    return result;
  }

LABEL_19:
  v15 = value;
  if (strlen(__s) >= 0x400)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryCreate", 198, 72, 0, "path too long");
LABEL_32:
    *(a1 + 1632) = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1295, 72, 0, "entry creation");
    goto LABEL_4;
  }

  v16 = malloc(0x938uLL);
  if (!v16)
  {
    v18 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryCreate", 200, 72, v18, "malloc");
    goto LABEL_32;
  }

  v17 = v16;
  memset_s(v16, 0x938uLL, 0, 0x938uLL);
  __memcpy_chk();
  *(v17 + 256) = v15;
  *(v17 + 574) = -1;
  *(v17 + 289) = -1;
  *(v17 + 290) = -1;
  *(v17 + 291) = -1;
  *(v17 + 273) = -1;
  *(v17 + 274) = -1;
  atomic_store(1u, v17 + 576);
  *(a1 + 1632) = v17;
  ++*(a1 + 1664);
  switch(value)
  {
    case 'L':
      ++*(a1 + 1676);
      break;
    case 'F':
      ++*(a1 + 1668);
      break;
    case 'D':
      ++*(a1 + 1672);
      break;
  }

  if ((aaHeaderBlobArrayInitWithHeader(a1 + 1616, header) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1307, 72, 0, "Eerror getting blobs from header");
    goto LABEL_4;
  }

  if ((aaEntryAttributesInitWithHeader(v17 + 2056, v17 + 2128, 0, header) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1310, 72, 0, "getting attributes from header");
    goto LABEL_4;
  }

  v19 = *(a1 + 1040);
  if (v19)
  {
    if ((v19(*(a1 + 1032), 23, v17, v17 + 2056) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1314, 72, 0, "message callback cancelled operations");
      goto LABEL_4;
    }

    v20 = *(a1 + 1040);
    if (v20 && (*(a1 + 1030) & 0x10) != 0 && (v20(*(a1 + 1032), 26, v17, v17 + 2128) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1320, 72, 0, "message callback cancelled operations");
      goto LABEL_4;
    }
  }

  if ((v17[2056] & 4) != 0 && (v17[2068] & 0x20) != 0 && (v17[2128] & 1) != 0 && *(v17 + 534) == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1325, 72, 0, "disable AFSC by clearing UF_COMPRESSED");
    goto LABEL_4;
  }

  v21.ikey = 4997953;
  v22 = AAHeaderGetKeyIndex(header, v21);
  if ((v22 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v22, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_167:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1331, 72, 0, "ACL blob allocation");
      goto LABEL_4;
    }

    v23 = *(v17 + 279);
    if (v23 < size)
    {
      v24 = v3;
      do
      {
        while (!v23)
        {
          v23 = 0x4000;
          if (size <= 0x4000)
          {
            v26 = (v17 + 2240);
            v23 = 0x4000;
            goto LABEL_65;
          }
        }

        v25 = v23 >> 1;
        if ((v23 & (v23 >> 1)) != 0)
        {
          v25 = v23 & (v23 >> 1);
        }

        v23 += v25;
      }

      while (v23 < size);
      v26 = (v17 + 2240);
      if (v23 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_166;
      }

LABEL_65:
      v27 = *v26;
      v28 = realloc(*v26, v23);
      if (v28)
      {
        *(v17 + 280) = v28;
        *(v17 + 279) = v23;
        LOBYTE(v3) = v24;
        goto LABEL_67;
      }

      free(v27);
LABEL_166:
      *v26 = 0;
      *(v17 + 278) = 0;
      *(v17 + 279) = 0;
      goto LABEL_167;
    }
  }

LABEL_67:
  v29.ikey = 5521752;
  v30 = AAHeaderGetKeyIndex(header, v29);
  if ((v30 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v30, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_170:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1335, 72, 0, "XAT blob allocation");
      goto LABEL_4;
    }

    v31 = *(v17 + 276);
    if (v31 < size)
    {
      v32 = v3;
      do
      {
        while (!v31)
        {
          v31 = 0x4000;
          if (size <= 0x4000)
          {
            v34 = (v17 + 2216);
            v31 = 0x4000;
            goto LABEL_81;
          }
        }

        v33 = v31 >> 1;
        if ((v31 & (v31 >> 1)) != 0)
        {
          v33 = v31 & (v31 >> 1);
        }

        v31 += v33;
      }

      while (v31 < size);
      v34 = (v17 + 2216);
      if (v31 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_169;
      }

LABEL_81:
      v35 = *v34;
      v36 = realloc(*v34, v31);
      if (v36)
      {
        *(v17 + 277) = v36;
        *(v17 + 276) = v31;
        LOBYTE(v3) = v32;
        goto LABEL_83;
      }

      free(v35);
LABEL_169:
      *v34 = 0;
      *(v17 + 275) = 0;
      *(v17 + 276) = 0;
      goto LABEL_170;
    }
  }

LABEL_83:
  v37.ikey = 4408665;
  v38 = AAHeaderGetKeyIndex(header, v37);
  if ((v38 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v38, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_173:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1339, 72, 0, "YEC blob allocation");
      goto LABEL_4;
    }

    v39 = *(v17 + 282);
    if (v39 < size)
    {
      v40 = v3;
      do
      {
        while (!v39)
        {
          v39 = 0x4000;
          if (size <= 0x4000)
          {
            v42 = (v17 + 2264);
            v39 = 0x4000;
            goto LABEL_98;
          }
        }

        v41 = v39 >> 1;
        if ((v39 & (v39 >> 1)) != 0)
        {
          v41 = v39 & (v39 >> 1);
        }

        v39 += v41;
      }

      while (v39 < size);
      v42 = (v17 + 2264);
      if (v39 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_172;
      }

LABEL_98:
      v43 = *v42;
      v44 = realloc(*v42, v39);
      if (v44)
      {
        *(v17 + 283) = v44;
        *(v17 + 282) = v39;
        LOBYTE(v3) = v40;
        goto LABEL_100;
      }

      free(v43);
LABEL_172:
      *v42 = 0;
      *(v17 + 281) = 0;
      *(v17 + 282) = 0;
      goto LABEL_173;
    }
  }

LABEL_100:
  v78 = 0;
  *(v17 + 284) = -1;
  *(v17 + 285) = -1;
  v45.ikey = 5784649;
  v46 = AAHeaderGetKeyIndex(header, v45);
  if ((v46 & 0x80000000) == 0)
  {
    FieldUInt = AAHeaderGetFieldUInt(header, v46, &v78);
    v48 = FieldUInt <= 1 ? 1 : FieldUInt;
    if (v48 >= 1)
    {
      *(v17 + 284) = v78;
    }
  }

  v49.ikey = 5915721;
  v50 = AAHeaderGetKeyIndex(header, v49);
  if ((v50 & 0x80000000) == 0)
  {
    v51 = AAHeaderGetFieldUInt(header, v50, &v78);
    v52 = v51 <= 1 ? 1 : v51;
    if (v52 >= 1)
    {
      *(v17 + 285) = v78;
    }
  }

  if (value == 70)
  {
    *(v17 + 274) = -1;
    v53.ikey = 5521732;
    v54 = AAHeaderGetKeyIndex(header, v53);
    if ((v54 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v54, &size, &offset) <= 1)
    {
      *(v17 + 274) = size;
    }

    v55 = 0;
    v56 = 0;
    v57 = v3 & 0x10;
    v58 = 0;
    do
    {
      if (v55 == 2 && v57)
      {
        break;
      }

      v59.ikey = 4410451;
      if (v55 != 2)
      {
        v59.ikey = 4144959;
      }

      if (v55 == 1)
      {
        v59.ikey = 4410435;
      }

      if (v55)
      {
        v60 = v59;
      }

      else
      {
        v60.ikey = 4410440;
      }

      v77 = -1;
      v61 = AAHeaderGetKeyIndex(header, v60);
      if ((v61 & 0x80000000) == 0 && AAHeaderGetFieldUInt(header, v61, &v77) <= 1)
      {
        v62 = v77;
        *&v17[8 * v55 + 2312] = v77;
        v76 = 0;
        if (*(v17 + 274) == -1)
        {
          v63 = 0;
        }

        else
        {
          v63 = v17;
        }

        updated = clusterEntryUpdateDAT(a1, v55, v62, v63, &v76);
        if (updated < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1371, 72, 0, "cluster entry query");
          goto LABEL_4;
        }

        if (updated)
        {
          v58 = 1;
        }

        if (v76)
        {
          v65 = updated == 0;
        }

        else
        {
          v65 = 0;
        }

        if (v65)
        {
          v56 = 1;
        }
      }

      ++v55;
    }

    while (v55 != 3);
    if (!v58 && v56 && *(v17 + 274) != -1)
    {
      *(v17 + 274) = -1;
    }
  }

  else if ((value & 0xFFFFFFFFFFFFFFFBLL) == 0x48)
  {
    v77 = 0;
    v66.ikey = 4935244;
    v67 = AAHeaderGetKeyIndex(header, v66);
    if ((v67 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v67, 0x400uLL, v17 + 1024, &v77) > 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1389, 72, 0, "YAA link entry has no LNK field: %s");
      goto LABEL_4;
    }
  }

  else if ((value & 0xFFFFFFFFFFFFFFFELL) == 0x42)
  {
    v68.ikey = 5653828;
    v69 = AAHeaderGetKeyIndex(header, v68);
    if ((v69 & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, v69, v17 + 273) >= 2)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1394, 72, 0, "YAA device entry has no DEV field: %s");
      goto LABEL_4;
    }
  }

  *(a1 + 1648) = 0;
  v70 = *(a1 + 1616);
  if (v70 && (v71 = *(a1 + 1624), !*(v71 + 8)))
  {
    v73 = (v71 + 32);
    v74 = 1;
    do
    {
      v72 = v74;
      if (v70 == v74)
      {
        break;
      }

      v75 = *v73;
      v73 += 3;
      ++v74;
    }

    while (!v75);
    *(a1 + 1648) = v72;
  }

  else
  {
    v72 = 0;
  }

  if (v72 >= v70 && (extractStreamEntryEnd(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1404, 72, 0, "end entry");
    goto LABEL_4;
  }

  return 0;
}

uint64_t extractStreamWriteBlob(uint64_t a1, int a2, void *__src, rsize_t __smax)
{
  if (atomic_load((a1 + 1600)))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (__smax && !*(a1 + 1608))
  {
    v8 = *(a1 + 1632);
    v9 = *(a1 + 1640);
    if (*(a1 + 1632) == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1423, 72, 0, "no active entry or active thread");
LABEL_8:
      extractStreamStateFail(a1);
      return 0xFFFFFFFFLL;
    }

    v10 = *(a1 + 1648);
    if (v10 >= *(a1 + 1616))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1424, 72, 0, "invalid blob reference");
      return 0xFFFFFFFFLL;
    }

    v11 = *(a1 + 1624) + 24 * v10;
    if (((*v11 ^ a2) & 0xFFFFFF) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1428, 72, 0, "inconsistent blob key");
      return 0xFFFFFFFFLL;
    }

    if (*(v11 + 8) < __smax)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1429, 72, 0, "too many blob bytes received");
      return 0xFFFFFFFFLL;
    }

    v13 = *v11 & 0xFFFFFF;
    if (v13 <= 0x544143)
    {
      if (v13 != 4408665)
      {
        if (v13 == 4997953)
        {
          if (v8)
          {
            v14 = v8[278];
            v15 = __CFADD__(v14, __smax);
            v16 = v14 + __smax;
            if (v15 || (v16 & 0x8000000000000000) != 0)
            {
              goto LABEL_110;
            }

            v17 = v8 + 278;
            v18 = v8[279];
            if (v18 < v16)
            {
              do
              {
                while (!v18)
                {
                  v18 = 0x4000;
                  if (v16 <= 0x4000)
                  {
                    v20 = (v8 + 280);
                    v18 = 0x4000;
                    goto LABEL_67;
                  }
                }

                v19 = v18 >> 1;
                if ((v18 & (v18 >> 1)) != 0)
                {
                  v19 = v18 & (v18 >> 1);
                }

                v18 += v19;
              }

              while (v18 < v16);
              v20 = (v8 + 280);
              if (v18 >= 0x2000000001)
              {
                v52 = (v8 + 280);
                *__error() = 12;
                goto LABEL_109;
              }

LABEL_67:
              v51 = v18;
              v52 = v20;
              v33 = *v20;
              v34 = realloc(*v20, v18);
              if (v34)
              {
                v8[280] = v34;
                v8[279] = v51;
                goto LABEL_69;
              }

              free(v33);
LABEL_109:
              *v52 = 0;
              *v17 = 0;
              v8[279] = 0;
              goto LABEL_110;
            }

LABEL_69:
            v35 = v8[280];
            if (__src)
            {
              memcpy((v35 + *v17), __src, __smax);
            }

            else if (v35)
            {
              memset_s((v35 + *v17), __smax, 0, __smax);
            }

            *v17 += __smax;
            if ((__smax & 0x8000000000000000) != 0)
            {
LABEL_110:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1438, 72, 0, "too many blob bytes received", v51);
              goto LABEL_8;
            }
          }

          if (v9 && (extractThreadSendCommand(v9, 65, __smax, __src) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1439, 72, 0, "sending blob", v51);
            goto LABEL_8;
          }
        }

LABEL_96:
        v42 = *(v11 + 8) - __smax;
        *(v11 + 8) = v42;
        if (v42)
        {
          return 0;
        }

        v43 = *(a1 + 1648);
        v44 = (v43 + 1);
        *(a1 + 1648) = v44;
        v45 = *(a1 + 1616);
        if (v44 < v45)
        {
          v46 = *(a1 + 1624);
          if (!*(v46 + 24 * v44 + 8))
          {
            v47 = (v46 + 24 * v44 + 32);
            v48 = ~v44 + v45;
            v49 = v43 + 2;
            do
            {
              LODWORD(v44) = v49;
              if (!v48)
              {
                break;
              }

              v50 = *v47;
              v47 += 3;
              --v48;
              ++v49;
            }

            while (!v50);
            *(a1 + 1648) = v44;
          }
        }

        if (v44 < v45 || (extractStreamEntryEnd(a1) & 0x80000000) == 0)
        {
          return 0;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1472, 72, 0, "end entry failed", v51);
        return 0xFFFFFFFFLL;
      }

      if (!v8)
      {
        goto LABEL_95;
      }

      v27 = v8[281];
      v15 = __CFADD__(v27, __smax);
      v28 = v27 + __smax;
      if (!v15 && (v28 & 0x8000000000000000) == 0)
      {
        v29 = v8 + 281;
        v30 = v8[282];
        if (v30 < v28)
        {
          do
          {
            while (!v30)
            {
              v30 = 0x4000;
              if (v28 <= 0x4000)
              {
                v32 = (v8 + 283);
                v30 = 0x4000;
                goto LABEL_75;
              }
            }

            v31 = v30 >> 1;
            if ((v30 & (v30 >> 1)) != 0)
            {
              v31 = v30 & (v30 >> 1);
            }

            v30 += v31;
          }

          while (v30 < v28);
          v32 = (v8 + 283);
          if (v30 >= 0x2000000001)
          {
            v54 = (v8 + 283);
            *__error() = 12;
            goto LABEL_115;
          }

LABEL_75:
          v51 = v30;
          v54 = v32;
          v39 = *v32;
          v40 = realloc(*v32, v30);
          if (v40)
          {
            v8[283] = v40;
            v8[282] = v51;
            goto LABEL_77;
          }

          free(v39);
LABEL_115:
          *v54 = 0;
          *v29 = 0;
          v8[282] = 0;
          goto LABEL_116;
        }

LABEL_77:
        v41 = v8[283];
        if (__src)
        {
          memcpy((v41 + *v29), __src, __smax);
        }

        else if (v41)
        {
          memset_s((v41 + *v29), __smax, 0, __smax);
        }

        *v29 += __smax;
        if ((__smax & 0x8000000000000000) == 0)
        {
LABEL_95:
          if (v9 && (extractThreadSendCommand(v9, 89, __smax, __src) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1444, 72, 0, "sending blob", v51);
            goto LABEL_8;
          }

          goto LABEL_96;
        }
      }

LABEL_116:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1443, 72, 0, "too many blob bytes received", v51);
      goto LABEL_8;
    }

    if (v13 == 5521732)
    {
      if (!v8 || v8[274] != -1)
      {
        if (!v9)
        {
          if ((extractStreamSendEntryToExtractThread(a1) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1453, 72, 0, "send entry to thread");
            goto LABEL_8;
          }

          v9 = *(a1 + 1640);
        }

        if ((extractThreadSendCommand(v9, 68, __smax, __src) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1457, 72, 0, "sending DAT blob");
          goto LABEL_8;
        }
      }

      goto LABEL_96;
    }

    if (v13 != 5521752)
    {
      goto LABEL_96;
    }

    if (!v8)
    {
      goto LABEL_89;
    }

    v21 = v8[275];
    v15 = __CFADD__(v21, __smax);
    v22 = v21 + __smax;
    if (!v15 && (v22 & 0x8000000000000000) == 0)
    {
      v23 = v8 + 275;
      v24 = v8[276];
      if (v24 < v22)
      {
        do
        {
          while (!v24)
          {
            v24 = 0x4000;
            if (v22 <= 0x4000)
            {
              v26 = (v8 + 277);
              v24 = 0x4000;
              goto LABEL_71;
            }
          }

          v25 = v24 >> 1;
          if ((v24 & (v24 >> 1)) != 0)
          {
            v25 = v24 & (v24 >> 1);
          }

          v24 += v25;
        }

        while (v24 < v22);
        v26 = (v8 + 277);
        if (v24 >= 0x2000000001)
        {
          v53 = (v8 + 277);
          *__error() = 12;
          goto LABEL_112;
        }

LABEL_71:
        v51 = v24;
        v53 = v26;
        v36 = *v26;
        v37 = realloc(*v26, v24);
        if (v37)
        {
          v8[277] = v37;
          v8[276] = v51;
          goto LABEL_73;
        }

        free(v36);
LABEL_112:
        *v53 = 0;
        *v23 = 0;
        v8[276] = 0;
        goto LABEL_113;
      }

LABEL_73:
      v38 = v8[277];
      if (__src)
      {
        memcpy((v38 + *v23), __src, __smax);
      }

      else if (v38)
      {
        memset_s((v38 + *v23), __smax, 0, __smax);
      }

      *v23 += __smax;
      if ((__smax & 0x8000000000000000) == 0)
      {
LABEL_89:
        if (v9 && (extractThreadSendCommand(v9, 88, __smax, __src) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1434, 72, 0, "sending blob", v51);
          goto LABEL_8;
        }

        goto LABEL_96;
      }
    }

LABEL_113:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1433, 72, 0, "too many blob bytes received", v51);
    goto LABEL_8;
  }

  return result;
}

void extractStreamAbort(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong((result + 1600), &v1, 1u);
  if (!v1)
  {
    extractStreamStateFail(result);
  }
}

void entryRelease(uint64_t a1)
{
  if (a1 && atomic_fetch_add((a1 + 2304), 0xFFFFFFFF) == 1)
  {
    v2 = *(a1 + 2300);
    if (v2 != -1 && v2 != 3)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 223, 72, 0, "invalid entry final state %d: %s", *(a1 + 2300), a1);
    }

    if (atomic_load((a1 + 2304)))
    {
      v5 = atomic_load((a1 + 2304));
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 224, 72, 0, "invalid entry final ref count %u: %s", v5, a1);
    }

    if ((*(a1 + 2296) & 0x80000000) == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 226, 72, 0, "invalid entry final fd");
      close(*(a1 + 2296));
    }

    AAByteStreamClose(*(a1 + 2288));
    free(*(a1 + 2216));
    memset_s((a1 + 2200), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 2240));
    memset_s((a1 + 2224), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 2264));
    memset_s((a1 + 2248), 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

uint64_t extractThreadFailEntry(uint64_t *a1)
{
  v1 = a1[21];
  if (!v1)
  {
    return 0;
  }

  a1[21] = 0;
  v3 = *a1;
  if (*(v1 + 2300) != -1)
  {
    *(v1 + 2300) = -1;
    v4 = *(v3 + 1040);
    if (v4)
    {
      v4(*(v3 + 1032), 22, v1, v1 + 2272);
      v3 = *a1;
    }
  }

  atomic_fetch_add_explicit((v3 + 1604), 1u, memory_order_relaxed);
  AAByteStreamClose(*(v1 + 2288));
  *(v1 + 2288) = 0;
  if ((retireThreadEnqueue(*a1 + 1200, v1) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadFailEntry", 736, 72, 0, "sending entry to retire thread");
  return 0xFFFFFFFFLL;
}

uint64_t applyEntryAttributes(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = AAEntryACLBlobCreate();
  v5 = AAEntryXATBlobCreate();
  v6 = *(a2 + 2224);
  if (v6 && (aaEntryACLBlobInitWithEncodedData(v4, *(a2 + 2240), v6) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 354, 72, 0, "invalid ACL blob");
LABEL_22:
    v15 = 0;
    v9 = 0;
    goto LABEL_32;
  }

  v7 = *(a2 + 2200);
  if (v7 && (aaEntryXATBlobInitWithEncodedData(v5, *(a2 + 2216), v7) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 357, 72, 0, "invalid XAT blob");
    goto LABEL_22;
  }

  v8 = *(a2 + 2248);
  if (v8)
  {
    v9 = AAEntryYECBlobCreateWithEncodedData(*(a2 + 2264), v8);
    if (!v9)
    {
      v10 = "invalid YEC blob";
      v11 = 361;
LABEL_25:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", v11, 72, 0, v10, v18, v19);
LABEL_26:
      v15 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 1040);
  if (v12)
  {
    v12(*(a1 + 1032), 24, a2, v5);
    (*(a1 + 1040))(*(a1 + 1032), 25, a2, v4);
  }

  if (v9)
  {
    *v20 = 0;
    if ((AAEntryYECBlobApplyToPath(v9, a1, a2, v20, *(a1 + 1024), *(a1 + 1060)) & 0x80000000) != 0)
    {
      v18 = *v20;
      v19 = a2;
      v10 = "corrupted file data, ECC failed 0x%08x: %s";
      v11 = 377;
      goto LABEL_25;
    }

    if (*v20)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 378, 72, "ECC applied 0x%08x: %s", *v20, a2);
    }
  }

  if ((concatExtractPath(v20, 0x800uLL, a1, a2) & 0x80000000) != 0)
  {
    v18 = a1;
    v19 = a2;
    v10 = "invalid path: %s/%s";
    v11 = 391;
    goto LABEL_25;
  }

  v13 = *(a2 + 2296);
  v14 = v13;
  if ((v13 & 0x80000000) != 0)
  {
    v14 = open(v20, 0x200000);
    if ((v14 & 0x80000000) != 0)
    {
      v17 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 400, 72, v17, "open: %s");
      goto LABEL_26;
    }
  }

  if ((aaEntryXATBlobApplyToFD(v5, v14, *(a1 + 1024)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 405, 72, 0, "applying XAT: %s", a2);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  if ((aaEntryACLBlobApplyToFD(v4, v14, *(a1 + 1024)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 406, 72, 0, "applying ACL: %s", a2);
    v15 = 0;
  }

  if ((aaEntryAttributesApplyToFD((a2 + 2056), v14, *(a1 + 1024)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 407, 72, 0, "applying ATTR: %s", a2);
    v15 = 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  close(v14);
LABEL_32:
  AAEntryXATBlobDestroy(v5);
  AAEntryACLBlobDestroy(v4);
  AAEntryYECBlobDestroy(v9);
  if (v15)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t retireThreadEnqueue(uint64_t a1, uint64_t a2)
{
  if (pthread_mutex_lock((a1 + 16)))
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadEnqueue", 597, 72, *v4, "pthread_mutex_lock");
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  v8 = v6 - v7;
  if (v6 == v7)
  {
    v6 = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  else if (v7 >= 0x40)
  {
    memmove(*(a1 + 104), (*(a1 + 104) + 8 * v7), 8 * v8);
    *(a1 + 88) = 0;
    *(a1 + 96) = v8;
    v6 = v8;
  }

  v9 = *(a1 + 80);
  if (v6 < v9)
  {
    goto LABEL_14;
  }

  v10 = 2 * v9;
  if (!v9)
  {
    v10 = 256;
  }

  *(a1 + 80) = v10;
  if ((8 * v10) < 0x2000000001)
  {
    v11 = *(a1 + 104);
    v12 = realloc(v11, 8 * v10);
    if (!v12)
    {
      free(v11);
      goto LABEL_18;
    }

    *(a1 + 104) = v12;
    v6 = *(a1 + 96);
    v9 = *(a1 + 80);
LABEL_14:
    if (v6 < v9)
    {
      v13 = *(a1 + 104);
      *(a1 + 96) = v6 + 1;
      *(v13 + 8 * v6) = a2;
    }

    v14 = 1;
    goto LABEL_19;
  }

  *__error() = 12;
LABEL_18:
  v14 = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
LABEL_19:
  if (pthread_mutex_unlock((a1 + 16)))
  {
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadEnqueue", 623, 72, *v15, "pthread_mutex_unlock");
    v14 = 0;
  }

  if (v14)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}