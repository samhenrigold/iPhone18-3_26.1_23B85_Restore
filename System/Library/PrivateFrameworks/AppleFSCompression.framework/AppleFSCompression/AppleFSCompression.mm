ssize_t catFile()
{
  v0 = MEMORY[0x28223BE20]();
  v26 = *MEMORY[0x277D85DE8];
  if (v1 && (v2 = sub_24051DC54(), v2 != 93))
  {
    if (v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = open(v0, 0);
    if (v3 == -1)
    {
      v15 = __error();
      v16 = strerror(*v15);
      sub_24051EB50(@"%s:%d: open(%s): %s\n", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 137, v0, v16);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v4 = v3;
      memset(__b, 170, sizeof(__b));
      while (1)
      {
        v5 = read(v4, __b, 0x1000uLL);
        if (!v5)
        {
          break;
        }

        if (write(1, __b, v5) != v5)
        {
          v6 = __error();
          v7 = strerror(*v6);
          sub_24051EB50(@"%s:%d: write: %s\n", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 146, v7);
          v5 = 0xFFFFFFFFLL;
          break;
        }
      }

      close(v4);
    }
  }

  return v5;
}

uint64_t queryCompressionInfo(char *a1, unsigned int *a2)
{
  if (a1 && a2)
  {

    return sub_24051E7C0(a1, -1, a2, 0);
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t decompressWithCallback(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v9[0] = a8;
  v9[1] = a1;
  v9[2] = a2;
  return sub_240524720(v9, a3, a4, a5, a6, a7, a7, a8);
}

_DWORD *sub_24051DAAC(char *path, int fd)
{
  if (fd == -1)
  {
    v4 = getxattr(path, "com.apple.decmpfs", 0, 0, 0, 32);
  }

  else
  {
    v4 = fgetxattr(fd, "com.apple.decmpfs", 0, 0, 0, 32);
  }

  v12 = v4;
  if (v4 == -1)
  {
    if (*__error() != 93)
    {
      v13 = __error();
      v32 = strerror(*v13);
      sub_24051EB50(@"%s:%d: getxattr(%s): %s\n", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 43, path, v32);
    }

    return 0;
  }

  if (v4 <= 0xF)
  {
    sub_24051EB50(@"%s:%d: Error: size of %s EA is too small (%zd < %zu)\n", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 48, path, v4, 16);
    return 0;
  }

  if (v4 >= 0x100000000)
  {
    sub_24051EB50(@"%s:%d: Error: size of %s EA is too big (%zd)\n", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 52, path, v4);
    return 0;
  }

  v21 = malloc(v4 + 4);
  v22 = v21 + 1;
  if (fd == -1)
  {
    v23 = getxattr(path, "com.apple.decmpfs", v22, v12, 0, 32);
  }

  else
  {
    v23 = fgetxattr(fd, "com.apple.decmpfs", v22, v12, 0, 32);
  }

  if (v23 != v12)
  {
    sub_24051EB50(@"%s:%d: Error: size of %s EA changed\n", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 59, path);
    return 0;
  }

  *v21 = v12;
  return v21;
}

uint64_t sub_24051DC54()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v94 = *MEMORY[0x277D85DE8];
  v4 = sub_24051DAAC(v0, -1);
  if (v4)
  {
    v11 = v4;
    v87[0] = 0;
    v87[1] = v3;
    v87[2] = v4;
    sub_240523E4C(&v88, v87, v5, v6, v7, v8, v9, v10);
    if (HIDWORD(v89) != 196608 && HIDWORD(v89) != 0x20000)
    {
      if (HIDWORD(v89) == 0x10000)
      {
        goto LABEL_5;
      }

      sub_24051EB50(@"%s:%d: %s: unknown chunking scheme %llu\n", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 435, v88[1], HIDWORD(v89));
      goto LABEL_25;
    }

    v91 = 0;
    LOWORD(__b[3]) = -21846;
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __b[1] = v26;
    __b[2] = v26;
    __b[0] = v26;
    if (HIDWORD(v89) == 0x20000)
    {
      v27 = 8 * v90 + 314;
    }

    else
    {
      v27 = 4 * (v90 + 1);
    }

    v28 = *v88;
    if (*v88)
    {
      value = 0;
      v29 = (*(v28 + 16))(v28, 0, 0, 0, &value);
      v91 = v29;
      if (v29)
      {
        v25 = v29;
        sub_24051EB50(@"%s:%d: %s: readRscData: (0, 0), returned error [%d]", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 301, v88[1], v29);
LABEL_26:
        v86 = strerror(v25);
        sub_24051EB50(@"%s:%d: validate(%s): %s\n", v55, v56, v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 84, v3, v86);
LABEL_27:
        free(v11);
        return v25;
      }

      v37 = value;
      if (value == -1)
      {
LABEL_5:
        for (i = 0; ; i += v23)
        {
          value = 0;
          memset(__b, 170, sizeof(__b));
          v88 = __b;
          v89 = 4096;
          v22 = sub_240524720(v87, i, 4096, 1, &v88, &value, v20, v21);
          if (v22)
          {
            v25 = v22;
            v84 = strerror(v22);
            sub_24051EB50(@"%s:%d: decompress: %s\n", v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 96, v84, v85);
            goto LABEL_27;
          }

          v23 = value;
          if (!value)
          {
            v25 = 0;
            goto LABEL_27;
          }

          v24 = (*(v2 + 16))(v2, __b, value);
          if (v24)
          {
            break;
          }
        }

        v25 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v37 = getxattr(v88[1], "com.apple.ResourceFork", 0, 0, 0, 32);
      if (v37 == -1)
      {
        v38 = v88[1];
        v39 = __error();
        v40 = strerror(*v39);
        sub_24051EB50(@"%s:%d: %s: fgetxattr: %s\n", v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 308, v38, v40);
        v25 = *__error();
        goto LABEL_42;
      }
    }

    if (v37 < v27)
    {
      sub_24051EB50(@"%s:%d: %s: resource fork is too small (actual size: %llu < expected min size: %llu) header: (attr_size %u, compression_type %u, uncompressed_size %llu)\n", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 392, v88[1], v37, v27, *v88[2], *(v88[2] + 8), *(v88[2] + 12));
LABEL_25:
      v25 = 22;
      goto LABEL_26;
    }

    if (HIDWORD(v89) == 0x20000)
    {
      if (sub_240523F28(&v88, __b, 0x32uLL, v37 - 50, &v91, v34, v35, v36))
      {
        if (memcmp(__b, &unk_240525D98, 0x32uLL))
        {
          sub_24051EB50(@"%s:%d: %s: invalid resource map\n", v63, v64, v65, v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 402, v88[1]);
          goto LABEL_25;
        }

        LODWORD(value) = -1431655766;
        if (sub_240523F28(&v88, &value, 4uLL, 260, &v91, v67, v68, v69))
        {
          if (value == v90)
          {
            goto LABEL_5;
          }

          sub_24051EB50(@"%s:%d: %s: expected chunk count %u, found %u\n", v77, v78, v79, v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 415, v88[1], v90, value);
          goto LABEL_37;
        }
      }
    }

    else
    {
      LODWORD(value) = -1431655766;
      if (sub_240523F28(&v88, &value, 4uLL, 4 * v90, &v91, v34, v35, v36))
      {
        if (v37 == value)
        {
          goto LABEL_5;
        }

        sub_24051EB50(@"%s:%d: %s: expected size %u, found %llu\n", v70, v71, v72, v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 427, v88[1], value, v37);
LABEL_37:
        v25 = 22;
        goto LABEL_42;
      }
    }

    v25 = v91;
LABEL_42:
    if (v25)
    {
      goto LABEL_26;
    }

    goto LABEL_5;
  }

  return 93;
}

uint64_t sub_24051E0C8(uint64_t a1, const void *a2, size_t a3)
{
  if (write(1, a2, a3) == a3)
  {
    return 0;
  }

  v4 = __error();
  v5 = strerror(*v4);
  sub_24051EB50(@"%s:%d: write: %s\n", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 121, v5);
  return *__error();
}

uint64_t decompressFile(char *a1, int a2, int a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v72 = 0;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v71.st_blksize = v6;
  *v71.st_qspare = v6;
  v71.st_birthtimespec = v6;
  *&v71.st_size = v6;
  v71.st_mtimespec = v6;
  v71.st_ctimespec = v6;
  *&v71.st_uid = v6;
  v71.st_atimespec = v6;
  *&v71.st_dev = v6;
  if (stat(a1, &v71) == -1)
  {
    v8 = *__error();
    v17 = __error();
    v18 = strerror(*v17);
    sub_24051EB50(@"%s:%d: stat %s: %s\n", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 200, a1, v18);
    goto LABEL_32;
  }

  if ((v71.st_flags & 0x20) == 0)
  {
    return 0;
  }

  if (!a2)
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_10:
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 0x40000000;
    v68[2] = sub_24051E7B4;
    v68[3] = &unk_278CA90F0;
    v68[4] = a1;
    v26 = sub_24051ECE0(-1, a1, a1, &v72, v68);
    if (v26 != -1)
    {
      v27 = v26;
      v8 = 0;
      goto LABEL_12;
    }

    v8 = *__error();
    v38 = __error();
    v66 = strerror(*v38);
    sub_24051EB50(@"%s:%d: open %s: %s\n", v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 255, a1, v66);
LABEL_21:
    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v7 = sub_24051E5A8();
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!a1 || sub_24051EE1C(a1, -1, 1))
  {
    v8 = *__error();
    v9 = __error();
    v65 = strerror(*v9);
    sub_24051EB50(@"%s:%d: unsetBsdflags %s: %s\n", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 218, a1, v65);
    goto LABEL_21;
  }

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 0x40000000;
  v70[2] = sub_24051E72C;
  v70[3] = &unk_278CA90B0;
  v70[4] = a1;
  v28 = sub_24051ECE0(-1, a1, a1, &v72, v70);
  if (v28 == -1)
  {
    v8 = *__error();
    v46 = __error();
    v67 = strerror(*v46);
    sub_24051EB50(@"%s:%d: open %s: %s\n", v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 226, a1, v67);
    goto LABEL_21;
  }

  v27 = v28;
  v68[5] = MEMORY[0x277D85DD0];
  v68[6] = 0x40000000;
  v68[7] = sub_24051E738;
  v68[8] = &unk_278CA90D0;
  v69 = v28;
  v68[9] = a1;
  v29 = sub_24051DC54();
  v8 = v29;
  if (v29)
  {
    v30 = strerror(v29);
    sub_24051EB50(@"%s:%d: Error: processFileData %s: %s\n", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 237, a1, v30);
    ftruncate(v27, 0);
    sub_24051EE1C(a1, -1, 0);
  }

  else
  {
    fremovexattr(v27, "com.apple.decmpfs", 0);
    fremovexattr(v27, "com.apple.ResourceFork", 0);
  }

LABEL_12:
  fsync(v27);
  close(v27);
  v73.tv_sec = v71.st_atimespec.tv_sec;
  *(&v73.tv_usec + 1) = -1431655766;
  v73.tv_usec = SLODWORD(v71.st_atimespec.tv_nsec) / 1000;
  tv_sec = v71.st_mtimespec.tv_sec;
  v76 = -1431655766;
  v75 = SLODWORD(v71.st_mtimespec.tv_nsec) / 1000;
  if (v72 == 1)
  {
    lchmod(a1, v71.st_mode);
  }

  utimes(a1, &v73);
  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_22:
  if (!v8)
  {
    v54 = sub_24051E5A8();
    if (!v54)
    {
      CFRelease(v7);
      v8 = 5;
LABEL_33:
      *__error() = v8;
      return 0xFFFFFFFFLL;
    }

    v55 = v54;
    if (CFEqual(v7, v54))
    {
      v8 = 0;
    }

    else
    {
      sub_24051EB50(@"%s:%d: Error: decompressing %s changed its data!\n", v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 278, a1);
      v8 = 5;
    }

    CFRelease(v7);
    v63 = v55;
    goto LABEL_31;
  }

LABEL_26:
  if (!v7)
  {
    goto LABEL_32;
  }

  v63 = v7;
LABEL_31:
  CFRelease(v63);
LABEL_32:
  if (v8)
  {
    goto LABEL_33;
  }

  return 0;
}

CFDataRef sub_24051E5A8()
{
  v0 = MEMORY[0x28223BE20]();
  v29 = *MEMORY[0x277D85DE8];
  v1 = open(v0, 0);
  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v2;
  *&c.wbuf[10] = v2;
  *&c.hash[6] = v2;
  *&c.wbuf[2] = v2;
  *c.count = v2;
  *&c.hash[2] = v2;
  *md = v2;
  v28 = v2;
  if (v1 == -1)
  {
    v5 = __error();
    v6 = strerror(*v5);
    sub_24051EB50(@"%s:%d: open %s: %s\n", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 163, v0, v6, *c.count, *c.hash, *&c.hash[2], *&c.hash[4], *&c.hash[6], *c.wbuf, *&c.wbuf[2], *&c.wbuf[4], *&c.wbuf[6], *&c.wbuf[8], *&c.wbuf[10], *&c.wbuf[12], *&c.wbuf[14]);
    return 0;
  }

  else
  {
    v3 = v1;
    CC_SHA256_Init(&c);
    while (1)
    {
      memset(__b, 170, sizeof(__b));
      v4 = read(v3, __b, 0x1000uLL);
      if (!v4)
      {
        break;
      }

      if (v4 == -1)
      {
        v15 = __error();
        v16 = strerror(*v15);
        sub_24051EB50(@"%s:%d: read %s: %s\n", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 172, v0, v16, *c.count, *c.hash, *&c.hash[2], *&c.hash[4], *&c.hash[6], *c.wbuf, *&c.wbuf[2], *&c.wbuf[4], *&c.wbuf[6], *&c.wbuf[8], *&c.wbuf[10], *&c.wbuf[12], *&c.wbuf[14]);
        v14 = 0;
        goto LABEL_9;
      }

      CC_SHA256_Update(&c, __b, v4);
    }

    CC_SHA256_Final(md, &c);
    v14 = CFDataCreate(0, md, 32);
LABEL_9:
    close(v3);
  }

  return v14;
}

uint64_t sub_24051E738(uint64_t a1, const void *a2, size_t a3)
{
  if (write(*(a1 + 40), a2, a3) == a3)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = __error();
  v7 = strerror(*v6);
  sub_24051EB50(@"%s:%d: write %s: %s\n", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 231, v5, v7);
  return *__error();
}

uint64_t sub_24051E7C0(char *a1, int a2, unsigned int *a3, _DWORD *a4)
{
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v42.st_blksize = v8;
  *v42.st_qspare = v8;
  v42.st_birthtimespec = v8;
  *&v42.st_size = v8;
  v42.st_mtimespec = v8;
  v42.st_ctimespec = v8;
  *&v42.st_uid = v8;
  v42.st_atimespec = v8;
  *&v42.st_dev = v8;
  if (a2 == -1)
  {
    result = stat(a1, &v42);
  }

  else
  {
    result = fstat(a2, &v42);
  }

  if (result != -1)
  {
    if (a3)
    {
      st_size = v42.st_size;
      *a3 = 0;
      *(a3 + 1) = 0;
      *(a3 + 2) = st_size;
      *(a3 + 3) = 0;
    }

    else
    {
      *a4 = 0;
    }

    if ((v42.st_flags & 0x20) == 0)
    {
      return 0;
    }

    v11 = sub_24051DAAC(a1, a2);
    if (v11)
    {
      v19 = v11;
      if (v11[1] == 1668116582)
      {
        v20 = v11[2];
        if (a4)
        {
          *a4 = v20;
        }

        else
        {
          *a3 = v20;
          v21 = *(v19 + 3);
          *(a3 + 2) = v21;
          if (v21 != v42.st_size)
          {
            sub_24051EB50(@"%s:%d: Error: Uncompressed size for path '%s' as reported by stat did not match size in disk header!\n", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 334, a1);
            v20 = *a3;
          }

          v41 = 0;
          sub_240523CD0(v20, 0, &v41, v14, v15, v16, v17, v18);
          if (v41 == 196608 || v41 == 0x20000)
          {
            if (a2 == -1)
            {
              v30 = getxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32);
            }

            else
            {
              v30 = fgetxattr(a2, "com.apple.ResourceFork", 0, 0, 0, 32);
            }

            if (v30 == -1)
            {
              sub_24051EB50(@"%s:%d: Error: Type %d compressed file at path '%s' did not have a resource fork\n", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 352, *a3, a1);
              LODWORD(v38) = *v19;
            }

            else
            {
              v38 = *v19;
              *(a3 + 1) = v30 + v38;
              v39 = 2;
              if (v41 == 0x20000)
              {
                v39 = 3;
                v40 = 314;
              }

              else
              {
                v40 = 4;
              }

              a3[1] = v38 + v40 + (((*(a3 + 2) + 0xFFFFLL) >> 16) << v39);
            }

            if (v38 >= 0x18)
            {
              *(a3 + 3) = *(v19 + 5);
            }

            goto LABEL_13;
          }

          if (v41 == 0x10000)
          {
            *(a3 + 1) = *v19;
            v29 = 16;
          }

          else
          {
            if (*a3 != 5)
            {
              sub_24051EB50(@"%s:%d: Error: Unknown compression scheme encountered for file '%s'\n", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 377, a1);
              goto LABEL_13;
            }

            *(a3 + 1) = -1;
            v29 = -1;
          }

          a3[1] = v29;
        }

LABEL_13:
        free(v19);
        return 0;
      }

      sub_24051EB50(@"%s:%d: Error: Compressed file at path '%s' had incorrect magic in disk header\n", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c", 319, a1);
      free(v19);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t queryCompressionType(char *a1, _DWORD *a2)
{
  if (a1 && a2)
  {

    return sub_24051E7C0(a1, -1, 0, a2);
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t fqueryCompressionInfo(int a1, unsigned int *a2)
{
  if (a1 < 0 || !a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {

    return sub_24051E7C0("fd", a1, a2, 0);
  }
}

uint64_t fqueryCompressionType(int a1, _DWORD *a2)
{
  if (a1 < 0 || !a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {

    return sub_24051E7C0("fd", a1, 0, a2);
  }
}

int *sub_24051EB50(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = *__error();
  if (qword_27E4B5920 != -1)
  {
    dispatch_once(&qword_27E4B5920, &unk_28525D508);
  }

  v10 = CFStringCreateWithFormatAndArguments(0, 0, a1, va);
  if (v10)
  {
    v11 = v10;
    Length = CFStringGetLength(v10);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v14 = malloc(MaximumSizeForEncoding + 1);
    v15 = "failed to convert string\n";
    if (v14 && CFStringGetCString(v11, v14, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      v15 = v14;
    }

    CFRelease(v11);
  }

  else
  {
    v14 = 0;
    v15 = "failed to convert string\n";
  }

  if (byte_27E4B5918 != 1)
  {
    syslog(3, "%s", v15);
    if (!v14)
    {
      goto LABEL_16;
    }

LABEL_15:
    free(v14);
    goto LABEL_16;
  }

  v16 = strlen(v15);
  if (v15[v16 - 1] != 10)
  {
    *&v15[v16] = 10;
  }

  fputs(v15, *MEMORY[0x277D85DF8]);
  if (v14)
  {
    goto LABEL_15;
  }

LABEL_16:
  result = __error();
  *result = v9;
  return result;
}

uint64_t sub_24051ECB4()
{
  result = isatty(2);
  byte_27E4B5918 = result != 0;
  return result;
}

uint64_t sub_24051ECE0(int a1, const char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  result = (*(a5 + 16))(a5);
  if (result == -1)
  {
    if (*__error() != 13)
    {
      return 0xFFFFFFFFLL;
    }

    if (a2)
    {
      if (lchmod(a2, 0x180u) == -1)
      {
        v11 = __error();
        v29 = strerror(*v11);
        sub_24051EB50(@"%s:%d: lchmod %s (%s): %s\n", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/commonUtilsUser.c", 93, a3, a2, v29);
        return 0xFFFFFFFFLL;
      }
    }

    else if (fchmod(a1, 0x180u) == -1)
    {
      v20 = __error();
      v28 = strerror(*v20);
      sub_24051EB50(@"%s:%d: fchmod %s: %s\n", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/commonUtilsUser.c", 98, a3, v28);
      return 0xFFFFFFFFLL;
    }

    *a4 = 1;
    v19 = *(a5 + 16);

    return v19(a5);
  }

  return result;
}

uint64_t sub_24051EE1C(char *a1, int a2, int a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = -1431655766;
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v12.st_blksize = v5;
  *v12.st_qspare = v5;
  v12.st_birthtimespec = v5;
  *&v12.st_size = v5;
  v12.st_mtimespec = v5;
  v12.st_ctimespec = v5;
  *&v12.st_uid = v5;
  v12.st_atimespec = v5;
  v6 = 32 * (a3 == 0);
  v7 = 4;
  *&v12.st_dev = v5;
  while (a2 != -1)
  {
    if (fstat(a2, &v12))
    {
      goto LABEL_16;
    }

LABEL_6:
    LODWORD(v13) = v12.st_flags;
    HIDWORD(v13) = v12.st_flags & 0xFFFFFFDF | v6;
    v14 = -1;
    if (a2 == -1)
    {
      v8 = fsctl(a1, 0xC00C4114uLL, &v13, 0);
    }

    else
    {
      v8 = ffsctl(a2, 0xC00C4114uLL, &v13, 0);
    }

    v9 = v8;
    if (v8)
    {
      if ((v8 & 0x80000000) != 0 && *__error() != 35)
      {
        return v9;
      }
    }

    else if (v12.st_flags == v14)
    {
      return 0;
    }

    if (!--v7)
    {
      goto LABEL_17;
    }
  }

  if (!stat(a1, &v12))
  {
    goto LABEL_6;
  }

LABEL_16:
  v9 = *__error();
LABEL_17:
  if (v12.st_flags == v14)
  {
    v10 = 0;
  }

  else
  {
    v10 = 35;
  }

  if (!v9)
  {
    return v10;
  }

  return v9;
}

char *CreateStreamCompressorQueueWithOptions(const __CFDictionary *a1)
{
  v130 = *MEMORY[0x277D85DE8];
  v2 = calloc(1uLL, 0x60uLL);
  *v2 = dispatch_group_create();
  *(v2 + 13) = sub_24051F6FC(a1, @"IgnoreXattrErrors", 0, v3, v4, v5, v6, v7);
  *(v2 + 14) = sub_24051F6FC(a1, @"AllowStoringDataInXattr", 1, v8, v9, v10, v11, v12);
  v2[9] = sub_24051F7AC(a1, @"CompressionLevel", 5);
  *(v2 + 15) = sub_24051F6FC(a1, @"ForceAsynchronous", 0, v13, v14, v15, v16, v17);
  v18 = sub_24051F7AC(a1, @"MaxCompressionPercentage", 80);
  v2[5] = v18;
  if (v18 - 101 <= 0xFFFFFF9B)
  {
    sub_24051EB50(@"%s:%d: Error: compression ratio needs to be between 1 and 100\n", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 200);
    goto LABEL_50;
  }

  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"CompressionRules");
    v27 = CFDictionaryGetValue(a1, @"SystemCompressionRules");
    if (Value)
    {
      v28 = CFGetTypeID(Value);
      if (v28 != CFArrayGetTypeID())
      {
        goto LABEL_49;
      }

      Value = CFRetain(Value);
    }

    if (v27)
    {
      v36 = CFGetTypeID(v27);
      if (v36 == CFArrayGetTypeID())
      {
        v37 = CFRetain(v27);
        goto LABEL_27;
      }

LABEL_49:
      *(v2 + 10) = 0;
      sub_24051EB50(@"%s:%d: Error: _InitCompressionRules failed (malformed plist?)\n", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 208);
      goto LABEL_50;
    }
  }

  else
  {
    Value = 0;
  }

  v38 = CFURLCreateFromFileSystemRepresentation(0, "/System/Library/PrivateFrameworks/AppleFSCompression.framework", 62, 1u);
  if (!v38)
  {
    goto LABEL_49;
  }

  v39 = v38;
  v40 = CFBundleCreate(0, v38);
  if (!v40 || (v41 = CFBundleCopyResourceURL(v40, @"SystemCompressionRules", @"plist", 0)) == 0)
  {
    v37 = 0;
    v46 = v39;
LABEL_25:
    CFRelease(v46);
    goto LABEL_26;
  }

  v42 = v41;
  v43 = CFReadStreamCreateWithFile(0, v41);
  v44 = v43;
  if (v43 && CFReadStreamOpen(v43))
  {
    v45 = CFPropertyListCreateWithStream(0, v44, 0, 0, 0, 0);
    v46 = v45;
    if (v45 && (v47 = CFGetTypeID(v45), v47 == CFArrayGetTypeID()))
    {
      v37 = CFRetain(v46);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
    v46 = 0;
  }

  CFRelease(v39);
  CFRelease(v42);
  if (v44)
  {
    CFReadStreamClose(v44);
    CFRelease(v44);
  }

  if (v46)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (!v37)
  {
    goto LABEL_49;
  }

LABEL_27:
  v48 = malloc(0x10uLL);
  if (!v48)
  {
    if (Value)
    {
      CFRelease(Value);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    goto LABEL_49;
  }

  *v48 = Value;
  v48[1] = v37;
  *(v2 + 10) = v48;
  v2[16] = 0;
  if (!a1)
  {
    goto LABEL_59;
  }

  v49 = CFDictionaryGetValue(a1, @"SkipMachOFileTypes");
  if (!v49)
  {
LABEL_53:
    if (v2[16])
    {
LABEL_54:
      v76 = CFDictionaryGetValue(a1, @"SkipMachOOverridePaths");
      if (v76)
      {
        v77 = v76;
        v78 = CFGetTypeID(v76);
        if (v78 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(v77);
          v80 = MEMORY[0x28223BE20]();
          v82 = &v128[-((v81 + 15) & 0xFFFFFFFFFFFFFFF0)];
          if (v80)
          {
            memset(&v128[-((v81 + 15) & 0xFFFFFFFFFFFFFFF0)], 170, v81);
          }

          v131.location = 0;
          v131.length = Count;
          CFArrayGetValues(v77, v131, v82);
          *(v2 + 9) = CFSetCreate(0, v82, Count, MEMORY[0x277CBF158]);
        }
      }
    }

LABEL_59:
    if (sub_24051F6FC(a1, @"AFSCThrottledIO", 0, v31, v32, v33, v34, v35))
    {
      *(v2 + 5) = dispatch_get_global_queue(-32768, 0);
    }

    else
    {
      v83 = sub_24051F7AC(a1, @"DispatchQueuePriority", 2);
      global_queue = dispatch_get_global_queue(v83, 0);
      *(v2 + 5) = global_queue;
      if (!global_queue)
      {
        sub_24051EB50(@"%s:%d: Error: invalid kAFSCDispatchQueuePriority value %d\n", v85, v86, v87, v88, v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 233, v83, v127);
        goto LABEL_50;
      }
    }

    v92 = dispatch_queue_create("ioqueue", 0);
    *(v2 + 6) = v92;
    dispatch_set_target_queue(v92, *(v2 + 5));
    v93 = dispatch_queue_create("borrowed buffer queue", 0);
    *(v2 + 7) = v93;
    dispatch_set_target_queue(v93, *(v2 + 5));
    v2[4] = 0;
    valuePtr = 0;
    if (!a1)
    {
      goto LABEL_76;
    }

    v99 = CFDictionaryGetValue(a1, @"CompressionTypes");
    if (v99)
    {
      v100 = v99;
      v101 = CFGetTypeID(v99);
      if (v101 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(v100, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
          goto LABEL_70;
        }

        sub_24051EB50(@"%s:%d: Error: value %@ for %@ could not be parsed\n", v102, v103, v104, v105, v106, v107, v108, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 152, v100, @"CompressionTypes");
      }

      else
      {
        v110 = CFGetTypeID(v100);
        if (v110 == CFStringGetTypeID())
        {
          IntValue = CFStringGetIntValue(v100);
          valuePtr = IntValue;
LABEL_70:
          if (sub_240523CD0(IntValue, v2 + 6, v2 + 7, v104, v105, v106, v107, v108))
          {
            v118 = valuePtr;
            if (v2[7] != 0x10000)
            {
              v2[4] = valuePtr;
              if (v118)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            }

            v119 = valuePtr + 1;
            v2[4] = v119;
            sub_240523CD0(v119, v2 + 6, v2 + 7, v94, v95, v96, v97, v98);
            sub_24051EB50(@"%s:%d: Error: shouldn't use compressor type %d since it is a single chunk compressor, using %d instead\n", v120, v121, v122, v123, v124, v125, v126, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 168, valuePtr, v2[4]);
          }

          goto LABEL_75;
        }

        sub_24051EB50(@"%s:%d: Error: value for %@ is not a string or number\n", v111, v112, v113, v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 158, @"CompressionTypes", v127);
      }
    }

LABEL_75:
    if (v2[4])
    {
LABEL_77:
      *(v2 + 32) = v2[6];
      *(v2 + 88) = sub_24051F6FC(a1, @"Synchronous", 0, v94, v95, v96, v97, v98);
      return v2;
    }

LABEL_76:
    v2[4] = 8;
    sub_240523CD0(8, v2 + 6, v2 + 7, v94, v95, v96, v97, v98);
    goto LABEL_77;
  }

  v50 = v49;
  v51 = CFGetTypeID(v49);
  if (v51 != CFArrayGetTypeID())
  {
    sub_24051EB50(@"%s:%d: Error: SkipMachOFileTypes value is not an array\n", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 55);
    goto LABEL_53;
  }

  v59 = CFArrayGetCount(v50);
  if (v59 < 1)
  {
    goto LABEL_53;
  }

  v60 = v59;
  v61 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v50, v61);
    if (!ValueAtIndex)
    {
      goto LABEL_43;
    }

    v63 = ValueAtIndex;
    valuePtr = 0;
    v64 = CFGetTypeID(ValueAtIndex);
    if (v64 != CFNumberGetTypeID())
    {
      break;
    }

    CFNumberGetValue(v63, kCFNumberSInt32Type, &valuePtr);
    v67 = valuePtr;
LABEL_40:
    if (v67 == -1)
    {
      v2[16] = -1;
      goto LABEL_54;
    }

    if (v67 - 1 >= 0x1F)
    {
      sub_24051EB50(@"%s:%d: Error: invalid item '%@' at index %ld in SkipMachOFileTypes dictionary\n", v65, v66, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 89, v63, v61);
      goto LABEL_50;
    }

    v2[16] |= 1 << v67;
LABEL_43:
    if (v60 == ++v61)
    {
      goto LABEL_53;
    }
  }

  if (v64 == CFStringGetTypeID())
  {
    if (qword_27E4B5930 != -1)
    {
      dispatch_once(&qword_27E4B5930, &unk_28525D528);
    }

    v67 = CFDictionaryGetValue(qword_27E4B5928, v63);
    valuePtr = v67;
    goto LABEL_40;
  }

  sub_24051EB50(@"%s:%d: Error: SkipMachOFileTypes value at index %lu is not a number or string\n", v68, v69, v70, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 74, v61);
LABEL_50:
  FinishStreamCompressorQueue(v2);
  return 0;
}

uint64_t sub_24051F6FC(const __CFDictionary *Value, void *key, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, key);
  }

  if (Value == *MEMORY[0x277CBED28])
  {
    return 1;
  }

  if (Value == *MEMORY[0x277CBED10])
  {
    return 0;
  }

  if (Value)
  {
    v10 = "false";
    if (v8)
    {
      v10 = "true";
    }

    sub_24051EB50(@"%s:%d: Error: value for %@ is not a BOOLean, using default value (%s)\n", key, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 109, key, v10);
  }

  return v8;
}

uint64_t sub_24051F7AC(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFNumberGetTypeID())
      {
        valuePtr = -1431655766;
        if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
        {
          return valuePtr;
        }

        else
        {
          sub_24051EB50(@"%s:%d: Error: invalid %@ value %@, assuming %d\n", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 130, a2, v6, a3);
        }
      }

      else
      {
        sub_24051EB50(@"%s:%d: Error: value for %@ is not a number, assuming %d\n", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 124, a2, a3);
      }
    }
  }

  return a3;
}

uint64_t FinishStreamCompressorQueue(uint64_t a1)
{
  v2 = DrainStreamCompressorQueue(a1);
  v3 = *__error();
  if (a1)
  {
    if (*a1)
    {
      dispatch_release(*a1);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        CFRelease(v8);
      }

      if (*v7)
      {
        CFRelease(*v7);
      }

      free(v7);
    }

    free(a1);
  }

  *__error() = v3;
  return v2;
}

uint64_t DrainStreamCompressorQueue(uint64_t a1)
{
  if (!a1)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  dispatch_group_wait(*a1, 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 8))
  {
    v2 = *(a1 + 8);
    v3 = strerror(*(a1 + 8));
    sub_24051EB50(@"%s:%d: Error: returning errno %d (%s) from DrainStreamCompressorQueue\n", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 416, v2, v3);
    LODWORD(v2) = *(a1 + 8);
    *__error() = v2;
    *(a1 + 8) = 0;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_24051F9B4()
{
  qword_27E4B5928 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  CFDictionarySetValue(qword_27E4B5928, @"*", 0xFFFFFFFFFFFFFFFFLL);
  CFDictionarySetValue(qword_27E4B5928, @"MH_OBJECT", 1);
  CFDictionarySetValue(qword_27E4B5928, @"MH_EXECUTE", 2);
  CFDictionarySetValue(qword_27E4B5928, @"MH_FVMLIB", 3);
  CFDictionarySetValue(qword_27E4B5928, @"MH_CORE", 4);
  CFDictionarySetValue(qword_27E4B5928, @"MH_PRELOAD", 5);
  CFDictionarySetValue(qword_27E4B5928, @"MH_DYLIB", 6);
  CFDictionarySetValue(qword_27E4B5928, @"MH_DYLINKER", 7);
  CFDictionarySetValue(qword_27E4B5928, @"MH_BUNDLE", 8);
  CFDictionarySetValue(qword_27E4B5928, @"MH_DYLIB_STUB", 9);
  CFDictionarySetValue(qword_27E4B5928, @"MH_DSYM", 0xA);
  v0 = qword_27E4B5928;

  CFDictionarySetValue(v0, @"MH_KEXT_BUNDLE", 0xB);
}

char *CreateCompressionQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CreateStreamCompressorQueueWithOptions(a5);
  if (result)
  {
    result[12] = 1;
  }

  return result;
}

BOOL CompressFile(uint64_t a1, char *a2, char *a3)
{
  if (qword_27E4B5970 != -1)
  {
    dispatch_once(&qword_27E4B5970, &unk_28525D738);
  }

  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v67.st_blksize = v6;
  *v67.st_qspare = v6;
  v67.st_birthtimespec = v6;
  *&v67.st_size = v6;
  v67.st_mtimespec = v6;
  v67.st_ctimespec = v6;
  *&v67.st_uid = v6;
  v67.st_atimespec = v6;
  *&v67.st_dev = v6;
  v7 = qword_27E4B5978;
  dispatch_semaphore_wait(qword_27E4B5978, 0xFFFFFFFFFFFFFFFFLL);
  v8 = open(a2, 2);
  if (v8 == -1)
  {
    v31 = __error();
    v32 = strerror(*v31);
    sub_24051EB50(@"%s:%d: open '%s': %s\n", v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c", 37, a2, v32, *&v67.st_dev, v67.st_ino, *&v67.st_uid, *&v67.st_rdev, v67.st_atimespec.tv_sec, v67.st_atimespec.tv_nsec, v67.st_mtimespec.tv_sec, v67.st_mtimespec.tv_nsec, v67.st_ctimespec.tv_sec, v67.st_ctimespec.tv_nsec, v67.st_birthtimespec.tv_sec, v67.st_birthtimespec.tv_nsec);
    v11 = 0;
  }

  else
  {
    v9 = v8;
    v10 = fstat(v8, &v67);
    v11 = v10 != -1;
    if (v10 == -1)
    {
      v40 = __error();
      v41 = strerror(*v40);
      sub_24051EB50(@"%s:%d: open '%s': %s\n", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c", 42, a2, v41, *&v67.st_dev, v67.st_ino, *&v67.st_uid, *&v67.st_rdev, v67.st_atimespec.tv_sec, v67.st_atimespec.tv_nsec, v67.st_mtimespec.tv_sec, v67.st_mtimespec.tv_nsec, v67.st_ctimespec.tv_sec, v67.st_ctimespec.tv_nsec, v67.st_birthtimespec.tv_sec, v67.st_birthtimespec.tv_nsec);
    }

    else
    {
      StreamCompressor = CreateStreamCompressor(v9, a2, a3, a1, v67.st_size);
      if (StreamCompressor)
      {
        v13 = StreamCompressor;
        v14 = *(StreamCompressor + 244);
        v15 = malloc(0x10000uLL);
        v16 = 0;
        while (v16 < v67.st_size)
        {
          v17 = pread(v14, v15, 0x10000uLL, v16);
          if (!v17)
          {
            break;
          }

          if (v17 == -1)
          {
            v49 = __error();
            v66 = strerror(*v49);
            sub_24051EB50(@"%s:%d: pread(%s): %s\n", v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c", 65, a2, v66, *&v67.st_dev, v67.st_ino, *&v67.st_uid, *&v67.st_rdev, v67.st_atimespec.tv_sec, v67.st_atimespec.tv_nsec, v67.st_mtimespec.tv_sec, v67.st_mtimespec.tv_nsec, v67.st_ctimespec.tv_sec, v67.st_ctimespec.tv_nsec, v67.st_birthtimespec.tv_sec, v67.st_birthtimespec.tv_nsec);
            break;
          }

          v16 += v17;
          if (WriteToStreamCompressor(v13, v15, v17, v18, v19, v20, v21, v22) != v17)
          {
            if (*__error() != 28)
            {
              v23 = __error();
              v65 = strerror(*v23);
              sub_24051EB50(@"%s:%d: WriteToStreamCompressor(%s): %s\n", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c", 74, a2, v65, *&v67.st_dev, v67.st_ino, *&v67.st_uid, *&v67.st_rdev, v67.st_atimespec.tv_sec, v67.st_atimespec.tv_nsec, v67.st_mtimespec.tv_sec, v67.st_mtimespec.tv_nsec, v67.st_ctimespec.tv_sec, v67.st_ctimespec.tv_nsec, v67.st_birthtimespec.tv_sec, v67.st_birthtimespec.tv_nsec);
            }

            break;
          }
        }

        free(v15);
        CloseStreamCompressor(v13, v57, v58, v59, v60, v61, v62, v63);
      }
    }

    close(v9);
  }

  dispatch_semaphore_signal(v7);
  return v11;
}

int *FinishCompressionAndCleanUp(uint64_t a1)
{
  result = FinishStreamCompressorQueue(a1);
  if (result)
  {
    v2 = __error();
    v3 = strerror(*v2);
    return sub_24051EB50(@"%s:%d: FinishStreamCompressorQueue: %s\n", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c", 98, v3);
  }

  return result;
}

const char *sub_24051FDA8(const char *a1, char *__s, _BYTE *a3)
{
  v3 = a1;
  *a3 = 0;
  if (a1)
  {
    if (__s)
    {
      if (*a1)
      {
        if (*__s)
        {
          v6 = strlen(__s);
          if (!strncmp(v3, __s, v6))
          {
            v7 = &v3[v6];
            v8 = v3[v6];
            if (v3[v6])
            {
              if (v8 == 47)
              {
                v9 = &v3[v6 - 1];
                do
                {
                  v8 = *(v9++ + 2);
                }

                while (v8 == 47);
                if (*v9 != 47)
                {
                  goto LABEL_15;
                }

                goto LABEL_13;
              }

              v10 = *(v7 - 1);
              v9 = v7 - 1;
              if (v10 == 47)
              {
LABEL_13:
                if (v8 == 46)
                {
                  v11 = 2 * (v9[2] == 47);
LABEL_16:
                  v3 = &v9[v11];
                  *a3 = 1;
                  return v3;
                }

LABEL_15:
                v11 = 0;
                goto LABEL_16;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

BOOL sub_24051FE8C(const __CFString *a1, CFArrayRef theArray, int a3, char *a4, uint64_t *a5)
{
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 1;
  }

  v9 = Count;
  v10 = 0;
  v11 = 0;
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  if (a3)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v34 = v13;
  v35 = v12;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    if (!ValueAtIndex || (v15 = ValueAtIndex, v16 = CFGetTypeID(ValueAtIndex), v16 != CFDictionaryGetTypeID()))
    {
      fprintf(*MEMORY[0x277D85DF8], "Rule at index %llu was not a dictionary\n");
      return v10;
    }

    Value = CFDictionaryGetValue(v15, @"RuleType");
    v18 = CFDictionaryGetValue(v15, @"Flags");
    v19 = CFDictionaryGetValue(v15, @"InverseFlags");
    v20 = v19;
    v38 = 0;
    valuePtr = 0;
    if (!Value && !v18 && !v19)
    {
      v32 = "None of the keys 'RuleType', 'Flags', or 'InverseFlags' were found while evaluating compression rule at index %llu\n";
      goto LABEL_61;
    }

    if (!Value)
    {
      v22 = *a4;
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_23:
      v23 = CFGetTypeID(v18);
      if (v23 != CFNumberGetTypeID() || !CFNumberGetValue(v18, kCFNumberSInt64Type, &valuePtr))
      {
        v32 = "Key 'Flags' was not a number while evaluating compression rule at index %llu\n";
        goto LABEL_61;
      }

      goto LABEL_25;
    }

    v21 = CFGetTypeID(Value);
    if (v21 != CFStringGetTypeID())
    {
      v32 = "Key 'RuleType' was not a string while evaluating compression rule at index %llu\n";
      goto LABEL_61;
    }

    if (CFStringCompare(Value, @"Exclude", 0) == kCFCompareEqualTo)
    {
      v22 = 0;
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (CFStringCompare(Value, @"Include", 0))
    {
      v32 = "Invalid value found for key 'RuleType' while evaluating compression rule at index %llu\n";
      goto LABEL_61;
    }

    v22 = 1;
    if (v18)
    {
      goto LABEL_23;
    }

LABEL_25:
    if (v20)
    {
      v24 = CFGetTypeID(v20);
      if (v24 != CFNumberGetTypeID() || !CFNumberGetValue(v20, kCFNumberSInt64Type, &v38))
      {
        v32 = "Key 'InverseFlags' was not a number while evaluating compression rule at index %llu\n";
        goto LABEL_61;
      }
    }

    if (*a4 == (v22 & 1) && (valuePtr & ~*a5) == 0 && (v38 & *a5) == 0)
    {
      goto LABEL_47;
    }

    v25 = CFDictionaryGetValue(v15, @"PathEndsWithString");
    if (!v25)
    {
      break;
    }

    v26 = v25;
    v27 = 1;
LABEL_39:
    v31 = CFGetTypeID(v26);
    if (v31 != CFStringGetTypeID())
    {
      v32 = "A path match key had a value that was not a string, while evaluating compression rule at index %llu\n";
      goto LABEL_61;
    }

    if (v27 <= 1)
    {
      if (v27)
      {
        if (!CFStringHasSuffix(a1, v26))
        {
          goto LABEL_47;
        }
      }

      else if (!CFStringHasPrefix(a1, v26))
      {
        goto LABEL_47;
      }

LABEL_46:
      *a4 = v22 & 1;
      *a5 = (*a5 | valuePtr) & ~v38;
      goto LABEL_47;
    }

    if (v27 != 2)
    {
      if (CFStringCompare(a1, v26, 0))
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (CFStringFind(a1, v26, 0).location != -1)
    {
      goto LABEL_46;
    }

LABEL_47:
    v10 = ++v11 >= v9;
    if (v9 == v11)
    {
      return v10;
    }
  }

  v28 = CFDictionaryGetValue(v15, @"PathBeginsWithString");
  if (v28)
  {
    v26 = v28;
    v27 = v35;
    goto LABEL_39;
  }

  v29 = CFDictionaryGetValue(v15, @"PathContainsString");
  if (v29)
  {
    v26 = v29;
    v27 = 2;
    goto LABEL_39;
  }

  v30 = CFDictionaryGetValue(v15, @"PathExactlyEqualsString");
  if (v30)
  {
    v26 = v30;
    v27 = v34;
    goto LABEL_39;
  }

  v32 = "String to match against not found while evaluating compression rule at index %llu\n";
LABEL_61:
  fprintf(*MEMORY[0x277D85DF8], v32, v11);
  return v10;
}

void sub_240520244(uint64_t a1, unsigned int a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 321) == 1)
  {
    sub_24052046C(a1, "scheduling %s task after finish", a3, a4, a5, a6, a7, a8, off_278CA9208[a2]);
  }

  v10 = *(a1 + 236);
  if (*(a1 + 168) != -208193560 || v10 != -208193560)
  {
    sub_24052046C(a1, "magic numbers have been clobbered (0x%08x 0x%08x)", a3, a4, a5, a6, a7, a8, *(a1 + 168), v10);
  }

  v13 = a3;
  if (a3)
  {
    if (a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = *(a1 + 8 * a2 + 176);
    if (a2)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 232) == 1)
  {
    sub_24052046C(a1, "scheduling %s task after compression finished", a3, a4, a5, a6, a7, a8, "compression");
  }

  dispatch_group_enter(*(a1 + 224));
LABEL_13:
  v14 = *(a1 + 160);
  v15 = *(a1 + 216);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v19 = sub_2405205A4;
  v20 = &unk_28525D548;
  v23 = a2;
  v21 = a4;
  v22 = a1;
  v16 = sub_240520690();
  v17 = v16;
  if (*(v14 + 88) == 1)
  {
    if (qword_27E4B5940 != -1)
    {
      dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
    }

    pthread_setspecific(qword_27E4B5948, v17);
    (v19)(v18);
    if (qword_27E4B5940 != -1)
    {
      dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
    }

    pthread_setspecific(qword_27E4B5948, 0);
    CFRelease(v17);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1107296256;
    block[2] = sub_240520790;
    block[3] = &unk_28525D698;
    block[4] = v18;
    block[5] = v16;
    dispatch_group_async(v15, v13, block);
  }
}

void sub_24052046C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v43[0] = 0;
  va_copy(&v43[1], va);
  vasprintf(v43, a2, va);
  sub_24051EB50(@"%s:%d: Error: StreamCompressor %p %s. PLEASE FILE A BUG AGAINST AppleFSCompression/X", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 502, a1, v43[0]);
  v16 = sub_240520690();
  Count = CFArrayGetCount(v16);
  Mutable = CFStringCreateMutable(0, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
      CFStringAppendFormat(Mutable, 0, @"%p ", ValueAtIndex);
    }
  }

  CFRelease(v16);
  sub_24051EB50(@"%s:%d: Error: StreamCompressor %p stack: %@", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 504, a1, Mutable);
  label = dispatch_queue_get_label(0);
  sub_24051EB50(@"%s:%d: Error: StreamCompressor %p queue: %s", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 505, a1, label);
  sub_24051EB50(@"%s:%d: Error: StreamCompressor %p path: %s", v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 506, a1, *(a1 + 8));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v43[0]);
  abort();
}

void sub_2405205A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (*(v8 + 321) == 1)
  {
    sub_24052046C(v8, "running %s task after finish", a3, a4, a5, a6, a7, a8, off_278CA9208[v9]);
  }

  if (!v9 && *(v8 + 232) == 1)
  {
    sub_24052046C(v8, "running %s task after compression finished", a3, a4, a5, a6, a7, a8, "compression");
  }

  v11 = *(v8 + 236);
  if (*(v8 + 168) != -208193560 || v11 != -208193560)
  {
    sub_24052046C(v8, "magic numbers have been clobbered (0x%08x 0x%08x)", a3, a4, a5, a6, a7, a8, *(v8 + 168), v11);
  }

  (*(*(a1 + 32) + 16))();
  if (!*(a1 + 48))
  {
    v13 = *(v8 + 224);

    dispatch_group_leave(v13);
  }
}

__CFArray *sub_240520690()
{
  __b[100] = *MEMORY[0x277D85DE8];
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  v0 = pthread_getspecific(qword_27E4B5948);
  if (v0)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, v0);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, 0);
  }

  v2 = MutableCopy;
  memset(__b, 170, 0x320uLL);
  v3 = backtrace(__b, 100);
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = __b;
    do
    {
      v6 = *v5++;
      CFArrayAppendValue(v2, v6);
      --v4;
    }

    while (v4);
  }

  CFArrayAppendValue(v2, 0);
  return v2;
}

void sub_240520790(uint64_t a1)
{
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  pthread_setspecific(qword_27E4B5948, *(a1 + 40));
  (*(*(a1 + 32) + 16))();
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  pthread_setspecific(qword_27E4B5948, 0);
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t sub_240520870(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = MEMORY[0x277D85DD0];
  v5 = 0x40000000;
  v6 = sub_2405209E8;
  v7 = &unk_278CA9230;
  v8 = v1;
  return (*(v2 + 16))(v2);
}

uint64_t sub_2405208EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  dispatch_suspend(*(a1 + 48));
  v3 = *(a1 + 56);
  v4 = malloc(v3);
  if (!v4)
  {
    sub_24052046C(v2, "allocating buffer of size %zu failed", v5, v6, v7, v8, v9, v10, v3);
  }

  v11 = v4;
  v12 = *(a1 + 32);
  v15 = MEMORY[0x277D85DD0];
  v16 = 0x40000000;
  v17 = sub_2405209AC;
  v18 = &unk_278CA9250;
  v13 = *(a1 + 48);
  v19 = v11;
  v20 = v13;
  return (*(v12 + 16))();
}

void sub_2405209AC(uint64_t a1)
{
  free(*(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_resume(v2);
}

void sub_2405209F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(v1 + 232) = 1;
  (*(*(a1 + 32) + 16))();
  v2 = *(v1 + 216);

  dispatch_group_leave(v2);
}

void sub_240520A3C(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4)
{
  v8 = sub_240520690();
  v9 = v8;
  if (*(a1 + 88) == 1)
  {
    if (qword_27E4B5940 != -1)
    {
      dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
    }

    pthread_setspecific(qword_27E4B5948, v9);
    (*(a4 + 16))(a4);
    if (qword_27E4B5940 != -1)
    {
      dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
    }

    pthread_setspecific(qword_27E4B5948, 0);

    CFRelease(v9);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_240520B90;
    v10[3] = &unk_28525D6E8;
    v10[4] = a4;
    v10[5] = v8;
    dispatch_group_notify(a2, a3, v10);
  }
}

void sub_240520B90(uint64_t a1)
{
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  pthread_setspecific(qword_27E4B5948, *(a1 + 40));
  (*(*(a1 + 32) + 16))();
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  pthread_setspecific(qword_27E4B5948, 0);
  v2 = *(a1 + 40);

  CFRelease(v2);
}

int *sub_240520C44(int *result, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(result + 20);
    if (*(v3 + 12) == 1)
    {
      v4 = 0;
      atomic_compare_exchange_strong_explicit(result + 60, &v4, a2, memory_order_relaxed, memory_order_relaxed);
      if (!v4)
      {
        *&v5 = 0xAAAAAAAAAAAAAAAALL;
        *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v39 = v5;
        v40 = v5;
        v37 = v5;
        v38 = v5;
        *v36 = v5;
        backtrace(v36, 10);
        v32 = v37;
        v34 = *v36;
        v30 = v38;
        v6 = v39;
        v7 = *(&v40 + 1);
        v8 = __error();
        v28 = strerror(*v8);
        return sub_24051EB50(@"%s:%d: %p %p %p %p %p %p %p %p %p %p: Error: setting compressor error to %d (%s)\n", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 529, v34, v32, v30, v6, *(&v6 + 1), v7, a2, v28);
      }
    }

    else
    {
      v16 = *(v3 + 8);
      if (!v16)
      {
        atomic_compare_exchange_strong_explicit((v3 + 8), &v16, a2, memory_order_relaxed, memory_order_relaxed);
        if (!v16)
        {
          *&v17 = 0xAAAAAAAAAAAAAAAALL;
          *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v39 = v17;
          v40 = v17;
          v37 = v17;
          v38 = v17;
          *v36 = v17;
          backtrace(v36, 10);
          v33 = v37;
          v35 = *v36;
          v31 = v38;
          v18 = v39;
          v19 = *(&v40 + 1);
          v20 = __error();
          v29 = strerror(*v20);
          return sub_24051EB50(@"%s:%d: %p %p %p %p %p %p %p %p %p %p: Error: setting queue error to %d (%s)\n", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 390, v35, v33, v31, v18, *(&v18 + 1), v19, a2, v29);
        }
      }
    }
  }

  return result;
}

void *sub_240520DD4(uint64_t a1)
{
  sub_240521CA0(*(a1 + 32), *(*(a1 + 32) + 244), *(a1 + 40), *(a1 + 64), *(a1 + 48));
  v2 = *(a1 + 56);

  return sub_240524CA0(v2);
}

void sub_240520E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_240521DBC;
  v9[3] = &unk_28525D608;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  sub_240520244(v8, 4u, 0, v9, a5, a6, a7, a8);
}

void sub_240520E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 56);
  v10 = *(a1 + 60);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v14 = *(v8 + 160);
  if (*(v14 + 12))
  {
    v15 = (v8 + 240);
  }

  else
  {
    v15 = (v14 + 8);
  }

  v16 = *v15;
  if (!v16)
  {
    if (*(v8 + 324))
    {
      goto LABEL_32;
    }

    v23 = *(v14 + 24);
    if (v23 <= 773)
    {
      if (v23 == 460)
      {
        v24 = 0;
        goto LABEL_22;
      }

      if (v23 == 767)
      {
        v25 = *(v14 + 36);
        *v12 = 24184;
        v26 = v12 + 2;
        LODWORD(v13) = v13 - 2;
        v27 = v25 - 1;
        v28 = v25 | 0x200;
        if (v27 >= 9)
        {
          v24 = 517;
        }

        else
        {
          v24 = v28;
        }

        goto LABEL_23;
      }
    }

    else
    {
      switch(v23)
      {
        case 0x306:
          v24 = 2304;
          goto LABEL_22;
        case 0x5FF:
          v24 = 1794;
          goto LABEL_22;
        case 0x4FF:
          v24 = 2049;
LABEL_22:
          v26 = v12;
LABEL_23:
          v29 = sub_240523D98(v24, v9, v10, v26, v13, 1);
          if (v29)
          {
            v30 = v23 == 767;
          }

          else
          {
            v30 = 0;
          }

          if (v30)
          {
            v31 = v29 + 2;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            *(*(v8 + 400) + 8 * v11) = v12;
            v32 = (v9 - 1);
LABEL_33:
            sub_240524CA0(v32);
            *(*(v8 + 408) + 4 * v11) = v31;
            dispatch_group_enter(*(v8 + 224));
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 0x40000000;
            v37[2] = sub_24052115C;
            v37[3] = &unk_278CA9470;
            v37[4] = v8;
            v38 = v31;
            sub_240520244(v8, 1u, 0, v37, v33, v34, v35, v36);
            return;
          }

LABEL_32:
          v31 = v10 + 1;
          *(*(v8 + 400) + 8 * v11) = v9 - 1;
          v32 = v12;
          goto LABEL_33;
      }
    }

    sub_24051EB50(@"%s:%d: Error: unknown compression scheme %llu\n", v16, a3, a4, v13, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 168, v23);
    goto LABEL_32;
  }

  sub_240520C44(*(a1 + 32), v16);

  sub_24052109C(v8, 3, v17, v18, v19, v20, v21, v22);
}

void sub_24052109C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = sub_240521DAC;
  v8[3] = &unk_278CA9370;
  v8[4] = a1;
  v9 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_240520E1C;
  v10[3] = &unk_28525D638;
  v10[4] = v8;
  v10[5] = a1;
  sub_240520244(a1, 3u, 0, v10, a5, a6, a7, a8);
}

void sub_24052115C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(v8 + 300) + *(a1 + 40);
  *(v8 + 300) = v9;
  v10 = *(v8 + 292);
  v11 = v10 + 1;
  *(v8 + 292) = v10 + 1;
  if (v9 > *(v8 + 296))
  {
    if ((*(v8 + 324) & 1) == 0)
    {
      *(v8 + 324) = 1;
    }

    goto LABEL_28;
  }

  if (v11 != *(v8 + 288))
  {
    goto LABEL_28;
  }

  v12 = *(v8 + 160);
  if (*(v12 + 12))
  {
    v13 = (v8 + 240);
  }

  else
  {
    v13 = (v12 + 8);
  }

  v14 = *v13;
  if (v14)
  {
    sub_240520C44(v8, v14);
    v15 = v8;
    v16 = 3;
LABEL_10:
    sub_24052109C(v15, v16, a3, a4, a5, a6, a7, a8);
    goto LABEL_28;
  }

  if (!v10 && v9 <= 0xECA && !*(v8 + 280) && *(v12 + 14) == 1 && (*(v8 + 253) & 1) == 0)
  {
    v15 = v8;
    v16 = 2;
    goto LABEL_10;
  }

  v17 = *(v8 + 336);
  if (v17)
  {
    v18 = (8 * v11) | 4;
    v19 = v9 + v18;
    *v17 = 0x10000;
    *(v17 + 4) = vrev32_s8(vadd_s32(vdup_n_s32(v9 + v18), 0x400000104));
    *(v17 + 12) = 838860800;
    v20 = v9 + v18 + 314;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
    *(v17 + 176) = 0u;
    *(v17 + 192) = 0u;
    *(v17 + 208) = 0u;
    *(v17 + 224) = 0u;
    *(v17 + 240) = 0u;
    v21 = *(v8 + 336);
    v21[64] = bswap32(v19);
    v22 = *(v8 + 288);
    v21[65] = v22;
    if (v22)
    {
      v23 = *(v8 + 408);
      v24 = v21 + 67;
      do
      {
        v25 = *v23++;
        *(v24 - 1) = v18;
        *v24 = v25;
        v18 += v25;
        v24 += 2;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v20 = *(v8 + 344);
    v26 = *(v8 + 352);
    if (v11)
    {
      v27 = 0;
      v28 = *(v8 + 408);
      do
      {
        *(v26 + 4 * v27) = v20;
        v20 += *(v28 + 4 * v27++);
        v29 = *(v8 + 288);
      }

      while (v27 < v29);
    }

    else
    {
      v29 = 0;
    }

    *(v26 + 4 * v29) = v20;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 0x40000000;
  v31[2] = sub_2405213D0;
  v31[3] = &unk_278CA9490;
  v31[4] = v8;
  v32 = v20;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 1107296256;
  v33[2] = sub_240520E1C;
  v33[3] = &unk_28525D638;
  v33[4] = v31;
  v33[5] = v8;
  sub_240520244(v8, 3u, 0, v33, a5, a6, a7, a8);
LABEL_28:
  v30 = *(v8 + 224);

  dispatch_group_leave(v30);
}

ssize_t sub_2405213D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = fgetxattr(*(v1 + 244), "com.apple.ResourceFork", 0, 0, 0, 32);
  if (result == -1)
  {
    if (*__error() != 93)
    {
      v4 = *(v1 + 8);
      v5 = __error();
      v6 = strerror(*v5);
      sub_24051EB50(@"%s:%d: fgetxattr %s: %s\n", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1502, v4, v6);
    }
  }

  else if (result >= 1)
  {
    *(v1 + 324) = 1;
    return result;
  }

  v14 = *(v1 + 248);
  if (v14 != -1)
  {
    v20[0] = 0x300000002;
    v20[1] = 0;
    v20[2] = v2;
    v20[3] = 0;
    fcntl(v14, 42, v20);
  }

  v15 = *(v1 + 336);
  if (v15)
  {
    result = sub_24052158C(v1, *(v1 + 336), *(v1 + 332), 0);
    if ((result & 1) == 0)
    {
      return result;
    }

    v16 = (v1 + 336);
    v17 = (v1 + 332);
  }

  else
  {
    result = sub_24052158C(v1, *(v1 + 352), *(v1 + 344), 0);
    if (!result)
    {
      return result;
    }

    v16 = (v1 + 352);
    v17 = (v1 + 344);
  }

  v18 = *v17;
  sub_240524CA0(*v16);
  *v16 = 0;
  if (*(v1 + 288))
  {
    v19 = 0;
    while (1)
    {
      result = sub_24052158C(v1, *(*(v1 + 400) + 8 * v19), *(*(v1 + 408) + 4 * v19), v18);
      if (!result)
      {
        break;
      }

      v18 += *(*(v1 + 408) + 4 * v19);
      sub_240524CA0(*(*(v1 + 400) + 8 * v19));
      *(*(v1 + 400) + 8 * v19++) = 0;
      if (v19 >= *(v1 + 288))
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (!v15)
    {
      return sub_2405216F0(v1, 1);
    }

    result = sub_24052158C(v1, &unk_240525D98, 0x32uLL, v18);
    if (result)
    {
      return sub_2405216F0(v1, 1);
    }
  }

  return result;
}

BOOL sub_24052158C(uint64_t a1, const void *a2, size_t a3, off_t a4)
{
  v8 = *(a1 + 248);
  if ((v8 & 0x80000000) != 0)
  {
    if (a4 < 0x100000000)
    {
      v21 = *(a1 + 244);
      v22 = *(a1 + 8);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 0x40000000;
      v33[2] = sub_240521D88;
      v33[3] = &unk_278CA93B0;
      v33[4] = a1;
      v33[5] = a2;
      v33[6] = a3;
      v33[7] = a4;
      if (sub_24051ECE0(v21, 0, v22, (a1 + 323), v33) != -1)
      {
        return 1;
      }

      v23 = *(a1 + 8);
      v24 = __error();
      v25 = strerror(*v24);
      sub_24051EB50(@"%s:%d: fsetxattr %s: %s\n", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1324, v23, v25);
      v20 = *__error();
      v19 = a1;
    }

    else
    {
      v10 = __error();
      v11 = strerror(*v10);
      sub_24051EB50(@"%s:%d: fileOffset=%llu is too big: %s\n", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1315, a4, v11);
      v19 = a1;
      v20 = 22;
    }

    sub_240520C44(v19, v20);
    return 0;
  }

  else
  {

    return sub_240521CA0(a1, v8, a2, a3, a4);
  }
}

intptr_t sub_2405216F0(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x277D85DE8];
  sub_240521BD8(a1);
  result = *(a1 + 244);
  if (result == -1)
  {
    return result;
  }

  v12 = *(a1 + 160);
  if (*(v12 + 12))
  {
    v13 = (a1 + 240);
  }

  else
  {
    v13 = (v12 + 8);
  }

  v14 = *v13;
  if (v14)
  {
    goto LABEL_6;
  }

  v18 = *(v12 + 16);
  memset(v81, 170, sizeof(v81));
  switch(a2)
  {
    case 3:
      goto LABEL_34;
    case 2:
      if ((*(v12 + 14) & 1) == 0)
      {
        sub_24051EB50(@"%s:%d: Error: storing data in xattr not allowed\n", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1216);
        v14 = 45;
        goto LABEL_6;
      }

      v22 = **(a1 + 408);
      v21 = v22 + 16;
      v20 = malloc(v22 + 16);
      v23 = **(a1 + 400);
      memcpy(v20 + 2, v23, v22);
      sub_240524CA0(v23);
      **(a1 + 400) = 0;
      v18 = *(*(a1 + 160) + 16) - 1;
      LODWORD(result) = *(a1 + 244);
      v19 = 1;
      break;
    case 1:
      v19 = 0;
      if (*(a1 + 280))
      {
        v81[2] = *(a1 + 280);
        v20 = v81;
        v21 = 24;
      }

      else
      {
        v20 = v81;
        v21 = 16;
      }

      break;
    default:
      sub_24051EB50(@"%s:%d: Error: invalid close flag %d\n", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1237, a2);
      v14 = 22;
      goto LABEL_6;
  }

  *v20 = 1668116582;
  *(v20 + 1) = v18;
  v20[1] = *(a1 + 264);
  v24 = *(a1 + 8);
  bytes.tv_sec = MEMORY[0x277D85DD0];
  *&bytes.tv_usec = 0x40000000;
  v83 = sub_240521C7C;
  v84 = &unk_278CA9390;
  v85 = a1;
  v86 = v20;
  v87 = v21;
  v25 = sub_24051ECE0(result, 0, v24, (a1 + 323), &bytes);
  v14 = *__error();
  if (v19)
  {
    free(v20);
  }

  if (v25 == -1)
  {
    v36 = *(a1 + 8);
    v37 = __error();
    v79 = strerror(*v37);
    sub_24051EB50(@"%s:%d: fsetxattr %s: %s\n", v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1265, v36, v79);
  }

  else if (*(*(a1 + 160) + 12) == 1 && ftruncate(*(a1 + 244), 0) == -1)
  {
    v14 = *__error();
    v45 = *(a1 + 8);
    v46 = __error();
    v80 = strerror(*v46);
    sub_24051EB50(@"%s:%d: ftruncate %s: %s\n", v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1273, v45, v80);
  }

  else
  {
    v26 = *(a1 + 244);
    if (v26 != -1 && !sub_24051EE1C(0, v26, 0))
    {
      goto LABEL_34;
    }

    v14 = *__error();
    v27 = *(a1 + 8);
    v28 = __error();
    v78 = strerror(*v28);
    sub_24051EB50(@"%s:%d: setBsdflags %s: %s\n", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1280, v27, v78);
  }

  if (!v14)
  {
LABEL_34:
    fsync(*(a1 + 244));
    if (((*(a1 + 254) & 1) != 0 || *(*(a1 + 160) + 12) == 1) && (v54 = *(a1 + 56), bytes.tv_sec = *(a1 + 48), *(&bytes.tv_usec + 1) = -1431655766, bytes.tv_usec = v54 / 1000, v55 = *(a1 + 72), v83 = *(a1 + 64), HIDWORD(v84) = -1431655766, LODWORD(v84) = v55 / 1000, futimes(*(a1 + 244), &bytes) == -1))
    {
      v14 = *__error();
      v56 = *(a1 + 8);
      v57 = *(a1 + 244);
      v58 = __error();
      v59 = strerror(*v58);
      sub_24051EB50(@"%s:%d: futimes %s (fd %d): %s\n", v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1156, v56, v57, v59, v81[0], v81[1], v81[2]);
    }

    else
    {
      v14 = 0;
    }

    if (*(a1 + 323) == 1 && fchmod(*(a1 + 244), *(a1 + 20)) == -1)
    {
      v14 = *__error();
      v67 = *(a1 + 8);
      v68 = *(a1 + 244);
      v69 = __error();
      v70 = strerror(*v69);
      sub_24051EB50(@"%s:%d: fchmod %s (fd %d): %s\n", v71, v72, v73, v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1164, v67, v68, v70);
    }

    if (!v14)
    {
      goto LABEL_7;
    }
  }

LABEL_6:
  sub_240520C44(a1, v14);
LABEL_7:
  v15 = *(a1 + 24);
  LODWORD(bytes.tv_sec) = *(a1 + 16);
  *(&bytes.tv_sec + 4) = v15;
  v16 = CFDataCreate(0, &bytes, 12);
  os_unfair_lock_lock(&unk_27E4B5950);
  CFDictionaryRemoveValue(qword_27E4B5958, v16);
  os_unfair_lock_unlock(&unk_27E4B5950);
  CFRelease(v16);
  v17 = *(a1 + 244);
  if (v17 != -1)
  {
    close(v17);
  }

  *(a1 + 244) = -1;
  if (qword_27E4B5970 != -1)
  {
    dispatch_once(&qword_27E4B5970, &unk_28525D738);
  }

  return dispatch_semaphore_signal(qword_27E4B5978);
}

intptr_t sub_240521BD8(uint64_t a1)
{
  result = *(a1 + 248);
  if (result != -1)
  {
    fsync(result);
    result = *(a1 + 248);
    if (result != -1)
    {
      result = close(result);
    }

    *(a1 + 248) = -1;
  }

  if (*(a1 + 252) == 1)
  {
    *(a1 + 252) = 0;
    if (qword_27E4B5970 != -1)
    {
      dispatch_once(&qword_27E4B5970, &unk_28525D738);
    }

    v3 = qword_27E4B5978;

    return dispatch_semaphore_signal(v3);
  }

  return result;
}

BOOL sub_240521CA0(int *a1, uint64_t a2, const void *a3, size_t a4, off_t a5)
{
  do
  {
    *__error() = 0;
    v10 = pwrite(a2, a3, a4, a5);
  }

  while (*__error() == 35);
  if (v10 != a4)
  {
    if (v10 == -1)
    {
      v11 = *__error();
    }

    else
    {
      v11 = 28;
    }

    v12 = *(a1 + 1);
    v13 = strerror(v11);
    sub_24051EB50(@"%s:%d: Error: failed to write %zu bytes to %s(%d) at %llu: %s\n", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1302, a4, v12, a2, a5, v13);
    sub_240520C44(a1, v11);
  }

  return v10 == a4;
}

_DWORD *sub_240521DCC(_DWORD *result)
{
  v1 = result;
  result[90] = 0;
  v2 = *(result + 33) - *(result + 34);
  if (!v2)
  {
    *(result + 46) = 0;
    result[91] = 0;
LABEL_8:
    *(v1 + 376) = 0;
    return result;
  }

  if (v2 >= 0x10000)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = result[66] - result[68];
  }

  *(v1 + 364) = v3;
  if (*(v1 + 304) == 1)
  {
    result = sub_240524AFC(v3, 1);
    *(v1 + 368) = result;
    goto LABEL_8;
  }

  v4 = sub_240524AFC(v3 + 1, 1);
  *v4 = *(*(v1 + 160) + 32);
  *(v1 + 368) = v4 + 1;
  *(v1 + 376) = 1;
  LODWORD(v4) = *(v1 + 364);
  *(v1 + 392) = v4;
  result = sub_240524AFC(v4, 1);
  *(v1 + 384) = result;
  return result;
}

uint64_t sub_240521E70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 244);
  v3 = *(v1 + 264);
  v5[0] = 0x300000002;
  v5[1] = 0;
  v5[2] = v3;
  v5[3] = 0;
  return fcntl(v2, 42, v5);
}

void sub_240521EBC(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_fetch_add_explicit(a2, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
  {
    sub_240521ED8(a2);
  }
}

void sub_240521ED8(uint64_t a1)
{
  if (qword_27E4B5968 != -1)
  {
    dispatch_once(&qword_27E4B5968, &unk_28525D718);
  }

  if (pthread_getspecific(qword_27E4B5960) != a1)
  {
    v18 = "incorrectly released";
    goto LABEL_42;
  }

  if ((*(a1 + 321) & 1) == 0)
  {
    v18 = "finalized before it was finished";
    goto LABEL_42;
  }

  if ((*(a1 + 322) & 1) == 0)
  {
    v18 = "finalized before it was closed";
LABEL_42:
    sub_24052046C(a1, v18, v3, v4, v5, v6, v7, v8);
  }

  if (*(a1 + 244) != -1)
  {
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s without closing data fd\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 737, *(a1 + 8));
  }

  if (*(a1 + 248) != -1)
  {
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s without closing rsrc fd\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 740, *(a1 + 8));
  }

  if (*(a1 + 256))
  {
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s that is still locked\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 743, *(a1 + 8));
  }

  if (*(a1 + 368))
  {
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s that is still has a curBuffer\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 746, *(a1 + 8));
    v9 = *(a1 + 368);
    if (*(a1 + 376) == 1)
    {
      --v9;
    }

    sub_240524CA0(v9);
  }

  if (*(a1 + 384))
  {
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s that is still has a compressionBuffer\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 754, *(a1 + 8));
    sub_240524CA0(*(a1 + 384));
  }

  sub_240524CA0(*(a1 + 336));
  sub_240524CA0(*(a1 + 352));
  v10 = *(a1 + 400);
  if (v10)
  {
    if (*(a1 + 288))
    {
      v11 = 0;
      do
      {
        sub_240524CA0(*(*(a1 + 400) + 8 * v11++));
      }

      while (v11 < *(a1 + 288));
      v10 = *(a1 + 400);
    }

    free(v10);
  }

  v12 = *(a1 + 408);
  if (v12)
  {
    free(v12);
  }

  *(a1 + 408) = 0;
  v13 = *(a1 + 8);
  if (v13)
  {
    free(v13);
  }

  *(a1 + 8) = 0;
  for (i = 176; i != 216; i += 8)
  {
    v15 = *(a1 + i);
    if (v15)
    {
      dispatch_release(v15);
    }

    *(a1 + i) = 0;
  }

  v16 = *(a1 + 216);
  if (v16)
  {
    dispatch_release(v16);
  }

  *(a1 + 216) = 0;
  v17 = *(a1 + 224);
  if (v17)
  {
    dispatch_release(v17);
  }

  free(a1);
}

atomic_ullong *sub_240522120(uint64_t a1, atomic_ullong *a2)
{
  result = a2;
  atomic_fetch_add_explicit(a2, 1uLL, memory_order_relaxed);
  return result;
}

void sub_24052213C(void *a1)
{
  v1 = a1[20];
  v2 = a1[27];
  v3 = a1[24];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = sub_2405221B8;
  v4[3] = &unk_278CA9310;
  v4[4] = a1;
  sub_240520A3C(v1, v2, v3, v4);
}

void sub_2405221B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  sub_240522240(v8, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8[20];
  v11 = v8[26];
  v10 = v8[27];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = sub_2405224F4;
  v12[3] = &unk_278CA92F0;
  v12[4] = v8;
  sub_240520A3C(v9, v10, v11, v12);
}

void sub_240522240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 324) == 1)
  {
    v34 = v11;
    v35 = v10;
    v36 = v8;
    v37 = v9;
    v13 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 328), &v13, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v13)
    {
      if (*(*(a1 + 160) + 12) == 1)
      {
        v14 = v26;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 0x40000000;
        v15 = &unk_278CA93D0;
        v16 = sub_2405225FC;
      }

      else
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 0x40000000;
        v25[2] = sub_240522670;
        v25[3] = &unk_278CA93F0;
        v25[4] = a1;
        v28 = MEMORY[0x277D85DD0];
        v29 = 1107296256;
        v30 = sub_240520E1C;
        v31 = &unk_28525D638;
        v32 = v25;
        v33 = a1;
        sub_240520244(a1, 3u, 0, &v28, a5, a6, a7, a8);
        *(a1 + 304) = 1;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 0x40000000;
        v27[2] = sub_240522C44;
        v27[3] = &unk_278CA9350;
        v27[4] = a1;
        v28 = MEMORY[0x277D85DD0];
        v29 = 1107296256;
        v30 = sub_240520E1C;
        v31 = &unk_28525D638;
        v32 = v27;
        v33 = a1;
        sub_240520244(a1, 3u, 0, &v28, v17, v18, v19, v20);
        if (*(a1 + 368))
        {
          *(a1 + 312) = *(a1 + 272) - *(a1 + 360);
          sub_240524CA0(*(a1 + 384));
          *(a1 + 384) = 0;
          *(a1 + 392) = 0;
        }

        v14 = v24;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 0x40000000;
        v15 = &unk_278CA9450;
        v16 = sub_2405226BC;
      }

      v14[2] = v16;
      v14[3] = v15;
      v14[4] = a1;
      dispatch_group_enter(*(a1 + 216));
      v21 = *(a1 + 160);
      v22 = *(a1 + 224);
      v23 = *(a1 + 192);
      v28 = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_2405209F0;
      v31 = &unk_28525D5D8;
      v32 = v14;
      v33 = a1;
      sub_240520A3C(v21, v22, v23, &v28);
    }
  }
}

uint64_t sub_2405224F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_2405216F0(v1, 3);
  dispatch_group_leave(**(v1 + 160));
  *(v1 + 321) = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v5 = sub_2405225E0;
  v6 = &unk_278CA92D0;
  v7 = v1;
  if (qword_27E4B5968 != -1)
  {
    dispatch_once(&qword_27E4B5968, &unk_28525D718);
  }

  v2 = qword_27E4B5960;
  pthread_setspecific(qword_27E4B5960, v1);
  v5(v4);
  return pthread_setspecific(v2, 0);
}

void sub_2405225E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (atomic_fetch_add_explicit(v1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
  {
    sub_240521ED8(v1);
  }
}

void *sub_2405225FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 292))
  {
    v2 = 0;
    do
    {
      sub_240524CA0(*(*(v1 + 400) + 8 * v2));
      *(*(v1 + 400) + 8 * v2++) = 0;
    }

    while (v2 < *(v1 + 292));
  }

  v3 = *(v1 + 368);
  if (v3)
  {
    sub_240524CA0((v3 - 1));
    *(v1 + 368) = 0;
  }

  result = *(v1 + 384);
  if (result)
  {
    result = sub_240524CA0(result);
    *(v1 + 384) = 0;
  }

  return result;
}

uint64_t sub_240522670(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 244);
  v3 = *(v1 + 264);
  v5[0] = 0x300000002;
  v5[1] = 0;
  v5[2] = v3;
  v5[3] = 0;
  return fcntl(v2, 42, v5);
}

void sub_2405226BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (*(v8 + 292))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(v8 + 160);
      if (*(v11 + 12))
      {
        v12 = (v8 + 240);
      }

      else
      {
        v12 = (v11 + 8);
      }

      v13 = *v12;
      if (v13)
      {
        sub_240520C44(v8, v13);
        sub_24052109C(v8, 3, v22, v23, v24, v25, v26, v27);
        return;
      }

      v14 = *(*(v8 + 400) + 8 * v9);
      if (*(v8 + 264) - v10 >= 0x10000)
      {
        v15 = 0x10000;
      }

      else
      {
        v15 = *(v8 + 264) - v10;
      }

      v16 = *(*(v8 + 408) + 4 * v9);
      if (*v14 == *(v11 + 32))
      {
        if (v16 != v15 + 1)
        {
          __assert_rtn("decompressIfNecessary_block_invoke_3", "StreamCompressor.cpp", 1406, "bufSz == uncmpSize + 1");
        }

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 0x40000000;
        v33[2] = sub_240522990;
        v33[3] = &unk_278CA9410;
        v33[4] = v8;
        v33[5] = v14;
        v34 = v15;
        v35 = v10;
        v36 = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38 = sub_240520E1C;
        v39 = &unk_28525D638;
        v40 = v33;
        v41 = v8;
        v17 = &v36;
        v18 = v8;
        v19 = 3;
      }

      else
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 0x40000000;
        v28[2] = sub_2405229DC;
        v28[3] = &unk_278CA9430;
        v28[4] = v8;
        v28[5] = v14;
        v29 = v16;
        v30 = v15;
        v31 = v10;
        v32 = v9;
        v20 = sub_240524AFC(v15, 0);
        if (!v20)
        {
          v21 = *(*(v8 + 160) + 56);
          v36 = MEMORY[0x277D85DD0];
          v37 = 1107296256;
          v38 = sub_2405208EC;
          v39 = &unk_28525D5A8;
          v42 = v21;
          v43 = v15;
          v40 = v28;
          v41 = v8;
          v17 = &v36;
          v18 = v8;
          v19 = 2;
          goto LABEL_16;
        }

        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 1107296256;
        v44[2] = sub_240520870;
        v44[3] = &unk_28525D578;
        v44[4] = v28;
        v44[5] = v20;
        v17 = v44;
        v18 = v8;
        v19 = 2;
      }

      v21 = 0;
LABEL_16:
      sub_240520244(v18, v19, v21, v17, a5, a6, a7, a8);
      *(*(v8 + 400) + 8 * v9) = 0;
      v10 += v15;
      ++v9;
    }

    while (v9 < *(v8 + 292));
  }
}

void *sub_240522990(uint64_t a1)
{
  sub_240521CA0(*(a1 + 32), *(*(a1 + 32) + 244), (*(a1 + 40) + 1), *(a1 + 48), *(a1 + 52));
  v2 = *(a1 + 40);

  return sub_240524CA0(v2);
}

void sub_2405229DC(uint64_t a1, uint8_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(*(v12 + 160) + 24);
  v15 = *(a1 + 48);
  v14 = *(a1 + 52);
  if (v13 <= 773)
  {
    if (v13 == 460)
    {
      v16 = 0;
      goto LABEL_12;
    }

    if (v13 == 767)
    {
      v16 = 517;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v13)
    {
      case 1535:
        v16 = 1794;
        goto LABEL_12;
      case 1279:
        v16 = 2049;
        goto LABEL_12;
      case 774:
        v16 = 2304;
LABEL_12:
        v17 = v13 == 767;
        v18 = v13 == 767;
        if (v17)
        {
          v19 = v15 - 2;
        }

        else
        {
          v19 = v15;
        }

        v20 = sub_240523D98(v16, (v11 + 2 * v18), v19, a2, v14, 2);
        goto LABEL_16;
    }
  }

  sub_24051EB50(@"%s:%d: Error: unknown compression scheme %llu\n", a2, a3, a4, v14, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 207, *(*(v12 + 160) + 24));
  v20 = 0;
LABEL_16:
  sub_240524CA0(*(a1 + 40));
  v28 = *(a1 + 52);
  if (v20 == v28)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 1107296256;
    v31[2] = sub_240522BF4;
    v31[3] = &unk_28525D668;
    v31[5] = v12;
    v31[6] = a2;
    v29 = *(a1 + 56);
    v32 = v20;
    v33 = v29;
    v31[4] = a3;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 1107296256;
    v34[2] = sub_240520E1C;
    v34[3] = &unk_28525D638;
    v34[4] = v31;
    v34[5] = v12;
    sub_240520244(v12, 3u, 0, v34, v24, v25, v26, v27);
  }

  else
  {
    sub_24051EB50(@"%s:%d: Error: chunk %d of %s decompressed to %u, expected %u\n", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1422, *(a1 + 60), *(v12 + 8), v20, v28);
    sub_240520C44(v12, 22);
    v30 = *(a3 + 16);

    v30(a3);
  }
}

uint64_t sub_240522BF4(uint64_t a1)
{
  sub_240521CA0(*(a1 + 40), *(*(a1 + 40) + 244), *(a1 + 48), *(a1 + 56), *(a1 + 60));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t CreateStreamCompressor(int a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v156 = *MEMORY[0x277D85DE8];
  if (!a4 || !a5)
  {
    return v5;
  }

  v11 = rindex(a2, 47);
  if (v11)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = a2;
  }

  if (*v12 == 46 && v12[1] == 95)
  {
    return 0;
  }

  v150 = 0;
  if ((a5 - 536870913) < 0xFFFFFFFFE0004000)
  {
    goto LABEL_19;
  }

  v13 = *(a4 + 80);
  if (!v13)
  {
    goto LABEL_19;
  }

  LOBYTE(__b.f_bsize) = 0;
  v14 = sub_24051FDA8(a2, a3, &__b);
  v15 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v14);
  v16 = v15;
  LOBYTE(v154.st_dev) = 1;
  v150 = 0;
  f_bsize = __b.f_bsize;
  if (*v13 && !sub_24051FE8C(v15, *v13, __b.f_bsize & 1, &v154, &v150))
  {
    v19 = *MEMORY[0x277D85DF8];
    v20 = "Failed to apply user rules.\n";
    v21 = 28;
LABEL_17:
    fwrite(v20, v21, 1uLL, v19);
    if (v16)
    {
      CFRelease(v16);
    }

    goto LABEL_19;
  }

  if (!sub_24051FE8C(v16, v13[1], f_bsize & 1, &v154, &v150))
  {
    v19 = *MEMORY[0x277D85DF8];
    v20 = "Failed to apply system rules.\n";
    v21 = 30;
    goto LABEL_17;
  }

  CFRelease(v16);
  if (v154.st_dev)
  {
    v18 = 0;
    goto LABEL_21;
  }

LABEL_19:
  if (*(a4 + 12))
  {
    return 0;
  }

  v18 = 1;
LABEL_21:
  v22 = calloc(1uLL, 0x1A8uLL);
  v5 = v22;
  if (!v22)
  {
    return v5;
  }

  *v22 = 1;
  v23 = v150;
  *(v22 + 59) = -208193560;
  *(v22 + 42) = -208193560;
  *(v22 + 244) = -1;
  v22[322] = 1;
  *(v22 + 1) = strdup(a2);
  *(v5 + 264) = a5;
  *(v5 + 160) = a4;
  *(v5 + 304) = v18;
  *(v5 + 280) = v23;
  dispatch_group_enter(*a4);
  if (!*(a4 + 64) || *(a4 + 72) && (v24 = sub_24051FDA8(*(v5 + 8), a3, &__b), (v25 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v24)) != 0) && (v26 = v25, v27 = CFSetContainsValue(*(a4 + 72), v25), CFRelease(v26), v27))
  {
    *(v5 + 320) = 1;
  }

  v28 = *(*(v5 + 160) + 40);
  v29 = MEMORY[0x277D85CD8];
  v30 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
  dispatch_set_target_queue(v30, v28);
  *(v5 + 176) = v30;
  v31 = *(*(v5 + 160) + 40);
  v32 = dispatch_queue_create(0, 0);
  dispatch_set_target_queue(v32, v31);
  *(v5 + 184) = v32;
  v33 = *(*(v5 + 160) + 40);
  v34 = dispatch_queue_create(0, v29);
  dispatch_set_target_queue(v34, v33);
  *(v5 + 192) = v34;
  v35 = *(*(v5 + 160) + 40);
  v36 = dispatch_queue_create(0, 0);
  dispatch_set_target_queue(v36, v35);
  *(v5 + 200) = v36;
  v37 = *(*(v5 + 160) + 48);
  v38 = dispatch_queue_create(0, 0);
  dispatch_set_target_queue(v38, v37);
  *(v5 + 208) = v38;
  *(v5 + 216) = dispatch_group_create();
  *(v5 + 224) = dispatch_group_create();
  if (fstat(a1, (v5 + 16)) == -1)
  {
    v42 = *__error();
    v52 = *(v5 + 8);
    v53 = __error();
    v54 = strerror(*v53);
    sub_24051EB50(@"%s:%d: fstat %s: %s\n", v55, v56, v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 659, v52, v54);
    goto LABEL_67;
  }

  if (qword_27E4B5970 != -1)
  {
    dispatch_once(&qword_27E4B5970, &unk_28525D738);
  }

  v39 = qword_27E4B5978;
  dispatch_semaphore_wait(qword_27E4B5978, 0xFFFFFFFFFFFFFFFFLL);
  if ((*(v5 + 304) & 1) == 0)
  {
    dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
    *(v5 + 252) = 1;
  }

  if (write(a1, 0, 0))
  {
    if (*__error() == 9)
    {
      memset(&__b, 170, 0x400uLL);
      if (fcntl(a1, 50, &__b) != -1)
      {
        v40 = *(v5 + 8);
        v152[0] = MEMORY[0x277D85DD0];
        v152[1] = 0x40000000;
        v152[2] = sub_240522130;
        v152[3] = &unk_278CA9330;
        v152[4] = &__b;
        v41 = sub_24051ECE0(-1, &__b, v40, (v5 + 323), v152);
        *(v5 + 244) = v41;
        if (v41 == -1)
        {
          v42 = *__error();
          v43 = *(v5 + 8);
          v44 = __error();
          v148 = strerror(*v44);
          sub_24051EB50(@"%s:%d: open %s (%s): %s\n", v45, v46, v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1082, &__b, v43, v148);
          goto LABEL_49;
        }

LABEL_39:
        if (*(v5 + 252) != 1 || *(*(v5 + 160) + 15) != 1 || *(v5 + 248) != -1)
        {
          goto LABEL_61;
        }

        memset(&__b, 170, 0x400uLL);
        v63.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v63.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v154.st_blksize = v63;
        *v154.st_qspare = v63;
        v154.st_birthtimespec = v63;
        *&v154.st_size = v63;
        v154.st_mtimespec = v63;
        v154.st_ctimespec = v63;
        *&v154.st_uid = v63;
        v154.st_atimespec = v63;
        *v153.st_qspare = v63;
        *&v154.st_dev = v63;
        *&v153.st_size = v63;
        *&v153.st_blksize = v63;
        v153.st_ctimespec = v63;
        v153.st_birthtimespec = v63;
        v153.st_mtimespec = v63;
        *&v153.st_uid = v63;
        v153.st_atimespec = v63;
        *&v153.st_dev = v63;
        if (fcntl(*(v5 + 244), 50, &__b))
        {
          v42 = *__error();
          v64 = __error();
          v144 = strerror(*v64);
          sub_24051EB50(@"%s:%d: fcntl F_GETPATH %s: %s\n", v65, v66, v67, v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 976, &__b, v144);
        }

        else
        {
          snprintf(&__b, 0x400uLL, "%s%s", &__b, "/..namedfork/rsrc");
          v101 = open(&__b, 770);
          *(v5 + 248) = v101;
          if (v101 != -1)
          {
            if (fstat(*(v5 + 244), &v153) || fstat(*(v5 + 248), &v154) || v153.st_ino == v154.st_ino)
            {
              goto LABEL_61;
            }

            close(*(v5 + 248));
            *(v5 + 248) = -1;
            v42 = 35;
LABEL_45:
            sub_240520C44(v5, v42);
LABEL_50:
            v99 = *(v5 + 244);
            if (v99 != -1)
            {
              close(v99);
            }

            *(v5 + 244) = -1;
            v100 = *(v5 + 248);
            if (v100 != -1)
            {
              close(v100);
            }

            *(v5 + 248) = -1;
            if (*(v5 + 252) == 1)
            {
              dispatch_semaphore_signal(v39);
            }

            dispatch_semaphore_signal(v39);
            goto LABEL_67;
          }

          v42 = *__error();
          v135 = *(v5 + 8);
          v136 = __error();
          v149 = strerror(*v136);
          sub_24051EB50(@"%s:%d: open %s (%s): %s\n", v137, v138, v139, v140, v141, v142, v143, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 984, &__b, v135, v149);
        }

        if (!v42)
        {
          goto LABEL_61;
        }

        goto LABEL_45;
      }

      v42 = *__error();
      v90 = *(v5 + 8);
      v91 = __error();
      v147 = strerror(*v91);
      sub_24051EB50(@"%s:%d: fcntl %s: %s\n", v92, v93, v94, v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1072, v90, v147);
    }

    else
    {
      v42 = *__error();
      v72 = *(v5 + 8);
      v73 = __error();
      v145 = strerror(*v73);
      sub_24051EB50(@"%s:%d: write %s: %s\n", v74, v75, v76, v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1065, v72, v145);
    }
  }

  else
  {
    v62 = dup(a1);
    *(v5 + 244) = v62;
    if (v62 != -1)
    {
      goto LABEL_39;
    }

    v42 = *__error();
    v81 = *(v5 + 8);
    v82 = __error();
    v146 = strerror(*v82);
    sub_24051EB50(@"%s:%d: dup %s: %s\n", v83, v84, v85, v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1060, v81, v146);
  }

LABEL_49:
  if (v42)
  {
    goto LABEL_50;
  }

LABEL_61:
  *(v5 + 322) = 0;
  *(v5 + 253) = 0;
  v102 = *(v5 + 244);
  if (v102 == -1)
  {
    v42 = 22;
    goto LABEL_67;
  }

  memset(&__b, 170, sizeof(__b));
  if (fstatfs(v102, &__b) != -1)
  {
    if ((__b.f_flags & 0x80) != 0)
    {
      *(v5 + 253) = 1;
    }

    goto LABEL_70;
  }

  v42 = *__error();
  v103 = *(v5 + 8);
  v104 = __error();
  v105 = strerror(*v104);
  sub_24051EB50(@"%s:%d: fstatfs %s: %s\n", v106, v107, v108, v109, v110, v111, v112, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 1029, v103, v105);
  if (v42)
  {
LABEL_67:
    sub_240520C44(v5, v42);
    sub_24052109C(v5, 3, v113, v114, v115, v116, v117, v118);
    sub_24052213C(v5);
    return 0;
  }

LABEL_70:
  v120 = *(v5 + 24);
  __b.f_bsize = *(v5 + 16);
  *&__b.f_iosize = v120;
  v121 = CFDataCreate(0, &__b, 12);
  os_unfair_lock_lock(&unk_27E4B5950);
  Mutable = qword_27E4B5958;
  if (!qword_27E4B5958)
  {
    *&__b.f_bsize = 0;
    __b.f_blocks = sub_240522120;
    __b.f_bavail = 0;
    __b.f_files = 0;
    __b.f_bfree = sub_240521EBC;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], &__b);
    qword_27E4B5958 = Mutable;
  }

  CFDictionarySetValue(Mutable, v121, v5);
  os_unfair_lock_unlock(&unk_27E4B5950);
  CFRelease(v121);
  if (*(v5 + 304) == 1)
  {
    v151[0] = MEMORY[0x277D85DD0];
    v151[1] = 0x40000000;
    v151[2] = sub_240521E70;
    v151[3] = &unk_278CA92B0;
    v151[4] = v5;
    *&__b.f_bsize = MEMORY[0x277D85DD0];
    __b.f_blocks = 1107296256;
    __b.f_bfree = sub_240520E1C;
    __b.f_bavail = &unk_28525D638;
    __b.f_files = v151;
    __b.f_ffree = v5;
    sub_240520244(v5, 3u, 0, &__b, v123, v124, v125, v126);
  }

  else
  {
    v127 = *(v5 + 264);
    v128 = (v127 + 0xFFFF) >> 16;
    *(v5 + 288) = v128;
    *(v5 + 400) = calloc(v128, 8uLL);
    *(v5 + 408) = calloc(*(v5 + 288), 4uLL);
    v129 = *(v5 + 288);
    if (*(*(v5 + 160) + 28) == 0x20000)
    {
      v130 = 8 * v129 + 264;
      *(v5 + 332) = v130;
      *(v5 + 336) = sub_240524AFC(v130, 1);
      v131 = *(v5 + 332) + 50;
    }

    else
    {
      v132 = 4 * v129 + 4;
      *(v5 + 344) = v132;
      *(v5 + 352) = sub_240524AFC(v132, 1);
      v131 = *(v5 + 344);
    }

    if (*(*(v5 + 160) + 24) == 460)
    {
      v133 = -1;
    }

    else
    {
      v134 = (1374389535 * (*(a4 + 20) * ((v127 + 4095) >> 12))) >> 32;
      v133 = ((v134 << 7) & 0xFFFFF000) - v131;
      if (v133 <= 0xECA)
      {
        v133 = 3786;
      }

      if (((v134 << 7) & 0xFFFFF000) == 0)
      {
        v133 = 3786;
      }
    }

    *(v5 + 296) = v133;
  }

  sub_240521DCC(v5);
  return v5;
}

uint64_t WriteToStreamCompressor(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    LODWORD(v12) = 22;
    goto LABEL_53;
  }

  if (*(a1 + 322) == 1)
  {
    sub_24052046C(a1, "written to after it was closed", a3, a4, a5, a6, a7, a8);
  }

  v9 = *(a1 + 160);
  v10 = *(v9 + 12);
  v11 = (v9 + 8);
  if (v10)
  {
    v11 = (a1 + 240);
  }

  LODWORD(v12) = *v11;
  if (*v11)
  {
LABEL_53:
    *__error() = v12;
    return -1;
  }

  v13 = a3;
  if (!a3)
  {
    return 0;
  }

  v14 = *(a1 + 264);
  if (*(a1 + 272) + a3 > v14)
  {
    sub_24051EB50(@"%s:%d: Error: wrote %llu bytes to file of size %llu\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 819, *(a1 + 272) + a3, v14);
    v12 = 22;
    goto LABEL_52;
  }

  v16 = a2;
  if (v10 && (*(a1 + 324) & 1) != 0)
  {
    LODWORD(v12) = 28;
    goto LABEL_53;
  }

  v15 = 0;
  v44 = v46;
  do
  {
    sub_240522240(a1, a2, a3, a4, a5, a6, a7, a8);
    v17 = *(a1 + 360);
    v18 = (*(a1 + 364) - v17);
    if (v13 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v13;
    }

    memcpy((*(a1 + 368) + v17), v16, v19);
    v20 = (v19 + *(a1 + 360));
    *(a1 + 360) = v20;
    *(a1 + 272) += v19;
    if (*(a1 + 364) == v20)
    {
      v21 = *(a1 + 368);
      if (!v21)
      {
        __assert_rtn("emitCurBuffer", "StreamCompressor.cpp", 540, "curBuffer");
      }

      if (*(a1 + 304) == 1)
      {
        v22 = v21 - *(a1 + 376);
        v23 = *(a1 + 312);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 0x40000000;
        v50[2] = sub_240520DD4;
        v50[3] = &unk_278CA9270;
        v50[4] = a1;
        v50[5] = v21;
        v51 = v20;
        v50[6] = v23;
        v50[7] = v22;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 1107296256;
        v52[2] = sub_240520E1C;
        v52[3] = &unk_28525D638;
        v52[4] = v50;
        v52[5] = a1;
        sub_240520244(a1, 3u, 0, v52, a5, a6, a7, a8);
        *(a1 + 312) += v20;
LABEL_47:
        ++*(a1 + 416);
        *(a1 + 384) = 0;
        *(a1 + 392) = 0;
        *(a1 + 360) = 0;
        *(a1 + 368) = 0;
        sub_240521DCC(a1);
        goto LABEL_48;
      }

      if (*(a1 + 320))
      {
LABEL_46:
        v31 = *(a1 + 416);
        v32 = *(a1 + 384);
        v33 = *(a1 + 392);
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 0x40000000;
        v46[0] = sub_240520E98;
        v46[1] = &unk_278CA9290;
        v46[2] = a1;
        v46[3] = v21;
        v47 = v31;
        v48 = v20;
        v46[4] = v32;
        v49 = v33;
        sub_240520244(a1, 0, 0, v45, a5, a6, a7, a8);
        goto LABEL_47;
      }

      v24 = *(*(a1 + 160) + 64);
      if (v20 < 0x1C || v24 == 0)
      {
        goto LABEL_45;
      }

      v26 = *v21;
      if (*v21 == -1095041334)
      {
        v28 = bswap32(v21[1]);
        v29 = bswap32(v21[4]);
      }

      else
      {
        v27 = *(a1 + 368);
        if (v26 != -889275714)
        {
LABEL_35:
          if ((v26 + 17958194) < 2)
          {
            v30 = v27[3];
          }

          else
          {
            if (v26 != -822415874 && v26 != -805638658)
            {
              goto LABEL_45;
            }

            v30 = bswap32(v27[3]);
          }

          if (v30)
          {
            if (v30 < 0x20)
            {
              if ((v24 >> v30))
              {
                goto LABEL_44;
              }
            }

            else
            {
              sub_24051EB50(@"%s:%d: Error: file type of %s is out of range\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 365, *(a1 + 8));
            }
          }

LABEL_45:
          *(a1 + 320) = 1;
          goto LABEL_46;
        }

        v28 = v21[1];
        v29 = v21[4];
      }

      if (v28 > 0x13)
      {
LABEL_44:
        *(a1 + 324) = 1;
        goto LABEL_45;
      }

      if (v29 + 28 > v20)
      {
        sub_24051EB50(@"%s:%d: Error: the first mach header of %s is not in the first %zu bytes, assuming we need to skip it\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c", 333, *(a1 + 8), v20, v44);
        goto LABEL_44;
      }

      v27 = (v21 + v29);
      v26 = *v27;
      goto LABEL_35;
    }

LABEL_48:
    v15 += v19;
    v16 += v19;
    v13 -= v19;
  }

  while (v13);
  v34 = *(a1 + 160);
  v35 = *(v34 + 12);
  v36 = (v34 + 8);
  if (v35)
  {
    v36 = (a1 + 240);
  }

  v12 = *v36;
  if (v12)
  {
LABEL_52:
    sub_240520C44(a1, v12);
    sub_24052109C(a1, 3, v37, v38, v39, v40, v41, v42);
    goto LABEL_53;
  }

  return v15;
}

uint64_t CloseStreamCompressor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = *(a1 + 160);
    if (*(a1 + 322) == 1)
    {
      sub_24052046C(a1, "double-closed", a3, a4, a5, a6, a7, a8);
    }

    *(a1 + 322) = 1;
    v10 = (a1 + 240);
    if (!*(v9 + 12))
    {
      v10 = (v9 + 8);
    }

    v11 = *v10;
    if (*(a1 + 272) != *(a1 + 264) && v11 == 0)
    {
      if (*(v9 + 12) && (*(a1 + 324) & 1) != 0)
      {
        goto LABEL_14;
      }

      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v32 = v14;
      v33 = v14;
      v30 = v14;
      v31 = v14;
      *v29 = v14;
      backtrace(v29, 10);
      sub_24051EB50(@"%s:%d: %p %p %p %p %p %p %p %p %p %p: Error: wrote %llu bytes but expected %llu bytes\n", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp", 878, v29[0], v29[1], v30, v31, v32, *(&v32 + 1), *(&v33 + 1), *(a1 + 272), *(a1 + 264));
      v11 = 22;
    }

    else if (!v11)
    {
LABEL_14:
      sub_24052213C(a1);
      v13 = 0;
LABEL_17:
      DrainStreamCompressorQueue(v9);
      return v13;
    }

    sub_240520C44(a1, v11);
    sub_24052109C(a1, 3, v22, v23, v24, v25, v26, v27);
    sub_24052213C(a1);
    *__error() = v11;
    v13 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t sub_240523CD0(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 - 15) <= 0xFFFFFFF1)
  {
    sub_24051EB50(@"%s:%d: Error: type %d out of range\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 54, a1);
    goto LABEL_8;
  }

  v10 = &dword_240525DCC[3 * a1];
  if (!*v10 || !v10[1])
  {
    sub_24051EB50(@"%s:%d: Error: unknown compressor %d\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 61, a1);
LABEL_8:
    result = 0;
    v10 = dword_240525DCC;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = 1;
  if (a2)
  {
LABEL_9:
    *a2 = *v10;
  }

LABEL_10:
  if (a3)
  {
    *a3 = v10[1];
  }

  return result;
}

size_t sub_240523D98(size_t algorithm, const uint8_t *a2, unsigned int a3, uint8_t *a4, unsigned int a5, int a6)
{
  v6 = algorithm;
  if (algorithm)
  {
    v12 = compression_encode_scratch_buffer_size(algorithm);
    if (v12)
    {
      v13 = malloc(v12);
      if (!v13)
      {
        return 0;
      }
    }

    else
    {
      v13 = 0;
    }

    if (a6 == 1)
    {
      v14 = compression_encode_buffer(a4, a5, a2, a3, v13, v6);
    }

    else
    {
      v14 = compression_decode_buffer(a4, a5, a2, a3, v13, v6);
    }

    v6 = v14;
    if (v13)
    {
      free(v13);
    }
  }

  return v6;
}

int *sub_240523E4C(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a2;
  sub_240523CD0(*(*(a2 + 16) + 8), a1 + 2, a1 + 3, a4, a5, a6, a7, a8);
  v16 = a1[3];
  if (v16 == 196608 || v16 == 0x20000)
  {
    v17 = *(*(*a1 + 16) + 12) + 0xFFFFLL;
    if (HIWORD(v17))
    {
      __assert_rtn("CompressedFile", "ChunkCompression.cpp", 247, "numChunks <= UINT32_MAX");
    }

    a1[4] = v17 >> 16;
  }

  else if (v16 == 0x10000)
  {
    a1[4] = 1;
  }

  else
  {
    sub_24051EB50(@"%s:%d: %s: unknown chunking scheme %llu\n", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 253, *(*a1 + 8), v16);
  }

  return a1;
}

uint64_t sub_240523F28(uint64_t **a1, void *value, size_t size, uint64_t position, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  v13 = **a1;
  if (v13)
  {
    v43 = 0;
    v14 = (*(v13 + 16))(v13, position, size, value, &v43, a6, a7, a8);
    *a5 = v14;
    if (v14)
    {
      sub_24051EB50(@"%s:%d: %s: readRscData: (%llu, %zu), returned error [%d]", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 322, (*a1)[1], position, size, v14);
      return 0;
    }

    if (v43 != size)
    {
      sub_24051EB50(@"%s:%d: %s: readRscData: (%llu, %zu), returned size [%lu]\n", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 325, (*a1)[1], position, size, v43);
      *a5 = 5;
      return 0;
    }

    return 1;
  }

  v22 = v12[1];
  if (position < 0x100000000)
  {
    v25 = getxattr(v22, "com.apple.ResourceFork", value, size, position, 32);
    if (v25 == -1)
    {
      *a5 = *__error();
      v33 = (*a1)[1];
      v34 = __error();
      v42 = strerror(*v34);
      sub_24051EB50(@"%s:%d: %s: fgetxattr(%llu,%zu): %s\n", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 340, v33, position, size, v42);
      return 0;
    }

    if (v25 == size)
    {
      return 1;
    }

    sub_24051EB50(@"%s:%d: %s: fgetxattr(%llu,%zu) returned %zu\n", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 343, (*a1)[1], position, size, v25);
    result = 0;
    v24 = 5;
  }

  else
  {
    sub_24051EB50(@"%s:%d: %s: position=%lld is too big\n", value, size, value, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 333, v22, position);
    result = 0;
    v24 = 22;
  }

  *a5 = v24;
  return result;
}

void *sub_2405240FC(void *result, size_t __size)
{
  if (*(result + 8) < __size)
  {
    v2 = __size;
    v3 = result;
    v4 = result[3];
    if (v4)
    {
      free(v4);
    }

    result = malloc(v2);
    v3[3] = result;
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t sub_24052414C(unsigned int *a1, uint64_t a2, uint64_t __size, uint64_t a4, uint64_t a5, size_t *a6, uint64_t a7, uint64_t a8)
{
  value[1] = *MEMORY[0x277D85DE8];
  v75 = 0;
  v9 = a1[4];
  if (v9 <= a2)
  {
    sub_24051EB50(@"%s:%d: %s: attempting to read chunk %u from file with %u chunks\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 514, *(*a1 + 8), a2, v9);
    return 22;
  }

  v12 = a4;
  v14 = a1[3];
  if (v14 != 196608)
  {
    if (v14 != 0x20000)
    {
      if (v14 != 0x10000)
      {
        sub_24051EB50(@"%s:%d: %s: unknown chunking scheme %llu\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 579, *(*a1 + 8), v14);
        return 22;
      }

      v15 = *a1;
      v16 = *(*a1 + 16);
      v19 = *v16;
      v17 = v16 + 5;
      v18 = v19;
      *(a1 + 3) = v17;
      v20 = v19 - 16;
      if (v19 <= 0x10)
      {
        sub_24051EB50(@"%s:%d: %s: decmpfs xattr size (%u) should be greater than decmpfs disk header size (%zu)\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 524, *(v15 + 8), v18, 16);
        return 22;
      }

LABEL_26:
      v38 = a1[2];
      if (*v17 == v38)
      {
        v39 = v20 - 1;
        if (v39)
        {
          v40 = 0;
          v41 = 0;
          v42 = v17 + 1;
          do
          {
            v43 = a5 + 16 * v40;
            v44 = *v43;
            v45 = *(v43 + 8);
            if (v45 >= v39)
            {
              v46 = v39;
            }

            else
            {
              v46 = v45;
            }

            if (v44)
            {
              memcpy(v44, v42, v46);
            }

            v41 += v46;
            if (v40 + 1 >= v12)
            {
              break;
            }

            v42 += v46;
            v40 = 1;
            v39 -= v46;
          }

          while (v39);
        }

        else
        {
          v41 = 0;
        }

        goto LABEL_47;
      }

      *a6 = 0;
      if (v38 > 1278)
      {
        if (v38 == 1279)
        {
          v48 = 2049;
        }

        else
        {
          if (v38 != 1535)
          {
            goto LABEL_49;
          }

          v48 = 1794;
        }

        if (*(a1 + 7))
        {
          v47 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (v38 != 767)
        {
          if (v38 == 774)
          {
            v47 = 0;
            v48 = 2304;
LABEL_57:
            if (v12 == 1)
            {
              v49 = compression_decode_buffer(*a5, *(a5 + 8), &v17[v47], v20 - v47, *(a1 + 7), v48);
              if (v49)
              {
                v57 = v49;
                result = 0;
                *a6 = v57;
                return result;
              }

              v71 = *(*a1 + 8);
              v73 = v48;
              v63 = 616;
              goto LABEL_78;
            }

            if (__size >= 0x100000000)
            {
              sub_24051EB50(@"%s:%d: %s: vecTotal=%lld is too big for compression algorithm 0x%x\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 623, *(*a1 + 8), __size, v48);
              return 22;
            }

            v58 = a1[12];
            v59 = *(a1 + 5);
            if (v58 < __size)
            {
              if (v59)
              {
                free(v59);
              }

              v59 = malloc(__size);
              *(a1 + 5) = v59;
              a1[12] = __size;
              v58 = __size;
            }

            if (v59)
            {
              v60 = compression_decode_buffer(v59, v58, (*(a1 + 3) + v47), v20 - v47, *(a1 + 7), v48);
              if (v60)
              {
                v61 = v60;
                v62 = HIDWORD(v60);
                if (HIDWORD(v60))
                {
                  sub_24051EB50(@"%s:%d: %s: decmpSize=%zu is too big\n", v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 639, *(*a1 + 8), v60, v74);
                  return 22;
                }

                v41 = 0;
                v64 = *(a1 + 5);
                v65 = 1;
                do
                {
                  v66 = a5 + 16 * v62;
                  v67 = *v66;
                  v68 = *(v66 + 8);
                  if (v68 >= v61)
                  {
                    v69 = v61;
                  }

                  else
                  {
                    v69 = v68;
                  }

                  if (v67)
                  {
                    memcpy(v67, v64, v69);
                  }

                  v41 += v69;
                  v61 -= v69;
                  v64 += v69;
                  v70 = v65 & (v61 != 0);
                  v62 = 1;
                  v65 = 0;
                }

                while ((v70 & 1) != 0);
LABEL_47:
                result = 0;
                *a6 = v41;
                return result;
              }

              v71 = *(*a1 + 8);
              v73 = v48;
              v63 = 635;
LABEL_78:
              sub_24051EB50(@"%s:%d: %s: decode failed for compression algorithm 0x%x\n", v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", v63, v71, v73, v74);
              return 22;
            }

            sub_24051EB50(@"%s:%d: %s: allocating buffer of size %llu failed for compression algorithm 0x%x\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 628, *(*a1 + 8), __size, v48);
            return 12;
          }

LABEL_49:
          sub_24051EB50(@"%s:%d: %s: unknown compression scheme %llu\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 665, *(*a1 + 8), v38, v74);
          return 22;
        }

        if (*(a1 + 7))
        {
          if (v20 < 2 || (*v17 & 0xF) != 8)
          {
            sub_24051EB50(@"%s:%d: %s: invalid zlib header\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 605, *(*a1 + 8), v72, v74);
            return 22;
          }

          v47 = 2;
          v48 = 517;
          goto LABEL_57;
        }
      }

      sub_24051EB50(@"%s:%d: %s: workbuffer allocation failed\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 594, *(*a1 + 8), v72, v74);
      return 12;
    }

    value[0] = 0xAAAAAAAAAAAAAAAALL;
    if (sub_240523F28(a1, value, 8uLL, 8 * a2 + 264, &v75, a6, a7, a8))
    {
      sub_2405240FC(a1, HIDWORD(value[0]));
      v28 = *(a1 + 3);
      if (v28)
      {
        if (sub_240523F28(a1, v28, HIDWORD(value[0]), LODWORD(value[0]) + 260, &v75, v25, v26, v27))
        {
          result = 0;
          v20 = HIDWORD(value[0]);
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      sub_24051EB50(@"%s:%d: %s: allocating buffer of size %u failed\n", 0, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 540, *(*a1 + 8), HIDWORD(value[0]));
      goto LABEL_65;
    }

LABEL_23:
    v20 = 0;
    result = v75;
    goto LABEL_24;
  }

  value[0] = 0xAAAAAAAAAAAAAAAALL;
  if ((sub_240523F28(a1, value, 8uLL, 4 * a2, &v75, a6, a7, a8) & 1) == 0)
  {
    goto LABEL_23;
  }

  v29 = (HIDWORD(value[0]) - LODWORD(value[0]));
  if (HIDWORD(value[0]) <= LODWORD(value[0]))
  {
    sub_24051EB50(@"%s:%d: %s: resource fork offsets are out of order (offsets[1] (%u) <= offsets[0] (%u)) \n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 562, *(*a1 + 8), HIDWORD(value[0]), LODWORD(value[0]));
    v20 = 0;
    result = 22;
    goto LABEL_24;
  }

  sub_2405240FC(a1, (HIDWORD(value[0]) - LODWORD(value[0])));
  v36 = *(a1 + 3);
  if (!v36)
  {
    sub_24051EB50(@"%s:%d: %s: allocating buffer of size %u failed\n", 0, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 568, *(*a1 + 8), v29);
LABEL_65:
    v20 = 0;
    result = 12;
    goto LABEL_24;
  }

  v37 = sub_240523F28(a1, v36, v29, LODWORD(value[0]), &v75, v33, v34, v35);
  if (v37)
  {
    v20 = v29;
  }

  else
  {
    v20 = 0;
  }

  if (v37)
  {
    result = 0;
  }

  else
  {
    result = v75;
  }

LABEL_24:
  if (!result)
  {
    v17 = *(a1 + 3);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_240524720(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = 22;
  if (!a4 || !a5)
  {
    return v8;
  }

  v12 = *(*(a1 + 16) + 12);
  if (v12 <= a2)
  {
    v8 = 0;
    *a6 = 0;
    return v8;
  }

  if (((a3 + a2) >> 64))
  {
    sub_24051EB50(@"%s:%d: add overflow: offset %llu, totalSize %llu\n", a1, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 821, a2, a3);
    return v8;
  }

  v13 = a4;
  if (v12 >= a3 + a2)
  {
    v14 = a3;
  }

  else
  {
    v14 = v12 - a2;
  }

  v63 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v61 = v15;
  *v62 = v15;
  v59 = v15;
  *v60 = v15;
  sub_240523E4C(&v59, a1, a3, a4, a5, a6, a7, a8);
  v60[1] = 0;
  LODWORD(v61[0]) = 0;
  v61[1] = 0;
  LODWORD(v62[0]) = 0;
  v62[1] = 0;
  v63 = 0;
  if (SDWORD2(v59) <= 773)
  {
    if (DWORD2(v59) == 460)
    {
      goto LABEL_23;
    }

    if (DWORD2(v59) != 767)
    {
      goto LABEL_22;
    }

    v23 = COMPRESSION_ZLIB;
  }

  else
  {
    switch(DWORD2(v59))
    {
      case 0x5FF:
        v23 = COMPRESSION_LZBITMAP;
        break;
      case 0x4FF:
        v23 = COMPRESSION_LZFSE;
        break;
      case 0x306:
        v23 = 2304;
        break;
      default:
LABEL_22:
        sub_24051EB50(@"%s:%d: %s: unknown compression scheme %llu\n", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 470, *(v59 + 8), DWORD2(v59));
        goto LABEL_23;
    }
  }

  v24 = compression_decode_scratch_buffer_size(v23);
  if (v24)
  {
    v25 = v24;
    v62[1] = malloc(v24);
    v63 = v25;
  }

LABEL_23:
  v26 = calloc(v13 + 1, 0x10uLL);
  if (!v26)
  {
    sub_24051EB50(@"%s:%d: allocation of %zu bytes failed\n", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 682, 16 * (v13 + 1));
    v8 = 12;
    goto LABEL_73;
  }

  v34 = v26;
  if (!a2)
  {
    v35 = 0;
    v36 = 0;
LABEL_31:
    v38 = 0;
    v37 = 0x10000;
    goto LABEL_32;
  }

  if (HIWORD(a2))
  {
    sub_24051EB50(@"%s:%d: invalid offset: %llu\n", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp", 696, a2);
    goto LABEL_72;
  }

  v36 = a2 >> 16;
  v35 = a2;
  if (!a2)
  {
    goto LABEL_31;
  }

  *v26 = 0;
  v26[1] = a2;
  v37 = 0x10000 - a2;
  v38 = 1;
LABEL_32:
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = v35;
  v57 = v35;
  v58 = v35;
  while (1)
  {
    v43 = &a5[2 * v40];
    v44 = *v43;
    v45 = v43[1] - v41;
    if (v45 >= v37)
    {
      v45 = v37;
    }

    if (v45 >= v14)
    {
      v45 = v14;
    }

    v46 = (v34 + 16 * v38);
    if (v44)
    {
      v47 = v44 + v41;
    }

    else
    {
      v47 = 0;
    }

    *v46 = v47;
    v46[1] = v45;
    v14 -= v45;
    if (v45 + v41 == v43[1])
    {
      ++v40;
      v41 = 0;
    }

    else
    {
      v41 += v45;
    }

    v48 = v37 == v45 || v14 == 0;
    if (!v48 && v40 != v13)
    {
      goto LABEL_63;
    }

    v50 = v45 + v42;
    v51 = v38 + 1;
    while (1)
    {
      v52 = v34 + 16 * v51;
      if (*(v52 - 16))
      {
        break;
      }

      v50 -= *(v52 - 8);
      v48 = v51 == 1;
      v51 = 1;
      if (v48)
      {
        goto LABEL_63;
      }
    }

    v64 = 0;
    if (v13 != 1 || !v58 || v51 != 2 || *v34 || (v53 = *(v34 + 24) + *(v34 + 8), v53 > a5[1]))
    {
      v54 = sub_24052414C(&v59, v36, v50, v51, v34, &v64, v32, v33);
      if (v54)
      {
        break;
      }

      goto LABEL_62;
    }

    *v34 = *a5;
    *(v34 + 8) = v53;
    v54 = sub_24052414C(&v59, v36, v50, 1, v34, &v64, v32, v33);
    if (v54)
    {
      break;
    }

    memmove(*v34, (*v34 + v58), *(v34 + 8) - v58);
    v58 = 0;
LABEL_62:
    v39 += v64;
LABEL_63:
    v38 = 0;
    v42 = 0;
    v36 = (v36 + 1);
    if (v14)
    {
      v55 = v40 == v13;
    }

    else
    {
      v55 = 1;
    }

    v37 = 0x10000;
    if (v55)
    {
      free(v34);
      v8 = 0;
      *a6 = v39 - v57;
      goto LABEL_73;
    }
  }

  v8 = v54;
LABEL_72:
  free(v34);
LABEL_73:
  if (HIDWORD(v59) != 0x10000 && v60[1])
  {
    free(v60[1]);
  }

  if (v61[1])
  {
    free(v61[1]);
  }

  if (v62[1])
  {
    free(v62[1]);
  }

  return v8;
}

void *sub_240524AFC(unsigned int a1, int a2)
{
  if (a2)
  {
    if (qword_27E4B5980 != -1)
    {
      dispatch_once(&qword_27E4B5980, &unk_28525D758);
    }

    dispatch_semaphore_wait(qword_27E4B5988, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (qword_27E4B5980 != -1)
    {
      dispatch_once(&qword_27E4B5980, &unk_28525D758);
    }

    if (dispatch_semaphore_wait(qword_27E4B5988, 0))
    {
      return 0;
    }
  }

  return malloc(a1);
}

dispatch_semaphore_t sub_240524BAC()
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 8;
  *v14 = 0x1800000006;
  if (sysctl(v14, 2u, &v13, &v12, 0, 0) == -1)
  {
    v2 = __error();
    v3 = strerror(*v2);
    sub_24051EB50(@"%s:%d: sysctl: %s\n", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c", 33, v3);
    v13 = 0;
    goto LABEL_7;
  }

  v0 = v13;
  if (!(v13 >> 31))
  {
LABEL_7:
    v1 = 8194;
    goto LABEL_8;
  }

  v13 -= 0x80000000;
  if (v0 - 0x80000000 >= 0x20020000)
  {
    v1 = ((v0 - 0x80000000) >> 16);
  }

  else
  {
    v1 = 8194;
  }

LABEL_8:
  result = dispatch_semaphore_create(v1);
  qword_27E4B5988 = result;
  return result;
}

void *sub_240524CA0(void *result)
{
  if (result)
  {
    free(result);
    if (qword_27E4B5980 != -1)
    {
      dispatch_once(&qword_27E4B5980, &unk_28525D758);
    }

    v1 = qword_27E4B5988;

    return dispatch_semaphore_signal(v1);
  }

  return result;
}

int *sub_240524D00()
{
  v0 = getenv("AFSC_MAX_FDS");
  v1 = v0;
  if (v0)
  {
    v2 = atoi(v0);
    v3 = v2;
    sub_24051EB50(@"%s:%d: Error: using max fds override of %d\n", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c", 107, v2);
  }

  else
  {
    v3 = 96;
  }

  v56.rlim_cur = 0;
  v56.rlim_max = 0;
  if (getrlimit(8, &v56) == -1)
  {
    v47 = __error();
    v48 = strerror(*v47);
    return sub_24051EB50(@"%s:%d: getrlimit: %s\n", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c", 114, v48);
  }

  else
  {
    v11 = v3;
    rlim_cur = v56.rlim_cur;
    if (v56.rlim_max >= 0x2800)
    {
      rlim_max = 10240;
    }

    else
    {
      rlim_max = v56.rlim_max;
    }

    if (v56.rlim_cur >= rlim_max)
    {
      v14 = rlim_max;
    }

    else
    {
      v14 = v56.rlim_cur;
    }

    v15 = v14 + v11;
    if (v14 + v11 >= rlim_max)
    {
      v15 = rlim_max;
    }

    v56.rlim_cur = v15;
    if (setrlimit(8, &v56) == -1)
    {
      v16 = v56.rlim_cur;
      v17 = __error();
      v18 = strerror(*v17);
      sub_24051EB50(@"%s:%d: setrlimit(RLIMIT_NOFILE.rlim_cur = %lld): %s\n", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c", 128, v16, v18);
    }

    if (getrlimit(8, &v56) == -1)
    {
      v33 = __error();
      v34 = strerror(*v33);
      sub_24051EB50(@"%s:%d: getrlimit(RLIMIT_NOFILE): %s\n", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c", 131, v34);
    }

    v42 = v56.rlim_cur;
    if (v56.rlim_cur >= rlim_max)
    {
      v42 = rlim_max;
    }

    v43 = v42 - v14;
    if (v42 - v14 <= 0xA)
    {
      v43 = 10;
    }

    if (rlim_cur >= v42)
    {
      v44 = 10;
    }

    else
    {
      v44 = v43;
    }

    if (v44 >= v11)
    {
      v45 = v11;
    }

    else
    {
      v45 = v44;
    }

    if (v1)
    {
      if (v44 < v11)
      {
        sub_24051EB50(@"%s:%d: Error: could not use desired max fds of %d, using %llu instead\n", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c", 154, v11, v45);
      }
    }

    result = dispatch_semaphore_create(v45);
    qword_27E4B5978 = result;
  }

  return result;
}

uint64_t type5_handler_function(uint64_t a1)
{
  v24 = 0x34F2326416E94937;
  v2 = guarded_open_np();
  if (v2 == -1)
  {
    v15 = __error();
    v16 = strerror(*v15);
    syslog(3, "afsc open: %s", v16);
    return 0;
  }

  v3 = v2;
  v4 = v2;
  while (1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x4800000000;
    memset(v23, 0, sizeof(v23));
    if (read(v3, v23, 0x30uLL) != 48)
    {
      v5 = __error();
      v6 = strerror(*v5);
      syslog(3, "read request from %d: %s", v4, v6);
    }

    v7 = v21[4];
    if (v7 != 2)
    {
      break;
    }

    (*(a1 + 8))(v21[5], v21[6]);
    if (write(v3, v21 + 3, 0x30uLL) != 48)
    {
      v13 = __error();
      v14 = strerror(*v13);
      syslog(3, "send response to %d: %s", v3, v14);
    }

LABEL_10:
    _Block_object_dispose(&v20, 8);
  }

  if (v7 == 1)
  {
    v8 = *a1;
    v9 = v21[5];
    v10 = v21[6];
    v11 = v21[7];
    v12 = v21[8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2405250D0;
    v18[3] = &unk_28525D778;
    v18[4] = &v20;
    v19 = v3;
    v8(v9, v10, v11, v12, v18);
    goto LABEL_10;
  }

  syslog(3, "unknown request type from %d: %lld\n", v3, v7);
  _Block_object_dispose(&v20, 8);
  return 0;
}

void sub_2405250D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 48) = a4;
  *(*(*(a1 + 32) + 8) + 56) = a3;
  if (write(*(a1 + 40), (*(*(a1 + 32) + 8) + 24), 0x30uLL) != 48)
  {
    v5 = *(a1 + 40);
    v6 = __error();
    v7 = strerror(*v6);
    syslog(3, "send response to %d: %s", v5, v7);
  }
}

uint64_t VolumeSupportsCompression(const char *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if (qword_27E4B5990 != -1)
  {
    dispatch_once(&qword_27E4B5990, &unk_28525D7A8);
  }

  memset(__b, 170, sizeof(__b));
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v40.st_dev = v2;
  *&v40.st_uid = v2;
  v40.st_atimespec = v2;
  v40.st_mtimespec = v2;
  v40.st_ctimespec = v2;
  v40.st_birthtimespec = v2;
  *&v40.st_size = v2;
  *&v40.st_blksize = v2;
  *v40.st_qspare = v2;
  if (realpath_DARWIN_EXTSN(a1, __b))
  {
    if (lstat(__b, &v40) == -1)
    {
      v13 = 45;
LABEL_10:
      v14 = __error();
      v35 = strerror(*v14);
      sub_24051EB50(@"%s:%d: lstat %s: %s\n", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/pathUtils.c", v13, __b, v35);
      return 0;
    }

    st_dev = v40.st_dev;
    if (v40.st_dev == dword_27E4B5910)
    {
      strcpy(__b, "/");
    }

    else
    {
      for (i = &__b[strlen(__b) - 1]; i > __b; --i)
      {
        if (*i == 47)
        {
          *i = 0;
          if (lstat(__b, &v40) == -1)
          {
            v13 = 67;
            goto LABEL_10;
          }

          if (v40.st_dev != st_dev)
          {
            *i = 47;
            break;
          }
        }
      }
    }
  }

  else
  {
    memset(&v42, 170, sizeof(v42));
    if (statfs(a1, &v42))
    {
      v4 = __error();
      v33 = a1;
      v34 = strerror(*v4);
      v12 = 36;
LABEL_22:
      sub_24051EB50(@"%s:%d: statfs %s: %s\n", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/pathUtils.c", v12, v33, v34);
      return 0;
    }

    __strlcpy_chk();
  }

  v37 = 20;
  v38 = 0;
  v39 = 0;
  v40.st_dev = 5;
  *&v40.st_mode = xmmword_240525D40;
  v40.st_gid = 0;
  if (getattrlist(__b, &v40, &v37, 0x14uLL, 0))
  {
    if (*__error() != 22)
    {
      v24 = __error();
      v36 = strerror(*v24);
      sub_24051EB50(@"%s:%d: getattrlist %s: %s\n", v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/pathUtils.c", 131, __b, v36);
      return 0;
    }

    bzero(&v42, 0x878uLL);
    if (statfs(a1, &v42))
    {
      v23 = __error();
      v33 = a1;
      v34 = strerror(*v23);
      v12 = 128;
      goto LABEL_22;
    }

    if (*v42.f_fstypename != 7562856)
    {
      return 0;
    }
  }

  else if ((v38 & 0x10000) == 0)
  {
    return 0;
  }

  return 1;
}

int *sub_240525458()
{
  v0.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v0.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v11.st_blksize = v0;
  *v11.st_qspare = v0;
  v11.st_birthtimespec = v0;
  *&v11.st_size = v0;
  v11.st_mtimespec = v0;
  v11.st_ctimespec = v0;
  *&v11.st_uid = v0;
  v11.st_atimespec = v0;
  *&v11.st_dev = v0;
  result = stat("/", &v11);
  if (result == -1)
  {
    v2 = __error();
    v3 = strerror(*v2);
    result = sub_24051EB50(@"%s:%d: stat /: %s\n", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/pathUtils.c", 26, v3);
  }

  dword_27E4B5910 = v11.st_dev;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}