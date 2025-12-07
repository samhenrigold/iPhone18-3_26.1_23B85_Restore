uint64_t sub_100000EC0()
{
  if (qword_1000103A0 != -1)
  {
    sub_100004C04();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100010398)
    {
      v0 = "launchd";
    }

    else
    {
      v0 = "shell";
    }

    v2 = 136315138;
    v3 = v0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "started by %s", &v2, 0xCu);
  }

  return byte_100010398;
}

uint64_t sub_100000FE0(uint64_t a1, uint64_t a2)
{
  if (qword_1000103B0 != -1)
  {
    sub_100004C18();
  }

  return byte_1000103A8;
}

void sub_100001018(id a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    has_internal_content = 1;
  }

  else
  {
    has_internal_content = os_variant_has_internal_content();
  }

  byte_1000103A8 = has_internal_content;
  v3 = 0;
  if (sub_1000011AC(@"customer-mode", @"com.apple.sysdiagnose", &v3) && v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Customer-mode enabled. Forcing external behavior.", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "To disable, run: 'sudo defaults write com.apple.sysdiagnose customer-mode -BOOL false; sudo pkill -9 sysdiagnose'", buf, 2u);
    }

    byte_1000103A8 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1000103A8)
    {
      v2 = "YES";
    }

    else
    {
      v2 = "NO";
    }

    *buf = 136315138;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Apple Internal: %s", buf, 0xCu);
  }
}

BOOL sub_1000011AC(void *a1, void *a2, BOOL *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 && v6 && a3)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v5, v6, &keyExistsAndHasValidFormat);
    v9 = keyExistsAndHasValidFormat;
    if (keyExistsAndHasValidFormat)
    {
      *a3 = AppBooleanValue != 0;
    }

    v10 = v9 != 0;
  }

  else
  {
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_100004C2C(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 0;
  }

  return v10;
}

BOOL sub_10000125C(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  v6 = v5;
  if (v5 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (!strncasecmp(a2, a1, v7))
  {
    return 1;
  }

  if (v6 <= v4)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
  }

  if (v6 <= v4)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  return strcasestr(v8, v9) != 0;
}

BOOL sub_1000012D4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  if (proc_pidpath([v0 intValue], buffer, 0x1000u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = [NSString stringWithUTF8String:buffer];
    v4 = sub_10000125C([v3 fileSystemRepresentation], objc_msgSend(v2, "fileSystemRepresentation"));
  }

  return v4;
}

BOOL sub_1000013C4(const void *a1)
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFEqual(v2, a1) != 0;
  CFRelease(v3);
  return v4;
}

uint64_t sub_100001420(uint64_t a1, uint64_t a2)
{
  if (qword_1000103C0 != -1)
  {
    sub_100004CA8();
  }

  return byte_1000103B8;
}

uint64_t sub_100001480()
{
  if (qword_1000103D0 != -1)
  {
    sub_100004CBC();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = byte_1000103C8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got result %d for isComputeModuleB check", v1, 8u);
  }

  return byte_1000103C8;
}

uint64_t sub_100001568(const char *a1)
{
  *iterator = 0;
  if (!a1)
  {
    v24 = 0;
    memset(name, 0, 80);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    *v23 = 134217984;
    *&v23[4] = 0;
    _os_log_send_and_compose_impl(v18, &v24, name, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: name -> %llu", v23);
    _os_crash_msg();
    sub_100004E18();
  }

  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/");
  v3 = v2;
  iterator[1] = v2;
  if (v2)
  {
    v4 = IORegistryEntryCreateIterator(v2, "IODeviceTree", 0, iterator);
    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100004CD0(v4);
      }
    }

    else
    {
      while (1)
      {
        v16 = IOIteratorNext(iterator[0]);
        if (!v16)
        {
          break;
        }

        memset(name, 0, sizeof(name));
        v17 = IORegistryEntryGetName(v16, name);
        if (v17)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100004D50(buf, v17, &buf[4]);
          }
        }

        else if (!strcmp(a1, name))
        {
          v13 = 1;
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      sub_100004D9C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = 0;
LABEL_9:
  if (iterator[0])
  {
    v14 = IOObjectRelease(iterator[0]);
    if (v14)
    {
      *v23 = 0;
      memset(name, 0, 80);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      LODWORD(v24) = 67109120;
      HIDWORD(v24) = v14;
      _os_log_send_and_compose_impl(v19, v23, name, 80, &_mh_execute_header, &_os_log_default, 16, "IOObjectRetain: %{mach.errno}d", &v24, 8);
      _os_crash_msg();
      sub_100004E18();
    }
  }

  if (v3 && IOObjectRelease(v3))
  {
    sub_100004E1C(v23, name);
  }

  return v13;
}

uint64_t sub_1000018B0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_100004ECC(&v2, v3);
    }
  }

  return result;
}

void sub_100001918(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_100001934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

uint64_t start(int a1, char *const *a2)
{
  v4 = isatty(0);
  if (v4 || (v4 = isatty(1), v4) || (v4 = isatty(2), v4))
  {
    v5 = sub_100002FAC(v4);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    LOWORD(buf.name) = 0;
    v6 = "Invoked by terminal";
    p_buf = &buf;
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 2;
    goto LABEL_6;
  }

  memset(&buf, 0, sizeof(buf));
  v94 = getppid();
  v95 = proc_name(v94, &buf, 0x20u);
  v96 = v95;
  v5 = sub_100002FAC(v95);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v97 = "error";
    if (v96 > 0)
    {
      v97 = &buf;
    }

    *v166 = 67109378;
    *&v166[4] = v94;
    *&v166[8] = 2082;
    *&v166[10] = v97;
    v6 = "Invoked by parent (%d): '%{public}s'";
    p_buf = v166;
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 18;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v8, v9, v6, p_buf, v10);
  }

LABEL_7:

  context = objc_autoreleasePoolPush();
  v11 = sub_100000EC0();
  if (v11)
  {
    v126 = sub_100002FAC(v11);
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      sub_100005298();
    }

LABEL_200:
    exit(1);
  }

  v12 = +[NSMutableDictionary dictionary];
  v13 = objc_alloc_init(NSMutableString);
  v134 = a1 - 1;
  if (a1 >= 1)
  {
    v14 = a1;
    v15 = a2;
    do
    {
      v16 = *v15++;
      v17 = [NSString stringWithFormat:@"%s ", v16];
      [v13 appendString:v17];

      --v14;
    }

    while (v14);
  }

  v136 = v13;
  [v12 setObject:v13 forKeyedSubscript:@"commandLineArgs"];
  opterr = 0;
  v160 = off_10000C630;
  v161 = unk_10000C640;
  v162 = xmmword_10000C650;
  v163 = unk_10000C660;
  v156 = off_10000C5F0;
  v157 = unk_10000C600;
  v158 = off_10000C610;
  v159 = unk_10000C620;
  v152 = off_10000C5B0;
  v153 = unk_10000C5C0;
  v154 = off_10000C5D0;
  v155 = unk_10000C5E0;
  buf = off_10000C570;
  v150 = off_10000C590;
  v151 = unk_10000C5A0;
  v138 = objc_alloc_init(NSMutableSet);
  v18 = 0;
  v19 = &optarg;
  while (2)
  {
    while (1)
    {
      v20 = v18;
      v21 = getopt_long(a1, a2, "vhHcsbf:V:lqQnA:pPdDkFgGLXe:urRSC:x:", &buf, 0);
      if (v21 <= 15212)
      {
        break;
      }

      if (v21 == 15213)
      {
        if (!sub_100000FE0(v21, v22))
        {
          goto LABEL_88;
        }

        v26 = [NSString stringWithUTF8String:*v19];
        v31 = v12;
        v29 = v26;
        v30 = @"onlyRunContainersWithNames";
        goto LABEL_56;
      }

      if (v21 != 18213)
      {
        if (v21 != 20213)
        {
LABEL_85:
          fwrite("Unexpected option or insufficient arguments.", 0x2CuLL, 1uLL, __stderrp);
          fputc(10, __stderrp);
          sub_100003338();
          v73 = 64;
          goto LABEL_89;
        }

        v51 = __stderrp;
        v52 = "Platform does not support --collectAllTrusted flag";
        v53 = 50;
LABEL_87:
        fwrite(v52, v53, 1uLL, v51);
        fputc(10, __stderrp);
        goto LABEL_88;
      }

      if (!sub_100000FE0(v21, v22))
      {
        goto LABEL_88;
      }

      v25 = v12;
      v23 = &__kCFBooleanTrue;
      v24 = @"collectWifiDextCoreFiles";
LABEL_53:
      [v25 setObject:v23 forKeyedSubscript:v24];
      v18 = v20;
    }

    switch(v21)
    {
      case 'A':
        v26 = [NSString stringWithUTF8String:*v19];
        v30 = @"archiveName";
        goto LABEL_43;
      case 'B':
      case 'E':
      case 'I':
      case 'J':
      case 'K':
      case 'M':
      case 'N':
      case 'O':
      case 'T':
      case 'U':
      case 'W':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'a':
      case 'e':
      case 'i':
      case 'j':
      case 'm':
      case 'o':
      case 's':
      case 't':
      case 'w':
        goto LABEL_85;
      case 'C':
        v26 = [NSString stringWithUTF8String:*v19];
        v27 = [@"yaa" isEqualToString:v26];
        if (v27)
        {
          v28 = sub_100002FAC(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *v166 = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Compression type: yaa", v166, 2u);
          }

          v29 = &__kCFBooleanTrue;
          v30 = @"useParallelCompression";
LABEL_32:
          v31 = v12;
LABEL_56:
          [v31 setObject:v29 forKeyedSubscript:v30];
          goto LABEL_57;
        }

        v36 = [@"tar" isEqualToString:v26];
        if (v36)
        {
          v37 = sub_100002FAC(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v166 = 0;
            v38 = "Compression type: tar";
LABEL_68:
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, v166, 2u);
            goto LABEL_69;
          }

          goto LABEL_69;
        }

        v39 = [@"no-compression" isEqualToString:v26];
        if (v39)
        {
          v40 = sub_100002FAC(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *v166 = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "--compression=no-compression (functions the same as -n flag)", v166, 2u);
          }

          v29 = &__kCFBooleanFalse;
          v30 = @"shouldCreateTarBall";
          goto LABEL_32;
        }

        v41 = [@"default" isEqualToString:v26];
        if (v41)
        {
          v37 = sub_100002FAC(v41);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v166 = 0;
            v38 = "Default compression requested. Using tar";
            goto LABEL_68;
          }

LABEL_69:

LABEL_57:
          v18 = v20;
          continue;
        }

        fprintf(__stderrp, "Error: compression type '%s' not found", [v26 UTF8String]);
        fputc(10, __stderrp);

LABEL_88:
        v73 = 69;
LABEL_89:
        v74 = v136;
LABEL_90:

        if (v73)
        {
          exit(v73);
        }

        if (geteuid())
        {
          fwrite("sysdiagnose must be run as root", 0x1FuLL, 1uLL, __stderrp);
          fputc(10, __stderrp);
          goto LABEL_200;
        }

        if (qword_1000103F8 != -1)
        {
          sub_1000051D8();
        }

        [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SDRequestSourceShell"];
        if (!isatty(1))
        {
          [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"verbose"];
        }

        if ((byte_1000103D8 & 1) == 0)
        {
          v75 = [v12 copy];
          v77 = sub_100000FE0(v75, v76);
          v78 = off_100010368;
          if (!v77)
          {
            v78 = off_100010360;
          }

          printf("%s", *v78);
          putchar(10);
          v79 = [v75 objectForKeyedSubscript:@"pidOrProcess"];
          if (sub_100003D34(v79, @"/Applications/Mail.app/Contents/MacOS/Mail"))
          {
            v80 = off_100010370;
            goto LABEL_103;
          }

          if (sub_100003D34(v79, @"/Applications/Safari.app/Contents/MacOS/Safari"))
          {
            v80 = off_100010378;
LABEL_103:
            printf("%s", *v80);
            putchar(10);
          }

          v81 = [v75 objectForKey:@"setNoTimeOut"];
          v82 = v81;
          if (v81 && [v81 BOOLValue])
          {
            printf("%s", off_100010380[0]);
            putchar(10);
          }

          printf("Press 'Enter' to continue. Ctrl+\\ to cancel.");
          putchar(10);
          if (!isatty(1))
          {
            fwrite("Triggering sysdiagnose programmatically from CLI with incorrect arguments. Exiting.", 0x53uLL, 1uLL, __stderrp);
            fputc(10, __stderrp);
            exit(64);
          }

          do
          {
            v83 = fgetc(__stdinp);
          }

          while (v83 != 13 && v83 != 10);
        }

        v85 = [v12 objectForKeyedSubscript:@"verbose"];

        if (v85)
        {
          v86 = 0;
        }

        else
        {
          [v12 objectForKeyedSubscript:@"shouldCreateTarBall"];
          v142[0] = _NSConcreteStackBlock;
          v142[1] = 3221225472;
          v142[2] = sub_100002FF0;
          v143 = v142[3] = &unk_10000C530;
          v87 = v143;
          v86 = objc_retainBlock(v142);
        }

        v141 = 0;
        v88 = [Libsysdiagnose sysdiagnoseWithMetadata:v12 withError:&v141 withProgressHandler:v86];
        v89 = v141;
        if (v88)
        {
          putchar(10);
          printf("Output available at '%s'.", [v88 UTF8String]);
          v90 = putchar(10);
          v91 = sub_100002FAC(v90);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v92 = [v88 UTF8String];
            LODWORD(buf.name) = 136315138;
            *(&buf.name + 4) = v92;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Output available at '%s'.", &buf, 0xCu);
          }
        }

        if (v89)
        {
          v127 = __stderrp;
          v128 = [v89 localizedDescription];
          fprintf(v127, "sysdiagnose error: %s", [v128 UTF8String]);

          v129 = fputc(10, __stderrp);
          v130 = sub_100002FAC(v129);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            sub_100005200(v89);
          }

          goto LABEL_200;
        }

        objc_autoreleasePoolPop(context);
        return 0;
      case 'D':
        v23 = &__kCFBooleanFalse;
        v24 = @"shouldRunLogCopyTasks";
        goto LABEL_52;
      case 'F':
        v23 = &__kCFBooleanTrue;
        v24 = @"shouldGetFeedbackData";
        goto LABEL_52;
      case 'G':
        v23 = &__kCFBooleanFalse;
        v24 = @"shouldRunLogGenerationTasks";
        goto LABEL_52;
      case 'H':
        v125 = +[SDCacheEnumerator sysdiagnoseDirectory];
        printf("Sysdiagnoses can be found at '%s'\n", [v125 UTF8String]);

        goto LABEL_191;
      case 'L':
        v23 = &__kCFBooleanTrue;
        v24 = @"capOverrideFullLogarchive";
        goto LABEL_52;
      case 'P':
        v23 = &__kCFBooleanFalse;
        v24 = @"shouldRunTimeSensitiveTasks";
        goto LABEL_52;
      case 'Q':
      case 'q':
        v23 = &__kCFBooleanTrue;
        v24 = @"quickMode";
        goto LABEL_52;
      case 'R':
        v23 = &__kCFBooleanFalse;
        goto LABEL_26;
      case 'S':
        v23 = &__kCFBooleanTrue;
        v24 = @"disableStreamTar";
        goto LABEL_52;
      case 'V':
        v26 = [NSString stringWithUTF8String:*v19];
        v30 = @"rootPath";
LABEL_43:
        v31 = v12;
        v29 = v26;
        goto LABEL_56;
      case 'X':
        v23 = &__kCFBooleanTrue;
        v24 = @"setNoTimeOut";
        goto LABEL_52;
      case 'b':
        goto LABEL_51;
      case 'c':
        if (sub_100001420(v21, v22))
        {
          v51 = __stderrp;
          v52 = "Platform does not support -c flag.";
          v53 = 34;
          goto LABEL_87;
        }

        v18 = 1;
        if (sub_100001480())
        {
          continue;
        }

        v23 = &__kCFBooleanTrue;
        v24 = @"coSysdiagnose";
LABEL_52:
        v25 = v12;
        goto LABEL_53;
      case 'd':
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunTimeSensitiveTasks"];
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunLogGenerationTasks"];
        v34 = &__kCFBooleanTrue;
        v35 = v12;
        goto LABEL_48;
      case 'f':
        v42 = [NSString stringWithUTF8String:*v19];
        if (([v42 hasPrefix:@"."] & 1) != 0 || (objc_msgSend(v42, "hasPrefix:", @"/") & 1) == 0)
        {
          v43 = +[NSFileManager defaultManager];
          v44 = [v43 currentDirectoryPath];
          [v44 stringByAppendingPathComponent:v42];
          v45 = v12;
          v46 = a2;
          v48 = v47 = v19;

          v42 = v48;
          v19 = v47;
          a2 = v46;
          v12 = v45;
        }

        v49 = [v42 stringByResolvingSymlinksInPath];
        v50 = sub_100003EF8(v49);
        [v12 setObject:v50 forKeyedSubscript:@"baseDirectory"];

        v18 = v20;
        continue;
      case 'g':
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunTimeSensitiveTasks"];
        v32 = &__kCFBooleanTrue;
        v33 = v12;
        goto LABEL_47;
      case 'h':
        sub_100003338();
LABEL_191:
        exit(0);
      case 'k':
        v23 = &__kCFBooleanFalse;
        v24 = @"shouldRemoveTemporaryDirectory";
        goto LABEL_52;
      case 'l':
        byte_1000103D8 = 1;
        continue;
      case 'n':
        v23 = &__kCFBooleanFalse;
        v24 = @"shouldCreateTarBall";
        goto LABEL_52;
      case 'p':
        [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"shouldRunTimeSensitiveTasks"];
        v33 = v12;
        v32 = &__kCFBooleanFalse;
LABEL_47:
        [v33 setObject:v32 forKeyedSubscript:@"shouldRunLogGenerationTasks"];
        v35 = v12;
        v34 = &__kCFBooleanFalse;
LABEL_48:
        [v35 setObject:v34 forKeyedSubscript:@"shouldRunLogCopyTasks"];
        v24 = @"shouldRunOSLogArchive";
        v25 = v12;
        v23 = &__kCFBooleanFalse;
        goto LABEL_53;
      case 'r':
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunTimeSensitiveTasks"];
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunLogGenerationTasks"];
        [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldRunLogCopyTasks"];
        v23 = &__kCFBooleanTrue;
LABEL_26:
        v24 = @"shouldRunOSLogArchive";
        goto LABEL_52;
      case 'u':
        [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"disableUIFeedback"];
        byte_1000103D8 = 1;
LABEL_51:
        v23 = &__kCFBooleanFalse;
        v24 = @"shouldDisplayTarBall";
        goto LABEL_52;
      case 'v':
        v23 = &__kCFBooleanTrue;
        v24 = @"verbose";
        goto LABEL_52;
      case 'x':
        v26 = [NSString stringWithUTF8String:*v19];
        [v138 addObject:v26];
        goto LABEL_57;
      default:
        if (v21 != -1)
        {
          goto LABEL_85;
        }

        v54 = [v138 copy];
        if (![v54 count])
        {
          v98 = v54;
          goto LABEL_166;
        }

        v167[0] = @"CLI_REQUEST_TYPE";
        v167[1] = @"REQUEST_DATA";
        v168[0] = @"validateRemoteUUIDs";
        v168[1] = v54;
        v55 = [NSDictionary dictionaryWithObjects:v168 forKeys:v167 count:2];
        v56 = objc_opt_new();
        v148 = 0;
        v57 = sub_10000342C(0xCu, v55, &v148);
        v58 = v148;
        v133 = v58;
        if (v57 && v58)
        {
          v137 = v56;
          v131 = v55;
          v132 = v54;
          v59 = v58;
          v60 = objc_opt_class();
          v61 = objc_opt_class();
          v62 = objc_opt_class();
          v63 = objc_opt_class();
          v64 = [NSSet setWithObjects:v60, v61, v62, v63, objc_opt_class(), 0];
          *v166 = 0;
          data = xpc_dictionary_get_data(v59, "RESPONSE_DATA", v166);

          if (!data)
          {
            v67 = sub_100002FAC(v66);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_100005094();
            }

            v101 = 0;
            v55 = v131;
            v54 = v132;
            v56 = v137;
LABEL_145:

            v140 = v101;
            if (!v101)
            {
              fwrite("Malformed daemon response. Assuming provided remoteUUIDs invalid", 0x40uLL, 1uLL, __stderrp);
              v115 = fputc(10, __stderrp);
              obj = sub_100002FAC(v115);
              if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
              {
                sub_100004F68();
              }

              goto LABEL_164;
            }

            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            obj = [v101 allKeys];
            v104 = [obj countByEnumeratingWithState:&v144 objects:v166 count:16];
            if (!v104)
            {
LABEL_164:

              v98 = [v56 copy];
              goto LABEL_165;
            }

            v105 = v104;
            v106 = *v145;
            v107 = v101;
LABEL_148:
            v108 = 0;
            while (1)
            {
              if (*v145 != v106)
              {
                objc_enumerationMutation(obj);
              }

              v109 = *(*(&v144 + 1) + 8 * v108);
              v110 = [v107 objectForKey:v109];
              v111 = v110;
              if (!v110)
              {
                break;
              }

              if (![v110 BOOLValue])
              {
                fprintf(__stderrp, "Remote UUID '%s' not found", [v109 UTF8String]);
                v114 = fputc(10, __stderrp);
                v113 = sub_100002FAC(v114);
                if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                {
                  sub_1000050C8(v164, v109);
                }

LABEL_158:

                v107 = v140;
                goto LABEL_159;
              }

              [v137 addObject:v109];
LABEL_159:

              if (v105 == ++v108)
              {
                v105 = [obj countByEnumeratingWithState:&v144 objects:v166 count:16];
                if (!v105)
                {
                  v55 = v131;
                  v54 = v132;
                  v56 = v137;
                  goto LABEL_164;
                }

                goto LABEL_148;
              }
            }

            fprintf(__stderrp, "Malformed daemon response. Remote UUID '%s' not found", [v109 UTF8String]);
            v112 = fputc(10, __stderrp);
            v113 = sub_100002FAC(v112);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              sub_10000511C(v165, v109);
            }

            goto LABEL_158;
          }

          v67 = [NSData dataWithBytes:data length:*v166];
          if (!v67)
          {
            v70 = sub_100002FAC(0);
            v56 = v137;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              sub_100005060();
            }

            v102 = 0;
            goto LABEL_144;
          }

          *&v144 = 0;
          v68 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v64 fromData:v67 error:&v144];
          v69 = v144;
          v70 = v69;
          v56 = v137;
          if (v68)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v72 = v68;
LABEL_143:
              v102 = v72;

LABEL_144:
              v55 = v131;
              v54 = v132;
              v101 = v102;
              goto LABEL_145;
            }

            v103 = sub_100002FAC(isKindOfClass);
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              sub_100004F9C();
            }
          }

          else
          {
            v103 = sub_100002FAC(v69);
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              sub_100004FD0(v70);
            }
          }

          v72 = 0;
          goto LABEL_143;
        }

        fwrite("Malformed daemon response. Assuming provided remoteUUIDs invalid", 0x40uLL, 1uLL, __stderrp);
        v99 = fputc(10, __stderrp);
        v100 = sub_100002FAC(v99);
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          sub_100004F68();
        }

        v98 = [v56 copy];
LABEL_165:

LABEL_166:
        if ([v98 count])
        {
          [v12 setObject:v98 forKeyedSubscript:@"remoteUUIDs"];
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_181;
        }

        *&v144 = 0;
        v116 = sub_10000342C(0xCu, &off_10000CED0, &v144);
        v117 = v144;
        v118 = v117;
        if (v116 && v117)
        {
          uint64 = xpc_dictionary_get_uint64(v117, "RESPONSE_DATA");
          v120 = sub_100002FAC(uint64);
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            *v166 = 134217984;
            *&v166[4] = uint64;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "isAutomaticCoSysdiagnosePossible: received response from server '%llu'", v166, 0xCu);
          }

          if (uint64)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v121 = sub_100002FAC(v117);
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            sub_100005170();
          }
        }

        if (![v98 count])
        {
          v122 = [v12 objectForKeyedSubscript:@"shouldCollectAllTrusted"];

          if (!v122)
          {
            fwrite("No connected devices found. Co-sysdiagnose options not available.", 0x41uLL, 1uLL, __stderrp);
            v124 = fputc(10, __stderrp);
            v123 = sub_100002FAC(v124);
            if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
            {
              sub_1000051A4();
            }

            v73 = 69;
            goto LABEL_183;
          }
        }

LABEL_180:
        [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"coSysdiagnoseOnly"];
LABEL_181:
        if (optind != v134)
        {
          v73 = 0;
          v74 = v136;
          goto LABEL_185;
        }

        v123 = [NSString stringWithCString:a2[optind] encoding:4];
        [v12 setObject:v123 forKeyedSubscript:@"pidOrProcess"];
        v73 = 0;
LABEL_183:
        v74 = v136;

LABEL_185:
        goto LABEL_90;
    }
  }
}

id sub_100002FAC(uint64_t a1)
{
  if (qword_1000103E0 != -1)
  {
    sub_1000052CC();
  }

  v2 = off_100010390;

  return v2;
}

size_t sub_100002FF0(uint64_t a1, void *a2)
{
  v3 = sdProgressPercent;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:sdProgressPhase];

  v9 = [v8 unsignedLongLongValue];
  if (v9 <= 2)
  {
    if (!v9)
    {
      v10 = __stdoutp;
      v11 = "\nInvalid Sysdiagnose state. Aborting.\n";
      v12 = 38;
      goto LABEL_25;
    }

    if (v9 != 1)
    {
      goto LABEL_14;
    }

    v13 = __stdoutp;
    v14 = "Progress:\n";
    v15 = 10;
    goto LABEL_13;
  }

  if (v9 != 3)
  {
    if (v9 != 4)
    {
      if (v9 == 6)
      {
        v10 = __stdoutp;
        v11 = "\nCo-sysdiagnose Transfer Timed out\n";
        v12 = 35;
LABEL_25:

        return fwrite(v11, v12, 1uLL, v10);
      }

      goto LABEL_14;
    }

    v13 = __stdoutp;
    v14 = "\nCo-sysdiagnose transfer progress:\n";
    v15 = 35;
LABEL_13:
    fwrite(v14, v15, 1uLL, v13);
LABEL_14:
    v29 = 0;
    v18 = *(a1 + 32);
    *&v19 = 0x5F5F5F5F5F5F5F5FLL;
    *(&v19 + 1) = 0x5F5F5F5F5F5F5F5FLL;
    *__s = v19;
    v26 = v19;
    v27 = v19;
    *v28 = v19;
    *&v28[14] = v19;
    v24 = 0;
    *__str = 0;
    v20 = strlen(__s);
    v21 = (v7 * v20 / 100.0);
    if (v21 >= 1)
    {
      memset(__s, 124, v21);
    }

    snprintf(__str, 5uLL, "%02d%%", v7);
    if (v20 >= 0x2D)
    {
      strlen(__str);
      __memcpy_chk();
    }

    fprintf(__stdoutp, "\x1B[J\x1B[2K[%s]\r", __s);
    if (v7 > 99.9 && v18 != 0)
    {
      fwrite("\nCompressing final diagnostics\n", 0x1FuLL, 1uLL, __stdoutp);
    }

    return fflush(__stdoutp);
  }

  v16 = __stdoutp;

  return fputc(10, v16);
}

void sub_1000032F4(id a1)
{
  off_100010390 = os_log_create("com.apple.sysdiagnose", "cli");

  _objc_release_x1();
}

uint64_t sub_100003338()
{
  v0 = getprogname();
  v1 = +[NSProcessInfo processInfo];
  v2 = [v1 arguments];
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 lastPathComponent];
  v5 = [v4 UTF8String];

  if (sub_100000FE0(v6, v7))
  {
    v8 = off_100010388;
  }

  else
  {
    v8 = "";
  }

  v9 = sub_100001878();
  printf( "%s\n USAGE: %s [args] [process_name | pid]\n -h                      Display this help.\n -H                      Print the path to the default sysdiagnose output directory.\n -v                      Enable verbose mode to display the container information as it executes.\n -f results_directory    Specify the directory where results will be stored.\n -A archive_name         Specify the name of the archive created in the results directory.\n -V volume_path          Specify the root volume for sysdiagnose to run on.\n -C, --compression type  Specify the compression type. It is an error to use this with the -n flag. Valid options are:\n yaa: use parallel compression\n tar: use tar compression\n no-compression: don't compress the output. Identical to -n\n default: will use the system default. Currently defaults to tar\n -n                      Do not tar the resulting sysdiagnose directory.\n -k                      Do not remove the temporary directory.\n -F                      Get feedback data.\n -S                      Disable streaming to tarball.\n -u                      Disable UI feedback.\n -Q,                     Skip footprint.\n -q,                     Same as -Q\n -b                      Do not show a Finder window upon completion.\n -p                      Only run time-sensitive collections; disregards previous -d or -r flags.\n"
    "          -P                      Do not run time-sensitive collections.\n"
    "          -g                      Only run log generation collections; disregards previous -p or -r flags.\n"
    "          -G                      Do not run log generation collections.\n"
    "          -d                      Only run log copying collections; disregards previous -p or -r flags.\n"
    "          -D                      Do not run log copying collections.\n"
    "          -r                      Collect only log archive; disregards previous -p or -d flags.\n"
    "          -R                      Do not collect log archive.\n"
    "          [process_name | pid]    If a single process appears to be slowing down the system,\n"
    "                                  passing in the process name or ID as the argument gathers\n"
    "                                  additional process-specific diagnostic data; Specify only ONE process\n"
    "                                  at a time -- specifying multiple processes is not supported.\n"
    "%s\n"
    "DESCRIPTION:\n"
    "  %s gathers system diagnostic information helpful in investigating system performance issues.\n"
    "  A great deal of information is harvested, spanning system state and configuration. The data is stored /var/tmp directory.\n"
    "  sysdiagnose needs to be run as root. To cancel an in-flight sysdiagnose triggered via command line interface, press Ctrl-\\.\n"
    "  %s is automatically triggered when the following key chord is pressed: Control-Option-Command-Shift-Period.\n"
    "WHAT %s COLLECTS:\n"
    "  - A spindump of the system\n"
    "  - Several seconds of top output\n"
    "  - Data about kernel zones\n"
    "  - Status of loaded kernel extensions\n"
    "  - Resident memory usage of user processes\n"
    "  - Recent system logs\n"
    "  - A System Profiler report\n"
    "  - Recent crash reports\n"
    "  - Disk usage information\n"
    "  - I/O Kit registry information\n"
    "  - Network status\n"
    "  - If a specific process is supplied as an argument, will collect:\n"
    "      - A list of malloc-allocated buffers in the process's heap\n"
    "      - Data about unreferenced malloc buffers in the process's memory\n"
    "      - Data about the virtual memory regions allocated in the process\n",
    [v9 UTF8String],
    v5,
    v8,
    v0,
    v0,
    v0);

  return putchar(10);
}

BOOL sub_10000342C(unsigned int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "REQUEST_TYPE", a1);
  if (v5)
  {
    v28 = a3;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = [v5 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [v5 objectForKey:v12];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            xpc_dictionary_set_BOOL(v6, [v12 UTF8String], objc_msgSend(v13, "BOOLValue"));
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              xpc_dictionary_set_string(v6, [v12 UTF8String], objc_msgSend(v13, "UTF8String"));
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
                if (v14)
                {
                  xpc_dictionary_set_data(v6, [v12 UTF8String], -[NSObject bytes](v14, "bytes"), -[NSObject length](v14, "length"));
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
                  if (v14)
                  {
                    xpc_dictionary_set_data(v6, [v12 UTF8String], -[NSObject bytes](v14, "bytes"), -[NSObject length](v14, "length"));
                  }
                }

                else
                {
                  fprintf(__stderrp, "Undefined type in the metadata for key '%s': not including in request", [v12 UTF8String]);
                  v15 = fputc(10, __stderrp);
                  v14 = sub_100002FAC(v15);
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000052E0(v33, v12);
                  }
                }
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    a3 = v28;
  }

  if (qword_1000103F0 != -1)
  {
    sub_100005334();
  }

  v16 = qword_1000103E8;
  v17 = xpc_connection_send_message_with_reply_sync(v16, v6);
  if (xpc_get_type(v17) == &_xpc_type_dictionary)
  {
    uint64 = xpc_dictionary_get_uint64(v17, "RESPONSE_TYPE");
    v24 = xpc_dictionary_get_uint64(v17, "FAILURE_REASON");
    v22 = uint64 == 1 || v24 == 7;
    if (a3 && v22)
    {
      v26 = v17;
      *a3 = v17;
      v22 = 1;
    }
  }

  else
  {
    v18 = __stderrp;
    string = xpc_dictionary_get_string(v17, _xpc_error_key_description);
    fprintf(v18, "Received error from the daemon: %s", string);
    v20 = fputc(10, __stderrp);
    v21 = sub_100002FAC(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10000535C(v17, _xpc_error_key_description);
    }

    v22 = 0;
  }

  return v22;
}

void sub_1000038C0(id a1)
{
  v4 = dispatch_get_global_queue(33, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.sysdiagnose.service.xpc", v4, 2uLL);
  xpc_connection_set_event_handler(mach_service, &stru_10000C6B0);
  v2 = qword_1000103E8;
  qword_1000103E8 = mach_service;
  v3 = mach_service;

  xpc_connection_resume(qword_1000103E8);
}

void sub_10000395C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    v3 = __stderrp;
    string = xpc_dictionary_get_string(v2, _xpc_error_key_description);
    fprintf(v3, "XPC connection to daemon '%s' received error: %s.", "com.apple.sysdiagnose.service.xpc", string);
    v5 = fputc(10, __stderrp);
    v6 = sub_100002FAC(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000053E0(v2, _xpc_error_key_description);
    }
  }
}

void sub_100003A24(id a1)
{
  queue = dispatch_get_global_queue(25, 0);
  signal(2, 1);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, queue);
  v2 = qword_100010400;
  qword_100010400 = v1;

  dispatch_source_set_event_handler(qword_100010400, &stru_10000C6F0);
  dispatch_resume(qword_100010400);
  signal(15, 1);
  signal(3, 1);
  signal(18, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, queue);
  v4 = qword_100010410;
  qword_100010410 = v3;

  dispatch_source_set_event_handler(qword_100010410, &stru_10000C710);
  dispatch_resume(qword_100010410);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0x12uLL, 0, queue);
  v6 = qword_100010408;
  qword_100010408 = v5;

  dispatch_source_set_event_handler(qword_100010408, &stru_10000C710);
  dispatch_resume(qword_100010408);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 3uLL, 0, queue);
  v8 = qword_100010418;
  qword_100010418 = v7;

  dispatch_source_set_event_handler(qword_100010418, &stru_10000C710);
  dispatch_resume(qword_100010418);
}

void sub_100003B9C(id a1)
{
  if (!sub_10000342C(6u, 0, 0))
  {
    fwrite("Sysdiagnose request to daemon for user interrupt failed", 0x37uLL, 1uLL, __stderrp);
    v1 = fputc(10, __stderrp);
    v2 = sub_100002FAC(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100005478();
    }
  }
}

void sub_100003C20(id a1)
{
  printf("\nCleaning up can take up to a minute...");
  putchar(10);
  if (sub_10000342C(4u, 0, 0))
  {
    printf("Sysdiagnose cancelled successfully.");
    v1 = putchar(10);
    v2 = sub_100002FAC(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sysdiagnose cancelled successfully.", buf, 2u);
    }

    exit(0);
  }

  fwrite("Encountered error during user-initiated cancellation.", 0x35uLL, 1uLL, __stderrp);
  v3 = fputc(10, __stderrp);
  v4 = sub_100002FAC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Encountered error during user-initiated cancellation.", v5, 2u);
  }

  exit(1);
}

id sub_100003D34(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 intValue];
  if (v5)
  {
    v6 = [NSNumber numberWithInt:v5];
    v7 = sub_1000012D4();
  }

  else
  {
    v6 = [v4 lastPathComponent];
    v7 = [v3 isEqualToString:v6];
  }

  v8 = v7;

  return v8;
}

void sub_100003DCC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id sub_100003DF4(int a1, id a2)
{

  return a2;
}

void sub_100003E28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

__CFString *sub_100003E48(void *a1)
{
  v1 = a1;
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 pathSubmission];

  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000054AC();
    }

    v3 = @"/private/var/mobile/Library/Logs/CrashReporter";
  }

  if (v1)
  {
    v4 = [(__CFString *)v3 stringByAppendingPathComponent:v1];

    v3 = v4;
  }

  return v3;
}

id sub_100003EF8(void *a1)
{
  v1 = a1;
  v2 = [NSArray arrayWithObjects:@"/var", @"/tmp", @"/etc", 0];
  v3 = v1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = *v13;
    v5 = v3;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v2);
        }

        if ([v3 hasPrefix:*(*(&v12 + 1) + 8 * i)])
        {
          v16[0] = @"/private";
          v16[1] = v3;
          v9 = [NSArray arrayWithObjects:v16 count:2];
          v10 = [NSString pathWithComponents:v9];

          v5 = v10;
        }
      }

      v6 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  return v5;
}

void sub_100004104(id a1)
{
  v1 = qword_100010420;
  qword_100010420 = &off_10000CEF8;
}

id sub_100004398(uint64_t a1)
{
  if (qword_100010430 != -1)
  {
    sub_100005508();
  }

  v2 = qword_100010438;

  return v2;
}

BOOL sub_1000043DC(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100004398(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000551C(v3, v4);
  }

  return 1;
}

void sub_100004BC0(id a1)
{
  qword_100010438 = os_log_create("com.apple.sysdiagnose.CacheDelete", "enumerator");

  _objc_release_x1();
}

void sub_100004C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "BOOL getBoolCFPrefIfSet(NSString *__strong, NSString *__strong, BOOL *)";
  sub_100001918(&_mh_execute_header, &_os_log_default, a3, "%s called with invalid args", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100004CD0(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to create IORegistryEntryCreateIterator: %d", v1, 8u);
}

void sub_100004D50(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "IORegistryEntryGetName: %d", buf, 8u);
}

void sub_100004D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "IODeviceTree:/";
  sub_100001918(&_mh_execute_header, &_os_log_default, a3, "failed to find ioreg path: %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100004E1C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  sub_100001934(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "IOObjectRetain: %{mach.errno}d");
  _os_crash_msg();
  __break(1u);
}

void sub_100004ECC(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  sub_100001934(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "IOObjectRetain: %{mach.errno}d");
  _os_crash_msg();
  __break(1u);
}

void sub_100004FD0(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100003E18();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000050C8(int a1, void *a2)
{
  sub_100003DF4(a1, a2);
  v5 = [v3 UTF8String];
  *v4 = 136315138;
  *v2 = v5;
  sub_100003E28(&_mh_execute_header, v6, v7, "Remote UUID '%s' not found");
}

void sub_10000511C(int a1, void *a2)
{
  sub_100003DF4(a1, a2);
  v5 = [v3 UTF8String];
  *v4 = 136315138;
  *v2 = v5;
  sub_100003E28(&_mh_execute_header, v6, v7, "Malformed daemon response. Remote UUID '%s' not found");
}

void sub_100005200(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_100003E18();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000052E0(int a1, void *a2)
{
  sub_100003DF4(a1, a2);
  v5 = [v3 UTF8String];
  *v4 = 136315138;
  *v2 = v5;
  sub_100003E28(&_mh_execute_header, v6, v7, "Undefined type in the metadata for key '%s': not including in request");
}

void sub_10000535C(void *a1, const char *a2)
{
  xpc_dictionary_get_string(a1, a2);
  sub_100003E18();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000053E0(void *a1, const char *a2)
{
  xpc_dictionary_get_string(a1, a2);
  sub_100003E18();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10000551C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 136446210;
  v5 = [v3 UTF8String];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CacheEnumerator error: %{public}s", &v4, 0xCu);
}