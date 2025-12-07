void sub_100040A80(id a1)
{
  v1 = os_log_create("com.apple.spindump", "SpinTelemetry");
  v2 = qword_100127CE8;
  qword_100127CE8 = v1;

  v3 = os_log_create("com.apple.spindump", "HangTelemetry");
  v4 = qword_100127CF0;
  qword_100127CF0 = v3;

  v5 = os_log_create("com.apple.spindump", "CPUResourceTelemetry");
  v6 = qword_100127CF8;
  qword_100127CF8 = v5;

  v7 = os_log_create("com.apple.spindump", "PowerException");
  v8 = qword_100127D00;
  qword_100127D00 = v7;

  v9 = os_log_create("com.apple.spindump", "DiskWritesResourceTelemetry");
  v10 = qword_100127D08;
  qword_100127D08 = v9;

  v11 = os_log_create("com.apple.spindump", "FileDescriptorExhaustion");
  v12 = qword_100127D10;
  qword_100127D10 = v11;

  v13 = os_log_create("com.apple.spindump", "PortExhaustion");
  v14 = qword_100127D18;
  qword_100127D18 = v13;

  v15 = os_log_create("com.apple.spindump", "KQWorkLoopExhaustion");
  v16 = qword_100127D20;
  qword_100127D20 = v15;

  v17 = os_log_create("com.apple.spindump", "StuckApp");
  v18 = qword_100127D28;
  qword_100127D28 = v17;

  qword_100127D30 = os_log_create("com.apple.spindump", "ServiceWatchdog");

  _objc_release_x1();
}

void sub_100040BF0(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("com.apple.spindump.eventrate", v1);
  v3 = qword_100127D40;
  qword_100127D40 = v2;
}

void sub_100040FD4(const char *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = strdup(a1);
  v4 = malloc_type_calloc(0x400uLL, 1uLL, 0x2275EEB4uLL);
  basename_r(v3, v4);
  v5 = sub_10003DEB8("WR for %s", v4);
  free(v4);
  if (qword_100127D58 != -1)
  {
    sub_1000A5F1C();
  }

  v6 = qword_100127D50;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000410EC;
  block[3] = &unk_100114EC0;
  v9 = v5;
  v10 = v3;
  v7 = v5;
  dispatch_async(v6, block);

  objc_autoreleasePoolPop(v2);
}

void sub_1000410EC(uint64_t a1)
{
  v569 = objc_alloc_init(NSUUID);
  if (!objc_opt_class())
  {
    if (byte_100127EC8 == 1)
    {
      v17 = __error();
      v18 = *v17;
      v20 = sub_10003E080(v17, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000A69B4(a1, v20, v21, v22, v23, v24, v25, v26);
      }

      *__error() = v18;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v28 = *__error();
      v30 = *(a1 + 40);
      v29 = (a1 + 40);
      v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: WorkflowResponsivness unavailable, not generating spindump report(s) for %s", v30);
      v33 = v31;
      if (v31)
      {
        CStringPtr = CFStringGetCStringPtr(v31, 0x8000100u);
        if (CStringPtr)
        {
          v35 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xC374754AuLL);
          CFStringGetCString(v33, CStringPtr, 1024, 0x8000100u);
          v35 = CStringPtr;
        }

        if (qword_100127ED0)
        {
          v104 = qword_100127ED0;
        }

        else
        {
          v104 = __stderrp;
        }

        fprintf(v104, "%s\n", CStringPtr);
        if (v35)
        {
          free(v35);
        }

        CFRelease(v33);
      }

      else
      {
        v49 = sub_10003E080(0, v32);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6A24(v29, v49, v50, v51, v52, v53, v54, v55);
        }

        if (qword_100127ED0)
        {
          v56 = qword_100127ED0;
        }

        else
        {
          v56 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v56);
      }

      *__error() = v28;
    }

    goto LABEL_196;
  }

  v2 = [WRWorkflowEventTracker alloc];
  v565 = (a1 + 40);
  v3 = [NSString stringWithUTF8String:*(a1 + 40)];
  v634 = 0;
  v570 = [v2 initWithTailspin:v3 error:&v634];
  v564 = v634;

  v4 = v570;
  if (!v570)
  {
    if (byte_100127EC8 == 1)
    {
      v36 = __error();
      v37 = *v36;
      v39 = sub_10003E080(v36, v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1000A68E4();
      }

      *__error() = v37;
      v4 = 0;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v41 = *__error();
      v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: Unable to decode workflow event tracker: %@", v564);
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
          v45 = malloc_type_calloc(0x400uLL, 1uLL, 0x375D1AACuLL);
          CFStringGetCString(v44, v45, 1024, 0x8000100u);
          v46 = v45;
        }

        if (qword_100127ED0)
        {
          v107 = qword_100127ED0;
        }

        else
        {
          v107 = __stderrp;
        }

        fprintf(v107, "%s\n", v45);
        if (v46)
        {
          free(v46);
        }

        CFRelease(v44);
      }

      else
      {
        v105 = sub_10003E080(0, v43);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
        {
          sub_1000A694C();
        }

        if (qword_100127ED0)
        {
          v106 = qword_100127ED0;
        }

        else
        {
          v106 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v106);
      }

      *__error() = v41;
      v4 = 0;
    }

    free(*v565);
    goto LABEL_195;
  }

  v5 = [v570 workflow];
  v563 = [v5 name];

  if (byte_100127EC8 == 1)
  {
    v6 = __error();
    v7 = *v6;
    v9 = sub_10003E080(v6, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v565;
      *buf = 138412546;
      v675 = v563;
      v676 = 2080;
      v677 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WR: %@: Received tailspin path %s", buf, 0x16u);
    }

    *__error() = v7;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 2)
  {
    v11 = *__error();
    v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Received tailspin path %s", v563, *v565);
    v14 = v12;
    if (v12)
    {
      v15 = CFStringGetCStringPtr(v12, 0x8000100u);
      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v15 = malloc_type_calloc(0x400uLL, 1uLL, 0x39676E6CuLL);
        CFStringGetCString(v14, v15, 1024, 0x8000100u);
        v16 = v15;
      }

      if (qword_100127ED0)
      {
        v57 = qword_100127ED0;
      }

      else
      {
        v57 = __stderrp;
      }

      fprintf(v57, "%s\n", v15);
      if (v16)
      {
        free(v16);
      }

      CFRelease(v14);
    }

    else
    {
      v47 = sub_10003E080(0, v13);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5F30();
      }

      if (qword_100127ED0)
      {
        v48 = qword_100127ED0;
      }

      else
      {
        v48 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
    }

    *__error() = v11;
  }

  v562 = [v570 eventStart];
  if (!v562)
  {
    if (byte_100127EC8 == 1)
    {
      v74 = __error();
      v75 = *v74;
      v77 = sub_10003E080(v74, v76);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        sub_1000A6814();
      }

      *__error() = v75;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v78 = *__error();
      v79 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: No workflow event start", v563);
      v81 = v79;
      if (v79)
      {
        v82 = CFStringGetCStringPtr(v79, 0x8000100u);
        if (v82)
        {
          v83 = 0;
        }

        else
        {
          v82 = malloc_type_calloc(0x400uLL, 1uLL, 0xB824851AuLL);
          CFStringGetCString(v81, v82, 1024, 0x8000100u);
          v83 = v82;
        }

        if (qword_100127ED0)
        {
          v120 = qword_100127ED0;
        }

        else
        {
          v120 = __stderrp;
        }

        fprintf(v120, "%s\n", v82);
        if (v83)
        {
          free(v83);
        }

        CFRelease(v81);
      }

      else
      {
        v108 = sub_10003E080(0, v80);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
        {
          sub_1000A687C();
        }

        if (qword_100127ED0)
        {
          v109 = qword_100127ED0;
        }

        else
        {
          v109 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v109);
      }

      *__error() = v78;
    }

    free(*v565);
    goto LABEL_194;
  }

  v58 = [v570 eventEnd];
  v559 = v58;
  v59 = v58;
  if (!v58)
  {
    if (byte_100127EC8 == 1)
    {
      v84 = __error();
      v85 = *v84;
      v87 = sub_10003E080(v84, v86);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        sub_1000A6744();
      }

      *__error() = v85;
      v59 = 0;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v88 = *__error();
      v89 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: No workflow event end", v563);
      v91 = v89;
      if (v89)
      {
        v92 = CFStringGetCStringPtr(v89, 0x8000100u);
        if (v92)
        {
          v93 = 0;
        }

        else
        {
          v92 = malloc_type_calloc(0x400uLL, 1uLL, 0xF0C0D5F5uLL);
          CFStringGetCString(v91, v92, 1024, 0x8000100u);
          v93 = v92;
        }

        if (qword_100127ED0)
        {
          v125 = qword_100127ED0;
        }

        else
        {
          v125 = __stderrp;
        }

        fprintf(v125, "%s\n", v92);
        if (v93)
        {
          free(v93);
        }

        CFRelease(v91);
      }

      else
      {
        v121 = sub_10003E080(0, v90);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
        {
          sub_1000A67AC();
        }

        if (qword_100127ED0)
        {
          v122 = qword_100127ED0;
        }

        else
        {
          v122 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v122);
      }

      *__error() = v88;
      v59 = 0;
    }

    free(*v565);
    goto LABEL_193;
  }

  v60 = [v58 machContTimeNs];
  v548 = (v60 - [v562 machContTimeNs]);
  v61 = v548 / 1000000000.0;
  if (v61 <= 0.0)
  {
    if (byte_100127EC8 == 1)
    {
      v94 = __error();
      v95 = *v94;
      v97 = sub_10003E080(v94, v96);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        sub_1000A5FA8();
      }

      *__error() = v95;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v98 = *__error();
      v99 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Workflow event has invalid duration %.3f", v563, *&v61);
      v101 = v99;
      if (v99)
      {
        v102 = CFStringGetCStringPtr(v99, 0x8000100u);
        if (v102)
        {
          v103 = 0;
        }

        else
        {
          v102 = malloc_type_calloc(0x400uLL, 1uLL, 0x8DC2A7D1uLL);
          CFStringGetCString(v101, v102, 1024, 0x8000100u);
          v103 = v102;
        }

        if (qword_100127ED0)
        {
          v126 = qword_100127ED0;
        }

        else
        {
          v126 = __stderrp;
        }

        fprintf(v126, "%s\n", v102);
        if (v103)
        {
          free(v103);
        }

        CFRelease(v101);
      }

      else
      {
        v123 = sub_10003E080(0, v100);
        if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
        {
          sub_1000A601C();
        }

        if (qword_100127ED0)
        {
          v124 = qword_100127ED0;
        }

        else
        {
          v124 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v124);
      }

      *__error() = v98;
    }

    free(*v565);
    goto LABEL_192;
  }

  v556 = [v570 error];
  if (!v556)
  {
    goto LABEL_211;
  }

  v62 = [v556 domain];
  if (![v62 isEqualToString:WRErrorDomain])
  {

    goto LABEL_128;
  }

  v63 = [v556 code] == 4;

  if (!v63)
  {
LABEL_128:
    if (byte_100127EC8 == 1)
    {
      v110 = __error();
      v111 = *v110;
      v113 = sub_10003E080(v110, v112);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v675 = v563;
        v676 = 2112;
        v677 = v556;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "WR: %@: Workflow event has error %@, not considering for diagnostics", buf, 0x16u);
      }

      *__error() = v111;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v114 = *__error();
      v115 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Workflow event has error %@, not considering for diagnostics", v563, v556);
      v117 = v115;
      if (v115)
      {
        v118 = CFStringGetCStringPtr(v115, 0x8000100u);
        if (v118)
        {
          v119 = 0;
        }

        else
        {
          v118 = malloc_type_calloc(0x400uLL, 1uLL, 0x6BBB553CuLL);
          CFStringGetCString(v117, v118, 1024, 0x8000100u);
          v119 = v118;
        }

        if (qword_100127ED0)
        {
          v129 = qword_100127ED0;
        }

        else
        {
          v129 = __stderrp;
        }

        fprintf(v129, "%s\n", v118);
        if (v119)
        {
          free(v119);
        }

        CFRelease(v117);
      }

      else
      {
        v127 = sub_10003E080(0, v116);
        if (os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6090();
        }

        if (qword_100127ED0)
        {
          v128 = qword_100127ED0;
        }

        else
        {
          v128 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v128);
      }

      *__error() = v114;
    }

    free(*v565);
    goto LABEL_191;
  }

  if (byte_100127EC8 == 1)
  {
    v64 = __error();
    v65 = *v64;
    v67 = sub_10003E080(v64, v66);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v675 = v563;
      v676 = 2112;
      v677 = v556;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "WR: %@: Workflow event has error %@, still considering for diagnostics", buf, 0x16u);
    }

    *__error() = v65;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 2)
  {
    v68 = *__error();
    v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Workflow event has error %@, still considering for diagnostics", v563, v556);
    v71 = v69;
    if (v69)
    {
      v72 = CFStringGetCStringPtr(v69, 0x8000100u);
      if (v72)
      {
        v73 = 0;
      }

      else
      {
        v72 = malloc_type_calloc(0x400uLL, 1uLL, 0xE3A78419uLL);
        CFStringGetCString(v71, v72, 1024, 0x8000100u);
        v73 = v72;
      }

      if (qword_100127ED0)
      {
        v132 = qword_100127ED0;
      }

      else
      {
        v132 = __stderrp;
      }

      fprintf(v132, "%s\n", v72);
      if (v73)
      {
        free(v73);
      }

      CFRelease(v71);
    }

    else
    {
      v130 = sub_10003E080(0, v70);
      if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
      {
        sub_1000A6104();
      }

      if (qword_100127ED0)
      {
        v131 = qword_100127ED0;
      }

      else
      {
        v131 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v131);
    }

    *__error() = v68;
  }

LABEL_211:
  v632[0] = 0;
  v632[1] = v632;
  v632[2] = 0x2020000000;
  v633 = 0;
  v626 = 0;
  v627 = &v626;
  v628 = 0x3032000000;
  v629 = sub_100045D80;
  v630 = sub_100045D90;
  v631 = 0;
  v624[0] = 0;
  v624[1] = v624;
  v624[2] = 0x3032000000;
  v624[3] = sub_100045D80;
  v624[4] = sub_100045D90;
  v625 = 0;
  v619[0] = _NSConcreteStackBlock;
  v619[1] = 3221225472;
  v619[2] = sub_100045D98;
  v619[3] = &unk_100114E48;
  v621 = v632;
  v622 = &v626;
  v623 = *v565;
  v539 = v563;
  v620 = v539;
  v133 = objc_retainBlock(v619);
  v618[0] = _NSConcreteStackBlock;
  v618[1] = 3221225472;
  v618[2] = sub_100046438;
  v618[3] = &unk_100114E70;
  v618[4] = v624;
  v618[5] = &v626;
  v134 = objc_retainBlock(v618);

  v617 = 0;
  v135 = [v570 encodedStringWithError:&v617];
  v564 = v617;
  v558 = v135;
  if (!v135)
  {
    v514 = __error();
    v515 = *v514;
    v517 = sub_10003E080(v514, v516);
    if (os_log_type_enabled(v517, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6178();
    }

    *__error() = v515;
    if (byte_100127EC9 == 1 && dword_100127558 <= 4)
    {
      v518 = *__error();
      v519 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to encode workflow event tracked into a string: %@", v564);
      v521 = v519;
      if (v519)
      {
        v522 = CFStringGetCStringPtr(v519, 0x8000100u);
        if (v522)
        {
          v523 = 0;
        }

        else
        {
          v522 = malloc_type_calloc(0x400uLL, 1uLL, 0x8DEC0E9AuLL);
          CFStringGetCString(v521, v522, 1024, 0x8000100u);
          v523 = v522;
        }

        if (qword_100127ED0)
        {
          v526 = qword_100127ED0;
        }

        else
        {
          v526 = __stderrp;
        }

        fprintf(v526, "%s\n", v522);
        if (v523)
        {
          free(v523);
        }

        CFRelease(v521);
      }

      else
      {
        v524 = sub_10003E080(0, v520);
        if (os_log_type_enabled(v524, OS_LOG_TYPE_FAULT))
        {
          sub_1000A61E0();
        }

        if (qword_100127ED0)
        {
          v525 = qword_100127ED0;
        }

        else
        {
          v525 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v525);
      }

      *__error() = v518;
    }
  }

  v136 = objc_alloc_init(NSMutableArray);
  v540 = objc_alloc_init(NSMutableArray);
  v542 = objc_alloc_init(NSMutableDictionary);
  v615 = 0;
  v614 = 0;
  v616 = 0;
  objc_msgSend_stats(v570);
  v587 = v136;
  v137 = v570;
  v551 = v133;
  v550 = v134;
  v652 = 0u;
  v653 = 0u;
  v654 = 0u;
  v655 = 0u;
  v601 = v137;
  v138 = [v137 workflow];
  obj = [v138 workflowDiagnostics];

  v139 = [obj countByEnumeratingWithState:&v652 objects:buf count:16];
  if (!v139)
  {
    v140 = 0;
    goto LABEL_304;
  }

  v557 = v139;
  v140 = 0;
  v560 = *v653;
  v546 = WRErrorDomain;
  while (2)
  {
    for (i = 0; i != v557; i = (i + 1))
    {
      if (*v653 != v560)
      {
        objc_enumerationMutation(obj);
      }

      v597 = *(*(&v652 + 1) + 8 * i);
      v594 = [[SPWRReportReason alloc] initWithWorkflowTracker:v601 signpostTracker:0 diagnostic:v597];
      if (![v597 hasTriggerThresholdDurationSingle])
      {
        goto LABEL_221;
      }

      v141 = 0;
      if (([v597 reportOmittingNetworkBoundIntervals] & 1) == 0)
      {
        v142 = [v601 eventEnd];
        v143 = [v142 machContTimeNs];
        v144 = [v601 eventStart];
        v145 = [v144 machContTimeNs];

        v141 = v143 - v145;
      }

      [v597 triggerThresholdDurationSingle];
      v146 = v141 / 1000000000.0;
      if (v147 <= v146)
      {
        if ([v597 reportOmittingNetworkBoundIntervals])
        {
          [(SPWRReportReason *)v594 setWorkflowDurationOmittingNetworkBoundIntervals:v146];
        }

        else
        {
          [(SPWRReportReason *)v594 setWorkflowDuration:v146];
        }

        v148 = 1;
      }

      else
      {
LABEL_221:
        v148 = 0;
      }

      if (![v597 triggerEventTimeout])
      {
        v152 = 0;
        goto LABEL_234;
      }

      v149 = [v601 error];
      v150 = [v149 domain];
      if (![v150 isEqualToString:v546])
      {

LABEL_232:
        v152 = 0;
        goto LABEL_233;
      }

      v151 = [v149 code] == 4;

      if (!v151)
      {
        goto LABEL_232;
      }

      v152 = 1;
      [(SPWRReportReason *)v594 setWorkflowEventTimedOut:1];
LABEL_233:

LABEL_234:
      if ((v148 | v152) == 1)
      {
        if ([v597 hasAnySpindumpReports])
        {
          v592 = v551[2]();
          if (!v592)
          {

            v140 = 1;
            goto LABEL_304;
          }

          v590 = v550[2]();
          v552 = [v597 reportProcessesWithName];
          if (v552)
          {
            v153 = objc_alloc_init(NSMutableArray);
            *&v635 = _NSConcreteStackBlock;
            *(&v635 + 1) = 3221225472;
            *&v636 = sub_1000488B8;
            *(&v636 + 1) = &unk_100114F08;
            *&v637 = v552;
            v588 = v153;
            *(&v637 + 1) = v588;
            [v592 enumerateTasks:&v635];
          }

          else
          {
            v588 = 0;
          }

          v571 = [v597 reportOtherSignpostWithName];
          if (v571)
          {
            v154 = [v601 allSignpostTrackers];
            v155 = [v154 mutableCopy];

            if ([v155 count])
            {
              v156 = 0;
              do
              {
                v157 = [v155 objectAtIndexedSubscript:v156];
                v158 = [v157 signpost];
                v159 = [v158 name];
                v160 = [v159 isEqualToString:v571];

                if (v160)
                {
                  ++v156;
                }

                else
                {
                  [v155 removeObjectAtIndex:v156];
                }
              }

              while (v156 < [v155 count]);
            }

            v650 = 0u;
            v649 = 0u;
            v648 = 0u;
            v647 = 0u;
            v573 = v155;
            v577 = [v573 countByEnumeratingWithState:&v647 objects:v669 count:16];
            if (v577)
            {
              v575 = *v648;
              do
              {
                for (j = 0; j != v577; j = j + 1)
                {
                  if (*v648 != v575)
                  {
                    objc_enumerationMutation(v573);
                  }

                  v599 = *(*(&v647 + 1) + 8 * j);
                  v581 = [v599 intervals];
                  v579 = [v599 incompleteIntervalStarts];
                  v161 = [v581 count];
                  if ([v579 count] + v161)
                  {
                    v646 = 0u;
                    v645 = 0u;
                    v644 = 0u;
                    v643 = 0u;
                    v178 = [v599 intervals];
                    v179 = [v178 countByEnumeratingWithState:&v643 objects:v660 count:16];
                    if (v179)
                    {
                      v180 = *v644;
                      v585 = v178;
                      do
                      {
                        for (k = 0; k != v179; k = k + 1)
                        {
                          if (*v644 != v180)
                          {
                            objc_enumerationMutation(v585);
                          }

                          v182 = *(*(&v643 + 1) + 8 * k);
                          v183 = [v182 start];
                          v184 = [v183 threadID];
                          v185 = [v182 end];
                          v186 = [v185 threadID];
                          v187 = [v182 start];
                          v188 = [v187 machContTimeNs];
                          v189 = [v182 end];
                          sub_100048930(v587, v594, v592, v601, 0, v597, v599, v588, v590, v184, v186, v188, [v189 machContTimeNs]);
                        }

                        v178 = v585;
                        v179 = [v585 countByEnumeratingWithState:&v643 objects:v660 count:16];
                      }

                      while (v179);
                    }

                    v642 = 0u;
                    v641 = 0u;
                    v640 = 0u;
                    v639 = 0u;
                    v190 = [v599 incompleteIntervalStarts];
                    v191 = [v190 countByEnumeratingWithState:&v639 objects:v659 count:16];
                    if (v191)
                    {
                      v192 = *v640;
                      do
                      {
                        for (m = 0; m != v191; m = m + 1)
                        {
                          if (*v640 != v192)
                          {
                            objc_enumerationMutation(v190);
                          }

                          v194 = *(*(&v639 + 1) + 8 * m);
                          v195 = [v194 threadID];
                          v196 = [v194 machContTimeNs];
                          v197 = [v601 eventEnd];
                          sub_100048930(v587, v594, v592, v601, 0, v597, v599, v588, v590, v195, 0, v196, [v197 machContTimeNs]);
                        }

                        v191 = [v190 countByEnumeratingWithState:&v639 objects:v659 count:16];
                      }

                      while (v191);
                    }
                  }

                  else
                  {
                    if (byte_100127EC8 == 1)
                    {
                      v162 = __error();
                      v163 = *v162;
                      v165 = sub_10003E080(v162, v164);
                      if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                      {
                        v201 = [v601 workflow];
                        v202 = [v201 name];
                        v203 = [v599 signpost];
                        v204 = [v203 name];
                        v205 = [v597 name];
                        *v670 = 138412802;
                        *&v670[4] = v202;
                        *&v670[12] = 2112;
                        *&v670[14] = v204;
                        *&v670[22] = 2112;
                        v671 = v205;
                        _os_log_error_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to overall workflow, but no intervals to report", v670, 0x20u);
                      }

                      *__error() = v163;
                    }

                    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                    {
                      v167 = *__error();
                      v168 = [v601 workflow];
                      v169 = [v168 name];
                      v170 = [v599 signpost];
                      v171 = [v170 name];
                      v172 = [v597 name];
                      v173 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to overall workflow, but no intervals to report", v169, v171, v172);

                      if (v173)
                      {
                        v176 = CFStringGetCStringPtr(v173, 0x8000100u);
                        if (v176)
                        {
                          v177 = 0;
                        }

                        else
                        {
                          v176 = malloc_type_calloc(0x400uLL, 1uLL, 0x15682504uLL);
                          CFStringGetCString(v173, v176, 1024, 0x8000100u);
                          v177 = v176;
                        }

                        if (qword_100127ED0)
                        {
                          v200 = qword_100127ED0;
                        }

                        else
                        {
                          v200 = __stderrp;
                        }

                        fprintf(v200, "%s\n", v176);
                        if (v177)
                        {
                          free(v177);
                        }

                        CFRelease(v173);
                      }

                      else
                      {
                        v198 = sub_10003E080(v174, v175);
                        if (os_log_type_enabled(v198, OS_LOG_TYPE_FAULT))
                        {
                          v206 = [v601 workflow];
                          v207 = [v206 name];
                          v208 = [v599 signpost];
                          v209 = [v208 name];
                          v210 = [v597 name];
                          *v670 = 138412802;
                          *&v670[4] = v207;
                          *&v670[12] = 2112;
                          *&v670[14] = v209;
                          *&v670[22] = 2112;
                          v671 = v210;
                          _os_log_fault_impl(&_mh_execute_header, v198, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to overall workflow, but no intervals to report", v670, 0x20u);
                        }

                        if (qword_100127ED0)
                        {
                          v199 = qword_100127ED0;
                        }

                        else
                        {
                          v199 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v199);
                      }

                      *__error() = v167;
                    }
                  }
                }

                v577 = [v573 countByEnumeratingWithState:&v647 objects:v669 count:16];
              }

              while (v577);
            }

            v211 = v573;
            v212 = v573;
          }

          else
          {
            v212 = [v601 eventStart];
            v213 = [v212 threadID];
            v211 = [v601 eventEnd];
            v214 = [v211 threadID];
            v215 = [v601 eventStart];
            v216 = [v215 machContTimeNs];
            v217 = [v601 eventEnd];
            sub_100048930(v587, v594, v592, v601, 0, v597, 0, v588, v590, v213, v214, v216, [v217 machContTimeNs]);
          }
        }

        v140 = 1;
      }
    }

    v557 = [obj countByEnumeratingWithState:&v652 objects:buf count:16];
    if (v557)
    {
      continue;
    }

    break;
  }

LABEL_304:

  if (v140)
  {
    [v540 addObject:@"overall"];
  }

  v547 = objc_alloc_init(NSMutableDictionary);
  if (v615 != v548)
  {
    v218 = [NSNumber numberWithDouble:v615 / 1000000000.0];
    [v547 setObject:v218 forKeyedSubscript:@"nonNetworkS"];
  }

  if (v616)
  {
    v219 = [NSNumber numberWithUnsignedLongLong:?];
    [v547 setObject:v219 forKeyedSubscript:@"numIncomplete"];
  }

  if (v614)
  {
    v220 = [NSNumber numberWithDouble:v614 / 1000000000.0];
    [v547 setObject:v220 forKeyedSubscript:@"untrackedS"];
  }

  if ([v547 count])
  {
    [v542 setObject:v547 forKeyedSubscript:@"overall"];
  }

  v612 = 0u;
  v613 = 0u;
  v610 = 0u;
  v611 = 0u;
  v221 = [v601 allSignpostTrackers];
  v222 = [v221 countByEnumeratingWithState:&v610 objects:v658 count:16];
  if (v222)
  {
    v535 = *v611;
    v533 = v221;
    do
    {
      v223 = 0;
      v534 = v222;
      do
      {
        if (*v611 != v535)
        {
          objc_enumerationMutation(v221);
        }

        v224 = *(*(&v610 + 1) + 8 * v223);
        v657 = 0u;
        v656 = 0u;
        v655 = 0u;
        v654 = 0u;
        v653 = 0u;
        v652 = 0u;
        v225 = [v601 eventEnd];
        [v225 machContTimeNs];
        if (v224)
        {
          objc_msgSend_statsWithEventEndNs_(v224);
        }

        else
        {
          v657 = 0u;
          v656 = 0u;
          v655 = 0u;
          v654 = 0u;
          v653 = 0u;
          v652 = 0u;
        }

        v538 = v223;

        v544 = v652;
        if (v652)
        {
          v226 = v653;
          v580 = v587;
          v600 = v601;
          v227 = v224;
          v537 = v551;
          v536 = v550;
          v647 = 0u;
          v648 = 0u;
          v649 = 0u;
          v650 = 0u;
          v591 = v227;
          v228 = [v227 signpost];
          v549 = [v228 diagnostics];

          v229 = [v549 countByEnumeratingWithState:&v647 objects:buf count:16];
          if (!v229)
          {
            v230 = 0;
            goto LABEL_458;
          }

          v543 = v229;
          v230 = 0;
          v545 = *v648;
          v231 = *(&v226 + 1) / 1000000000.0;
          while (1)
          {
            v553 = 0;
            do
            {
              if (*v648 != v545)
              {
                objc_enumerationMutation(v549);
              }

              v593 = *(*(&v647 + 1) + 8 * v553);
              v589 = [[SPWRReportReason alloc] initWithWorkflowTracker:v600 signpostTracker:v591 diagnostic:v593];
              if ([v593 hasTriggerThresholdCount] && v544 >= objc_msgSend(v593, "triggerThresholdCount"))
              {
                v232 = [v593 reportOtherSignpostWithName];
                if (v232)
                {

LABEL_334:
                  [(SPWRReportReason *)v589 setSignpostCount:v544];
                  LODWORD(v598) = 1;
                  goto LABEL_335;
                }

                if (v226)
                {
                  goto LABEL_334;
                }

                if (byte_100127EC8 == 1)
                {
                  v316 = __error();
                  v317 = *v316;
                  v319 = sub_10003E080(v316, v318);
                  if (os_log_type_enabled(v319, OS_LOG_TYPE_ERROR))
                  {
                    v334 = [v600 workflow];
                    v335 = [v334 name];
                    v336 = [v591 signpost];
                    v337 = [v336 name];
                    v338 = [v593 name];
                    *v661 = 138412802;
                    v662 = v335;
                    v663 = 2112;
                    v664 = v337;
                    v665 = 2112;
                    v666 = v338;
                    _os_log_error_impl(&_mh_execute_header, v319, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to count threshold, but no intervals to report", v661, 0x20u);
                  }

                  *__error() = v317;
                }

                LODWORD(v598) = 0;
                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v320 = *__error();
                  v321 = [v600 workflow];
                  v322 = [v321 name];
                  v323 = [v591 signpost];
                  v324 = [v323 name];
                  v325 = [v593 name];
                  v326 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to count threshold, but no intervals to report", v322, v324, v325);

                  if (v326)
                  {
                    v329 = CFStringGetCStringPtr(v326, 0x8000100u);
                    if (v329)
                    {
                      v330 = 0;
                    }

                    else
                    {
                      v329 = malloc_type_calloc(0x400uLL, 1uLL, 0x81203CD8uLL);
                      CFStringGetCString(v326, v329, 1024, 0x8000100u);
                      v330 = v329;
                    }

                    if (qword_100127ED0)
                    {
                      v333 = qword_100127ED0;
                    }

                    else
                    {
                      v333 = __stderrp;
                    }

                    fprintf(v333, "%s\n", v329);
                    if (v330)
                    {
                      free(v330);
                    }

                    CFRelease(v326);
                  }

                  else
                  {
                    v331 = sub_10003E080(v327, v328);
                    if (os_log_type_enabled(v331, OS_LOG_TYPE_FAULT))
                    {
                      v339 = [v600 workflow];
                      v340 = [v339 name];
                      v341 = [v591 signpost];
                      v342 = [v341 name];
                      v343 = [v593 name];
                      *v661 = 138412802;
                      v662 = v340;
                      v663 = 2112;
                      v664 = v342;
                      v665 = 2112;
                      v666 = v343;
                      _os_log_fault_impl(&_mh_execute_header, v331, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to count threshold, but no intervals to report", v661, 0x20u);
                    }

                    if (qword_100127ED0)
                    {
                      v332 = qword_100127ED0;
                    }

                    else
                    {
                      v332 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v332);
                  }

                  LODWORD(v598) = 0;
                  *__error() = v320;
                }
              }

              else
              {
                LODWORD(v598) = 0;
              }

LABEL_335:
              v233 = 0.0;
              if ([v593 hasTriggerThresholdDurationSingle])
              {
                [v593 triggerThresholdDurationSingle];
                if (v234 <= v231)
                {
                  [(SPWRReportReason *)v589 setSignpostDurationSingle:v231];
                  [v593 triggerThresholdDurationSingle];
                  v233 = v235;
                }
              }

              if ([v593 hasTriggerThresholdDurationSum])
              {
                [v593 triggerThresholdDurationSum];
                if (v236 <= v231)
                {
                  [(SPWRReportReason *)v589 setSignpostDurationSum:v231];
                  LODWORD(v598) = 1;
                }
              }

              if ([v593 hasTriggerThresholdDurationUnion])
              {
                [v593 triggerThresholdDurationUnion];
                if (v237 <= v231)
                {
                  [(SPWRReportReason *)v589 setSignpostDurationUnion:v231];
                  LOBYTE(v598) = 1;
LABEL_349:
                  if ([v593 hasAnySpindumpReports])
                  {
                    v586 = (v551[2])(v537);
                    if (!v586)
                    {

                      v230 = 1;
                      goto LABEL_458;
                    }

                    v584 = (v550[2])(v536);
                    obja = [v593 reportOtherSignpostWithName];
                    if (obja)
                    {
                      v239 = [v600 allSignpostTrackers];
                      v598 = [v239 mutableCopy];

                      if ([v598 count])
                      {
                        v240 = 0;
                        while (1)
                        {
                          v241 = v240;
                          v242 = [v598 objectAtIndexedSubscript:?];
                          v243 = [v242 signpost];
                          v244 = [v243 name];
                          v245 = [v244 isEqualToString:obja];

                          if (v245)
                          {
                            break;
                          }

                          [v598 removeObjectAtIndex:v241];
LABEL_367:

                          v253 = [v598 count];
                          v240 = v241;
                          if (v241 >= v253)
                          {
                            goto LABEL_368;
                          }
                        }

                        v246 = [v591 signpost];
                        v247 = [v246 individuationFieldName];
                        if (v247)
                        {
                          v248 = [v243 individuationFieldName];
                          if (v248)
                          {
                            v249 = [v591 individuationIdentifier];
                            if (v249 && ([v242 individuationIdentifier], (v250 = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              v251 = [v591 individuationIdentifier];
                              v252 = [v242 individuationIdentifier];
                              v595 = [v251 isEqualToString:v252];

                              if (v595)
                              {
                                goto LABEL_366;
                              }
                            }

                            else
                            {
                            }

                            [v598 removeObjectAtIndex:v241--];
                          }

                          else
                          {
                          }
                        }

                        else
                        {
                        }

LABEL_366:
                        ++v241;
                        goto LABEL_367;
                      }

LABEL_368:
                      v254 = [v598 copy];

                      LOBYTE(v598) = 1;
                    }

                    else
                    {
                      v254 = [[NSArray alloc] initWithObjects:{v591, 0}];
                    }

                    v541 = [v593 reportProcessesWithName];
                    if (v541)
                    {
                      v255 = objc_alloc_init(NSMutableArray);
                      *v670 = _NSConcreteStackBlock;
                      *&v670[8] = 3221225472;
                      *&v670[16] = sub_10004E3E4;
                      v671 = &unk_100114F08;
                      v672 = v541;
                      v582 = v255;
                      v673 = v582;
                      [v586 enumerateTasks:v670];
                    }

                    else
                    {
                      v582 = 0;
                    }

                    v646 = 0u;
                    v645 = 0u;
                    v644 = 0u;
                    v643 = 0u;
                    v561 = v254;
                    alloc = [v561 countByEnumeratingWithState:&v643 objects:v669 count:16];
                    if (alloc)
                    {
                      v567 = *v644;
                      do
                      {
                        for (n = 0; n != alloc; n = (n + 1))
                        {
                          if (*v644 != v567)
                          {
                            objc_enumerationMutation(v561);
                          }

                          v596 = *(*(&v643 + 1) + 8 * n);
                          v576 = [v596 intervals];
                          v574 = [v596 incompleteIntervalStarts];
                          v256 = [v576 count];
                          if ([v574 count] + v256)
                          {
                            v642 = 0u;
                            v641 = 0u;
                            v640 = 0u;
                            v639 = 0u;
                            v578 = v576;
                            v275 = [v578 countByEnumeratingWithState:&v639 objects:v660 count:16];
                            if (v275)
                            {
                              v276 = *v640;
                              do
                              {
                                for (ii = 0; ii != v275; ii = ii + 1)
                                {
                                  if (*v640 != v276)
                                  {
                                    objc_enumerationMutation(v578);
                                  }

                                  v278 = *(*(&v639 + 1) + 8 * ii);
                                  if ((v598 & 1) == 0)
                                  {
                                    v279 = [*(*(&v639 + 1) + 8 * ii) start];
                                    v280 = [v279 machContTimeNs];
                                    v281 = [v278 end];
                                    LOBYTE(v280) = v233 + v280 > [v281 machContTimeNs];

                                    if (v280)
                                    {
                                      continue;
                                    }
                                  }

                                  v282 = [v278 start];
                                  v283 = [v282 threadID];
                                  v284 = [v278 end];
                                  v285 = [v284 threadID];
                                  v286 = [v278 start];
                                  v287 = [v286 machContTimeNs];
                                  v288 = [v278 end];
                                  sub_100048930(v580, v589, v586, v600, v591, v593, v596, v582, v584, v283, v285, v287, [v288 machContTimeNs]);
                                }

                                v275 = [v578 countByEnumeratingWithState:&v639 objects:v660 count:16];
                              }

                              while (v275);
                            }

                            v638 = 0u;
                            v637 = 0u;
                            v636 = 0u;
                            v635 = 0u;
                            v289 = v574;
                            v290 = [v289 countByEnumeratingWithState:&v635 objects:v659 count:16];
                            if (v290)
                            {
                              v291 = *v636;
                              do
                              {
                                for (jj = 0; jj != v290; jj = jj + 1)
                                {
                                  if (*v636 != v291)
                                  {
                                    objc_enumerationMutation(v289);
                                  }

                                  v293 = *(*(&v635 + 1) + 8 * jj);
                                  if ((v598 & 1) == 0)
                                  {
                                    v294 = [*(*(&v635 + 1) + 8 * jj) machContTimeNs];
                                    v295 = [v600 eventEnd];
                                    LOBYTE(v294) = v233 + v294 > [v295 machContTimeNs];

                                    if (v294)
                                    {
                                      continue;
                                    }
                                  }

                                  v296 = [v293 threadID];
                                  v297 = [v293 machContTimeNs];
                                  v298 = [v600 eventEnd];
                                  sub_100048930(v580, v589, v586, v600, v591, v593, v596, v582, v584, v296, 0, v297, [v298 machContTimeNs]);
                                }

                                v290 = [v289 countByEnumeratingWithState:&v635 objects:v659 count:16];
                              }

                              while (v290);
                            }
                          }

                          else
                          {
                            if (byte_100127EC8 == 1)
                            {
                              v257 = __error();
                              v258 = *v257;
                              v260 = sub_10003E080(v257, v259);
                              if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
                              {
                                v302 = [v600 workflow];
                                v303 = [v302 name];
                                v304 = [v596 signpost];
                                v305 = [v304 name];
                                v306 = [v593 name];
                                v307 = [v596 signpost];
                                v308 = [v307 name];
                                *v661 = 138413058;
                                v662 = v303;
                                v663 = 2112;
                                v664 = v305;
                                v665 = 2112;
                                v666 = v306;
                                v667 = 2112;
                                v668 = v308;
                                _os_log_error_impl(&_mh_execute_header, v260, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to %@, but no intervals to report", v661, 0x2Au);
                              }

                              *__error() = v258;
                            }

                            if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                            {
                              v262 = *__error();
                              v263 = [v600 workflow];
                              v264 = [v263 name];
                              v265 = [v596 signpost];
                              v266 = [v265 name];
                              v267 = [v593 name];
                              v268 = [v596 signpost];
                              v269 = [v268 name];
                              v270 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to %@, but no intervals to report", v264, v266, v267, v269);

                              if (v270)
                              {
                                v273 = CFStringGetCStringPtr(v270, 0x8000100u);
                                if (v273)
                                {
                                  v274 = 0;
                                }

                                else
                                {
                                  v273 = malloc_type_calloc(0x400uLL, 1uLL, 0xAEC52EFCuLL);
                                  CFStringGetCString(v270, v273, 1024, 0x8000100u);
                                  v274 = v273;
                                }

                                if (qword_100127ED0)
                                {
                                  v301 = qword_100127ED0;
                                }

                                else
                                {
                                  v301 = __stderrp;
                                }

                                fprintf(v301, "%s\n", v273);
                                if (v274)
                                {
                                  free(v274);
                                }

                                CFRelease(v270);
                              }

                              else
                              {
                                v299 = sub_10003E080(v271, v272);
                                if (os_log_type_enabled(v299, OS_LOG_TYPE_FAULT))
                                {
                                  v309 = [v600 workflow];
                                  v310 = [v309 name];
                                  v311 = [v596 signpost];
                                  v312 = [v311 name];
                                  v313 = [v593 name];
                                  v314 = [v596 signpost];
                                  v315 = [v314 name];
                                  *v661 = 138413058;
                                  v662 = v310;
                                  v663 = 2112;
                                  v664 = v312;
                                  v665 = 2112;
                                  v666 = v313;
                                  v667 = 2112;
                                  v668 = v315;
                                  _os_log_fault_impl(&_mh_execute_header, v299, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to %@, but no intervals to report", v661, 0x2Au);
                                }

                                if (qword_100127ED0)
                                {
                                  v300 = qword_100127ED0;
                                }

                                else
                                {
                                  v300 = __stderrp;
                                }

                                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v300);
                              }

                              *__error() = v262;
                            }
                          }
                        }

                        alloc = [v561 countByEnumeratingWithState:&v643 objects:v669 count:16];
                      }

                      while (alloc);
                    }
                  }

                  v230 = 1;
                  goto LABEL_430;
                }
              }

              if (v233 > 0.0)
              {
                v238 = 1;
              }

              else
              {
                v238 = v598;
              }

              if (v238 == 1)
              {
                goto LABEL_349;
              }

LABEL_430:

              v553 = v553 + 1;
            }

            while (v553 != v543);
            v344 = [v549 countByEnumeratingWithState:&v647 objects:buf count:16];
            v543 = v344;
            if (!v344)
            {
LABEL_458:

              if (v230)
              {
                v345 = [v591 signpost];
                v346 = [v345 name];
                v347 = [v540 containsObject:v346];

                if ((v347 & 1) == 0)
                {
                  v348 = [v591 signpost];
                  v349 = [v348 name];
                  [v540 addObject:v349];
                }
              }

              v350 = objc_alloc_init(NSMutableDictionary);
              v351 = v652;
              if (v652 >= 2)
              {
                v352 = [NSNumber numberWithUnsignedLongLong:?];
                [v350 setObject:v352 forKeyedSubscript:@"num"];

                v351 = v652;
              }

              if (v351 != v655)
              {
                v353 = [NSNumber numberWithUnsignedLongLong:?];
                [v350 setObject:v353 forKeyedSubscript:@"numIncomplete"];
              }

              v354 = *(&v655 + 1);
              if (*(&v655 + 1))
              {
                v355 = [NSNumber numberWithDouble:*(&v655 + 1) / 1000000000.0];
                [v350 setObject:v355 forKeyedSubscript:@"unionS"];

                v354 = *(&v655 + 1);
              }

              if (v354 != v656)
              {
                v356 = [NSNumber numberWithDouble:v656 / 1000000000.0];
                [v350 setObject:v356 forKeyedSubscript:@"sumS"];

                v354 = *(&v655 + 1);
              }

              if (v354 != *(&v656 + 1))
              {
                v357 = [NSNumber numberWithDouble:*(&v656 + 1) / 1000000000.0];
                [v350 setObject:v357 forKeyedSubscript:@"maxS"];
              }

              v358 = [v591 environment];
              v606[0] = _NSConcreteStackBlock;
              v606[1] = 3221225472;
              v606[2] = sub_1000464B4;
              v606[3] = &unk_100114E98;
              v359 = v350;
              v607 = v359;
              v608 = v539;
              v609 = v591;
              [v358 enumerateKeysAndObjectsUsingBlock:v606];

              if ([v359 count])
              {
                v360 = [v591 individuationIdentifier];
                [v591 signpost];
                if (v360)
                  v532 = {;
                  v530 = [v532 name];
                  v531 = [v591 individuationIdentifier];
                  v527 = [NSString stringWithFormat:@"%@-%@", v530, v531];
                }

                else
                  v529 = {;
                  v528 = [v529 name];
                }

                v361 = WRSanitizeForCA();
                v362 = v528;
                v363 = v529;
                if (v360)
                {

                  v362 = v530;
                  v363 = v532;
                }

                [v542 setObject:v359 forKeyedSubscript:v361];
              }

              break;
            }
          }
        }

        v221 = v533;
        v223 = v538 + 1;
      }

      while ((v538 + 1) != v534);
      v364 = [v533 countByEnumeratingWithState:&v610 objects:v658 count:16];
      v222 = v364;
    }

    while (v364);
  }

  if (![v587 count])
  {
    if (byte_100127EC8 == 1)
    {
      v368 = __error();
      v369 = *v368;
      v371 = sub_10003E080(v368, v370);
      if (os_log_type_enabled(v371, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v675 = v539;
        _os_log_impl(&_mh_execute_header, v371, OS_LOG_TYPE_DEFAULT, "WR: %@: no spindump reports to generate", buf, 0xCu);
      }

      *__error() = v369;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 2)
    {
      goto LABEL_587;
    }

    v372 = *__error();
    v373 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: no spindump reports to generate", v539);
    v375 = v373;
    if (v373)
    {
      v376 = CFStringGetCStringPtr(v373, 0x8000100u);
      if (v376)
      {
        v377 = 0;
      }

      else
      {
        v376 = malloc_type_calloc(0x400uLL, 1uLL, 0xBE258729uLL);
        CFStringGetCString(v375, v376, 1024, 0x8000100u);
        v377 = v376;
      }

      if (qword_100127ED0)
      {
        v413 = qword_100127ED0;
      }

      else
      {
        v413 = __stderrp;
      }

      fprintf(v413, "%s\n", v376);
      if (v377)
      {
        free(v377);
      }

      goto LABEL_562;
    }

    v409 = sub_10003E080(0, v374);
    if (os_log_type_enabled(v409, OS_LOG_TYPE_FAULT))
    {
      sub_1000A63AC();
    }

    if (qword_100127ED0)
    {
      v410 = qword_100127ED0;
    }

    else
    {
      v410 = __stderrp;
    }

LABEL_547:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v410);
LABEL_563:
    *__error() = v372;
    goto LABEL_587;
  }

  v365 = v627[5];
  if (!v365)
  {
    v378 = __error();
    v379 = *v378;
    v381 = sub_10003E080(v378, v380);
    if (os_log_type_enabled(v381, OS_LOG_TYPE_FAULT))
    {
      sub_1000A632C(v669, [v587 count], v381);
    }

    *__error() = v379;
    if (byte_100127EC9 != 1 || dword_100127558 > 4)
    {
      goto LABEL_587;
    }

    v372 = *__error();
    v382 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: have %lu reports, but no sampleStore", [v587 count]);
    v375 = v382;
    if (v382)
    {
      v384 = CFStringGetCStringPtr(v382, 0x8000100u);
      if (v384)
      {
        v385 = 0;
      }

      else
      {
        v384 = malloc_type_calloc(0x400uLL, 1uLL, 0x4CF62461uLL);
        CFStringGetCString(v375, v384, 1024, 0x8000100u);
        v385 = v384;
      }

      if (qword_100127ED0)
      {
        v416 = qword_100127ED0;
      }

      else
      {
        v416 = __stderrp;
      }

      fprintf(v416, "%s\n", v384);
      if (v385)
      {
        free(v385);
      }

LABEL_562:
      CFRelease(v375);
      goto LABEL_563;
    }

    v414 = sub_10003E080(0, v383);
    if (os_log_type_enabled(v414, OS_LOG_TYPE_FAULT))
    {
      sub_1000A636C(v660, [v587 count], v414);
    }

    if (qword_100127ED0)
    {
      v410 = qword_100127ED0;
    }

    else
    {
      v410 = __stderrp;
    }

    goto LABEL_547;
  }

  v366 = [v365 startTime];
  if (v366)
  {
    v367 = v366;

    goto LABEL_505;
  }

  v367 = [v627[5] endTime];

  if (v367)
  {
LABEL_505:
    [v367 machContTimeSeconds];
    if (v386 == 0.0)
    {
      goto LABEL_506;
    }

    if (byte_100127EC8 == 1)
    {
      v398 = __error();
      v399 = *v398;
      v401 = sub_10003E080(v398, v400);
      if (os_log_type_enabled(v401, OS_LOG_TYPE_DEFAULT))
      {
        v402 = [v587 count];
        *buf = 138412546;
        v675 = v539;
        v676 = 2048;
        v677 = v402;
        _os_log_impl(&_mh_execute_header, v401, OS_LOG_TYPE_DEFAULT, "WR: %@: generating %lu spindump reports", buf, 0x16u);
      }

      *__error() = v399;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v403 = *__error();
      v404 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: generating %lu spindump reports", v539, [v587 count]);
      v406 = v404;
      if (v404)
      {
        v407 = CFStringGetCStringPtr(v404, 0x8000100u);
        if (v407)
        {
          v408 = 0;
        }

        else
        {
          v407 = malloc_type_calloc(0x400uLL, 1uLL, 0xDA88106FuLL);
          CFStringGetCString(v406, v407, 1024, 0x8000100u);
          v408 = v407;
        }

        if (qword_100127ED0)
        {
          v419 = qword_100127ED0;
        }

        else
        {
          v419 = __stderrp;
        }

        fprintf(v419, "%s\n", v407);
        if (v408)
        {
          free(v408);
        }

        CFRelease(v406);
      }

      else
      {
        v417 = sub_10003E080(0, v405);
        if (os_log_type_enabled(v417, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6248(v539, v669, [v587 count], v417);
        }

        if (qword_100127ED0)
        {
          v418 = qword_100127ED0;
        }

        else
        {
          v418 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v418);
      }

      *__error() = v403;
    }

    [v627[5] setWrWorkflowName:v539];
    v420 = [v601 error];
    [v627[5] setWrError:v420];

    v604 = 0u;
    v605 = 0u;
    v602 = 0u;
    v603 = 0u;
    v421 = v587;
    v422 = [v421 countByEnumeratingWithState:&v602 objects:v651 count:16];
    if (v422)
    {
      v423 = *v603;
      do
      {
        for (kk = 0; kk != v422; kk = kk + 1)
        {
          if (*v603 != v423)
          {
            objc_enumerationMutation(v421);
          }

          sub_100046878(v627[5], *(*(&v602 + 1) + 8 * kk), v569, v558);
        }

        v422 = [v421 countByEnumeratingWithState:&v602 objects:v651 count:16];
      }

      while (v422);
    }
  }

  else
  {
LABEL_506:
    if (byte_100127EC8 == 1)
    {
      v387 = __error();
      v388 = *v387;
      v390 = sub_10003E080(v387, v389);
      if (os_log_type_enabled(v390, OS_LOG_TYPE_ERROR))
      {
        [v367 debugDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000A6294();
      }

      *__error() = v388;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v391 = *__error();
      v392 = [v367 debugDescription];
      v393 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Unable to compare timesamps with tailspin data (%@)", v539, v392);

      if (v393)
      {
        v396 = CFStringGetCStringPtr(v393, 0x8000100u);
        if (v396)
        {
          v397 = 0;
        }

        else
        {
          v396 = malloc_type_calloc(0x400uLL, 1uLL, 0x8997BC18uLL);
          CFStringGetCString(v393, v396, 1024, 0x8000100u);
          v397 = v396;
        }

        if (qword_100127ED0)
        {
          v415 = qword_100127ED0;
        }

        else
        {
          v415 = __stderrp;
        }

        fprintf(v415, "%s\n", v396);
        if (v397)
        {
          free(v397);
        }

        CFRelease(v393);
      }

      else
      {
        v411 = sub_10003E080(v394, v395);
        if (os_log_type_enabled(v411, OS_LOG_TYPE_FAULT))
        {
          [v367 debugDescription];
          objc_claimAutoreleasedReturnValue();
          sub_1000A62E8();
        }

        if (qword_100127ED0)
        {
          v412 = qword_100127ED0;
        }

        else
        {
          v412 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v412);
      }

      *__error() = v391;
    }
  }

LABEL_587:
  if (&_DRShouldGatherLog)
  {
    sub_1000484AC(v542);
    v425 = [NSMutableDictionary alloc];
    v426 = [NSNumber numberWithDouble:v61 * 1000.0];
    v427 = [v569 UUIDString];
    v428 = [v425 initWithObjectsAndKeys:{v426, @"durationms", @"239", @"bugtype", v539, @"workflow", v540, @"exceededThresholds", v427, @"IncidentUUID", v542, @"stats", 0}];

    v429 = [v601 error];

    if (v429)
    {
      v430 = [v601 error];
      v431 = [v430 domain];
      v432 = [v431 isEqualToString:WRErrorDomain];

      if (v432)
      {
        v433 = [v601 error];
        v434 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v433 code]);
        [v428 setObject:v434 forKeyedSubscript:@"error"];
      }

      else
      {
        [v428 setObject:&off_10011FFA8 forKeyedSubscript:@"error"];
      }
    }

    v435 = v539;
    v436 = DRShouldGatherLog();
    v437 = 0;
    v438 = v437;
    if (v436)
    {
      if (byte_100127EC8 == 1)
      {
        v439 = __error();
        v440 = *v439;
        v442 = sub_10003E080(v439, v441);
        if (os_log_type_enabled(v442, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A6578();
        }

        *__error() = v440;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v443 = *__error();
        v444 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: submitting tailspin to Diagnostic Pipeline", v435);
        v446 = v444;
        if (v444)
        {
          v447 = CFStringGetCStringPtr(v444, 0x8000100u);
          if (v447)
          {
            v448 = 0;
          }

          else
          {
            v447 = malloc_type_calloc(0x400uLL, 1uLL, 0x8DAE0CC2uLL);
            CFStringGetCString(v446, v447, 1024, 0x8000100u);
            v448 = v447;
          }

          if (qword_100127ED0)
          {
            v473 = qword_100127ED0;
          }

          else
          {
            v473 = __stderrp;
          }

          fprintf(v473, "%s\n", v447);
          if (v448)
          {
            free(v448);
          }

          CFRelease(v446);
        }

        else
        {
          v471 = sub_10003E080(0, v445);
          if (os_log_type_enabled(v471, OS_LOG_TYPE_FAULT))
          {
            sub_1000A65EC();
          }

          if (qword_100127ED0)
          {
            v472 = qword_100127ED0;
          }

          else
          {
            v472 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v472);
        }

        *__error() = v443;
      }

      v474 = [NSString stringWithUTF8String:*v565];
      v475 = DRSubmitLog();
      v464 = v438;

      if (v475)
      {
        if (byte_100127EC8)
        {
          v476 = __error();
          v477 = *v476;
          v479 = sub_10003E080(v476, v478);
          if (os_log_type_enabled(v479, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v675 = v435;
            _os_log_impl(&_mh_execute_header, v479, OS_LOG_TYPE_DEFAULT, "WR: %@: submitted tailspin to Diagnostic Pipeline", buf, 0xCu);
          }

          *__error() = v477;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 2)
        {
          v480 = *__error();
          v481 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: submitted tailspin to Diagnostic Pipeline", v435);
          v483 = v481;
          if (v481)
          {
            v484 = CFStringGetCStringPtr(v481, 0x8000100u);
            if (v484)
            {
              v485 = 0;
            }

            else
            {
              v484 = malloc_type_calloc(0x400uLL, 1uLL, 0x620ACF2EuLL);
              CFStringGetCString(v483, v484, 1024, 0x8000100u);
              v485 = v484;
            }

            if (qword_100127ED0)
            {
              v506 = qword_100127ED0;
            }

            else
            {
              v506 = __stderrp;
            }

            fprintf(v506, "%s\n", v484);
            if (v485)
            {
              free(v485);
            }

            CFRelease(v483);
          }

          else
          {
            v499 = sub_10003E080(0, v482);
            if (os_log_type_enabled(v499, OS_LOG_TYPE_FAULT))
            {
              sub_1000A66DC();
            }

            if (qword_100127ED0)
            {
              v500 = qword_100127ED0;
            }

            else
            {
              v500 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v500);
          }

          *__error() = v480;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v486 = __error();
          v487 = *v486;
          v489 = sub_10003E080(v486, v488);
          if (os_log_type_enabled(v489, OS_LOG_TYPE_ERROR))
          {
            [v464 description];
            objc_claimAutoreleasedReturnValue();
            sub_1000A6654();
          }

          *__error() = v487;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v490 = *__error();
          v491 = [v464 description];
          v492 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: error trying to provide tailspin to Diagnostic Pipeline: %@", v435, v491);

          if (v492)
          {
            v495 = CFStringGetCStringPtr(v492, 0x8000100u);
            if (v495)
            {
              v496 = 0;
            }

            else
            {
              v495 = malloc_type_calloc(0x400uLL, 1uLL, 0xEA7BB444uLL);
              CFStringGetCString(v492, v495, 1024, 0x8000100u);
              v496 = v495;
            }

            if (qword_100127ED0)
            {
              v507 = qword_100127ED0;
            }

            else
            {
              v507 = __stderrp;
            }

            fprintf(v507, "%s\n", v495);
            if (v496)
            {
              free(v496);
            }

            CFRelease(v492);
          }

          else
          {
            v501 = sub_10003E080(v493, v494);
            if (os_log_type_enabled(v501, OS_LOG_TYPE_FAULT))
            {
              [v464 description];
              objc_claimAutoreleasedReturnValue();
              sub_1000A6698();
            }

            if (qword_100127ED0)
            {
              v502 = qword_100127ED0;
            }

            else
            {
              v502 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v502);
          }

          *__error() = v490;
        }

        v508 = [NSPropertyListSerialization dataWithPropertyList:v428 format:200 options:0 error:0];
        v510 = sub_10003E080(v508, v509);
        if (os_signpost_enabled(v510))
        {
          v511 = [v464 localizedDescription];
          v512 = [v508 length];
          *buf = 138543874;
          v675 = v435;
          v676 = 2114;
          v677 = v511;
          v678 = 2050;
          v679 = v512;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v510, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DPFailure", "Workflow:%{signpost.telemetry:string1,public}@ error:%{signpost.telemetry:string2,public}@ contextDictionarySize:%{signpost.telemetry:number1,public}lu enableTelemetry=YES ", buf, 0x20u);
        }
      }
    }

    else if (v437)
    {
      if (byte_100127EC8)
      {
        v449 = __error();
        v450 = *v449;
        v452 = sub_10003E080(v449, v451);
        if (os_log_type_enabled(v452, OS_LOG_TYPE_ERROR))
        {
          [v438 description];
          objc_claimAutoreleasedReturnValue();
          sub_1000A6414();
        }

        *__error() = v450;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v453 = *__error();
        v454 = [v438 description];
        v455 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: error in DRShouldGatherLog call: %@", v435, v454);

        if (v455)
        {
          v458 = CFStringGetCStringPtr(v455, 0x8000100u);
          if (v458)
          {
            v459 = 0;
          }

          else
          {
            v458 = malloc_type_calloc(0x400uLL, 1uLL, 0xB7AF1945uLL);
            CFStringGetCString(v455, v458, 1024, 0x8000100u);
            v459 = v458;
          }

          if (qword_100127ED0)
          {
            v503 = qword_100127ED0;
          }

          else
          {
            v503 = __stderrp;
          }

          fprintf(v503, "%s\n", v458);
          if (v459)
          {
            free(v459);
          }

          CFRelease(v455);
        }

        else
        {
          v497 = sub_10003E080(v456, v457);
          if (os_log_type_enabled(v497, OS_LOG_TYPE_FAULT))
          {
            [v438 description];
            objc_claimAutoreleasedReturnValue();
            sub_1000A6458();
          }

          if (qword_100127ED0)
          {
            v498 = qword_100127ED0;
          }

          else
          {
            v498 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v498);
        }

        *__error() = v453;
      }

      v464 = v438;
    }

    else
    {
      if (byte_100127EC8)
      {
        v460 = __error();
        v461 = *v460;
        v463 = sub_10003E080(v460, v462);
        if (os_log_type_enabled(v463, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A649C();
        }

        *__error() = v461;
      }

      v464 = 0;
      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v465 = *__error();
        v466 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: DRShouldGatherLog return false, not submitting tailspin", v435);
        v468 = v466;
        if (v466)
        {
          v469 = CFStringGetCStringPtr(v466, 0x8000100u);
          if (v469)
          {
            v470 = 0;
          }

          else
          {
            v469 = malloc_type_calloc(0x400uLL, 1uLL, 0x8EFD3034uLL);
            CFStringGetCString(v468, v469, 1024, 0x8000100u);
            v470 = v469;
          }

          if (qword_100127ED0)
          {
            v513 = qword_100127ED0;
          }

          else
          {
            v513 = __stderrp;
          }

          fprintf(v513, "%s\n", v469);
          if (v470)
          {
            free(v470);
          }

          CFRelease(v468);
        }

        else
        {
          v504 = sub_10003E080(0, v467);
          if (os_log_type_enabled(v504, OS_LOG_TYPE_FAULT))
          {
            sub_1000A6510();
          }

          if (qword_100127ED0)
          {
            v505 = qword_100127ED0;
          }

          else
          {
            v505 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v505);
        }

        v464 = 0;
        *__error() = v465;
      }
    }
  }

  free(*v565);

  _Block_object_dispose(v624, 8);
  _Block_object_dispose(&v626, 8);

  _Block_object_dispose(v632, 8);
LABEL_191:

LABEL_192:
  v59 = v559;
LABEL_193:

LABEL_194:
  v4 = v570;
LABEL_195:

LABEL_196:
}

void sub_100045B68(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3D8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  _Block_object_dispose(&STACK[0x438], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100045D80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100045D98(void *a1)
{
  v2 = *(a1[5] + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = *(*(a1[6] + 8) + 40);
  }

  else
  {
    *(v2 + 24) = 1;
    v4 = +[NSMutableArray array];
    v5 = [[SASampleStore alloc] initForLiveSampling];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[7];
    v9 = *(*(a1[6] + 8) + 40);
    v68 = 0;
    v61 = [v9 parseKTraceFile:v8 warningsOut:v4 errorOut:&v68];
    v62 = v68;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
    v11 = &byte_100127EC9;
    v12 = &dword_100127558;
    if (v10)
    {
      v13 = v10;
      v14 = *v65;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v65 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v64 + 1) + 8 * i);
          if (byte_100127EC8 == 1)
          {
            v17 = __error();
            v18 = *v17;
            v20 = sub_10003E080(v17, v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = a1[4];
              v22 = a1[7];
              *buf = 138412802;
              v70 = v21;
              v71 = 2080;
              v72 = v22;
              v73 = 2112;
              v74 = v16;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "WR: %@: WARNING trying to create sample store from %s: %@\n", buf, 0x20u);
            }

            *__error() = v18;
          }

          if (*v11 == 1 && *v12 <= 1)
          {
            v24 = *__error();
            v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: WARNING trying to create sample store from %s: %@\n", a1[4], a1[7], v16);
            if (v25)
            {
              v27 = v25;
              v28 = v11;
              v29 = v12;
              CStringPtr = CFStringGetCStringPtr(v25, 0x8000100u);
              if (CStringPtr)
              {
                v31 = CStringPtr;
                v32 = 0;
              }

              else
              {
                v31 = malloc_type_calloc(0x400uLL, 1uLL, 0x66E09E2uLL);
                CFStringGetCString(v27, v31, 1024, 0x8000100u);
                v32 = v31;
              }

              if (qword_100127ED0)
              {
                v35 = qword_100127ED0;
              }

              else
              {
                v35 = __stderrp;
              }

              fprintf(v35, "%s\n", v31);
              if (v32)
              {
                free(v32);
              }

              CFRelease(v27);
              v12 = v29;
              v11 = v28;
            }

            else
            {
              v33 = sub_10003E080(0, v26);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
              {
                v36 = a1[4];
                v37 = a1[7];
                *buf = 138412802;
                v70 = v36;
                v71 = 2080;
                v72 = v37;
                v73 = 2112;
                v74 = v16;
                _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: WARNING trying to create sample store from %s: %@\n", buf, 0x20u);
              }

              if (qword_100127ED0)
              {
                v34 = qword_100127ED0;
              }

              else
              {
                v34 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v34);
            }

            *__error() = v24;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
      }

      while (v13);
    }

    if ((v61 & 1) == 0)
    {
      if (byte_100127EC8 == 1)
      {
        v38 = __error();
        v39 = *v38;
        v41 = sub_10003E080(v38, v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v56 = a1[4];
          v57 = a1[7];
          v58 = @"Unknown error";
          if (v62)
          {
            v58 = v62;
          }

          *buf = 138412802;
          v70 = v56;
          v71 = 2080;
          v72 = v57;
          v73 = 2112;
          v74 = v58;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "WR: %@: Not generating any spindump reports, unable to create sample store for %s: %@\n", buf, 0x20u);
        }

        *__error() = v39;
      }

      if (*v11 == 1 && *v12 <= 3)
      {
        v42 = *__error();
        if (v62)
        {
          v43 = v62;
        }

        else
        {
          v43 = @"Unknown error";
        }

        v44 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Not generating any spindump reports, unable to create sample store for %s: %@\n", a1[4], a1[7], v43);
        if (v44)
        {
          v46 = v44;
          v47 = CFStringGetCStringPtr(v44, 0x8000100u);
          if (v47)
          {
            v48 = v47;
            v49 = 0;
          }

          else
          {
            v48 = malloc_type_calloc(0x400uLL, 1uLL, 0x59986AD3uLL);
            CFStringGetCString(v46, v48, 1024, 0x8000100u);
            v49 = v48;
          }

          if (qword_100127ED0)
          {
            v52 = qword_100127ED0;
          }

          else
          {
            v52 = __stderrp;
          }

          fprintf(v52, "%s\n", v48);
          if (v49)
          {
            free(v49);
          }

          CFRelease(v46);
        }

        else
        {
          v50 = sub_10003E080(0, v45);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            v59 = a1[4];
            v60 = a1[7];
            *buf = 138412802;
            v70 = v59;
            v71 = 2080;
            v72 = v60;
            v73 = 2112;
            v74 = v43;
            _os_log_fault_impl(&_mh_execute_header, v50, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: Not generating any spindump reports, unable to create sample store for %s: %@\n", buf, 0x20u);
          }

          if (qword_100127ED0)
          {
            v51 = qword_100127ED0;
          }

          else
          {
            v51 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v51);
        }

        *__error() = v42;
      }

      v53 = *(a1[6] + 8);
      v54 = *(v53 + 40);
      *(v53 + 40) = 0;
    }

    v3 = *(*(a1[6] + 8) + 40);
  }

  return v3;
}

id sub_100046438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(*(a1 + 32) + 8) + 40);
  if (!v9)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (!v10)
    {
      sub_1000A6A94(0, a2, a3, a4, a5, a6, a7, a8);
    }

    v11 = [v10 tidToPidDict];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v9 = *(*(*(a1 + 32) + 8) + 40);
  }

  return v9;
}

void sub_1000464B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [NSString alloc];
    v8 = WRSanitizeForCA();
    v9 = [v7 initWithFormat:@"env_%@", v8];

    v10 = [*(a1 + 32) objectForKeyedSubscript:v9];

    if (v10)
    {
      if (byte_100127EC8 == 1)
      {
        v11 = __error();
        v12 = *v11;
        v14 = sub_10003E080(v11, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 40);
          v30 = [*(a1 + 48) signpost];
          v31 = [v30 name];
          *buf = 138413058;
          v36 = v29;
          v37 = 2112;
          v38 = v31;
          v39 = 2112;
          v40 = v5;
          v41 = 2112;
          v42 = v6;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "WR: %@: %@: %@ -> %@, conflicts with existing entry", buf, 0x2Au);
        }

        *__error() = v12;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v16 = *__error();
        v17 = *(a1 + 40);
        v18 = [*(a1 + 48) signpost];
        v19 = [v18 name];
        v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: %@ -> %@, conflicts with existing entry", v17, v19, v5, v6);

        if (v20)
        {
          CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
          if (CStringPtr)
          {
            v24 = CStringPtr;
            v25 = 0;
          }

          else
          {
            v24 = malloc_type_calloc(0x400uLL, 1uLL, 0x37D0A3C7uLL);
            CFStringGetCString(v20, v24, 1024, 0x8000100u);
            v25 = v24;
          }

          if (qword_100127ED0)
          {
            v28 = qword_100127ED0;
          }

          else
          {
            v28 = __stderrp;
          }

          fprintf(v28, "%s\n", v24);
          if (v25)
          {
            free(v25);
          }

          CFRelease(v20);
        }

        else
        {
          v26 = sub_10003E080(v21, v22);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            v32 = *(a1 + 40);
            v33 = [*(a1 + 48) signpost];
            v34 = [v33 name];
            *buf = 138413058;
            v36 = v32;
            v37 = 2112;
            v38 = v34;
            v39 = 2112;
            v40 = v5;
            v41 = 2112;
            v42 = v6;
            _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: %@ -> %@, conflicts with existing entry", buf, 0x2Au);
          }

          if (qword_100127ED0)
          {
            v27 = qword_100127ED0;
          }

          else
          {
            v27 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v27);
        }

        *__error() = v16;
      }
    }

    else
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v9];
    }
  }
}

void sub_100046878(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v278 = a3;
  v9 = a4;
  v10 = [v8 reportReason];
  v276 = [v10 workflowTracker];
  v277 = [v276 workflow];
  v283 = [v277 name];
  v11 = [v10 signpostTracker];
  v12 = [v8 reportedSignpostTracker];
  v282 = [v8 timeRange];
  v13 = v8;
  v14 = [v8 task];
  v15 = v7;
  [v15 setWrWorkflowTimeoutDuration:0.0];
  [v15 setWrWorkflowDuration:0.0];
  [v15 setWrWorkflowDurationThreshold:0.0];
  [v15 setWrWorkflowDurationOmittingNetworkBoundIntervals:0.0];
  [v15 setWrWorkflowDurationOmittingNetworkBoundIntervalsThreshold:0.0];
  [v15 setWrSignpostName:0];
  [v15 setWrSignpostSubsystem:0];
  [v15 setWrSignpostCategory:0];
  [v15 setWrTriggeringSignpostName:0];
  [v15 setWrTriggeringSignpostSubsystem:0];
  [v15 setWrTriggeringSignpostCategory:0];
  [v15 setWrSignpostDurationUnion:0.0];
  [v15 setWrSignpostDurationUnionThreshold:0.0];
  [v15 setWrSignpostDurationSum:0.0];
  [v15 setWrSignpostDurationSumThreshold:0.0];
  [v15 setWrSignpostDurationSingle:0.0];
  [v15 setWrSignpostDurationSingleThreshold:0.0];
  [v15 setWrSignpostCount:0];
  [v15 setWrSignpostCountThreshold:0];

  v280 = v10;
  v281 = v11;
  v279 = v12;
  if (v12)
  {
    v16 = [v12 signpost];
    v17 = [v16 name];
    [v15 setWrSignpostName:v17];

    v18 = [v12 signpost];
    v19 = [v18 subsystem];
    [v15 setWrSignpostSubsystem:v19];

    v20 = [v12 signpost];
    v21 = [v20 category];
    [v15 setWrSignpostCategory:v21];

    if (v11)
    {
      v22 = v278;
      if (byte_100127EC8)
      {
        v23 = __error();
        v24 = *v23;
        v26 = sub_10003E080(v23, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v279 signpost];
          [v27 name];
          v28 = v273 = v9;
          v29 = [v11 signpost];
          [v29 name];
          v31 = v30 = v13;
          v32 = [v14 name];
          *buf = 138413314;
          v285 = v283;
          v286 = 2112;
          v287 = v28;
          v288 = 2112;
          v289 = v31;
          v290 = 2112;
          v291 = v32;
          v292 = 1024;
          v293 = [v14 pid];
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "WR: %@ generating report for %@ due to %@ for %@ [%d]", buf, 0x30u);

          v11 = v281;
          v13 = v30;
          v22 = v278;

          v9 = v273;
          v10 = v280;
        }

        *__error() = v24;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 1)
      {
        v274 = v9;
        v33 = v22;
        v34 = v13;
        v271 = *__error();
        v35 = [v279 signpost];
        v36 = [v35 name];
        v37 = v11;
        v38 = v36;
        v39 = [v37 signpost];
        v40 = [v39 name];
        v41 = [v14 name];
        v42 = v14;
        v43 = v41;
        v44 = v42;
        v45 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@ generating report for %@ due to %@ for %@ [%d]", v283, v38, v40, v41, [v42 pid]);

        if (v45)
        {
          CStringPtr = CFStringGetCStringPtr(v45, 0x8000100u);
          if (CStringPtr)
          {
            v49 = CStringPtr;
            v50 = 0;
          }

          else
          {
            v49 = malloc_type_calloc(0x400uLL, 1uLL, 0x343484D2uLL);
            CFStringGetCString(v45, v49, 1024, 0x8000100u);
            v50 = v49;
          }

          v14 = v44;
          if (qword_100127ED0)
          {
            v85 = qword_100127ED0;
          }

          else
          {
            v85 = __stderrp;
          }

          fprintf(v85, "%s\n", v49);
          v13 = v34;
          if (v50)
          {
            free(v50);
          }

          CFRelease(v45);
        }

        else
        {
          v81 = sub_10003E080(v46, v47);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
          {
            v270 = [v279 signpost];
            v267 = [v270 name];
            v268 = [v281 signpost];
            v163 = [v268 name];
            v164 = [v44 name];
            v165 = [v44 pid];
            *buf = 138413314;
            v285 = v283;
            v286 = 2112;
            v287 = v267;
            v288 = 2112;
            v289 = v163;
            v290 = 2112;
            v291 = v164;
            v292 = 1024;
            v293 = v165;
            _os_log_fault_impl(&_mh_execute_header, v81, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@ generating report for %@ due to %@ for %@ [%d]", buf, 0x30u);
          }

          if (qword_100127ED0)
          {
            v82 = qword_100127ED0;
          }

          else
          {
            v82 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v82);
          v14 = v44;
          v13 = v34;
        }

        v22 = v33;
        v9 = v274;
        v11 = v281;
        *__error() = v271;
        v10 = v280;
      }

      v86 = [v11 signpost];
      [v86 name];
      v88 = v87 = v11;
      [v15 setWrTriggeringSignpostName:v88];

      v89 = [v87 signpost];
      v90 = [v89 subsystem];
      [v15 setWrTriggeringSignpostSubsystem:v90];

      v91 = [v87 signpost];
      v92 = [v91 category];
      [v15 setWrTriggeringSignpostCategory:v92];
    }

    else
    {
      v22 = v278;
      if (byte_100127EC8)
      {
        v64 = __error();
        v65 = *v64;
        v67 = sub_10003E080(v64, v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          v68 = [v279 signpost];
          v69 = [v68 name];
          v70 = [v14 name];
          *buf = 138413058;
          v285 = v283;
          v286 = 2112;
          v287 = v69;
          v288 = 2112;
          v289 = v70;
          v290 = 1024;
          LODWORD(v291) = [v14 pid];
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "WR: %@ generating report for %@ due to overall workflow for %@ [%d]", buf, 0x26u);

          v10 = v280;
        }

        *__error() = v65;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 1)
      {
        v71 = *__error();
        v72 = [v279 signpost];
        v73 = [v72 name];
        v74 = [v14 name];
        v75 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@ generating report for %@ due to overall workflow for %@ [%d]", v283, v73, v74, [v14 pid]);

        if (v75)
        {
          v78 = CFStringGetCStringPtr(v75, 0x8000100u);
          if (v78)
          {
            v79 = v78;
            v80 = 0;
          }

          else
          {
            v79 = malloc_type_calloc(0x400uLL, 1uLL, 0x9957FABEuLL);
            CFStringGetCString(v75, v79, 1024, 0x8000100u);
            v80 = v79;
          }

          if (qword_100127ED0)
          {
            v100 = qword_100127ED0;
          }

          else
          {
            v100 = __stderrp;
          }

          fprintf(v100, "%s\n", v79);
          if (v80)
          {
            free(v80);
          }

          CFRelease(v75);
        }

        else
        {
          v98 = sub_10003E080(v76, v77);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
          {
            v166 = [v279 signpost];
            v167 = [v166 name];
            v168 = [v14 name];
            v169 = [v14 pid];
            *buf = 138413058;
            v285 = v283;
            v286 = 2112;
            v287 = v167;
            v288 = 2112;
            v289 = v168;
            v290 = 1024;
            LODWORD(v291) = v169;
            _os_log_fault_impl(&_mh_execute_header, v98, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@ generating report for %@ due to overall workflow for %@ [%d]", buf, 0x26u);
          }

          if (qword_100127ED0)
          {
            v99 = qword_100127ED0;
          }

          else
          {
            v99 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v99);
        }

        *__error() = v71;
        v10 = v280;
      }
    }

    if ([v10 signpostCount])
    {
      [v15 setWrSignpostCount:{objc_msgSend(v10, "signpostCount")}];
      v101 = [v10 diagnostic];
      [v15 setWrSignpostCountThreshold:{objc_msgSend(v101, "triggerThresholdCount")}];
    }

    [v10 signpostDurationUnion];
    v11 = v281;
    if (v102 > 0.0)
    {
      [v10 signpostDurationUnion];
      [v15 setWrSignpostDurationUnion:?];
      v103 = [v10 diagnostic];
      [v103 triggerThresholdDurationUnion];
      [v15 setWrSignpostDurationUnionThreshold:?];
    }

    [v10 signpostDurationSum];
    if (v104 > 0.0)
    {
      [v10 signpostDurationSum];
      [v15 setWrSignpostDurationSum:?];
      v105 = [v10 diagnostic];
      [v105 triggerThresholdDurationSum];
      [v15 setWrSignpostDurationSumThreshold:?];
    }

    [v10 signpostDurationSingle];
    if (v106 > 0.0)
    {
      [v10 signpostDurationSingle];
      [v15 setWrSignpostDurationSingle:?];
      v107 = [v10 diagnostic];
      [v107 triggerThresholdDurationSingle];
      [v15 setWrSignpostDurationSingleThreshold:?];
    }
  }

  else
  {
    v22 = v278;
    if (byte_100127EC8 == 1)
    {
      v51 = __error();
      v52 = *v51;
      v54 = sub_10003E080(v51, v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = [v14 name];
        *buf = 138412802;
        v285 = v283;
        v286 = 2112;
        v287 = v55;
        v288 = 1024;
        LODWORD(v289) = [v14 pid];
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "WR: %@ generating overall workflow report for %@ [%d]", buf, 0x1Cu);
      }

      *__error() = v52;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 1)
    {
      v56 = *__error();
      v57 = [v14 name];
      v58 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@ generating overall workflow report for %@ [%d]", v283, v57, [v14 pid]);

      if (v58)
      {
        v61 = CFStringGetCStringPtr(v58, 0x8000100u);
        if (v61)
        {
          v62 = v61;
          v63 = 0;
        }

        else
        {
          v62 = malloc_type_calloc(0x400uLL, 1uLL, 0x557858ABuLL);
          CFStringGetCString(v58, v62, 1024, 0x8000100u);
          v63 = v62;
        }

        if (qword_100127ED0)
        {
          v93 = qword_100127ED0;
        }

        else
        {
          v93 = __stderrp;
        }

        fprintf(v93, "%s\n", v62);
        if (v63)
        {
          free(v63);
        }

        CFRelease(v58);
        v10 = v280;
      }

      else
      {
        v83 = sub_10003E080(v59, v60);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6C98(v283, v14);
        }

        if (qword_100127ED0)
        {
          v84 = qword_100127ED0;
        }

        else
        {
          v84 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v84);
      }

      *__error() = v56;
    }

    [v10 workflowDuration];
    if (v94 > 0.0)
    {
      [v10 workflowDuration];
      [v15 setWrWorkflowDuration:?];
      v95 = [v10 diagnostic];
      [v95 triggerThresholdDurationSingle];
      [v15 setWrWorkflowDurationThreshold:?];
    }

    [v10 workflowDurationOmittingNetworkBoundIntervals];
    if (v96 > 0.0)
    {
      [v10 workflowDurationOmittingNetworkBoundIntervals];
      [v15 setWrWorkflowDurationOmittingNetworkBoundIntervals:?];
      v97 = [v10 diagnostic];
      [v97 triggerThresholdDurationSingle];
      [v15 setWrWorkflowDurationOmittingNetworkBoundIntervalsThreshold:?];
    }

    if ([v10 workflowEventTimedOut])
    {
      [v277 maximumEventDuration];
      [v15 setWrWorkflowTimeoutDuration:?];
    }
  }

  if (v11)
  {
    v108 = [v11 signpost];
    v109 = [v108 name];
    v110 = [NSString stringWithFormat:@"Workflow responsiveness delay with %@ (%@)", v283, v109];
    [v15 setReason:v110];
  }

  else
  {
    v108 = [NSString stringWithFormat:@"Workflow responsiveness delay with %@", v283];
    [v15 setReason:v108];
  }

  v111 = [v282 startTime];
  if ([v15 indexOfFirstSampleOnOrAfterTimestamp:v111] == 0x7FFFFFFFFFFFFFFFLL)
  {

    v112 = v280;
  }

  else
  {
    v113 = [v282 endTime];
    v114 = [v15 indexOfLastSampleOnOrBeforeTimestamp:v113];

    v112 = v280;
    if (v114 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v127 = [v13 task];
      [v15 setTargetProcess:v127];

      v128 = [v13 thread];

      if (v128 && ([v13 thread], v129 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setTargetThreadId:", objc_msgSend(v129, "threadId")), v129, v130 = objc_msgSend(v15, "targetDispatchQueueId"), objc_msgSend(v13, "dispatchQueue"), v131 = objc_claimAutoreleasedReturnValue(), v132 = objc_msgSend(v131, "identifier"), v131, v130 != v132))
      {
        if (([v14 pid] & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v194 = __error();
            v195 = *v194;
            v197 = sub_10003E080(v194, v196);
            if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6D54(v197, v198, v199, v200, v201, v202, v203, v204);
            }

            *__error() = v195;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v205 = *__error();
            v206 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to set target thread", "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier");
            if (v206)
            {
              v244 = v206;
              v245 = CFStringGetCStringPtr(v206, 0x8000100u);
              if (v245)
              {
                v246 = v245;
                v247 = 0;
              }

              else
              {
                v246 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CF4EA3EuLL);
                CFStringGetCString(v244, v246, 1024, 0x8000100u);
                v247 = v246;
              }

              if (qword_100127ED0)
              {
                v259 = qword_100127ED0;
              }

              else
              {
                v259 = __stderrp;
              }

              fprintf(v259, "%s\n", v246);
              if (v247)
              {
                free(v247);
              }

              CFRelease(v244);
            }

            else
            {
              v208 = sub_10003E080(0, v207);
              if (os_log_type_enabled(v208, OS_LOG_TYPE_FAULT))
              {
                sub_1000A6DCC(v208, v209, v210, v211, v212, v213, v214, v215);
              }

              if (qword_100127ED0)
              {
                v216 = qword_100127ED0;
              }

              else
              {
                v216 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v216);
            }

            *__error() = v205;
          }

          v264 = "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier";
          v258 = "%s: Unable to set target thread";
        }

        else
        {
          if (byte_100127EC8)
          {
            v174 = __error();
            v175 = *v174;
            v177 = sub_10003E080(v174, v176);
            if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6E44();
            }

            *__error() = v175;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v178 = *__error();
            v179 = sub_10003E020([v14 pid]);
            v180 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Unable to set target thread", v179, [v14 pid], "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier");
            if (v180)
            {
              v240 = v180;
              v241 = CFStringGetCStringPtr(v180, 0x8000100u);
              if (v241)
              {
                v242 = v241;
                v243 = 0;
              }

              else
              {
                v242 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CF4EA3EuLL);
                CFStringGetCString(v240, v242, 1024, 0x8000100u);
                v243 = v242;
              }

              if (qword_100127ED0)
              {
                v256 = qword_100127ED0;
              }

              else
              {
                v256 = __stderrp;
              }

              fprintf(v256, "%s\n", v242);
              if (v243)
              {
                free(v243);
              }

              CFRelease(v240);
            }

            else
            {
              v182 = sub_10003E080(0, v181);
              if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
              {
                sub_1000A6ED8();
              }

              if (qword_100127ED0)
              {
                v183 = qword_100127ED0;
              }

              else
              {
                v183 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v183);
            }

            *__error() = v178;
          }

          v257 = sub_10003E020([v14 pid]);
          v265 = [v14 pid];
          v266 = "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier";
          v264 = v257;
          v258 = "%s [%d]: %s: Unable to set target thread";
        }

        v260 = 219;
      }

      else
      {
        v133 = [v13 dispatchQueue];

        if (!v133 || ([v13 dispatchQueue], v134 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setTargetDispatchQueueId:", objc_msgSend(v134, "identifier")), v134, v135 = objc_msgSend(v15, "targetDispatchQueueId"), objc_msgSend(v13, "dispatchQueue"), v136 = objc_claimAutoreleasedReturnValue(), v137 = objc_msgSend(v136, "identifier"), v136, v135 == v137))
        {
          v272 = v14;
          v275 = v9;
          [v15 setEvent:@"Workflow Responsiveness Delay"];
          v115 = v281;
          if (v281)
          {
            v269 = [v281 signpost];
            v138 = [v269 subsystem];
            v139 = [v281 signpost];
            v140 = [v139 category];
            v141 = [v281 signpost];
            v142 = [v141 name];
            v143 = [v280 diagnostic];
            [v143 name];
            v145 = v144 = v13;
            v146 = [NSString stringWithFormat:@"%@, %@.%@.%@, %@", v283, v138, v140, v142, v145];
            [v15 setEventNote:v146];

            v13 = v144;
            v147 = v269;

            v22 = v278;
            v115 = v281;
          }

          else
          {
            v147 = [v280 diagnostic];
            v138 = [v147 name];
            v139 = [NSString stringWithFormat:@"%@, %@", v283, v138];
            [v15 setEventNote:v139];
          }

          [v15 setEventTimeRange:v282];
          v9 = v275;
          [v15 setCustomOutput:v275];
          v150 = [[SASamplePrinter alloc] initWithSampleStore:v15];
          v151 = [v150 options];
          [v151 setPrintHeavyStacks:1];

          v152 = [v150 options];
          [v152 setPrintSpinSignatureStack:1];

          v153 = [v150 options];
          [v153 setForceOneBasedTimeIndexes:1];

          [v150 setIncidentUUID:v22];
          v154 = [v282 startTime];
          v155 = [v282 endTime];
          [v150 filterToTimestampRangeStart:v154 end:v155];

          v156 = [v282 startTime];
          v157 = [v282 endTime];
          [v156 deltaSecondsTo:v157 timeDomainPriorityList:&off_1001200E0 timeDomainUsed:0];
          v159 = v158;

          v160 = [v282 startTime];
          [v160 wallTime];
          sub_1000694CC(v150, 0, 0, 14, 0, 0, v161, v159, 1, 0, 0, 0);

          v14 = v272;
          v112 = v280;
          goto LABEL_125;
        }

        if (([v14 pid] & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v217 = __error();
            v218 = *v217;
            v220 = sub_10003E080(v217, v219);
            if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6F6C(v220, v221, v222, v223, v224, v225, v226, v227);
            }

            *__error() = v218;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v228 = *__error();
            v229 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to set target dispatch queue", "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier");
            if (v229)
            {
              v252 = v229;
              v253 = CFStringGetCStringPtr(v229, 0x8000100u);
              if (v253)
              {
                v254 = v253;
                v255 = 0;
              }

              else
              {
                v254 = malloc_type_calloc(0x400uLL, 1uLL, 0x86D0A680uLL);
                CFStringGetCString(v252, v254, 1024, 0x8000100u);
                v255 = v254;
              }

              if (qword_100127ED0)
              {
                v263 = qword_100127ED0;
              }

              else
              {
                v263 = __stderrp;
              }

              fprintf(v263, "%s\n", v254);
              if (v255)
              {
                free(v255);
              }

              CFRelease(v252);
            }

            else
            {
              v231 = sub_10003E080(0, v230);
              if (os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
              {
                sub_1000A6FE4(v231, v232, v233, v234, v235, v236, v237, v238);
              }

              if (qword_100127ED0)
              {
                v239 = qword_100127ED0;
              }

              else
              {
                v239 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v239);
            }

            *__error() = v228;
          }

          v264 = "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier";
          v258 = "%s: Unable to set target dispatch queue";
        }

        else
        {
          if (byte_100127EC8)
          {
            v184 = __error();
            v185 = *v184;
            v187 = sub_10003E080(v184, v186);
            if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
            {
              sub_1000A705C();
            }

            *__error() = v185;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v188 = *__error();
            v189 = sub_10003E020([v14 pid]);
            v190 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Unable to set target dispatch queue", v189, [v14 pid], "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier");
            if (v190)
            {
              v248 = v190;
              v249 = CFStringGetCStringPtr(v190, 0x8000100u);
              if (v249)
              {
                v250 = v249;
                v251 = 0;
              }

              else
              {
                v250 = malloc_type_calloc(0x400uLL, 1uLL, 0x86D0A680uLL);
                CFStringGetCString(v248, v250, 1024, 0x8000100u);
                v251 = v250;
              }

              if (qword_100127ED0)
              {
                v261 = qword_100127ED0;
              }

              else
              {
                v261 = __stderrp;
              }

              fprintf(v261, "%s\n", v250);
              if (v251)
              {
                free(v251);
              }

              CFRelease(v248);
            }

            else
            {
              v192 = sub_10003E080(0, v191);
              if (os_log_type_enabled(v192, OS_LOG_TYPE_FAULT))
              {
                sub_1000A70F0();
              }

              if (qword_100127ED0)
              {
                v193 = qword_100127ED0;
              }

              else
              {
                v193 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v193);
            }

            *__error() = v188;
          }

          v262 = sub_10003E020([v14 pid]);
          v265 = [v14 pid];
          v266 = "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier";
          v264 = v262;
          v258 = "%s [%d]: %s: Unable to set target dispatch queue";
        }

        v260 = 223;
      }

      sub_10003DF54("GenerateWorkflowResponsivenessReport", "monitor-WorkflowResponsiveness.m", v260, v258, v170, v171, v172, v173, v264, v265, v266);
      abort();
    }
  }

  v115 = v281;
  if (byte_100127EC8 == 1)
  {
    v116 = __error();
    v117 = *v116;
    v119 = sub_10003E080(v116, v118);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      sub_1000A7184(v119);
    }

    *__error() = v117;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v120 = *__error();
    v121 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sample store contains no samples for the signpost interval, not generating spindump report");
    if (v121)
    {
      v123 = v121;
      v124 = CFStringGetCStringPtr(v121, 0x8000100u);
      if (v124)
      {
        v125 = v124;
        v126 = 0;
      }

      else
      {
        v125 = malloc_type_calloc(0x400uLL, 1uLL, 0xF0964AAEuLL);
        CFStringGetCString(v123, v125, 1024, 0x8000100u);
        v126 = v125;
      }

      if (qword_100127ED0)
      {
        v162 = qword_100127ED0;
      }

      else
      {
        v162 = __stderrp;
      }

      fprintf(v162, "%s\n", v125);
      if (v126)
      {
        free(v126);
      }

      CFRelease(v123);
      v112 = v280;
    }

    else
    {
      v148 = sub_10003E080(0, v122);
      if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
      {
        sub_1000A71C8(v148);
      }

      if (qword_100127ED0)
      {
        v149 = qword_100127ED0;
      }

      else
      {
        v149 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v149);
    }

    *__error() = v120;
  }

LABEL_125:
}

void sub_1000484AC(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v3 = [v2 allKeys];
    v4 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v34;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v33 + 1) + 8 * i);
          v9 = [v2 objectForKeyedSubscript:v8];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10004E5DC;
          v30[3] = &unk_100114FA8;
          v31 = v2;
          v32 = v8;
          sub_10004E45C(v9, v30);
        }

        v5 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v5);
    }

LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v1;
    if ([v10 count])
    {
      v11 = 0;
      do
      {
        v12 = [v10 objectAtIndexedSubscript:v11];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10004E5EC;
        v27[3] = &unk_100114FD0;
        v13 = v10;
        v28 = v13;
        v29 = v11;
        sub_10004E45C(v12, v27);

        ++v11;
      }

      while (v11 < [v13 count]);
    }

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v1;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v3 = [v14 copy];
    v15 = [v3 countByEnumeratingWithState:&v23 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v3);
          }

          v19 = *(*(&v23 + 1) + 8 * j);
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10004E5FC;
          v20[3] = &unk_100114FA8;
          v21 = v14;
          v22 = v19;
          sub_10004E45C(v19, v20);
        }

        v16 = [v3 countByEnumeratingWithState:&v23 objects:v37 count:16];
      }

      while (v16);
    }

    goto LABEL_24;
  }

LABEL_26:
}

void sub_100048834(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_BACKGROUND, 0);

  v2 = dispatch_queue_create("WR processing", attr);
  v3 = qword_100127D50;
  qword_100127D50 = v2;
}

void sub_1000488B8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_100048930(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, unint64_t a12, unint64_t a13)
{
  v159 = a1;
  v158 = a2;
  v20 = a3;
  v160 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = v25;
  v148 = v20;
  v149 = v24;
  if (v24)
  {
    alloc = v25;
    v27 = v24;
    v28 = a13;
LABEL_19:
    v49 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:a12 / 1000000000.0 wallTime:0.0];
    v50 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:v28 / 1000000000.0 wallTime:0.0];
    v51 = [SATimeRange timeRangeStart:v49 end:v50];

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v52 = v27;
    v53 = [v52 countByEnumeratingWithState:&v161 objects:v165 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v162;
      do
      {
        for (i = 0; i != v54; i = i + 1)
        {
          if (*v162 != v55)
          {
            objc_enumerationMutation(v52);
          }

          sub_100049A1C(v159, v158, v160, v21, v22, v23, a10, a11, v51, *(*(&v161 + 1) + 8 * i));
        }

        v54 = [v52 countByEnumeratingWithState:&v161 objects:v165 count:16];
      }

      while (v54);
    }

    v20 = v148;
    v24 = v149;
    v26 = alloc;
    goto LABEL_27;
  }

  if (!a11)
  {
    v28 = a13;
    if (a10)
    {
      v29 = sub_1000497A4(v20, v25, a10, a12);
      if (v29)
      {
        goto LABEL_18;
      }

      if (byte_100127EC8 == 1)
      {
        v75 = __error();
        v76 = *v75;
        v78 = sub_10003E080(v75, v77);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v155 = [v160 workflow];
          v113 = [(__CFAllocator *)v155 name];
          v138 = v113;
          v142 = [v21 signpost];
          v114 = [v142 name];
          allocb = v26;
          v115 = v114;
          v116 = v20;
          if (v114)
          {
            v117 = v114;
          }

          else
          {
            v117 = @"<entire workflow>";
          }

          [v22 name];
          *buf = 138413314;
          v167 = v113;
          v168 = 2112;
          v169 = v117;
          v20 = v116;
          v171 = v170 = 2112;
          v118 = v171;
          v172 = 2048;
          v173 = a10;
          v174 = 2048;
          v24 = 0;
          v175 = a12;
          _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", buf, 0x34u);

          v26 = allocb;
        }

        *__error() = v76;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_27;
      }

      alloca = v26;
      v140 = *__error();
      v79 = [v160 workflow];
      v80 = [v79 name];
      v81 = [v21 signpost];
      v82 = [v81 name];
      v83 = v82;
      if (v82)
      {
        v84 = v82;
      }

      else
      {
        v84 = @"<entire workflow>";
      }

      v85 = [v22 name];
      v86 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", v80, v84, v85, a10, a12);

      v87 = v86;
      if (v86)
      {
        CStringPtr = CFStringGetCStringPtr(v86, 0x8000100u);
        if (CStringPtr)
        {
          v91 = CStringPtr;
          v92 = 0;
        }

        else
        {
          v91 = malloc_type_calloc(0x400uLL, 1uLL, 0x74111809uLL);
          CFStringGetCString(v86, v91, 1024, 0x8000100u);
          v92 = v91;
        }

        v26 = alloca;
        v20 = v148;
        if (qword_100127ED0)
        {
          v101 = qword_100127ED0;
        }

        else
        {
          v101 = __stderrp;
        }

        fprintf(v101, "%s\n", v91);
        v24 = 0;
        if (v92)
        {
          free(v92);
        }

        CFRelease(v87);
        goto LABEL_84;
      }

      v99 = sub_10003E080(v88, v89);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
      {
        v157 = [v160 workflow];
        v130 = [(__CFAllocator *)v157 name];
        v139 = [v21 signpost];
        v131 = [v139 name];
        v132 = v131;
        if (v131)
        {
          v133 = v131;
        }

        else
        {
          v133 = @"<entire workflow>";
        }

        v134 = [v22 name];
        *buf = 138413314;
        v167 = v130;
        v168 = 2112;
        v169 = v133;
        v170 = 2112;
        v171 = v134;
        v172 = 2048;
        v173 = a10;
        v174 = 2048;
        v175 = a12;
        _os_log_fault_impl(&_mh_execute_header, v99, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", buf, 0x34u);
      }
    }

    else
    {
      if (byte_100127EC8 == 1)
      {
        v57 = __error();
        v58 = *v57;
        v60 = sub_10003E080(v57, v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v154 = [v160 workflow];
          v107 = [(__CFAllocator *)v154 name];
          v152 = [v21 signpost];
          v108 = [v152 name];
          v109 = v108;
          v110 = v20;
          if (v108)
          {
            v111 = v108;
          }

          else
          {
            v111 = @"<entire workflow>";
          }

          [v22 name];
          v112 = allocd = v26;
          *buf = 138412802;
          v167 = v107;
          v168 = 2112;
          v169 = v111;
          v20 = v110;
          v24 = 0;
          v170 = 2112;
          v171 = v112;
          _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Unable to find task given no threads, cannot generate report", buf, 0x20u);

          v26 = allocd;
        }

        *__error() = v58;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_27;
      }

      alloca = v26;
      v140 = *__error();
      v61 = [v160 workflow];
      v62 = [v61 name];
      v63 = [v21 signpost];
      v64 = [v63 name];
      v65 = v64;
      if (v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = @"<entire workflow>";
      }

      v67 = [v22 name];
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Unable to find task given no threads, cannot generate report", v62, v66, v67);

      v69 = v68;
      if (v68)
      {
        v72 = CFStringGetCStringPtr(v68, 0x8000100u);
        if (v72)
        {
          v73 = v72;
          v74 = 0;
        }

        else
        {
          v73 = malloc_type_calloc(0x400uLL, 1uLL, 0x475CB09uLL);
          CFStringGetCString(v68, v73, 1024, 0x8000100u);
          v74 = v73;
        }

        v20 = v148;
        v97 = v140;
        if (qword_100127ED0)
        {
          v98 = qword_100127ED0;
        }

        else
        {
          v98 = __stderrp;
        }

        fprintf(v98, "%s\n", v73);
        v24 = 0;
        if (v74)
        {
          free(v74);
        }

        CFRelease(v69);
        v26 = alloca;
        goto LABEL_85;
      }

      v96 = sub_10003E080(v70, v71);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
      {
        v156 = [v160 workflow];
        v124 = [(__CFAllocator *)v156 name];
        v125 = [v21 signpost];
        v126 = [v125 name];
        v127 = v126;
        if (v126)
        {
          v128 = v126;
        }

        else
        {
          v128 = @"<entire workflow>";
        }

        v129 = [v22 name];
        *buf = 138412802;
        v167 = v124;
        v168 = 2112;
        v169 = v128;
        v170 = 2112;
        v171 = v129;
        _os_log_fault_impl(&_mh_execute_header, v96, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Unable to find task given no threads, cannot generate report", buf, 0x20u);
      }
    }

    if (qword_100127ED0)
    {
      v100 = qword_100127ED0;
    }

    else
    {
      v100 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v100);
    v20 = v148;
    v24 = 0;
    v26 = alloca;
LABEL_84:
    v97 = v140;
LABEL_85:
    *__error() = v97;
    goto LABEL_27;
  }

  v28 = a13;
  v29 = sub_1000497A4(v20, v25, a11, a13);
  if (v29)
  {
LABEL_18:
    v48 = v29;
    alloc = v26;
    v27 = [[NSArray alloc] initWithObjects:{v29, 0}];

    goto LABEL_19;
  }

  if (byte_100127EC8 == 1)
  {
    v30 = __error();
    v31 = *v30;
    v33 = sub_10003E080(v30, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v151 = [v160 workflow];
      v102 = [v151 name];
      v135 = v102;
      v141 = [v21 signpost];
      v103 = [v141 name];
      v137 = v103;
      v104 = v20;
      if (v103)
      {
        v105 = v103;
      }

      else
      {
        v105 = @"<entire workflow>";
      }

      [v22 name];
      *buf = 138413314;
      v167 = v102;
      v168 = 2112;
      v169 = v105;
      v20 = v104;
      v24 = 0;
      v171 = v170 = 2112;
      v106 = v171;
      v172 = 2048;
      v173 = a11;
      v174 = 2048;
      v175 = a13;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", buf, 0x34u);

      v28 = a13;
    }

    *__error() = v31;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v140 = *__error();
    v150 = [v160 workflow];
    v34 = [v150 name];
    v136 = [v21 signpost];
    v35 = [v136 name];
    v36 = v28;
    v37 = v35;
    if (v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = @"<entire workflow>";
    }

    v39 = [v22 name];
    v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", v34, v38, v39, a11, v36);

    v41 = v40;
    if (v40)
    {
      v44 = v26;
      v45 = CFStringGetCStringPtr(v40, 0x8000100u);
      if (v45)
      {
        v46 = v45;
        v47 = 0;
      }

      else
      {
        v46 = malloc_type_calloc(0x400uLL, 1uLL, 0x22E06FDCuLL);
        CFStringGetCString(v40, v46, 1024, 0x8000100u);
        v47 = v46;
      }

      v20 = v148;
      if (qword_100127ED0)
      {
        v95 = qword_100127ED0;
      }

      else
      {
        v95 = __stderrp;
      }

      fprintf(v95, "%s\n", v46);
      v24 = 0;
      if (v47)
      {
        free(v47);
      }

      CFRelease(v41);
      v26 = v44;
    }

    else
    {
      v93 = sub_10003E080(v42, v43);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
      {
        v153 = [v160 workflow];
        v119 = [v153 name];
        allocc = [v21 signpost];
        v120 = [(__CFAllocator *)allocc name];
        v121 = v120;
        if (v120)
        {
          v122 = v120;
        }

        else
        {
          v122 = @"<entire workflow>";
        }

        v123 = [v22 name];
        *buf = 138413314;
        v167 = v119;
        v168 = 2112;
        v169 = v122;
        v170 = 2112;
        v171 = v123;
        v172 = 2048;
        v173 = a11;
        v174 = 2048;
        v175 = a13;
        _os_log_fault_impl(&_mh_execute_header, v93, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", buf, 0x34u);
      }

      if (qword_100127ED0)
      {
        v94 = qword_100127ED0;
      }

      else
      {
        v94 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v94);
      v20 = v148;
      v24 = 0;
    }

    goto LABEL_84;
  }

LABEL_27:
}

id sub_1000497A4(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = [v7 tasksByPid];
    v12 = [v11 objectForKeyedSubscript:v10];

    v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v32 = v10;
      v33 = v8;
      v34 = v7;
      v15 = a4 / 1000000000.0;
      v16 = *v36;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = [v18 threads];
          v20 = [NSNumber numberWithUnsignedLongLong:a3];
          v21 = [v19 objectForKeyedSubscript:v20];

          if (v21)
          {
            v22 = [v18 startTimestamp];
            if (v22)
            {
              v23 = v22;
              [v22 machContTimeSeconds];
              if (v24 != 0.0 && v15 < v24)
              {
                v30 = 0;
LABEL_26:

                goto LABEL_27;
              }

              v26 = [v18 endTimestamp];
              v27 = v26;
              if (v26)
              {
                [v26 machContTimeSeconds];
                if (v28 != 0.0 && v15 < v28)
                {
                  v30 = v18;

                  goto LABEL_26;
                }
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v30 = 0;
LABEL_27:
      v8 = v33;
      v7 = v34;
      v10 = v32;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

void sub_100049A1C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v365 = a1;
  v366 = a2;
  v367 = a3;
  v368 = a4;
  v15 = a5;
  v369 = a6;
  v370 = a9;
  v371 = a10;
  v372 = v15;
  if ([v15 reportSpindumpForThisThread])
  {
    v347 = v365;
    v351 = v366;
    v342 = v367;
    v333 = v368;
    v325 = v15;
    v359 = v369;
    v363 = v370;
    v16 = v371;
    v17 = v16;
    if (a7 == a8 || a7 == 0)
    {
      v19 = a8;
    }

    else
    {
      v19 = 0;
    }

    if (a8)
    {
      v20 = v19;
    }

    else
    {
      v20 = a7;
    }

    if (v20)
    {
      v21 = [v16 threads];
      v22 = [NSNumber numberWithUnsignedLongLong:v20];
      v23 = [v21 objectForKeyedSubscript:v22];

      if (v23)
      {
        v24 = [[SPWRReport alloc] initWithReportReason:v351 reportedSignpostTracker:v359 task:v17 timeRange:v363 thread:v23 dispatchQueue:0];
        [v347 addObject:v24];
      }

      else
      {
        if (byte_100127EC8 == 1)
        {
          v43 = __error();
          v44 = *v43;
          v46 = sub_10003E080(v43, v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v322 = [v342 workflow];
            v313 = [v322 name];
            v225 = [v333 signpost];
            v226 = [v225 name];
            v227 = v226;
            if (v226)
            {
              v228 = v226;
            }

            else
            {
              v228 = @"<entire workflow>";
            }

            v229 = [v325 name];
            v230 = [v17 name];
            *v390 = 138413570;
            *&v390[4] = v313;
            *&v390[12] = 2112;
            *&v390[14] = v228;
            *&v390[22] = 2112;
            v391 = v229;
            *v392 = 2112;
            *&v392[2] = v230;
            *&v392[10] = 1024;
            *&v392[12] = [v17 pid];
            *&v392[16] = 2048;
            *&v392[18] = v20;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: %@ [%d] has no thread 0x%llx, cannot generate report", v390, 0x3Au);
          }

          *__error() = v44;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v316 = *__error();
          v47 = [v342 workflow];
          v48 = [v47 name];
          v49 = [v333 signpost];
          v50 = [v49 name];
          v51 = v50;
          if (v50)
          {
            v52 = v50;
          }

          else
          {
            v52 = @"<entire workflow>";
          }

          v53 = [v325 name];
          v54 = [v17 name];
          v55 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: %@ [%d] has no thread 0x%llx, cannot generate report", v48, v52, v53, v54, [v17 pid], v20);

          if (v55)
          {
            CStringPtr = CFStringGetCStringPtr(v55, 0x8000100u);
            if (CStringPtr)
            {
              v59 = 0;
            }

            else
            {
              CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xED761696uLL);
              CFStringGetCString(v55, CStringPtr, 1024, 0x8000100u);
              v59 = CStringPtr;
            }

            if (qword_100127ED0)
            {
              v66 = qword_100127ED0;
            }

            else
            {
              v66 = __stderrp;
            }

            fprintf(v66, "%s\n", CStringPtr);
            if (v59)
            {
              free(v59);
            }

            CFRelease(v55);
          }

          else
          {
            v63 = sub_10003E080(v56, v57);
            v64 = v63;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
            {
              v315 = [v342 workflow];
              v272 = [v315 name];
              v273 = [v333 signpost];
              v274 = [v273 name];
              v275 = v274;
              if (v274)
              {
                v276 = v274;
              }

              else
              {
                v276 = @"<entire workflow>";
              }

              v277 = [v325 name];
              v278 = [v17 name];
              v279 = [v17 pid];
              *v390 = 138413570;
              *&v390[4] = v272;
              *&v390[12] = 2112;
              *&v390[14] = v276;
              *&v390[22] = 2112;
              v391 = v277;
              *v392 = 2112;
              *&v392[2] = v278;
              *&v392[10] = 1024;
              *&v392[12] = v279;
              *&v392[16] = 2048;
              *&v392[18] = v20;
              _os_log_fault_impl(&_mh_execute_header, v63, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: %@ [%d] has no thread 0x%llx, cannot generate report", v390, 0x3Au);

              v64 = v63;
            }

            if (qword_100127ED0)
            {
              v65 = qword_100127ED0;
            }

            else
            {
              v65 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v65);
          }

          *__error() = v316;
        }
      }
    }

    else
    {
      if (byte_100127EC8 == 1)
      {
        v25 = __error();
        v26 = *v25;
        v28 = sub_10003E080(v25, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v211 = [v342 workflow];
          v212 = [v211 name];
          v213 = [v333 signpost];
          v214 = [v213 name];
          v215 = v214;
          if (v214)
          {
            v216 = v214;
          }

          else
          {
            v216 = @"<entire workflow>";
          }

          v217 = [v325 name];
          *v390 = 138413314;
          *&v390[4] = v212;
          *&v390[12] = 2112;
          *&v390[14] = v216;
          *&v390[22] = 2112;
          v391 = v217;
          *v392 = 2048;
          *&v392[2] = a7;
          *&v392[10] = 2048;
          *&v392[12] = a8;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports this thread, but signpost starts on 0x%llx and ends on 0x%llx", v390, 0x34u);
        }

        *__error() = v26;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v29 = *__error();
        v30 = [v342 workflow];
        v31 = [v30 name];
        v32 = [v333 signpost];
        v33 = [v32 name];
        v34 = v33;
        v35 = @"<entire workflow>";
        if (v33)
        {
          v36 = v33;
        }

        else
        {
          v36 = @"<entire workflow>";
        }

        v37 = [v325 name];
        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this thread, but signpost starts on 0x%llx and ends on 0x%llx", v31, v36, v37, a7, a8);

        if (v38)
        {
          v41 = CFStringGetCStringPtr(v38, 0x8000100u);
          if (v41)
          {
            v42 = 0;
          }

          else
          {
            v41 = malloc_type_calloc(0x400uLL, 1uLL, 0x35F1E861uLL);
            CFStringGetCString(v38, v41, 1024, 0x8000100u);
            v42 = v41;
          }

          if (qword_100127ED0)
          {
            v62 = qword_100127ED0;
          }

          else
          {
            v62 = __stderrp;
          }

          fprintf(v62, "%s\n", v41);
          if (v42)
          {
            free(v42);
          }

          CFRelease(v38);
        }

        else
        {
          v60 = sub_10003E080(v39, v40);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
          {
            v247 = [v342 workflow];
            v248 = [v247 name];
            v249 = [v333 signpost];
            v250 = [v249 name];
            v251 = v250;
            if (v250)
            {
              v35 = v250;
            }

            v252 = [v325 name];
            *v390 = 138413314;
            *&v390[4] = v248;
            *&v390[12] = 2112;
            *&v390[14] = v35;
            *&v390[22] = 2112;
            v391 = v252;
            *v392 = 2048;
            *&v392[2] = a7;
            *&v392[10] = 2048;
            *&v392[12] = a8;
            _os_log_fault_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports this thread, but signpost starts on 0x%llx and ends on 0x%llx", v390, 0x34u);
          }

          if (qword_100127ED0)
          {
            v61 = qword_100127ED0;
          }

          else
          {
            v61 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v61);
        }

        *__error() = v29;
      }
    }

    v15 = v372;
  }

  v364 = [v15 reportSpindumpForThreadWithName];
  if (v364)
  {
    v67 = v364;
    v326 = v365;
    v334 = v366;
    v317 = v367;
    v309 = v368;
    v306 = v372;
    v343 = v369;
    v348 = v370;
    v352 = v371;
    v360 = v67;
    if ([v67 hasPrefix:@"^"] && objc_msgSend(v67, "hasSuffix:", @"$"))
    {
      v380 = 0;
      v68 = [[NSRegularExpression alloc] initWithPattern:v67 options:0 error:&v380];
      v69 = v380;
      if (!v68)
      {
        if (byte_100127EC8 == 1)
        {
          v91 = v69;
          v92 = __error();
          v93 = *v92;
          v95 = sub_10003E080(v92, v94);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            v261 = [v317 workflow];
            v262 = [v261 name];
            v263 = [v309 signpost];
            v264 = [v263 name];
            v265 = v264;
            if (v264)
            {
              v266 = v264;
            }

            else
            {
              v266 = @"<entire workflow>";
            }

            v267 = [v306 name];
            *v390 = 138413314;
            *&v390[4] = v262;
            *&v390[12] = 2112;
            *&v390[14] = v266;
            *&v390[22] = 2112;
            v391 = v267;
            *v392 = 2112;
            *&v392[2] = v360;
            *&v392[10] = 2112;
            *&v392[12] = v91;
            _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports thread %@, but regex failed to compile: %@", v390, 0x34u);
          }

          *__error() = v93;
          v69 = v91;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v96 = v69;
          v97 = *__error();
          v98 = [v317 workflow];
          v99 = [v98 name];
          v100 = [v309 signpost];
          v101 = [v100 name];
          v102 = v101;
          v103 = @"<entire workflow>";
          if (v101)
          {
            v104 = v101;
          }

          else
          {
            v104 = @"<entire workflow>";
          }

          v105 = [v306 name];
          v106 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports thread %@, but regex failed to compile: %@", v99, v104, v105, v360, v96);

          if (v106)
          {
            v109 = CFStringGetCStringPtr(v106, 0x8000100u);
            if (v109)
            {
              v110 = 0;
            }

            else
            {
              v109 = malloc_type_calloc(0x400uLL, 1uLL, 0x1E150F2CuLL);
              CFStringGetCString(v106, v109, 1024, 0x8000100u);
              v110 = v109;
            }

            if (qword_100127ED0)
            {
              v204 = qword_100127ED0;
            }

            else
            {
              v204 = __stderrp;
            }

            fprintf(v204, "%s\n", v109);
            if (v110)
            {
              free(v110);
            }

            CFRelease(v106);
          }

          else
          {
            v191 = sub_10003E080(v107, v108);
            if (os_log_type_enabled(v191, OS_LOG_TYPE_FAULT))
            {
              v280 = [v317 workflow];
              v281 = [v280 name];
              v282 = [v309 signpost];
              v283 = [v282 name];
              v284 = v283;
              if (v283)
              {
                v103 = v283;
              }

              v285 = [v306 name];
              *v390 = 138413314;
              *&v390[4] = v281;
              *&v390[12] = 2112;
              *&v390[14] = v103;
              *&v390[22] = 2112;
              v391 = v285;
              *v392 = 2112;
              *&v392[2] = v360;
              *&v392[10] = 2112;
              *&v392[12] = v96;
              _os_log_fault_impl(&_mh_execute_header, v191, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports thread %@, but regex failed to compile: %@", v390, 0x34u);
            }

            if (qword_100127ED0)
            {
              v192 = qword_100127ED0;
            }

            else
            {
              v192 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v192);
          }

          *__error() = v97;
          v69 = v96;
        }

        goto LABEL_107;
      }
    }

    else
    {
      v68 = 0;
    }

    v373 = 0;
    v374 = &v373;
    v375 = 0x2020000000;
    LOBYTE(v376) = 0;
    v70 = [v352 threads];
    *v390 = _NSConcreteStackBlock;
    *&v390[8] = 3221225472;
    *&v390[16] = sub_10004DB40;
    v391 = &unk_100114F58;
    v304 = v348;
    *v392 = v304;
    v305 = v68;
    *&v392[8] = v305;
    v303 = v360;
    *&v392[16] = v303;
    v396 = &v373;
    *&v392[24] = v334;
    v393 = v343;
    v71 = v352;
    v394 = v71;
    v395 = v326;
    [v70 enumerateKeysAndObjectsUsingBlock:v390];

    if ((*(v374 + 24) & 1) == 0)
    {
      if (byte_100127EC8 == 1)
      {
        v72 = __error();
        v73 = *v72;
        v75 = sub_10003E080(v72, v74);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v301 = [v317 workflow];
          v295 = [v301 name];
          v298 = [v309 signpost];
          v195 = [v298 name];
          v196 = v195;
          v197 = @"<entire workflow>";
          if (v195)
          {
            v197 = v195;
          }

          v291 = v197;
          v293 = [v306 name];
          v198 = [v71 name];
          v199 = [v71 pid];
          v200 = [v304 startTime];
          v201 = [v200 debugDescription];
          v202 = [v304 endTime];
          v203 = [v202 debugDescription];
          *buf = 138414082;
          *&buf[4] = v295;
          *&buf[12] = 2112;
          *&buf[14] = v291;
          *&buf[22] = 2112;
          *&buf[24] = v293;
          *&buf[32] = 2112;
          *&buf[34] = v303;
          *&buf[42] = 2112;
          *&buf[44] = v198;
          *&buf[52] = 1024;
          *&buf[54] = v199;
          *&buf[58] = 2112;
          *&buf[60] = v201;
          v388 = 2112;
          v389 = v203;
          _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports thread %@, but %@ [%d] has no thread with that name during the interval %@ - %@", buf, 0x4Eu);
        }

        *__error() = v73;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v292 = *__error();
        v300 = [v317 workflow];
        v294 = [v300 name];
        v297 = [v309 signpost];
        v76 = [v297 name];
        v77 = v76;
        if (v76)
        {
          v78 = v76;
        }

        else
        {
          v78 = @"<entire workflow>";
        }

        v79 = [v306 name];
        v80 = [v71 name];
        v81 = [v71 pid];
        v82 = [v304 startTime];
        v83 = [v82 debugDescription];
        v84 = [v304 endTime];
        v85 = [v84 debugDescription];
        v86 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports thread %@, but %@ [%d] has no thread with that name during the interval %@ - %@", v294, v78, v79, v303, v80, v81, v83, v85);

        if (v86)
        {
          v89 = CFStringGetCStringPtr(v86, 0x8000100u);
          if (v89)
          {
            v90 = 0;
          }

          else
          {
            v89 = malloc_type_calloc(0x400uLL, 1uLL, 0x668B82A4uLL);
            CFStringGetCString(v86, v89, 1024, 0x8000100u);
            v90 = v89;
          }

          if (qword_100127ED0)
          {
            v113 = qword_100127ED0;
          }

          else
          {
            v113 = __stderrp;
          }

          fprintf(v113, "%s\n", v89);
          if (v90)
          {
            free(v90);
          }

          CFRelease(v86);
        }

        else
        {
          v111 = sub_10003E080(v87, v88);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
          {
            v302 = [v317 workflow];
            v296 = [v302 name];
            v299 = [v309 signpost];
            v231 = [v299 name];
            v232 = v231;
            if (v231)
            {
              v233 = v231;
            }

            else
            {
              v233 = @"<entire workflow>";
            }

            v234 = [v306 name];
            v235 = [v71 name];
            v236 = [v71 pid];
            v237 = [v304 startTime];
            v238 = [v237 debugDescription];
            v239 = [v304 endTime];
            v240 = [v239 debugDescription];
            *buf = 138414082;
            *&buf[4] = v296;
            *&buf[12] = 2112;
            *&buf[14] = v233;
            *&buf[22] = 2112;
            *&buf[24] = v234;
            *&buf[32] = 2112;
            *&buf[34] = v303;
            *&buf[42] = 2112;
            *&buf[44] = v235;
            *&buf[52] = 1024;
            *&buf[54] = v236;
            *&buf[58] = 2112;
            *&buf[60] = v238;
            v388 = 2112;
            v389 = v240;
            _os_log_fault_impl(&_mh_execute_header, v111, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports thread %@, but %@ [%d] has no thread with that name during the interval %@ - %@", buf, 0x4Eu);
          }

          if (qword_100127ED0)
          {
            v112 = qword_100127ED0;
          }

          else
          {
            v112 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v112);
        }

        *__error() = v292;
      }
    }

    _Block_object_dispose(&v373, 8);
    v69 = v305;
LABEL_107:
  }

  if ([v372 reportSpindumpForMainThread])
  {
    v349 = v365;
    v353 = v366;
    v327 = v367;
    v335 = v368;
    v344 = v372;
    v361 = v369;
    v114 = v370;
    v115 = v371;
    v116 = [v115 mainThread];
    if (v116)
    {
      v117 = [[SPWRReport alloc] initWithReportReason:v353 reportedSignpostTracker:v361 task:v115 timeRange:v114 thread:v116 dispatchQueue:0];
      [v349 addObject:v117];
    }

    else
    {
      if (byte_100127EC8 == 1)
      {
        v118 = __error();
        v119 = *v118;
        v121 = sub_10003E080(v118, v120);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          v321 = [v327 workflow];
          v312 = [v321 name];
          v218 = [v335 signpost];
          v219 = [v218 name];
          v220 = v219;
          if (v219)
          {
            v221 = v219;
          }

          else
          {
            v221 = @"<entire workflow>";
          }

          v222 = [v344 name];
          v223 = [v115 name];
          v224 = [v115 pid];
          *v390 = 138413314;
          *&v390[4] = v312;
          *&v390[12] = 2112;
          *&v390[14] = v221;
          *&v390[22] = 2112;
          v391 = v222;
          *v392 = 2112;
          *&v392[2] = v223;
          *&v392[10] = 1024;
          *&v392[12] = v224;
          _os_log_error_impl(&_mh_execute_header, v121, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports main thread, but %@ [%d] has no main thread", v390, 0x30u);
        }

        *__error() = v119;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v318 = *__error();
        v122 = [v327 workflow];
        v123 = [v122 name];
        v124 = [v335 signpost];
        v125 = [v124 name];
        v126 = v125;
        if (v125)
        {
          v127 = v125;
        }

        else
        {
          v127 = @"<entire workflow>";
        }

        v128 = [v344 name];
        v129 = [v115 name];
        v130 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports main thread, but %@ [%d] has no main thread", v123, v127, v128, v129, [v115 pid]);

        if (v130)
        {
          v133 = CFStringGetCStringPtr(v130, 0x8000100u);
          if (v133)
          {
            v134 = 0;
          }

          else
          {
            v133 = malloc_type_calloc(0x400uLL, 1uLL, 0x4EF72D78uLL);
            CFStringGetCString(v130, v133, 1024, 0x8000100u);
            v134 = v133;
          }

          if (qword_100127ED0)
          {
            v137 = qword_100127ED0;
          }

          else
          {
            v137 = __stderrp;
          }

          fprintf(v137, "%s\n", v133);
          if (v134)
          {
            free(v134);
          }

          CFRelease(v130);
        }

        else
        {
          v135 = sub_10003E080(v131, v132);
          if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
          {
            v314 = [v327 workflow];
            v253 = [v314 name];
            v254 = [v335 signpost];
            v255 = [v254 name];
            v256 = v255;
            if (v255)
            {
              v257 = v255;
            }

            else
            {
              v257 = @"<entire workflow>";
            }

            v258 = [v344 name];
            v259 = [v115 name];
            v260 = [v115 pid];
            *v390 = 138413314;
            *&v390[4] = v253;
            *&v390[12] = 2112;
            *&v390[14] = v257;
            *&v390[22] = 2112;
            v391 = v258;
            *v392 = 2112;
            *&v392[2] = v259;
            *&v392[10] = 1024;
            *&v392[12] = v260;
            _os_log_fault_impl(&_mh_execute_header, v135, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports main thread, but %@ [%d] has no main thread", v390, 0x30u);
          }

          if (qword_100127ED0)
          {
            v136 = qword_100127ED0;
          }

          else
          {
            v136 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v136);
        }

        *__error() = v318;
      }
    }
  }

  if ([v372 reportSpindumpForThisDispatchQueue])
  {
    sub_10004C0E0(v365, v366, v367, v368, v372, v369, a7, a8, v370, v371);
  }

  v138 = [v372 reportSpindumpForDispatchQueueWithLabel];
  v362 = v138;
  v139 = v138;
  if (v138)
  {
    v140 = v138;
    v141 = v365;
    v142 = v366;
    v356 = v367;
    v350 = v368;
    v354 = v372;
    v143 = v369;
    v144 = v370;
    v145 = v371;
    v358 = v140;
    if ([v140 hasPrefix:@"^"] && objc_msgSend(v140, "hasSuffix:", @"$"))
    {
      v146 = [NSRegularExpression alloc];
      v386 = 0;
      v147 = [v146 initWithPattern:v140 options:0 error:&v386];
      v148 = v386;
      if (!v147)
      {
        if (byte_100127EC8 == 1)
        {
          v171 = v148;
          v172 = __error();
          v173 = *v172;
          v175 = sub_10003E080(v172, v174);
          if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
          {
            v346 = [v356 workflow];
            v332 = [v346 name];
            v340 = [v350 signpost];
            v268 = [v340 name];
            v269 = v268;
            v270 = @"<entire workflow>";
            if (v268)
            {
              v270 = v268;
            }

            v323 = v270;
            v271 = [v354 name];
            *v390 = 138413314;
            *&v390[4] = v332;
            *&v390[12] = 2112;
            *&v390[14] = v323;
            *&v390[22] = 2112;
            v391 = v271;
            *v392 = 2112;
            *&v392[2] = v358;
            *&v392[10] = 2112;
            *&v392[12] = v171;
            _os_log_error_impl(&_mh_execute_header, v175, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports dispatch queue %@, but regex failed to compile: %@", v390, 0x34u);
          }

          *__error() = v173;
          v148 = v171;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_190;
        }

        v345 = v148;
        v329 = *__error();
        v337 = [v356 workflow];
        v176 = [v337 name];
        v177 = [v350 signpost];
        v178 = [v177 name];
        v179 = v178;
        if (v178)
        {
          v180 = v178;
        }

        else
        {
          v180 = @"<entire workflow>";
        }

        v181 = [v354 name];
        v182 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports dispatch queue %@, but regex failed to compile: %@", v176, v180, v181, v358, v345);

        if (v182)
        {
          v185 = CFStringGetCStringPtr(v182, 0x8000100u);
          if (v185)
          {
            v186 = v182;
            v187 = 0;
          }

          else
          {
            v185 = malloc_type_calloc(0x400uLL, 1uLL, 0x67946F98uLL);
            CFStringGetCString(v182, v185, 1024, 0x8000100u);
            v186 = v182;
            v187 = v185;
          }

          if (qword_100127ED0)
          {
            v205 = qword_100127ED0;
          }

          else
          {
            v205 = __stderrp;
          }

          fprintf(v205, "%s\n", v185);
          if (v187)
          {
            free(v187);
          }

          CFRelease(v186);
        }

        else
        {
          v193 = sub_10003E080(v183, v184);
          if (os_log_type_enabled(v193, OS_LOG_TYPE_FAULT))
          {
            v341 = [v356 workflow];
            v324 = [v341 name];
            v286 = [v350 signpost];
            v287 = [v286 name];
            v288 = v287;
            if (v287)
            {
              v289 = v287;
            }

            else
            {
              v289 = @"<entire workflow>";
            }

            v290 = [v354 name];
            *v390 = 138413314;
            *&v390[4] = v324;
            *&v390[12] = 2112;
            *&v390[14] = v289;
            *&v390[22] = 2112;
            v391 = v290;
            *v392 = 2112;
            *&v392[2] = v358;
            *&v392[10] = 2112;
            *&v392[12] = v345;
            _os_log_fault_impl(&_mh_execute_header, v193, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports dispatch queue %@, but regex failed to compile: %@", v390, 0x34u);
          }

          if (qword_100127ED0)
          {
            v194 = qword_100127ED0;
          }

          else
          {
            v194 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v194);
        }

        *__error() = v329;
LABEL_189:
        v148 = v345;
LABEL_190:

        v139 = v362;
        goto LABEL_191;
      }
    }

    else
    {
      v147 = 0;
    }

    v380 = 0;
    v381 = &v380;
    v382 = 0x3032000000;
    v383 = sub_100045D80;
    v384 = sub_100045D90;
    v385 = 0;
    v149 = [v145 dispatchQueues];
    v373 = _NSConcreteStackBlock;
    v374 = 3221225472;
    v375 = sub_10004E2F8;
    v376 = &unk_100114F80;
    v345 = v147;
    v377 = v345;
    v150 = v358;
    v378 = v150;
    v379 = &v380;
    [v149 enumerateKeysAndObjectsUsingBlock:&v373];

    v151 = v381[5];
    if (v151)
    {
      memset(buf, 0, 64);
      v152 = v151;
      v153 = [v152 countByEnumeratingWithState:buf objects:v390 count:16];
      if (v153)
      {
        v154 = **&buf[16];
        do
        {
          for (i = 0; i != v153; i = i + 1)
          {
            if (**&buf[16] != v154)
            {
              objc_enumerationMutation(v152);
            }

            sub_10004E210(v141, v142, v143, v144, v145, *(*&buf[8] + 8 * i));
          }

          v153 = [v152 countByEnumeratingWithState:buf objects:v390 count:16];
        }

        while (v153);
      }
    }

    else
    {
      if (byte_100127EC8 == 1)
      {
        v156 = __error();
        v157 = *v156;
        v159 = sub_10003E080(v156, v158);
        if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
        {
          v320 = v150;
          v338 = [v356 workflow];
          v311 = [v338 name];
          v330 = [v350 signpost];
          v206 = [v330 name];
          v207 = v206;
          if (v206)
          {
            v208 = v206;
          }

          else
          {
            v208 = @"<entire workflow>";
          }

          v307 = [v354 name];
          v209 = [v145 name];
          v210 = [v145 pid];
          *v390 = 138413570;
          *&v390[4] = v311;
          *&v390[12] = 2112;
          *&v390[14] = v208;
          *&v390[22] = 2112;
          v391 = v307;
          *v392 = 2112;
          v150 = v320;
          *&v392[2] = v320;
          *&v392[10] = 2112;
          *&v392[12] = v209;
          *&v392[20] = 1024;
          *&v392[22] = v210;
          _os_log_error_impl(&_mh_execute_header, v159, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports dispatch queue %@, but %@ [%d] has no such dispatch queue", v390, 0x3Au);
        }

        *__error() = v157;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v319 = v150;
        v310 = *__error();
        v336 = [v356 workflow];
        v328 = [v336 name];
        v160 = [v350 signpost];
        v161 = [v160 name];
        v162 = v161;
        if (v161)
        {
          v163 = v161;
        }

        else
        {
          v163 = @"<entire workflow>";
        }

        v164 = [v354 name];
        v165 = [v145 name];
        v166 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports dispatch queue %@, but %@ [%d] has no such dispatch queue", v328, v163, v164, v319, v165, [v145 pid]);

        if (v166)
        {
          v169 = CFStringGetCStringPtr(v166, 0x8000100u);
          if (v169)
          {
            v170 = 0;
          }

          else
          {
            v169 = malloc_type_calloc(0x400uLL, 1uLL, 0x7FB6C843uLL);
            CFStringGetCString(v166, v169, 1024, 0x8000100u);
            v170 = v169;
          }

          if (qword_100127ED0)
          {
            v190 = qword_100127ED0;
          }

          else
          {
            v190 = __stderrp;
          }

          fprintf(v190, "%s\n", v169);
          if (v170)
          {
            free(v170);
          }

          CFRelease(v166);
        }

        else
        {
          v188 = sub_10003E080(v167, v168);
          if (os_log_type_enabled(v188, OS_LOG_TYPE_FAULT))
          {
            v339 = [v356 workflow];
            v308 = [v339 name];
            v331 = [v350 signpost];
            v241 = [v331 name];
            v242 = v241;
            if (v241)
            {
              v243 = v241;
            }

            else
            {
              v243 = @"<entire workflow>";
            }

            v244 = [v354 name];
            v245 = [v145 name];
            v246 = [v145 pid];
            *v390 = 138413570;
            *&v390[4] = v308;
            *&v390[12] = 2112;
            *&v390[14] = v243;
            *&v390[22] = 2112;
            v391 = v244;
            *v392 = 2112;
            *&v392[2] = v319;
            *&v392[10] = 2112;
            *&v392[12] = v245;
            *&v392[20] = 1024;
            *&v392[22] = v246;
            _os_log_fault_impl(&_mh_execute_header, v188, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports dispatch queue %@, but %@ [%d] has no such dispatch queue", v390, 0x3Au);
          }

          if (qword_100127ED0)
          {
            v189 = qword_100127ED0;
          }

          else
          {
            v189 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v189);
        }

        *__error() = v310;
      }
    }

    _Block_object_dispose(&v380, 8);
    goto LABEL_189;
  }

LABEL_191:
}

void sub_10004C060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C0E0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v288 = a1;
  v287 = a2;
  v292 = a3;
  v17 = a4;
  v291 = a5;
  v289 = a6;
  v18 = a9;
  v19 = a10;
  v20 = [v19 threads];
  v277 = a7;
  v21 = [NSNumber numberWithUnsignedLongLong:a7];
  v22 = [v20 objectForKeyedSubscript:v21];
  v23 = [v18 startTime];
  v24 = [v22 firstThreadStateOnOrAfterTime:v23 sampleIndex:0x7FFFFFFFFFFFFFFFLL];

  v290 = v19;
  v25 = [v19 threads];
  v26 = [NSNumber numberWithUnsignedLongLong:a8];
  v27 = [v25 objectForKeyedSubscript:v26];
  v28 = [v18 endTime];
  v29 = [v27 lastThreadStateOnOrBeforeTime:v28 sampleIndex:0x7FFFFFFFFFFFFFFFLL];

  v293 = v24;
  v30 = [v24 dispatchQueue];
  v31 = v29;
  v32 = [v29 dispatchQueue];
  v33 = v32;
  if (!(v30 | v32))
  {
    v42 = v290;
    v43 = v292;
    if (byte_100127EC8 == 1)
    {
      v44 = __error();
      v45 = *v44;
      v47 = sub_10003E080(v44, v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v252 = [v292 workflow];
        v177 = [v252 name];
        v242 = v177;
        v249 = [v17 signpost];
        v178 = [v249 name];
        v262 = v17;
        alloca = v178;
        if (v178)
        {
          v179 = v178;
        }

        else
        {
          v179 = @"<entire workflow>";
        }

        v180 = [v291 name];
        v243 = [v18 startTime];
        [v243 debugDescription];
        v286 = v33;
        v181 = v271 = v30;
        v182 = [v18 endTime];
        [v182 debugDescription];
        v183 = v257 = v31;
        *buf = 138413826;
        v295 = v177;
        v296 = 2112;
        v297 = v179;
        v42 = v290;
        v298 = 2112;
        v299 = v180;
        v300 = 2048;
        v301 = v277;
        v302 = 2112;
        v303 = v181;
        v304 = 2048;
        v305 = a8;
        v306 = 2112;
        v307 = v183;
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports this dispatch queue, but neither start %llu@%@ nor end %llu@%@ are on a dispatch queue", buf, 0x48u);

        v31 = v257;
        v43 = v292;

        v30 = v271;
        v33 = v286;

        v17 = v262;
      }

      *__error() = v45;
    }

    v48 = 0;
    if (byte_100127EC9 == 1)
    {
      v250 = a8;
      v49 = v289;
      v36 = v17;
      v50 = v293;
      if (dword_100127558 > 3)
      {
        goto LABEL_126;
      }

      v285 = v33;
      v266 = v30;
      v254 = v31;
      v247 = *__error();
      v51 = [v43 workflow];
      v52 = [v51 name];
      v53 = v36;
      v54 = v52;
      v258 = v53;
      v55 = [v53 signpost];
      v56 = [v55 name];
      v57 = v56;
      if (v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = @"<entire workflow>";
      }

      v59 = [v291 name];
      v60 = [v18 startTime];
      v61 = [v60 debugDescription];
      v275 = v18;
      v62 = [v18 endTime];
      v63 = [v62 debugDescription];
      v64 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, but neither start %llu@%@ nor end %llu@%@ are on a dispatch queue", v54, v58, v59, v277, v61, v250, v63);

      if (v64)
      {
        CStringPtr = CFStringGetCStringPtr(v64, 0x8000100u);
        if (CStringPtr)
        {
          v68 = CStringPtr;
          v69 = 0;
        }

        else
        {
          v68 = malloc_type_calloc(0x400uLL, 1uLL, 0xAF3CA365uLL);
          CFStringGetCString(v64, v68, 1024, 0x8000100u);
          v69 = v68;
        }

        v43 = v292;
        v31 = v254;
        v36 = v258;
        v30 = v266;
        v18 = v275;
        v50 = v293;
        v33 = v285;
        if (qword_100127ED0)
        {
          v143 = qword_100127ED0;
        }

        else
        {
          v143 = __stderrp;
        }

        fprintf(v143, "%s\n", v68);
        if (v69)
        {
          free(v69);
        }

        CFRelease(v64);
        v49 = v289;
      }

      else
      {
        v121 = sub_10003E080(v65, v66);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
        {
          allocb = [v292 workflow];
          v188 = [(__CFAllocator *)allocb name];
          v189 = [v258 signpost];
          v190 = [v189 name];
          v191 = v190;
          if (v190)
          {
            v192 = v190;
          }

          else
          {
            v192 = @"<entire workflow>";
          }

          v193 = [v291 name];
          v194 = [v275 startTime];
          v195 = [v194 debugDescription];
          v196 = [v275 endTime];
          v197 = [v196 debugDescription];
          *buf = 138413826;
          v295 = v188;
          v296 = 2112;
          v297 = v192;
          v298 = 2112;
          v299 = v193;
          v300 = 2048;
          v301 = v277;
          v302 = 2112;
          v303 = v195;
          v304 = 2048;
          v305 = v250;
          v306 = 2112;
          v307 = v197;
          _os_log_fault_impl(&_mh_execute_header, v121, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, but neither start %llu@%@ nor end %llu@%@ are on a dispatch queue", buf, 0x48u);
        }

        if (qword_100127ED0)
        {
          v122 = qword_100127ED0;
        }

        else
        {
          v122 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v122);
        v43 = v292;
        v31 = v254;
        v36 = v258;
        v49 = v289;
        v30 = v266;
        v18 = v275;
        v50 = v293;
        v33 = v285;
      }

      v48 = 0;
      *__error() = v247;
      goto LABEL_125;
    }

    v49 = v289;
LABEL_48:
    v36 = v17;
    v50 = v293;
    goto LABEL_126;
  }

  if (v30 == v32)
  {
    v48 = v32;
    v49 = v289;
    v42 = v290;
    v43 = v292;
    goto LABEL_48;
  }

  v284 = v32;
  v34 = [v293 startTimestamp];
  v35 = [v18 startTime];
  v36 = v17;
  v37 = v30;
  if ([v34 le:v35])
  {
    v38 = [v293 endTimestamp];
    [v18 startTime];
    v40 = v39 = v18;
    v41 = [v38 ge:v40];

    v18 = v39;
  }

  else
  {
    v41 = 0;
  }

  v70 = [v31 startTimestamp];
  v71 = [v18 endTime];
  v276 = v18;
  if ([v70 le:v71])
  {
    v72 = [v31 endTimestamp];
    v73 = v18;
    v74 = v72;
    v75 = [v73 endTime];
    v76 = [v74 ge:v75];

    if ((v41 & v76) == 1)
    {
      v18 = v276;
      v42 = v290;
      v30 = v37;
      v33 = v284;
      v50 = v293;
      if (byte_100127EC8 == 1)
      {
        v77 = __error();
        v78 = *v77;
        v80 = sub_10003E080(v77, v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v282 = [v292 workflow];
          v207 = [v282 name];
          v264 = [v36 signpost];
          v208 = [v264 name];
          v209 = v208;
          if (v208)
          {
            v210 = v208;
          }

          else
          {
            v210 = @"<entire workflow>";
          }

          [v291 name];
          v211 = v273 = v30;
          v212 = [v273 debugDescription];
          v213 = [v284 debugDescription];
          *buf = 138413314;
          v295 = v207;
          v296 = 2112;
          v297 = v210;
          v18 = v276;
          v298 = 2112;
          v299 = v211;
          v300 = 2112;
          v301 = v212;
          v302 = 2112;
          v303 = v213;
          _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, so not reporting", buf, 0x34u);

          v50 = v293;
          v33 = v284;

          v30 = v273;
          v42 = v290;
        }

        *__error() = v78;
      }

      v48 = 0;
      v43 = v292;
      if (byte_100127EC9 == 1)
      {
        v49 = v289;
        if (dword_100127558 > 3)
        {
          goto LABEL_126;
        }

        v255 = v31;
        v278 = *__error();
        v81 = [v292 workflow];
        v82 = [v81 name];
        v259 = v36;
        [v36 signpost];
        v84 = v83 = v30;
        v85 = [v84 name];
        v86 = v85;
        if (v85)
        {
          v87 = v85;
        }

        else
        {
          v87 = @"<entire workflow>";
        }

        v88 = [v291 name];
        v267 = v83;
        v89 = [v83 debugDescription];
        v90 = [v33 debugDescription];
        v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, so not reporting", v82, v87, v88, v89, v90);

        if (v91)
        {
          v94 = CFStringGetCStringPtr(v91, 0x8000100u);
          if (!v94)
          {
            v95 = 1183534;
LABEL_117:
            v119 = malloc_type_calloc(0x400uLL, 1uLL, v95);
            CFStringGetCString(v91, v119, 1024, 0x8000100u);
            v120 = v119;
            goto LABEL_118;
          }

          goto LABEL_46;
        }

        v166 = sub_10003E080(v92, v93);
        if (!os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_101;
        }

        v167 = [v292 workflow];
        v168 = [v167 name];
        v169 = [v259 signpost];
        v224 = [v169 name];
        v171 = v224;
        if (v224)
        {
          v225 = v224;
        }

        else
        {
          v225 = @"<entire workflow>";
        }

        v173 = [v291 name];
        v174 = [v267 debugDescription];
        v175 = [v284 debugDescription];
        *buf = 138413314;
        v295 = v168;
        v296 = 2112;
        v297 = v225;
        v298 = 2112;
        v299 = v173;
        v300 = 2112;
        v301 = v174;
        v302 = 2112;
        v303 = v175;
        v176 = "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, so not reporting";
LABEL_163:
        _os_log_fault_impl(&_mh_execute_header, v166, OS_LOG_TYPE_FAULT, v176, buf, 0x34u);

        goto LABEL_101;
      }

LABEL_115:
      v49 = v289;
      goto LABEL_126;
    }

    v18 = v276;
    v42 = v290;
    v43 = v292;
    if (v41)
    {
      goto LABEL_55;
    }

    if (v76)
    {
      v30 = v37;
      v33 = v284;
      v50 = v293;
      if (byte_100127EC8 == 1)
      {
        v144 = __error();
        v145 = *v144;
        v147 = sub_10003E080(v144, v146);
        if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
        {
          v283 = [v292 workflow];
          v226 = [v283 name];
          v265 = [v36 signpost];
          v227 = [v265 name];
          v228 = v227;
          if (v227)
          {
            v229 = v227;
          }

          else
          {
            v229 = @"<entire workflow>";
          }

          [v291 name];
          v230 = v274 = v30;
          v231 = [v274 debugDescription];
          v232 = [v284 debugDescription];
          *buf = 138413314;
          v295 = v226;
          v296 = 2112;
          v297 = v229;
          v18 = v276;
          v298 = 2112;
          v299 = v230;
          v300 = 2112;
          v301 = v231;
          v302 = 2112;
          v303 = v232;
          _os_log_debug_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEBUG, "WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and end is at the exact time, so using that", buf, 0x34u);

          v50 = v293;
          v33 = v284;

          v30 = v274;
          v42 = v290;
        }

        *__error() = v145;
        v43 = v292;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v280 = *__error();
        v148 = [v43 workflow];
        v149 = [v148 name];
        v261 = v36;
        [v36 signpost];
        v151 = v150 = v30;
        v152 = [v151 name];
        v153 = v152;
        if (v152)
        {
          v154 = v152;
        }

        else
        {
          v154 = @"<entire workflow>";
        }

        v155 = [v291 name];
        v270 = v150;
        v156 = [v150 debugDescription];
        v157 = [v33 debugDescription];
        v158 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and end is at the exact time, so using that", v149, v154, v155, v156, v157);

        if (v158)
        {
          v161 = CFStringGetCStringPtr(v158, 0x8000100u);
          if (v161)
          {
            v162 = v161;
            v163 = 0;
          }

          else
          {
            v162 = malloc_type_calloc(0x400uLL, 1uLL, 0xFA22BA8FuLL);
            CFStringGetCString(v158, v162, 1024, 0x8000100u);
            v163 = v162;
          }

          v43 = v292;
          v36 = v261;
          v30 = v270;
          v18 = v276;
          v50 = v293;
          v33 = v284;
          if (qword_100127ED0)
          {
            v214 = qword_100127ED0;
          }

          else
          {
            v214 = __stderrp;
          }

          fprintf(v214, "%s\n", v162);
          if (v163)
          {
            free(v163);
          }

          CFRelease(v158);
        }

        else
        {
          v198 = sub_10003E080(v159, v160);
          if (os_log_type_enabled(v198, OS_LOG_TYPE_FAULT))
          {
            v233 = [v292 workflow];
            v234 = [v233 name];
            v235 = [v261 signpost];
            v236 = [v235 name];
            v237 = v236;
            if (v236)
            {
              v238 = v236;
            }

            else
            {
              v238 = @"<entire workflow>";
            }

            v239 = [v291 name];
            v240 = [v270 debugDescription];
            v241 = [v284 debugDescription];
            *buf = 138413314;
            v295 = v234;
            v296 = 2112;
            v297 = v238;
            v298 = 2112;
            v299 = v239;
            v300 = 2112;
            v301 = v240;
            v302 = 2112;
            v303 = v241;
            _os_log_fault_impl(&_mh_execute_header, v198, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and end is at the exact time, so using that", buf, 0x34u);
          }

          if (qword_100127ED0)
          {
            v199 = qword_100127ED0;
          }

          else
          {
            v199 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v199);
          v43 = v292;
          v36 = v261;
          v30 = v270;
          v18 = v276;
          v50 = v293;
          v33 = v284;
        }

        *__error() = v280;
        v42 = v290;
      }

      v186 = v33;
      goto LABEL_114;
    }
  }

  else
  {

    v42 = v290;
    v43 = v292;
    if (v41)
    {
LABEL_55:
      v30 = v37;
      v33 = v284;
      v50 = v293;
      if (byte_100127EC8 == 1)
      {
        v123 = __error();
        v124 = *v123;
        v126 = sub_10003E080(v123, v125);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
        {
          v281 = [v292 workflow];
          v200 = [v281 name];
          v263 = v200;
          v272 = [v36 signpost];
          v201 = [v272 name];
          v253 = v201;
          if (v201)
          {
            v202 = v201;
          }

          else
          {
            v202 = @"<entire workflow>";
          }

          v203 = [v291 name];
          v204 = [v30 debugDescription];
          v205 = [v284 debugDescription];
          *buf = 138413314;
          v295 = v200;
          v296 = 2112;
          v297 = v202;
          v18 = v276;
          v298 = 2112;
          v299 = v203;
          v206 = v203;
          v300 = 2112;
          v301 = v204;
          v302 = 2112;
          v303 = v205;
          _os_log_debug_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEBUG, "WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and start is at the exact time, so using that", buf, 0x34u);

          v50 = v293;
          v33 = v284;

          v42 = v290;
        }

        *__error() = v124;
        v43 = v292;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v279 = *__error();
        v127 = [v43 workflow];
        v128 = [v127 name];
        v260 = v36;
        [v36 signpost];
        v130 = v129 = v30;
        v131 = [v130 name];
        v132 = v131;
        if (v131)
        {
          v133 = v131;
        }

        else
        {
          v133 = @"<entire workflow>";
        }

        v134 = [v291 name];
        v269 = v129;
        v135 = [v129 debugDescription];
        v136 = [v33 debugDescription];
        v137 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and start is at the exact time, so using that", v128, v133, v134, v135, v136);

        if (v137)
        {
          v140 = CFStringGetCStringPtr(v137, 0x8000100u);
          if (v140)
          {
            v141 = v140;
            v142 = 0;
          }

          else
          {
            v141 = malloc_type_calloc(0x400uLL, 1uLL, 0xD206951AuLL);
            CFStringGetCString(v137, v141, 1024, 0x8000100u);
            v142 = v141;
          }

          v43 = v292;
          v36 = v260;
          v30 = v269;
          v18 = v276;
          v50 = v293;
          v33 = v284;
          if (qword_100127ED0)
          {
            v185 = qword_100127ED0;
          }

          else
          {
            v185 = __stderrp;
          }

          fprintf(v185, "%s\n", v141);
          if (v142)
          {
            free(v142);
          }

          CFRelease(v137);
        }

        else
        {
          v164 = sub_10003E080(v138, v139);
          if (os_log_type_enabled(v164, OS_LOG_TYPE_FAULT))
          {
            v215 = [v292 workflow];
            v216 = [v215 name];
            v217 = [v260 signpost];
            v218 = [v217 name];
            v219 = v218;
            if (v218)
            {
              v220 = v218;
            }

            else
            {
              v220 = @"<entire workflow>";
            }

            v221 = [v291 name];
            v222 = [v269 debugDescription];
            v223 = [v284 debugDescription];
            *buf = 138413314;
            v295 = v216;
            v296 = 2112;
            v297 = v220;
            v298 = 2112;
            v299 = v221;
            v300 = 2112;
            v301 = v222;
            v302 = 2112;
            v303 = v223;
            _os_log_fault_impl(&_mh_execute_header, v164, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and start is at the exact time, so using that", buf, 0x34u);
          }

          if (qword_100127ED0)
          {
            v165 = qword_100127ED0;
          }

          else
          {
            v165 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v165);
          v43 = v292;
          v36 = v260;
          v30 = v269;
          v18 = v276;
          v50 = v293;
          v33 = v284;
        }

        *__error() = v279;
        v42 = v290;
      }

      v186 = v30;
LABEL_114:
      v48 = v186;
      goto LABEL_115;
    }
  }

  v30 = v37;
  v33 = v284;
  v50 = v293;
  if (byte_100127EC8 == 1)
  {
    v96 = __error();
    v97 = *v96;
    v99 = sub_10003E080(v96, v98);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      v256 = [v43 workflow];
      v100 = [v256 name];
      alloc = v100;
      v251 = [v36 signpost];
      v101 = [v251 name];
      v248 = v101;
      v102 = v43;
      if (v101)
      {
        v103 = v101;
      }

      else
      {
        v103 = @"<entire workflow>";
      }

      [v291 name];
      v104 = v268 = v30;
      v105 = [v268 debugDescription];
      v106 = [v284 debugDescription];
      *buf = 138413314;
      v295 = v100;
      v296 = 2112;
      v297 = v103;
      v43 = v102;
      v18 = v276;
      v298 = 2112;
      v299 = v104;
      v300 = 2112;
      v301 = v105;
      v302 = 2112;
      v303 = v106;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, neither at the exact right time, so not reporting", buf, 0x34u);

      v50 = v293;
      v33 = v284;

      v30 = v268;
      v42 = v290;
    }

    *__error() = v97;
  }

  v48 = 0;
  if (byte_100127EC9 != 1)
  {
    goto LABEL_115;
  }

  v49 = v289;
  if (dword_100127558 > 2)
  {
    goto LABEL_126;
  }

  v255 = v31;
  v278 = *__error();
  v107 = [v43 workflow];
  v108 = [v107 name];
  v259 = v36;
  [v36 signpost];
  v110 = v109 = v30;
  v111 = [v110 name];
  v112 = v111;
  if (v111)
  {
    v113 = v111;
  }

  else
  {
    v113 = @"<entire workflow>";
  }

  v114 = [v291 name];
  v267 = v109;
  v115 = [v109 debugDescription];
  v116 = [v33 debugDescription];
  v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, neither at the exact right time, so not reporting", v108, v113, v114, v115, v116);

  if (v91)
  {
    v94 = CFStringGetCStringPtr(v91, 0x8000100u);
    if (!v94)
    {
      v95 = 1235423414;
      goto LABEL_117;
    }

LABEL_46:
    v119 = v94;
    v120 = 0;
LABEL_118:
    v43 = v292;
    v31 = v255;
    v36 = v259;
    v30 = v267;
    v18 = v276;
    v50 = v293;
    v33 = v284;
    if (qword_100127ED0)
    {
      v187 = qword_100127ED0;
    }

    else
    {
      v187 = __stderrp;
    }

    fprintf(v187, "%s\n", v119);
    if (v120)
    {
      free(v120);
    }

    CFRelease(v91);
    goto LABEL_124;
  }

  v166 = sub_10003E080(v117, v118);
  if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
  {
    v167 = [v292 workflow];
    v168 = [v167 name];
    v169 = [v259 signpost];
    v170 = [v169 name];
    v171 = v170;
    if (v170)
    {
      v172 = v170;
    }

    else
    {
      v172 = @"<entire workflow>";
    }

    v173 = [v291 name];
    v174 = [v267 debugDescription];
    v175 = [v284 debugDescription];
    *buf = 138413314;
    v295 = v168;
    v296 = 2112;
    v297 = v172;
    v298 = 2112;
    v299 = v173;
    v300 = 2112;
    v301 = v174;
    v302 = 2112;
    v303 = v175;
    v176 = "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, neither at the exact right time, so not reporting";
    goto LABEL_163;
  }

LABEL_101:

  if (qword_100127ED0)
  {
    v184 = qword_100127ED0;
  }

  else
  {
    v184 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v184);
  v43 = v292;
  v31 = v255;
  v36 = v259;
  v30 = v267;
  v18 = v276;
  v50 = v293;
  v33 = v284;
LABEL_124:
  v48 = 0;
  *__error() = v278;
  v49 = v289;
LABEL_125:
  v42 = v290;
LABEL_126:

  if (v48)
  {
    sub_10004E210(v288, v287, v49, v18, v42, v48);
  }
}

void sub_10004DB40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100045D80;
  v50 = sub_100045D90;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100045D80;
  v44 = sub_100045D90;
  v45 = 0;
  v7 = [*(a1 + 32) startTime];
  v8 = [*(a1 + 32) endTime];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_10004DF74;
  v29 = &unk_100114F30;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v36 = *(a1 + 88);
  v37 = &v46;
  v38 = &v40;
  v39 = v52;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v30 = v14;
  v31 = v13;
  v32 = *(a1 + 64);
  v33 = *(a1 + 72);
  v15 = v6;
  v34 = v15;
  v35 = *(a1 + 80);
  [v15 enumerateThreadStatesBetweenStartTime:v7 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:v8 endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:0 block:&v26];

  v16 = v47[5];
  if (v16 && v41[5])
  {
    v17 = [v16 startTimestamp];
    v18 = [*(a1 + 32) startTime];
    if ([v17 gt:v18])
    {
      [v47[5] startTimestamp];
    }

    else
    {
      [*(a1 + 32) startTime];
    }
    v19 = ;

    v20 = [v47[5] endTimestamp];
    v21 = [*(a1 + 32) endTime];
    if ([v20 lt:v21])
    {
      [v47[5] endTimestamp];
    }

    else
    {
      [*(a1 + 32) endTime];
    }
    v22 = ;

    v23 = [*(a1 + 32) startTime];
    if (v19 == v23 && ([*(a1 + 32) endTime], v11 = objc_claimAutoreleasedReturnValue(), v22 == v11))
    {
      v24 = *(a1 + 32);
    }

    else
    {
      v24 = [SATimeRange timeRangeStart:v19 end:v22];
      if (v19 != v23)
      {
LABEL_15:

        v25 = [[SPWRReport alloc] initWithReportReason:*(a1 + 56) reportedSignpostTracker:*(a1 + 64) task:*(a1 + 72) timeRange:v24 thread:v15 dispatchQueue:0];
        [*(a1 + 80) addObject:v25];

        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

LABEL_16:

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(v52, 8);
}

void sub_10004DF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 160), 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10004DF74(uint64_t a1, void *a2)
{
  v23 = a2;
  v5 = [v23 name];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_30;
    }

    if ([v7 numberOfMatchesInString:v5 options:4 range:{0, objc_msgSend(v5, "length")}])
    {
LABEL_6:
      *(*(*(a1 + 96) + 8) + 24) = 1;
      v8 = *(*(a1 + 104) + 8);
      v10 = *(v8 + 40);
      v9 = (v8 + 40);
      if (!v10)
      {
        objc_storeStrong(v9, a2);
      }

      v11 = *(*(a1 + 112) + 8);
      v12 = v23;
      v13 = *(v11 + 40);
      *(v11 + 40) = v12;
      goto LABEL_24;
    }

    if (!*(a1 + 32))
    {
LABEL_30:
      if ([v6 isEqualToString:*(a1 + 40)])
      {
        goto LABEL_6;
      }
    }
  }

  *(*(*(a1 + 120) + 8) + 24) = 1;
  v14 = *(*(*(a1 + 104) + 8) + 40);
  if (v14 && *(*(*(a1 + 112) + 8) + 40))
  {
    v15 = [v14 startTimestamp];
    v16 = [*(a1 + 48) startTime];
    if ([v15 gt:v16])
    {
      [*(*(*(a1 + 104) + 8) + 40) startTimestamp];
    }

    else
    {
      [*(a1 + 48) startTime];
    }
    v13 = ;

    v17 = [*(*(*(a1 + 104) + 8) + 40) endTimestamp];
    v18 = [*(a1 + 48) endTime];
    if ([v17 lt:v18])
    {
      [*(*(*(a1 + 104) + 8) + 40) endTimestamp];
    }

    else
    {
      [*(a1 + 48) endTime];
    }
    v19 = ;

    v20 = [*(a1 + 48) startTime];
    if (v13 == v20 && ([*(a1 + 48) endTime], v2 = objc_claimAutoreleasedReturnValue(), v19 == v2))
    {
      v21 = *(a1 + 48);
    }

    else
    {
      v21 = [SATimeRange timeRangeStart:v13 end:v19];
      if (v13 != v20)
      {
LABEL_23:

        v22 = [[SPWRReport alloc] initWithReportReason:*(a1 + 56) reportedSignpostTracker:*(a1 + 64) task:*(a1 + 72) timeRange:v21 thread:*(a1 + 80) dispatchQueue:0];
        [*(a1 + 88) addObject:v22];

LABEL_24:
        goto LABEL_25;
      }
    }

    goto LABEL_23;
  }

LABEL_25:
}

void sub_10004E210(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v17 = [[SPWRReport alloc] initWithReportReason:v15 reportedSignpostTracker:v14 task:v12 timeRange:v13 thread:0 dispatchQueue:v11];

  [v16 addObject:v17];
}

void sub_10004E2F8(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 dispatchQueueLabel];
  v5 = v4;
  if (v4)
  {
    v6 = a1[4];
    if (v6)
    {
      if ([v6 numberOfMatchesInString:v4 options:4 range:{0, objc_msgSend(v4, "length")}])
      {
LABEL_6:
        v7 = *(*(a1[6] + 8) + 40);
        if (v7)
        {
          [v7 addObject:v11];
        }

        else
        {
          v8 = [[NSMutableArray alloc] initWithObjects:{v11, 0}];
          v9 = *(a1[6] + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;
        }

        goto LABEL_9;
      }

      if (a1[4])
      {
        goto LABEL_9;
      }
    }

    if (![v5 isEqualToString:a1[5]])
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_9:
}

void sub_10004E3E4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_10004E45C(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v14;
    [v4 doubleValue];
    v6 = v5 < 0.0;
    if (v5 == 0.0)
    {
      v7 = +[NSDecimalNumber zero];
    }

    else
    {
      v8 = v5;
      v9 = -v5;
      if (!v6)
      {
        v9 = v8;
      }

      v10 = vcvtpd_s64_f64(log10(v9));
      v11 = llround(v8 * __exp10((3 - v10)));
      if (v11 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = -v11;
      }

      v7 = [NSDecimalNumber decimalNumberWithMantissa:v12 exponent:(v10 - 3) isNegative:v11 >> 63];
    }

    v13 = v7;
    if (v7 != v4)
    {
      v3[2](v3, v7);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      sub_1000484AC(v14);
    }
  }
}

void sub_10004E5FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 removeObject:v4];
  [*(a1 + 32) addObject:v5];
}

uint64_t sub_10004E684(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_10004E6AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_10004E6D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10004E6F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void sub_10004E708(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x1Cu);
}

void sub_10004E728(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_10004E748(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x16u);
}

uint64_t sub_10004E764(char *buffer)
{

  return CFStringGetCString(v1, buffer, 1024, 0x8000100u);
}

void sub_10004E7A4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_10004E7CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void sub_10004E7EC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_10004E80C()
{

  return [v0 pid];
}

void sub_10004E824(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, const char *a8, double a9, double a10, void *a11)
{
  v18 = HIDWORD(a1);
  v19 = a11;
  memset(buffer, 0, sizeof(buffer));
  proc_name(a1, buffer, 0x80u);
  if ((a3 & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v20 = __error();
      v21 = *v20;
      v23 = sub_10003E080(v20, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 136449282;
        *&buf[4] = sub_10003E020(a3);
        *&buf[12] = 1024;
        *&buf[14] = a3;
        *&buf[18] = 2082;
        *&buf[20] = buffer;
        *&buf[28] = 1024;
        *&buf[30] = a1;
        *&buf[34] = 1024;
        *&buf[36] = v18;
        *&buf[40] = 2048;
        *&buf[42] = a4;
        *&buf[50] = 2048;
        *&buf[52] = a9;
        *&buf[60] = 2048;
        *&buf[62] = a10;
        *&buf[70] = 2048;
        *&buf[72] = a5;
        *&buf[80] = 2080;
        *&buf[82] = a6;
        *&buf[90] = 2080;
        *&buf[92] = a7;
        v380 = 2080;
        v381 = a8;
        v382 = 1024;
        v383 = v19 != 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}s [%d]: generate spindump: requested by %{public}s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d", buf, 0x74u);
      }

      *__error() = v21;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 1)
    {
      goto LABEL_39;
    }

    v25 = *__error();
    v26 = sub_10003E020(a3);
    v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: requested by %s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d", v26, a3, buffer, a1, v18, a4, *&a9, *&a10, a5, a6, a7, a8, v19 != 0);
    if (!v27)
    {
      v29 = sub_10003E080(0, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        v30 = sub_10003E020(a3);
        *buf = 136318210;
        *&buf[4] = v30;
        *&buf[12] = 1024;
        *&buf[14] = a3;
        *&buf[18] = 2080;
        *&buf[20] = buffer;
        *&buf[28] = 1024;
        *&buf[30] = a1;
        *&buf[34] = 1024;
        *&buf[36] = v18;
        *&buf[40] = 2048;
        *&buf[42] = a4;
        *&buf[50] = 2048;
        *&buf[52] = a9;
        *&buf[60] = 2048;
        *&buf[62] = a10;
        *&buf[70] = 2048;
        *&buf[72] = a5;
        *&buf[80] = 2080;
        *&buf[82] = a6;
        *&buf[90] = 2080;
        *&buf[92] = a7;
        v380 = 2080;
        v381 = a8;
        v382 = 1024;
        v383 = v19 != 0;
        v31 = "Unable to format: %s [%d]: generate spindump: requested by %s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d";
        v32 = v29;
        v33 = 116;
LABEL_257:
        _os_log_fault_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, v31, buf, v33);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (byte_100127EC8)
  {
    v34 = __error();
    v35 = *v34;
    v37 = sub_10003E080(v34, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 136448770;
      *&buf[4] = buffer;
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v18;
      *&buf[24] = 2048;
      *&buf[26] = a4;
      *&buf[34] = 2048;
      *&buf[36] = a9;
      *&buf[44] = 2048;
      *&buf[46] = a10;
      *&buf[54] = 2048;
      *&buf[56] = a5;
      *&buf[64] = 2080;
      *&buf[66] = a6;
      *&buf[74] = 2080;
      *&buf[76] = a7;
      *&buf[84] = 2080;
      *&buf[86] = a8;
      *&buf[94] = 1024;
      *&buf[96] = v19 != 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "generate spindump: requested by %{public}s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d", buf, 0x64u);
    }

    *__error() = v35;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v25 = *__error();
    v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: requested by %s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d", buffer, a1, v18, a4, *&a9, *&a10, a5, a6, a7, a8, v19 != 0);
    if (!v27)
    {
      v29 = sub_10003E080(0, v39);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 136317698;
        *&buf[4] = buffer;
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v18;
        *&buf[24] = 2048;
        *&buf[26] = a4;
        *&buf[34] = 2048;
        *&buf[36] = a9;
        *&buf[44] = 2048;
        *&buf[46] = a10;
        *&buf[54] = 2048;
        *&buf[56] = a5;
        *&buf[64] = 2080;
        *&buf[66] = a6;
        *&buf[74] = 2080;
        *&buf[76] = a7;
        *&buf[84] = 2080;
        *&buf[86] = a8;
        *&buf[94] = 1024;
        *&buf[96] = v19 != 0;
        v31 = "Unable to format: generate spindump: requested by %s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d";
        v32 = v29;
        v33 = 100;
        goto LABEL_257;
      }

LABEL_34:

      if (qword_100127ED0)
      {
        v45 = qword_100127ED0;
      }

      else
      {
        v45 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v45);
LABEL_38:
      *__error() = v25;
      goto LABEL_39;
    }

LABEL_24:
    v40 = v27;
    CStringPtr = CFStringGetCStringPtr(v27, 0x8000100u);
    if (CStringPtr)
    {
      v42 = CStringPtr;
      v43 = 0;
    }

    else
    {
      v42 = malloc_type_calloc(0x400uLL, 1uLL, 0x536CCE5uLL);
      CFStringGetCString(v40, v42, 1024, 0x8000100u);
      v43 = v42;
    }

    if (qword_100127ED0)
    {
      v44 = qword_100127ED0;
    }

    else
    {
      v44 = __stderrp;
    }

    fprintf(v44, "%s\n", v42);
    if (v43)
    {
      free(v43);
    }

    CFRelease(v40);
    goto LABEL_38;
  }

LABEL_39:
  if (a9 == 0.0)
  {
    a9 = 10.0;
  }

  *v377 = 0u;
  v378 = 0u;
  if (a10 == 0.0)
  {
    v46 = 0.01;
  }

  else
  {
    v46 = a10;
  }

  memset(&v374, 0, sizeof(v374));
  v373 = time(0);
  localtime_r(&v373, &v374);
  strftime(v377, 0x20uLL, "%Y-%m-%d-%T", &v374);
  v47 = malloc_type_calloc(1uLL, 0x400uLL, 0x74332153uLL);
  v48 = v47;
  if (!a8 || !*a8)
  {
    a8 = buffer;
  }

  if (snprintf(v47, 0x400uLL, "/var/mobile/Library/Logs/CrashReporter/%s.%s.spindump.txt", a8, v377) < 0x400)
  {
    v49 = malloc_type_calloc(1uLL, 0x400uLL, 0x15087752uLL);
    if (dirname_r(v48, v49))
    {
      v50 = malloc_type_calloc(1uLL, 0x400uLL, 0x55EF5E1AuLL);
      if (basename_r(v48, v50))
      {
        v51 = realpath_DARWIN_EXTSN(v49, 0);
        if (v51)
        {
          v52 = v51;
          v357 = v19;
          v53 = realpath_DARWIN_EXTSN("/var/mobile/Library/Logs/CrashReporter", 0);
          if (v53)
          {
            v58 = v53;
            v59 = *v53;
            if (v59 == 47)
            {
              v60 = -v53[1];
            }

            else
            {
              v60 = 47 - v59;
            }

            if (v60)
            {
              v359 = v48;
              if ((a3 & 0x80000000) != 0)
              {
                if (byte_100127EC8)
                {
                  v356 = a5;
                  v90 = v50;
                  v91 = __error();
                  v92 = *v91;
                  v94 = sub_10003E080(v91, v93);
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315906;
                    *&buf[4] = v49;
                    *&buf[12] = 2080;
                    *&buf[14] = v90;
                    *&buf[22] = 2080;
                    *&buf[24] = v52;
                    *&buf[32] = 2080;
                    *&buf[34] = v58;
                    _os_log_debug_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEBUG, "dir %s, fullfilename %s, realDir %s, expectedRealDir %s", buf, 0x2Au);
                  }

                  *__error() = v92;
                  v50 = v90;
                  a5 = v356;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 0)
                {
                  v95 = *__error();
                  v355 = v50;
                  v96 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"dir %s, fullfilename %s, realDir %s, expectedRealDir %s", v49, v50, v52, v58);
                  if (!v96)
                  {
                    v177 = sub_10003E080(0, v97);
                    if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136315906;
                      *&buf[4] = v49;
                      *&buf[12] = 2080;
                      *&buf[14] = v355;
                      *&buf[22] = 2080;
                      *&buf[24] = v52;
                      *&buf[32] = 2080;
                      *&buf[34] = v58;
                      _os_log_fault_impl(&_mh_execute_header, v177, OS_LOG_TYPE_FAULT, "Unable to format: dir %s, fullfilename %s, realDir %s, expectedRealDir %s", buf, 0x2Au);
                    }

                    if (qword_100127ED0)
                    {
                      v178 = qword_100127ED0;
                    }

                    else
                    {
                      v178 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v178);
                    goto LABEL_119;
                  }

                  v89 = v96;
                  v353 = v95;
                  goto LABEL_89;
                }
              }

              else
              {
                if (byte_100127EC8)
                {
                  v354 = a5;
                  v81 = v50;
                  v82 = __error();
                  v83 = *v82;
                  v85 = sub_10003E080(v82, v84);
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                  {
                    v197 = sub_10003E020(a3);
                    *buf = 136447490;
                    *&buf[4] = v197;
                    *&buf[12] = 1024;
                    *&buf[14] = a3;
                    *&buf[18] = 2080;
                    *&buf[20] = v49;
                    *&buf[28] = 2080;
                    *&buf[30] = v81;
                    *&buf[38] = 2080;
                    *&buf[40] = v52;
                    *&buf[48] = 2080;
                    *&buf[50] = v58;
                    _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "%{public}s [%d]: dir %s, fullfilename %s, realDir %s, expectedRealDir %s", buf, 0x3Au);
                  }

                  *__error() = v83;
                  v50 = v81;
                  a5 = v354;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 0)
                {
                  v353 = *__error();
                  v86 = sub_10003E020(a3);
                  v355 = v50;
                  v87 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: dir %s, fullfilename %s, realDir %s, expectedRealDir %s", v86, a3, v49, v50, v52, v58);
                  if (!v87)
                  {
                    v112 = sub_10003E080(0, v88);
                    if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
                    {
                      v204 = sub_10003E020(a3);
                      *buf = 136316418;
                      *&buf[4] = v204;
                      *&buf[12] = 1024;
                      *&buf[14] = a3;
                      *&buf[18] = 2080;
                      *&buf[20] = v49;
                      *&buf[28] = 2080;
                      *&buf[30] = v355;
                      *&buf[38] = 2080;
                      *&buf[40] = v52;
                      *&buf[48] = 2080;
                      *&buf[50] = v58;
                      _os_log_fault_impl(&_mh_execute_header, v112, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: dir %s, fullfilename %s, realDir %s, expectedRealDir %s", buf, 0x3Au);
                    }

                    if (qword_100127ED0)
                    {
                      v113 = qword_100127ED0;
                    }

                    else
                    {
                      v113 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v113);
                    goto LABEL_118;
                  }

                  v89 = v87;
LABEL_89:
                  v98 = CFStringGetCStringPtr(v89, 0x8000100u);
                  if (v98)
                  {
                    v99 = v98;
                    v100 = 0;
                  }

                  else
                  {
                    v99 = malloc_type_calloc(0x400uLL, 1uLL, 0xA8E24A99uLL);
                    CFStringGetCString(v89, v99, 1024, 0x8000100u);
                    v100 = v99;
                  }

                  if (qword_100127ED0)
                  {
                    v114 = qword_100127ED0;
                  }

                  else
                  {
                    v114 = __stderrp;
                  }

                  fprintf(v114, "%s\n", v99);
                  if (v100)
                  {
                    free(v100);
                  }

                  CFRelease(v89);
                  v48 = v359;
LABEL_118:
                  v95 = v353;
LABEL_119:
                  *__error() = v95;
                  v50 = v355;
                }
              }

              v115 = strcmp(v58, v52);
              free(v49);
              free(v58);
              if (!v115)
              {
                v116 = snprintf(v48, 0x400uLL, "%s/%s", v52, v50);
                free(v50);
                free(v52);
                if (v116 < 0x400)
                {
                  v372 = 0;
                  if (a6)
                  {
                    asprintf(&v372, "Requested by %s [%d] - %s");
                  }

                  else
                  {
                    asprintf(&v372, "Requested by %s [%d]");
                  }

                  if ((a5 & 0x80) == 0)
                  {
                    SAMachAbsTimeSecondsGetCurrent();
                    v118 = v117;
                    if ((a5 & 0x20) != 0)
                    {
                      v119 = 2;
                    }

                    else
                    {
                      v119 = 3;
                    }

                    if ((a5 & 0x40) != 0)
                    {
                      v120 = 384;
                    }

                    else
                    {
                      v120 = 385;
                    }

                    if (a7)
                    {
                      v121 = strdup(a7);
                    }

                    else
                    {
                      v121 = 0;
                    }

                    v140 = a9 + v118;
                    if (v357)
                    {
                      v141 = qos_class_self();
                    }

                    else
                    {
                      v141 = 9;
                    }

                    v155 = dispatch_get_global_queue(v141, 0);
                    v363[0] = _NSConcreteStackBlock;
                    v363[1] = 3221225472;
                    v363[2] = sub_1000516E8;
                    v363[3] = &unk_100115020;
                    v365 = a3;
                    v364[1] = v372;
                    v364[2] = v121;
                    v364[3] = a5;
                    v364[4] = v359;
                    v19 = v357;
                    v156 = v357;
                    v364[0] = v156;
                    v366 = a1;
                    v367 = a2;
                    v157 = sub_10008E8AC(a3, (v46 * 1000000.0), 0, v119, 0, v120, v155, v363, v140);

                    if (v157)
                    {
LABEL_274:

                      v137 = v364;
LABEL_275:

                      goto LABEL_276;
                    }

                    if ((a3 & 0x80000000) != 0)
                    {
                      v162 = v359;
                      if (byte_100127EC8)
                      {
                        v179 = __error();
                        v180 = *v179;
                        v182 = sub_10003E080(v179, v181);
                        if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000A75EC();
                        }

                        *__error() = v180;
                      }

                      if (byte_100127EC9 != 1 || dword_100127558 > 3)
                      {
                        goto LABEL_268;
                      }

                      v163 = *__error();
                      v183 = *__error();
                      v184 = __error();
                      v185 = strerror(*v184);
                      v186 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: unable to sample process: %d (%s)", v183, v185);
                      if (!v186)
                      {
                        v200 = sub_10003E080(0, v187);
                        if (os_log_type_enabled(v200, OS_LOG_TYPE_FAULT))
                        {
                          sub_1000A767C();
                        }

                        if (qword_100127ED0)
                        {
                          v201 = qword_100127ED0;
                        }

                        else
                        {
                          v201 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v201);
                        goto LABEL_267;
                      }

                      v188 = v186;
                      v189 = CFStringGetCStringPtr(v186, 0x8000100u);
                      if (v189)
                      {
                        v190 = v189;
                        v191 = 0;
                      }

                      else
                      {
                        v190 = malloc_type_calloc(0x400uLL, 1uLL, 0xF1AA2B40uLL);
                        CFStringGetCString(v188, v190, 1024, 0x8000100u);
                        v191 = v190;
                      }

                      if (qword_100127ED0)
                      {
                        v202 = qword_100127ED0;
                      }

                      else
                      {
                        v202 = __stderrp;
                      }

                      fprintf(v202, "%s\n", v190);
                      if (v191)
                      {
                        free(v191);
                      }

                      v199 = v188;
                    }

                    else
                    {
                      if (byte_100127EC8)
                      {
                        v158 = __error();
                        v159 = *v158;
                        v161 = sub_10003E080(v158, v160);
                        if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000A770C();
                        }

                        *__error() = v159;
                      }

                      v162 = v359;
                      if (byte_100127EC9 != 1 || dword_100127558 > 3)
                      {
                        goto LABEL_268;
                      }

                      v163 = *__error();
                      v164 = sub_10003E020(a3);
                      v165 = *__error();
                      v166 = __error();
                      v167 = strerror(*v166);
                      v168 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: unable to sample process: %d (%s)", v164, a3, v165, v167);
                      if (!v168)
                      {
                        v195 = sub_10003E080(0, v169);
                        if (os_log_type_enabled(v195, OS_LOG_TYPE_FAULT))
                        {
                          sub_1000A77AC();
                        }

                        if (qword_100127ED0)
                        {
                          v196 = qword_100127ED0;
                        }

                        else
                        {
                          v196 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v196);
                        v19 = v357;
                        goto LABEL_266;
                      }

                      v170 = v168;
                      v171 = CFStringGetCStringPtr(v168, 0x8000100u);
                      if (v171)
                      {
                        v172 = v171;
                        v173 = 0;
                      }

                      else
                      {
                        v172 = malloc_type_calloc(0x400uLL, 1uLL, 0xF1AA2B40uLL);
                        CFStringGetCString(v170, v172, 1024, 0x8000100u);
                        v173 = v172;
                      }

                      v19 = v357;
                      if (qword_100127ED0)
                      {
                        v198 = qword_100127ED0;
                      }

                      else
                      {
                        v198 = __stderrp;
                      }

                      fprintf(v198, "%s\n", v172);
                      if (v173)
                      {
                        free(v173);
                      }

                      v199 = v170;
                    }

                    CFRelease(v199);
LABEL_266:
                    v162 = v359;
LABEL_267:
                    *__error() = v163;
LABEL_268:
                    if (v19)
                    {
                      v203 = __error();
                      (*(v156 + 2))(v156, *v203, 0);
                    }

                    free(v162);
                    if (v372)
                    {
                      free(v372);
                    }

                    if (v121)
                    {
                      free(v121);
                    }

                    goto LABEL_274;
                  }

                  v122 = v372;
                  v368[0] = _NSConcreteStackBlock;
                  v368[1] = 3221225472;
                  v369 = sub_100051670;
                  v370 = &unk_100114FF8;
                  v371[1] = v359;
                  v371[2] = v372;
                  v371[0] = v357;
                  v361 = v368;
                  v123 = 2;
                  v124 = malloc_type_calloc(2uLL, 8uLL, 0x10040436913F5uLL);
                  v125 = v124;
                  v376 = 0;
                  *v124 = "/usr/sbin/spindump";
                  v124[1] = "-noIPC";
                  if ((a3 & 0x80000000) != 0)
                  {
                    v126 = 0;
                    if (!a4)
                    {
LABEL_137:
                      v128 = v123 + 2;
                      v129 = malloc_type_realloc(v125, 8 * (v123 + 2), 0x10040436913F5uLL);
                      v130 = v129;
                      v131 = &v129[8 * v123];
                      if (round(a9) <= 0.0)
                      {
                        v132 = 1.0;
                      }

                      else
                      {
                        v132 = a9;
                      }

                      asprintf(&v129[8 * v123], "%.0f", v132);
                      v133 = v46 * 1000000.0;
                      if (round(v46 * 1000000.0) <= 0.0)
                      {
                        v133 = 1.0;
                      }

                      asprintf(v131 + 1, "%.0fu", v133);
                      LOBYTE(v376) = (3 << v123) | v126;
                      if ((a5 & 1) == 0)
                      {
                        v134 = v123 + 3;
                        v130 = malloc_type_realloc(v130, 8 * v134, 0x10040436913F5uLL);
                        *&v130[8 * v128] = "-timeline";
                        v128 = v134;
                      }

                      v19 = v357;
                      if ((a5 & 2) != 0)
                      {
                        v130 = malloc_type_realloc(v130, 8 * (v128 + 1), 0x10040436913F5uLL);
                        *&v130[8 * v128++] = "-noText";
                        if ((a5 & 4) == 0)
                        {
LABEL_146:
                          if ((a5 & 8) == 0)
                          {
                            goto LABEL_147;
                          }

                          goto LABEL_157;
                        }
                      }

                      else if ((a5 & 4) == 0)
                      {
                        goto LABEL_146;
                      }

                      v130 = malloc_type_realloc(v130, 8 * (v128 + 1), 0x10040436913F5uLL);
                      *&v130[8 * v128++] = "-noBinary";
                      if ((a5 & 8) == 0)
                      {
LABEL_147:
                        if ((a5 & 0x20) == 0)
                        {
                          goto LABEL_148;
                        }

                        goto LABEL_158;
                      }

LABEL_157:
                      v130 = malloc_type_realloc(v130, 8 * (v128 + 1), 0x10040436913F5uLL);
                      *&v130[8 * v128++] = "-noSymbolicate";
                      if ((a5 & 0x20) == 0)
                      {
LABEL_148:
                        if ((a5 & 0x40) == 0)
                        {
                          goto LABEL_149;
                        }

                        goto LABEL_159;
                      }

LABEL_158:
                      v130 = malloc_type_realloc(v130, 8 * (v128 + 1), 0x10040436913F5uLL);
                      *&v130[8 * v128++] = "-onlyTarget";
                      if ((a5 & 0x40) == 0)
                      {
LABEL_149:
                        if (!v122)
                        {
LABEL_151:
                          if (a7)
                          {
                            v130 = malloc_type_realloc(v130, 8 * (v128 + 2), 0x10040436913F5uLL);
                            v136 = &v130[8 * v128];
                            *v136 = "-signature";
                            *(v136 + 1) = a7;
                            v128 += 2;
                          }

                          v137 = v371;
                          if (v359)
                          {
                            v138 = v128 + 2;
                            v130 = malloc_type_realloc(v130, 8 * v138, 0x10040436913F5uLL);
                            v139 = &v130[8 * v128];
                            *v139 = "-o";
                            *(v139 + 1) = v359;
                            v128 += 2;
                          }

                          else
                          {
                            v138 = v128;
                          }

                          v142 = malloc_type_realloc(v130, 8 * (v128 + 1), 0x10040436913F5uLL);
                          v142[v138] = 0;
                          v143 = _NSGetEnviron();
                          v144 = 1;
                          do
                          {
                            v145 = v144++ - 1;
                          }

                          while (*(*v143 + v145));
                          v146 = malloc_type_malloc(8 * v144, 0x10040436913F5uLL);
                          memmove(v146, *v143, 8 * v145);
                          *(v146 + v145) = "XPC_NULL_BOOTSTRAP=1";
                          *(v146 + v144 - 1) = 0;
                          v375 = 0;
                          v147 = SASpawnPlatformBinaryWithSigningIdentifier();
                          free(v146);
                          if ((v128 & 0x80000000) == 0)
                          {
                            v148 = 0;
                            do
                            {
                              if ((v377[(v148 >> 3) - 8] >> (v148 & 7)))
                              {
                                free(v142[v148]);
                              }

                              ++v148;
                            }

                            while (v128 + 1 != v148);
                          }

                          free(v142);
                          if (v147 < 1)
                          {
                            v174 = __error();
                            v152 = v361;
                            (v369)(v361, *v174, 0);
                          }

                          else
                          {
                            v149 = qos_class_self();
                            v150 = dispatch_get_global_queue(v149, 0);
                            v151 = dispatch_source_create(&_dispatch_source_type_proc, v147, 0x80000000uLL, v150);

                            *buf = _NSConcreteStackBlock;
                            *&buf[8] = 3221225472;
                            *&buf[16] = sub_10005B5B4;
                            *&buf[24] = &unk_1001150E8;
                            *&buf[48] = v147;
                            *&buf[52] = v375;
                            v152 = v361;
                            v153 = v361;
                            *&buf[32] = v151;
                            *&buf[40] = v153;
                            v154 = v151;
                            dispatch_source_set_event_handler(v154, buf);
                            dispatch_activate(v154);
                          }

                          goto LABEL_275;
                        }

LABEL_150:
                        v130 = malloc_type_realloc(v130, 8 * (v128 + 2), 0x10040436913F5uLL);
                        v135 = &v130[8 * v128];
                        *v135 = "-reason";
                        *(v135 + 1) = v122;
                        v128 += 2;
                        goto LABEL_151;
                      }

LABEL_159:
                      v130 = malloc_type_realloc(v130, 8 * (v128 + 1), 0x10040436913F5uLL);
                      *&v130[8 * v128++] = "-sampleWithoutTarget";
                      if (!v122)
                      {
                        goto LABEL_151;
                      }

                      goto LABEL_150;
                    }
                  }

                  else
                  {
                    v125 = malloc_type_realloc(v124, 0x18uLL, 0x10040436913F5uLL);
                    asprintf(v125 + 2, "%d", a3);
                    v123 = 3;
                    v126 = 4;
                    if (!a4)
                    {
                      goto LABEL_137;
                    }
                  }

                  v125 = malloc_type_realloc(v125, 8 * v123 + 16, 0x10040436913F5uLL);
                  v127 = &v125[v123];
                  *v127 = "-targetThreadID";
                  asprintf(v127 + 1, "%d", a3);
                  v126 |= 2 << v123;
                  v123 += 2;
                  goto LABEL_137;
                }

                v283 = __error();
                v284 = *v283;
                v286 = sub_10003E080(v283, v285);
                v287 = os_log_type_enabled(v286, OS_LOG_TYPE_FAULT);
                if ((a3 & 0x80000000) != 0)
                {
                  if (v287)
                  {
                    sub_1000A720C();
                  }

                  *__error() = v284;
                  v288 = v48;
                  if (byte_100127EC9 != 1 || dword_100127558 > 4)
                  {
                    goto LABEL_496;
                  }

                  v289 = *__error();
                  v291 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: filepath %s too large", v48);
                  if (!v291)
                  {
                    v293 = sub_10003E080(0, v310);
                    if (os_log_type_enabled(v293, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000A727C();
                    }

                    goto LABEL_491;
                  }
                }

                else
                {
                  if (v287)
                  {
                    sub_1000A72EC();
                  }

                  *__error() = v284;
                  v288 = v48;
                  if (byte_100127EC9 != 1 || dword_100127558 > 4)
                  {
                    goto LABEL_496;
                  }

                  v289 = *__error();
                  v290 = sub_10003E020(a3);
                  v291 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: filepath %s too large", v290, a3, v48);
                  if (!v291)
                  {
                    v293 = sub_10003E080(0, v292);
                    if (os_log_type_enabled(v293, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000A7374();
                    }

LABEL_491:

                    if (qword_100127ED0)
                    {
                      v347 = qword_100127ED0;
                    }

                    else
                    {
                      v347 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v347);
LABEL_495:
                    *__error() = v289;
                    v288 = v48;
LABEL_496:
                    v348 = v288;
                    goto LABEL_507;
                  }
                }

                v311 = v291;
                v312 = CFStringGetCStringPtr(v291, 0x8000100u);
                if (v312)
                {
                  v313 = v312;
                  v314 = 0;
                }

                else
                {
                  v313 = malloc_type_calloc(0x400uLL, 1uLL, 0x421F0A7BuLL);
                  CFStringGetCString(v311, v313, 1024, 0x8000100u);
                  v314 = v313;
                }

                if (qword_100127ED0)
                {
                  v342 = qword_100127ED0;
                }

                else
                {
                  v342 = __stderrp;
                }

                fprintf(v342, "%s\n", v313);
                if (v314)
                {
                  free(v314);
                }

                CFRelease(v311);
                goto LABEL_495;
              }

              v268 = v50;
              v269 = __error();
              v270 = *v269;
              v272 = sub_10003E080(v269, v271);
              v273 = os_log_type_enabled(v272, OS_LOG_TYPE_FAULT);
              if ((a3 & 0x80000000) != 0)
              {
                if (v273)
                {
                  sub_1000A73FC();
                }

                *__error() = v270;
                v274 = v48;
                if (byte_100127EC9 != 1 || dword_100127558 > 4)
                {
                  goto LABEL_506;
                }

                v275 = *__error();
                v304 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: filepath %s not in /var/mobile/Library/Logs/CrashReporter", v48);
                if (v304)
                {
                  v306 = v304;
                  v307 = CFStringGetCStringPtr(v304, 0x8000100u);
                  if (v307)
                  {
                    v308 = v307;
                    v309 = 0;
                  }

                  else
                  {
                    v308 = malloc_type_calloc(0x400uLL, 1uLL, 0xB9805842uLL);
                    CFStringGetCString(v306, v308, 1024, 0x8000100u);
                    v309 = v308;
                  }

                  if (qword_100127ED0)
                  {
                    v349 = qword_100127ED0;
                  }

                  else
                  {
                    v349 = __stderrp;
                  }

                  fprintf(v349, "%s\n", v308);
                  if (v309)
                  {
                    free(v309);
                  }

                  v345 = v306;
                  goto LABEL_504;
                }

                v341 = sub_10003E080(0, v305);
                if (os_log_type_enabled(v341, OS_LOG_TYPE_FAULT))
                {
                  sub_1000A746C();
                }
              }

              else
              {
                if (v273)
                {
                  sub_1000A74DC();
                }

                *__error() = v270;
                v274 = v48;
                if (byte_100127EC9 != 1 || dword_100127558 > 4)
                {
                  goto LABEL_506;
                }

                v275 = *__error();
                v276 = sub_10003E020(a3);
                v277 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: filepath %s not in /var/mobile/Library/Logs/CrashReporter", v276, a3, v48);
                if (v277)
                {
                  v279 = v277;
                  v280 = CFStringGetCStringPtr(v277, 0x8000100u);
                  if (v280)
                  {
                    v281 = v280;
                    v282 = 0;
                  }

                  else
                  {
                    v281 = malloc_type_calloc(0x400uLL, 1uLL, 0xB9805842uLL);
                    CFStringGetCString(v279, v281, 1024, 0x8000100u);
                    v282 = v281;
                  }

                  if (qword_100127ED0)
                  {
                    v344 = qword_100127ED0;
                  }

                  else
                  {
                    v344 = __stderrp;
                  }

                  fprintf(v344, "%s\n", v281);
                  if (v282)
                  {
                    free(v282);
                  }

                  v345 = v279;
LABEL_504:
                  CFRelease(v345);
LABEL_505:
                  *__error() = v275;
                  v274 = v48;
LABEL_506:
                  free(v52);
                  free(v268);
                  v348 = v274;
LABEL_507:
                  free(v348);
                  v19 = v357;
                  if (!v357)
                  {
                    goto LABEL_276;
                  }

                  goto LABEL_236;
                }

                v341 = sub_10003E080(0, v278);
                if (os_log_type_enabled(v341, OS_LOG_TYPE_FAULT))
                {
                  sub_1000A7564();
                }
              }

              if (qword_100127ED0)
              {
                v346 = qword_100127ED0;
              }

              else
              {
                v346 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v346);
              goto LABEL_505;
            }

            if ((a3 & 0x80000000) != 0)
            {
              if (byte_100127EC8)
              {
                v259 = __error();
                v260 = *v259;
                v262 = sub_10003E080(v259, v261);
                if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A784C(v262);
                }

                *__error() = v260;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v263 = *__error();
                v264 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)", "0 != strcmp(/, expectedRealDir)");
                if (v264)
                {
                  v328 = v264;
                  v329 = CFStringGetCStringPtr(v264, 0x8000100u);
                  if (v329)
                  {
                    v330 = v329;
                    v331 = 0;
                  }

                  else
                  {
                    v330 = malloc_type_calloc(0x400uLL, 1uLL, 0x67D5FEF9uLL);
                    CFStringGetCString(v328, v330, 1024, 0x8000100u);
                    v331 = v330;
                  }

                  if (qword_100127ED0)
                  {
                    v340 = qword_100127ED0;
                  }

                  else
                  {
                    v340 = __stderrp;
                  }

                  fprintf(v340, "%s\n", v330);
                  if (v331)
                  {
                    free(v331);
                  }

                  CFRelease(v328);
                }

                else
                {
                  v266 = sub_10003E080(0, v265);
                  if (os_log_type_enabled(v266, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A78D0();
                  }

                  if (qword_100127ED0)
                  {
                    v267 = qword_100127ED0;
                  }

                  else
                  {
                    v267 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v267);
                }

                *__error() = v263;
              }

              v350 = "0 != strcmp(/, expectedRealDir)";
              v336 = "%s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)";
            }

            else
            {
              if (byte_100127EC8)
              {
                v240 = __error();
                v241 = *v240;
                v243 = sub_10003E080(v240, v242);
                if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A7950();
                }

                *__error() = v241;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v244 = *__error();
                v245 = sub_10003E020(a3);
                v246 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)", v245, a3, "0 != strcmp(/, expectedRealDir)");
                if (v246)
                {
                  v324 = v246;
                  v325 = CFStringGetCStringPtr(v246, 0x8000100u);
                  if (v325)
                  {
                    v326 = v325;
                    v327 = 0;
                  }

                  else
                  {
                    v326 = malloc_type_calloc(0x400uLL, 1uLL, 0x67D5FEF9uLL);
                    CFStringGetCString(v324, v326, 1024, 0x8000100u);
                    v327 = v326;
                  }

                  if (qword_100127ED0)
                  {
                    v339 = qword_100127ED0;
                  }

                  else
                  {
                    v339 = __stderrp;
                  }

                  fprintf(v339, "%s\n", v326);
                  if (v327)
                  {
                    free(v327);
                  }

                  CFRelease(v324);
                }

                else
                {
                  v248 = sub_10003E080(0, v247);
                  if (os_log_type_enabled(v248, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A79E0();
                  }

                  if (qword_100127ED0)
                  {
                    v249 = qword_100127ED0;
                  }

                  else
                  {
                    v249 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v249);
                }

                *__error() = v244;
              }

              v351 = a3;
              v352 = "0 != strcmp(/, expectedRealDir)";
              v350 = sub_10003E020(a3);
              v336 = "%s [%d]: %s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)";
            }

            v338 = 1506;
          }

          else
          {
            if ((a3 & 0x80000000) != 0)
            {
              if (byte_100127EC8)
              {
                v250 = __error();
                v251 = *v250;
                v253 = sub_10003E080(v250, v252);
                if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A7A70(v253);
                }

                *__error() = v251;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v254 = *__error();
                v255 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)", "expectedRealDir");
                if (v255)
                {
                  v320 = v255;
                  v321 = CFStringGetCStringPtr(v255, 0x8000100u);
                  if (v321)
                  {
                    v322 = v321;
                    v323 = 0;
                  }

                  else
                  {
                    v322 = malloc_type_calloc(0x400uLL, 1uLL, 0xFF5D6DAEuLL);
                    CFStringGetCString(v320, v322, 1024, 0x8000100u);
                    v323 = v322;
                  }

                  if (qword_100127ED0)
                  {
                    v337 = qword_100127ED0;
                  }

                  else
                  {
                    v337 = __stderrp;
                  }

                  fprintf(v337, "%s\n", v322);
                  if (v323)
                  {
                    free(v323);
                  }

                  CFRelease(v320);
                }

                else
                {
                  v257 = sub_10003E080(0, v256);
                  if (os_log_type_enabled(v257, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A7AF4();
                  }

                  if (qword_100127ED0)
                  {
                    v258 = qword_100127ED0;
                  }

                  else
                  {
                    v258 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v258);
                }

                *__error() = v254;
              }

              v350 = "expectedRealDir";
              v336 = "%s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)";
            }

            else
            {
              if (byte_100127EC8)
              {
                v230 = __error();
                v231 = *v230;
                v233 = sub_10003E080(v230, v232);
                if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A7B74();
                }

                *__error() = v231;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v234 = *__error();
                v235 = sub_10003E020(a3);
                v236 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)", v235, a3, "expectedRealDir");
                if (v236)
                {
                  v316 = v236;
                  v317 = CFStringGetCStringPtr(v236, 0x8000100u);
                  if (v317)
                  {
                    v318 = v317;
                    v319 = 0;
                  }

                  else
                  {
                    v318 = malloc_type_calloc(0x400uLL, 1uLL, 0xFF5D6DAEuLL);
                    CFStringGetCString(v316, v318, 1024, 0x8000100u);
                    v319 = v318;
                  }

                  if (qword_100127ED0)
                  {
                    v335 = qword_100127ED0;
                  }

                  else
                  {
                    v335 = __stderrp;
                  }

                  fprintf(v335, "%s\n", v318);
                  if (v319)
                  {
                    free(v319);
                  }

                  CFRelease(v316);
                }

                else
                {
                  v238 = sub_10003E080(0, v237);
                  if (os_log_type_enabled(v238, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A7C04();
                  }

                  if (qword_100127ED0)
                  {
                    v239 = qword_100127ED0;
                  }

                  else
                  {
                    v239 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v239);
                }

                *__error() = v234;
              }

              v351 = a3;
              v352 = "expectedRealDir";
              v350 = sub_10003E020(a3);
              v336 = "%s [%d]: %s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)";
            }

            v338 = 1505;
          }

          sub_10003DF54("DoGenerateSpindump", "monitor.m", v338, v336, v54, v55, v56, v57, v350, v351, v352);
          abort();
        }

        v216 = __error();
        v217 = *v216;
        v219 = sub_10003E080(v216, v218);
        v220 = os_log_type_enabled(v219, OS_LOG_TYPE_FAULT);
        if ((a3 & 0x80000000) != 0)
        {
          if (v220)
          {
            sub_1000A7C94();
          }

          *__error() = v217;
          if (byte_100127EC9 != 1 || dword_100127558 > 4)
          {
            goto LABEL_234;
          }

          v221 = v50;
          v222 = *__error();
          v224 = v48;
          v225 = v49;
          v226 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"NULL realDir (dir %s from %s)", v49, v48);
          if (!v226)
          {
            v228 = sub_10003E080(0, v299);
            if (os_log_type_enabled(v228, OS_LOG_TYPE_FAULT))
            {
              sub_1000A7D08();
            }

            goto LABEL_423;
          }
        }

        else
        {
          if (v220)
          {
            v343 = sub_10003E020(a3);
            *buf = 136446978;
            *&buf[4] = v343;
            *&buf[12] = 1024;
            *&buf[14] = a3;
            *&buf[18] = 2080;
            *&buf[20] = v49;
            *&buf[28] = 2080;
            *&buf[30] = v48;
            _os_log_fault_impl(&_mh_execute_header, v219, OS_LOG_TYPE_FAULT, "%{public}s [%d]: NULL realDir (dir %s from %s)", buf, 0x26u);
          }

          *__error() = v217;
          if (byte_100127EC9 != 1 || dword_100127558 > 4)
          {
            goto LABEL_234;
          }

          v221 = v50;
          v222 = *__error();
          v223 = sub_10003E020(a3);
          v224 = v48;
          v225 = v49;
          v226 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: NULL realDir (dir %s from %s)", v223, a3, v49, v48);
          if (!v226)
          {
            v228 = sub_10003E080(0, v227);
            if (os_log_type_enabled(v228, OS_LOG_TYPE_FAULT))
            {
              v229 = sub_10003E020(a3);
              *buf = 136315906;
              *&buf[4] = v229;
              *&buf[12] = 1024;
              *&buf[14] = a3;
              *&buf[18] = 2080;
              *&buf[20] = v49;
              *&buf[28] = 2080;
              *&buf[30] = v48;
              _os_log_fault_impl(&_mh_execute_header, v228, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: NULL realDir (dir %s from %s)", buf, 0x26u);
            }

LABEL_423:

            if (qword_100127ED0)
            {
              v334 = qword_100127ED0;
            }

            else
            {
              v334 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v334);
LABEL_427:
            *__error() = v222;
            v48 = v224;
            v50 = v221;
            v49 = v225;
            goto LABEL_234;
          }
        }

        v300 = v226;
        v301 = CFStringGetCStringPtr(v226, 0x8000100u);
        if (v301)
        {
          v302 = v301;
          v303 = 0;
        }

        else
        {
          v302 = malloc_type_calloc(0x400uLL, 1uLL, 0x948891B8uLL);
          CFStringGetCString(v300, v302, 1024, 0x8000100u);
          v303 = v302;
        }

        if (qword_100127ED0)
        {
          v332 = qword_100127ED0;
        }

        else
        {
          v332 = __stderrp;
        }

        fprintf(v332, "%s\n", v302);
        if (v303)
        {
          free(v303);
        }

        CFRelease(v300);
        goto LABEL_427;
      }

      v71 = __error();
      v72 = *v71;
      v74 = sub_10003E080(v71, v73);
      v75 = os_log_type_enabled(v74, OS_LOG_TYPE_FAULT);
      if ((a3 & 0x80000000) != 0)
      {
        if (v75)
        {
          sub_1000A7D7C();
        }

        *__error() = v72;
        if (byte_100127EC9 != 1 || dword_100127558 > 4)
        {
          goto LABEL_234;
        }

        v76 = *__error();
        v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to get basename of %s", v48);
        if (!v78)
        {
          v80 = sub_10003E080(0, v106);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
          {
            sub_1000A7DEC();
          }

          goto LABEL_229;
        }
      }

      else
      {
        if (v75)
        {
          sub_1000A7E5C();
        }

        *__error() = v72;
        if (byte_100127EC9 != 1 || dword_100127558 > 4)
        {
          goto LABEL_234;
        }

        v76 = *__error();
        v77 = sub_10003E020(a3);
        v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get basename of %s", v77, a3, v48);
        if (!v78)
        {
          v80 = sub_10003E080(0, v79);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
          {
            sub_1000A7EE4();
          }

LABEL_229:

          if (qword_100127ED0)
          {
            v194 = qword_100127ED0;
          }

          else
          {
            v194 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v194);
LABEL_233:
          *__error() = v76;
LABEL_234:
          free(v48);
          free(v49);
          v193 = v50;
          goto LABEL_235;
        }
      }

      v107 = v78;
      v108 = v50;
      v109 = CFStringGetCStringPtr(v78, 0x8000100u);
      if (v109)
      {
        v110 = v109;
        v111 = 0;
      }

      else
      {
        v110 = malloc_type_calloc(0x400uLL, 1uLL, 0xC255EEE2uLL);
        CFStringGetCString(v107, v110, 1024, 0x8000100u);
        v111 = v110;
      }

      if (qword_100127ED0)
      {
        v176 = qword_100127ED0;
      }

      else
      {
        v176 = __stderrp;
      }

      fprintf(v176, "%s\n", v110);
      if (v111)
      {
        free(v111);
      }

      CFRelease(v107);
      v50 = v108;
      goto LABEL_233;
    }

    v61 = __error();
    v62 = *v61;
    v64 = sub_10003E080(v61, v63);
    v65 = os_log_type_enabled(v64, OS_LOG_TYPE_FAULT);
    if ((a3 & 0x80000000) != 0)
    {
      if (v65)
      {
        sub_1000A7F6C();
      }

      *__error() = v62;
      if (byte_100127EC9 != 1 || dword_100127558 > 4)
      {
        goto LABEL_226;
      }

      v66 = *__error();
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to get dirname of %s", v48);
      if (!v68)
      {
        v70 = sub_10003E080(0, v101);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000A7FDC();
        }

        goto LABEL_221;
      }
    }

    else
    {
      if (v65)
      {
        sub_1000A804C();
      }

      *__error() = v62;
      if (byte_100127EC9 != 1 || dword_100127558 > 4)
      {
        goto LABEL_226;
      }

      v66 = *__error();
      v67 = sub_10003E020(a3);
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get dirname of %s", v67, a3, v48);
      if (!v68)
      {
        v70 = sub_10003E080(0, v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000A80D4();
        }

LABEL_221:

        if (qword_100127ED0)
        {
          v192 = qword_100127ED0;
        }

        else
        {
          v192 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v192);
LABEL_225:
        *__error() = v66;
LABEL_226:
        free(v48);
        v193 = v49;
        goto LABEL_235;
      }
    }

    v102 = v68;
    v103 = CFStringGetCStringPtr(v68, 0x8000100u);
    if (v103)
    {
      v104 = v103;
      v105 = 0;
    }

    else
    {
      v104 = malloc_type_calloc(0x400uLL, 1uLL, 0xEBC6512AuLL);
      CFStringGetCString(v102, v104, 1024, 0x8000100u);
      v105 = v104;
    }

    if (qword_100127ED0)
    {
      v175 = qword_100127ED0;
    }

    else
    {
      v175 = __stderrp;
    }

    fprintf(v175, "%s\n", v104);
    if (v105)
    {
      free(v105);
    }

    CFRelease(v102);
    goto LABEL_225;
  }

  v205 = __error();
  v206 = *v205;
  v208 = sub_10003E080(v205, v207);
  v209 = os_log_type_enabled(v208, OS_LOG_TYPE_FAULT);
  if ((a3 & 0x80000000) != 0)
  {
    if (v209)
    {
      sub_1000A720C();
    }

    *__error() = v206;
    if (byte_100127EC9 != 1 || dword_100127558 > 4)
    {
      goto LABEL_420;
    }

    v210 = *__error();
    v212 = v48;
    v213 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: filepath %s too large", v48);
    if (!v213)
    {
      v215 = sub_10003E080(0, v294);
      if (os_log_type_enabled(v215, OS_LOG_TYPE_FAULT))
      {
        sub_1000A727C();
      }

      goto LABEL_415;
    }

LABEL_368:
    v295 = v213;
    v296 = CFStringGetCStringPtr(v213, 0x8000100u);
    if (v296)
    {
      v297 = v296;
      v298 = 0;
    }

    else
    {
      v297 = malloc_type_calloc(0x400uLL, 1uLL, 0xD1F381CFuLL);
      CFStringGetCString(v295, v297, 1024, 0x8000100u);
      v298 = v297;
    }

    if (qword_100127ED0)
    {
      v315 = qword_100127ED0;
    }

    else
    {
      v315 = __stderrp;
    }

    fprintf(v315, "%s\n", v297);
    if (v298)
    {
      free(v298);
    }

    CFRelease(v295);
    goto LABEL_419;
  }

  if (v209)
  {
    sub_1000A72EC();
  }

  *__error() = v206;
  if (byte_100127EC9 != 1 || dword_100127558 > 4)
  {
    goto LABEL_420;
  }

  v210 = *__error();
  v211 = sub_10003E020(a3);
  v212 = v48;
  v213 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: filepath %s too large", v211, a3, v48);
  if (v213)
  {
    goto LABEL_368;
  }

  v215 = sub_10003E080(0, v214);
  if (os_log_type_enabled(v215, OS_LOG_TYPE_FAULT))
  {
    sub_1000A7374();
  }

LABEL_415:

  if (qword_100127ED0)
  {
    v333 = qword_100127ED0;
  }

  else
  {
    v333 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v333);
LABEL_419:
  v48 = v212;
  *__error() = v210;
LABEL_420:
  v193 = v48;
LABEL_235:
  free(v193);
  if (v19)
  {
LABEL_236:
    (*(v19 + 2))(v19, 22, 0);
  }

LABEL_276:
}