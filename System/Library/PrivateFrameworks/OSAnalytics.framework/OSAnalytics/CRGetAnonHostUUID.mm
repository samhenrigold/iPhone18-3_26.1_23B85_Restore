@interface CRGetAnonHostUUID
@end

@implementation CRGetAnonHostUUID

void ___CRGetAnonHostUUID_block_invoke()
{
  v59[2] = *MEMORY[0x1E69E9840];
  v0 = CRCopyAnonHostUUIDPath();
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x1E695E480];
    v3 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v0, kCFURLPOSIXPathStyle, 0);
    if (v3)
    {
      v4 = v3;
      v5 = CFReadStreamCreateWithFile(v2, v3);
      if (v5)
      {
        v6 = v5;
        if (CFReadStreamOpen(v5))
        {
          v7 = CFPropertyListCreateWithStream(v2, v6, 0, 0, 0, 0);
          if (v7)
          {
            TypeID = CFDictionaryGetTypeID();
            if (TypeID != CFGetTypeID(v7))
            {
              CFRelease(v7);
              v7 = 0;
            }
          }

          CFReadStreamClose(v6);
        }

        else
        {
          v7 = 0;
        }

        CFRelease(v6);
        CFRelease(v4);
        if (v7)
        {
          Value = CFDictionaryGetValue(v7, @"AnonHostUUID2");
          if (Value)
          {
            v10 = Value;
            v11 = CFGetTypeID(Value);
            if (v11 == CFStringGetTypeID())
            {
              _CRGetAnonHostUUID___uuid = CFRetain(v10);
            }
          }

          CFRelease(v7);
          goto LABEL_65;
        }
      }

      else
      {
        CFRelease(v4);
      }
    }

    if (geteuid())
    {
LABEL_65:
      CFRelease(v1);
      return;
    }

    v12 = CRCopyAnonHostUUIDPath();
    if (!v12)
    {
      v28 = 0;
LABEL_64:
      _CRGetAnonHostUUID___uuid = v28;
      goto LABEL_65;
    }

    v13 = v12;
    Mutable = CFDictionaryCreateMutable(v2, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      v28 = 0;
LABEL_63:
      CFRelease(v13);
      goto LABEL_64;
    }

    v15 = Mutable;
    __str[5] = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *(v59 + 5) = 0;
    v59[0] = 0;
    strcpy(__str, "FAIL");
    v54[0] = 0;
    v54[1] = 0;
    v16 = open("/dev/urandom", 0);
    if (v16 >= 1)
    {
      v17 = v16;
      if (read(v16, v54, 0x10uLL) == 16)
      {
        v18 = 0;
        v19 = __str;
        do
        {
          snprintf(v19, 3uLL, "%02X", *(v54 + v18++));
          v19 += 2;
        }

        while (v18 != 16);
      }

      close(v17);
    }

    HIBYTE(v50[2]) = 0;
    v50[3] = 0;
    v51 = 0;
    v52 = 0;
    *(v53 + 5) = 0;
    v53[0] = 0;
    strcpy(v50, "FAIL");
    __buf[0] = 0;
    __buf[1] = 0;
    arc4random_buf(__buf, 0x10uLL);
    v20 = 0;
    v21 = v50;
    do
    {
      snprintf(v21, 3uLL, "%02X", *(__buf + v20++));
      v21 += 2;
    }

    while (v20 != 16);
    v48 = 0;
    v47 = 0u;
    v46 = 0u;
    *buffer = 1279869254;
    v22 = CFUUIDCreate(v2);
    if (v22)
    {
      v23 = v22;
      v24 = CFUUIDCreateString(v2, v22);
      if (v24)
      {
        v25 = v24;
        CFStringGetCString(v24, buffer, 37, 0x8000100u);
        CFRelease(v25);
      }

      CFRelease(v23);
    }

    memset(v44, 0, sizeof(v44));
    v41 = xmmword_1AE5434E0;
    gethostuuid(v44, &v41);
    arc4random_addrandom(v44, 16);
    *&v40.byte0 = 0;
    *&v40.byte8 = 0;
    arc4random_buf(&v40, 0x10uLL);
    v26 = CFUUIDCreateFromUUIDBytes(v2, v40);
    if (!v26)
    {
      v28 = 0;
LABEL_62:
      CFRelease(v15);
      goto LABEL_63;
    }

    v27 = v26;
    v28 = CFUUIDCreateString(v2, v26);
    if (!v28)
    {
LABEL_61:
      CFRelease(v27);
      goto LABEL_62;
    }

    CFDictionarySetValue(v15, @"AnonHostUUID2", v28);
    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v13);
    v30 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x80211BBEuLL);
    if (v30)
    {
      v31 = v30;
      if (CFStringGetFileSystemRepresentation(v13, v30, MaximumSizeOfFileSystemRepresentation))
      {
        Data = CFPropertyListCreateData(v2, v15, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          v33 = Data;
          memset(&v43, 0, sizeof(v43));
          memset(&v42, 0, sizeof(v42));
          if (lstat(v31, &v42) < 0)
          {
            if (*__error() == 2)
            {
              v36 = umask(0);
              v35 = open(v31, 2594, 420);
              umask(v36);
              if ((v35 & 0x80000000) == 0)
              {
                fchown(v35, 0xFFFFFFFF, 0xFFFFFFFF);
                goto LABEL_52;
              }
            }
          }

          else if (v42.st_mode == 33188 && v42.st_nlink == 1)
          {
            v34 = open(v31, 546, 0);
            if ((v34 & 0x80000000) == 0)
            {
              v35 = v34;
              if (!fstat(v34, &v43) && v43.st_nlink == v42.st_nlink && v43.st_uid == v42.st_uid && v43.st_mode == v42.st_mode && v43.st_ino == v42.st_ino && v43.st_dev == v42.st_dev)
              {
                ftruncate(v35, 0);
LABEL_52:
                Length = CFDataGetLength(v33);
                BytePtr = CFDataGetBytePtr(v33);
                v39 = write(v35, BytePtr, Length);
                if (v39 != Length && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  ___CRGetAnonHostUUID_block_invoke_cold_1(v31, Length, v39);
                }

                close(v35);
                CFRelease(v33);
                free(v31);
                if (v39)
                {
                  goto LABEL_61;
                }

                goto LABEL_60;
              }

              close(v35);
            }
          }

          CFRelease(v33);
        }
      }

      free(v31);
    }

LABEL_60:
    CFRelease(v28);
    v28 = 0;
    goto LABEL_61;
  }
}

void ___CRGetAnonHostUUID_block_invoke_cold_1(uint64_t a1, int a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = getuid();
  v7 = getgid();
  v8 = geteuid();
  v9 = getegid();
  v10 = *__error();
  v11 = __error();
  v12 = strerror(*v11);
  v13 = 136317186;
  v14 = a1;
  v15 = 2048;
  v16 = a3;
  v17 = 1024;
  v18 = a2;
  v19 = 1024;
  v20 = v6;
  v21 = 1024;
  v22 = v7;
  v23 = 1024;
  v24 = v8;
  v25 = 1024;
  v26 = v9;
  v27 = 1024;
  v28 = v10;
  v29 = 2080;
  v30 = v12;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Write failed to file %s - %zd of %d bytes written - uid: %d gid: %d, euid: %d egid: %d - error %d: %s", &v13, 0x44u);
}

@end