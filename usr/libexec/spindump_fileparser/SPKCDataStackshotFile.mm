@interface SPKCDataStackshotFile
+ (id)sampleStoreForFile:(const char *)file;
@end

@implementation SPKCDataStackshotFile

+ (id)sampleStoreForFile:(const char *)file
{
  v4 = open(file, 0);
  if (v4 == -1)
  {
    if (byte_100127EC8 == 1)
    {
      v20 = __error();
      v21 = *v20;
      v23 = sub_10003E080(v20, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000BEC08();
      }

      *__error() = v21;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_112;
    }

    v25 = *__error();
    v26 = *__error();
    v27 = __error();
    v28 = strerror(*v27);
    v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open %s: %d (%s)", file, v26, v28);
    if (v29)
    {
      v31 = v29;
      CStringPtr = CFStringGetCStringPtr(v29, 0x8000100u);
      if (!CStringPtr)
      {
        v60 = 2423272965;
LABEL_64:
        v33 = malloc_type_calloc(0x400uLL, 1uLL, v60);
        CFStringGetCString(v31, v33, 1024, 0x8000100u);
        v34 = v33;
        goto LABEL_65;
      }

LABEL_26:
      v33 = CStringPtr;
      v34 = 0;
LABEL_65:
      if (qword_100127ED0)
      {
        v61 = qword_100127ED0;
      }

      else
      {
        v61 = __stderrp;
      }

      fprintf(v61, "%s\n", v33);
      if (v34)
      {
        free(v34);
      }

      CFRelease(v31);
      goto LABEL_71;
    }

    v58 = sub_10003E080(0, v30);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      sub_1000BEC98();
    }

LABEL_59:

    if (qword_100127ED0)
    {
      v59 = qword_100127ED0;
    }

    else
    {
      v59 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v59);
LABEL_71:
    initForFileParsing = 0;
    *__error() = v25;
    goto LABEL_113;
  }

  v5 = v4;
  memset(&v103, 0, sizeof(v103));
  if (fstat(v4, &v103))
  {
    if (byte_100127EC8 == 1)
    {
      v6 = __error();
      v7 = *v6;
      v9 = sub_10003E080(v6, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000BE6BC();
      }

      *__error() = v7;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_111;
    }

    v11 = *__error();
    v12 = *__error();
    v13 = __error();
    v14 = strerror(*v13);
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to stat %s: %d (%s)", file, v12, v14);
    if (v15)
    {
      v17 = v15;
      v18 = CFStringGetCStringPtr(v15, 0x8000100u);
      if (!v18)
      {
        v19 = 1710749274;
LABEL_103:
        v42 = malloc_type_calloc(0x400uLL, 1uLL, v19);
        CFStringGetCString(v17, v42, 1024, 0x8000100u);
        v43 = v42;
        goto LABEL_104;
      }

      goto LABEL_39;
    }

    v57 = sub_10003E080(0, v16);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      sub_1000BE74C();
    }

    goto LABEL_86;
  }

  if (v103.st_size <= 15)
  {
    if (byte_100127EC8 == 1)
    {
      v35 = __error();
      v36 = *v35;
      v38 = sub_10003E080(v35, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000BEB20();
      }

      *__error() = v36;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_111;
    }

    v11 = *__error();
    v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s isn't big enough for a kcdata header (only %lld bytes)", file, v103.st_size);
    if (v40)
    {
      v17 = v40;
      v18 = CFStringGetCStringPtr(v40, 0x8000100u);
      if (!v18)
      {
        v19 = 3908451229;
        goto LABEL_103;
      }

LABEL_39:
      v42 = v18;
      v43 = 0;
LABEL_104:
      if (qword_100127ED0)
      {
        v84 = qword_100127ED0;
      }

      else
      {
        v84 = __stderrp;
      }

      fprintf(v84, "%s\n", v42);
      if (v43)
      {
        free(v43);
      }

      CFRelease(v17);
      goto LABEL_110;
    }

    v57 = sub_10003E080(0, v41);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      sub_1000BEB94();
    }

LABEL_86:

    if (qword_100127ED0)
    {
      v73 = qword_100127ED0;
    }

    else
    {
      v73 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v73);
LABEL_110:
    *__error() = v11;
LABEL_111:
    close(v5);
LABEL_112:
    initForFileParsing = 0;
    goto LABEL_113;
  }

  v44 = mmap(0, v103.st_size, 1, 1, v5, 0);
  close(v5);
  if (v44 == -1)
  {
    if (byte_100127EC8 == 1)
    {
      v63 = __error();
      v64 = *v63;
      v66 = sub_10003E080(v63, v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_1000BEA00();
      }

      *__error() = v64;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_112;
    }

    v25 = *__error();
    v68 = *__error();
    v69 = __error();
    v70 = strerror(*v69);
    v71 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to map %s: %d (%s)", file, v68, v70);
    if (v71)
    {
      v31 = v71;
      CStringPtr = CFStringGetCStringPtr(v71, 0x8000100u);
      if (!CStringPtr)
      {
        v60 = 656845922;
        goto LABEL_64;
      }

      goto LABEL_26;
    }

    v58 = sub_10003E080(0, v72);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      sub_1000BEA90();
    }

    goto LABEL_59;
  }

  if (v44 + 4 > (v44 + v103.st_size) || v44 + v44[1] + 16 > v44 + v103.st_size)
  {
    if (byte_100127EC8 == 1)
    {
      v45 = __error();
      v46 = *v45;
      v48 = sub_10003E080(v45, v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BE918();
      }

      *__error() = v46;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      goto LABEL_145;
    }

    v50 = *__error();
    v51 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not a kcdata file: kcdata in %s not valid (file length %lld)", file, v103.st_size);
    if (v51)
    {
      v53 = v51;
      v54 = CFStringGetCStringPtr(v51, 0x8000100u);
      if (v54)
      {
LABEL_54:
        v55 = v54;
        v56 = 0;
LABEL_138:
        if (qword_100127ED0)
        {
          v96 = qword_100127ED0;
        }

        else
        {
          v96 = __stderrp;
        }

        fprintf(v96, "%s\n", v55);
        if (v56)
        {
          free(v56);
        }

        CFRelease(v53);
        goto LABEL_144;
      }

      v95 = 503990187;
LABEL_137:
      v55 = malloc_type_calloc(0x400uLL, 1uLL, v95);
      CFStringGetCString(v53, v55, 1024, 0x8000100u);
      v56 = v55;
      goto LABEL_138;
    }

    v86 = sub_10003E080(0, v52);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
    {
      sub_1000BE98C();
    }

    goto LABEL_118;
  }

  if (*v44 != 1503811591)
  {
    if (byte_100127EC8 == 1)
    {
      v88 = __error();
      v89 = *v88;
      v91 = sub_10003E080(v88, v90);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        sub_1000BE7DC();
      }

      *__error() = v89;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_145;
    }

    v50 = *__error();
    LODWORD(v92) = *v44;
    if ((*v44 & 0xFFFFFFF0) == 0x20)
    {
      v92 = 17;
    }

    else
    {
      v92 = v92;
    }

    v93 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s isn't a kcdata stackshot file (header type %#x)", file, v92);
    if (v93)
    {
      v53 = v93;
      v54 = CFStringGetCStringPtr(v93, 0x8000100u);
      if (v54)
      {
        goto LABEL_54;
      }

      v95 = 2273138238;
      goto LABEL_137;
    }

    v86 = sub_10003E080(0, v94);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
    {
      sub_1000BE858();
    }

LABEL_118:

    if (qword_100127ED0)
    {
      v87 = qword_100127ED0;
    }

    else
    {
      v87 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v87);
LABEL_144:
    *__error() = v50;
LABEL_145:
    munmap(v44, v103.st_size);
    goto LABEL_112;
  }

  initForFileParsing = [[SASampleStore alloc] initForFileParsing];
  if ((byte_100127EDC & 2) != 0 && sub_1000338E4())
  {
    if (byte_100127EC8 == 1)
    {
      v74 = __error();
      v75 = *v74;
      v77 = sub_10003E080(v74, v76);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for stackshot file due to audio running", buf, 2u);
      }

      *__error() = v75;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v78 = *__error();
      v79 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for stackshot file due to audio running");
      if (v79)
      {
        v81 = v79;
        v82 = CFStringGetCStringPtr(v79, 0x8000100u);
        if (v82)
        {
          v83 = 0;
        }

        else
        {
          v83 = malloc_type_calloc(0x400uLL, 1uLL, 0x5692B96AuLL);
          CFStringGetCString(v81, v83, 1024, 0x8000100u);
          v82 = v83;
        }

        v99 = qword_100127ED0;
        if (!qword_100127ED0)
        {
          v99 = __stderrp;
        }

        fprintf(v99, "%s\n", v82);
        if (v83)
        {
          free(v83);
        }

        CFRelease(v81);
      }

      else
      {
        v97 = sub_10003E080(0, v80);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
        {
          sub_1000BE8D4(v97);
        }

        if (qword_100127ED0)
        {
          v98 = qword_100127ED0;
        }

        else
        {
          v98 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v98);
      }

      *__error() = v78;
    }

    [initForFileParsing setDataGatheringOptions:{objc_msgSend(initForFileParsing, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
  }

  sub_1000791AC(initForFileParsing, (byte_100127EDC >> 3) & 1, (byte_100127EDC >> 2) & 1, (byte_100127EDC & 0x10) == 0);
  v100 = [NSData alloc];
  v101 = [v100 initWithBytesNoCopy:v44 length:v103.st_size deallocator:&stru_100115A88];
  [initForFileParsing addKCDataStackshots:v101 createSeparateSamplePerStackshot:1];
  [initForFileParsing postprocess];

LABEL_113:

  return initForFileParsing;
}

@end