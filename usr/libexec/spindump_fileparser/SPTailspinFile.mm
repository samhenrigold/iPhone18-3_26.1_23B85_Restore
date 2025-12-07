@interface SPTailspinFile
+ (id)sampleStoreForFile:(const char *)file stackshotsOnly:(BOOL)only parsePastLastStackshot:(BOOL)stackshot;
@end

@implementation SPTailspinFile

+ (id)sampleStoreForFile:(const char *)file stackshotsOnly:(BOOL)only parsePastLastStackshot:(BOOL)stackshot
{
  stackshotCopy = stackshot;
  onlyCopy = only;
  fileCopy = file;
  v126 = 0;
  v8 = [SASampleStore canOpenFileAsKTraceFile:file errorOut:&v126];
  v9 = v126;
  v10 = v9;
  if (v8)
  {
    v11 = +[NSMutableArray array];
    initForFileParsing = [[SASampleStore alloc] initForFileParsing];
    if ((byte_100127EDC & 2) != 0 && sub_1000338E4())
    {
      if (byte_100127EC8 == 1)
      {
        v13 = __error();
        v14 = *v13;
        v16 = sub_10003E080(v13, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for tailspin file due to audio running", buf, 2u);
        }

        *__error() = v14;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 2)
      {
        v118 = fileCopy;
        v18 = *__error();
        v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for tailspin file due to audio running");
        if (v19)
        {
          v21 = v19;
          CStringPtr = CFStringGetCStringPtr(v19, 0x8000100u);
          if (CStringPtr)
          {
            v23 = CStringPtr;
            v24 = 0;
          }

          else
          {
            v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x2DB4CA2BuLL);
            CFStringGetCString(v21, v23, 1024, 0x8000100u);
            v24 = v23;
          }

          if (qword_100127ED0)
          {
            v59 = qword_100127ED0;
          }

          else
          {
            v59 = __stderrp;
          }

          fprintf(v59, "%s\n", v23);
          if (v24)
          {
            free(v24);
          }

          CFRelease(v21);
        }

        else
        {
          v56 = sub_10003E080(0, v20);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
          {
            sub_1000C5024(v56);
          }

          if (qword_100127ED0)
          {
            v57 = qword_100127ED0;
          }

          else
          {
            v57 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v57);
        }

        *__error() = v18;
        fileCopy = v118;
      }

      [initForFileParsing setDataGatheringOptions:{objc_msgSend(initForFileParsing, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
    }

    sub_1000791AC(initForFileParsing, (byte_100127EDC >> 3) & 1, (byte_100127EDC >> 2) & 1, (byte_100127EDC & 0x10) == 0);
    v116 = initForFileParsing;
    if (onlyCopy)
    {
      v125 = v10;
      v60 = &v125;
      v61 = [initForFileParsing parseStackshotsFromKTraceFile:fileCopy warningsOut:v11 errorOut:&v125];
    }

    else
    {
      if (stackshotCopy)
      {
        [initForFileParsing setKPerfPETParsePastLastStackshot:1];
      }

      v124 = v10;
      v60 = &v124;
      v61 = [initForFileParsing parseKTraceFile:fileCopy warningsOut:v11 errorOut:&v124];
    }

    v114 = v61;
    v115 = *v60;

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    obj = v11;
    v62 = [obj countByEnumeratingWithState:&v120 objects:v131 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v121;
      v65 = &byte_100127EC8;
      v66 = &byte_100127EC9;
      v67 = &dword_100127558;
      do
      {
        for (i = 0; i != v63; i = i + 1)
        {
          if (*v121 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v69 = *(*(&v120 + 1) + 8 * i);
          if (*v65 == 1)
          {
            v70 = __error();
            v71 = *v70;
            v73 = sub_10003E080(v70, v72);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v128 = fileCopy;
              v129 = 2112;
              v130 = v69;
              _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "WARNING creating sample store from %s: %@", buf, 0x16u);
            }

            *__error() = v71;
          }

          if (*v66 == 1 && *v67 <= 3)
          {
            v75 = *__error();
            v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WARNING creating sample store from %s: %@", fileCopy, v69);
            if (v76)
            {
              v78 = v76;
              v119 = v75;
              v79 = v63;
              v80 = v64;
              v81 = v67;
              v82 = v66;
              v83 = v65;
              v84 = fileCopy;
              v85 = CFStringGetCStringPtr(v76, 0x8000100u);
              if (v85)
              {
                v86 = v85;
                v87 = 0;
              }

              else
              {
                v86 = malloc_type_calloc(0x400uLL, 1uLL, 0x63DE7472uLL);
                CFStringGetCString(v78, v86, 1024, 0x8000100u);
                v87 = v86;
              }

              if (qword_100127ED0)
              {
                v90 = qword_100127ED0;
              }

              else
              {
                v90 = __stderrp;
              }

              fprintf(v90, "%s\n", v86);
              if (v87)
              {
                free(v87);
              }

              CFRelease(v78);
              fileCopy = v84;
              v65 = v83;
              v66 = v82;
              v67 = v81;
              v64 = v80;
              v63 = v79;
              v75 = v119;
            }

            else
            {
              v88 = sub_10003E080(0, v77);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v128 = fileCopy;
                v129 = 2112;
                v130 = v69;
                _os_log_fault_impl(&_mh_execute_header, v88, OS_LOG_TYPE_FAULT, "Unable to format: WARNING creating sample store from %s: %@", buf, 0x16u);
              }

              if (qword_100127ED0)
              {
                v89 = qword_100127ED0;
              }

              else
              {
                v89 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v89);
            }

            *__error() = v75;
          }
        }

        v63 = [obj countByEnumeratingWithState:&v120 objects:v131 count:16];
      }

      while (v63);
    }

    if (v114)
    {
      v91 = v116;
      v30 = v116;
      v36 = v115;
LABEL_161:

      goto LABEL_162;
    }

    v36 = v115;
    v91 = v116;
    if (v115)
    {
      if (byte_100127EC8)
      {
        v92 = __error();
        v93 = *v92;
        v95 = sub_10003E080(v92, v94);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          sub_1000C5068();
        }

        *__error() = v93;
      }

      v30 = 0;
      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_161;
      }

      v96 = *__error();
      v97 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ERROR trying to create sample store from %s: %@", fileCopy, v115);
      if (v97)
      {
        v99 = v97;
        v100 = CFStringGetCStringPtr(v97, 0x8000100u);
        if (!v100)
        {
          v101 = 1612617813;
LABEL_153:
          v108 = malloc_type_calloc(0x400uLL, 1uLL, v101);
          CFStringGetCString(v99, v108, 1024, 0x8000100u);
          v109 = v108;
          goto LABEL_154;
        }

        goto LABEL_143;
      }

      v110 = sub_10003E080(0, v98);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
      {
        sub_1000C50DC();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v102 = __error();
        v103 = *v102;
        v105 = sub_10003E080(v102, v104);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          sub_1000C5150();
        }

        *__error() = v103;
      }

      v30 = 0;
      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_161;
      }

      v96 = *__error();
      v106 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ERROR trying to create sample store from %s: Unknown error", fileCopy);
      if (v106)
      {
        v99 = v106;
        v100 = CFStringGetCStringPtr(v106, 0x8000100u);
        if (!v100)
        {
          v101 = 1645703019;
          goto LABEL_153;
        }

LABEL_143:
        v108 = v100;
        v109 = 0;
LABEL_154:
        if (qword_100127ED0)
        {
          v112 = qword_100127ED0;
        }

        else
        {
          v112 = __stderrp;
        }

        fprintf(v112, "%s\n", v108);
        if (v109)
        {
          free(v109);
        }

        CFRelease(v99);
        goto LABEL_160;
      }

      v110 = sub_10003E080(0, v107);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
      {
        sub_1000C51C4();
      }
    }

    if (qword_100127ED0)
    {
      v111 = qword_100127ED0;
    }

    else
    {
      v111 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v111);
LABEL_160:
    v30 = 0;
    *__error() = v96;
    goto LABEL_161;
  }

  if (v9)
  {
    if (byte_100127EC8)
    {
      v25 = __error();
      v26 = *v25;
      v28 = sub_10003E080(v25, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C4E54();
      }

      *__error() = v26;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v37 = *__error();
      v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Could not open %s as a ktrace file: %@", fileCopy, v10);
      if (v38)
      {
        v40 = v38;
        v41 = CFStringGetCStringPtr(v38, 0x8000100u);
        if (v41)
        {
          v42 = v41;
          v43 = 0;
        }

        else
        {
          v42 = malloc_type_calloc(0x400uLL, 1uLL, 0xE6669814uLL);
          CFStringGetCString(v40, v42, 1024, 0x8000100u);
          v43 = v42;
        }

        if (qword_100127ED0)
        {
          v53 = qword_100127ED0;
        }

        else
        {
          v53 = __stderrp;
        }

        fprintf(v53, "%s\n", v42);
        if (v43)
        {
          free(v43);
        }

        CFRelease(v40);
      }

      else
      {
        v51 = sub_10003E080(0, v39);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          sub_1000C4EC8();
        }

        if (qword_100127ED0)
        {
          v52 = qword_100127ED0;
        }

        else
        {
          v52 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v52);
      }

      v30 = 0;
      *__error() = v37;
    }

    else
    {
      v30 = 0;
    }

    v36 = v10;
  }

  else
  {
    if (byte_100127EC8)
    {
      v31 = __error();
      v32 = *v31;
      v34 = sub_10003E080(v31, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C4F3C();
      }

      *__error() = v32;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v44 = *__error();
      v45 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Could not open %s as a ktrace file for unknown reason", fileCopy);
      if (v45)
      {
        v47 = v45;
        v48 = CFStringGetCStringPtr(v45, 0x8000100u);
        if (v48)
        {
          v49 = v48;
          v50 = 0;
        }

        else
        {
          v49 = malloc_type_calloc(0x400uLL, 1uLL, 0xF70B13DuLL);
          CFStringGetCString(v47, v49, 1024, 0x8000100u);
          v50 = v49;
        }

        if (qword_100127ED0)
        {
          v58 = qword_100127ED0;
        }

        else
        {
          v58 = __stderrp;
        }

        fprintf(v58, "%s\n", v49);
        if (v50)
        {
          free(v50);
        }

        CFRelease(v47);
      }

      else
      {
        v54 = sub_10003E080(0, v46);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          sub_1000C4FB0();
        }

        if (qword_100127ED0)
        {
          v55 = qword_100127ED0;
        }

        else
        {
          v55 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v55);
      }

      v36 = 0;
      v30 = 0;
      *__error() = v44;
    }

    else
    {
      v36 = 0;
      v30 = 0;
    }
  }

LABEL_162:

  return v30;
}

@end