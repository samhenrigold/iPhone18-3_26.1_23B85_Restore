@interface SPTextualReportParser
+ (BOOL)isSpindumpFile:(const char *)file;
- (BOOL)parseSpindumpFile:(const char *)file andReportToStream:(__sFILE *)stream;
@end

@implementation SPTextualReportParser

+ (BOOL)isSpindumpFile:(const char *)file
{
  v4 = fopen(file, "r");
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(0x4000uLL, 0x186E36D9uLL);
    while (fgets(v6, 0x4000, v5))
    {
      if (!strncmp("Report Version:", v6, 0xFuLL))
      {
        v7 = strtol(v6 + 15, 0, 0) != 0;
        goto LABEL_16;
      }
    }

    v7 = 0;
LABEL_16:
    free(v6);
    fclose(v5);
  }

  else
  {
    if (byte_100117E80 == 1)
    {
      v8 = __error();
      v9 = *v8;
      v11 = sub_100035B80(v8, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000BCFF8();
      }

      *__error() = v9;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v13 = *__error();
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open %s: %d (%s)", file, v14, v16);
      if (v17)
      {
        v19 = v17;
        CStringPtr = CFStringGetCStringPtr(v17, 0x8000100u);
        if (CStringPtr)
        {
          v21 = CStringPtr;
          v22 = 0;
        }

        else
        {
          v21 = malloc_type_calloc(0x400uLL, 1uLL, 0xE5C3074DuLL);
          CFStringGetCString(v19, v21, 1024, 0x8000100u);
          v22 = v21;
        }

        if (qword_100117E88)
        {
          v25 = qword_100117E88;
        }

        else
        {
          v25 = __stderrp;
        }

        fprintf(v25, "%s\n", v21);
        if (v22)
        {
          free(v22);
        }

        CFRelease(v19);
      }

      else
      {
        v23 = sub_100035B80(0, v18);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          sub_1000BD098();
        }

        if (qword_100117E88)
        {
          v24 = qword_100117E88;
        }

        else
        {
          v24 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v24);
      }

      v7 = 0;
      *__error() = v13;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

- (BOOL)parseSpindumpFile:(const char *)file andReportToStream:(__sFILE *)stream
{
  context = objc_autoreleasePoolPush();
  v1098 = 0;
  v1099 = &v1098;
  v1100 = 0x2020000000;
  v1101 = 0;
  v1094 = 0;
  v1095 = &v1094;
  v1096 = 0x2020000000;
  v1097 = 0;
  v1093[0] = _NSConcreteStackBlock;
  v1093[1] = 3221225472;
  v1093[2] = sub_100097FA0;
  v1093[3] = &unk_1001093D0;
  v1093[4] = &v1094;
  v1093[5] = &v1098;
  v1072 = objc_retainBlock(v1093);
  v5 = fopen(file, "r");
  if (!v5)
  {
    if (byte_100117E80 == 1)
    {
      v30 = __error();
      v31 = *v30;
      v33 = sub_100035B80(v30, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v101 = *__error();
        v102 = __error();
        v103 = strerror(*v102);
        *buf = 136315650;
        *&buf[4] = file;
        *&buf[12] = 1024;
        *&buf[14] = v101;
        *&buf[18] = 2080;
        *&buf[20] = v103;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unable to open %s: %d (%s)", buf, 0x1Cu);
      }

      *__error() = v31;
    }

    v14 = 0;
    ptr = 0;
    if (byte_100117E81 == 1)
    {
      v15 = 0;
      v1064 = 0;
      v1065 = 0;
      v1069 = 0;
      v1070 = 0;
      obj = 0;
      v1067 = 0;
      v1068 = 0;
      if (dword_100117510 > 3)
      {
        goto LABEL_127;
      }

      v16 = *__error();
      v34 = *__error();
      v35 = __error();
      v36 = strerror(*v35);
      v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to open %s: %d (%s)", file, v34, v36);
      v22 = v37;
      if (v37)
      {
        CStringPtr = CFStringGetCStringPtr(v37, 0x8000100u);
        if (CStringPtr)
        {
          v40 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x82A0C77CuLL);
          CFStringGetCString(v22, CStringPtr, 1024, 0x8000100u);
          v40 = CStringPtr;
        }

        if (qword_100117E88)
        {
          v71 = qword_100117E88;
        }

        else
        {
          v71 = __stderrp;
        }

        fprintf(v71, "%s\n", CStringPtr);
        if (v40)
        {
          free(v40);
        }

        goto LABEL_125;
      }

      v57 = sub_100035B80(0, v38);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
      {
        v109 = *__error();
        v110 = __error();
        v111 = strerror(*v110);
        *buf = 136315650;
        *&buf[4] = file;
        *&buf[12] = 1024;
        *&buf[14] = v109;
        *&buf[18] = 2080;
        *&buf[20] = v111;
        _os_log_fault_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unable to open %s: %d (%s)", buf, 0x1Cu);
      }

      if (qword_100117E88)
      {
        v58 = qword_100117E88;
      }

      else
      {
        v58 = __stderrp;
      }

LABEL_108:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v58);
LABEL_126:
      obj = 0;
      ptr = 0;
      v15 = 0;
      v1064 = 0;
      v1065 = 0;
      v1069 = 0;
      v1070 = 0;
      v1067 = 0;
      v1068 = 0;
      v14 = 0;
      *__error() = v16;
      goto LABEL_127;
    }

LABEL_57:
    v15 = 0;
    v1064 = 0;
    v1065 = 0;
    v1069 = 0;
    v1070 = 0;
    obj = 0;
    v1067 = 0;
    v1068 = 0;
    goto LABEL_127;
  }

  (v1072[2])();
  v6 = v1099[3];
  do
  {
    if (!fgets(v6, *(v1095 + 6), v5))
    {
      goto LABEL_19;
    }

    v6 = v1099[3];
  }

  while (strncmp("Report Version:", v6, 0xFuLL));
  v7 = strtol((v6 + 15), 0, 0);
  if (!v7)
  {
LABEL_19:
    if (byte_100117E80 == 1)
    {
      v25 = __error();
      v26 = *v25;
      v28 = sub_100035B80(v25, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000BD78C();
      }

      *__error() = v26;
    }

    v29 = byte_100117E81 == 1 && dword_100117510 <= 3;
    if (v29)
    {
      v41 = *__error();
      v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No report version. Not a spindump file?");
      v44 = v42;
      if (v42)
      {
        v45 = CFStringGetCStringPtr(v42, 0x8000100u);
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v45 = malloc_type_calloc(0x400uLL, 1uLL, 0x14346A06uLL);
          CFStringGetCString(v44, v45, 1024, 0x8000100u);
          v46 = v45;
        }

        if (qword_100117E88)
        {
          v59 = qword_100117E88;
        }

        else
        {
          v59 = __stderrp;
        }

        fprintf(v59, "%s\n", v45);
        if (v46)
        {
          free(v46);
        }

        goto LABEL_69;
      }

      v47 = sub_100035B80(0, v43);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        sub_1000BD7C0();
      }

      if (qword_100117E88)
      {
        v48 = qword_100117E88;
      }

      else
      {
        v48 = __stderrp;
      }

LABEL_46:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
LABEL_70:
      v60 = __error();
      obj = 0;
      ptr = 0;
      v15 = 0;
      v1064 = 0;
      v1065 = 0;
      v1069 = 0;
      v1070 = 0;
      v1067 = 0;
      v1068 = 0;
LABEL_71:
      v14 = 0;
      *v60 = v41;
      goto LABEL_127;
    }

    obj = 0;
    ptr = 0;
    v15 = 0;
    v1064 = 0;
    v1065 = 0;
    v1069 = 0;
    v1070 = 0;
    v1067 = 0;
    v1068 = 0;
LABEL_28:
    v14 = 0;
    goto LABEL_127;
  }

  v8 = v7;
  if (fgets(v1099[3], *(v1095 + 6), v5) && !strncmp("Report Variant:   condensed", v1099[3], 0x1BuLL))
  {
    if (byte_100117E80 == 1)
    {
      v61 = __error();
      v62 = *v61;
      v64 = sub_100035B80(v61, v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BD138();
      }

      *__error() = v62;
    }

    v1058 = 1;
    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v65 = *__error();
      v66 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Detected condensed report variant");
      v68 = v66;
      if (v66)
      {
        v69 = CFStringGetCStringPtr(v66, 0x8000100u);
        if (v69)
        {
          v70 = 0;
        }

        else
        {
          v69 = malloc_type_calloc(0x400uLL, 1uLL, 0x692606CFuLL);
          CFStringGetCString(v68, v69, 1024, 0x8000100u);
          v70 = v69;
        }

        if (qword_100117E88)
        {
          v107 = qword_100117E88;
        }

        else
        {
          v107 = __stderrp;
        }

        fprintf(v107, "%s\n", v69);
        if (v70)
        {
          free(v70);
        }

        CFRelease(v68);
      }

      else
      {
        v104 = sub_100035B80(0, v67);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
        {
          sub_1000BD178();
        }

        if (qword_100117E88)
        {
          v105 = qword_100117E88;
        }

        else
        {
          v105 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v105);
      }

      *__error() = v65;
      v1058 = 1;
    }
  }

  else
  {
    v1058 = 0;
  }

  if (fseek(v5, 0, 0))
  {
    if (byte_100117E80 == 1)
    {
      v9 = __error();
      v10 = *v9;
      v12 = sub_100035B80(v9, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __error();
        v13 = __error();
        strerror(*v13);
        sub_1000BD1AC();
      }

      *__error() = v10;
    }

    v14 = 0;
    ptr = 0;
    if (byte_100117E81 == 1)
    {
      v15 = 0;
      v1064 = 0;
      v1065 = 0;
      v1069 = 0;
      v1070 = 0;
      obj = 0;
      v1067 = 0;
      v1068 = 0;
      if (dword_100117510 > 3)
      {
        goto LABEL_127;
      }

      v16 = *__error();
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text requires a seekable file: %d (%s)", v17, v19);
      v22 = v20;
      if (v20)
      {
        v23 = CFStringGetCStringPtr(v20, 0x8000100u);
        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x717B2CBAuLL);
          CFStringGetCString(v22, v23, 1024, 0x8000100u);
          v24 = v23;
        }

        if (qword_100117E88)
        {
          v98 = qword_100117E88;
        }

        else
        {
          v98 = __stderrp;
        }

        fprintf(v98, "%s\n", v23);
        if (v24)
        {
          free(v24);
        }

LABEL_125:
        CFRelease(v22);
        goto LABEL_126;
      }

      v84 = sub_100035B80(0, v21);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
      {
        __error();
        v85 = __error();
        strerror(*v85);
        sub_1000BD1F0();
      }

      if (qword_100117E88)
      {
        v58 = qword_100117E88;
      }

      else
      {
        v58 = __stderrp;
      }

      goto LABEL_108;
    }

    goto LABEL_57;
  }

  if (v8 <= 19)
  {
    if (byte_100117E80 == 1)
    {
      v49 = __error();
      v50 = *v49;
      v52 = sub_100035B80(v49, v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_1000BD724();
      }

      *__error() = v50;
    }

    v14 = 0;
    ptr = 0;
    if (byte_100117E81 != 1)
    {
      goto LABEL_57;
    }

    v15 = 0;
    v1064 = 0;
    v1065 = 0;
    v1069 = 0;
    v1070 = 0;
    obj = 0;
    v1067 = 0;
    v1068 = 0;
    if (dword_100117510 > 3)
    {
      goto LABEL_127;
    }

    v41 = *__error();
    v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to parse text of the report: spindump report version 20+ required");
    v44 = v53;
    if (v53)
    {
      v55 = CFStringGetCStringPtr(v53, 0x8000100u);
      if (v55)
      {
        v56 = 0;
      }

      else
      {
        v55 = malloc_type_calloc(0x400uLL, 1uLL, 0xD1CE92A8uLL);
        CFStringGetCString(v44, v55, 1024, 0x8000100u);
        v56 = v55;
      }

      if (qword_100117E88)
      {
        v108 = qword_100117E88;
      }

      else
      {
        v108 = __stderrp;
      }

      fprintf(v108, "%s\n", v55);
      if (v56)
      {
        free(v56);
      }

LABEL_69:
      CFRelease(v44);
      goto LABEL_70;
    }

    v106 = sub_100035B80(0, v54);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_FAULT))
    {
      sub_1000BD758();
    }

    if (qword_100117E88)
    {
      v48 = qword_100117E88;
    }

    else
    {
      v48 = __stderrp;
    }

    goto LABEL_46;
  }

  if (v1058)
  {
    v72 = @"^(?<indentCount>\\d+)(?<kernelDot>\\*)?\\s+(?<count>\\d+)\\s+(?:(?<binaryIndex>\\d+)\\s+\\+\\s+(?<offsetIntoBinary>\\d+)|\\?\\?\\?)$";
  }

  else
  {
    v72 = @"^(?<indentWhitespace> +(?<kernelDot>\\*)?)(?<countAndWhitespace>(?<count>\\d+)\\s+)(?:\\?\\?\\?(?:\\s+\\+\\s+(?<offsetIntoUnknownSymbol>\\d+))?|(?<symbolName>.*?)\\s+\\+\\s+(?<offsetIntoSymbol>\\d+))(?:\\s+\\((?:(?<sourceFilepath>.+?)(?::(?<sourceLineNumber>\\d+)(?:[:\\.,](?<sourceColumnNumber>\\d+))?)?\\s+in\\s+)?(?:<(?<binaryUuid>[\\dabcdef\\-]{32,36})>|(?<binaryName>.+?))\\s+\\+\\s+(?<offsetIntoBinary>\\d+)\\))?(?:\\s+\\[(?<address>(?:0x)?[\\dabcdef]+)\\])?(?:\\s+\\((?<stateInfo>.+?)\\))?(?:\\s+(?<startIndex>\\d+)(?:\\s*-\\s*(?<endIndex>\\d+))?)?$";
  }

  v73 = [NSRegularExpression alloc];
  v1119[0] = 0;
  v1069 = [v73 initWithPattern:v72 options:1 error:v1119];
  v74 = v1119[0];
  v75 = v74;
  if (!v1069)
  {
    if (byte_100117E80 == 1)
    {
      v696 = __error();
      v697 = *v696;
      v699 = sub_100035B80(v696, v698);
      if (os_log_type_enabled(v699, OS_LOG_TYPE_ERROR))
      {
        uTF8String = [(__CFString *)v72 UTF8String];
        v701 = [v75 debugDescription];
        v702 = v701;
        uTF8String2 = [v701 UTF8String];
        *buf = 136315650;
        *&buf[4] = "regex";
        *&buf[12] = 2080;
        *&buf[14] = uTF8String;
        *&buf[22] = 2080;
        *&buf[24] = uTF8String2;
        _os_log_error_impl(&_mh_execute_header, v699, OS_LOG_TYPE_ERROR, "%s: Unable to compile regex %s: %s", buf, 0x20u);
      }

      *__error() = v697;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v704 = *__error();
      uTF8String3 = [(__CFString *)v72 UTF8String];
      v706 = [v75 debugDescription];
      v707 = v706;
      v708 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to compile regex %s: %s", "regex", uTF8String3, [v706 UTF8String]);

      if (v708)
      {
        v958 = CFStringGetCStringPtr(v708, 0x8000100u);
        if (v958)
        {
          v959 = 0;
        }

        else
        {
          v958 = malloc_type_calloc(0x400uLL, 1uLL, 0x134220A1uLL);
          CFStringGetCString(v708, v958, 1024, 0x8000100u);
          v959 = v958;
        }

        if (qword_100117E88)
        {
          v964 = qword_100117E88;
        }

        else
        {
          v964 = __stderrp;
        }

        fprintf(v964, "%s\n", v958);
        if (v959)
        {
          free(v959);
        }

        CFRelease(v708);
      }

      else
      {
        v711 = sub_100035B80(v709, v710);
        if (os_log_type_enabled(v711, OS_LOG_TYPE_FAULT))
        {
          uTF8String4 = [(__CFString *)v72 UTF8String];
          v713 = [v75 debugDescription];
          v714 = v713;
          uTF8String5 = [v713 UTF8String];
          *buf = 136315650;
          *&buf[4] = "regex";
          *&buf[12] = 2080;
          *&buf[14] = uTF8String4;
          *&buf[22] = 2080;
          *&buf[24] = uTF8String5;
          _os_log_fault_impl(&_mh_execute_header, v711, OS_LOG_TYPE_FAULT, "Unable to format: %s: Unable to compile regex %s: %s", buf, 0x20u);
        }

        if (qword_100117E88)
        {
          v716 = qword_100117E88;
        }

        else
        {
          v716 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v716);
      }

      *__error() = v704;
    }

    uTF8String6 = [(__CFString *)v72 UTF8String];
    v718 = [v75 debugDescription];
    v719 = v718;
    uTF8String7 = [v718 UTF8String];
    sub_100035A54("CallTreeFrameLineRegex", "SPTextualReportParser.m", 1816, "%s: Unable to compile regex %s: %s", v721, v722, v723, v724, "regex", uTF8String6, uTF8String7);

    goto LABEL_1248;
  }

  if (v1058)
  {
    v76 = @"^(?<indentCount>\\d+)(?<kernelDot>\\*)?\\s+(?<count>\\d+)\\s+(?:state\\s+(?<stateInfo>(?:0x)?[\\dabcdef]+)|<(?<angleBracketContents>.*)>|(?<otherInfo>[^<\\s\\d].*))$";
  }

  else
  {
    v76 = @"^(?<indentWhitespace> +(?<kernelDot>\\*)?)(?<countAndWhitespace>(?<count>\\d+)\\s+)?<(?<angleBracketContents>.*)>(?:\\s+\\((?<stateInfo>.+?)\\))?(?:\\s+(?<startIndex>\\d+)(?:\\s*-\\s*(?<endIndex>\\d+))?)?$";
  }

  v77 = [NSRegularExpression alloc];
  v1102 = 0;
  v1068 = [v77 initWithPattern:v76 options:1 error:&v1102];
  v78 = v1102;
  if (!v1068)
  {
    if (byte_100117E80 == 1)
    {
      v725 = __error();
      v726 = *v725;
      v728 = sub_100035B80(v725, v727);
      if (os_log_type_enabled(v728, OS_LOG_TYPE_ERROR))
      {
        sub_1000BD68C([(__CFString *)v76 UTF8String], buf);
      }

      *__error() = v726;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v729 = *__error();
      v730 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to compile regex %s", "regex", [(__CFString *)v76 UTF8String]);
      v732 = v730;
      if (v730)
      {
        v882 = CFStringGetCStringPtr(v730, 0x8000100u);
        if (v882)
        {
          v883 = 0;
        }

        else
        {
          v882 = malloc_type_calloc(0x400uLL, 1uLL, 0xB9202467uLL);
          CFStringGetCString(v732, v882, 1024, 0x8000100u);
          v883 = v882;
        }

        if (qword_100117E88)
        {
          v894 = qword_100117E88;
        }

        else
        {
          v894 = __stderrp;
        }

        fprintf(v894, "%s\n", v882);
        if (v883)
        {
          free(v883);
        }

        CFRelease(v732);
      }

      else
      {
        v733 = sub_100035B80(0, v731);
        if (os_log_type_enabled(v733, OS_LOG_TYPE_FAULT))
        {
          sub_1000BD6D8([(__CFString *)v76 UTF8String], v1119);
        }

        if (qword_100117E88)
        {
          v734 = qword_100117E88;
        }

        else
        {
          v734 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v734);
      }

      *__error() = v729;
    }

    uTF8String8 = [(__CFString *)v76 UTF8String];
    sub_100035A54("CallTreeNonFrameLineRegex", "SPTextualReportParser.m", 1879, "%s: Unable to compile regex %s", v896, v897, v898, v899, "regex", uTF8String8);
    goto LABEL_1248;
  }

  if (v1058)
  {
    v79 = @"^(?<binaryIndex>\\d+)\\t(?<kernelDot>\\*)?(?<bundleIdentifier>\\S+)?\\t(?<version>.+?)?\\t<(?<binaryUuid>[\\dabcdef\\-]{32,36})>\\t(?<segmentName>\\S+?)?\\t(?<binaryPath>.+?)?$";
  }

  else
  {
    v79 = @"^\\s*(?<kernelDot>\\*)?(?:(?<startAddress>(?:0x)?[\\dabcdef]+)|\\?\\?\\?)\\s*\\-\\s*(?:(?<endAddress>(?:0x)?[\\dabcdef]+)|\\?\\?\\?)\\s*(?:\\?\\?\\?|(?<bundleIdentifier>\\S+\\.\\S+\\.\\S+)|(?<name>.+?\\b))\\s+(?<version>(?:\\d[\\S]*?)?(?:\\s*\\(\\S+?\\)))?\\s*<(?<binaryUuid>[\\dabcdef\\-]{32,36})>(?<segmentName>\\S+?)?(?:\\s+(?<binaryPath>.+?)?)?$";
  }

  v80 = [NSRegularExpression alloc];
  v1102 = 0;
  v1067 = [v80 initWithPattern:v79 options:1 error:&v1102];
  v81 = v1102;
  if (!v1067)
  {
    if (byte_100117E80 == 1)
    {
      v735 = __error();
      v736 = *v735;
      v738 = sub_100035B80(v735, v737);
      if (os_log_type_enabled(v738, OS_LOG_TYPE_ERROR))
      {
        sub_1000BD68C([(__CFString *)v79 UTF8String], buf);
      }

      *__error() = v736;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v739 = *__error();
      v740 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to compile regex %s", "regex", [(__CFString *)v79 UTF8String]);
      v742 = v740;
      if (v740)
      {
        v884 = CFStringGetCStringPtr(v740, 0x8000100u);
        if (v884)
        {
          v885 = 0;
        }

        else
        {
          v884 = malloc_type_calloc(0x400uLL, 1uLL, 0xBB67A353uLL);
          CFStringGetCString(v742, v884, 1024, 0x8000100u);
          v885 = v884;
        }

        if (qword_100117E88)
        {
          v900 = qword_100117E88;
        }

        else
        {
          v900 = __stderrp;
        }

        fprintf(v900, "%s\n", v884);
        if (v885)
        {
          free(v885);
        }

        CFRelease(v742);
      }

      else
      {
        v743 = sub_100035B80(0, v741);
        if (os_log_type_enabled(v743, OS_LOG_TYPE_FAULT))
        {
          sub_1000BD6D8([(__CFString *)v79 UTF8String], v1119);
        }

        if (qword_100117E88)
        {
          v744 = qword_100117E88;
        }

        else
        {
          v744 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v744);
      }

      *__error() = v739;
    }

    uTF8String9 = [(__CFString *)v79 UTF8String];
    sub_100035A54("LoadInfoLineRegex", "SPTextualReportParser.m", 1958, "%s: Unable to compile regex %s", v902, v903, v904, v905, "regex", uTF8String9);
    goto LABEL_1248;
  }

  v82 = [NSRegularExpression alloc];
  v1102 = 0;
  v1064 = [v82 initWithPattern:@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 options:36})>?|(?<binaryIndex>\\d+))$" error:{1, &v1102}];
  v83 = v1102;
  if (!v1064)
  {
    if (byte_100117E80 == 1)
    {
      v745 = __error();
      v746 = *v745;
      v748 = sub_100035B80(v745, v747);
      if (os_log_type_enabled(v748, OS_LOG_TYPE_ERROR))
      {
        sub_1000BD68C([@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 36})>?|(?<binaryIndex>\\d+))$"], buf);
      }

      *__error() = v746;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v749 = *__error();
      v750 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to compile regex %s", "regex", [@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 36})>?|(?<binaryIndex>\\d+))$"]);
      v752 = v750;
      if (v750)
      {
        v886 = CFStringGetCStringPtr(v750, 0x8000100u);
        if (v886)
        {
          v887 = 0;
        }

        else
        {
          v886 = malloc_type_calloc(0x400uLL, 1uLL, 0xD97EBE6BuLL);
          CFStringGetCString(v752, v886, 1024, 0x8000100u);
          v887 = v886;
        }

        if (qword_100117E88)
        {
          v906 = qword_100117E88;
        }

        else
        {
          v906 = __stderrp;
        }

        fprintf(v906, "%s\n", v886);
        if (v887)
        {
          free(v887);
        }

        CFRelease(v752);
      }

      else
      {
        v753 = sub_100035B80(0, v751);
        if (os_log_type_enabled(v753, OS_LOG_TYPE_FAULT))
        {
          sub_1000BD6D8([@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 36})>?|(?<binaryIndex>\\d+))$"], v1119);
        }

        if (qword_100117E88)
        {
          v754 = qword_100117E88;
        }

        else
        {
          v754 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v754);
      }

      *__error() = v749;
    }

    v907 = [@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 36})>?|(?<binaryIndex>\\d+))$"];
    sub_100035A54("UUIDLineRegex", "SPTextualReportParser.m", 1984, "%s: Unable to compile regex %s", v908, v909, v910, v911, "regex", v907);
    goto LABEL_1248;
  }

  v1092 = 0;
  v1091 = 0;
  v1090 = 0;
  if (v1058)
  {
    v1090 = 2;
    v1091 = 2;
    v1092 = 1;
  }

  else
  {
    v86 = v1069;
    v1090 = -1;
    v1091 = -1;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10009CB60;
    *&buf[24] = &unk_10010A000;
    *&buf[32] = v86;
    *&buf[40] = &v1092;
    *&buf[48] = &v1090;
    v1108 = &v1091;
    v87 = v86;
    sub_10009A5FC(v5, 0, buf);

    if (v1090 <= 0)
    {
      if (byte_100117E80 == 1)
      {
        v88 = __error();
        v89 = *v88;
        v91 = sub_100035B80(v88, v90);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "Parsing spindump text: Unable to detect initial indentation, using 2", buf, 2u);
        }

        *__error() = v89;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v92 = *__error();
        v93 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to detect initial indentation, using 2");
        v95 = v93;
        if (v93)
        {
          v96 = CFStringGetCStringPtr(v93, 0x8000100u);
          if (v96)
          {
            v97 = 0;
          }

          else
          {
            v96 = malloc_type_calloc(0x400uLL, 1uLL, 0x68A294DCuLL);
            CFStringGetCString(v95, v96, 1024, 0x8000100u);
            v97 = v96;
          }

          if (qword_100117E88)
          {
            v114 = qword_100117E88;
          }

          else
          {
            v114 = __stderrp;
          }

          fprintf(v114, "%s\n", v96);
          if (v97)
          {
            free(v97);
          }

          CFRelease(v95);
        }

        else
        {
          v112 = sub_100035B80(0, v94);
          if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
          {
            sub_1000BD234();
          }

          if (qword_100117E88)
          {
            v113 = qword_100117E88;
          }

          else
          {
            v113 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v113);
        }

        *__error() = v92;
      }

      v1090 = 2;
    }

    if (v1091 <= 0)
    {
      if (byte_100117E80 == 1)
      {
        v115 = __error();
        v116 = *v115;
        v118 = sub_100035B80(v115, v117);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_INFO, "Parsing spindump text: Unable to detect incremental indentation, using 2", buf, 2u);
        }

        *__error() = v116;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v119 = *__error();
        v120 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to detect incremental indentation, using 2");
        v122 = v120;
        if (v120)
        {
          v123 = CFStringGetCStringPtr(v120, 0x8000100u);
          if (v123)
          {
            v124 = 0;
          }

          else
          {
            v123 = malloc_type_calloc(0x400uLL, 1uLL, 0x7F412522uLL);
            CFStringGetCString(v122, v123, 1024, 0x8000100u);
            v124 = v123;
          }

          if (qword_100117E88)
          {
            v127 = qword_100117E88;
          }

          else
          {
            v127 = __stderrp;
          }

          fprintf(v127, "%s\n", v123);
          if (v124)
          {
            free(v124);
          }

          CFRelease(v122);
        }

        else
        {
          v125 = sub_100035B80(0, v121);
          if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
          {
            sub_1000BD268();
          }

          if (qword_100117E88)
          {
            v126 = qword_100117E88;
          }

          else
          {
            v126 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v126);
        }

        *__error() = v119;
      }

      v1091 = 2;
    }
  }

  if (self->_isHeavy)
  {
    if (v1092)
    {
      p_startIndex = &self->_startIndex;
      if (self->_startIndex || self->_endIndex)
      {
        if (byte_100117E80 == 1)
        {
          v128 = __error();
          v129 = *v128;
          v131 = sub_100035B80(v128, v130);
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            sub_1000BD304();
          }

          *__error() = v129;
        }

        v14 = 0;
        ptr = 0;
        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v41 = *__error();
          v132 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Original report is not in timeline mode, so unable to filter to start/end indexes");
          v134 = v132;
          if (v132)
          {
            v135 = CFStringGetCStringPtr(v132, 0x8000100u);
            if (v135)
            {
              v136 = 0;
            }

            else
            {
              v135 = malloc_type_calloc(0x400uLL, 1uLL, 0x88A3DD5DuLL);
              CFStringGetCString(v134, v135, 1024, 0x8000100u);
              v136 = v135;
            }

            if (qword_100117E88)
            {
              v626 = qword_100117E88;
            }

            else
            {
              v626 = __stderrp;
            }

            fprintf(v626, "%s\n", v135);
            if (v136)
            {
              free(v136);
            }

LABEL_931:
            CFRelease(v134);
            goto LABEL_932;
          }

          v172 = sub_100035B80(0, v133);
          if (os_log_type_enabled(v172, OS_LOG_TYPE_FAULT))
          {
            sub_1000BD338();
          }

          if (qword_100117E88)
          {
            v171 = qword_100117E88;
          }

          else
          {
            v171 = __stderrp;
          }

          goto LABEL_910;
        }

        goto LABEL_898;
      }

      goto LABEL_224;
    }
  }

  else if (v1092)
  {
    if (byte_100117E80 == 1)
    {
      v137 = __error();
      v138 = *v137;
      v140 = sub_100035B80(v137, v139);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        sub_1000BD29C();
      }

      *__error() = v138;
    }

    v14 = 0;
    ptr = 0;
    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v41 = *__error();
      v141 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Original report is not in timeline mode, so unable to output timeline mode");
      v134 = v141;
      if (v141)
      {
        v143 = CFStringGetCStringPtr(v141, 0x8000100u);
        if (v143)
        {
          v144 = 0;
        }

        else
        {
          v143 = malloc_type_calloc(0x400uLL, 1uLL, 0xCB89CD56uLL);
          CFStringGetCString(v134, v143, 1024, 0x8000100u);
          v144 = v143;
        }

        if (qword_100117E88)
        {
          v625 = qword_100117E88;
        }

        else
        {
          v625 = __stderrp;
        }

        fprintf(v625, "%s\n", v143);
        if (v144)
        {
          free(v144);
        }

        goto LABEL_931;
      }

      v170 = sub_100035B80(0, v142);
      if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
      {
        sub_1000BD2D0();
      }

      if (qword_100117E88)
      {
        v171 = qword_100117E88;
      }

      else
      {
        v171 = __stderrp;
      }

      goto LABEL_910;
    }

LABEL_898:
    v15 = 0;
    v1065 = 0;
    v1070 = 0;
    obj = 0;
    goto LABEL_127;
  }

  p_startIndex = &self->_startIndex;
  if (self->_startIndex)
  {
LABEL_225:
    if (byte_100117E80 == 1)
    {
      v145 = __error();
      v146 = *v145;
      v148 = sub_100035B80(v145, v147);
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: Stacks will be filtered to the sample index range specified, but process and thread summary information and timestamps will still reflect full time range", buf, 2u);
      }

      *__error() = v146;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v149 = *__error();
      v150 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Stacks will be filtered to the sample index range specified, but process and thread summary information and timestamps will still reflect full time range");
      v152 = v150;
      if (v150)
      {
        v153 = CFStringGetCStringPtr(v150, 0x8000100u);
        if (v153)
        {
          v154 = 0;
        }

        else
        {
          v153 = malloc_type_calloc(0x400uLL, 1uLL, 0x5CF7E278uLL);
          CFStringGetCString(v152, v153, 1024, 0x8000100u);
          v154 = v153;
        }

        if (qword_100117E88)
        {
          v157 = qword_100117E88;
        }

        else
        {
          v157 = __stderrp;
        }

        fprintf(v157, "%s\n", v153);
        if (v154)
        {
          free(v154);
        }

        CFRelease(v152);
      }

      else
      {
        v155 = sub_100035B80(0, v151);
        if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
        {
          sub_1000BD36C();
        }

        if (qword_100117E88)
        {
          v156 = qword_100117E88;
        }

        else
        {
          v156 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v156);
      }

      *__error() = v149;
    }

    goto LABEL_248;
  }

LABEL_224:
  if (self->_endIndex)
  {
    goto LABEL_225;
  }

LABEL_248:
  if (self->_symbolicate)
  {
    if (byte_100117E80 == 1)
    {
      v158 = __error();
      v159 = *v158;
      v161 = sub_100035B80(v158, v160);
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: Symbolicating...", buf, 2u);
      }

      *__error() = v159;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 2)
    {
      v162 = *__error();
      v163 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Symbolicating...");
      v165 = v163;
      if (v163)
      {
        v166 = CFStringGetCStringPtr(v163, 0x8000100u);
        if (v166)
        {
          v167 = 0;
        }

        else
        {
          v166 = malloc_type_calloc(0x400uLL, 1uLL, 0x9C1A4E7DuLL);
          CFStringGetCString(v165, v166, 1024, 0x8000100u);
          v167 = v166;
        }

        if (qword_100117E88)
        {
          v173 = qword_100117E88;
        }

        else
        {
          v173 = __stderrp;
        }

        fprintf(v173, "%s\n", v166);
        if (v167)
        {
          free(v167);
        }

        CFRelease(v165);
      }

      else
      {
        v168 = sub_100035B80(0, v164);
        if (os_log_type_enabled(v168, OS_LOG_TYPE_FAULT))
        {
          sub_1000BD3A0();
        }

        if (qword_100117E88)
        {
          v169 = qword_100117E88;
        }

        else
        {
          v169 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v169);
      }

      *__error() = v162;
    }

    sub_100098044(v5, v1069, v1067, v1058, self->_useDsymForUUIDForEverything, self->_findDsymsForIDs);
  }

  v1070 = sub_100098334(v5, 0, v1067, v1058);
  streamCopy6 = stream;
  if (!v1070)
  {
    if (byte_100117E80 == 1)
    {
      v616 = __error();
      v617 = *v616;
      v619 = sub_100035B80(v616, v618);
      if (os_log_type_enabled(v619, OS_LOG_TYPE_ERROR))
      {
        sub_1000BD624();
      }

      *__error() = v617;
    }

    v14 = 0;
    ptr = 0;
    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v41 = *__error();
      v620 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to find any Binary Images");
      v134 = v620;
      if (v620)
      {
        v622 = CFStringGetCStringPtr(v620, 0x8000100u);
        if (v622)
        {
          v623 = 0;
        }

        else
        {
          v622 = malloc_type_calloc(0x400uLL, 1uLL, 0x31B6311CuLL);
          CFStringGetCString(v134, v622, 1024, 0x8000100u);
          v623 = v622;
        }

        if (qword_100117E88)
        {
          v627 = qword_100117E88;
        }

        else
        {
          v627 = __stderrp;
        }

        fprintf(v627, "%s\n", v622);
        if (v623)
        {
          free(v623);
        }

        goto LABEL_931;
      }

      v624 = sub_100035B80(0, v621);
      if (os_log_type_enabled(v624, OS_LOG_TYPE_FAULT))
      {
        sub_1000BD658();
      }

      if (qword_100117E88)
      {
        v171 = qword_100117E88;
      }

      else
      {
        v171 = __stderrp;
      }

LABEL_910:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v171);
LABEL_932:
      v60 = __error();
      obj = 0;
      ptr = 0;
      v15 = 0;
      v1065 = 0;
      v1070 = 0;
      goto LABEL_71;
    }

    goto LABEL_898;
  }

  if (fgets(v1099[3], *(v1095 + 6), v5))
  {
    obj = 0;
    ptr = 0;
    v1065 = 0;
    v15 = 0;
    v1004 = 0;
    LODWORD(v1028) = 0;
    v998 = 0;
    v1018 = 0;
    v1005 = 0;
    v1050 = 0xFFFFFFFFLL;
    v175 = -1;
    while (1)
    {
      v1052 = v175;
      v1053 = v15;
      v1037 = objc_autoreleasePoolPush();
      v176 = v1099[3];
      v177 = strnlen(v176, *(v1095 + 6));
      if (v176[v177 - 1] != 10)
      {
        (v1072[2])();
        streamCopy6 = stream;
        v185 = 5;
        goto LABEL_786;
      }

      v176[v177 - 1] = 0;
      [NSString stringWithUTF8String:v1099[3]];
      streamCopy5 = stream;
      v180 = v175;
      v181 = v179 = v15;
      v182 = [v1069 firstMatchInString:v181 options:0 range:{0, objc_msgSend(v181, "length")}];
      v1028 = (v1028 + 1);
      v1021 = v182;
      v1022 = v181;
      if (v182)
      {
        v1089 = 0;
        v1054 = sub_100098494(v181, v182, v1058, v1090, v1091);
        v1023 = [v182 rangeWithName:@"kernelDot"];
        v1102 = -1;
        v183 = sub_100098564(v181, v1028, v182, v1070, v1058, &v1102);
        v184 = v183;
        if (v1052 != -1)
        {
          if (v1102 == v1052 && v1053 == v183)
          {
            LOBYTE(v1089) = 1;
          }

          else
          {

            v179 = 0;
            v180 = -1;
          }
        }

        v194 = [v182 rangeWithName:@"symbolName"];
        if (v194 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v195 = 0;
        }

        else
        {
          v195 = [v181 substringWithRange:{v194, v193}];
        }

        v197 = [v182 rangeWithName:@"offsetIntoSymbol"];
        v1052 = v180;
        v1053 = v179;
        if (v197 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v198 = -1;
        }

        else
        {
          v199 = [v181 substringWithRange:{v197, v196}];
          v200 = sub_10009A270(v199);

          v198 = v200;
        }

        v1045 = v198;
        v201 = v1090;
        v202 = v1091;
        v203 = v1102;
        v204 = v1069;
        v205 = v1070;
        v206 = v1068;
        v207 = v184;
        v208 = v195;
        HIBYTE(v1089) = 0;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10009C8EC;
        *&buf[24] = &unk_100109FD8;
        *&buf[32] = v204;
        *&buf[40] = v206;
        v1117 = v1058;
        v1114 = v201;
        v1115 = v202;
        v1116 = v1054;
        v1118 = v1023 != 0x7FFFFFFFFFFFFFFFLL;
        v1111 = &v1089;
        v1112 = v203;
        *&buf[48] = v207;
        v1108 = v205;
        v1110 = &v1089 + 1;
        v1109 = v208;
        v1113 = v1045;
        v1011 = v208;
        v1070 = v205;
        v209 = v207;
        v210 = v206;
        v211 = v204;
        sub_10009A5FC(v5, v1028, buf);

        if (v1089 == 1)
        {
          v212 = v209;

          v213 = v1089;
          v1008 = v1102;
          v1052 = v1102;
          v1053 = v212;
        }

        else
        {
          v213 = 0;
          v1008 = v1102;
        }

        v214 = HIBYTE(v1089);
        v215 = v1022;
        v216 = v1021;
        v217 = v209;
        v1046 = objc_autoreleasePoolPush();
        v219 = [v216 rangeWithName:@"count"];
        if (v219 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (byte_100117E80 == 1)
          {
            v683 = __error();
            v684 = *v683;
            v686 = sub_100035B80(v683, v685);
            if (os_log_type_enabled(v686, OS_LOG_TYPE_ERROR))
            {
              v687 = v215;
              [v215 UTF8String];
              sub_1000BD45C();
            }

            *__error() = v684;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v688 = *__error();
            v689 = v215;
            v690 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: frame match with no count (%d: %s)", "range.location != NSNotFound", v1028, [v215 UTF8String]);
            v692 = v690;
            if (v690)
            {
              v890 = CFStringGetCStringPtr(v690, 0x8000100u);
              if (v890)
              {
                v891 = 0;
              }

              else
              {
                v890 = malloc_type_calloc(0x400uLL, 1uLL, 0xE8AB3756uLL);
                CFStringGetCString(v692, v890, 1024, 0x8000100u);
                v891 = v890;
              }

              if (qword_100117E88)
              {
                v915 = qword_100117E88;
              }

              else
              {
                v915 = __stderrp;
              }

              fprintf(v915, "%s\n", v890);
              if (v891)
              {
                free(v891);
              }

              CFRelease(v692);
            }

            else
            {
              v693 = sub_100035B80(0, v691);
              if (os_log_type_enabled(v693, OS_LOG_TYPE_FAULT))
              {
                v694 = v215;
                [v215 UTF8String];
                sub_1000BD4A0();
              }

              if (qword_100117E88)
              {
                v695 = qword_100117E88;
              }

              else
              {
                v695 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v695);
            }

            *__error() = v688;
          }

          v916 = v215;
          uTF8String10 = [v215 UTF8String];
          sub_100035A54("ParseFrameLine", "SPTextualReportParser.m", 1511, "%s: frame match with no count (%d: %s)", v918, v919, v920, v921, "range.location != NSNotFound", v1028, uTF8String10);
          goto LABEL_1248;
        }

        v220 = [v215 substringWithRange:{v219, v218}];
        v1033 = sub_10009A270(v220);

        if (v1058)
        {
          v1002 = 0;
          v221 = -1;
          goto LABEL_310;
        }

        v222 = [v216 rangeWithName:@"countAndWhitespace"];
        v1002 = v223;
        if (v222 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (byte_100117E80 == 1)
          {
            v755 = __error();
            v756 = *v755;
            v758 = sub_100035B80(v755, v757);
            if (os_log_type_enabled(v758, OS_LOG_TYPE_ERROR))
            {
              v759 = v215;
              [v215 UTF8String];
              sub_1000BD3D4();
            }

            *__error() = v756;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v760 = *__error();
            v761 = v215;
            v762 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: frame match with no count and whitespace (%d: %s)", "range.location != NSNotFound", v1028, [v215 UTF8String]);
            v764 = v762;
            if (v762)
            {
              v892 = CFStringGetCStringPtr(v762, 0x8000100u);
              if (v892)
              {
                v893 = 0;
              }

              else
              {
                v892 = malloc_type_calloc(0x400uLL, 1uLL, 0xDAB5F7ABuLL);
                CFStringGetCString(v764, v892, 1024, 0x8000100u);
                v893 = v892;
              }

              if (qword_100117E88)
              {
                v922 = qword_100117E88;
              }

              else
              {
                v922 = __stderrp;
              }

              fprintf(v922, "%s\n", v892);
              if (v893)
              {
                free(v893);
              }

              CFRelease(v764);
            }

            else
            {
              v765 = sub_100035B80(0, v763);
              if (os_log_type_enabled(v765, OS_LOG_TYPE_FAULT))
              {
                v766 = v215;
                [v215 UTF8String];
                sub_1000BD418();
              }

              if (qword_100117E88)
              {
                v767 = qword_100117E88;
              }

              else
              {
                v767 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v767);
            }

            *__error() = v760;
          }

          v923 = v215;
          uTF8String11 = [v215 UTF8String];
          sub_100035A54("ParseFrameLine", "SPTextualReportParser.m", 1515, "%s: frame match with no count and whitespace (%d: %s)", v925, v926, v927, v928, "range.location != NSNotFound", v1028, uTF8String11);
          goto LABEL_1248;
        }

        v225 = [v216 rangeWithName:@"address"];
        if (v225 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v1015 = 0;
          if (v217 && v1008 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v221 = &v1008[v217[7]];
LABEL_310:
            v1015 = v221;
          }
        }

        else
        {
          v229 = [v215 substringWithRange:{v225, v224}];
          v1015 = sub_10009A270(v229);
        }

        v1029 = v215;
        v230 = v216;
        selfa = v217;
        v1038 = objc_autoreleasePoolPush();
        v232 = [v230 rangeWithName:@"fakeFrameInfo"];
        if (v232 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v234 = [v230 rangeWithName:@"symbolName"];
          if (v234 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_324;
          }

          v235 = [v1029 substringWithRange:{v234, v233}];
          if ([v235 isEqualToString:@"???"])
          {

LABEL_324:
            v235 = 0;
          }

          v237 = [v230 rangeWithName:@"sourceFilepath"];
          if (v237 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v238 = 0;
          }

          else
          {
            v238 = [v1029 substringWithRange:{v237, v236}];
          }

          v242 = [v230 rangeWithName:@"binaryName"];
          if (v242 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v244 = [v230 rangeWithName:@"binaryUuid"];
            if (v244 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v256 = 0;
            }

            else
            {
              v256 = [v1029 substringWithRange:{v244, v243}];
              v256 = [NSString stringWithFormat:@"<%@>", v256];
            }
          }

          else
          {
            v256 = [v1029 substringWithRange:{v242, v241}];
          }

          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10009C4D0;
          *&buf[24] = &unk_100109F88;
          *&buf[32] = v230;
          *&buf[40] = v1029;
          v239 = v235;
          *&buf[48] = v239;
          v1000 = v238;
          v1108 = v1000;
          v1006 = v256;
          v1109 = v1006;
          v258 = objc_retainBlock(buf);
          if ((v213 & 1) != 0 || v1008 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v259 = [NSArray alloc];
            v260 = (*(v258 + 2))(v258);
            v261 = [v259 initWithObjects:{v260, 0}];
            goto LABEL_358;
          }

          if (selfa && (v272 = objc_getProperty(selfa, v257, 40, 1)) != 0)
          {
            v260 = v272;
            if (objc_getProperty(selfa, v273, 48, 1))
            {
              v275 = [v260 segmentWithName:{objc_getProperty(selfa, v274, 48, 1)}];
              v276 = v275;
              if (v275)
              {
                v277 = [v275 instructionAtOffsetIntoSegment:&v1008[-v214]];

                goto LABEL_567;
              }

              v435 = [NSArray alloc];
              v277 = (*(v258 + 2))(v258);
              v429 = [v435 initWithObjects:{v277, 0}];
LABEL_612:
              v240 = v429;
            }

            else
            {
              v277 = [v260 instructionAtOffsetIntoBinary:&v1008[-v214]];
LABEL_567:
              if (!v277)
              {
                v428 = [NSArray alloc];
                v277 = sub_10009C65C(0, -1, 0, 0, 0, 0, -1);
                v429 = [v428 initWithObjects:{v277, 0}];
                goto LABEL_612;
              }

              if ([v277 numSymbols] > 1 || !v1000 && ((v472 = objc_msgSend(v277, "hasSourceInfo"), !v239) ? (v473 = 1) : (v473 = v472), (v473 & 1) != 0))
              {
                name = [v260 name];

                if (name)
                {
                  name2 = [v260 name];
                }

                else
                {
                  uuid = [v260 uuid];
                  uUIDString = [uuid UUIDString];
                  name2 = [NSString stringWithFormat:@"<%@>", uUIDString];
                }

                v464 = objc_alloc_init(NSMutableArray);
                v1119[0] = _NSConcreteStackBlock;
                v1119[1] = 3221225472;
                v1119[2] = sub_10009C7EC;
                v1119[3] = &unk_100109FB0;
                v1124 = v214;
                v1120 = v277;
                v1121 = name2;
                v1123 = v1008;
                v465 = v464;
                v1122 = v465;
                v466 = name2;
                [v277 enumerateSymbols:v1119];
                v467 = [v465 count];
                v468 = v1122;
                if (v467)
                {
                  v240 = v465;
                }

                else
                {

                  v469 = [NSArray alloc];
                  v470 = sub_10009C65C(0, -1, 0, 0, 0, v466, v1008);

                  v240 = [v469 initWithObjects:{v470, 0}];
                  v466 = v470;
                }
              }

              else
              {
                v474 = [NSArray alloc];
                v466 = (*(v258 + 2))(v258);
                v240 = [v474 initWithObjects:{v466, 0}];
              }
            }
          }

          else
          {
            v389 = [NSArray alloc];
            if (v1006)
            {
              (*(v258 + 2))(v258);
            }

            else
            {
              sub_10009C65C(0, -1, 0, 0, 0, 0, -1);
            }
            v260 = ;
            v261 = [v389 initWithObjects:{v260, 0}];
LABEL_358:
            v240 = v261;
          }
        }

        else
        {
          v239 = [v1029 substringWithRange:{v232, v231}];
          v240 = [[NSArray alloc] initWithObjects:{v239, 0}];
        }

        objc_autoreleasePoolPop(v1038);
        if (v1058)
        {
          v262 = 0;
          v263 = 0;
          v264 = 0;
        }

        else
        {
          v266 = [v230 rangeWithName:@"stateInfo"];
          if (v266 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v264 = 0;
          }

          else
          {
            v264 = [v1029 substringWithRange:{v266, v265}];
          }

          v268 = [v230 rangeWithName:@"startIndex"];
          if (v268 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v262 = 0;
            v263 = 0;
          }

          else
          {
            v269 = [v1029 substringWithRange:{v268, v267}];
            v262 = sub_10009A270(v269);

            v271 = [v230 rangeWithName:@"endIndex"];
            if (v271 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v263 = v262;
            }

            else
            {
              v278 = [v1029 substringWithRange:{v271, v270}];
              v263 = sub_10009A270(v278);
            }
          }
        }

        objc_autoreleasePoolPop(v1046);
        v279 = v240;
        v280 = v264;

        v281 = v240;
        v1039 = v264;
        v1047 = v281;
        firstObject = [v281 firstObject];
        LODWORD(v281) = [firstObject length] == 0;

        if (v281)
        {
          if (byte_100117E80 == 1)
          {
            v628 = __error();
            v629 = *v628;
            v631 = sub_100035B80(v628, v630);
            if (os_log_type_enabled(v631, OS_LOG_TYPE_ERROR))
            {
              v632 = [v1047 debugDescription];
              v633 = v632;
              uTF8String12 = [v632 UTF8String];
              v635 = v1029;
              uTF8String13 = [v1029 UTF8String];
              *buf = 136315906;
              *&buf[4] = "frameBodies.firstObject.length > 0";
              *&buf[12] = 2080;
              *&buf[14] = uTF8String12;
              *&buf[22] = 1024;
              *&buf[24] = v1028;
              *&buf[28] = 2080;
              *&buf[30] = uTF8String13;
              _os_log_error_impl(&_mh_execute_header, v631, OS_LOG_TYPE_ERROR, "%s: No frame bodies in %s (%d: %s)", buf, 0x26u);
            }

            *__error() = v629;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v637 = *__error();
            v638 = [v1047 debugDescription];
            v639 = v638;
            uTF8String14 = [v638 UTF8String];
            v641 = v1029;
            v642 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No frame bodies in %s (%d: %s)", "frameBodies.firstObject.length > 0", uTF8String14, v1028, [v1029 UTF8String]);

            if (v642)
            {
              v954 = CFStringGetCStringPtr(v642, 0x8000100u);
              if (v954)
              {
                v955 = 0;
              }

              else
              {
                v954 = malloc_type_calloc(0x400uLL, 1uLL, 0x18C32872uLL);
                CFStringGetCString(v642, v954, 1024, 0x8000100u);
                v955 = v954;
              }

              if (qword_100117E88)
              {
                v960 = qword_100117E88;
              }

              else
              {
                v960 = __stderrp;
              }

              fprintf(v960, "%s\n", v954);
              if (v955)
              {
                free(v955);
              }

              CFRelease(v642);
            }

            else
            {
              v645 = sub_100035B80(v643, v644);
              if (os_log_type_enabled(v645, OS_LOG_TYPE_FAULT))
              {
                v646 = [v1047 debugDescription];
                v647 = v646;
                uTF8String15 = [v646 UTF8String];
                v649 = v1029;
                uTF8String16 = [v1029 UTF8String];
                *buf = 136315906;
                *&buf[4] = "frameBodies.firstObject.length > 0";
                *&buf[12] = 2080;
                *&buf[14] = uTF8String15;
                *&buf[22] = 1024;
                *&buf[24] = v1028;
                *&buf[28] = 2080;
                *&buf[30] = uTF8String16;
                _os_log_fault_impl(&_mh_execute_header, v645, OS_LOG_TYPE_FAULT, "Unable to format: %s: No frame bodies in %s (%d: %s)", buf, 0x26u);
              }

              if (qword_100117E88)
              {
                v651 = qword_100117E88;
              }

              else
              {
                v651 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v651);
            }

            *__error() = v637;
          }

          v652 = [v1047 debugDescription];
          v653 = v652;
          uTF8String17 = [v652 UTF8String];
          v655 = v1029;
          uTF8String18 = [v1029 UTF8String];
          sub_100035A54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 469, "%s: No frame bodies in %s (%d: %s)", v657, v658, v659, v660, "frameBodies.firstObject.length > 0", uTF8String17, v1028, uTF8String18);

          goto LABEL_1248;
        }

        v283 = v1018;
        v284 = v1054;
        v285 = v263;
        v286 = v262;
        if (v1092)
        {
LABEL_377:
          if (!v286)
          {
            goto LABEL_384;
          }
        }

        else if (!v262 || !v263)
        {
          if (byte_100117E80 == 1)
          {
            v311 = __error();
            v312 = *v311;
            v314 = sub_100035B80(v311, v313);
            if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109378;
              *&buf[4] = v1028;
              *&buf[8] = 2112;
              *&buf[10] = v1029;
              _os_log_error_impl(&_mh_execute_header, v314, OS_LOG_TYPE_ERROR, "Parsing spindump text: No start/end index for frame line in timeline report (%d: %@)", buf, 0x12u);
            }

            v284 = v1054;
            v285 = v263;
            v286 = v262;
            *__error() = v312;
            v283 = v1018;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v315 = *__error();
            v316 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No start/end index for frame line in timeline report (%d: %@)", v1028, v1029);
            v318 = v316;
            if (v316)
            {
              v319 = CFStringGetCStringPtr(v316, 0x8000100u);
              if (v319)
              {
                v320 = 0;
              }

              else
              {
                v319 = malloc_type_calloc(0x400uLL, 1uLL, 0x16CF65A4uLL);
                CFStringGetCString(v318, v319, 1024, 0x8000100u);
                v320 = v319;
              }

              if (qword_100117E88)
              {
                v416 = qword_100117E88;
              }

              else
              {
                v416 = __stderrp;
              }

              fprintf(v416, "%s\n", v319);
              if (v320)
              {
                free(v320);
              }

              CFRelease(v318);
            }

            else
            {
              v390 = sub_100035B80(0, v317);
              if (os_log_type_enabled(v390, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109378;
                *&buf[4] = v1028;
                *&buf[8] = 2112;
                *&buf[10] = v1029;
                _os_log_fault_impl(&_mh_execute_header, v390, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No start/end index for frame line in timeline report (%d: %@)", buf, 0x12u);
              }

              if (qword_100117E88)
              {
                v391 = qword_100117E88;
              }

              else
              {
                v391 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v391);
              v284 = v1054;
              v285 = v263;
              v286 = v262;
            }

            *__error() = v315;
            v283 = v1018;
          }

          goto LABEL_377;
        }

        v287 = *p_startIndex;
        if (*p_startIndex && v286 < v287)
        {
          v1033 = v286 + v1033 - v287;
          v286 = *p_startIndex;
        }

LABEL_384:
        if (v285)
        {
          endIndex = self->_endIndex;
          if (endIndex)
          {
            if (v285 > endIndex)
            {
              v1033 = v1033 - v285 + endIndex;
              v285 = self->_endIndex;
            }
          }
        }

        v1005 = v1033 < 1;
        if (v1033 > 0)
        {
          if (v284 > v1050 && v284 != v1050 + 1)
          {
            if (byte_100117E80 == 1)
            {
              v289 = __error();
              v290 = *v289;
              v292 = sub_100035B80(v289, v291);
              if (os_log_type_enabled(v292, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109378;
                *&buf[4] = v1028;
                *&buf[8] = 2112;
                *&buf[10] = v1029;
                _os_log_error_impl(&_mh_execute_header, v292, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unexpected indent for line (%d: %@)", buf, 0x12u);
              }

              *__error() = v290;
            }

            v293 = 0;
            v185 = 2;
            if (byte_100117E81 == 1 && dword_100117510 <= 3)
            {
              v294 = *__error();
              v295 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected indent for line (%d: %@)", v1028, v1029);
              v297 = v295;
              if (v295)
              {
                v298 = CFStringGetCStringPtr(v295, 0x8000100u);
                if (v298)
                {
                  v299 = 0;
                }

                else
                {
                  v298 = malloc_type_calloc(0x400uLL, 1uLL, 0x52C96D2BuLL);
                  CFStringGetCString(v297, v298, 1024, 0x8000100u);
                  v299 = v298;
                }

                if (qword_100117E88)
                {
                  v403 = qword_100117E88;
                }

                else
                {
                  v403 = __stderrp;
                }

                fprintf(v403, "%s\n", v298);
                if (v299)
                {
                  free(v299);
                }

                CFRelease(v297);
              }

              else
              {
                v381 = sub_100035B80(0, v296);
                if (os_log_type_enabled(v381, OS_LOG_TYPE_FAULT))
                {
                  *buf = 67109378;
                  *&buf[4] = v1028;
                  *&buf[8] = 2112;
                  *&buf[10] = v1029;
                  _os_log_fault_impl(&_mh_execute_header, v381, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unexpected indent for line (%d: %@)", buf, 0x12u);
                }

                if (qword_100117E88)
                {
                  v382 = qword_100117E88;
                }

                else
                {
                  v382 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v382);
              }

              v293 = 0;
              *__error() = v294;
              v185 = 2;
            }

            goto LABEL_553;
          }

          if (self->_isHeavy == v1092)
          {
            if (v1033 >= self->_omitFramesBelowSampleCount)
            {
              if (v283 <= 0)
              {
                v283 = v1002;
                if (v1002 <= 0)
                {
                  v283 = vcvtpd_s64_f64(log10(v1033)) + 2;
                }
              }

              v1018 = v283;
              v303 = v1004;
              v304 = v1004 << 32;
              v305 = &ptr[8 * v1004 - 8];
              v1009 = v286;
              while (1)
              {
                v306 = v303;
                v307 = v304;
                if (v303 < 1)
                {
                  break;
                }

                --v303;
                v308 = *v305;
                v305 -= 2;
                v304 -= 0x100000000;
                if (v308 < v284)
                {
                  v309 = v285;
                  v310 = v305[3];
                  goto LABEL_538;
                }
              }

              v309 = v285;
              v310 = 0;
LABEL_538:
              v392 = 0;
              v393 = v310 + v284;
              while (v392 < [v1047 count])
              {
                v394 = [v1047 objectAtIndexedSubscript:v392];
                v395 = v1091;
                v396 = v1090;
                v397 = v394;
                uTF8String19 = [v394 UTF8String];
                v399 = v1039;
                sub_10009A310(stream, v396 + v395 * (v393 + v392), v1023 != 0x7FFFFFFFFFFFFFFFLL, v1033, v1018, uTF8String19, v1015, [v1039 UTF8String], v1009, v309);

                ++v392;
                v284 = v1054;
              }

              if ([v1047 count] <= 1)
              {
                v185 = 0;
                v293 = 1;
                v1004 = v306;
              }

              else
              {
                ptr = malloc_type_realloc(ptr, 8 * (v306 + 1), 0x100004000313F17uLL);
                v400 = &ptr[v307 >> 29];
                *v400 = v284;
                v401 = [v1047 count];
                if (v306 < 1)
                {
                  v402 = 0;
                }

                else
                {
                  v402 = *&ptr[8 * (v306 & 0x7FFFFFFF) - 4];
                }

                v185 = 0;
                v400[1] = v401 - 1 + v402;
                v293 = 1;
                v1004 = v306 + 1;
              }

              goto LABEL_597;
            }
          }

          else
          {
            if (v284)
            {
              if (!v1065)
              {
                if (byte_100117E80 == 1)
                {
                  v813 = __error();
                  v814 = *v813;
                  v816 = sub_100035B80(v813, v815);
                  if (os_log_type_enabled(v816, OS_LOG_TYPE_ERROR))
                  {
                    v817 = v1029;
                    uTF8String20 = [v1029 UTF8String];
                    *buf = 136315906;
                    *&buf[4] = "previousNode";
                    *&buf[12] = 1024;
                    *&buf[14] = v1054;
                    *&buf[18] = 1024;
                    *&buf[20] = v1028;
                    *&buf[24] = 2080;
                    *&buf[26] = uTF8String20;
                    _os_log_error_impl(&_mh_execute_header, v816, OS_LOG_TYPE_ERROR, "%s: no previousNode for indent of %d (%d: %s)", buf, 0x22u);
                  }

                  *__error() = v814;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v819 = *__error();
                  v820 = v1029;
                  v821 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: no previousNode for indent of %d (%d: %s)", "previousNode", v1054, v1028, [v1029 UTF8String]);
                  v823 = v821;
                  if (v821)
                  {
                    v982 = CFStringGetCStringPtr(v821, 0x8000100u);
                    if (v982)
                    {
                      v983 = 0;
                    }

                    else
                    {
                      v982 = malloc_type_calloc(0x400uLL, 1uLL, 0xCAA63125uLL);
                      CFStringGetCString(v823, v982, 1024, 0x8000100u);
                      v983 = v982;
                    }

                    if (qword_100117E88)
                    {
                      v986 = qword_100117E88;
                    }

                    else
                    {
                      v986 = __stderrp;
                    }

                    fprintf(v986, "%s\n", v982);
                    if (v983)
                    {
                      free(v983);
                    }

                    CFRelease(v823);
                  }

                  else
                  {
                    v824 = sub_100035B80(0, v822);
                    if (os_log_type_enabled(v824, OS_LOG_TYPE_FAULT))
                    {
                      v825 = v1029;
                      uTF8String21 = [v1029 UTF8String];
                      *buf = 136315906;
                      *&buf[4] = "previousNode";
                      *&buf[12] = 1024;
                      *&buf[14] = v1054;
                      *&buf[18] = 1024;
                      *&buf[20] = v1028;
                      *&buf[24] = 2080;
                      *&buf[26] = uTF8String21;
                      _os_log_fault_impl(&_mh_execute_header, v824, OS_LOG_TYPE_FAULT, "Unable to format: %s: no previousNode for indent of %d (%d: %s)", buf, 0x22u);
                    }

                    if (qword_100117E88)
                    {
                      v827 = qword_100117E88;
                    }

                    else
                    {
                      v827 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v827);
                  }

                  *__error() = v819;
                }

                v828 = v1029;
                uTF8String22 = [v1029 UTF8String];
                sub_100035A54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 561, "%s: no previousNode for indent of %d (%d: %s)", v830, v831, v832, v833, "previousNode", v1054, v1028, uTF8String22);
                goto LABEL_1248;
              }

              WeakRetained = v1065;
              if (v1050 >= v284)
              {
                while (1)
                {
                  v322 = WeakRetained;
                  WeakRetained = objc_loadWeakRetained(WeakRetained + 7);

                  if (!WeakRetained)
                  {
                    break;
                  }

                  v29 = v1050 <= v1054;
                  v1050 = (v1050 - 1);
                  if (v29)
                  {
                    goto LABEL_433;
                  }
                }

                if (byte_100117E80 == 1)
                {
                  v661 = __error();
                  v662 = *v661;
                  v664 = sub_100035B80(v661, v663);
                  if (os_log_type_enabled(v664, OS_LOG_TYPE_ERROR))
                  {
                    v665 = v1029;
                    uTF8String23 = [v1029 UTF8String];
                    *buf = 136316162;
                    *&buf[4] = "previousNode";
                    *&buf[12] = 1024;
                    *&buf[14] = v1054;
                    *&buf[18] = 1024;
                    *&buf[20] = v1050;
                    *&buf[24] = 1024;
                    *&buf[26] = v1028;
                    *&buf[30] = 2080;
                    *&buf[32] = uTF8String23;
                    _os_log_error_impl(&_mh_execute_header, v664, OS_LOG_TYPE_ERROR, "%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", buf, 0x28u);
                  }

                  *__error() = v662;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v668 = *__error();
                  v669 = v1029;
                  v670 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", "previousNode", v1054, v1050, v1028, [v1029 UTF8String]);
                  v672 = v670;
                  if (v670)
                  {
                    v956 = CFStringGetCStringPtr(v670, 0x8000100u);
                    if (v956)
                    {
                      v957 = 0;
                    }

                    else
                    {
                      v956 = malloc_type_calloc(0x400uLL, 1uLL, 0x4AAF81ECuLL);
                      CFStringGetCString(v672, v956, 1024, 0x8000100u);
                      v957 = v956;
                    }

                    if (qword_100117E88)
                    {
                      v963 = qword_100117E88;
                    }

                    else
                    {
                      v963 = __stderrp;
                    }

                    fprintf(v963, "%s\n", v956);
                    if (v957)
                    {
                      free(v957);
                    }

                    CFRelease(v672);
                  }

                  else
                  {
                    v673 = sub_100035B80(0, v671);
                    if (os_log_type_enabled(v673, OS_LOG_TYPE_FAULT))
                    {
                      v674 = v1029;
                      uTF8String24 = [v1029 UTF8String];
                      *buf = 136316162;
                      *&buf[4] = "previousNode";
                      *&buf[12] = 1024;
                      *&buf[14] = v1054;
                      *&buf[18] = 1024;
                      *&buf[20] = v1050;
                      *&buf[24] = 1024;
                      *&buf[26] = v1028;
                      *&buf[30] = 2080;
                      *&buf[32] = uTF8String24;
                      _os_log_fault_impl(&_mh_execute_header, v673, OS_LOG_TYPE_FAULT, "Unable to format: %s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", buf, 0x28u);
                    }

                    if (qword_100117E88)
                    {
                      v676 = qword_100117E88;
                    }

                    else
                    {
                      v676 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v676);
                  }

                  *__error() = v668;
                }

                v677 = v1029;
                uTF8String25 = [v1029 UTF8String];
                sub_100035A54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 566, "%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", v679, v680, v681, v682, "previousNode", v1054, v1050, v1028, uTF8String25);
                goto LABEL_1248;
              }

LABEL_433:
              v1065 = WeakRetained;
              v323 = sub_1000BC444();
            }

            else
            {
              if (obj)
              {
                v1087 = 0u;
                v1088 = 0u;
                v1085 = 0u;
                v1086 = 0u;
                obj = obj;
                v377 = [obj countByEnumeratingWithState:&v1085 objects:v1106 count:16];
                if (v377)
                {
                  v378 = *v1086;
LABEL_507:
                  v379 = 0;
                  while (1)
                  {
                    if (*v1086 != v378)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v380 = *(*(&v1085 + 1) + 8 * v379);
                    if (sub_1000BC614())
                    {
                      break;
                    }

                    if (v377 == ++v379)
                    {
                      v377 = [obj countByEnumeratingWithState:&v1085 objects:v1106 count:16];
                      if (v377)
                      {
                        goto LABEL_507;
                      }

                      goto LABEL_513;
                    }
                  }

                  v323 = v380;

                  if (v323)
                  {
                    goto LABEL_594;
                  }
                }

                else
                {
LABEL_513:
                }
              }

              else
              {
                obj = objc_alloc_init(NSMutableArray);
              }

              v323 = sub_10008F924(SPTreeNode, 0, v1023 != 0x7FFFFFFFFFFFFFFFLL, v1047, v1015, v1039, 0);
              [obj addObject:v323];
            }

            if (v323)
            {
LABEL_594:
              v323[3] += v1033;
            }

            v430 = v1065;
            v1065 = v323;
          }

          v185 = 0;
          v293 = 1;
          goto LABEL_597;
        }

        v293 = 0;
        if (v286)
        {
          v300 = self->_endIndex;
          if (v300)
          {
            v301 = v286 <= v300;
          }

          else
          {
            v301 = 1;
          }

          v302 = !v301;
          v998 |= v302;
        }

        v185 = 5;
LABEL_553:
        v1054 = v1050;
LABEL_597:

        v1044 = 0;
        v246 = 0;
        if (v293)
        {
          goto LABEL_676;
        }

        goto LABEL_785;
      }

      v186 = [v1068 firstMatchInString:v181 options:0 range:{0, objc_msgSend(v181, "length")}];
      if (!v186)
      {
        v246 = [v1067 firstMatchInString:v181 options:0 range:{0, objc_msgSend(v181, "length")}];
        if (v246)
        {
          v1044 = 0;
LABEL_587:
          v185 = 5;
          goto LABEL_784;
        }

        v373 = [v1064 firstMatchInString:v181 options:0 range:{0, objc_msgSend(v181, "length")}];
        v374 = v373;
        if (!v373)
        {
          if (self->_isHeavy == v1092 || !obj)
          {
LABEL_743:
            if ([v181 length] && v1050 != -1)
            {
              if (byte_100117E80 == 1)
              {
                v545 = __error();
                v546 = *v545;
                v548 = sub_100035B80(v545, v547);
                if (os_log_type_enabled(v548, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109378;
                  *&buf[4] = v1028;
                  *&buf[8] = 2112;
                  *&buf[10] = v1022;
                  _os_log_error_impl(&_mh_execute_header, v548, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unexpected end of call tree (%d: %@)", buf, 0x12u);
                }

                v181 = v1022;
                *__error() = v546;
              }

              if (byte_100117E81 == 1 && dword_100117510 <= 3)
              {
                v549 = *__error();
                v550 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected end of call tree (%d: %@)", v1028, v181);
                v552 = v550;
                if (v550)
                {
                  v553 = CFStringGetCStringPtr(v550, 0x8000100u);
                  if (v553)
                  {
                    v554 = 0;
                  }

                  else
                  {
                    v553 = malloc_type_calloc(0x400uLL, 1uLL, 0x68FCD31CuLL);
                    CFStringGetCString(v552, v553, 1024, 0x8000100u);
                    v554 = v553;
                  }

                  if (qword_100117E88)
                  {
                    v565 = qword_100117E88;
                  }

                  else
                  {
                    v565 = __stderrp;
                  }

                  fprintf(v565, "%s\n", v553);
                  if (v554)
                  {
                    free(v554);
                  }

                  CFRelease(v552);
                }

                else
                {
                  v559 = sub_100035B80(0, v551);
                  if (os_log_type_enabled(v559, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 67109378;
                    *&buf[4] = v1028;
                    *&buf[8] = 2112;
                    *&buf[10] = v1022;
                    _os_log_fault_impl(&_mh_execute_header, v559, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unexpected end of call tree (%d: %@)", buf, 0x12u);
                  }

                  if (qword_100117E88)
                  {
                    v560 = qword_100117E88;
                  }

                  else
                  {
                    v560 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v560);
                }

                *__error() = v549;
              }
            }

            fprintf(stream, "%s\n", v1099[3]);
            if ([v1022 containsString:@"Binary Images:"])
            {
              v1079 = 0u;
              v1080 = 0u;
              v1077 = 0u;
              v1078 = 0u;
              v1071 = v1070;
              v566 = 0;
              v567 = 0;
              v568 = [v1071 countByEnumeratingWithState:&v1077 objects:v1104 count:16];
              if (v568)
              {
                v569 = *v1078;
                do
                {
                  v570 = 0;
                  do
                  {
                    if (*v1078 != v569)
                    {
                      objc_enumerationMutation(v1071);
                    }

                    v571 = *(*(&v1077 + 1) + 8 * v570);
                    v572 = sub_1000BC830(v571);
                    v573 = [v572 length];
                    v574 = v573;
                    if (!v573)
                    {
                      v575 = sub_1000BC890(v571);
                      v576 = [v575 length];
                      if (v576)
                      {
                        v574 = v576;
                      }

                      else
                      {
                        v574 = 3;
                      }
                    }

                    v577 = sub_1000BC8F0(v571);
                    if ([v577 length])
                    {
                      v574 += [v577 length] + 1;
                    }

                    if (v571)
                    {
                      Property = objc_getProperty(v571, v578, 48, 1);
                    }

                    else
                    {
                      Property = 0;
                    }

                    v580 = Property;
                    v581 = [v580 length];

                    if (v566 <= v574)
                    {
                      v566 = v574;
                    }

                    else
                    {
                      v566 = v566;
                    }

                    if (v567 <= v581)
                    {
                      v567 = v581;
                    }

                    v570 = v570 + 1;
                  }

                  while (v568 != v570);
                  v582 = [v1071 countByEnumeratingWithState:&v1077 objects:v1104 count:16];
                  v568 = v582;
                }

                while (v582);
              }

              v1075 = 0u;
              v1076 = 0u;
              v1073 = 0u;
              v1074 = 0u;
              v1070 = v1071;
              v1032 = [v1070 countByEnumeratingWithState:&v1073 objects:v1103 count:16];
              if (v1032)
              {
                v1042 = 0;
                v583 = *v1074;
                v999 = *v1074;
                while (1)
                {
                  if (v583 != v999)
                  {
                    objc_enumerationMutation(v1070);
                  }

                  v584 = *(*(&v1073 + 1) + 8 * v1042);
                  if (v584)
                  {
                    selfb = *(v584 + 56);
                    v1001 = *(v584 + 64);
                    v585 = "";
                    if (*(v584 + 32))
                    {
                      v585 = "*";
                    }
                  }

                  else
                  {
                    selfb = 0;
                    v1001 = 0;
                    v585 = "";
                  }

                  v1012 = v585;
                  v1066 = sub_1000BC830(v584);
                  v586 = v1066;
                  uTF8String26 = [v1066 UTF8String];
                  v1057 = sub_1000BC890(v584);
                  v587 = v1057;
                  uTF8String27 = [v1057 UTF8String];
                  v1051 = sub_1000BC8F0(v584);
                  v588 = v1051;
                  uTF8String28 = [v1051 UTF8String];
                  if (v584)
                  {
                    v590 = objc_getProperty(v584, v589, 40, 1);
                  }

                  else
                  {
                    v590 = 0;
                  }

                  v591 = v590;
                  uuid2 = [v591 uuid];
                  uUIDString2 = [uuid2 UUIDString];
                  v593 = uUIDString2;
                  uTF8String29 = [uUIDString2 UTF8String];
                  if (v584)
                  {
                    v595 = objc_getProperty(v584, v594, 48, 1);
                  }

                  else
                  {
                    v595 = 0;
                  }

                  v1036 = v595;
                  v596 = v1036;
                  uTF8String30 = [v1036 UTF8String];
                  if (v584)
                  {
                    v599 = objc_getProperty(v584, v597, 40, 1);
                  }

                  else
                  {
                    v599 = 0;
                  }

                  v600 = v599;
                  path = [v600 path];
                  v602 = path;
                  uTF8String31 = [path UTF8String];
                  v1003 = uuid2;
                  if (selfb)
                  {
                    snprintf(buf, 0x20uLL, "%s0x%llx", v1012, selfb);
                    fprintf(stream, "%22s - ", buf);
                    if (v1001)
                    {
                      fprintf(stream, "%#18llx  ");
                    }

                    else
                    {
                      fwrite("               ???  ", 0x14uLL, 1uLL, stream);
                    }
                  }

                  else
                  {
                    fprintf(stream, "%2s");
                  }

                  v604 = v591;
                  v605 = "???";
                  if (uTF8String27)
                  {
                    v605 = uTF8String27;
                  }

                  if (uTF8String26)
                  {
                    v605 = uTF8String26;
                  }

                  v610 = fprintf(stream, "%s", v605);
                  if (uTF8String28)
                  {
                    v610 = (fprintf(stream, " %s", uTF8String28) + v610);
                  }

                  if (v610 > v566)
                  {
                    break;
                  }

                  fprintf(stream, "%*s", v566 + 1 - v610, "");
                  fprintf(stream, "<%s>", uTF8String29);
                  if (uTF8String30)
                  {
                    v611 = fprintf(stream, "%s", uTF8String30);
                  }

                  else
                  {
                    v611 = 0;
                  }

                  if (v567 > v611)
                  {
                    fprintf(stream, "%*s", v567 - v611, "");
                  }

                  if (uTF8String31)
                  {
                    fprintf(stream, "  %s", uTF8String31);
                  }

                  fputc(10, stream);

                  v1042 = v1042 + 1;
                  if (v1042 >= v1032)
                  {
                    v1032 = [v1070 countByEnumeratingWithState:&v1073 objects:v1103 count:16];
                    if (!v1032)
                    {
                      goto LABEL_876;
                    }

                    v1042 = 0;
                  }

                  v583 = *v1074;
                }

                if (byte_100117E80 == 1)
                {
                  v790 = __error();
                  v791 = *v790;
                  v793 = sub_100035B80(v790, v792);
                  if (os_log_type_enabled(v793, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316418;
                    *&buf[4] = "numChars < nameAndVersionWidth + 1";
                    *&buf[12] = 1024;
                    *&buf[14] = v610;
                    *&buf[18] = 1024;
                    *&buf[20] = v566;
                    *&buf[24] = 2080;
                    *&buf[26] = uTF8String26;
                    *&buf[34] = 2080;
                    *&buf[36] = uTF8String27;
                    *&buf[44] = 2080;
                    *&buf[46] = uTF8String28;
                    _os_log_error_impl(&_mh_execute_header, v793, OS_LOG_TYPE_ERROR, "%s: Printed %d characters when max is %d: %s, %s, %s", buf, 0x36u);
                  }

                  *__error() = v791;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v794 = *__error();
                  v795 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Printed %d characters when max is %d: %s, %s, %s", "numChars < nameAndVersionWidth + 1", v610, v566, uTF8String26, uTF8String27, uTF8String28);
                  v797 = v795;
                  if (v795)
                  {
                    v888 = CFStringGetCStringPtr(v795, 0x8000100u);
                    if (v888)
                    {
                      v889 = 0;
                    }

                    else
                    {
                      v888 = malloc_type_calloc(0x400uLL, 1uLL, 0x339E6499uLL);
                      CFStringGetCString(v797, v888, 1024, 0x8000100u);
                      v889 = v888;
                    }

                    if (qword_100117E88)
                    {
                      v912 = qword_100117E88;
                    }

                    else
                    {
                      v912 = __stderrp;
                    }

                    fprintf(v912, "%s\n", v888);
                    if (v889)
                    {
                      free(v889);
                    }

                    CFRelease(v797);
                  }

                  else
                  {
                    v798 = sub_100035B80(0, v796);
                    if (os_log_type_enabled(v798, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136316418;
                      *&buf[4] = "numChars < nameAndVersionWidth + 1";
                      *&buf[12] = 1024;
                      *&buf[14] = v610;
                      *&buf[18] = 1024;
                      *&buf[20] = v566;
                      *&buf[24] = 2080;
                      *&buf[26] = uTF8String26;
                      *&buf[34] = 2080;
                      *&buf[36] = uTF8String27;
                      *&buf[44] = 2080;
                      *&buf[46] = uTF8String28;
                      _os_log_fault_impl(&_mh_execute_header, v798, OS_LOG_TYPE_FAULT, "Unable to format: %s: Printed %d characters when max is %d: %s, %s, %s", buf, 0x36u);
                    }

                    if (qword_100117E88)
                    {
                      v799 = qword_100117E88;
                    }

                    else
                    {
                      v799 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v799);
                  }

                  *__error() = v794;
                }

                sub_100035A54("PrintLoadInfoLine", "SPTextualReportParser.m", 2394, "%s: Printed %d characters when max is %d: %s, %s, %s", v606, v607, v608, v609, "numChars < nameAndVersionWidth + 1", v610, v566, uTF8String26, uTF8String27, uTF8String28);
                goto LABEL_1248;
              }

LABEL_876:

              if ((v1058 & 1) == 0)
              {
                sub_100098334(v5, v1028, v1067, 0);
                v1018 = 0;
                v998 = 0;
                v1065 = 0;
                v1054 = 0xFFFFFFFFLL;
                v1043 = v1070;
                v1070 = v1044 = 0;

                goto LABEL_676;
              }
            }

            v1044 = 0;
            v1018 = 0;
            v998 = 0;
            v1065 = 0;
            v1054 = 0xFFFFFFFFLL;
            goto LABEL_676;
          }

          if (![v181 length])
          {
            v477 = objc_alloc_init(NSMutableArray);
            [obj sortUsingComparator:&stru_100109EA0];
            [v477 addObject:obj];
            v478 = [obj objectAtIndex:0];
            lastObject = v478;
            if (v478)
            {
              v480 = *(v478 + 12);
            }

            else
            {
              v480 = 0.0;
            }

            v481 = 0;
            v1041 = vcvtpd_s64_f64(log10(v480));
            v1048 = v477;
            while (1)
            {
              v1004 = v481;
              while (1)
              {

                if (![v1048 count])
                {

                  obj = 0;
                  v181 = v1022;
                  goto LABEL_743;
                }

                lastObject = [v1048 lastObject];
                if ([lastObject count])
                {
                  break;
                }

                [v1048 removeLastObject];
              }

              v1056 = [lastObject objectAtIndex:0];
              [lastObject removeObjectAtIndex:0];
              v482 = [v1048 count];
              v484 = v482;
              omitFramesBelowSampleCount = self->_omitFramesBelowSampleCount;
              v1031 = lastObject;
              if (omitFramesBelowSampleCount >= 1)
              {
                v486 = v1056;
                if (v1056)
                {
                  v486 = *(v1056 + 3);
                }

                if (v486 < omitFramesBelowSampleCount)
                {
                  goto LABEL_736;
                }
              }

              v487 = v481;
              v488 = v481 << 32;
              v489 = &ptr[8 * v481 - 8];
              v1019 = v482 - 1;
              while (1)
              {
                v490 = v487;
                v491 = v488;
                if (v487 < 1)
                {
                  break;
                }

                --v487;
                v492 = *v489;
                v489 -= 2;
                v488 -= 0x100000000;
                if (v492 < v482 - 1)
                {
                  v1016 = v491;
                  v1026 = v490;
                  v493 = v489[3];
                  goto LABEL_693;
                }
              }

              v1016 = v488;
              v1026 = v487;
              v493 = 0;
LABEL_693:
              v494 = v1056;
              if (v1056)
              {
                v494 = objc_getProperty(v1056, v483, 16, 1);
              }

              v495 = v494;
              v496 = v495 == 0;

              if (v496)
              {
                if (v1056)
                {
                  v527 = objc_getProperty(v1056, v497, 24, 1);
                  if (v527)
                  {

                    v530 = v1090 + v1091 * (v493 + v1019);
                    goto LABEL_724;
                  }

                  v531 = objc_getProperty(v1056, v528, 40, 1);
                }

                else
                {
                  v531 = 0;
                }

                v532 = v531;
                v533 = v532 == 0;

                if (!v533)
                {
                  v530 = v1090 + v1091 * (v493 + v1019);
                  if (v1056)
                  {
LABEL_724:
                    v534 = *(v1056 + 8);
                    v535 = *(v1056 + 3);
                    v536 = objc_getProperty(v1056, v529, 24, 1);
                  }

                  else
                  {
                    v535 = 0;
                    v534 = 0;
                    v536 = 0;
                  }

                  v524 = v536;
                  v537 = v524;
                  uTF8String32 = [v524 UTF8String];
                  if (v1056)
                  {
                    v540 = objc_getProperty(v1056, v538, 40, 1);
                  }

                  else
                  {
                    v540 = 0;
                  }

                  v541 = v540;
                  v542 = v541;
                  sub_10009A430(stream, v530, v534 & 1, v535, v1041 + 2, uTF8String32, [v541 UTF8String], 0, 0);

                  v1004 = v1026;
LABEL_730:

                  goto LABEL_731;
                }

                if (byte_100117E80 == 1)
                {
                  v965 = __error();
                  v966 = *v965;
                  v968 = sub_100035B80(v965, v967);
                  if (os_log_type_enabled(v968, OS_LOG_TYPE_ERROR))
                  {
                    v969 = [v1056 debugDescription];
                    v970 = v969;
                    sub_1000BD56C([v969 UTF8String], buf, v968, v969);
                  }

                  *__error() = v966;
                }

                if (byte_100117E81 == 1 && dword_100117510 <= 3)
                {
                  v971 = *__error();
                  v972 = [v1056 debugDescription];
                  v973 = v972;
                  v974 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No angle bracket contents nor state info for non-frame (%s)", "heaviestNode.angleBracketContents || heaviestNode.stateInfo", [v972 UTF8String]);

                  if (v974)
                  {
                    v988 = CFStringGetCStringPtr(v974, 0x8000100u);
                    if (v988)
                    {
                      v989 = 0;
                    }

                    else
                    {
                      v988 = malloc_type_calloc(0x400uLL, 1uLL, 0xFE31698uLL);
                      CFStringGetCString(v974, v988, 1024, 0x8000100u);
                      v989 = v988;
                    }

                    if (qword_100117E88)
                    {
                      v990 = qword_100117E88;
                    }

                    else
                    {
                      v990 = __stderrp;
                    }

                    fprintf(v990, "%s\n", v988);
                    if (v989)
                    {
                      free(v989);
                    }

                    CFRelease(v974);
                  }

                  else
                  {
                    v977 = sub_100035B80(v975, v976);
                    if (os_log_type_enabled(v977, OS_LOG_TYPE_FAULT))
                    {
                      v978 = [v1056 debugDescription];
                      v979 = v978;
                      sub_1000BD5C8([v978 UTF8String], v1119, v977, v978);
                    }

                    if (qword_100117E88)
                    {
                      v980 = qword_100117E88;
                    }

                    else
                    {
                      v980 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v980);
                  }

                  *__error() = v971;
                }

                v991 = [v1056 debugDescription];
                v992 = v991;
                uTF8String33 = [v991 UTF8String];
                sub_100035A54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 820, "%s: No angle bracket contents nor state info for non-frame (%s)", v994, v995, v996, v997, "heaviestNode.angleBracketContents || heaviestNode.stateInfo", uTF8String33);

LABEL_1248:
                abort();
              }

              v498 = 0;
              v1035 = v493 + v484 - 1;
              while (1)
              {
                v499 = v1056;
                if (v1056)
                {
                  v499 = objc_getProperty(v1056, v497, 16, 1);
                }

                v500 = v499;
                v501 = v498 < [v500 count];

                if (!v501)
                {
                  break;
                }

                if (v1056)
                {
                  v503 = objc_getProperty(v1056, v502, 16, 1);
                }

                else
                {
                  v503 = 0;
                }

                v504 = v503;
                v505 = [v504 objectAtIndexedSubscript:v498];

                if (v1056)
                {
                  v506 = *(v1056 + 8);
                  v507 = *(v1056 + 3);
                }

                else
                {
                  v506 = 0;
                  v507 = 0;
                }

                v508 = v1091;
                v509 = v1090;
                v510 = v505;
                uTF8String34 = [v505 UTF8String];
                v513 = v1056;
                if (v1056)
                {
                  v514 = *(v1056 + 4);
                  v513 = objc_getProperty(v1056, v511, 40, 1);
                }

                else
                {
                  v514 = 0;
                }

                v515 = v513;
                v516 = v515;
                sub_10009A310(stream, v509 + v508 * (v1035 + v498), v506 & 1, v507, v1041 + 2, uTF8String34, v514, [v515 UTF8String], 0, 0);

                ++v498;
              }

              v517 = v1056;
              if (v1056)
              {
                v517 = objc_getProperty(v1056, v502, 16, 1);
              }

              v518 = v517;
              v519 = [v518 count] > 1;

              if (v519)
              {
                ptr = malloc_type_realloc(ptr, 8 * (v1026 + 1), 0x100004000313F17uLL);
                v522 = &ptr[v1016 >> 29];
                *v522 = v1019;
                if (v1056)
                {
                  v523 = objc_getProperty(v1056, v521, 16, 1);
                }

                else
                {
                  v523 = 0;
                }

                v524 = v523;
                v525 = [v524 count];
                if (v1026 < 1)
                {
                  v526 = 0;
                }

                else
                {
                  v526 = *&ptr[8 * (v1026 & 0x7FFFFFFF) - 4];
                }

                v522[1] = v525 - 1 + v526;
                v1004 = v1026 + 1;
                goto LABEL_730;
              }

              v1004 = v1026;
LABEL_731:
              if (v1056)
              {
                v543 = objc_getProperty(v1056, v520, 48, 1);
                v544 = v543;
                if (v543 && [v543 count])
                {
                  [v544 sortUsingComparator:&stru_100109EA0];
                  [v1048 addObject:v544];
                }
              }

              else
              {
                v544 = 0;
              }

LABEL_736:
              v481 = v1004;
              lastObject = v1031;
            }
          }

          if (byte_100117E80 == 1)
          {
            v404 = __error();
            v405 = *v404;
            v407 = sub_100035B80(v404, v406);
            if (os_log_type_enabled(v407, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109378;
              *&buf[4] = v1028;
              *&buf[8] = 2112;
              *&buf[10] = v181;
              _os_log_error_impl(&_mh_execute_header, v407, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unexpected line in call tree, ignoring (%d: %@)", buf, 0x12u);
            }

            *__error() = v405;
          }

          v1044 = 0;
          v185 = 5;
          if (byte_100117E81 != 1 || dword_100117510 > 3)
          {
            v246 = 0;
            goto LABEL_784;
          }

          v408 = *__error();
          v409 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected line in call tree, ignoring (%d: %@)", v1028, v181);
          v411 = v409;
          if (v409)
          {
            v412 = CFStringGetCStringPtr(v409, 0x8000100u);
            if (v412)
            {
              v413 = 0;
            }

            else
            {
              v412 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB90DDBAuLL);
              CFStringGetCString(v411, v412, 1024, 0x8000100u);
              v413 = v412;
            }

            if (qword_100117E88)
            {
              v612 = qword_100117E88;
            }

            else
            {
              v612 = __stderrp;
            }

            fprintf(v612, "%s\n", v412);
            if (v413)
            {
              free(v413);
            }

            CFRelease(v411);
          }

          else
          {
            v562 = sub_100035B80(0, v410);
            if (os_log_type_enabled(v562, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109378;
              *&buf[4] = v1028;
              *&buf[8] = 2112;
              *&buf[10] = v181;
              _os_log_fault_impl(&_mh_execute_header, v562, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unexpected line in call tree, ignoring (%d: %@)", buf, 0x12u);
            }

            if (qword_100117E88)
            {
              v563 = qword_100117E88;
            }

            else
            {
              v563 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v563);
          }

          v613 = __error();
          v1044 = 0;
          v246 = 0;
          *v613 = v408;
          goto LABEL_587;
        }

        v376 = [v373 rangeWithName:@"binaryIndex"];
        if (v376 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_503:
          fprintf(streamCopy5, "%s\n", v1099[3]);
        }

        else
        {
          v417 = [v181 substringWithRange:{v376, v375}];
          v418 = sub_10009A270(v417);

          v419 = v181;
          if (v418 >= [v1070 count])
          {
            if (byte_100117E80 == 1)
            {
              v450 = __error();
              v451 = *v450;
              v453 = sub_100035B80(v450, v452);
              if (os_log_type_enabled(v453, OS_LOG_TYPE_ERROR))
              {
                v614 = [v1070 count];
                *buf = 134218754;
                *&buf[4] = v418;
                *&buf[12] = 2048;
                *&buf[14] = v614;
                *&buf[22] = 1024;
                *&buf[24] = v1028;
                *&buf[28] = 2112;
                *&buf[30] = v181;
                _os_log_error_impl(&_mh_execute_header, v453, OS_LOG_TYPE_ERROR, "Parsing spindump text: corrupt condensed file, UUID line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", buf, 0x26u);
              }

              v419 = v181;
              *__error() = v451;
            }

            streamCopy5 = stream;
            if (byte_100117E81 == 1 && dword_100117510 <= 3)
            {
              v454 = *__error();
              v455 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: corrupt condensed file, UUID line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", v418, [v1070 count], v1028, v419);
              v457 = v455;
              if (v455)
              {
                v458 = CFStringGetCStringPtr(v455, 0x8000100u);
                if (v458)
                {
                  v459 = 0;
                }

                else
                {
                  v458 = malloc_type_calloc(0x400uLL, 1uLL, 0x8168DFCBuLL);
                  CFStringGetCString(v457, v458, 1024, 0x8000100u);
                  v459 = v458;
                }

                if (qword_100117E88)
                {
                  v564 = qword_100117E88;
                }

                else
                {
                  v564 = __stderrp;
                }

                fprintf(v564, "%s\n", v458);
                if (v459)
                {
                  free(v459);
                }

                CFRelease(v457);
              }

              else
              {
                v557 = sub_100035B80(0, v456);
                if (os_log_type_enabled(v557, OS_LOG_TYPE_FAULT))
                {
                  v615 = [v1070 count];
                  *buf = 134218754;
                  *&buf[4] = v418;
                  *&buf[12] = 2048;
                  *&buf[14] = v615;
                  *&buf[22] = 1024;
                  *&buf[24] = v1028;
                  *&buf[28] = 2112;
                  *&buf[30] = v181;
                  _os_log_fault_impl(&_mh_execute_header, v557, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: corrupt condensed file, UUID line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", buf, 0x26u);
                }

                if (qword_100117E88)
                {
                  v558 = qword_100117E88;
                }

                else
                {
                  v558 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v558);
              }

              *__error() = v454;
              streamCopy5 = stream;
            }

            goto LABEL_503;
          }

          v420 = [v1070 objectAtIndexedSubscript:v418];
          if ([v374 rangeWithName:@"whitespace"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v422 = 13;
          }

          else
          {
            v422 = v421;
          }

          if (v420)
          {
            v423 = objc_getProperty(v420, v421, 40, 1);
          }

          else
          {
            v423 = 0;
          }

          v424 = v423;
          uuid3 = [v424 uuid];
          uUIDString3 = [uuid3 UUIDString];
          v427 = uUIDString3;
          fprintf(stream, "UUID:%*s%s\n", v422, "", [uUIDString3 UTF8String]);
        }

        v1044 = 0;
        v246 = 0;
        goto LABEL_587;
      }

      v187 = v1090;
      v188 = v1091;
      v1055 = v181;
      v1044 = v186;
      v189 = objc_autoreleasePoolPush();
      v191 = [v1044 rangeWithName:@"angleBracketContents"];
      if (v191 == 0x7FFFFFFFFFFFFFFFLL && (v191 = [v1044 rangeWithName:@"otherInfo"], v191 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v192 = 0;
      }

      else
      {
        v192 = [v1055 substringWithRange:{v191, v190}];
      }

      v227 = [v1044 rangeWithName:@"stateInfo"];
      if (v227 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v228 = 0;
      }

      else
      {
        v247 = [v1055 substringWithRange:{v227, v226}];
        v248 = v247;
        if (v1058)
        {
          v249 = sub_10009A270(v247);
          v250 = objc_alloc_init(NSMutableString);
          v228 = v250;
          if ((v249 & 2) != 0)
          {
            v251 = @"Frontmost App";
          }

          else
          {
            v251 = @"Non-Frontmost App";
          }

          [v250 appendString:v251];
          if ((v249 & 0x20) != 0)
          {
            v252 = @", Suppressed";
          }

          else
          {
            v252 = @", Non-Suppressed";
          }

          [v228 appendString:v252];
          if ((v249 & 0x80) != 0)
          {
            v253 = @", Kernel mode";
          }

          else
          {
            v253 = @", User mode";
          }

          [v228 appendString:v253];
          if ((v249 & 0x10) != 0)
          {
            if ((v249 & 4) != 0)
            {
              v254 = @", User Idle";
            }

            else
            {
              v254 = @", User Active";
            }

            [v228 appendString:v254];
          }

          v255 = (v249 & 8) != 0 ? @", On Battery" : @", On AC";
          [v228 appendString:v255];
          [v228 appendFormat:@", Effective %s", sub_10009CC68((v249 >> 8) & 7)];
          [v228 appendFormat:@", Requested %s", sub_10009CC68((v249 >> 11) & 7)];
          [v228 appendFormat:@", Override %s", sub_10009CC68((v249 >> 14) & 7)];
        }

        else
        {
          v228 = v247;
        }
      }

      v325 = [v1044 rangeWithName:@"count"];
      if (v325 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v326 = 0xFFFFFFFFLL;
      }

      else
      {
        v327 = [v1055 substringWithRange:{v325, v324}];
        sub_10009A270(v327);

        if ((v1058 & 1) == 0 && [v1044 rangeWithName:@"countAndWhitespace"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (byte_100117E80 == 1)
          {
            v834 = __error();
            v835 = *v834;
            v837 = sub_100035B80(v834, v836);
            if (os_log_type_enabled(v837, OS_LOG_TYPE_ERROR))
            {
              v838 = v1055;
              [v1055 UTF8String];
              sub_1000BD3D4();
            }

            *__error() = v835;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v839 = *__error();
            v840 = v1055;
            v841 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: frame match with no count and whitespace (%d: %s)", "range.location != NSNotFound", v1028, [v1055 UTF8String]);
            v843 = v841;
            if (v841)
            {
              v929 = CFStringGetCStringPtr(v841, 0x8000100u);
              if (v929)
              {
                v930 = 0;
              }

              else
              {
                v929 = malloc_type_calloc(0x400uLL, 1uLL, 0xB7B0184FuLL);
                CFStringGetCString(v843, v929, 1024, 0x8000100u);
                v930 = v929;
              }

              if (qword_100117E88)
              {
                v940 = qword_100117E88;
              }

              else
              {
                v940 = __stderrp;
              }

              fprintf(v940, "%s\n", v929);
              if (v930)
              {
                free(v930);
              }

              CFRelease(v843);
            }

            else
            {
              v844 = sub_100035B80(0, v842);
              if (os_log_type_enabled(v844, OS_LOG_TYPE_FAULT))
              {
                v845 = v1055;
                [v1055 UTF8String];
                sub_1000BD418();
              }

              if (qword_100117E88)
              {
                v846 = qword_100117E88;
              }

              else
              {
                v846 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v846);
            }

            *__error() = v839;
          }

          v941 = v1055;
          uTF8String35 = [v1055 UTF8String];
          sub_100035A54("ParseCallTreeNonFrameLine", "SPTextualReportParser.m", 2186, "%s: frame match with no count and whitespace (%d: %s)", v943, v944, v945, v946, "range.location != NSNotFound", v1028, uTF8String35);
          goto LABEL_1248;
        }

        v326 = sub_100098494(v1055, v1044, v1058, v187, v188);
      }

      v329 = [v1044 rangeWithName:@"indentWhitespace"] == 0x7FFFFFFFFFFFFFFFLL ? 0xFFFFFFFFLL : v328;
      v1030 = [v1044 rangeWithName:@"kernelDot"];
      v331 = [v1044 rangeWithName:@"count"];
      if (v331 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v333 = [v1055 substringWithRange:{v331, v330}];
      v332 = sub_10009A270(v333);

      if (v1058)
      {
        goto LABEL_446;
      }

      v334 = [v1044 rangeWithName:@"countAndWhitespace"];
      v1024 = v335;
      if (v334 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (byte_100117E80 == 1)
        {
          v847 = __error();
          v848 = *v847;
          v850 = sub_100035B80(v847, v849);
          if (os_log_type_enabled(v850, OS_LOG_TYPE_ERROR))
          {
            v851 = v1055;
            [v1055 UTF8String];
            sub_1000BD3D4();
          }

          *__error() = v848;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v852 = *__error();
          v853 = v1055;
          v854 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: frame match with no count and whitespace (%d: %s)", "range.location != NSNotFound", v1028, [v1055 UTF8String]);
          v856 = v854;
          if (v854)
          {
            v931 = CFStringGetCStringPtr(v854, 0x8000100u);
            if (v931)
            {
              v932 = 0;
            }

            else
            {
              v931 = malloc_type_calloc(0x400uLL, 1uLL, 0xE3B51BFCuLL);
              CFStringGetCString(v856, v931, 1024, 0x8000100u);
              v932 = v931;
            }

            if (qword_100117E88)
            {
              v947 = qword_100117E88;
            }

            else
            {
              v947 = __stderrp;
            }

            fprintf(v947, "%s\n", v931);
            if (v932)
            {
              free(v932);
            }

            CFRelease(v856);
          }

          else
          {
            v857 = sub_100035B80(0, v855);
            if (os_log_type_enabled(v857, OS_LOG_TYPE_FAULT))
            {
              v858 = v1055;
              [v1055 UTF8String];
              sub_1000BD418();
            }

            if (qword_100117E88)
            {
              v859 = qword_100117E88;
            }

            else
            {
              v859 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v859);
          }

          *__error() = v852;
        }

        v948 = v1055;
        uTF8String36 = [v1055 UTF8String];
        sub_100035A54("ParseCallTreeNonFrameLine", "SPTextualReportParser.m", 2219, "%s: frame match with no count and whitespace (%d: %s)", v950, v951, v952, v953, "range.location != NSNotFound", v1028, uTF8String36);
        goto LABEL_1248;
      }

LABEL_448:
      v337 = [v1044 rangeWithName:@"startIndex"];
      if (v337 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v338 = 0;
        v339 = 0;
      }

      else
      {
        v340 = [v1055 substringWithRange:{v337, v336}];
        v338 = sub_10009A270(v340);

        v342 = [v1044 rangeWithName:@"endIndex"];
        if (v342 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v339 = v338;
        }

        else
        {
          v343 = [v1055 substringWithRange:{v342, v341}];
          v339 = sub_10009A270(v343);
        }
      }

      objc_autoreleasePoolPop(v189);
      v344 = v192;
      v345 = v228;

      v1040 = v192;
      v1034 = v228;
      v346 = v332;
      if (v332 > 0)
      {
        v347 = v1004;
        v348 = v1018;
        if (v338)
        {
          v349 = *p_startIndex;
          if (*p_startIndex)
          {
            if (v338 < v349)
            {
              v346 = v338 + v332 - v349;
              v338 = *p_startIndex;
            }
          }
        }

        if (v339)
        {
          v350 = self->_endIndex;
          if (v350)
          {
            if (v339 > v350)
            {
              v346 = v346 - v339 + v350;
              v339 = self->_endIndex;
            }
          }
        }

        if (v346 <= 0)
        {
          if (v338)
          {
            v370 = self->_endIndex;
            if (v370)
            {
              v371 = v338 <= v370;
            }

            else
            {
              v371 = 1;
            }

            v372 = !v371;
            v998 |= v372;
          }

LABEL_782:
          v185 = 5;
LABEL_783:

          v246 = 0;
LABEL_784:
          v1054 = v1050;
          goto LABEL_785;
        }

        goto LABEL_463;
      }

      v348 = v1018;
      v347 = v1004;
      if (v1018 >= 1)
      {
        v352 = v329 - (v1090 + v1018);
        if (v329 > v1090 + v1018)
        {
          v353 = (v352 / v1091);
          if ((v353 & 0x80000000) != 0)
          {
            if (byte_100117E80 == 1)
            {
              v436 = __error();
              v437 = *v436;
              v439 = sub_100035B80(v436, v438);
              if (os_log_type_enabled(v439, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109890;
                *&buf[4] = v353;
                *&buf[8] = 1024;
                *&buf[10] = v329;
                *&buf[14] = 1024;
                *&buf[16] = v1028;
                *&buf[20] = 2112;
                *&buf[22] = v1055;
                _os_log_debug_impl(&_mh_execute_header, v439, OS_LOG_TYPE_DEBUG, "Parsing spindump text: Bad indent level %d for %d whitespace (%d: %@)", buf, 0x1Eu);
              }

              v346 = v332;
              *__error() = v437;
              v347 = v1004;
              v348 = v1018;
            }

            v326 = 0;
            if (byte_100117E81 == 1 && dword_100117510 <= 0)
            {
              v440 = *__error();
              v441 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Bad indent level %d for %d whitespace (%d: %@)", v353, v329, v1028, v1055);
              v443 = v441;
              if (v441)
              {
                v444 = CFStringGetCStringPtr(v441, 0x8000100u);
                if (v444)
                {
                  v445 = 0;
                }

                else
                {
                  v444 = malloc_type_calloc(0x400uLL, 1uLL, 0xE13E54BAuLL);
                  CFStringGetCString(v443, v444, 1024, 0x8000100u);
                  v445 = v444;
                }

                if (qword_100117E88)
                {
                  v561 = qword_100117E88;
                }

                else
                {
                  v561 = __stderrp;
                }

                fprintf(v561, "%s\n", v444);
                if (v445)
                {
                  free(v445);
                }

                CFRelease(v443);
              }

              else
              {
                v555 = sub_100035B80(0, v442);
                if (os_log_type_enabled(v555, OS_LOG_TYPE_FAULT))
                {
                  *buf = 67109890;
                  *&buf[4] = v353;
                  *&buf[8] = 1024;
                  *&buf[10] = v329;
                  *&buf[14] = 1024;
                  *&buf[16] = v1028;
                  *&buf[20] = 2112;
                  *&buf[22] = v1055;
                  _os_log_fault_impl(&_mh_execute_header, v555, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Bad indent level %d for %d whitespace (%d: %@)", buf, 0x1Eu);
                }

                if (qword_100117E88)
                {
                  v556 = qword_100117E88;
                }

                else
                {
                  v556 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v556);
                v346 = v332;
              }

              v326 = 0;
              *__error() = v440;
              v347 = v1004;
              v348 = v1018;
            }
          }

          else
          {
            v326 = (v352 / v1091);
          }

          if (v1005)
          {
            goto LABEL_782;
          }

LABEL_463:
          v351 = 1;
          goto LABEL_469;
        }
      }

      v326 = 0;
      v351 = 0;
LABEL_469:
      if ((v326 & 0x80000000) != 0)
      {
        if (byte_100117E80 == 1)
        {
          v800 = __error();
          v801 = *v800;
          v803 = sub_100035B80(v800, v802);
          if (os_log_type_enabled(v803, OS_LOG_TYPE_ERROR))
          {
            v804 = v1055;
            [v1055 UTF8String];
            sub_1000BD4E4();
          }

          *__error() = v801;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v805 = *__error();
          v806 = v1055;
          v807 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Non-frame line has count but no indent level (%d: %s)", "rawIndentLevel >= 0", v1028, [v1055 UTF8String]);
          v809 = v807;
          if (v807)
          {
            v913 = CFStringGetCStringPtr(v807, 0x8000100u);
            if (v913)
            {
              v914 = 0;
            }

            else
            {
              v913 = malloc_type_calloc(0x400uLL, 1uLL, 0xF401C9C8uLL);
              CFStringGetCString(v809, v913, 1024, 0x8000100u);
              v914 = v913;
            }

            if (qword_100117E88)
            {
              v933 = qword_100117E88;
            }

            else
            {
              v933 = __stderrp;
            }

            fprintf(v933, "%s\n", v913);
            if (v914)
            {
              free(v914);
            }

            CFRelease(v809);
          }

          else
          {
            v810 = sub_100035B80(0, v808);
            if (os_log_type_enabled(v810, OS_LOG_TYPE_FAULT))
            {
              v811 = v1055;
              [v1055 UTF8String];
              sub_1000BD528();
            }

            if (qword_100117E88)
            {
              v812 = qword_100117E88;
            }

            else
            {
              v812 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v812);
          }

          *__error() = v805;
        }

        v934 = v1055;
        uTF8String37 = [v1055 UTF8String];
        sub_100035A54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 640, "%s: Non-frame line has count but no indent level (%d: %s)", v936, v937, v938, v939, "rawIndentLevel >= 0", v1028, uTF8String37);
        goto LABEL_1248;
      }

      if (v351 && v326 > v1050 && v326 != v1050 + 1)
      {
        if (byte_100117E80 == 1)
        {
          v354 = __error();
          v355 = *v354;
          v357 = sub_100035B80(v354, v356);
          if (os_log_type_enabled(v357, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109378;
            *&buf[4] = v1028;
            *&buf[8] = 2112;
            *&buf[10] = v1055;
            _os_log_error_impl(&_mh_execute_header, v357, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unexpected indent for line (%d: %@)", buf, 0x12u);
          }

          *__error() = v355;
        }

        v185 = 2;
        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v358 = *__error();
          v359 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected indent for line (%d: %@)", v1028, v1055);
          v361 = v359;
          if (v359)
          {
            v362 = CFStringGetCStringPtr(v359, 0x8000100u);
            if (v362)
            {
              v363 = 0;
            }

            else
            {
              v362 = malloc_type_calloc(0x400uLL, 1uLL, 0xCFDF6F80uLL);
              CFStringGetCString(v361, v362, 1024, 0x8000100u);
              v363 = v362;
            }

            if (qword_100117E88)
            {
              v471 = qword_100117E88;
            }

            else
            {
              v471 = __stderrp;
            }

            fprintf(v471, "%s\n", v362);
            if (v363)
            {
              free(v363);
            }

            CFRelease(v361);
          }

          else
          {
            v460 = sub_100035B80(0, v360);
            if (os_log_type_enabled(v460, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109378;
              *&buf[4] = v1028;
              *&buf[8] = 2112;
              *&buf[10] = v1055;
              _os_log_fault_impl(&_mh_execute_header, v460, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unexpected indent for line (%d: %@)", buf, 0x12u);
            }

            if (qword_100117E88)
            {
              v461 = qword_100117E88;
            }

            else
            {
              v461 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v461);
          }

          *__error() = v358;
          v185 = 2;
        }

        goto LABEL_783;
      }

      if (v346 >= 1 && v348 <= 0)
      {
        v348 = v1024;
        if (v1024 <= 0)
        {
          v348 = vcvtpd_s64_f64(log10(v346)) + 2;
        }
      }

      v1018 = v348;
      if (!v351)
      {
        if ((self->_isHeavy != v1092) | v998 & 1)
        {
          goto LABEL_672;
        }

        v1025 = v346;
        v369 = 0;
        v368 = 0;
        goto LABEL_527;
      }

      v1025 = v346;
      v364 = &ptr[8 * v347 + 4];
      while (1)
      {
        v365 = v347;
        v366 = __OFSUB__(v347, 1);
        v347 = (v347 - 1);
        if (v347 < 0 != v366)
        {
          break;
        }

        v367 = *(v364 - 3);
        v364 -= 8;
        if (v367 < v326)
        {
          v368 = *v364;
          goto LABEL_521;
        }
      }

      v368 = 0;
LABEL_521:
      if (!((self->_isHeavy != v1092) | v998 & 1))
      {
        v369 = v348;
        v1004 = v365;
LABEL_527:
        v384 = v1091;
        v385 = v1090;
        v386 = v1040;
        uTF8String38 = [v1040 UTF8String];
        v388 = v1034;
        sub_10009A430(stream, v385 + (v368 + v326) * v384, v1030 != 0x7FFFFFFFFFFFFFFFLL, v1025, v369, uTF8String38, [v1034 UTF8String], v338, v339);
        goto LABEL_672;
      }

      if (!v326)
      {
        if (!obj)
        {
          obj = objc_alloc_init(NSMutableArray);
          goto LABEL_668;
        }

        v1083 = 0u;
        v1084 = 0u;
        v1081 = 0u;
        v1082 = 0u;
        obj = obj;
        v431 = [obj countByEnumeratingWithState:&v1081 objects:v1105 count:16];
        if (!v431)
        {
          goto LABEL_610;
        }

        v432 = *v1082;
        while (1)
        {
          for (i = 0; i != v431; i = i + 1)
          {
            if (*v1082 != v432)
            {
              objc_enumerationMutation(obj);
            }

            v434 = *(*(&v1081 + 1) + 8 * i);
            if (sub_1000BC614())
            {
              v449 = v434;

              if (v449)
              {
                goto LABEL_670;
              }

LABEL_668:
              v449 = sub_10008F924(SPTreeNode, 0, v1030 != 0x7FFFFFFFFFFFFFFFLL, 0, 0xFFFFFFFFFFFFFFFFLL, v1034, v1040);
              [obj addObject:v449];
              goto LABEL_669;
            }
          }

          v431 = [obj countByEnumeratingWithState:&v1081 objects:v1105 count:16];
          if (!v431)
          {
LABEL_610:

            goto LABEL_668;
          }
        }
      }

      if (!v1065)
      {
        if (byte_100117E80 == 1)
        {
          v860 = __error();
          v861 = *v860;
          v863 = sub_100035B80(v860, v862);
          if (os_log_type_enabled(v863, OS_LOG_TYPE_ERROR))
          {
            v864 = v1055;
            uTF8String39 = [v1055 UTF8String];
            *buf = 136315906;
            *&buf[4] = "previousNode";
            *&buf[12] = 1024;
            *&buf[14] = v326;
            *&buf[18] = 1024;
            *&buf[20] = v1028;
            *&buf[24] = 2080;
            *&buf[26] = uTF8String39;
            _os_log_error_impl(&_mh_execute_header, v863, OS_LOG_TYPE_ERROR, "%s: no previousNode for indent of %d (%d: %s)", buf, 0x22u);
          }

          *__error() = v861;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v867 = *__error();
          v868 = v1055;
          v869 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: no previousNode for indent of %d (%d: %s)", "previousNode", v326, v1028, [v1055 UTF8String]);
          v871 = v869;
          if (v869)
          {
            v984 = CFStringGetCStringPtr(v869, 0x8000100u);
            if (v984)
            {
              v985 = 0;
            }

            else
            {
              v984 = malloc_type_calloc(0x400uLL, 1uLL, 0xE6B72259uLL);
              CFStringGetCString(v871, v984, 1024, 0x8000100u);
              v985 = v984;
            }

            if (qword_100117E88)
            {
              v987 = qword_100117E88;
            }

            else
            {
              v987 = __stderrp;
            }

            fprintf(v987, "%s\n", v984);
            if (v985)
            {
              free(v985);
            }

            CFRelease(v871);
          }

          else
          {
            v872 = sub_100035B80(0, v870);
            if (os_log_type_enabled(v872, OS_LOG_TYPE_FAULT))
            {
              v873 = v1055;
              uTF8String40 = [v1055 UTF8String];
              *buf = 136315906;
              *&buf[4] = "previousNode";
              *&buf[12] = 1024;
              *&buf[14] = v326;
              *&buf[18] = 1024;
              *&buf[20] = v1028;
              *&buf[24] = 2080;
              *&buf[26] = uTF8String40;
              _os_log_fault_impl(&_mh_execute_header, v872, OS_LOG_TYPE_FAULT, "Unable to format: %s: no previousNode for indent of %d (%d: %s)", buf, 0x22u);
            }

            if (qword_100117E88)
            {
              v875 = qword_100117E88;
            }

            else
            {
              v875 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v875);
          }

          *__error() = v867;
        }

        v876 = v1055;
        uTF8String41 = [v1055 UTF8String];
        sub_100035A54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 697, "%s: no previousNode for indent of %d (%d: %s)", v878, v879, v880, v881, "previousNode", v326, v1028, uTF8String41);
        goto LABEL_1248;
      }

      if (v1050 < v326)
      {
        v383 = v1065;
        goto LABEL_628;
      }

      v446 = v1065;
      do
      {
        v447 = v446;
        v448 = objc_loadWeakRetained(v446 + 7);

        if (!v448)
        {
          if (byte_100117E80 == 1)
          {
            v768 = __error();
            v769 = *v768;
            v771 = sub_100035B80(v768, v770);
            if (os_log_type_enabled(v771, OS_LOG_TYPE_ERROR))
            {
              v772 = v1055;
              uTF8String42 = [v1055 UTF8String];
              *buf = 136316162;
              *&buf[4] = "previousNode";
              *&buf[12] = 1024;
              *&buf[14] = v326;
              *&buf[18] = 1024;
              *&buf[20] = v1050;
              *&buf[24] = 1024;
              *&buf[26] = v1028;
              *&buf[30] = 2080;
              *&buf[32] = uTF8String42;
              _os_log_error_impl(&_mh_execute_header, v771, OS_LOG_TYPE_ERROR, "%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", buf, 0x28u);
            }

            *__error() = v769;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v775 = *__error();
            v776 = v1055;
            v777 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", "previousNode", v326, v1050, v1028, [v1055 UTF8String]);
            v779 = v777;
            if (v777)
            {
              v961 = CFStringGetCStringPtr(v777, 0x8000100u);
              if (v961)
              {
                v962 = 0;
              }

              else
              {
                v961 = malloc_type_calloc(0x400uLL, 1uLL, 0xBAF7CBA6uLL);
                CFStringGetCString(v779, v961, 1024, 0x8000100u);
                v962 = v961;
              }

              if (qword_100117E88)
              {
                v981 = qword_100117E88;
              }

              else
              {
                v981 = __stderrp;
              }

              fprintf(v981, "%s\n", v961);
              if (v962)
              {
                free(v962);
              }

              CFRelease(v779);
            }

            else
            {
              v780 = sub_100035B80(0, v778);
              if (os_log_type_enabled(v780, OS_LOG_TYPE_FAULT))
              {
                v781 = v1055;
                uTF8String43 = [v1055 UTF8String];
                *buf = 136316162;
                *&buf[4] = "previousNode";
                *&buf[12] = 1024;
                *&buf[14] = v326;
                *&buf[18] = 1024;
                *&buf[20] = v1050;
                *&buf[24] = 1024;
                *&buf[26] = v1028;
                *&buf[30] = 2080;
                *&buf[32] = uTF8String43;
                _os_log_fault_impl(&_mh_execute_header, v780, OS_LOG_TYPE_FAULT, "Unable to format: %s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", buf, 0x28u);
              }

              if (qword_100117E88)
              {
                v783 = qword_100117E88;
              }

              else
              {
                v783 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v783);
            }

            *__error() = v775;
          }

          v784 = v1055;
          uTF8String44 = [v1055 UTF8String];
          sub_100035A54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 702, "%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", v786, v787, v788, v789, "previousNode", v326, v1050, v1028, uTF8String44);
          goto LABEL_1248;
        }

        v446 = v448;
        v29 = v1050 <= v326;
        v1050 = (v1050 - 1);
      }

      while (!v29);
      LODWORD(v1050) = v326 - 1;
      v383 = v448;
LABEL_628:
      v1065 = v383;
      v449 = sub_1000BC444();
LABEL_669:
      if (v449)
      {
LABEL_670:
        v449[3] += v1025;
      }

      v475 = v1065;
      v1065 = v449;

      v1004 = v365;
LABEL_672:
      if (v351)
      {
        v476 = v326;
      }

      else
      {
        v476 = v1050;
      }

      v1054 = v476;

LABEL_676:
      v246 = 0;
      v185 = 0;
LABEL_785:

      v177 = 0;
      v15 = v1053;
      v1050 = v1054;
      streamCopy6 = stream;
      v175 = v1052;
LABEL_786:
      objc_autoreleasePoolPop(v1037);
      if (v185 && v185 != 5)
      {
        goto LABEL_28;
      }

      if (!fgets((v1099[3] + v177), *(v1095 + 6) - v177, v5))
      {
        goto LABEL_900;
      }
    }

    v332 = -1;
LABEL_446:
    v1024 = -1;
    goto LABEL_448;
  }

  obj = 0;
  ptr = 0;
  v15 = 0;
  v1065 = 0;
LABEL_900:
  if (fgets(v1099[3], *(v1095 + 6), v5))
  {
    do
    {
      fputs(v1099[3], streamCopy6);
      v14 = 1;
    }

    while (fgets(v1099[3], *(v1095 + 6), v5));
  }

  else
  {
    v14 = 1;
  }

LABEL_127:
  v99 = v1099[3];
  if (v99)
  {
    free(v99);
  }

  if (v5)
  {
    fclose(v5);
  }

  if (ptr)
  {
    free(ptr);
  }

  _Block_object_dispose(&v1094, 8);
  _Block_object_dispose(&v1098, 8);
  objc_autoreleasePoolPop(context);
  return v14 & 1;
}

@end