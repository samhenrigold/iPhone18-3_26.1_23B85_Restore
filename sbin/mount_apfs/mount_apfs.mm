uint64_t sub_100000810(char *__s2, char *a2, char *a3, size_t a4, char **a5)
{
  if (!strncmp("/dev/", __s2, 5uLL))
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  v11 = &__s2[v10];
  if (!strncmp(&__s2[v10], "disk", 4uLL))
  {
    result = snprintf(a2, a4, "%s%s", "/dev/", v11);
    if (a3)
    {
      result = snprintf(a3, a4, "%sr%s");
    }

    goto LABEL_14;
  }

  if (!strncmp(v11, "rdisk", 5uLL))
  {
    result = snprintf(a2, a4, "%s%s", "/dev/", v11 + 1);
    if (a3)
    {
      result = snprintf(a3, a4, "%s%s");
    }

LABEL_14:
    if (!a5)
    {
      return result;
    }

    a2 += 5;
    goto LABEL_16;
  }

  result = strlcpy(a2, __s2, a4);
  if (a3)
  {
    result = strlcpy(a3, __s2, a4);
  }

  if (a5)
  {
LABEL_16:
    *a5 = a2;
  }

  return result;
}

uint64_t start()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  memset(v71, 170, sizeof(v71));
  *v70 = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v69.st_blksize = v4;
  *v69.st_qspare = v4;
  v69.st_birthtimespec = v4;
  *&v69.st_size = v4;
  v69.st_mtimespec = v4;
  v69.st_ctimespec = v4;
  *&v69.st_uid = v4;
  v69.st_atimespec = v4;
  *&v69.st_dev = v4;
  memset(&__b, 170, sizeof(__b));
  memset(v75, 170, sizeof(v75));
  memset(v74, 170, sizeof(v74));
  __strlcpy_chk();
  __strlcpy_chk();
  sub_100001CD8(0, v71);
  sub_100001F7C(0, v70);
  v77 = 0u;
  memset(v78, 0, sizeof(v78));
  v79 = 0u;
  v80 = 0u;
  v81 = 0;
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  *__s1 = 0u;
  v85 = -1;
  v67 = 0;
  v68 = 0;
  err_set_exit(sub_1000016B8);
  v5 = 0;
  v62 = 0;
  v6 = 0;
  v7 = 0;
  v61 = 0;
  v8 = 0;
  v9 = 0;
  v63 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = getopt(v3, v2, ":cCg:M:o:P:rRnSs:u:E:T:");
          if (v10 <= 98)
          {
            break;
          }

          if (v10 <= 110)
          {
            switch(v10)
            {
              case 'c':
                v6 = 1;
                break;
              case 'g':
                v15 = optarg;
                __endptr[0] = 0xAAAAAAAAAAAAAAAALL;
                gr_gid = strtol(optarg, __endptr, 0);
                if (*__endptr[0])
                {
                  v17 = getgrnam(v15);
                  if (!v17)
                  {
                    HIDWORD(v85) = -1;
                    sub_10000219C();
                  }

                  gr_gid = v17->gr_gid;
                }

                HIDWORD(v85) = gr_gid;
                if (gr_gid == -1)
                {
                  sub_10000219C();
                }

                break;
              case 'n':
                v70[1] |= 4u;
                break;
            }
          }

          else if (v10 > 114)
          {
            if (v10 == 115)
            {
              v63 = optarg;
            }

            else if (v10 == 117)
            {
              v12 = optarg;
              __endptr[0] = 0xAAAAAAAAAAAAAAAALL;
              pw_uid = strtol(optarg, __endptr, 0);
              if (*__endptr[0])
              {
                v14 = getpwnam(v12);
                if (!v14)
                {
                  LODWORD(v85) = -1;
                  sub_10000216C();
                }

                pw_uid = v14->pw_uid;
              }

              LODWORD(v85) = pw_uid;
              if (pw_uid == -1)
              {
                sub_10000216C();
              }
            }
          }

          else if (v10 == 111)
          {
            if (sub_100002018(optarg, sub_100001CD8, v71, sub_100001F7C, v70))
            {
              errx(64, "unrecognized option '%s'");
            }
          }

          else if (v10 == 114)
          {
            v7 = 1;
          }
        }

        if (v10 <= 79)
        {
          break;
        }

        if (v10 > 82)
        {
          if (v10 == 83)
          {
            v70[1] |= 8u;
          }

          else if (v10 == 84)
          {
            v11 = optarg;
            v9 = 1735681910;
            if (strcasecmp(optarg, "generic"))
            {
              v9 = 1937334626;
              if (strcasecmp(v11, "brain"))
              {
                errx(64, "invalid cryptex type '%s'");
              }
            }
          }
        }

        else if (v10 == 80)
        {
          v8 = sub_1000016D0(optarg, &v68);
        }

        else if (v10 == 82)
        {
          v70[1] |= 2u;
        }
      }

      if (v10 <= 66)
      {
        break;
      }

      switch(v10)
      {
        case 'C':
          v62 = 1;
          break;
        case 'E':
          v18 = optarg;
          v5 = 4;
          if (strcasecmp(optarg, "generic"))
          {
            v5 = 5;
            if (strcasecmp(v18, "supplemental"))
            {
              v5 = 6;
              if (strcasecmp(v18, "pdi_nonce"))
              {
                v5 = 8;
                if (strcasecmp(v18, "mobile_asset"))
                {
                  v5 = 9;
                  if (strcasecmp(v18, "smac"))
                  {
                    errx(64, "invalid auth environment '%s'");
                  }
                }
              }
            }
          }

          break;
        case 'M':
          v61 = sub_1000016D0(optarg, &v67);
          break;
      }
    }

    if (v10 == -1)
    {
      break;
    }

    if (v10 == 58)
    {
      sub_10000210C();
    }

    if (v10 == 63)
    {
      sub_10000213C();
    }
  }

  if (v3 - optind != 2)
  {
    sub_1000021CC(v3 - optind);
  }

  v19 = v70[0];
  if (v62 && v6 | v70[0] & 0x10000)
  {
    sub_10000235C();
  }

  if ((v61 != 0) != (v8 != 0))
  {
    sub_100002340();
  }

  if (v8 && !v68 || v61 && !v67)
  {
    sub_100002324();
  }

  if (v5 && !v8)
  {
    sub_100002308();
  }

  if (v9 && !v8)
  {
    sub_1000022EC();
  }

  v20 = &v2[optind];
  if ((v70[0] & 0x10000) == 0)
  {
    if (v8)
    {
      *(&v83[16] + 12) = v8;
      *(&v83[17] + 4) = v68;
      *(&v83[17] + 12) = v61;
      *(&v83[18] + 4) = v67;
      HIDWORD(v83[18]) = v9;
      v84 = v5;
    }

    if (v62)
    {
      v21 = 4;
LABEL_78:
      LOWORD(v83[0]) = v21;
      sub_10000181C(*v20, v83 + 12, 0x80uLL);
      goto LABEL_79;
    }

    if (v6)
    {
      if (v7)
      {
        v21 = 7;
      }

      else
      {
        v21 = 5;
      }

      goto LABEL_78;
    }

    if (v63)
    {
      if (v8)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      LOWORD(v83[0]) = v39;
      if (fstatat(-2, *v20, &v69, 512))
      {
        sub_1000021F8(v20);
      }

      if ((v69.st_mode & 0xF000) == 0x6000)
      {
        if (!sub_100001BB8(*v20, v74, v83 + 2))
        {
          __s1[0] = v74;
        }
      }

      else
      {
        DWORD2(v83[0]) = v69.st_dev;
      }

      __strlcpy_chk();
    }

    else
    {
      if (v8)
      {
        v45 = 8;
      }

      else
      {
        v45 = 1;
      }

      LOWORD(v83[0]) = v45;
      if (!sub_100001BB8(*v20, v74, v83 + 2))
      {
        __s1[0] = v74;
      }
    }
  }

LABEL_79:
  if ((v70[0] & 0x8000000) != 0)
  {
    if (__strlcpy_chk() >= 0x400)
    {
      err(1, "realpath [2] %s", v75);
    }
  }

  else if (!realpath_DARWIN_EXTSN(v20[1], v75))
  {
    err(66, "%s");
  }

  if ((v19 & 0x10000) != 0)
  {
    if (v6)
    {
      sub_10000181C(*v20, v74, 0x400uLL);
      DWORD2(v79) = 2;
      v22 = 5;
      if (v74[0] ^ 0x7665642F | LOBYTE(v74[1]) ^ 0x2F)
      {
        v22 = 0;
      }

      v23 = IOBSDNameMatching(kIOMainPortDefault, 0, v74 + v22);
      MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v23);
      if (!MatchingService)
      {
        v29 = 2;
        goto LABEL_187;
      }

      v25 = MatchingService;
      *(v73 + 13) = 0xAAAAAAAAAAAAAAAALL;
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__endptr = v26;
      v73[0] = v26;
      if (IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
      {
        CFProperty = IORegistryEntryCreateCFProperty(v25, @"UUID", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v28 = CFProperty;
          if (CFStringGetCString(CFProperty, __endptr, 37, 0x8000100u))
          {
            v29 = uuid_parse(__endptr, v78);
            CFRelease(v28);
            IOObjectRelease(v25);
            if (!v29)
            {
              if (fsctl(v75, 0x81384A06uLL, &v77, 0))
              {
                sub_100002288();
              }

              goto LABEL_160;
            }

LABEL_187:
            errc(66, v29, "switch crypto context");
          }
        }

        v29 = 2;
      }

      else
      {
        v29 = 22;
      }

      IOObjectRelease(v25);
      goto LABEL_187;
    }
  }

  else
  {
    if (*v75 == 47 || stat(v75, &v69))
    {
      memset(&v69, 0, sizeof(v69));
    }

    if (v85 == -1)
    {
      if ((v70[0] & 0x200000) != 0)
      {
        st_uid = 99;
      }

      else
      {
        st_uid = v69.st_uid;
      }

      LODWORD(v85) = st_uid;
    }

    if (HIDWORD(v85) == -1)
    {
      if ((v70[0] & 0x200000) != 0)
      {
        st_gid = 99;
      }

      else
      {
        st_gid = v69.st_gid;
      }

      HIDWORD(v85) = st_gid;
    }
  }

  *v66 = xmmword_100002F40;
  __s1[1] = *v70;
  v32 = __s1[0];
  if (__s1[0] && (strncmp(__s1[0], "/dev/", 5uLL) ? (v33 = 0) : (v33 = 5), v34 = IOBSDNameMatching(kIOMainPortDefault, 0, &v32[v33]), (v35 = IOServiceGetMatchingService(kIOMainPortDefault, v34)) != 0))
  {
    v36 = v35;
    while (1)
    {
      parent = -1431655766;
      ParentEntry = IORegistryEntryGetParentEntry(v36, "IOService", &parent);
      IOObjectRelease(v36);
      if (ParentEntry)
      {
        goto LABEL_117;
      }

      if (IOObjectConformsTo(parent, "IOHDIXHDDriveOutKernel"))
      {
        break;
      }

      if (IOObjectConformsTo(parent, "AppleDiskImageDevice"))
      {
        properties = 0;
        if (IORegistryEntryCreateCFProperties(parent, &properties, kCFAllocatorDefault, 0))
        {
LABEL_136:
          v43 = -1;
          goto LABEL_152;
        }

        if (CFDictionaryGetValue(properties, @"sparse-backend") != kCFBooleanTrue)
        {
          goto LABEL_143;
        }

        Value = CFDictionaryGetValue(properties, @"DiskImageURL");
        if (!Value)
        {
          sub_100002220(v20);
        }

        v47 = Value;
        bzero(__endptr, 0x400uLL);
        v48 = CFURLCreateWithString(kCFAllocatorDefault, v47, 0);
        if (!v48)
        {
LABEL_143:
          v43 = -1;
          goto LABEL_150;
        }

        v49 = v48;
        if (!CFURLGetFileSystemRepresentation(v48, 0, __endptr, 1024))
        {
          sub_100002248();
        }

        CFRelease(v49);
        v43 = open(__endptr, 0, 0);
        v66[2] = v43;
        if ((v43 & 0x80000000) == 0)
        {
LABEL_150:
          v44 = properties;
          goto LABEL_151;
        }

LABEL_192:
        err(66, "cannot open backing store '%s' for '%s'");
      }

      v36 = parent;
      if (!parent)
      {
        goto LABEL_117;
      }
    }

    __endptr[0] = 0;
    if (IORegistryEntryCreateCFProperties(parent, __endptr, kCFAllocatorDefault, 0))
    {
      goto LABEL_136;
    }

    v40 = CFDictionaryGetValue(__endptr[0], @"image-type");
    if (v40 && (v41 = v40, v42 = CFGetTypeID(v40), v42 == CFStringGetTypeID()) && (CFStringCompare(v41, @"sparse disk image", 0) == kCFCompareEqualTo || CFStringCompare(v41, @"sparse bundle disk image", 0) == kCFCompareEqualTo))
    {
      v51 = CFDictionaryGetValue(__endptr[0], @"image-path");
      if (!v51 || (v52 = v51, v53 = CFGetTypeID(v51), v53 != CFDataGetTypeID()) || (SystemEncoding = CFStringGetSystemEncoding(), (v55 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v52, SystemEncoding)) == 0))
      {
        sub_100002220(v20);
      }

      v56 = v55;
      v57 = CFStringGetSystemEncoding();
      CStringPtr = CFStringGetCStringPtr(v56, v57);
      if (!CStringPtr)
      {
        v59 = CFStringGetSystemEncoding();
        CStringPtr = byte_100008210;
        CFStringGetCString(v56, byte_100008210, 4096, v59);
      }

      v60 = open(CStringPtr, 0, 0);
      v66[2] = v60;
      if (v60 < 0)
      {
        goto LABEL_192;
      }

      v43 = v60;
      CFRelease(v56);
    }

    else
    {
      v43 = -1;
    }

    v44 = __endptr[0];
LABEL_151:
    CFRelease(v44);
LABEL_152:
    IOObjectRelease(parent);
    v38 = v43 >= 0;
    if ((v19 & 0x10000) != 0)
    {
      goto LABEL_153;
    }
  }

  else
  {
LABEL_117:
    v38 = 0;
    if ((v19 & 0x10000) != 0)
    {
LABEL_153:
      __s1[0] = 0;
      goto LABEL_154;
    }
  }

  if (*v75 == 47)
  {
    goto LABEL_153;
  }

LABEL_154:
  if (mount("apfs", v75, v70[0], __s1))
  {
    sub_100002264();
  }

  if (v38)
  {
    if (fsctl(v75, 0x80106807uLL, v66, 0) && *__error() != 37)
    {
      warn("cannot propagate backing store information to %s", v75);
    }

    close(v66[2]);
  }

LABEL_160:
  if (v70[0] & 0x10001) == 0 && !statfs(v75, &__b) && (__b.f_flags)
  {
    sub_1000022A4(__s1);
  }

  return 0;
}

void sub_1000016B8(int a1)
{
  if (a1 == 64)
  {
    warnx("[-o options] [-u UID] [-g GID] [-n] [-c [-r] | [-C]] [-s snapshot] [-P <im4p file> -M <im4m file> [-T <generic | brain>] [-E <generic | supplemental | pdi_nonce | mobile_asset | smac>]] <volume | device> <directory>");
  }
}

char *sub_1000016D0(const char *a1, void *a2)
{
  v3 = open(a1, 0);
  if (v3 == -1)
  {
    err(66, "cannot open %s");
  }

  v4 = v3;
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.st_blksize = v5;
  *v13.st_qspare = v5;
  v13.st_birthtimespec = v5;
  *&v13.st_size = v5;
  v13.st_mtimespec = v5;
  v13.st_ctimespec = v5;
  *&v13.st_uid = v5;
  v13.st_atimespec = v5;
  *&v13.st_dev = v5;
  if (fstat(v3, &v13) == -1)
  {
    err(66, "cannot stat %s");
  }

  if (v13.st_size > 0x100000uLL)
  {
    errx(66, "file %s is too large");
  }

  v6 = malloc_type_malloc(v13.st_size, 0x6DA97BD8uLL);
  if (!v6)
  {
    errx(66, "failed to allocate memory for %s");
  }

  v7 = v6;
  st_size = v13.st_size;
  if (!v13.st_size)
  {
    v9 = 0;
    if (!a2)
    {
      return v7;
    }

    goto LABEL_14;
  }

  v9 = 0;
  do
  {
    if (st_size >= 0x10000)
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = st_size;
    }

    v11 = read(v4, &v7[v9], v10);
    if (!v11)
    {
      break;
    }

    if (v11 == -1)
    {
      err(66, "cannot read %s into memory");
    }

    v9 += v11;
    st_size -= v11;
  }

  while (st_size);
  if (a2)
  {
LABEL_14:
    *a2 = v9;
  }

  return v7;
}

uint64_t sub_10000181C(char *a1, char *a2, size_t a3)
{
  if (!strncasecmp(a1, "ROLE=", 5uLL))
  {
    v7 = a1 + 5;
    if (strcasecmp(v7, "SYSTEM") && strcasecmp(v7, "USER") && strcasecmp(v7, "RECOVERY") && strcasecmp(v7, "VM") && strcasecmp(v7, "PREBOOT") && strcasecmp(v7, "INSTALLER") && strcasecmp(v7, "DATA") && strcasecmp(v7, "BASEBAND") && strcasecmp(v7, "XART") && strcasecmp(v7, "INTERNAL") && strcasecmp(v7, "BACKUP") && strcasecmp(v7, "UPDATE") && strcasecmp(v7, "HARDWARE") && strcasecmp(v7, "SIDECAR") && strcasecmp(v7, "ENTERPRISE") && strcasecmp(v7, "IDIAGS") && strcasecmp(v7, "OVERPROVISION") && strcasecmp(v7, "CACHE"))
    {
      errx(64, "Unknown role: %s", v7);
    }

    memset(&__b, 170, sizeof(__b));
    if (statfs("/", &__b))
    {
      errx(66, "statfs has failed, err %i");
    }

    if (APFSVolumeRoleFind())
    {
      errx(66, "Failed to find a volume with role %s on disk %s, status: %x");
    }

    if (CFArrayGetCount(0xAAAAAAAAAAAAAAAALL) <= 0)
    {
      errx(66, "No volumes with role %s were found on disk %s");
    }

    ValueAtIndex = CFArrayGetValueAtIndex(0xAAAAAAAAAAAAAAAALL, 0);
    result = CFStringGetCString(ValueAtIndex, a2, a3, 0x8000100u);
    if (!result)
    {
      sub_100002378();
    }
  }

  else
  {

    return sub_100000810(a1, a2, 0, a3, 0);
  }

  return result;
}

BOOL sub_100001BB8(char *a1, char *a2, _DWORD *a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000181C(a1, a2, 0x400uLL);
  v5 = getmntinfo(&v19, 2);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  v7 = v19;
  f_mntfromname = v19->f_mntfromname;
  v9 = strrchr(v19->f_mntfromname, 64);
  if (v9)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = f_mntfromname;
  }

  v11 = 0;
  if (strcmp(v10, a2))
  {
    v12 = v6;
    v13 = v7[1].f_mntfromname;
    while (v12 - 1 != v11)
    {
      v14 = strrchr(v13, 64);
      if (v14)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v13;
      }

      v13 += 2168;
      ++v11;
      if (!strcmp(v15, a2))
      {
        v16 = v11 < v12;
        if (a3)
        {
          goto LABEL_16;
        }

        return v16;
      }
    }

    return 0;
  }

  v16 = 1;
  if (a3)
  {
LABEL_16:
    v17 = &v7[v11];
    if (strcmp(v17->f_fstypename, "apfs"))
    {
      sub_100002394();
    }

    *a3 = v17->f_fsid.val[0];
  }

  return v16;
}

char *sub_100001CD8(char *a1, int *a2)
{
  getmnt_silent = 1;
  if (!a1)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    a2[1] = -1;
    return 0;
  }

  v12 = *a2;
  v4 = *(a2 + 4);
  v5 = (v4 >> 6) & 8 | v4 & 5 | (v4 >> 8) & 0x10;
  v6 = v4 << 18;
  if ((v4 & 0x1000) != 0)
  {
    v7 = 32;
  }

  else
  {
    v7 = 64;
  }

  v11 = v7 & (v6 >> 31) | v5;
  if (!getmntopts())
  {
    return &unk_10000280B;
  }

  *a2 = v12;
  *(a2 + 4) = a2[2] & 0xCDFA | v11 & 1 | v11 & 4 | (((v11 & 0x30) != 0) << 12) | (((v11 & 0x60) != 0) << 13) | (((v11 >> 3) & 1) << 9);
  if ((v11 & 2) != 0)
  {
    v10 = getmntoptnum();
    a2[1] = v10;
    if (v10 == -1)
    {
      v8 = "checkpoint";
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  freemntopts();
  result = sub_100001E3C(&off_100004258, a1, v8);
  if (!result)
  {
    return 0;
  }

  return result;
}

char *sub_100001E3C(const char **a1, char *__s1, const char *a3)
{
  v4 = __s1;
  v6 = strdup(__s1);
  if (v6)
  {
    v7 = v6;
    __lasts = 0xAAAAAAAAAAAAAAAALL;
    v8 = strtok_r(v6, ",", &__lasts);
    if (v8)
    {
      while (1)
      {
        if (*v8 == 110)
        {
          v9 = 2 * (v8[1] == 111);
          v10 = v8[1] == 111 ? -2 : 0;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        v11 = &v8[v9];
        v12 = strchr(&v8[v9], 61);
        if (v12)
        {
          *v12 = 0;
        }

        v13 = *a1;
        if (!*a1)
        {
          break;
        }

        v14 = a1 + 3;
        while (strcasecmp(v13, v11))
        {
          v15 = *v14;
          v14 += 3;
          v13 = v15;
          if (!v15)
          {
            goto LABEL_19;
          }
        }

        if (a3 && !strcasecmp(v11, a3))
        {
          break;
        }

        v8 = strtok_r(0, ",", &__lasts);
        if (!v8)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      v4 += v10 + v11 - v7;
    }

    else
    {
LABEL_18:
      v4 = 0;
    }

    free(v7);
  }

  return v4;
}

char *sub_100001F7C(char *a1, void *a2)
{
  getmnt_silent = 1;
  if (!a1)
  {
    *a2 = 0;
    return 0;
  }

  v5 = *a2;
  if (getmntopts())
  {
    *a2 = v5;
    freemntopts();
    result = sub_100001E3C(&off_100008000, a1, 0);
    if (result)
    {
      return result;
    }

    return 0;
  }

  return &unk_10000280B;
}

const char *sub_100002018(const char *a1, uint64_t (*a2)(const char *, uint64_t), uint64_t a3, uint64_t (*a4)(const char *, uint64_t), uint64_t a5)
{
  v10 = strlen(a1);
  v11 = 0;
  v12 = 0;
  do
  {
    if (v11 != v10 && v11 <= v12)
    {
      v13 = a2(&a1[v11], a3);
      v11 = v10;
      if (v13)
      {
        v11 = v13 - a1;
        if (v13 - a1 < v12)
        {
          v14 = strchr(v13, 44);
          if (v14)
          {
            v11 = v14 - a1;
          }

          else
          {
            v11 = v10;
          }
        }
      }
    }

    if (v12 != v10 && v12 <= v11)
    {
      v15 = a4(&a1[v12], a5);
      v12 = v10;
      if (v15)
      {
        v12 = v15 - a1;
        if (v15 - a1 < v11)
        {
          v16 = strchr(v15, 44);
          if (v16)
          {
            v12 = v16 - a1;
          }

          else
          {
            v12 = v10;
          }
        }
      }
    }
  }

  while (v11 != v12);
  if (v11 == v10)
  {
    return 0;
  }

  else
  {
    return &a1[v11];
  }
}

void sub_1000021CC(int a1)
{
  if (a1 > 2)
  {
    errx(64, "unexpected argument");
  }

  errx(64, "missing argument");
}

void sub_100002264()
{
  __error();
  v0 = sysexit_np();
  err(v0, "volume could not be mounted");
}

void sub_1000022A4(uint64_t a1)
{
  if (*(a1 + 16) == 2)
  {
    v1 = "snapshot ";
  }

  else
  {
    v1 = &unk_10000280B;
  }

  warnx("%simplicitly mounted readonly", v1);
}