void sub_100060B20(uint64_t a1, int a2, const char *a3)
{
  xpc_dictionary_set_int64(*(a1 + 32), "errno", a2);
  if (a3)
  {
    xpc_dictionary_set_string(*(a1 + 32), "path", a3);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  xpc_connection_send_message(v5, v6);
}

void sub_100060B84(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_100060BA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void sub_100060BE8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_fault_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

const char *sub_100060C08(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

void sub_100060C38(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v12 = a6;
  v51 = a7;
  if (byte_100127EC8 == 1)
  {
    v13 = a4;
    v14 = __error();
    v15 = *v14;
    v17 = sub_10003E080(v14, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = sub_10003E020(a1);
      *&buf[12] = 1024;
      *&buf[14] = a1;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Waiting for child %s [%d]...", buf, 0x12u);
    }

    *__error() = v15;
    a4 = v13;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v19 = a4;
    v20 = *__error();
    v21 = sub_10003E020(a1);
    v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Waiting for child %s [%d]...", v21, a1);
    if (v22)
    {
      v24 = v22;
      CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
      if (CStringPtr)
      {
        v26 = CStringPtr;
        v27 = 0;
      }

      else
      {
        v26 = malloc_type_calloc(0x400uLL, 1uLL, 0x8F5E5C70uLL);
        CFStringGetCString(v24, v26, 1024, 0x8000100u);
        v27 = v26;
      }

      if (qword_100127ED0)
      {
        v30 = qword_100127ED0;
      }

      else
      {
        v30 = __stderrp;
      }

      fprintf(v30, "%s\n", v26);
      if (v27)
      {
        free(v27);
      }

      CFRelease(v24);
    }

    else
    {
      v28 = sub_10003E080(0, v23);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        sub_1000AF654(a1);
      }

      if (qword_100127ED0)
      {
        v29 = qword_100127ED0;
      }

      else
      {
        v29 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v29);
    }

    *__error() = v20;
    a4 = v19;
  }

  v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v32 = qos_class_self();
  v33 = dispatch_queue_attr_make_with_qos_class(v31, v32, 0);

  v50 = v33;
  v34 = dispatch_queue_create("com.apple.spindump.readchildren", v33);
  if (a2 != -1)
  {
    fcntl(a2, 4, 4);
  }

  v54 = a2;
  v56 = a1;
  if (a3 != -1)
  {
    fcntl(a3, 4, 4);
  }

  v55 = a3;
  v35 = vm_page_size;
  v36 = malloc_type_calloc(1uLL, vm_page_size, 0x8C8EEA88uLL);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v102 = 0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v100 = 0;
  queue = v34;
  if (a2 == -1)
  {
    v37 = 0;
  }

  else
  {
    v37 = dispatch_source_create(&_dispatch_source_type_read, a2, 0, v34);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000613EC;
    handler[3] = &unk_1001152B0;
    v97 = a2;
    v92 = v99;
    v94 = v36;
    v95 = v35;
    v91 = v12;
    v93 = buf;
    v96 = a5;
    v98 = v56;
    dispatch_source_set_event_handler(v37, handler);
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100061704;
    v88[3] = &unk_1001152D0;
    v89 = a2;
    dispatch_source_set_cancel_handler(v37, v88);
    dispatch_activate(v37);
  }

  if (a3 == -1)
  {
    v38 = 0;
    if (a4)
    {
      goto LABEL_36;
    }

LABEL_38:
    v40 = 0;
    v43 = v12;
    v39 = queue;
    v42 = v56;
    goto LABEL_39;
  }

  v38 = dispatch_source_create(&_dispatch_source_type_read, a3, 0, queue);
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_10006170C;
  v79[3] = &unk_1001152B0;
  v86 = a3;
  v81 = v99;
  v83 = v36;
  v84 = v35;
  v80 = v12;
  v82 = buf;
  v85 = a5;
  v87 = v56;
  dispatch_source_set_event_handler(v38, v79);
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_100061A24;
  v77[3] = &unk_1001152D0;
  v78 = a3;
  dispatch_source_set_cancel_handler(v38, v77);
  dispatch_activate(v38);

  if (!a4)
  {
    goto LABEL_38;
  }

LABEL_36:
  v39 = queue;
  v40 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  v41 = dispatch_time(0, 1000000000 * a4);
  dispatch_source_set_timer(v40, v41, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100061A2C;
  v71[3] = &unk_1001152F8;
  v42 = v56;
  v76 = v56;
  v73 = v99;
  v75 = a4;
  v72 = v12;
  v74 = buf;
  dispatch_source_set_event_handler(v40, v71);
  dispatch_activate(v40);

  v43 = v12;
LABEL_39:
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100061CA4;
  v57[3] = &unk_100115320;
  v58 = v37;
  v59 = v38;
  v60 = dispatch_source_create(&_dispatch_source_type_proc, v42, 0x80000000uLL, v39);
  v61 = v40;
  v68 = v42;
  v69 = v54;
  v66 = v36;
  v67 = v35;
  v64 = v99;
  v65 = buf;
  v70 = v55;
  v62 = v43;
  v63 = v51;
  v44 = v51;
  v45 = v43;
  v46 = v40;
  v47 = v60;
  v48 = v38;
  v49 = v37;
  dispatch_source_set_event_handler(v47, v57);
  dispatch_activate(v47);

  _Block_object_dispose(v99, 8);
  _Block_object_dispose(buf, 8);
}

ssize_t sub_1000613EC(ssize_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = read(*(result + 80), *(v1 + 56), *(v1 + 64) - 1);
    if (result >= 1)
    {
      v2 = result;
      while (1)
      {
        *(*(v1 + 56) + v2) = 0;
        [*(v1 + 32) appendFormat:@"%s", *(v1 + 56)];
        *(*(*(v1 + 48) + 8) + 24) += v2;
        v3 = *(v1 + 72);
        if (v3)
        {
          if (v3 < *(*(*(v1 + 48) + 8) + 24))
          {
            break;
          }
        }

        result = read(*(v1 + 80), *(v1 + 56), *(v1 + 64) - 1);
        v2 = result;
        if (result <= 0)
        {
          return result;
        }
      }

      *(*(*(v1 + 40) + 8) + 24) = 1;
      if (byte_100127EC8 == 1)
      {
        v4 = __error();
        v5 = *v4;
        v7 = sub_10003E080(v4, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000AF6E8();
        }

        *__error() = v5;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v8 = *__error();
        v9 = sub_10003E020(*(v1 + 84));
        v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Child %s [%d] output exceeded %llu bytes", v9, *(v1 + 84), *(v1 + 72));
        if (v10)
        {
          v12 = v10;
          CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
          if (CStringPtr)
          {
            v14 = CStringPtr;
            v15 = 0;
          }

          else
          {
            v14 = malloc_type_calloc(0x400uLL, 1uLL, 0x4E2264C8uLL);
            CFStringGetCString(v12, v14, 1024, 0x8000100u);
            v15 = v14;
          }

          if (qword_100127ED0)
          {
            v18 = qword_100127ED0;
          }

          else
          {
            v18 = __stderrp;
          }

          fprintf(v18, "%s\n", v14);
          if (v15)
          {
            free(v15);
          }

          CFRelease(v12);
        }

        else
        {
          v16 = sub_10003E080(0, v11);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sub_1000AF774();
          }

          if (qword_100127ED0)
          {
            v17 = qword_100127ED0;
          }

          else
          {
            v17 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v17);
        }

        *__error() = v8;
      }

      kill(*(v1 + 84), 9);
      v19 = [*(v1 + 32) length];
      [*(v1 + 32) appendFormat:@"\n%s [%d] output exceeded %llu bytes, truncating", sub_10003E020(*(v1 + 84)), *(v1 + 84), *(v1 + 72)];
      result = [*(v1 + 32) length];
      *(*(*(v1 + 48) + 8) + 24) += result - v19;
    }
  }

  return result;
}

ssize_t sub_10006170C(ssize_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = read(*(result + 80), *(v1 + 56), *(v1 + 64) - 1);
    if (result >= 1)
    {
      v2 = result;
      while (1)
      {
        *(*(v1 + 56) + v2) = 0;
        [*(v1 + 32) appendFormat:@"%s", *(v1 + 56)];
        *(*(*(v1 + 48) + 8) + 24) += v2;
        v3 = *(v1 + 72);
        if (v3)
        {
          if (v3 < *(*(*(v1 + 48) + 8) + 24))
          {
            break;
          }
        }

        result = read(*(v1 + 80), *(v1 + 56), *(v1 + 64) - 1);
        v2 = result;
        if (result <= 0)
        {
          return result;
        }
      }

      *(*(*(v1 + 40) + 8) + 24) = 1;
      if (byte_100127EC8 == 1)
      {
        v4 = __error();
        v5 = *v4;
        v7 = sub_10003E080(v4, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000AF6E8();
        }

        *__error() = v5;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v8 = *__error();
        v9 = sub_10003E020(*(v1 + 84));
        v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Child %s [%d] output exceeded %llu bytes", v9, *(v1 + 84), *(v1 + 72));
        if (v10)
        {
          v12 = v10;
          CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
          if (CStringPtr)
          {
            v14 = CStringPtr;
            v15 = 0;
          }

          else
          {
            v14 = malloc_type_calloc(0x400uLL, 1uLL, 0xF6339B99uLL);
            CFStringGetCString(v12, v14, 1024, 0x8000100u);
            v15 = v14;
          }

          if (qword_100127ED0)
          {
            v18 = qword_100127ED0;
          }

          else
          {
            v18 = __stderrp;
          }

          fprintf(v18, "%s\n", v14);
          if (v15)
          {
            free(v15);
          }

          CFRelease(v12);
        }

        else
        {
          v16 = sub_10003E080(0, v11);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sub_1000AF774();
          }

          if (qword_100127ED0)
          {
            v17 = qword_100127ED0;
          }

          else
          {
            v17 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v17);
        }

        *__error() = v8;
      }

      kill(*(v1 + 84), 9);
      v19 = [*(v1 + 32) length];
      [*(v1 + 32) appendFormat:@"\n%s [%d] output exceeded %llu bytes, truncating", sub_10003E020(*(v1 + 84)), *(v1 + 84), *(v1 + 72)];
      result = [*(v1 + 32) length];
      *(*(*(v1 + 48) + 8) + 24) += result - v19;
    }
  }

  return result;
}

_BYTE *sub_100061A2C(_BYTE *result)
{
  if ((*(*(*(result + 5) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (byte_100127EC8 == 1)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_10003E080(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000AF808(v1);
      }

      *__error() = v3;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v7 = *__error();
      v8 = sub_10003E020(*(v1 + 16));
      v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Child %s [%d] timed out after %llus", v8, *(v1 + 16), *(v1 + 7));
      if (v9)
      {
        v11 = v9;
        CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
        if (CStringPtr)
        {
          v13 = CStringPtr;
          v14 = 0;
        }

        else
        {
          v13 = malloc_type_calloc(0x400uLL, 1uLL, 0xBC1751FAuLL);
          CFStringGetCString(v11, v13, 1024, 0x8000100u);
          v14 = v13;
        }

        if (qword_100127ED0)
        {
          v17 = qword_100127ED0;
        }

        else
        {
          v17 = __stderrp;
        }

        fprintf(v17, "%s\n", v13);
        if (v14)
        {
          free(v14);
        }

        CFRelease(v11);
      }

      else
      {
        v15 = sub_10003E080(0, v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_1000AF890();
        }

        if (qword_100127ED0)
        {
          v16 = qword_100127ED0;
        }

        else
        {
          v16 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v16);
      }

      *__error() = v7;
    }

    kill(*(v1 + 16), 9);
    v18 = [*(v1 + 4) length];
    [*(v1 + 4) appendFormat:@"\n%s [%d] timed out after %llus, truncating", sub_10003E020(*(v1 + 16)), *(v1 + 16), *(v1 + 7)];
    result = [*(v1 + 4) length];
    *(*(*(v1 + 6) + 8) + 24) += result - v18;
  }

  return result;
}

uint64_t sub_100061CA4(uint64_t a1)
{
  if (byte_100127EC8 == 1)
  {
    v2 = __error();
    v3 = *v2;
    v5 = sub_10003E080(v2, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000AF924(a1, v5);
    }

    *__error() = v3;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Child [%d] exited", *(a1 + 112));
    if (v8)
    {
      v10 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0xDB83FF75uLL);
        CFStringGetCString(v10, v12, 1024, 0x8000100u);
        v13 = v12;
      }

      if (qword_100127ED0)
      {
        v16 = qword_100127ED0;
      }

      else
      {
        v16 = __stderrp;
      }

      fprintf(v16, "%s\n", v12);
      if (v13)
      {
        free(v13);
      }

      CFRelease(v10);
    }

    else
    {
      v14 = sub_10003E080(0, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1000AF9A0((a1 + 112), v14);
      }

      if (qword_100127ED0)
      {
        v15 = qword_100127ED0;
      }

      else
      {
        v15 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v15);
    }

    *__error() = v7;
  }

  v30 = 0;
    ;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    dispatch_source_cancel(v17);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    dispatch_source_cancel(v18);
  }

  dispatch_source_cancel(*(a1 + 48));
  v19 = *(a1 + 56);
  if (v19)
  {
    dispatch_source_cancel(v19);
  }

  v20 = *(*(a1 + 80) + 8);
  if (*(v20 + 24))
  {
    *(v20 + 24) = 1;
  }

  else
  {
    v21 = *(a1 + 116);
    if (v21 != -1)
    {
      fcntl(v21, 4, 0);
      v22 = read(*(a1 + 116), *(a1 + 96), *(a1 + 104) - 1);
      if (v22 >= 1)
      {
        for (i = v22; i > 0; i = read(*(a1 + 116), v24, *(a1 + 104) - 1))
        {
          *(*(a1 + 96) + i) = 0;
          [*(a1 + 64) appendFormat:@"%s", *(a1 + 96)];
          v24 = *(a1 + 96);
          *(*(*(a1 + 88) + 8) + 24) += i;
        }
      }
    }

    v25 = *(a1 + 120);
    if (v25 != -1)
    {
      fcntl(v25, 4, 0);
      v26 = read(*(a1 + 120), *(a1 + 96), *(a1 + 104) - 1);
      if (v26 >= 1)
      {
        for (j = v26; j > 0; j = read(*(a1 + 120), v28, *(a1 + 104) - 1))
        {
          *(*(a1 + 96) + j) = 0;
          [*(a1 + 64) appendFormat:@"%s", *(a1 + 96)];
          v28 = *(a1 + 96);
          *(*(*(a1 + 88) + 8) + 24) += j;
        }
      }
    }
  }

  free(*(a1 + 96));
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    [*(a1 + 64) appendString:@"\n"];
    ++*(*(*(a1 + 88) + 8) + 24);
  }

  return (*(*(a1 + 72) + 16))();
}

void sub_100062090(const char *a1, off_t a2, int a3, void *a4, int a5, double a6, double a7)
{
  v21 = a4;
  v13 = sub_100039314(a1, a2, a3, v21, 0, a5, 0, 1, a6, a7, -1, 0, 0, 0, 0, 0);
  if (v13)
  {
    sub_1000AFA1C(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_100062144(const char *a1, int a2)
{
  if (a1 && *a1 == 47)
  {
    for (i = 0; i != 6; ++i)
    {
      v5 = strlen(off_100115340[i]);
      if (!strncmp(a1, off_100115340[i], v5))
      {
        v11 = 0;
        return v11 & 1;
      }
    }

    if (!a2)
    {
      goto LABEL_11;
    }

    v6 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:a1 isDirectory:0 relativeToURL:0];
    if (v6 && (v7 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle()) != 0)
    {
      v8 = v7;
      v9 = CFBundleGetIdentifier(v7);
      v10 = v9;
      if (v9)
      {
        v11 = [v9 hasPrefix:@"com.apple."] - 1;
      }

      else
      {
        v11 = 1;
      }

      CFRelease(v8);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
LABEL_11:
    v11 = 1;
  }

  return v11 & 1;
}

void sub_100062254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CSSymbolicatorGetSymbolOwner();
  if (CSIsNull())
  {
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v7 = (v4 + 3);
    v6 = *(v4 + 6);
    if (v5)
    {
      if ((v6 & 0x80000000) == 0)
      {
        if (byte_100127EC8)
        {
          v8 = __error();
          v9 = *v8;
          v11 = sub_10003E080(v8, v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_1000B1EAC();
          }

          *__error() = v9;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          return;
        }

        v13 = *__error();
        v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: No symbol owner for symbolicator", *v4, *v7);
        if (v14)
        {
          v16 = v14;
          CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
          if (!CStringPtr)
          {
            v18 = 4077322289;
LABEL_118:
            v41 = malloc_type_calloc(0x400uLL, 1uLL, v18);
            CFStringGetCString(v16, v41, 1024, 0x8000100u);
            v42 = v41;
            goto LABEL_119;
          }

          goto LABEL_46;
        }

        v79 = sub_10003E080(0, v15);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1F24();
        }

LABEL_114:

LABEL_148:
        if (qword_100127ED0)
        {
          v93 = qword_100127ED0;
        }

        else
        {
          v93 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v93);
        goto LABEL_152;
      }

      if (byte_100127EC8)
      {
        v43 = __error();
        v44 = *v43;
        v46 = sub_10003E080(v43, v45);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1000B1DCC();
        }

        *__error() = v44;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v13 = *__error();
      v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: No symbol owner for symbolicator", *v4);
      if (v48)
      {
        v50 = v48;
        v51 = CFStringGetCStringPtr(v48, 0x8000100u);
        if (!v51)
        {
          v52 = 4077322289;
LABEL_137:
          v77 = malloc_type_calloc(0x400uLL, 1uLL, v52);
          CFStringGetCString(v50, v77, 1024, 0x8000100u);
          v78 = v77;
          goto LABEL_138;
        }

        goto LABEL_95;
      }

      v88 = sub_10003E080(0, v49);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
      {
        sub_1000B1E3C();
      }

      goto LABEL_127;
    }

    if (v6 < 0)
    {
      if (byte_100127EC8)
      {
        v53 = __error();
        v54 = *v53;
        v56 = sub_10003E080(v53, v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_1000B1F9C();
        }

        *__error() = v54;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v13 = *__error();
      v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No symbol owner for symbolicator");
      if (!v27)
      {
        v29 = sub_10003E080(0, v58);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1FD8();
        }

        goto LABEL_147;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v21 = __error();
        v22 = *v21;
        v24 = sub_10003E080(v21, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000B2014();
        }

        *__error() = v22;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v13 = *__error();
      v26 = sub_10003E020(*v7);
      v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No symbol owner for symbolicator", v26, *v7);
      if (!v27)
      {
        v29 = sub_10003E080(0, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_1000B2094();
        }

LABEL_147:

        goto LABEL_148;
      }
    }

    v59 = v27;
    v60 = CFStringGetCStringPtr(v27, 0x8000100u);
    if (!v60)
    {
      v61 = 4077322289;
LABEL_129:
      v86 = malloc_type_calloc(0x400uLL, 1uLL, v61);
      CFStringGetCString(v59, v86, 1024, 0x8000100u);
      v87 = v86;
      goto LABEL_130;
    }

    goto LABEL_109;
  }

  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    v94 = [[NSUUID alloc] initWithUUIDBytes:CFUUIDBytes];
    [*(a1 + 40) addObject:v94];
    v20 = [SABinary binaryWithUUID:v94 absolutePath:*(a1 + 48)];

    return;
  }

  v31 = *(a1 + 32);
  v30 = (a1 + 32);
  v33 = (v30 + 3);
  v32 = *(v30 + 6);
  if (!v31)
  {
    if (v32 < 0)
    {
      if (byte_100127EC8)
      {
        v80 = __error();
        v81 = *v80;
        v83 = sub_10003E080(v80, v82);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          sub_1000B1C54();
        }

        *__error() = v81;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v13 = *__error();
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No UUID for symbol owner");
      if (!v68)
      {
        v29 = sub_10003E080(0, v85);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1C90();
        }

        goto LABEL_147;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v62 = __error();
        v63 = *v62;
        v65 = sub_10003E080(v62, v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_1000B1CCC();
        }

        *__error() = v63;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v13 = *__error();
      v67 = sub_10003E020(*v33);
      v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No UUID for symbol owner", v67, *v33);
      if (!v68)
      {
        v29 = sub_10003E080(0, v69);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1D4C();
        }

        goto LABEL_147;
      }
    }

    v59 = v68;
    v60 = CFStringGetCStringPtr(v68, 0x8000100u);
    if (!v60)
    {
      v61 = 2326492598;
      goto LABEL_129;
    }

LABEL_109:
    v86 = v60;
    v87 = 0;
LABEL_130:
    if (qword_100127ED0)
    {
      v91 = qword_100127ED0;
    }

    else
    {
      v91 = __stderrp;
    }

    fprintf(v91, "%s\n", v86);
    if (v87)
    {
      free(v87);
    }

    v90 = v59;
    goto LABEL_144;
  }

  if (v32 < 0)
  {
    if (byte_100127EC8)
    {
      v70 = __error();
      v71 = *v70;
      v73 = sub_10003E080(v70, v72);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1A84();
      }

      *__error() = v71;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      return;
    }

    v13 = *__error();
    v75 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: No UUID for symbol owner", *v30);
    if (v75)
    {
      v50 = v75;
      v51 = CFStringGetCStringPtr(v75, 0x8000100u);
      if (!v51)
      {
        v52 = 2326492598;
        goto LABEL_137;
      }

LABEL_95:
      v77 = v51;
      v78 = 0;
LABEL_138:
      if (qword_100127ED0)
      {
        v92 = qword_100127ED0;
      }

      else
      {
        v92 = __stderrp;
      }

      fprintf(v92, "%s\n", v77);
      if (v78)
      {
        free(v78);
      }

      v90 = v50;
      goto LABEL_144;
    }

    v88 = sub_10003E080(0, v76);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
    {
      sub_1000B1AF4();
    }

LABEL_127:

    goto LABEL_148;
  }

  if (byte_100127EC8)
  {
    v34 = __error();
    v35 = *v34;
    v37 = sub_10003E080(v34, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000B1B64();
    }

    *__error() = v35;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v13 = *__error();
    v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: No UUID for symbol owner", *v30, *v33);
    if (v39)
    {
      v16 = v39;
      CStringPtr = CFStringGetCStringPtr(v39, 0x8000100u);
      if (!CStringPtr)
      {
        v18 = 2326492598;
        goto LABEL_118;
      }

LABEL_46:
      v41 = CStringPtr;
      v42 = 0;
LABEL_119:
      if (qword_100127ED0)
      {
        v89 = qword_100127ED0;
      }

      else
      {
        v89 = __stderrp;
      }

      fprintf(v89, "%s\n", v41);
      if (v42)
      {
        free(v42);
      }

      v90 = v16;
LABEL_144:
      CFRelease(v90);
LABEL_152:
      *__error() = v13;
      return;
    }

    v79 = sub_10003E080(0, v40);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
    {
      sub_1000B1BDC();
    }

    goto LABEL_114;
  }
}

void sub_100062BE8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 mainBinary];
  v4 = [v3 uuid];

  if (v4 && [*(a1 + 32) containsObject:v4])
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
    v6 = [v5 unsignedIntValue];
    v7 = [v9 taskStates];
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count] + v6);
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v4];
  }
}

uint64_t sub_100062CD8(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, unsigned int a8, double a9, double a10, double a11, double a12, double a13, double d5_0, unsigned __int8 a14, char a15)
{
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a5;
  v697 = a6;
  v32 = a7;
  v698 = a4;
  v691 = a4 - 9;
  v34 = (byte_100127EDC & 0x10) == 0 && (a4 - 9) < 2;
  sub_1000791AC(v28, (byte_100127EDC >> 3) & 1, (byte_100127EDC >> 2) & 1, v34);
  v704 = 0u;
  v705 = 0u;
  v702 = 0u;
  v703 = 0u;
  v35 = v31;
  v36 = [v35 countByEnumeratingWithState:&v702 objects:v710 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v703;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v703 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [v28 useDsymForUUIDFor:*(*(&v702 + 1) + 8 * i)];
      }

      v37 = [v35 countByEnumeratingWithState:&v702 objects:v710 count:16];
    }

    while (v37);
  }

  v40 = [[SASamplePrinter alloc] initWithSampleStore:v28];
  v41 = v40;
  v42 = v29;
  if (v29)
  {
    [v40 setOptions:v29];
  }

  if (v697)
  {
    [v41 setIncidentUUID:?];
  }

  v695 = v32;
  v696 = v41;
  if (a13 == 0.0)
  {
LABEL_62:
    if (a11 == 0.0)
    {
      v89 = a9;
    }

    else
    {
      v89 = a11;
    }

    if (a12 == 0.0)
    {
      a12 = a10;
    }

    if (v89 > 0.0 && a12 > 0.0)
    {
      v90 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:?];
      v91 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:a12];
      v92 = [SATimeRange timeRangeStart:v90 end:v91];
      [v28 setEventTimeRange:v92];

      v41 = v696;
    }

    [v41 setShareWithAppDevs:AppAnalyticsEnabled()];
    v93 = [v41 options];
    [v93 setMicrostackshotsFormat:1];

    if (v698 == 15)
    {
      goto LABEL_73;
    }

    if (v698 != 6)
    {
      if (v698 != 5)
      {
        v132 = [v28 targetProcess];
        v133 = [v132 name];

        v134 = [v28 targetProcessId];
        if (v133)
        {
          if ((v134 & 0x80000000) != 0)
          {
            if (byte_100127EC8)
            {
              v218 = __error();
              v219 = *v218;
              v221 = sub_10003E080(v218, v220);
              if (os_log_type_enabled(v221, OS_LOG_TYPE_DEBUG))
              {
                sub_1000B2F04();
              }

              *__error() = v219;
              v41 = v696;
            }

            v139 = v698;
            if (byte_100127EC9 != 1 || dword_100127558 > 0)
            {
              goto LABEL_382;
            }

            v140 = v30;
            v141 = *__error();
            v222 = [v28 targetProcess];
            v223 = [v222 name];
            v144 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Not providing unsupported report type (%d) to MetricKit", v223, v698);

            if (!v144)
            {
              v147 = sub_10003E080(v224, v225);
              if (os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
              {
                sub_1000B2FB0();
              }

              goto LABEL_375;
            }
          }

          else
          {
            if (byte_100127EC8)
            {
              v135 = __error();
              v136 = *v135;
              v138 = sub_10003E080(v135, v137);
              if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
              {
                sub_1000B3058();
              }

              *__error() = v136;
              v41 = v696;
            }

            v139 = v698;
            if (byte_100127EC9 != 1 || dword_100127558 > 0)
            {
              goto LABEL_382;
            }

            v140 = v30;
            v141 = *__error();
            v142 = [v28 targetProcess];
            v143 = [v142 name];
            v144 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Not providing unsupported report type (%d) to MetricKit", v143, [v28 targetProcessId], v698);

            if (!v144)
            {
              v147 = sub_10003E080(v145, v146);
              if (os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
              {
                sub_1000B311C();
              }

              goto LABEL_375;
            }
          }

          CStringPtr = CFStringGetCStringPtr(v144, 0x8000100u);
          if (!CStringPtr)
          {
            v227 = 239848261;
LABEL_349:
            v290 = malloc_type_calloc(0x400uLL, 1uLL, v227);
            CFStringGetCString(v144, v290, 1024, 0x8000100u);
            v291 = v290;
            goto LABEL_350;
          }

LABEL_267:
          v290 = CStringPtr;
          v291 = 0;
LABEL_350:
          if (qword_100127ED0)
          {
            v319 = qword_100127ED0;
          }

          else
          {
            v319 = __stderrp;
          }

          fprintf(v319, "%s\n", v290);
          if (v291)
          {
            free(v291);
          }

          CFRelease(v144);
          goto LABEL_379;
        }

        if ((v134 & 0x80000000) == 0)
        {
          if (byte_100127EC8)
          {
            v174 = __error();
            v175 = *v174;
            v177 = sub_10003E080(v174, v176);
            if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B32C4();
            }

            *__error() = v175;
          }

          v139 = v698;
          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_382;
          }

          v178 = *__error();
          v179 = sub_10003E020([v28 targetProcessId]);
          v180 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Not providing unsupported report type (%d) to MetricKit", v179, [v28 targetProcessId], v698);
          if (!v180)
          {
            v315 = sub_10003E080(0, v181);
            if (os_log_type_enabled(v315, OS_LOG_TYPE_FAULT))
            {
              sub_1000B3364();
            }

            if (qword_100127ED0)
            {
              v316 = qword_100127ED0;
            }

            else
            {
              v316 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v316);
            v42 = v29;
            goto LABEL_578;
          }

          v182 = v180;
          v183 = v30;
          v184 = CFStringGetCStringPtr(v180, 0x8000100u);
          if (v184)
          {
            v185 = v184;
            v186 = 0;
          }

          else
          {
            v185 = malloc_type_calloc(0x400uLL, 1uLL, 0xE4BCB45uLL);
            CFStringGetCString(v182, v185, 1024, 0x8000100u);
            v186 = v185;
          }

          v42 = v29;
          goto LABEL_541;
        }

        if (byte_100127EC8)
        {
          v268 = __error();
          v269 = *v268;
          v271 = sub_10003E080(v268, v270);
          if (os_log_type_enabled(v271, OS_LOG_TYPE_DEBUG))
          {
            sub_1000B31DC();
          }

          *__error() = v269;
        }

        v139 = v698;
        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_382;
        }

        v178 = *__error();
        v272 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not providing unsupported report type (%d) to MetricKit", v698);
        if (!v272)
        {
          v207 = sub_10003E080(0, v273);
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_1000B3250();
          }

          goto LABEL_574;
        }

        v182 = v272;
        v183 = v30;
        v274 = CFStringGetCStringPtr(v272, 0x8000100u);
        if (!v274)
        {
          v275 = 239848261;
LABEL_540:
          v185 = malloc_type_calloc(0x400uLL, 1uLL, v275);
          CFStringGetCString(v182, v185, 1024, 0x8000100u);
          v186 = v185;
          goto LABEL_541;
        }

LABEL_308:
        v185 = v274;
        v186 = 0;
LABEL_541:
        if (qword_100127ED0)
        {
          v478 = qword_100127ED0;
        }

        else
        {
          v478 = __stderrp;
        }

        fprintf(v478, "%s\n", v185);
        if (v186)
        {
          free(v186);
        }

        CFRelease(v182);
        v30 = v183;
        v41 = v696;
        goto LABEL_578;
      }

LABEL_73:
      v94 = objc_opt_class();
      v95 = [v28 targetProcess];
      v96 = [v95 name];

      v97 = [v28 targetProcessId];
      if (v94)
      {
        if (v96)
        {
          v41 = v696;
          if ((v97 & 0x80000000) != 0)
          {
            if (byte_100127EC8)
            {
              v187 = __error();
              v188 = *v187;
              v190 = sub_10003E080(v187, v189);
              if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
              {
                v191 = [v28 targetProcess];
                v192 = [v191 name];
                *buf = 138543362;
                v707 = v192;
                _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_INFO, "%{public}@: Providing cpu usage report to MetricKit", buf, 0xCu);

                v41 = v696;
              }

              *__error() = v188;
            }

            if (byte_100127EC9 != 1 || dword_100127558 > 1)
            {
              goto LABEL_299;
            }

            v105 = v30;
            v106 = *__error();
            v193 = [v28 targetProcess];
            v194 = [v193 name];
            v109 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Providing cpu usage report to MetricKit", v194);

            if (!v109)
            {
              v112 = sub_10003E080(v195, v196);
              if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
              {
                sub_1000B28B0(v28);
              }

              goto LABEL_285;
            }
          }

          else
          {
            if (byte_100127EC8)
            {
              v98 = __error();
              v99 = *v98;
              v101 = sub_10003E080(v98, v100);
              if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
              {
                v102 = [v28 targetProcess];
                v103 = [v102 name];
                v104 = [v28 targetProcessId];
                *buf = 138543618;
                v707 = v103;
                v708 = 1024;
                v709 = v104;
                _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "%{public}@ [%d]: Providing cpu usage report to MetricKit", buf, 0x12u);

                v41 = v696;
              }

              *__error() = v99;
            }

            if (byte_100127EC9 != 1 || dword_100127558 > 1)
            {
              goto LABEL_299;
            }

            v105 = v30;
            v106 = *__error();
            v107 = [v28 targetProcess];
            v108 = [v107 name];
            v109 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Providing cpu usage report to MetricKit", v108, [v28 targetProcessId]);

            if (!v109)
            {
              v112 = sub_10003E080(v110, v111);
              if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
              {
                sub_1000B2954();
              }

LABEL_285:

              if (qword_100127ED0)
              {
                v304 = qword_100127ED0;
              }

              else
              {
                v304 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v304);
LABEL_289:
              v30 = v105;
LABEL_297:
              v41 = v696;
LABEL_298:
              *__error() = v106;
LABEL_299:
              v306 = v41;
              v307 = 0;
LABEL_366:
              [MXSampleAnalysisParser sendDiagnosticReport:v306 forType:v307 forSourceID:4];
LABEL_380:
              v32 = v695;
LABEL_381:
              v139 = v698;
              goto LABEL_382;
            }
          }

          v197 = CFStringGetCStringPtr(v109, 0x8000100u);
          if (v197)
          {
            v198 = v197;
            v199 = 0;
          }

          else
          {
            v198 = malloc_type_calloc(0x400uLL, 1uLL, 0x834ECF26uLL);
            CFStringGetCString(v109, v198, 1024, 0x8000100u);
            v199 = v198;
          }

          if (qword_100127ED0)
          {
            v281 = qword_100127ED0;
          }

          else
          {
            v281 = __stderrp;
          }

          fprintf(v281, "%s\n", v198);
          if (v199)
          {
            free(v199);
          }

          CFRelease(v109);
          goto LABEL_289;
        }

        v41 = v696;
        if ((v97 & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v236 = __error();
            v237 = *v236;
            v239 = sub_10003E080(v236, v238);
            if (os_log_type_enabled(v239, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_INFO, "Providing cpu usage report to MetricKit", buf, 2u);
            }

            *__error() = v237;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 1)
          {
            goto LABEL_299;
          }

          v106 = *__error();
          v163 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Providing cpu usage report to MetricKit");
          if (!v163)
          {
            v165 = sub_10003E080(0, v240);
            if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
            {
              sub_1000B29FC();
            }

            goto LABEL_337;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v156 = __error();
            v157 = *v156;
            v159 = sub_10003E080(v156, v158);
            if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
            {
              v160 = sub_10003E020([v28 targetProcessId]);
              v161 = [v28 targetProcessId];
              *buf = 136446466;
              v707 = v160;
              v708 = 1024;
              v709 = v161;
              _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_INFO, "%{public}s [%d]: Providing cpu usage report to MetricKit", buf, 0x12u);
            }

            *__error() = v157;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 1)
          {
            goto LABEL_299;
          }

          v106 = *__error();
          v162 = sub_10003E020([v28 targetProcessId]);
          v163 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Providing cpu usage report to MetricKit", v162, [v28 targetProcessId]);
          if (!v163)
          {
            v165 = sub_10003E080(0, v164);
            if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
            {
              sub_1000B2A38();
            }

LABEL_337:

            if (qword_100127ED0)
            {
              v317 = qword_100127ED0;
            }

            else
            {
              v317 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v317);
            goto LABEL_298;
          }
        }

        v241 = v163;
        v242 = v30;
        v243 = CFStringGetCStringPtr(v163, 0x8000100u);
        if (v243)
        {
          v244 = v243;
          v245 = 0;
        }

        else
        {
          v244 = malloc_type_calloc(0x400uLL, 1uLL, 0x834ECF26uLL);
          CFStringGetCString(v241, v244, 1024, 0x8000100u);
          v245 = v244;
        }

        if (qword_100127ED0)
        {
          v305 = qword_100127ED0;
        }

        else
        {
          v305 = __stderrp;
        }

        fprintf(v305, "%s\n", v244);
        if (v245)
        {
          free(v245);
        }

        CFRelease(v241);
        v30 = v242;
        goto LABEL_297;
      }

      if (v96)
      {
        v32 = v695;
        v41 = v696;
        v139 = v698;
        if ((v97 & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v228 = __error();
            v229 = *v228;
            v231 = sub_10003E080(v228, v230);
            if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
            {
              sub_1000B2ACC(v28);
            }

            *__error() = v229;
            v139 = v698;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v140 = v30;
            v141 = *__error();
            v232 = [v28 targetProcess];
            v233 = [v232 name];
            v144 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: MetricKit unavailable, not providing cpu usage report", v233);

            if (!v144)
            {
              v147 = sub_10003E080(v234, v235);
              if (os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
              {
                sub_1000B2B70(v28);
              }

              goto LABEL_375;
            }

LABEL_195:
            CStringPtr = CFStringGetCStringPtr(v144, 0x8000100u);
            if (!CStringPtr)
            {
              v227 = 326608200;
              goto LABEL_349;
            }

            goto LABEL_267;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v148 = __error();
            v149 = *v148;
            v151 = sub_10003E080(v148, v150);
            if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
            {
              sub_1000B2C14();
            }

            *__error() = v149;
            v139 = v698;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v140 = v30;
            v141 = *__error();
            v152 = [v28 targetProcess];
            v153 = [v152 name];
            v144 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: MetricKit unavailable, not providing cpu usage report", v153, [v28 targetProcessId]);

            if (!v144)
            {
              v147 = sub_10003E080(v154, v155);
              if (os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
              {
                sub_1000B2CBC();
              }

LABEL_375:

              if (qword_100127ED0)
              {
                v321 = qword_100127ED0;
              }

              else
              {
                v321 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v321);
LABEL_379:
              v30 = v140;
              v41 = v696;
              *__error() = v141;
              goto LABEL_380;
            }

            goto LABEL_195;
          }
        }

LABEL_382:
        v322 = v139 - 7;
        if (!v32)
        {
          v54 = v697;
          if (byte_100127EC8 == 1)
          {
            v342 = __error();
            v343 = *v342;
            v345 = sub_10003E080(v342, v344);
            if (os_log_type_enabled(v345, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B3640();
            }

            *__error() = v343;
            v139 = v698;
          }

          v323 = 0;
          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
LABEL_449:
            v373 = 0.0;
            if (v322 < 2)
            {
LABEL_453:
              v377 = sub_1000694CC(v41, 0, v323, v139, 0, a14, v373, d5_0, a8, 0, 0, 0);
LABEL_454:

              +[SABinary clearCoreSymbolicationCaches];
              if (v377)
              {
                v247 = 0;
              }

              else
              {
                v247 = 0x1000000;
              }

              v28 = v323;
              goto LABEL_458;
            }

            if (v139 <= 0xF && ((1 << v139) & 0x8060) != 0)
            {
              [v28 startTime];
              v375 = v374 = v323;
              [v375 wallTime];
              v373 = v376;

              v323 = v374;
              v139 = v698;
              goto LABEL_453;
            }

            if (a15)
            {
              [v41 printToStream:__stdoutp];
              v377 = 1;
              goto LABEL_454;
            }

            v690 = v323;
            if (v691 >= 2)
            {
              v590 = [v28 targetProcess];
              v591 = [v590 name];

              v592 = [v28 targetProcessId];
              if (!v591)
              {
                if ((v592 & 0x80000000) != 0)
                {
                  if (byte_100127EC8)
                  {
                    v620 = __error();
                    v621 = *v620;
                    v623 = sub_10003E080(v620, v622);
                    if (os_log_type_enabled(v623, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B39D8();
                    }

                    *__error() = v621;
                  }

                  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                  {
                    v624 = *__error();
                    v625 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Bad report type %d", "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v698);
                    if (v625)
                    {
                      v649 = v625;
                      v650 = CFStringGetCStringPtr(v625, 0x8000100u);
                      if (v650)
                      {
                        v651 = v650;
                        v652 = 0;
                      }

                      else
                      {
                        v651 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CC1F1D7uLL);
                        CFStringGetCString(v649, v651, 1024, 0x8000100u);
                        v652 = v651;
                      }

                      if (qword_100127ED0)
                      {
                        v671 = qword_100127ED0;
                      }

                      else
                      {
                        v671 = __stderrp;
                      }

                      fprintf(v671, "%s\n", v651);
                      if (v652)
                      {
                        free(v652);
                      }

                      CFRelease(v649);
                    }

                    else
                    {
                      v627 = sub_10003E080(0, v626);
                      if (os_log_type_enabled(v627, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000B3A58();
                      }

                      if (qword_100127ED0)
                      {
                        v628 = qword_100127ED0;
                      }

                      else
                      {
                        v628 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v628);
                    }

                    *__error() = v624;
                  }

                  sub_10003DF54("DoMicrostackshotsForSampleStore", "microstackshot.m", 562, "%s: Bad report type %d", v593, v594, v595, v596, "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v698, v681);
                }

                else
                {
                  if (byte_100127EC8)
                  {
                    v597 = __error();
                    v598 = *v597;
                    v600 = sub_10003E080(v597, v599);
                    if (os_log_type_enabled(v600, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B3AD8();
                    }

                    *__error() = v598;
                  }

                  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                  {
                    v601 = *__error();
                    v602 = sub_10003E020([v28 targetProcessId]);
                    v603 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Bad report type %d", v602, [v28 targetProcessId], "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v698);
                    if (v603)
                    {
                      v642 = v603;
                      v643 = CFStringGetCStringPtr(v603, 0x8000100u);
                      if (v643)
                      {
                        v644 = v643;
                        v645 = 0;
                      }

                      else
                      {
                        v644 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CC1F1D7uLL);
                        CFStringGetCString(v642, v644, 1024, 0x8000100u);
                        v645 = v644;
                      }

                      if (qword_100127ED0)
                      {
                        v656 = qword_100127ED0;
                      }

                      else
                      {
                        v656 = __stderrp;
                      }

                      fprintf(v656, "%s\n", v644);
                      if (v645)
                      {
                        free(v645);
                      }

                      CFRelease(v642);
                    }

                    else
                    {
                      v605 = sub_10003E080(0, v604);
                      if (os_log_type_enabled(v605, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000B3B80();
                      }

                      if (qword_100127ED0)
                      {
                        v606 = qword_100127ED0;
                      }

                      else
                      {
                        v606 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v606);
                    }

                    *__error() = v601;
                  }

                  v657 = sub_10003E020([v28 targetProcessId]);
                  v680 = [v28 targetProcessId];
                  sub_10003DF54("DoMicrostackshotsForSampleStore", "microstackshot.m", 562, "%s [%d]: %s: Bad report type %d", v658, v659, v660, v661, v657, v680, "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v698);
                }

                abort();
              }

              if ((v592 & 0x80000000) == 0)
              {
                if (byte_100127EC8)
                {
                  v607 = __error();
                  v608 = *v607;
                  v610 = sub_10003E080(v607, v609);
                  if (os_log_type_enabled(v610, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B3828();
                  }

                  *__error() = v608;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v611 = *__error();
                  v612 = [v28 targetProcess];
                  v613 = [v612 name];
                  v614 = CFStringGetCStringPtr(v613, 0x8000100u);
                  v615 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Bad report type %d", v614, [v28 targetProcessId], "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v698);

                  if (v615)
                  {
                    v646 = CFStringGetCStringPtr(v615, 0x8000100u);
                    if (v646)
                    {
                      v647 = v646;
                      v648 = 0;
                    }

                    else
                    {
                      v647 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CC1F1D7uLL);
                      CFStringGetCString(v615, v647, 1024, 0x8000100u);
                      v648 = v647;
                    }

                    if (qword_100127ED0)
                    {
                      v662 = qword_100127ED0;
                    }

                    else
                    {
                      v662 = __stderrp;
                    }

                    fprintf(v662, "%s\n", v647);
                    if (v648)
                    {
                      free(v648);
                    }

                    CFRelease(v615);
                  }

                  else
                  {
                    v618 = sub_10003E080(v616, v617);
                    if (os_log_type_enabled(v618, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B3900();
                    }

                    if (qword_100127ED0)
                    {
                      v619 = qword_100127ED0;
                    }

                    else
                    {
                      v619 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v619);
                  }

                  *__error() = v611;
                }

                v663 = [v28 targetProcess];
                v664 = [v663 name];
                v665 = CFStringGetCStringPtr(v664, 0x8000100u);
                v666 = [v28 targetProcessId];
                sub_10003DF54("DoMicrostackshotsForSampleStore", "microstackshot.m", 562, "%s [%d]: %s: Bad report type %d", v667, v668, v669, v670, v665, v666, "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v698);

                abort();
              }

              if (byte_100127EC8)
              {
                v629 = __error();
                v630 = *v629;
                v632 = sub_10003E080(v629, v631);
                if (os_log_type_enabled(v632, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B36B8();
                }

                *__error() = v630;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v633 = *__error();
                v634 = [v28 targetProcess];
                v635 = [v634 name];
                v636 = CFStringGetCStringPtr(v635, 0x8000100u);
                v637 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: Bad report type %d", v636, "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v698);

                if (v637)
                {
                  v653 = CFStringGetCStringPtr(v637, 0x8000100u);
                  if (v653)
                  {
                    v654 = v653;
                    v655 = 0;
                  }

                  else
                  {
                    v654 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CC1F1D7uLL);
                    CFStringGetCString(v637, v654, 1024, 0x8000100u);
                    v655 = v654;
                  }

                  if (qword_100127ED0)
                  {
                    v672 = qword_100127ED0;
                  }

                  else
                  {
                    v672 = __stderrp;
                  }

                  fprintf(v672, "%s\n", v654);
                  if (v655)
                  {
                    free(v655);
                  }

                  CFRelease(v637);
                }

                else
                {
                  v640 = sub_10003E080(v638, v639);
                  if (os_log_type_enabled(v640, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B3770();
                  }

                  if (qword_100127ED0)
                  {
                    v641 = qword_100127ED0;
                  }

                  else
                  {
                    v641 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v641);
                }

                *__error() = v633;
              }

              v673 = [v28 targetProcess];
              v674 = [v673 name];
              v675 = CFStringGetCStringPtr(v674, 0x8000100u);
              sub_10003DF54("DoMicrostackshotsForSampleStore", "microstackshot.m", 562, "%s: %s: Bad report type %d", v676, v677, v678, v679, v675, "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v698);

              abort();
            }

            if (v139 == 9)
            {
              v379 = @"Powerstats";
            }

            else
            {
              v379 = @"IOStats";
            }

            v380 = geteuid();
            v699 = v30;
            v700 = 0;
            v381 = sub_10006AF5C(v30, v379, 0xFFFFFFFFLL, 1537, v380, 0x1A4u, &v700);
            v382 = v700;
            if (v381 == -1)
            {
              v396 = [v28 targetProcess];
              v397 = [v396 name];

              v398 = [v28 targetProcessId];
              if (v397)
              {
                v30 = v699;
                v323 = v690;
                if ((v398 & 0x80000000) == 0)
                {
                  if (byte_100127EC8)
                  {
                    v399 = __error();
                    v400 = *v399;
                    v402 = sub_10003E080(v399, v401);
                    if (os_log_type_enabled(v402, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B48E8();
                    }

                    *__error() = v400;
                    v323 = v690;
                  }

                  v377 = 0;
                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_721;
                  }

                  v693 = *__error();
                  v403 = [v28 targetProcess];
                  v404 = [v403 name];
                  v405 = [v28 targetProcessId];
                  v406 = v382;
                  v407 = *__error();
                  v408 = __error();
                  v409 = strerror(*v408);
                  v682 = v407;
                  v382 = v406;
                  v410 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: could not open log file %@: %d (%s)", v404, v405, v406, v682, v409);

                  if (v410)
                  {
                    v413 = CFStringGetCStringPtr(v410, 0x8000100u);
                    if (v413)
                    {
                      v414 = v413;
                      v415 = 0;
                    }

                    else
                    {
                      v414 = malloc_type_calloc(0x400uLL, 1uLL, 0xB1F43F5DuLL);
                      CFStringGetCString(v410, v414, 1024, 0x8000100u);
                      v415 = v414;
                    }

                    v30 = v699;
                    goto LABEL_701;
                  }

                  v514 = sub_10003E080(v411, v412);
                  if (os_log_type_enabled(v514, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B49A4();
                  }

                  if (qword_100127ED0)
                  {
                    v515 = qword_100127ED0;
                  }

                  else
                  {
                    v515 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v515);
                  v377 = 0;
                  v30 = v699;
                  goto LABEL_717;
                }

                if (byte_100127EC8)
                {
                  v450 = __error();
                  v451 = *v450;
                  v453 = sub_10003E080(v450, v452);
                  if (os_log_type_enabled(v453, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B4778();
                  }

                  *__error() = v451;
                  v323 = v690;
                }

                v377 = 0;
                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_721;
                }

                v389 = *__error();
                v454 = [v28 targetProcess];
                v455 = [v454 name];
                v456 = *__error();
                v457 = __error();
                v458 = strerror(*v457);
                v410 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: could not open log file %@: %d (%s)", v455, v382, v456, v458);

                if (!v410)
                {
                  v519 = sub_10003E080(v459, v460);
                  if (os_log_type_enabled(v519, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B4830();
                  }

                  if (qword_100127ED0)
                  {
                    v520 = qword_100127ED0;
                  }

                  else
                  {
                    v520 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v520);
                  v377 = 0;
                  v30 = v699;
                  goto LABEL_708;
                }

                v461 = CFStringGetCStringPtr(v410, 0x8000100u);
                if (v461)
                {
                  v414 = v461;
                  v415 = 0;
                }

                else
                {
                  v414 = malloc_type_calloc(0x400uLL, 1uLL, 0xB1F43F5DuLL);
                  CFStringGetCString(v410, v414, 1024, 0x8000100u);
                  v415 = v414;
                }

                v30 = v699;
LABEL_702:
                if (qword_100127ED0)
                {
                  v585 = qword_100127ED0;
                }

                else
                {
                  v585 = __stderrp;
                }

                fprintf(v585, "%s\n", v414);
                if (v415)
                {
                  free(v415);
                }

                CFRelease(v410);
                v377 = 0;
LABEL_708:
                v41 = v696;
LABEL_719:
                *__error() = v389;
LABEL_720:
                v323 = v690;
                goto LABEL_721;
              }

              v30 = v699;
              v323 = v690;
              if ((v398 & 0x80000000) == 0)
              {
                if (byte_100127EC8)
                {
                  v436 = __error();
                  v437 = *v436;
                  v439 = sub_10003E080(v436, v438);
                  if (os_log_type_enabled(v439, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B4B90();
                  }

                  *__error() = v437;
                  v323 = v690;
                }

                v377 = 0;
                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_721;
                }

                v693 = *__error();
                v440 = sub_10003E020([v28 targetProcessId]);
                v441 = [v28 targetProcessId];
                v442 = v382;
                v443 = *__error();
                v444 = __error();
                v445 = strerror(*v444);
                v684 = v443;
                v382 = v442;
                v446 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not open log file %@: %d (%s)", v440, v441, v442, v684, v445);
                if (v446)
                {
                  v410 = v446;
                  v448 = CFStringGetCStringPtr(v446, 0x8000100u);
                  if (v448)
                  {
LABEL_660:
                    v414 = v448;
                    v415 = 0;
LABEL_701:
                    v389 = v693;
                    goto LABEL_702;
                  }

                  v449 = 2985574237;
LABEL_700:
                  v414 = malloc_type_calloc(0x400uLL, 1uLL, v449);
                  CFStringGetCString(v410, v414, 1024, 0x8000100u);
                  v415 = v414;
                  goto LABEL_701;
                }

                v518 = sub_10003E080(0, v447);
                if (os_log_type_enabled(v518, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B4C3C();
                }

LABEL_689:

                if (qword_100127ED0)
                {
                  v582 = qword_100127ED0;
                }

                else
                {
                  v582 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v582);
LABEL_716:
                v377 = 0;
LABEL_717:
                v41 = v696;
LABEL_718:
                v389 = v693;
                goto LABEL_719;
              }

              if (byte_100127EC8)
              {
                v491 = __error();
                v492 = *v491;
                v494 = sub_10003E080(v491, v493);
                if (os_log_type_enabled(v494, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B4A60();
                }

                *__error() = v492;
                v323 = v690;
              }

              v377 = 0;
              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_721;
              }

              v389 = *__error();
              v495 = *__error();
              v496 = __error();
              v497 = strerror(*v496);
              v498 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not open log file %@: %d (%s)", v382, v495, v497);
              if (v498)
              {
                v410 = v498;
                v500 = CFStringGetCStringPtr(v498, 0x8000100u);
                if (v500)
                {
LABEL_678:
                  v414 = v500;
                  v415 = 0;
                  goto LABEL_702;
                }

                v501 = 2985574237;
LABEL_736:
                v414 = malloc_type_calloc(0x400uLL, 1uLL, v501);
                CFStringGetCString(v410, v414, 1024, 0x8000100u);
                v415 = v414;
                goto LABEL_702;
              }

              v525 = sub_10003E080(0, v499);
              if (os_log_type_enabled(v525, OS_LOG_TYPE_FAULT))
              {
                sub_1000B4AF8();
              }

LABEL_730:

              if (qword_100127ED0)
              {
                v589 = qword_100127ED0;
              }

              else
              {
                v589 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v589);
              v377 = 0;
              goto LABEL_719;
            }

            v383 = fdopen(v381, "w");
            if (v383)
            {
              v384 = v383;
              [v41 printToStream:v383];
              fclose(v384);
              v30 = v699;
              if (byte_100127EC8 == 1)
              {
                v385 = __error();
                v386 = *v385;
                v388 = sub_10003E080(v385, v387);
                if (os_log_type_enabled(v388, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v707 = v382;
                  _os_log_impl(&_mh_execute_header, v388, OS_LOG_TYPE_DEFAULT, "Spindump analysis written to file %@", buf, 0xCu);
                }

                *__error() = v386;
              }

              v377 = 1;
              if (byte_100127EC9 != 1)
              {
                goto LABEL_720;
              }

              v323 = v690;
              if (dword_100127558 > 2)
              {
LABEL_721:

                v32 = v695;
                goto LABEL_454;
              }

              v389 = *__error();
              v390 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump analysis written to file %@", v382);
              if (!v390)
              {
                v475 = sub_10003E080(0, v391);
                if (os_log_type_enabled(v475, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B3C28();
                }

                if (qword_100127ED0)
                {
                  v476 = qword_100127ED0;
                }

                else
                {
                  v476 = __stderrp;
                }

                v377 = 1;
                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v476);
                goto LABEL_719;
              }

              v392 = v390;
              v393 = CFStringGetCStringPtr(v390, 0x8000100u);
              if (v393)
              {
                v394 = v393;
                v395 = 0;
              }

              else
              {
                v394 = malloc_type_calloc(0x400uLL, 1uLL, 0xB9CFA3CBuLL);
                CFStringGetCString(v392, v394, 1024, 0x8000100u);
                v395 = v394;
              }

              if (qword_100127ED0)
              {
                v502 = qword_100127ED0;
              }

              else
              {
                v502 = __stderrp;
              }

              fprintf(v502, "%s\n", v394);
              if (v395)
              {
                free(v395);
              }

              CFRelease(v392);
              v377 = 1;
              goto LABEL_708;
            }

            v416 = [v28 targetProcess];
            v417 = [v416 name];

            v418 = [v28 targetProcessId];
            if (v417)
            {
              if ((v418 & 0x80000000) == 0)
              {
                if (byte_100127EC8)
                {
                  v419 = __error();
                  v420 = *v419;
                  v422 = sub_10003E080(v419, v421);
                  if (os_log_type_enabled(v422, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B3E08();
                  }

                  *__error() = v420;
                }

                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_640;
                }

                v694 = *__error();
                v423 = [v28 targetProcess];
                v424 = [v423 name];
                v425 = [v28 targetProcessId];
                v426 = v382;
                v427 = *__error();
                v428 = __error();
                v429 = strerror(*v428);
                v683 = v427;
                v382 = v426;
                v430 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: could not fdopen log file %@: %d (%s)", v424, v425, v426, v683, v429);

                if (v430)
                {
                  v433 = CFStringGetCStringPtr(v430, 0x8000100u);
                  if (v433)
                  {
                    v434 = v433;
                    v435 = 0;
                  }

                  else
                  {
                    v434 = malloc_type_calloc(0x400uLL, 1uLL, 0xA55A59C7uLL);
                    CFStringGetCString(v430, v434, 1024, 0x8000100u);
                    v435 = v434;
                  }

                  v54 = v697;
                  goto LABEL_632;
                }

                v516 = sub_10003E080(v431, v432);
                if (os_log_type_enabled(v516, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B3EC4();
                }

                if (qword_100127ED0)
                {
                  v517 = qword_100127ED0;
                }

                else
                {
                  v517 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v517);
                v54 = v697;
LABEL_620:
                v41 = v696;
LABEL_639:
                *__error() = v694;
LABEL_640:
                close(v381);
                v527 = [v28 targetProcess];
                v528 = [v527 name];

                v529 = [v28 targetProcessId];
                if (v528)
                {
                  v30 = v699;
                  v323 = v690;
                  if ((v529 & 0x80000000) == 0)
                  {
                    if (byte_100127EC8)
                    {
                      v530 = __error();
                      v531 = *v530;
                      v533 = sub_10003E080(v530, v532);
                      if (os_log_type_enabled(v533, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000B4378();
                      }

                      *__error() = v531;
                      v323 = v690;
                    }

                    v377 = 0;
                    if (byte_100127EC9 != 1 || dword_100127558 > 3)
                    {
                      goto LABEL_721;
                    }

                    v693 = *__error();
                    v534 = [v28 targetProcess];
                    v535 = [v534 name];
                    v536 = [v28 targetProcessId];
                    v537 = v382;
                    v538 = *__error();
                    v539 = __error();
                    v540 = strerror(*v539);
                    v686 = v538;
                    v382 = v537;
                    v410 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: could not write to file %@: %d (%s)", v535, v536, v537, v686, v540);

                    if (v410)
                    {
                      v543 = CFStringGetCStringPtr(v410, 0x8000100u);
                      if (v543)
                      {
                        v414 = v543;
                        v415 = 0;
                      }

                      else
                      {
                        v414 = malloc_type_calloc(0x400uLL, 1uLL, 0x27A76D56uLL);
                        CFStringGetCString(v410, v414, 1024, 0x8000100u);
                        v415 = v414;
                      }

                      v54 = v697;
                      goto LABEL_701;
                    }

                    v580 = sub_10003E080(v541, v542);
                    if (os_log_type_enabled(v580, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B4434();
                    }

                    if (qword_100127ED0)
                    {
                      v581 = qword_100127ED0;
                    }

                    else
                    {
                      v581 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v581);
                    v377 = 0;
                    v54 = v697;
                    goto LABEL_717;
                  }

                  if (byte_100127EC8)
                  {
                    v556 = __error();
                    v557 = *v556;
                    v559 = sub_10003E080(v556, v558);
                    if (os_log_type_enabled(v559, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B4208();
                    }

                    *__error() = v557;
                    v323 = v690;
                  }

                  v377 = 0;
                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_721;
                  }

                  v693 = *__error();
                  v560 = [v28 targetProcess];
                  v561 = [v560 name];
                  v562 = *__error();
                  v563 = __error();
                  v564 = strerror(*v563);
                  v565 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: could not write to file %@: %d (%s)", v561, v382, v562, v564);

                  if (!v565)
                  {
                    v583 = sub_10003E080(v566, v567);
                    if (os_log_type_enabled(v583, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B42C0();
                    }

                    if (qword_100127ED0)
                    {
                      v584 = qword_100127ED0;
                    }

                    else
                    {
                      v584 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v584);
                    v377 = 0;
                    v41 = v696;
                    v54 = v697;
                    goto LABEL_718;
                  }

                  v568 = CFStringGetCStringPtr(v565, 0x8000100u);
                  if (v568)
                  {
                    v569 = v568;
                    v570 = 0;
                  }

                  else
                  {
                    v569 = malloc_type_calloc(0x400uLL, 1uLL, 0x27A76D56uLL);
                    CFStringGetCString(v565, v569, 1024, 0x8000100u);
                    v570 = v569;
                  }

                  v54 = v697;
                  if (qword_100127ED0)
                  {
                    v586 = qword_100127ED0;
                  }

                  else
                  {
                    v586 = __stderrp;
                  }

                  fprintf(v586, "%s\n", v569);
                  if (v570)
                  {
                    free(v570);
                  }

                  CFRelease(v565);
                  goto LABEL_716;
                }

                v30 = v699;
                v323 = v690;
                if ((v529 & 0x80000000) == 0)
                {
                  if (byte_100127EC8)
                  {
                    v544 = __error();
                    v545 = *v544;
                    v547 = sub_10003E080(v544, v546);
                    if (os_log_type_enabled(v547, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B4620();
                    }

                    *__error() = v545;
                    v323 = v690;
                  }

                  v377 = 0;
                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_721;
                  }

                  v693 = *__error();
                  v548 = sub_10003E020([v28 targetProcessId]);
                  v549 = [v28 targetProcessId];
                  v550 = v382;
                  v551 = *__error();
                  v552 = __error();
                  v553 = strerror(*v552);
                  v687 = v551;
                  v382 = v550;
                  v554 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not write to file %@: %d (%s)", v548, v549, v550, v687, v553);
                  if (v554)
                  {
                    v410 = v554;
                    v448 = CFStringGetCStringPtr(v554, 0x8000100u);
                    if (v448)
                    {
                      goto LABEL_660;
                    }

                    v449 = 665283926;
                    goto LABEL_700;
                  }

                  v518 = sub_10003E080(0, v555);
                  if (os_log_type_enabled(v518, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B46CC();
                  }

                  goto LABEL_689;
                }

                if (byte_100127EC8)
                {
                  v571 = __error();
                  v572 = *v571;
                  v574 = sub_10003E080(v571, v573);
                  if (os_log_type_enabled(v574, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B44F0();
                  }

                  *__error() = v572;
                  v323 = v690;
                }

                v377 = 0;
                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_721;
                }

                v389 = *__error();
                v575 = *__error();
                v576 = __error();
                v577 = strerror(*v576);
                v578 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not write to file %@: %d (%s)", v382, v575, v577);
                if (v578)
                {
                  v410 = v578;
                  v500 = CFStringGetCStringPtr(v578, 0x8000100u);
                  if (v500)
                  {
                    goto LABEL_678;
                  }

                  v501 = 665283926;
                  goto LABEL_736;
                }

                v525 = sub_10003E080(0, v579);
                if (os_log_type_enabled(v525, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B4588();
                }

                goto LABEL_730;
              }

              if (byte_100127EC8)
              {
                v479 = __error();
                v480 = *v479;
                v482 = sub_10003E080(v479, v481);
                if (os_log_type_enabled(v482, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B3C98();
                }

                *__error() = v480;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_640;
              }

              v694 = *__error();
              v483 = [v28 targetProcess];
              v484 = [v483 name];
              v485 = *__error();
              v486 = __error();
              v487 = strerror(*v486);
              v430 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: could not fdopen log file %@: %d (%s)", v484, v382, v485, v487);

              if (!v430)
              {
                v523 = sub_10003E080(v488, v489);
                if (os_log_type_enabled(v523, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B3D50();
                }

                if (qword_100127ED0)
                {
                  v524 = qword_100127ED0;
                }

                else
                {
                  v524 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v524);
                v54 = v697;
                goto LABEL_638;
              }

              v490 = CFStringGetCStringPtr(v430, 0x8000100u);
              if (v490)
              {
                v434 = v490;
                v435 = 0;
              }

              else
              {
                v434 = malloc_type_calloc(0x400uLL, 1uLL, 0xA55A59C7uLL);
                CFStringGetCString(v430, v434, 1024, 0x8000100u);
                v435 = v434;
              }

              v54 = v697;
LABEL_632:
              if (qword_100127ED0)
              {
                v526 = qword_100127ED0;
              }

              else
              {
                v526 = __stderrp;
              }

              fprintf(v526, "%s\n", v434);
              if (v435)
              {
                free(v435);
              }

              CFRelease(v430);
LABEL_638:
              v41 = v696;
              goto LABEL_639;
            }

            if ((v418 & 0x80000000) != 0)
            {
              if (byte_100127EC8)
              {
                v504 = __error();
                v505 = *v504;
                v507 = sub_10003E080(v504, v506);
                if (os_log_type_enabled(v507, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B3F80();
                }

                *__error() = v505;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_640;
              }

              v694 = *__error();
              v508 = *__error();
              v509 = __error();
              v510 = strerror(*v509);
              v511 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not fdopen log file %@: %d (%s)", v382, v508, v510);
              if (!v511)
              {
                v587 = sub_10003E080(0, v512);
                if (os_log_type_enabled(v587, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B4018();
                }

                if (qword_100127ED0)
                {
                  v588 = qword_100127ED0;
                }

                else
                {
                  v588 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v588);
                goto LABEL_639;
              }

              v430 = v511;
              v513 = CFStringGetCStringPtr(v511, 0x8000100u);
              if (v513)
              {
                v434 = v513;
                v435 = 0;
                goto LABEL_632;
              }
            }

            else
            {
              if (byte_100127EC8)
              {
                v462 = __error();
                v463 = *v462;
                v465 = sub_10003E080(v462, v464);
                if (os_log_type_enabled(v465, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B40B0();
                }

                *__error() = v463;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_640;
              }

              v694 = *__error();
              v466 = sub_10003E020([v28 targetProcessId]);
              v467 = [v28 targetProcessId];
              v468 = v382;
              v469 = *__error();
              v470 = __error();
              v471 = strerror(*v470);
              v685 = v469;
              v382 = v468;
              v472 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not fdopen log file %@: %d (%s)", v466, v467, v468, v685, v471);
              if (!v472)
              {
                v521 = sub_10003E080(0, v473);
                if (os_log_type_enabled(v521, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B415C();
                }

                if (qword_100127ED0)
                {
                  v522 = qword_100127ED0;
                }

                else
                {
                  v522 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v522);
                goto LABEL_620;
              }

              v430 = v472;
              v474 = CFStringGetCStringPtr(v472, 0x8000100u);
              if (v474)
              {
                v434 = v474;
                v435 = 0;
                goto LABEL_632;
              }
            }

            v434 = malloc_type_calloc(0x400uLL, 1uLL, 0xA55A59C7uLL);
            CFStringGetCString(v430, v434, 1024, 0x8000100u);
            v435 = v434;
            goto LABEL_632;
          }

          v346 = v30;
          v347 = v42;
          v348 = *__error();
          v349 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No file to append");
          if (v349)
          {
            v351 = v349;
            v352 = CFStringGetCStringPtr(v349, 0x8000100u);
            if (v352)
            {
              v353 = v352;
              v354 = 0;
            }

            else
            {
              v353 = malloc_type_calloc(0x400uLL, 1uLL, 0x359AC69FuLL);
              CFStringGetCString(v351, v353, 1024, 0x8000100u);
              v354 = v353;
            }

            if (qword_100127ED0)
            {
              v369 = qword_100127ED0;
            }

            else
            {
              v369 = __stderrp;
            }

            fprintf(v369, "%s\n", v353);
            if (v354)
            {
              free(v354);
            }

            CFRelease(v351);
            v41 = v696;
          }

          else
          {
            v367 = sub_10003E080(0, v350);
            if (os_log_type_enabled(v367, OS_LOG_TYPE_FAULT))
            {
              sub_1000B367C();
            }

            if (qword_100127ED0)
            {
              v368 = qword_100127ED0;
            }

            else
            {
              v368 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v368);
          }

          v323 = 0;
          *__error() = v348;
          v42 = v347;
          v30 = v346;
          v54 = v697;
          v32 = v695;
LABEL_448:
          v139 = v698;
          goto LABEL_449;
        }

        v701 = 0;
        v323 = [[NSData alloc] initWithContentsOfFile:v32 options:1 error:&v701];
        v324 = v701;
        v325 = v324;
        v54 = v697;
        if (v323)
        {
          if (byte_100127EC8)
          {
            v688 = v324;
            v326 = v30;
            v327 = v42;
            v328 = v323;
            v329 = __error();
            v330 = *v329;
            v332 = sub_10003E080(v329, v331);
            if (os_log_type_enabled(v332, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B3400();
            }

            *__error() = v330;
            v41 = v696;
            v323 = v328;
            v42 = v327;
            v30 = v326;
            v54 = v697;
            v325 = v688;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_447;
          }

          v689 = v323;
          v333 = v30;
          v334 = v32;
          v335 = v42;
          v336 = *__error();
          v337 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Appending data file %@", v334);
          if (!v337)
          {
            v365 = sub_10003E080(0, v338);
            if (os_log_type_enabled(v365, OS_LOG_TYPE_FAULT))
            {
              sub_1000B3470();
            }

            if (qword_100127ED0)
            {
              v366 = qword_100127ED0;
            }

            else
            {
              v366 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v366);
            goto LABEL_446;
          }

          v339 = v337;
          v340 = CFStringGetCStringPtr(v337, 0x8000100u);
          if (!v340)
          {
            v341 = 2392982575;
LABEL_438:
            v363 = malloc_type_calloc(0x400uLL, 1uLL, v341);
            CFStringGetCString(v339, v363, 1024, 0x8000100u);
            v364 = v363;
            goto LABEL_439;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v355 = __error();
            v356 = *v355;
            v358 = sub_10003E080(v355, v357);
            if (os_log_type_enabled(v358, OS_LOG_TYPE_ERROR))
            {
              sub_1000B34E0(v32, v325);
            }

            *__error() = v356;
            v41 = v696;
            v323 = 0;
            v54 = v697;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 3)
          {
            goto LABEL_447;
          }

          v689 = v323;
          v333 = v30;
          v359 = v32;
          v335 = v42;
          v336 = *__error();
          v360 = [v325 localizedDescription];
          v339 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"reading in data file %@ failed: %@", v359, v360);

          if (!v339)
          {
            v370 = sub_10003E080(v361, v362);
            if (os_log_type_enabled(v370, OS_LOG_TYPE_FAULT))
            {
              sub_1000B3590(v695, v325);
            }

            if (qword_100127ED0)
            {
              v371 = qword_100127ED0;
            }

            else
            {
              v371 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v371);
            goto LABEL_445;
          }

          v340 = CFStringGetCStringPtr(v339, 0x8000100u);
          if (!v340)
          {
            v341 = 1329572444;
            goto LABEL_438;
          }
        }

        v363 = v340;
        v364 = 0;
LABEL_439:
        if (qword_100127ED0)
        {
          v372 = qword_100127ED0;
        }

        else
        {
          v372 = __stderrp;
        }

        fprintf(v372, "%s\n", v363);
        if (v364)
        {
          free(v364);
        }

        CFRelease(v339);
LABEL_445:
        v30 = v333;
        v41 = v696;
LABEL_446:
        *__error() = v336;
        v42 = v335;
        v54 = v697;
        v32 = v695;
        v323 = v689;
LABEL_447:

        goto LABEL_448;
      }

      v32 = v695;
      v41 = v696;
      v139 = v698;
      if ((v97 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v276 = __error();
          v277 = *v276;
          v279 = sub_10003E080(v276, v278);
          if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
          {
            sub_1000B2D64();
          }

          *__error() = v277;
          v139 = v698;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_382;
        }

        v178 = *__error();
        v205 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"MetricKit unavailable, not providing cpu usage report");
        if (!v205)
        {
          v207 = sub_10003E080(0, v280);
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2DA0();
          }

          goto LABEL_574;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v200 = __error();
          v201 = *v200;
          v203 = sub_10003E080(v200, v202);
          if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
          {
            sub_1000B2DDC();
          }

          *__error() = v201;
          v139 = v698;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_382;
        }

        v178 = *__error();
        v204 = sub_10003E020([v28 targetProcessId]);
        v205 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: MetricKit unavailable, not providing cpu usage report", v204, [v28 targetProcessId]);
        if (!v205)
        {
          v207 = sub_10003E080(0, v206);
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2E70();
          }

LABEL_574:

          if (qword_100127ED0)
          {
            v503 = qword_100127ED0;
          }

          else
          {
            v503 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v503);
LABEL_578:
          *__error() = v178;
          goto LABEL_381;
        }
      }

      v182 = v205;
      v183 = v30;
      v274 = CFStringGetCStringPtr(v205, 0x8000100u);
      if (!v274)
      {
        v275 = 326608200;
        goto LABEL_540;
      }

      goto LABEL_308;
    }

    v113 = objc_opt_class();
    v114 = [v28 targetProcess];
    v115 = [v114 name];

    v116 = [v28 targetProcessId];
    if (!v113)
    {
      if (v115)
      {
        v32 = v695;
        v41 = v696;
        v139 = v698;
        if ((v116 & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v282 = __error();
            v283 = *v282;
            v285 = sub_10003E080(v282, v284);
            if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
            {
              sub_1000B2478(v28);
            }

            *__error() = v283;
            v139 = v698;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 3)
          {
            goto LABEL_382;
          }

          v140 = v30;
          v141 = *__error();
          v286 = [v28 targetProcess];
          v287 = [v286 name];
          v144 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: MetricKit unavailable, not providing disk writes report", v287);

          if (!v144)
          {
            v147 = sub_10003E080(v288, v289);
            if (os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
            {
              sub_1000B251C(v28);
            }

            goto LABEL_375;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v166 = __error();
            v167 = *v166;
            v169 = sub_10003E080(v166, v168);
            if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
            {
              sub_1000B25C0();
            }

            *__error() = v167;
            v139 = v698;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 3)
          {
            goto LABEL_382;
          }

          v140 = v30;
          v141 = *__error();
          v170 = [v28 targetProcess];
          v171 = [v170 name];
          v144 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: MetricKit unavailable, not providing disk writes report", v171, [v28 targetProcessId]);

          if (!v144)
          {
            v147 = sub_10003E080(v172, v173);
            if (os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
            {
              sub_1000B2668();
            }

            goto LABEL_375;
          }
        }

        CStringPtr = CFStringGetCStringPtr(v144, 0x8000100u);
        if (!CStringPtr)
        {
          v227 = 626516253;
          goto LABEL_349;
        }

        goto LABEL_267;
      }

      v32 = v695;
      v41 = v696;
      v139 = v698;
      if ((v116 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v308 = __error();
          v309 = *v308;
          v311 = sub_10003E080(v308, v310);
          if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
          {
            sub_1000B2710();
          }

          *__error() = v309;
          v139 = v698;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_382;
        }

        v178 = *__error();
        v266 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"MetricKit unavailable, not providing disk writes report");
        if (!v266)
        {
          v207 = sub_10003E080(0, v312);
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_1000B274C();
          }

          goto LABEL_574;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v261 = __error();
          v262 = *v261;
          v264 = sub_10003E080(v261, v263);
          if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
          {
            sub_1000B2788();
          }

          *__error() = v262;
          v139 = v698;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_382;
        }

        v178 = *__error();
        v265 = sub_10003E020([v28 targetProcessId]);
        v266 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: MetricKit unavailable, not providing disk writes report", v265, [v28 targetProcessId]);
        if (!v266)
        {
          v207 = sub_10003E080(0, v267);
          if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
          {
            sub_1000B281C();
          }

          goto LABEL_574;
        }
      }

      v182 = v266;
      v183 = v30;
      v274 = CFStringGetCStringPtr(v266, 0x8000100u);
      if (!v274)
      {
        v275 = 626516253;
        goto LABEL_540;
      }

      goto LABEL_308;
    }

    if (v115)
    {
      v41 = v696;
      if ((v116 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v248 = __error();
          v249 = *v248;
          v251 = sub_10003E080(v248, v250);
          if (os_log_type_enabled(v251, OS_LOG_TYPE_INFO))
          {
            v252 = [v28 targetProcess];
            v253 = [v252 name];
            *buf = 138543362;
            v707 = v253;
            _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_INFO, "%{public}@: Providing disk writes report to MetricKit", buf, 0xCu);

            v41 = v696;
          }

          *__error() = v249;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 1)
        {
          goto LABEL_365;
        }

        v124 = v30;
        v125 = *__error();
        v254 = [v28 targetProcess];
        v255 = [v254 name];
        v128 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Providing disk writes report to MetricKit", v255);

        if (!v128)
        {
          v131 = sub_10003E080(v256, v257);
          if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
          {
            sub_1000B225C(v28);
          }

          goto LABEL_343;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v117 = __error();
          v118 = *v117;
          v120 = sub_10003E080(v117, v119);
          if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
          {
            v121 = [v28 targetProcess];
            v122 = [v121 name];
            v123 = [v28 targetProcessId];
            *buf = 138543618;
            v707 = v122;
            v708 = 1024;
            v709 = v123;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "%{public}@ [%d]: Providing disk writes report to MetricKit", buf, 0x12u);

            v41 = v696;
          }

          *__error() = v118;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 1)
        {
          goto LABEL_365;
        }

        v124 = v30;
        v125 = *__error();
        v126 = [v28 targetProcess];
        v127 = [v126 name];
        v128 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Providing disk writes report to MetricKit", v127, [v28 targetProcessId]);

        if (!v128)
        {
          v131 = sub_10003E080(v129, v130);
          if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2300();
          }

LABEL_343:

          if (qword_100127ED0)
          {
            v318 = qword_100127ED0;
          }

          else
          {
            v318 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v318);
LABEL_347:
          v30 = v124;
LABEL_363:
          v41 = v696;
LABEL_364:
          *__error() = v125;
LABEL_365:
          v306 = v41;
          v307 = 1;
          goto LABEL_366;
        }
      }

      v258 = CFStringGetCStringPtr(v128, 0x8000100u);
      if (v258)
      {
        v259 = v258;
        v260 = 0;
      }

      else
      {
        v259 = malloc_type_calloc(0x400uLL, 1uLL, 0x83422993uLL);
        CFStringGetCString(v128, v259, 1024, 0x8000100u);
        v260 = v259;
      }

      if (qword_100127ED0)
      {
        v314 = qword_100127ED0;
      }

      else
      {
        v314 = __stderrp;
      }

      fprintf(v314, "%s\n", v259);
      if (v260)
      {
        free(v260);
      }

      CFRelease(v128);
      goto LABEL_347;
    }

    v41 = v696;
    if ((v116 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v292 = __error();
        v293 = *v292;
        v295 = sub_10003E080(v292, v294);
        if (os_log_type_enabled(v295, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v295, OS_LOG_TYPE_INFO, "Providing disk writes report to MetricKit", buf, 2u);
        }

        *__error() = v293;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_365;
      }

      v125 = *__error();
      v215 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Providing disk writes report to MetricKit");
      if (!v215)
      {
        v217 = sub_10003E080(0, v296);
        if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
        {
          sub_1000B23A8();
        }

        goto LABEL_535;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v208 = __error();
        v209 = *v208;
        v211 = sub_10003E080(v208, v210);
        if (os_log_type_enabled(v211, OS_LOG_TYPE_INFO))
        {
          v212 = sub_10003E020([v28 targetProcessId]);
          v213 = [v28 targetProcessId];
          *buf = 136446466;
          v707 = v212;
          v708 = 1024;
          v709 = v213;
          _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_INFO, "%{public}s [%d]: Providing disk writes report to MetricKit", buf, 0x12u);
        }

        *__error() = v209;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_365;
      }

      v125 = *__error();
      v214 = sub_10003E020([v28 targetProcessId]);
      v215 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Providing disk writes report to MetricKit", v214, [v28 targetProcessId]);
      if (!v215)
      {
        v217 = sub_10003E080(0, v216);
        if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
        {
          sub_1000B23E4();
        }

LABEL_535:

        if (qword_100127ED0)
        {
          v477 = qword_100127ED0;
        }

        else
        {
          v477 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v477);
        goto LABEL_364;
      }
    }

    v297 = v215;
    v298 = v30;
    v299 = CFStringGetCStringPtr(v215, 0x8000100u);
    if (v299)
    {
      v300 = v299;
      v301 = 0;
    }

    else
    {
      v300 = malloc_type_calloc(0x400uLL, 1uLL, 0x83422993uLL);
      CFStringGetCString(v297, v300, 1024, 0x8000100u);
      v301 = v300;
    }

    if (qword_100127ED0)
    {
      v320 = qword_100127ED0;
    }

    else
    {
      v320 = __stderrp;
    }

    fprintf(v320, "%s\n", v300);
    if (v301)
    {
      free(v301);
    }

    CFRelease(v297);
    v30 = v298;
    goto LABEL_363;
  }

  v43 = [v28 endTime];
  if (v43)
  {
    v44 = v43;
    [v43 machContTimeSeconds];
    if (v45 != 0.0)
    {
      [v44 machContTimeSeconds];
      if (v46 > a13)
      {
        v47 = v30;
        [v44 machContTimeSeconds];
        v49 = v48 - a13;
        v50 = 0.0;
LABEL_37:
        v53 = 0.0;
LABEL_38:
        v69 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:v50 machContTimeSec:v49 wallTime:v53];
        if (v69)
        {
          v70 = [v28 indexOfFirstSampleOnOrAfterTimestamp:v69];
          if (v70 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v73 = v70;
            v72 = [v28 sampleTimestamps];
            v74 = [v72 objectAtIndexedSubscript:v73];
            [v69 guessMissingTimesBasedOnTimestamp:v74];

LABEL_60:
            goto LABEL_61;
          }

          v71 = [v28 endTime];
          if (v71)
          {
            v72 = v71;

LABEL_59:
            [v69 guessMissingTimesBasedOnTimestamp:v72];
            goto LABEL_60;
          }

          v72 = [v28 startTime];

          if (v72)
          {
            goto LABEL_59;
          }
        }

LABEL_61:
        [v41 filterToTimestampRangeStart:v69 end:0];

        v30 = v47;
        v32 = v695;
        goto LABEL_62;
      }
    }

    [v44 wallTime];
    if (v51 != 0.0)
    {
      v47 = v30;
      [v44 wallTime];
      v53 = v52 - a13;
      v50 = 0.0;
      v49 = 0.0;
      goto LABEL_38;
    }

    [v44 machAbsTimeSeconds];
    if (v66 != 0.0)
    {
      [v44 machAbsTimeSeconds];
      if (v67 > a13)
      {
        v47 = v30;
        [v44 machAbsTimeSeconds];
        v50 = v68 - a13;
        v49 = 0.0;
        goto LABEL_37;
      }
    }

    v54 = v697;
    if (byte_100127EC8 == 1)
    {
      v75 = __error();
      v76 = *v75;
      v78 = sub_10003E080(v75, v77);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2114(v44);
      }

      *__error() = v76;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v79 = *__error();
      v80 = [v44 debugDescription];
      v81 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"-last provided, but unable to calculate %.0f seconds earlier than %@", *&a13, v80);

      if (v81)
      {
        v84 = CFStringGetCStringPtr(v81, 0x8000100u);
        if (v84)
        {
          v85 = v84;
          v86 = 0;
        }

        else
        {
          v85 = malloc_type_calloc(0x400uLL, 1uLL, 0x60E4062CuLL);
          CFStringGetCString(v81, v85, 1024, 0x8000100u);
          v86 = v85;
        }

        if (qword_100127ED0)
        {
          v313 = qword_100127ED0;
        }

        else
        {
          v313 = __stderrp;
        }

        fprintf(v313, "%s\n", v85);
        if (v86)
        {
          free(v86);
        }

        CFRelease(v81);
        v54 = v697;
      }

      else
      {
        v302 = sub_10003E080(v82, v83);
        if (os_log_type_enabled(v302, OS_LOG_TYPE_FAULT))
        {
          sub_1000B21B8(v44);
        }

        if (qword_100127ED0)
        {
          v303 = qword_100127ED0;
        }

        else
        {
          v303 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v303);
      }

      v41 = v696;
      *__error() = v79;
    }

    v247 = 0x800000;
    v32 = v695;
  }

  else
  {
    v54 = v697;
    if (byte_100127EC8 == 1)
    {
      v55 = __error();
      v56 = *v55;
      v58 = sub_10003E080(v55, v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_1000B4CE8(v28);
      }

      *__error() = v56;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v59 = *__error();
      v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"-last provided, but unable to get data end time (%lu samples)", [v28 numSamples]);
      if (v60)
      {
        v62 = v60;
        v63 = CFStringGetCStringPtr(v60, 0x8000100u);
        if (v63)
        {
          v64 = v63;
          v65 = 0;
        }

        else
        {
          v64 = malloc_type_calloc(0x400uLL, 1uLL, 0x14A863D6uLL);
          CFStringGetCString(v62, v64, 1024, 0x8000100u);
          v65 = v64;
        }

        if (qword_100127ED0)
        {
          v246 = qword_100127ED0;
        }

        else
        {
          v246 = __stderrp;
        }

        fprintf(v246, "%s\n", v64);
        if (v65)
        {
          free(v65);
        }

        CFRelease(v62);
        v54 = v697;
        v41 = v696;
      }

      else
      {
        v87 = sub_10003E080(0, v61);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
        {
          sub_1000B4D68(v28);
        }

        if (qword_100127ED0)
        {
          v88 = qword_100127ED0;
        }

        else
        {
          v88 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v88);
      }

      *__error() = v59;
    }

    v247 = 0x800000;
  }

LABEL_458:

  return v247;
}

void sub_100067758(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 8);
  if (*(v1 + 24) == 2)
  {
    if (qword_100127DC0 != -1)
    {
      sub_1000B5770();
    }
  }

  else
  {
    *(v1 + 24) = 1;
    v3 = *(a1 + 32);
    if (v3)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v3);
      length = xpc_data_get_length(*(a1 + 32));
      sub_10003ABA8(*(a1 + 40), 0, bytes_ptr, length, *(a1 + 112), *(a1 + 116), *(a1 + 48), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 56));
    }

    if (*(a1 + 124) == 1)
    {
      *(*(*(a1 + 80) + 8) + 24) = *(a1 + 120);
      v6 = *(a1 + 64);

      dispatch_semaphore_signal(v6);
    }
  }
}

void sub_100067834(id a1)
{
  if (byte_100127EC8 == 1)
  {
    v1 = __error();
    v2 = *v1;
    v4 = sub_10003E080(v1, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B5784();
    }

    *__error() = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v6 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already timed out, not parsing system stats microstackshots");
    if (v7)
    {
      v9 = v7;
      CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
      if (CStringPtr)
      {
        v11 = CStringPtr;
        v12 = 0;
      }

      else
      {
        v11 = malloc_type_calloc(0x400uLL, 1uLL, 0x90A71F3FuLL);
        CFStringGetCString(v9, v11, 1024, 0x8000100u);
        v12 = v11;
      }

      if (qword_100127ED0)
      {
        v15 = qword_100127ED0;
      }

      else
      {
        v15 = __stderrp;
      }

      fprintf(v15, "%s\n", v11);
      if (v12)
      {
        free(v12);
      }

      CFRelease(v9);
    }

    else
    {
      v13 = sub_10003E080(0, v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1000B57C0();
      }

      if (qword_100127ED0)
      {
        v14 = qword_100127ED0;
      }

      else
      {
        v14 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v14);
    }

    *__error() = v6;
  }
}

int *sub_1000679F8(int *result)
{
  v1 = *(*(result + 4) + 8);
  if (*(v1 + 24))
  {
    *(v1 + 24) = 0;
    if (byte_100127EC8 == 1)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_10003E080(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v26 = 30;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Timed out system stats microstackshots after %d seconds, but it's parsing, so waiting a bit longer", buf, 8u);
      }

      result = __error();
      *result = v3;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 2)
    {
      return result;
    }

    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out system stats microstackshots after %d seconds, but it's parsing, so waiting a bit longer", 30);
    if (v8)
    {
      v10 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (!CStringPtr)
      {
        v12 = 160436883;
LABEL_35:
        v20 = malloc_type_calloc(0x400uLL, 1uLL, v12);
        CFStringGetCString(v10, v20, 1024, 0x8000100u);
        v21 = v20;
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    v22 = sub_10003E080(0, v9);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000B57FC();
    }

    goto LABEL_30;
  }

  *(v1 + 24) = 2;
  *(*(*(result + 5) + 8) + 24) = 1;
  if (byte_100127EC8 == 1)
  {
    v13 = __error();
    v14 = *v13;
    v16 = sub_10003E080(v13, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000B5870();
    }

    result = __error();
    *result = v14;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v7 = *__error();
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out waiting for system stats microstackshots after %d seconds", 30);
    if (v18)
    {
      v10 = v18;
      CStringPtr = CFStringGetCStringPtr(v18, 0x8000100u);
      if (!CStringPtr)
      {
        v12 = 3157969297;
        goto LABEL_35;
      }

LABEL_25:
      v20 = CStringPtr;
      v21 = 0;
LABEL_36:
      if (qword_100127ED0)
      {
        v24 = qword_100127ED0;
      }

      else
      {
        v24 = __stderrp;
      }

      fprintf(v24, "%s\n", v20);
      if (v21)
      {
        free(v21);
      }

      CFRelease(v10);
LABEL_42:
      result = __error();
      *result = v7;
      return result;
    }

    v22 = sub_10003E080(0, v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000B58E4();
    }

LABEL_30:

    if (qword_100127ED0)
    {
      v23 = qword_100127ED0;
    }

    else
    {
      v23 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v23);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_100067D34(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (qword_100127DD0 != -1)
  {
    sub_1000B5958();
  }

  if (byte_100127DC8 == 1)
  {
    v6 = sub_10003E080(v3, v4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      [v5 wallTime];
      sub_100033CB8(v161 + 6, 0x32uLL, 1, v8);
    }
  }

  v9 = *(a1 + 40);
  if (v9 == 0.0 || ([v5 wallTime], v9 >= v10))
  {
    v26 = *(a1 + 48);
    if (v26 == 0.0 || ([v5 wallTime], v26 <= v27))
    {
      if (!*(a1 + 64) || ([v5 microSnapshotFlags] & *(a1 + 64)) != 0)
      {
        v41 = *(a1 + 68);
        if (v41 < 0 || v41 == [v5 processID])
        {
          v42 = *(a1 + 56);
          if (!v42 || v42 == [v5 threadID])
          {
            if (!*(a1 + 32) || ([v5 processMainBinaryUUID], (v43 = objc_claimAutoreleasedReturnValue()) != 0) && (v44 = v43, v45 = *(a1 + 32), objc_msgSend(v5, "processMainBinaryUUID"), v46 = objc_claimAutoreleasedReturnValue(), LOBYTE(v45) = objc_msgSend(v45, "containsObject:", v46), v46, v44, (v45 & 1) != 0))
            {
              if (qword_100127DD0 != -1)
              {
                sub_1000B596C();
              }

              if (byte_100127DC8 == 1)
              {
                if (byte_100127EC8 == 1)
                {
                  v47 = __error();
                  v48 = *v47;
                  v50 = sub_10003E080(v47, v49);
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1000B5B00(v5, v161 + 6, v50, v51, v52, v53, v54, v55, v153, v154, v155, v156, v157, v158, *buf, *&buf[8], *&buf[16], *&buf[24], *&buf[32], v160, v161[0], v161[1], v161[2], v161[3]);
                  }

                  *__error() = v48;
                }

                v15 = 0;
                if (byte_100127EC9 == 1 && dword_100127558 <= 0)
                {
                  v16 = *__error();
                  v56 = [v5 processName];
                  v57 = [v5 processID];
                  v58 = [v5 threadID];
                  v59 = [v5 processMainBinaryUUID];
                  v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Including microstackshot for %@ [%d] thread 0x%llx at %s (%@)", v56, v57, v58, v161 + 6, v59);

                  if (v60)
                  {
                    CStringPtr = CFStringGetCStringPtr(v60, 0x8000100u);
                    if (CStringPtr)
                    {
                      v64 = CStringPtr;
                      v65 = 0;
                    }

                    else
                    {
                      v64 = malloc_type_calloc(0x400uLL, 1uLL, 0x28DA767CuLL);
                      CFStringGetCString(v60, v64, 1024, 0x8000100u);
                      v65 = v64;
                    }

                    if (qword_100127ED0)
                    {
                      v125 = qword_100127ED0;
                    }

                    else
                    {
                      v125 = __stderrp;
                    }

                    fprintf(v125, "%s\n", v64);
                    if (v65)
                    {
                      free(v65);
                    }

                    CFRelease(v60);
                  }

                  else
                  {
                    v118 = sub_10003E080(v61, v62);
                    if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B5BC8();
                    }

                    if (qword_100127ED0)
                    {
                      v119 = qword_100127ED0;
                    }

                    else
                    {
                      v119 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v119);
                  }

                  v15 = 0;
                  goto LABEL_160;
                }
              }

              else
              {
                v15 = 0;
              }

              goto LABEL_161;
            }

            if (qword_100127DD0 != -1)
            {
              sub_1000B596C();
            }

            if (byte_100127DC8 == 1)
            {
              if (byte_100127EC8 == 1)
              {
                v89 = __error();
                v90 = *v89;
                v92 = sub_10003E080(v89, v91);
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                {
                  sub_1000B5994();
                }

                *__error() = v90;
              }

              v15 = 1;
              if (byte_100127EC9 != 1 || dword_100127558 > 0)
              {
                goto LABEL_161;
              }

              v16 = *__error();
              v93 = [v5 processName];
              v94 = [v5 processID];
              v95 = [v5 processMainBinaryUUID];
              v96 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being wrong uuid (%@)", v93, v94, v161 + 6, v95);

              if (v96)
              {
                v99 = CFStringGetCStringPtr(v96, 0x8000100u);
                if (v99)
                {
                  v100 = v99;
                  v101 = 0;
                }

                else
                {
                  v100 = malloc_type_calloc(0x400uLL, 1uLL, 0x2E4918B1uLL);
                  CFStringGetCString(v96, v100, 1024, 0x8000100u);
                  v101 = v100;
                }

                if (qword_100127ED0)
                {
                  v133 = qword_100127ED0;
                }

                else
                {
                  v133 = __stderrp;
                }

                fprintf(v133, "%s\n", v100);
                if (v101)
                {
                  free(v101);
                }

                v131 = v96;
                goto LABEL_159;
              }

              v124 = sub_10003E080(v97, v98);
              if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
              {
                sub_1000B5A4C();
              }

LABEL_136:
              if (qword_100127ED0)
              {
                v123 = qword_100127ED0;
              }

              else
              {
                v123 = __stderrp;
              }

              v15 = 1;
              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v123);
              goto LABEL_160;
            }

            goto LABEL_104;
          }

          if (qword_100127DD0 != -1)
          {
            sub_1000B596C();
          }

          if (byte_100127DC8 != 1)
          {
            goto LABEL_104;
          }

          if (byte_100127EC8 == 1)
          {
            v80 = __error();
            v81 = *v80;
            v83 = sub_10003E080(v80, v82);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              v149 = [v5 processName];
              v150 = [v5 processID];
              v151 = [v5 threadID];
              v152 = *(a1 + 56);
              *buf = 138413314;
              *&buf[4] = v149;
              *&buf[12] = 1024;
              *&buf[14] = v150;
              *&buf[18] = 2048;
              *&buf[20] = v151;
              *&buf[28] = 2080;
              *&buf[30] = v161 + 6;
              *&buf[38] = 2048;
              v160 = v152;
              _os_log_debug_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] thread 0x%llx at %s due to being wrong thread (requested 0x%llx)", buf, 0x30u);
            }

            *__error() = v81;
          }

          v15 = 1;
          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_161;
          }

          v16 = *__error();
          v84 = [v5 processName];
          v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] thread 0x%llx at %s due to being wrong thread (requested 0x%llx)", v84, [v5 processID], objc_msgSend(v5, "threadID"), v161 + 6, *(a1 + 56));

          if (v36)
          {
            v39 = CFStringGetCStringPtr(v36, 0x8000100u);
            if (!v39)
            {
              v40 = 2673781532;
              goto LABEL_152;
            }

            goto LABEL_91;
          }

          v104 = sub_10003E080(v85, v86);
          if (!os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_135;
          }

          v105 = [v5 processName];
          v120 = [v5 processID];
          v121 = [v5 threadID];
          v122 = *(a1 + 56);
          *buf = 138413314;
          *&buf[4] = v105;
          *&buf[12] = 1024;
          *&buf[14] = v120;
          *&buf[18] = 2048;
          *&buf[20] = v121;
          *&buf[28] = 2080;
          *&buf[30] = v161 + 6;
          *&buf[38] = 2048;
          v160 = v122;
          v109 = "Unable to format: Not including microstackshot for %@ [%d] thread 0x%llx at %s due to being wrong thread (requested 0x%llx)";
          v110 = v104;
          v111 = 48;
        }

        else
        {
          if (qword_100127DD0 != -1)
          {
            sub_1000B596C();
          }

          if (byte_100127DC8 != 1)
          {
            goto LABEL_104;
          }

          if (byte_100127EC8 == 1)
          {
            v66 = __error();
            v67 = *v66;
            v69 = sub_10003E080(v66, v68);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              v142 = [v5 processName];
              v143 = [v5 processID];
              v144 = *(a1 + 68);
              *buf = 138413058;
              *&buf[4] = v142;
              *&buf[12] = 1024;
              *&buf[14] = v143;
              *&buf[18] = 2080;
              *&buf[20] = v161 + 6;
              *&buf[28] = 1024;
              *&buf[30] = v144;
              _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %s due to being wrong pid (requested %d)", buf, 0x22u);
            }

            *__error() = v67;
          }

          v15 = 1;
          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_161;
          }

          v16 = *__error();
          v70 = [v5 processName];
          v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being wrong pid (requested %d)", v70, [v5 processID], v161 + 6, *(a1 + 68));

          if (v36)
          {
            v39 = CFStringGetCStringPtr(v36, 0x8000100u);
            if (!v39)
            {
              v40 = 4232788963;
              goto LABEL_152;
            }

LABEL_91:
            v87 = v39;
            v88 = 0;
LABEL_153:
            if (qword_100127ED0)
            {
              v130 = qword_100127ED0;
            }

            else
            {
              v130 = __stderrp;
            }

            fprintf(v130, "%s\n", v87);
            if (v88)
            {
              free(v88);
            }

            v131 = v36;
LABEL_159:
            CFRelease(v131);
            v15 = 1;
LABEL_160:
            *__error() = v16;
            goto LABEL_161;
          }

          v104 = sub_10003E080(v71, v72);
          if (!os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_135;
          }

          v105 = [v5 processName];
          v113 = [v5 processID];
          v114 = *(a1 + 68);
          *buf = 138413058;
          *&buf[4] = v105;
          *&buf[12] = 1024;
          *&buf[14] = v113;
          *&buf[18] = 2080;
          *&buf[20] = v161 + 6;
          *&buf[28] = 1024;
          *&buf[30] = v114;
          v109 = "Unable to format: Not including microstackshot for %@ [%d] at %s due to being wrong pid (requested %d)";
          v110 = v104;
          v111 = 34;
        }

LABEL_134:
        _os_log_fault_impl(&_mh_execute_header, v110, OS_LOG_TYPE_FAULT, v109, buf, v111);

LABEL_135:
        goto LABEL_136;
      }

      if (qword_100127DD0 != -1)
      {
        sub_1000B596C();
      }

      if (byte_100127DC8 == 1)
      {
        if (byte_100127EC8 == 1)
        {
          v73 = __error();
          v74 = *v73;
          v76 = sub_10003E080(v73, v75);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
          {
            v145 = [v5 processName];
            v146 = [v5 processID];
            v147 = [v5 microSnapshotFlags];
            v148 = *(a1 + 64);
            *buf = 138413314;
            *&buf[4] = v145;
            *&buf[12] = 1024;
            *&buf[14] = v146;
            *&buf[18] = 2080;
            *&buf[20] = v161 + 6;
            *&buf[28] = 2048;
            *&buf[30] = v147;
            *&buf[38] = 1024;
            LODWORD(v160) = v148;
            _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %s due to being wrong type (0x%llx, requested 0x%x)", buf, 0x2Cu);
          }

          *__error() = v74;
        }

        v15 = 1;
        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_161;
        }

        v16 = *__error();
        v77 = [v5 processName];
        v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being wrong type (0x%llx, requested 0x%x)", v77, [v5 processID], v161 + 6, objc_msgSend(v5, "microSnapshotFlags"), *(a1 + 64));

        if (v36)
        {
          v39 = CFStringGetCStringPtr(v36, 0x8000100u);
          if (!v39)
          {
            v40 = 1219867186;
            goto LABEL_152;
          }

          goto LABEL_91;
        }

        v104 = sub_10003E080(v78, v79);
        if (!os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_135;
        }

        v105 = [v5 processName];
        v115 = [v5 processID];
        v116 = [v5 microSnapshotFlags];
        v117 = *(a1 + 64);
        *buf = 138413314;
        *&buf[4] = v105;
        *&buf[12] = 1024;
        *&buf[14] = v115;
        *&buf[18] = 2080;
        *&buf[20] = v161 + 6;
        *&buf[28] = 2048;
        *&buf[30] = v116;
        *&buf[38] = 1024;
        LODWORD(v160) = v117;
        v109 = "Unable to format: Not including microstackshot for %@ [%d] at %s due to being wrong type (0x%llx, requested 0x%x)";
        v110 = v104;
        v111 = 44;
        goto LABEL_134;
      }
    }

    else
    {
      if (qword_100127DD0 != -1)
      {
        sub_1000B596C();
      }

      if (byte_100127DC8 == 1)
      {
        if (byte_100127EC8 == 1)
        {
          v28 = __error();
          v29 = *v28;
          v31 = sub_10003E080(v28, v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v134 = [v5 processName];
            v135 = [v5 processID];
            v136 = *(a1 + 48);
            [v5 wallTime];
            *buf = 138413058;
            *&buf[4] = v134;
            *&buf[12] = 1024;
            *&buf[14] = v135;
            *&buf[18] = 2080;
            *&buf[20] = v161 + 6;
            *&buf[28] = 2048;
            *&buf[30] = v136 - v137;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %s due to being too early (%fs)", buf, 0x26u);
          }

          *__error() = v29;
        }

        v15 = 1;
        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_161;
        }

        v16 = *__error();
        v32 = [v5 processName];
        v33 = [v5 processID];
        v34 = *(a1 + 48);
        [v5 wallTime];
        v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being too early (%fs)", v32, v33, v161 + 6, v34 - v35);

        if (v36)
        {
          v39 = CFStringGetCStringPtr(v36, 0x8000100u);
          if (!v39)
          {
            v40 = 1142108974;
LABEL_152:
            v87 = malloc_type_calloc(0x400uLL, 1uLL, v40);
            CFStringGetCString(v36, v87, 1024, 0x8000100u);
            v88 = v87;
            goto LABEL_153;
          }

          goto LABEL_91;
        }

        v104 = sub_10003E080(v37, v38);
        if (!os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_135;
        }

        v105 = [v5 processName];
        v106 = [v5 processID];
        v107 = *(a1 + 48);
        [v5 wallTime];
        *buf = 138413058;
        *&buf[4] = v105;
        *&buf[12] = 1024;
        *&buf[14] = v106;
        *&buf[18] = 2080;
        *&buf[20] = v161 + 6;
        *&buf[28] = 2048;
        *&buf[30] = v107 - v108;
        v109 = "Unable to format: Not including microstackshot for %@ [%d] at %s due to being too early (%fs)";
        v110 = v104;
        v111 = 38;
        goto LABEL_134;
      }
    }

LABEL_104:
    v15 = 1;
    goto LABEL_161;
  }

  if (qword_100127DD0 != -1)
  {
    sub_1000B596C();
  }

  if (byte_100127DC8 == 1)
  {
    if (byte_100127EC8 == 1)
    {
      v11 = __error();
      v12 = *v11;
      v14 = sub_10003E080(v11, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v126 = [v5 processName];
        v127 = [v5 processID];
        [v5 wallTime];
        v129 = v128 - *(a1 + 40);
        *buf = 138413058;
        *&buf[4] = v126;
        *&buf[12] = 1024;
        *&buf[14] = v127;
        *&buf[18] = 2080;
        *&buf[20] = v161 + 6;
        *&buf[28] = 2048;
        *&buf[30] = v129;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %s due to being too late (%fs)", buf, 0x26u);
      }

      *__error() = v12;
    }

    v15 = 2;
    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v16 = *__error();
      v17 = [v5 processName];
      v18 = [v5 processID];
      [v5 wallTime];
      v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being too late (%fs)", v17, v18, v161 + 6, v19 - *(a1 + 40));

      if (v20)
      {
        v23 = CFStringGetCStringPtr(v20, 0x8000100u);
        if (v23)
        {
          v24 = v23;
          v25 = 0;
        }

        else
        {
          v24 = malloc_type_calloc(0x400uLL, 1uLL, 0xF3106D33uLL);
          CFStringGetCString(v20, v24, 1024, 0x8000100u);
          v25 = v24;
        }

        if (qword_100127ED0)
        {
          v112 = qword_100127ED0;
        }

        else
        {
          v112 = __stderrp;
        }

        fprintf(v112, "%s\n", v24);
        if (v25)
        {
          free(v25);
        }

        CFRelease(v20);
      }

      else
      {
        v102 = sub_10003E080(v21, v22);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
        {
          v138 = [v5 processName];
          v139 = [v5 processID];
          [v5 wallTime];
          v141 = v140 - *(a1 + 40);
          *buf = 138413058;
          *&buf[4] = v138;
          *&buf[12] = 1024;
          *&buf[14] = v139;
          *&buf[18] = 2080;
          *&buf[20] = v161 + 6;
          *&buf[28] = 2048;
          *&buf[30] = v141;
          _os_log_fault_impl(&_mh_execute_header, v102, OS_LOG_TYPE_FAULT, "Unable to format: Not including microstackshot for %@ [%d] at %s due to being too late (%fs)", buf, 0x26u);
        }

        if (qword_100127ED0)
        {
          v103 = qword_100127ED0;
        }

        else
        {
          v103 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v103);
      }

      v15 = 2;
      goto LABEL_160;
    }
  }

  else
  {
    v15 = 2;
  }

LABEL_161:

  return v15;
}

void sub_100068FF0(id a1)
{
  v1 = getenv("SA_LOG_MICROSTACKSHOTS");
  if (v1 && (*v1 != 48 || v1[1]))
  {
    byte_100127DC8 = 1;
  }
}

void sub_100069220(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

const char *sub_1000692C4(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

uint64_t sub_1000692F8(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2080;
  *(a2 + 10) = result;
  return result;
}

size_t sub_100069310(const void *a1, uint64_t a2, uint64_t a3, FILE *a4)
{

  return fwrite(a1, 0x18uLL, 1uLL, a4);
}

id sub_100069328()
{

  return [v0 targetProcessId];
}

id sub_100069340()
{

  return [v0 targetProcessId];
}

id sub_100069358()
{

  return [v0 targetProcessId];
}

BOOL sub_100069398(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000693B0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

_DWORD *sub_1000693E0(int *a1)
{
  v2 = *a1;

  return sub_10003E020(v2);
}

id sub_1000693F8(int a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && [v5 isAbsolutePath])
  {
    v7 = v6;
LABEL_8:
    v8 = v7;
    goto LABEL_9;
  }

  v8 = 0;
  if ((a1 & 0x80000000) == 0 && a3)
  {
    if (proc_pidpath(a1, buffer, 0x400u) <= 0)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [[NSString alloc] initWithUTF8String:buffer];
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

uint64_t sub_1000694CC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, double a7, double a8, uint64_t a9, int a10, void *a11, uint64_t a12)
{
  v15 = a5;
  v19 = a1;
  v20 = a2;
  v183 = a3;
  v21 = a11;
  v182 = v21;
  if (byte_100127EC8 == 1)
  {
    v29 = __error();
    v30 = *v29;
    v32 = sub_10003E080(v29, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B5C88(a4, v15);
    }

    v21 = __error();
    *v21 = v30;
  }

  v184 = v20;
  v33 = byte_100127EC9 == 1 && dword_100127558 <= 0;
  v185 = v19;
  if (v33)
  {
    v34 = *__error();
    v35 = sub_100033E24(a4, v15);
    v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Saving %s report", v35);
    if (v36)
    {
      v38 = v36;
      CStringPtr = CFStringGetCStringPtr(v36, 0x8000100u);
      if (CStringPtr)
      {
        v40 = CStringPtr;
        v41 = 0;
      }

      else
      {
        v40 = malloc_type_calloc(0x400uLL, 1uLL, 0x4B86B44BuLL);
        CFStringGetCString(v38, v40, 1024, 0x8000100u);
        v41 = v40;
      }

      if (qword_100127ED0)
      {
        v44 = qword_100127ED0;
      }

      else
      {
        v44 = __stderrp;
      }

      fprintf(v44, "%s\n", v40);
      if (v41)
      {
        free(v41);
      }

      CFRelease(v38);
    }

    else
    {
      v42 = sub_10003E080(0, v37);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        sub_1000B5D10();
      }

      if (qword_100127ED0)
      {
        v43 = qword_100127ED0;
      }

      else
      {
        v43 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v43);
    }

    v21 = __error();
    *v21 = v34;
  }

  if (a4 > 7)
  {
    if (a4 > 13)
    {
      if (a4 != 14)
      {
        if (a4 == 15)
        {
          v58 = [v19 sampleStore];
          v59 = [v58 targetProcesses];
          v60 = [v59 lastObject];
          v61 = v60;
          if (v60)
          {
            v62 = [v60 name];
          }

          else
          {
            [v19 sampleStore];
            v98 = v97 = a6;
            v99 = [v98 targetProcess];
            v62 = [v99 name];

            v19 = v185;
            a6 = v97;
          }

          if (byte_100127EC8 == 1)
          {
            v100 = __error();
            v101 = *v100;
            v103 = sub_10003E080(v100, v102);
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B6248();
            }

            *__error() = v101;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 0)
          {
            v104 = *__error();
            v105 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception app name is %@", v62);
            if (v105)
            {
              v107 = v105;
              v108 = CFStringGetCStringPtr(v105, 0x8000100u);
              if (v108)
              {
                v109 = v108;
                v110 = 0;
              }

              else
              {
                v109 = malloc_type_calloc(0x400uLL, 1uLL, 0x256B4D11uLL);
                CFStringGetCString(v107, v109, 1024, 0x8000100u);
                v110 = v109;
              }

              if (qword_100127ED0)
              {
                v128 = qword_100127ED0;
              }

              else
              {
                v128 = __stderrp;
              }

              fprintf(v128, "%s\n", v109);
              if (v110)
              {
                free(v110);
              }

              CFRelease(v107);
            }

            else
            {
              v114 = sub_10003E080(0, v106);
              if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
              {
                sub_1000B62BC();
              }

              if (qword_100127ED0)
              {
                v115 = qword_100127ED0;
              }

              else
              {
                v115 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v115);
            }

            *__error() = v104;
          }

          if (!v62)
          {
            sub_1000B632C(v19);
          }

          v129 = [NSString alloc];
          if (a6)
          {
            v46 = [v129 initWithFormat:@"%@.cpu_resource_fatal", v62];
            v45 = @"206";
          }

          else
          {
            v46 = [v129 initWithFormat:@"%@.cpu_resource", v62];
            v45 = kOSAProblemTypeExcResource;
          }

          goto LABEL_133;
        }

        goto LABEL_74;
      }

      v46 = 0;
      v45 = @"239";
    }

    else if ((a4 - 9) >= 2)
    {
      if (a4 != 8)
      {
        goto LABEL_74;
      }

      v46 = @"periodic-io-microstackshot-report";
      v45 = @"144";
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

LABEL_133:
    if (a12)
    {
      sub_1000B660C(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    v130 = v19;
    v131 = [v130 sampleStore];
    v132 = [v131 targetProcesses];
    v133 = [v132 lastObject];
    v134 = v133;
    if (v133)
    {
      v135 = v133;
    }

    else
    {
      v136 = [v130 sampleStore];
      v135 = [v136 targetProcess];
    }

    v180 = v46;
    if ([v135 developerType] == 1)
    {
      v137 = 1;
    }

    else if ([v135 developerType] == -1)
    {
      v138 = [v135 bundleIdentifier];
      if (v138)
      {
        v139 = [v135 bundleIdentifier];
        v137 = [v139 hasPrefix:@"com.apple."];
      }

      else
      {
        v137 = 0;
      }
    }

    else
    {
      v137 = 0;
    }

    v190[0] = kOSALogMetadataAppName;
    v179 = v45;
    v140 = [v135 name];
    v141 = v140;
    if (v140)
    {
      v142 = v140;
    }

    else
    {
      v142 = @"Unknown";
    }

    v191[0] = v142;
    v190[1] = @"app_name";
    v143 = [v135 name];
    v144 = v143;
    if (v143)
    {
      v145 = v143;
    }

    else
    {
      v145 = @"Unknown";
    }

    v191[1] = v145;
    v190[2] = @"is_first_party";
    v146 = [NSNumber numberWithBool:v137];
    v191[2] = v146;
    v190[3] = @"share_with_app_devs";
    v147 = +[OSASystemConfiguration sharedInstance];
    v148 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v147 optIn3rdParty]);
    v191[3] = v148;
    v149 = [NSDictionary dictionaryWithObjects:v191 forKeys:v190 count:4];
    v150 = [v149 mutableCopy];

    v151 = [v130 incidentUUID];

    v57 = v182;
    v56 = v183;
    if (v151)
    {
      v152 = [v130 incidentUUID];
      v153 = [v152 UUIDString];
      [v150 setObject:v153 forKeyedSubscript:kOSALogMetadataIncidentID];
    }

    v154 = [v135 mainBinary];

    if (v154)
    {
      v155 = [v135 mainBinary];
      v156 = [v155 uuid];
      v157 = [v156 UUIDString];
      v158 = v157;
      if (v157)
      {
        v159 = v157;
      }

      else
      {
        v159 = &stru_1001199C0;
      }

      [v150 setObject:v159 forKeyedSubscript:@"slice_uuid"];
    }

    v160 = [v135 bundleIdentifier];

    if (v160)
    {
      v161 = [v135 bundleIdentifier];
      [v150 setObject:v161 forKeyedSubscript:kOSALogMetadataBundleID];
    }

    v162 = [v135 bundleVersion];

    if (v162)
    {
      v163 = [v135 bundleVersion];
      [v150 setObject:v163 forKeyedSubscript:@"build_version"];
    }

    v164 = [v135 bundleShortVersion];

    if (v164)
    {
      v165 = [v135 bundleShortVersion];
      [v150 setObject:v165 forKeyedSubscript:@"app_version"];
    }

    if ([v135 isBeta])
    {
      [v150 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_beta"];
      v166 = [v135 cohortID];

      if (v166)
      {
        v167 = [v135 cohortID];
        [v150 setObject:v167 forKeyedSubscript:@"app_cohort"];
      }
    }

    if ([v135 adamID])
    {
      v168 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v135 adamID]);
      [v150 setObject:v168 forKeyedSubscript:@"adam_id"];
    }

    v169 = [v135 distributorID];

    if (v169)
    {
      v171 = [v135 distributorID];
      [v150 setObject:v171 forKeyedSubscript:@"distributor_id"];
    }

    if (a10)
    {
      v172 = [v135 mainBinaryPath];
      v173 = [v172 isAbsolutePath];

      if (v173)
      {
        v174 = [v135 mainBinaryPath];
        [v150 setObject:v174 forKeyedSubscript:kOSALogOptionReopenPath];
      }
    }

    if (a7 > 0.0)
    {
      *v170.i64 = a7;
      sub_100033CB8(v189, 0x32uLL, 0, v170);
      v175 = [NSString stringWithUTF8String:v189];
      [v150 setObject:v175 forKeyedSubscript:@"timestamp"];
    }

    if (a8 > 0.0)
    {
      v176 = [NSString stringWithFormat:@"%.0f", a8 * 1000.0];
      [v150 setObject:v176 forKeyedSubscript:@"duration_ms"];
    }

    v186 = v130;
    v55 = v184;
    v187 = v184;
    v188 = v183;
    v52 = OSAWriteLogForSubmission();

    v19 = v185;
    goto LABEL_179;
  }

  if (a4 > 4)
  {
    if (a4 == 5)
    {
      v79 = [v19 sampleStore];
      v80 = [v79 targetProcess];
      v81 = [v80 name];

      if (!v81)
      {
        sub_1000B6810(v19);
      }

      v82 = [NSString alloc];
      if (a6)
      {
        v46 = [v82 initWithFormat:@"%@.cpu_resource_fatal", v81];
        v45 = @"206";
      }

      else
      {
        v46 = [v82 initWithFormat:@"%@.cpu_resource", v81];
        v45 = kOSAProblemTypeExcResource;
      }
    }

    else if (a4 == 6)
    {
      v83 = [v19 sampleStore];
      v84 = [v83 targetProcess];
      v85 = [v84 name];

      if (!v85)
      {
        sub_1000B5F68(v19);
      }

      v46 = [[NSString alloc] initWithFormat:@"%@.diskwrites_resource", v85];
      if (a6 && qword_100127DD8 != -1)
      {
        sub_1000B5F40();
      }

      v45 = @"145";
    }

    else
    {
      v21 = kOSAProblemTypeNewMicroSS;
      v45 = v21;
      v46 = @"periodic-microstackshot-report";
    }

    goto LABEL_133;
  }

  if (a4 == 3)
  {
    if (byte_100127EC8 == 1)
    {
      v63 = __error();
      v64 = *v63;
      v66 = sub_10003E080(v63, v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_1000B5D80(v19, v66);
      }

      *__error() = v64;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v68 = *__error();
      v69 = [v19 sampleStore];
      v70 = [v69 targetProcess];
      v71 = [v70 name];
      v72 = [v71 UTF8String];
      if (v72)
      {
        v73 = v72;
      }

      else
      {
        v73 = "No app";
      }

      v74 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: DID_MANUAL status while reporting", "status != DID_MANUAL", v73);

      if (v74)
      {
        v111 = CFStringGetCStringPtr(v74, 0x8000100u);
        if (v111)
        {
          v112 = v111;
          v113 = 0;
        }

        else
        {
          v112 = malloc_type_calloc(0x400uLL, 1uLL, 0x96212E7CuLL);
          CFStringGetCString(v74, v112, 1024, 0x8000100u);
          v113 = v112;
        }

        if (qword_100127ED0)
        {
          v118 = qword_100127ED0;
        }

        else
        {
          v118 = __stderrp;
        }

        fprintf(v118, "%s\n", v112);
        if (v113)
        {
          free(v113);
        }

        CFRelease(v74);
      }

      else
      {
        v77 = sub_10003E080(v75, v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
        {
          sub_1000B5E60(v19, v77);
        }

        if (qword_100127ED0)
        {
          v78 = qword_100127ED0;
        }

        else
        {
          v78 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v78);
      }

      *__error() = v68;
    }

    v119 = [v19 sampleStore];
    v120 = [v119 targetProcess];
    v121 = [v120 name];
    v122 = [v121 UTF8String];
    if (v122)
    {
      v127 = v122;
    }

    else
    {
      v127 = "No app";
    }

    sub_10003DF54("SaveReport", "reporting.m", 476, "%s: %s: DID_MANUAL status while reporting", v123, v124, v125, v126, "status != DID_MANUAL", v127);

    abort();
  }

  if (a4 == 4)
  {
    v47 = objc_alloc_init(NSDate);
    v48 = objc_alloc_init(NSDateFormatter);
    [v48 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v49 = [v48 stringFromDate:v47];
    v50 = [[NSString alloc] initWithFormat:@"/var/mobile/Library/Logs/CrashReporter/ShutdownStall-%@.txt", v49];
    v51 = fopen([v50 UTF8String], "wx");
    v52 = v51 != 0;
    if (v51)
    {
      v53 = v51;
      fwrite("Use spindump -i to generate textual report\n\n", 0x2CuLL, 1uLL, v51);
      v54 = [v19 sampleStore];
      [v54 saveBinaryFormatToStream:v53];

      fclose(v53);
    }

    else
    {
      sub_1000B6AF0(v50);
    }

    v55 = v184;

    v57 = v182;
    v56 = v183;
    goto LABEL_179;
  }

LABEL_74:
  v86 = __error();
  v87 = *v86;
  v89 = sub_10003E080(v86, v88);
  if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
  {
    sub_1000B6D0C();
  }

  v52 = 0;
  *__error() = v87;
  v57 = v182;
  v56 = v183;
  if (byte_100127EC9 == 1)
  {
    v55 = v184;
    if (dword_100127558 <= 4)
    {
      v90 = *__error();
      v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SaveReport: Unsupported status %d", a4);
      if (v91)
      {
        v93 = v91;
        v94 = CFStringGetCStringPtr(v91, 0x8000100u);
        if (v94)
        {
          v95 = v94;
          v96 = 0;
        }

        else
        {
          v95 = malloc_type_calloc(0x400uLL, 1uLL, 0xF1B1B1C1uLL);
          CFStringGetCString(v93, v95, 1024, 0x8000100u);
          v96 = v95;
        }

        if (qword_100127ED0)
        {
          v178 = qword_100127ED0;
        }

        else
        {
          v178 = __stderrp;
        }

        fprintf(v178, "%s\n", v95);
        if (v96)
        {
          free(v96);
        }

        CFRelease(v93);
      }

      else
      {
        v116 = sub_10003E080(0, v92);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
        {
          sub_1000B6D80();
        }

        if (qword_100127ED0)
        {
          v117 = qword_100127ED0;
        }

        else
        {
          v117 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v117);
      }

      v52 = 0;
      *__error() = v90;
    }
  }

  else
  {
    v55 = v184;
  }

LABEL_179:

  return v52;
}

void sub_10006A6CC(id a1)
{
  v1 = __error();
  v2 = *v1;
  v4 = sub_10003E080(v1, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1000B6DF4();
  }

  *__error() = v2;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v6 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No bug type for fatal disk writes reports, using non-fatal bug type");
    if (v7)
    {
      v9 = v7;
      CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
      if (CStringPtr)
      {
        v11 = CStringPtr;
        v12 = 0;
      }

      else
      {
        v11 = malloc_type_calloc(0x400uLL, 1uLL, 0x5D0F1F1AuLL);
        CFStringGetCString(v9, v11, 1024, 0x8000100u);
        v12 = v11;
      }

      if (qword_100127ED0)
      {
        v15 = qword_100127ED0;
      }

      else
      {
        v15 = __stderrp;
      }

      fprintf(v15, "%s\n", v11);
      if (v12)
      {
        free(v12);
      }

      CFRelease(v9);
    }

    else
    {
      v13 = sub_10003E080(0, v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1000B6E34();
      }

      if (qword_100127ED0)
      {
        v14 = qword_100127ED0;
      }

      else
      {
        v14 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v14);
    }

    *__error() = v6;
  }
}

void sub_10006A87C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 fileDescriptor] == -1)
  {
    sub_1000B7484(v3);
  }

  else
  {
    v4 = dup([v3 fileDescriptor]);
    if (v4 == -1)
    {
      sub_1000B7294();
    }

    else
    {
      v5 = fdopen(v4, "a");
      if (v5)
      {
        v6 = v5;
        if (*(a1 + 56) == 4)
        {
          fwrite("Use spindump -i to generate textual report\n\n", 0x2CuLL, 1uLL, v5);
          v7 = [*(a1 + 32) sampleStore];
          [v7 saveBinaryFormatToStream:v6];
        }

        else
        {
          v8 = *(a1 + 40);
          if (v8)
          {
            if (fwrite([v8 bytes], objc_msgSend(*(a1 + 40), "length"), 1uLL, v6) != 1)
            {
              if (byte_100127EC8 == 1)
              {
                v9 = __error();
                v10 = *v9;
                v12 = sub_10003E080(v9, v11);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B6E74(v6);
                }

                *__error() = v10;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v13 = *__error();
                v14 = ferror(v6);
                v15 = strerror(v14);
                v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write pre-blob to output file: %d (%s)", v14, v15);
                if (v16)
                {
                  v18 = v16;
                  CStringPtr = CFStringGetCStringPtr(v16, 0x8000100u);
                  if (CStringPtr)
                  {
                    v20 = CStringPtr;
                    v21 = 0;
                  }

                  else
                  {
                    v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x9576FDF2uLL);
                    CFStringGetCString(v18, v20, 1024, 0x8000100u);
                    v21 = v20;
                  }

                  if (qword_100127ED0)
                  {
                    v24 = qword_100127ED0;
                  }

                  else
                  {
                    v24 = __stderrp;
                  }

                  fprintf(v24, "%s\n", v20);
                  if (v21)
                  {
                    free(v21);
                  }

                  CFRelease(v18);
                }

                else
                {
                  v22 = sub_10003E080(0, v17);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B6F00(v6);
                  }

                  if (qword_100127ED0)
                  {
                    v23 = qword_100127ED0;
                  }

                  else
                  {
                    v23 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v23);
                }

                *__error() = v13;
              }
            }

            fwrite("\n================================================================\n", 0x42uLL, 1uLL, v6);
          }

          [*(a1 + 32) printToStream:v6];
          if (*(a1 + 48))
          {
            fwrite("\n================================================================\n", 0x42uLL, 1uLL, v6);
            if (fwrite([*(a1 + 48) bytes], objc_msgSend(*(a1 + 48), "length"), 1uLL, v6) != 1)
            {
              if (byte_100127EC8 == 1)
              {
                v25 = __error();
                v26 = *v25;
                v28 = sub_10003E080(v25, v27);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B6F8C(v6);
                }

                *__error() = v26;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v29 = *__error();
                v30 = ferror(v6);
                v31 = strerror(v30);
                v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write post-blob to output file: %d (%s)", v30, v31);
                if (v32)
                {
                  v34 = v32;
                  v35 = CFStringGetCStringPtr(v32, 0x8000100u);
                  if (v35)
                  {
                    v36 = v35;
                    v37 = 0;
                  }

                  else
                  {
                    v36 = malloc_type_calloc(0x400uLL, 1uLL, 0x1FEC7E02uLL);
                    CFStringGetCString(v34, v36, 1024, 0x8000100u);
                    v37 = v36;
                  }

                  if (qword_100127ED0)
                  {
                    v40 = qword_100127ED0;
                  }

                  else
                  {
                    v40 = __stderrp;
                  }

                  fprintf(v40, "%s\n", v36);
                  if (v37)
                  {
                    free(v37);
                  }

                  CFRelease(v34);
                }

                else
                {
                  v38 = sub_10003E080(0, v33);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B7018(v6);
                  }

                  if (qword_100127ED0)
                  {
                    v39 = qword_100127ED0;
                  }

                  else
                  {
                    v39 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v39);
                }

                *__error() = v29;
              }
            }
          }
        }

        fclose(v6);
      }

      else
      {
        sub_1000B70A4();
      }
    }
  }
}

const __CFString *sub_10006AD8C(int a1, int a2)
{
  v2 = @"--------------------------------------------------\nTimeline format: stacks are sorted chronologically\nUse -i and -heavy to re-report with count sorting\n--------------------------------------------------";
  if (a1)
  {
    v2 = @"------------------------------------------------------------\nHeavy format: stacks are sorted by count\nUse -i and -timeline to re-report with chronological sorting\n------------------------------------------------------------";
  }

  v3 = @"--------------------------------------------------\nTimeline format: stacks are sorted chronologically\n--------------------------------------------------";
  if (a1)
  {
    v3 = @"----------------------------------------\nHeavy format: stacks are sorted by count\n----------------------------------------";
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10006ADC4(char *buffer)
{

  return CFStringGetCString(v1, buffer, 1024, 0x8000100u);
}

void sub_10006ADEC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_fault_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 8u);
}

void sub_10006AE30(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10006AE50(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_fault_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

const char *sub_10006AE70()
{

  return CFStringGetCStringPtr(v0, 0x8000100u);
}

uint64_t sub_10006AE8C(char *buffer)
{

  return CFStringGetCString(v1, buffer, 1024, 0x8000100u);
}

BOOL sub_10006AECC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

CFStringRef sub_10006AEE4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

void sub_10006AF1C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_fault_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 0x1Cu);
}

void sub_10006AF3C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_fault_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

uint64_t sub_10006AF5C(void *a1, void *a2, uint64_t a3, int a4, int a5, unsigned int a6, void *a7)
{
  v12 = a1;
  v13 = a2;
  memset(&v31, 0, sizeof(v31));
  if (!v12)
  {
    v28 = 0;
    v15 = @"/tmp";
    goto LABEL_7;
  }

  if (stat([v12 fileSystemRepresentation], &v31))
  {
    v14 = v12;
    goto LABEL_10;
  }

  v16 = v31.st_mode & 0xF000;
  v17 = v12;
  if (v16 == 0x4000)
  {
    v15 = v17;
    v28 = v12;
LABEL_7:
    v27 = a7;
    if (v13)
    {
      [v13 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
      if ((a3 & 0x80000000) != 0)
        v19 = {;
      }

      else
        v18 = {;
        v19 = [NSString stringWithFormat:@"%@_%i", v18, a3];
      }

      v24 = @".spindump.txt";
    }

    else
    {
      v19 = @"spindump";
      v24 = @".txt";
    }

    v21 = [NSString stringWithFormat:@"%@/%@%@", v15, v19, v24];
    LODWORD(v25) = 1;
    memset(&v30, 0, sizeof(v30));
    do
    {
      if (stat([v21 fileSystemRepresentation], &v30))
      {
        v26 = v21;
      }

      else
      {
        do
        {
          v25 = (v25 + 1);
          v26 = [NSString stringWithFormat:@"%@/%@.%d%@", v15, v19, v25, v24];

          v21 = v26;
        }

        while (!stat([v26 fileSystemRepresentation], &v30));
      }

      v21 = v26;
      v20 = sub_10003B424([v26 UTF8String], a4 | 0x800u, a5, a6);
    }

    while (v20 == -1 && *__error() == 17);

    a7 = v27;
    v12 = v28;
    if (v27)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_10:
  v20 = sub_10003B424([v12 UTF8String], a4, a5, a6);
  v15 = 0;
  v21 = v12;
  if (a7)
  {
LABEL_11:
    v22 = v21;
    *a7 = v21;
  }

LABEL_12:

  return v20;
}

void sub_10006B22C()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v16 = sub_10006B45C(v0);
    dispatch_async(v16, &stru_1001155C0);
  }

  else
  {
    if (byte_100127EC8 == 1)
    {
      v1 = __error();
      v2 = *v1;
      v4 = sub_10003E080(v1, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deferred reports not supported, not checking for them", buf, 2u);
      }

      *__error() = v2;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 1)
    {
      v6 = *__error();
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Deferred reports not supported, not checking for them");
      if (v7)
      {
        v9 = v7;
        CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
        if (CStringPtr)
        {
          v11 = CStringPtr;
          v12 = 0;
        }

        else
        {
          v11 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB02061BuLL);
          CFStringGetCString(v9, v11, 1024, 0x8000100u);
          v12 = v11;
        }

        if (qword_100127ED0)
        {
          v15 = qword_100127ED0;
        }

        else
        {
          v15 = __stderrp;
        }

        fprintf(v15, "%s\n", v11);
        if (v12)
        {
          free(v12);
        }

        CFRelease(v9);
      }

      else
      {
        v13 = sub_10003E080(0, v8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_1000B76A4();
        }

        if (qword_100127ED0)
        {
          v14 = qword_100127ED0;
        }

        else
        {
          v14 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v14);
      }

      *__error() = v6;
    }
  }
}

id sub_10006B45C(uint64_t a1)
{
  if (qword_100127DE8 != -1)
  {
    sub_1000B76E0();
  }

  v2 = qword_100127DE0;

  return v2;
}

void sub_10006B4A0(id a1)
{
  v1 = +[BGSystemTaskScheduler sharedScheduler];
  v2 = sub_10006B45C(v1);
  v3 = [v1 registerForTaskWithIdentifier:@"com.apple.spindump.deferred_report_generation" usingQueue:v2 launchHandler:&stru_100115600];

  if (v3)
  {
    if (byte_100127EC8 == 1)
    {
      v4 = __error();
      v5 = *v4;
      v7 = sub_10003E080(v4, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B776C();
      }

      *__error() = v5;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return;
    }

    v9 = *__error();
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Registered for deferred report generation");
    if (v10)
    {
      v12 = v10;
      CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
      if (!CStringPtr)
      {
        v14 = 480343013;
LABEL_33:
        v22 = malloc_type_calloc(0x400uLL, 1uLL, v14);
        CFStringGetCString(v12, v22, 1024, 0x8000100u);
        v23 = v22;
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    v24 = sub_10003E080(0, v11);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1000B77A0();
    }

    goto LABEL_28;
  }

  v15 = __error();
  v16 = *v15;
  v18 = sub_10003E080(v15, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1000B76F4();
  }

  *__error() = v16;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v9 = *__error();
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to register for deferred report generation");
    if (v20)
    {
      v12 = v20;
      CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
      if (!CStringPtr)
      {
        v14 = 3513354074;
        goto LABEL_33;
      }

LABEL_23:
      v22 = CStringPtr;
      v23 = 0;
LABEL_34:
      if (qword_100127ED0)
      {
        v26 = qword_100127ED0;
      }

      else
      {
        v26 = __stderrp;
      }

      fprintf(v26, "%s\n", v22);
      if (v23)
      {
        free(v23);
      }

      CFRelease(v12);
LABEL_40:
      *__error() = v9;
      return;
    }

    v24 = sub_10003E080(0, v21);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1000B7730();
    }

LABEL_28:

    if (qword_100127ED0)
    {
      v25 = qword_100127ED0;
    }

    else
    {
      v25 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v25);
    goto LABEL_40;
  }
}

void sub_10006B780(id a1, BGNonRepeatingSystemTask *a2)
{
  v2 = a2;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3020000000;
  v24 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006D3EC;
  v22[3] = &unk_1001156C0;
  v22[4] = v23;
  [(BGNonRepeatingSystemTask *)v2 setExpirationHandler:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10006D5CC;
  v21[3] = &unk_1001156E8;
  v21[4] = v23;
  v3 = objc_retainBlock(v21);
  if (sub_10006D5DC(v3))
  {
LABEL_26:
    [(BGNonRepeatingSystemTask *)v2 setTaskCompleted];
    goto LABEL_27;
  }

  v20 = 0;
  v4 = [(BGNonRepeatingSystemTask *)v2 setTaskExpiredWithRetryAfter:&v20 error:0.0];
  v5 = v20;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = __error();
    v8 = *v7;
    v10 = sub_10003E080(v7, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1000B77DC();
    }

    *__error() = v8;
    if (byte_100127EC9 == 1 && dword_100127558 <= 4)
    {
      v11 = *__error();
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to set expiry: %@", v6);
      v14 = v12;
      if (v12)
      {
        CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
        if (CStringPtr)
        {
          v16 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x359C6262uLL);
          CFStringGetCString(v14, CStringPtr, 1024, 0x8000100u);
          v16 = CStringPtr;
        }

        if (qword_100127ED0)
        {
          v19 = qword_100127ED0;
        }

        else
        {
          v19 = __stderrp;
        }

        fprintf(v19, "%s\n", CStringPtr);
        if (v16)
        {
          free(v16);
        }

        CFRelease(v14);
      }

      else
      {
        v17 = sub_10003E080(0, v13);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_1000B784C();
        }

        if (qword_100127ED0)
        {
          v18 = qword_100127ED0;
        }

        else
        {
          v18 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v18);
      }

      *__error() = v11;
    }

    goto LABEL_26;
  }

LABEL_27:
  _Block_object_dispose(v23, 8);
}

void sub_10006BA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006BAB4(int a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a2;
  v20 = a5;
  v21 = sub_10003DEB8("create deferred cpu usage report for [%d]", a1);
  v22 = sub_10006B45C(v21);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BC0C;
  block[3] = &unk_100115628;
  v37 = a1;
  v30 = a3;
  v31 = a4;
  v27 = v19;
  v28 = v20;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  v36 = a10;
  v29 = v21;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  dispatch_async(v22, block);
}

void sub_10006BC0C(uint64_t a1)
{
  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObject:&off_100120008 forKeyedSubscript:@"message"];
  v2 = [NSNumber numberWithInt:*(a1 + 112)];
  [v10 setObject:v2 forKeyedSubscript:@"pid"];

  [v10 setObject:*(a1 + 32) forKeyedSubscript:@"pname"];
  if (*(a1 + 56))
  {
    v3 = [NSNumber numberWithUnsignedLongLong:?];
    [v10 setObject:v3 forKeyedSubscript:@"tid"];
  }

  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  [v10 setObject:v4 forKeyedSubscript:@"flags"];

  [v10 setObject:*(a1 + 40) forKeyedSubscript:@"action"];
  v5 = [NSNumber numberWithDouble:*(a1 + 72)];
  [v10 setObject:v5 forKeyedSubscript:@"cpu"];

  v6 = [NSNumber numberWithDouble:*(a1 + 80)];
  [v10 setObject:v6 forKeyedSubscript:@"duration"];

  v7 = [NSNumber numberWithDouble:*(a1 + 88)];
  [v10 setObject:v7 forKeyedSubscript:@"endtime"];

  if (*(a1 + 96) > 0.0 && *(a1 + 104) > 0.0)
  {
    v8 = [NSNumber numberWithDouble:?];
    [v10 setObject:v8 forKeyedSubscript:@"cpu_limit"];

    v9 = [NSNumber numberWithDouble:*(a1 + 104)];
    [v10 setObject:v9 forKeyedSubscript:@"duration_limit"];
  }

  sub_10006BE20(v10);
}

void sub_10006BE20(void *a1)
{
  v1 = a1;
  v2 = [NSURL fileURLWithPath:@"/private/var/db/spindump/DeferredReports.plist" isDirectory:0];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/private/var/db/spindump/DeferredReports.plist"];

  if (v4)
  {
    v131 = 0;
    v5 = [NSArray arrayWithContentsOfURL:v2 error:&v131];
    v6 = v131;
    v7 = [v5 mutableCopy];

    if (!v7)
    {
      v8 = __error();
      v9 = *v8;
      v11 = sub_10003E080(v8, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1000B792C();
      }

      *__error() = v9;
      if (byte_100127EC9 == 1 && dword_100127558 <= 4)
      {
        v12 = *__error();
        v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to read deferred reports plist, overwriting it: %@", v6);
        if (v13)
        {
          v15 = v13;
          CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
          if (CStringPtr)
          {
            v17 = CStringPtr;
            v18 = 0;
          }

          else
          {
            v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x24A4EABFuLL);
            CFStringGetCString(v15, v17, 1024, 0x8000100u);
            v18 = v17;
          }

          if (qword_100127ED0)
          {
            v36 = qword_100127ED0;
          }

          else
          {
            v36 = __stderrp;
          }

          fprintf(v36, "%s\n", v17);
          if (v18)
          {
            free(v18);
          }

          CFRelease(v15);
        }

        else
        {
          v34 = sub_10003E080(0, v14);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            sub_1000B799C();
          }

          if (qword_100127ED0)
          {
            v35 = qword_100127ED0;
          }

          else
          {
            v35 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v35);
        }

        *__error() = v12;
      }

      v37 = +[NSFileManager defaultManager];
      v130 = 0;
      v38 = [v37 removeItemAtURL:v2 error:&v130];
      v39 = v130;

      if ((v38 & 1) == 0)
      {
        sub_1000B7A0C(v39);
      }

      v7 = [[NSMutableArray alloc] initWithCapacity:1];
    }
  }

  else
  {
    if (byte_100127EC8 == 1)
    {
      v19 = __error();
      v20 = *v19;
      v22 = sub_10003E080(v19, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B78BC();
      }

      *__error() = v20;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v24 = *__error();
      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No existing deferred reports, creating new plist");
      if (v25)
      {
        v27 = v25;
        v28 = CFStringGetCStringPtr(v25, 0x8000100u);
        if (v28)
        {
          v29 = v28;
          v30 = 0;
        }

        else
        {
          v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xB40460EBuLL);
          CFStringGetCString(v27, v29, 1024, 0x8000100u);
          v30 = v29;
        }

        if (qword_100127ED0)
        {
          v33 = qword_100127ED0;
        }

        else
        {
          v33 = __stderrp;
        }

        fprintf(v33, "%s\n", v29);
        if (v30)
        {
          free(v30);
        }

        CFRelease(v27);
      }

      else
      {
        v31 = sub_10003E080(0, v26);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          sub_1000B78F0();
        }

        if (qword_100127ED0)
        {
          v32 = qword_100127ED0;
        }

        else
        {
          v32 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v32);
      }

      *__error() = v24;
    }

    v7 = [[NSMutableArray alloc] initWithCapacity:1];
  }

  [v7 addObject:v1];

  v129 = 0;
  v40 = [v7 writeToURL:v2 error:&v129];
  v41 = v129;
  if ((v40 & 1) == 0)
  {
    v54 = __error();
    v55 = *v54;
    v57 = sub_10003E080(v54, v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      sub_1000B7BE0();
    }

    *__error() = v55;
    if (byte_100127EC9 == 1 && dword_100127558 <= 4)
    {
      v58 = *__error();
      v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write %lu deferred reports to plist: %@", [v7 count], v41);
      if (v59)
      {
        v61 = v59;
        v62 = CFStringGetCStringPtr(v59, 0x8000100u);
        if (v62)
        {
          v63 = v62;
          v64 = 0;
        }

        else
        {
          v63 = malloc_type_calloc(0x400uLL, 1uLL, 0x1E620285uLL);
          CFStringGetCString(v61, v63, 1024, 0x8000100u);
          v64 = v63;
        }

        if (qword_100127ED0)
        {
          v116 = qword_100127ED0;
        }

        else
        {
          v116 = __stderrp;
        }

        fprintf(v116, "%s\n", v63);
        if (v64)
        {
          free(v64);
        }

        CFRelease(v61);
      }

      else
      {
        v67 = sub_10003E080(0, v60);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          sub_1000B7C60();
        }

        if (qword_100127ED0)
        {
          v68 = qword_100127ED0;
        }

        else
        {
          v68 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v68);
      }

      *__error() = v58;
    }

    v117 = +[NSFileManager defaultManager];
    v128 = 0;
    v118 = [v117 removeItemAtURL:v2 error:&v128];
    v71 = v128;

    if ((v118 & 1) == 0)
    {
      sub_1000B7CE0(v71);
    }

    goto LABEL_137;
  }

  if (byte_100127EC8 == 1)
  {
    v42 = __error();
    v43 = *v42;
    v45 = sub_10003E080(v42, v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = [v7 count];
      *buf = 134217984;
      *&buf[4] = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Added report to pending deferred reports (have %lu)", buf, 0xCu);
    }

    *__error() = v43;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v47 = *__error();
    v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Added report to pending deferred reports (have %lu)", [v7 count]);
    if (v48)
    {
      v50 = v48;
      v51 = CFStringGetCStringPtr(v48, 0x8000100u);
      if (v51)
      {
        v52 = v51;
        v53 = 0;
      }

      else
      {
        v52 = malloc_type_calloc(0x400uLL, 1uLL, 0x66EC9423uLL);
        CFStringGetCString(v50, v52, 1024, 0x8000100u);
        v53 = v52;
      }

      if (qword_100127ED0)
      {
        v69 = qword_100127ED0;
      }

      else
      {
        v69 = __stderrp;
      }

      fprintf(v69, "%s\n", v52);
      if (v53)
      {
        free(v53);
      }

      CFRelease(v50);
    }

    else
    {
      v65 = sub_10003E080(0, v49);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
      {
        sub_1000B7EB4(v7);
      }

      if (qword_100127ED0)
      {
        v66 = qword_100127ED0;
      }

      else
      {
        v66 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v66);
    }

    *__error() = v47;
  }

  if (objc_opt_class())
  {
    v70 = +[BGSystemTaskScheduler sharedScheduler];
    v71 = [v70 taskRequestForIdentifier:@"com.apple.spindump.deferred_report_generation"];

    if (v71)
    {
      if (byte_100127EC8 == 1)
      {
        v72 = __error();
        v73 = *v72;
        v75 = sub_10003E080(v72, v74);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B7F34();
        }

        *__error() = v73;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v76 = *__error();
        v77 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Deferred report task already exists");
        if (v77)
        {
          v79 = v77;
          v80 = CFStringGetCStringPtr(v77, 0x8000100u);
          if (v80)
          {
            v81 = v80;
            v82 = 0;
          }

          else
          {
            v81 = malloc_type_calloc(0x400uLL, 1uLL, 0x5557420EuLL);
            CFStringGetCString(v79, v81, 1024, 0x8000100u);
            v82 = v81;
          }

          if (qword_100127ED0)
          {
            v123 = qword_100127ED0;
          }

          else
          {
            v123 = __stderrp;
          }

          fprintf(v123, "%s\n", v81);
          if (v82)
          {
            free(v82);
          }

          CFRelease(v79);
        }

        else
        {
          v119 = sub_10003E080(0, v78);
          if (os_log_type_enabled(v119, OS_LOG_TYPE_FAULT))
          {
            sub_1000B7F68();
          }

          if (qword_100127ED0)
          {
            v120 = qword_100127ED0;
          }

          else
          {
            v120 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v120);
        }

        *__error() = v76;
      }

      goto LABEL_137;
    }

    v94 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.spindump.deferred_report_generation"];
    [v94 setPriority:1];
    [v94 setScheduleAfter:1.0];
    [v94 setRequiresNetworkConnectivity:0];
    [v94 setRequiresExternalPower:0];
    v95 = +[BGSystemTaskScheduler sharedScheduler];
    *buf = 0;
    v96 = [v95 submitTaskRequest:v94 error:buf];
    v97 = *buf;

    if (v96)
    {
      v71 = 0;
      if (byte_100127EC8 == 1)
      {
        v98 = __error();
        v99 = *v98;
        v101 = sub_10003E080(v98, v100);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B8084();
        }

        *__error() = v99;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_184;
      }

      v102 = *__error();
      v103 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submitted deferred report task successfully");
      if (v103)
      {
        v105 = v103;
        v106 = CFStringGetCStringPtr(v103, 0x8000100u);
        if (!v106)
        {
          v107 = 2076187545;
LABEL_176:
          v114 = malloc_type_calloc(0x400uLL, 1uLL, v107);
          CFStringGetCString(v105, v114, 1024, 0x8000100u);
          v115 = v114;
          goto LABEL_177;
        }

        goto LABEL_126;
      }

      v125 = sub_10003E080(0, v104);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
      {
        sub_1000B80B8();
      }
    }

    else
    {
      v108 = __error();
      v109 = *v108;
      v111 = sub_10003E080(v108, v110);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
      {
        sub_1000B7FA4();
      }

      *__error() = v109;
      v71 = 0;
      if (byte_100127EC9 != 1 || dword_100127558 > 4)
      {
        goto LABEL_184;
      }

      v102 = *__error();
      v112 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to submit task with error: %@", v97);
      if (v112)
      {
        v105 = v112;
        v106 = CFStringGetCStringPtr(v112, 0x8000100u);
        if (!v106)
        {
          v107 = 4083141428;
          goto LABEL_176;
        }

LABEL_126:
        v114 = v106;
        v115 = 0;
LABEL_177:
        if (qword_100127ED0)
        {
          v127 = qword_100127ED0;
        }

        else
        {
          v127 = __stderrp;
        }

        fprintf(v127, "%s\n", v114);
        if (v115)
        {
          free(v115);
        }

        CFRelease(v105);
        goto LABEL_183;
      }

      v125 = sub_10003E080(0, v113);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
      {
        sub_1000B8014();
      }
    }

    if (qword_100127ED0)
    {
      v126 = qword_100127ED0;
    }

    else
    {
      v126 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v126);
LABEL_183:
    *__error() = v102;
LABEL_184:

LABEL_137:
    goto LABEL_138;
  }

  v83 = __error();
  v84 = *v83;
  v86 = sub_10003E080(v83, v85);
  if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
  {
    sub_1000B80F4();
  }

  *__error() = v84;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v87 = *__error();
    v88 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Attempting to defer reports when not supported. Caller should check before calling");
    if (v88)
    {
      v90 = v88;
      v91 = CFStringGetCStringPtr(v88, 0x8000100u);
      if (v91)
      {
        v92 = v91;
        v93 = 0;
      }

      else
      {
        v92 = malloc_type_calloc(0x400uLL, 1uLL, 0xBFF3459AuLL);
        CFStringGetCString(v90, v92, 1024, 0x8000100u);
        v93 = v92;
      }

      if (qword_100127ED0)
      {
        v124 = qword_100127ED0;
      }

      else
      {
        v124 = __stderrp;
      }

      fprintf(v124, "%s\n", v92);
      if (v93)
      {
        free(v93);
      }

      CFRelease(v90);
    }

    else
    {
      v121 = sub_10003E080(0, v89);
      if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
      {
        sub_1000B8130();
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

    *__error() = v87;
  }

LABEL_138:
}

void sub_10006CCFC(int a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v17 = a2;
  v18 = a4;
  v19 = sub_10003DEB8("create deferred disk writes report for [%d]", a1);
  v20 = sub_10006B45C(v19);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CE48;
  block[3] = &unk_100115650;
  v34 = a1;
  v25 = v17;
  v26 = v18;
  v28 = a3;
  v29 = a5;
  v30 = a7;
  v31 = a8;
  v32 = a6;
  v33 = a9;
  v27 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  dispatch_async(v20, block);
}

void sub_10006CE48(uint64_t a1)
{
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:&off_100120020 forKeyedSubscript:@"message"];
  v2 = [NSNumber numberWithInt:*(a1 + 104)];
  [v9 setObject:v2 forKeyedSubscript:@"pid"];

  [v9 setObject:*(a1 + 32) forKeyedSubscript:@"pname"];
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  [v9 setObject:v3 forKeyedSubscript:@"flags"];

  [v9 setObject:*(a1 + 40) forKeyedSubscript:@"action"];
  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  [v9 setObject:v4 forKeyedSubscript:@"io"];

  v5 = [NSNumber numberWithDouble:*(a1 + 72)];
  [v9 setObject:v5 forKeyedSubscript:@"duration"];

  v6 = [NSNumber numberWithDouble:*(a1 + 80)];
  [v9 setObject:v6 forKeyedSubscript:@"endtime"];

  if (*(a1 + 88) && *(a1 + 96) > 0.0)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:?];
    [v9 setObject:v7 forKeyedSubscript:@"io_limit"];

    v8 = [NSNumber numberWithDouble:*(a1 + 96)];
    [v9 setObject:v8 forKeyedSubscript:@"duration_limit"];
  }

  sub_10006BE20(v9);
}

void sub_10006D028(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9)
{
  v17 = a1;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = [v17 lastPathComponent];
  v23 = sub_10003DEB8("create deferred power exception report for %s", [v22 UTF8String]);

  v25 = sub_10006B45C(v24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D1E0;
  block[3] = &unk_100115678;
  v38 = v23;
  v39 = a2;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v40 = a7;
  v41 = a8;
  v42 = a9;
  v37 = v21;
  v26 = v23;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v17;
  dispatch_async(v25, block);
}

void sub_10006D1E0(uint64_t a1)
{
  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:&off_100120038 forKeyedSubscript:@"message"];
  [v6 setObject:*(a1 + 32) forKeyedSubscript:@"pname"];
  v2 = [NSNumber numberWithUnsignedLongLong:*(a1 + 80)];
  [v6 setObject:v2 forKeyedSubscript:@"flags"];

  [v6 setObject:*(a1 + 40) forKeyedSubscript:@"issue_type"];
  [v6 setObject:*(a1 + 48) forKeyedSubscript:@"mitigation_reason"];
  [v6 setObject:*(a1 + 56) forKeyedSubscript:@"action"];
  [v6 setObject:*(a1 + 64) forKeyedSubscript:@"detector"];
  v3 = [NSNumber numberWithDouble:*(a1 + 88)];
  [v6 setObject:v3 forKeyedSubscript:@"event_duration"];

  v4 = [NSNumber numberWithDouble:*(a1 + 96)];
  [v6 setObject:v4 forKeyedSubscript:@"report_duration"];

  v5 = [NSNumber numberWithDouble:*(a1 + 104)];
  [v6 setObject:v5 forKeyedSubscript:@"endtime"];

  sub_10006BE20(v6);
}

void sub_10006D368(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_BACKGROUND, 0);

  v2 = dispatch_queue_create("com.apple.spindump.deferred_report_generation", attr);
  v3 = qword_100127DE0;
  qword_100127DE0 = v2;
}

int *sub_10006D3EC(int *result)
{
  v1 = result;
  if (byte_100127EC8 == 1)
  {
    v2 = __error();
    v3 = *v2;
    v5 = sub_10003E080(v2, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B816C();
    }

    result = __error();
    *result = v3;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Deferred tasks expired");
    if (v8)
    {
      v10 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0xCFBCA05AuLL);
        CFStringGetCString(v10, v12, 1024, 0x8000100u);
        v13 = v12;
      }

      if (qword_100127ED0)
      {
        v16 = qword_100127ED0;
      }

      else
      {
        v16 = __stderrp;
      }

      fprintf(v16, "%s\n", v12);
      if (v13)
      {
        free(v13);
      }

      CFRelease(v10);
    }

    else
    {
      v14 = sub_10003E080(0, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1000B81A0();
      }

      if (qword_100127ED0)
      {
        v15 = qword_100127ED0;
      }

      else
      {
        v15 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v15);
    }

    result = __error();
    *result = v7;
  }

  *(*(*(v1 + 4) + 8) + 40) = 1;
  return result;
}

uint64_t sub_10006D5DC(void *a1)
{
  v1 = a1;
  if (byte_100127EC8 == 1)
  {
    v2 = __error();
    v3 = *v2;
    v5 = sub_10003E080(v2, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Generating deferred reports", buf, 2u);
    }

    *__error() = v3;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 2)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Generating deferred reports");
    if (v8)
    {
      v10 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0xD489C141uLL);
        CFStringGetCString(v10, v12, 1024, 0x8000100u);
        v13 = v12;
      }

      if (qword_100127ED0)
      {
        v16 = qword_100127ED0;
      }

      else
      {
        v16 = __stderrp;
      }

      fprintf(v16, "%s\n", v12);
      if (v13)
      {
        free(v13);
      }

      CFRelease(v10);
    }

    else
    {
      v14 = sub_10003E080(0, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1000B81DC();
      }

      if (qword_100127ED0)
      {
        v15 = qword_100127ED0;
      }

      else
      {
        v15 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v15);
    }

    *__error() = v7;
  }

  v17 = +[NSFileManager defaultManager];
  v18 = [v17 fileExistsAtPath:@"/private/var/db/spindump/DeferredReports.plist"];

  if ((v18 & 1) == 0)
  {
    if (byte_100127EC8 == 1)
    {
      v307 = __error();
      v308 = *v307;
      v310 = sub_10003E080(v307, v309);
      if (os_log_type_enabled(v310, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v310, OS_LOG_TYPE_DEFAULT, "No deferred reports", buf, 2u);
      }

      *__error() = v308;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v312 = *__error();
      v313 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No deferred reports");
      if (v313)
      {
        v315 = v313;
        v316 = CFStringGetCStringPtr(v313, 0x8000100u);
        if (v316)
        {
          v317 = v316;
          v318 = 0;
        }

        else
        {
          v317 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD4760F6uLL);
          CFStringGetCString(v315, v317, 1024, 0x8000100u);
          v318 = v317;
        }

        if (qword_100127ED0)
        {
          v344 = qword_100127ED0;
        }

        else
        {
          v344 = __stderrp;
        }

        fprintf(v344, "%s\n", v317);
        if (v318)
        {
          free(v318);
        }

        CFRelease(v315);
      }

      else
      {
        v342 = sub_10003E080(0, v314);
        if (os_log_type_enabled(v342, OS_LOG_TYPE_FAULT))
        {
          sub_1000B8218();
        }

        if (qword_100127ED0)
        {
          v343 = qword_100127ED0;
        }

        else
        {
          v343 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v343);
      }

      *__error() = v312;
    }

    v345 = 1;
    goto LABEL_617;
  }

  v19 = [NSURL fileURLWithPath:@"/private/var/db/spindump/DeferredReports.plist" isDirectory:0];
  v485 = 0;
  v20 = [NSArray arrayWithContentsOfURL:v19 error:&v485];
  v475 = v485;
  if (!v20)
  {
    if (byte_100127EC8 == 1)
    {
      v331 = __error();
      v332 = *v331;
      v334 = sub_10003E080(v331, v333);
      if (os_log_type_enabled(v334, OS_LOG_TYPE_ERROR))
      {
        sub_1000B8B64();
      }

      *__error() = v332;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v335 = *__error();
      v336 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to read deferred reports plist: %@", v475);
      if (v336)
      {
        v338 = v336;
        v339 = CFStringGetCStringPtr(v336, 0x8000100u);
        if (v339)
        {
          v340 = v339;
          v341 = 0;
        }

        else
        {
          v340 = malloc_type_calloc(0x400uLL, 1uLL, 0x3AB02833uLL);
          CFStringGetCString(v338, v340, 1024, 0x8000100u);
          v341 = v340;
        }

        if (qword_100127ED0)
        {
          v390 = qword_100127ED0;
        }

        else
        {
          v390 = __stderrp;
        }

        fprintf(v390, "%s\n", v340);
        if (v341)
        {
          free(v341);
        }

        CFRelease(v338);
      }

      else
      {
        v374 = sub_10003E080(0, v337);
        if (os_log_type_enabled(v374, OS_LOG_TYPE_FAULT))
        {
          sub_1000B8BD8();
        }

        if (qword_100127ED0)
        {
          v375 = qword_100127ED0;
        }

        else
        {
          v375 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v375);
      }

      *__error() = v335;
      v20 = 0;
    }

    v391 = +[NSFileManager defaultManager];
    v484 = 0;
    v392 = [v391 removeItemAtURL:v19 error:&v484];
    v379 = v484;

    if ((v392 & 1) == 0)
    {
      v422 = v20;
      v423 = v19;
      v424 = __error();
      v425 = *v424;
      v427 = sub_10003E080(v424, v426);
      if (os_log_type_enabled(v427, OS_LOG_TYPE_FAULT))
      {
        sub_1000B82D0();
      }

      *__error() = v425;
      v345 = 1;
      if (byte_100127EC9 == 1 && dword_100127558 <= 4)
      {
        v428 = *__error();
        v429 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@", v379);
        if (v429)
        {
          v431 = v429;
          v432 = CFStringGetCStringPtr(v429, 0x8000100u);
          if (v432)
          {
            v433 = v432;
            v434 = 0;
          }

          else
          {
            v433 = malloc_type_calloc(0x400uLL, 1uLL, 0x2BE19509uLL);
            CFStringGetCString(v431, v433, 1024, 0x8000100u);
            v434 = v433;
          }

          if (qword_100127ED0)
          {
            v446 = qword_100127ED0;
          }

          else
          {
            v446 = __stderrp;
          }

          fprintf(v446, "%s\n", v433);
          if (v434)
          {
            free(v434);
          }

          CFRelease(v431);
        }

        else
        {
          v444 = sub_10003E080(0, v430);
          if (os_log_type_enabled(v444, OS_LOG_TYPE_FAULT))
          {
            sub_1000B8340();
          }

          if (qword_100127ED0)
          {
            v445 = qword_100127ED0;
          }

          else
          {
            v445 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v445);
        }

        *__error() = v428;
        v345 = 1;
      }

      v19 = v423;
      v20 = v422;
      goto LABEL_615;
    }

    goto LABEL_553;
  }

  v473 = v19;
  objc_opt_class();
  v474 = v20;
  v21 = v20;
  v520 = 0u;
  v521 = 0u;
  v522 = 0u;
  v523 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v520 objects:buf count:16];
  if (!v23)
  {
    goto LABEL_37;
  }

  v24 = v23;
  v25 = *v521;
LABEL_31:
  v26 = 0;
  while (1)
  {
    if (*v521 != v25)
    {
      objc_enumerationMutation(v22);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if (v24 == ++v26)
    {
      v24 = [v22 countByEnumeratingWithState:&v520 objects:buf count:16];
      if (!v24)
      {
LABEL_37:

        v27 = 0;
        if ([v22 count])
        {
          do
          {
            if (v1[2](v1))
            {
              break;
            }

            v28 = [v22 objectAtIndexedSubscript:v27];
            v29 = sub_100070FBC(v28, @"message");
            v30 = v29;
            if (v29)
            {
              v31 = [v29 longLongValue];
              if (v31 == 15)
              {
                v32 = v28;
                v471 = sub_1000710A4(v32, @"pname");
                if (v471)
                {
                  v94 = sub_100070FBC(v32, @"flags");
                  v451 = [v94 unsignedLongLongValue];

                  v95 = sub_1000710A4(v32, @"issue_type");
                  if (v95)
                  {
                    v96 = v95;
                    v97 = sub_100076928([v95 UTF8String]);
                    v468 = [NSString stringWithUTF8String:v97];

                    free(v97);
                  }

                  else
                  {
                    v468 = 0;
                  }

                  v144 = sub_1000710A4(v32, @"mitigation_reason");
                  if (v144)
                  {
                    v145 = v144;
                    v146 = sub_100076928([v144 UTF8String]);
                    v462 = [NSString stringWithUTF8String:v146];

                    free(v146);
                  }

                  else
                  {
                    v462 = 0;
                  }

                  v147 = sub_1000710A4(v32, @"action");
                  if (v147)
                  {
                    v148 = v147;
                    v149 = sub_100076928([v147 UTF8String]);
                    theString = [NSString stringWithUTF8String:v149];

                    free(v149);
                  }

                  else
                  {
                    theString = 0;
                  }

                  v150 = sub_1000710A4(v32, @"detector");
                  if (v150)
                  {
                    v151 = v150;
                    v152 = sub_100076928([v150 UTF8String]);
                    v455 = [NSString stringWithUTF8String:v152];

                    free(v152);
                  }

                  else
                  {
                    v455 = 0;
                  }

                  v153 = sub_100070FBC(v32, @"report_duration");
                  [v153 doubleValue];
                  v155 = v154;

                  if (v155 <= 0.0)
                  {
                    if (byte_100127EC8 == 1)
                    {
                      v174 = __error();
                      v175 = *v174;
                      v177 = sub_10003E080(v174, v176);
                      if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134217984;
                        v517 = v155;
                        _os_log_error_impl(&_mh_execute_header, v177, OS_LOG_TYPE_ERROR, "deferred power exception: bad report duration (%f)", buf, 0xCu);
                      }

                      *__error() = v175;
                    }

                    if (byte_100127EC9 != 1 || dword_100127558 > 3)
                    {
                      goto LABEL_358;
                    }

                    v178 = *__error();
                    v179 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred power exception: bad report duration (%f)", *&v155);
                    if (v179)
                    {
                      v181 = v179;
                      v452 = v178;
                      v182 = CFStringGetCStringPtr(v179, 0x8000100u);
                      if (v182)
                      {
                        goto LABEL_239;
                      }

                      v183 = 2713806270;
                      goto LABEL_350;
                    }

                    v227 = sub_10003E080(0, v180);
                    if (!os_log_type_enabled(v227, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_314;
                    }

                    *buf = 134217984;
                    v517 = v155;
                    v228 = v227;
                    v229 = "Unable to format: deferred power exception: bad report duration (%f)";
                  }

                  else
                  {
                    v156 = sub_100070FBC(v32, @"event_duration");
                    [v156 doubleValue];
                    v158 = v157;

                    if (v158 > 0.0)
                    {
                      v159 = sub_100070FBC(v32, @"endtime");
                      [v159 doubleValue];
                      v161 = v160;

                      if (v161 > 0.0)
                      {
                        if (byte_100127EC8)
                        {
                          v162 = __error();
                          v163 = *v162;
                          v165 = sub_10003E080(v162, v164);
                          if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
                          {
                            v166 = [v471 lastPathComponent];
                            *buf = 138543362;
                            v517 = *&v166;
                            _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_INFO, "%{public}@ deferred power exception: generating deferred report", buf, 0xCu);
                          }

                          *__error() = v163;
                        }

                        if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                        {
                          v449 = *__error();
                          v167 = [v471 lastPathComponent];
                          v168 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ deferred power exception: generating deferred report", v167);

                          if (v168)
                          {
                            v171 = CFStringGetCStringPtr(v168, 0x8000100u);
                            if (v171)
                            {
                              v172 = v171;
                              v173 = 0;
                            }

                            else
                            {
                              v172 = malloc_type_calloc(0x400uLL, 1uLL, 0x5E566FDEuLL);
                              CFStringGetCString(v168, v172, 1024, 0x8000100u);
                              v173 = v172;
                            }

                            if (qword_100127ED0)
                            {
                              v281 = qword_100127ED0;
                            }

                            else
                            {
                              v281 = __stderrp;
                            }

                            fprintf(v281, "%s\n", v172);
                            if (v173)
                            {
                              free(v173);
                            }

                            CFRelease(v168);
                          }

                          else
                          {
                            v255 = sub_10003E080(v169, v170);
                            if (os_log_type_enabled(v255, OS_LOG_TYPE_FAULT))
                            {
                              sub_1000B8408(&v520, v471);
                            }

                            if (qword_100127ED0)
                            {
                              v256 = qword_100127ED0;
                            }

                            else
                            {
                              v256 = __stderrp;
                            }

                            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v256);
                          }

                          *__error() = v449;
                        }

                        sub_10005645C(v471, v451, v468, v462, theString, v455, v158, v155, v161);
                        goto LABEL_358;
                      }

                      if (byte_100127EC8)
                      {
                        v210 = __error();
                        v211 = *v210;
                        v213 = sub_10003E080(v210, v212);
                        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000B83B0(&v508, v509);
                        }

                        *__error() = v211;
                      }

                      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                      {
                        v178 = *__error();
                        v214 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred power exception: no endtime provided");
                        if (v214)
                        {
                          v181 = v214;
                          v452 = v178;
                          v182 = CFStringGetCStringPtr(v214, 0x8000100u);
                          if (v182)
                          {
LABEL_239:
                            v216 = v182;
                            v217 = 0;
                            goto LABEL_351;
                          }

                          v183 = 1193644374;
LABEL_350:
                          v216 = malloc_type_calloc(0x400uLL, 1uLL, v183);
                          CFStringGetCString(v181, v216, 1024, 0x8000100u);
                          v217 = v216;
LABEL_351:
                          if (qword_100127ED0)
                          {
                            v282 = qword_100127ED0;
                          }

                          else
                          {
                            v282 = __stderrp;
                          }

                          fprintf(v282, "%s\n", v216);
                          if (v217)
                          {
                            free(v217);
                          }

                          CFRelease(v181);
                          v178 = v452;
LABEL_357:
                          *__error() = v178;
                          goto LABEL_358;
                        }

                        v227 = sub_10003E080(0, v215);
                        if (os_log_type_enabled(v227, OS_LOG_TYPE_FAULT))
                        {
                          sub_1000B83DC(&v506, v507);
                        }

LABEL_314:

                        if (qword_100127ED0)
                        {
                          v257 = qword_100127ED0;
                        }

                        else
                        {
                          v257 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v257);
                        goto LABEL_357;
                      }

LABEL_358:

LABEL_359:
                      goto LABEL_400;
                    }

                    if (byte_100127EC8 == 1)
                    {
                      v191 = __error();
                      v192 = *v191;
                      v194 = sub_10003E080(v191, v193);
                      if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134217984;
                        v517 = v158;
                        _os_log_error_impl(&_mh_execute_header, v194, OS_LOG_TYPE_ERROR, "deferred power exception: bad event duration (%f)", buf, 0xCu);
                      }

                      *__error() = v192;
                    }

                    if (byte_100127EC9 != 1 || dword_100127558 > 3)
                    {
                      goto LABEL_358;
                    }

                    v178 = *__error();
                    v195 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred power exception: bad event duration (%f)", *&v158);
                    if (v195)
                    {
                      v181 = v195;
                      v452 = v178;
                      v182 = CFStringGetCStringPtr(v195, 0x8000100u);
                      if (v182)
                      {
                        goto LABEL_239;
                      }

                      v183 = 767317854;
                      goto LABEL_350;
                    }

                    v227 = sub_10003E080(0, v196);
                    if (!os_log_type_enabled(v227, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_314;
                    }

                    *buf = 134217984;
                    v517 = v158;
                    v228 = v227;
                    v229 = "Unable to format: deferred power exception: bad event duration (%f)";
                  }

                  _os_log_fault_impl(&_mh_execute_header, v228, OS_LOG_TYPE_FAULT, v229, buf, 0xCu);
                  goto LABEL_314;
                }

                if (byte_100127EC8 == 1)
                {
                  v114 = __error();
                  v115 = *v114;
                  v117 = sub_10003E080(v114, v116);
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B8464(&v512, v513);
                  }

                  *__error() = v115;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v119 = *__error();
                  v120 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred power exception: no process name provided");
                  if (v120)
                  {
                    v122 = v120;
                    v123 = CFStringGetCStringPtr(v120, 0x8000100u);
                    if (v123)
                    {
                      v124 = v123;
                      v125 = 0;
                    }

                    else
                    {
                      v124 = malloc_type_calloc(0x400uLL, 1uLL, 0xB0AB23E2uLL);
                      CFStringGetCString(v122, v124, 1024, 0x8000100u);
                      v125 = v124;
                    }

                    if (qword_100127ED0)
                    {
                      v232 = qword_100127ED0;
                    }

                    else
                    {
                      v232 = __stderrp;
                    }

                    fprintf(v232, "%s\n", v124);
                    if (v125)
                    {
                      free(v125);
                    }

                    CFRelease(v122);
                  }

                  else
                  {
                    v225 = sub_10003E080(0, v121);
                    if (os_log_type_enabled(v225, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B8490(&v510, v511);
                    }

                    if (qword_100127ED0)
                    {
                      v226 = qword_100127ED0;
                    }

                    else
                    {
                      v226 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v226);
                  }

                  *__error() = v119;
                }

                goto LABEL_359;
              }

              if (v31 == 5)
              {
                v32 = v28;
                v72 = sub_100070FBC(v32, @"pid");
                v73 = [v72 intValue];

                if (!v73)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v108 = __error();
                    v109 = *v108;
                    v111 = sub_10003E080(v108, v110);
                    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B8540(&v504, v505);
                    }

                    *__error() = v109;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v55 = *__error();
                  v112 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: no pid provided");
                  if (!v112)
                  {
                    v224 = sub_10003E080(0, v113);
                    if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B856C(&v502, v503);
                    }

                    goto LABEL_395;
                  }

                  v58 = v112;
                  v59 = CFStringGetCStringPtr(v112, 0x8000100u);
                  if (v59)
                  {
                    goto LABEL_291;
                  }

                  v60 = 2597666092;
                  goto LABEL_387;
                }

                v74 = sub_100070FBC(v32, @"flags");
                v470 = [v74 unsignedLongLongValue];

                v75 = sub_100070FBC(v32, @"io");
                v76 = [v75 longLongValue];

                if (v76 <= 0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v138 = __error();
                    v139 = *v138;
                    v141 = sub_10003E080(v138, v140);
                    if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      v517 = *&v76;
                      _os_log_error_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "deferred disk writes resource: bad bytes (%lld)", buf, 0xCu);
                    }

                    *__error() = v139;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v55 = *__error();
                  v142 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: bad bytes (%lld)", v76);
                  if (!v142)
                  {
                    v224 = sub_10003E080(0, v143);
                    if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 134217984;
                      v517 = *&v76;
                      v230 = v224;
                      v231 = "Unable to format: deferred disk writes resource: bad bytes (%lld)";
                      goto LABEL_301;
                    }

                    goto LABEL_395;
                  }

                  v58 = v142;
                  v59 = CFStringGetCStringPtr(v142, 0x8000100u);
                  if (v59)
                  {
                    goto LABEL_291;
                  }

                  v60 = 2082171218;
                  goto LABEL_387;
                }

                v77 = sub_100070FBC(v32, @"duration");
                [v77 doubleValue];
                v79 = v78;

                if (v79 <= 0.0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v184 = __error();
                    v185 = *v184;
                    v187 = sub_10003E080(v184, v186);
                    if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      v517 = v79;
                      _os_log_error_impl(&_mh_execute_header, v187, OS_LOG_TYPE_ERROR, "deferred disk writes resource: bad duration (%f)", buf, 0xCu);
                    }

                    *__error() = v185;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v55 = *__error();
                  v188 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: bad duration (%f)", *&v79);
                  if (!v188)
                  {
                    v224 = sub_10003E080(0, v189);
                    if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 134217984;
                      v517 = v79;
                      v230 = v224;
                      v231 = "Unable to format: deferred disk writes resource: bad duration (%f)";
                      goto LABEL_301;
                    }

                    goto LABEL_395;
                  }

                  v58 = v188;
                  v59 = CFStringGetCStringPtr(v188, 0x8000100u);
                  if (v59)
                  {
                    goto LABEL_291;
                  }

                  v60 = 3749419559;
                  goto LABEL_387;
                }

                v80 = sub_100070FBC(v32, @"endtime");
                [v80 doubleValue];
                v82 = v81;

                if (v82 <= 0.0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v204 = __error();
                    v205 = *v204;
                    v207 = sub_10003E080(v204, v206);
                    if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B84BC(&v500, v501);
                    }

                    *__error() = v205;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v55 = *__error();
                  v208 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: no endtime provided");
                  if (!v208)
                  {
                    v224 = sub_10003E080(0, v209);
                    if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B84E8(&v498, v499);
                    }

                    goto LABEL_395;
                  }

                  v58 = v208;
                  v59 = CFStringGetCStringPtr(v208, 0x8000100u);
                  if (v59)
                  {
                    goto LABEL_291;
                  }

                  v60 = 1114910037;
                  goto LABEL_387;
                }

                v461 = v76;
                v83 = sub_100070FBC(v32, @"io_limit");
                v84 = [v83 longLongValue];

                v467 = v84;
                if (v84 < 0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v242 = __error();
                    v243 = *v242;
                    v245 = sub_10003E080(v242, v244);
                    if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      v517 = *&v467;
                      _os_log_error_impl(&_mh_execute_header, v245, OS_LOG_TYPE_ERROR, "deferred disk writes resource: bad io_limit_bytes (%lld)", buf, 0xCu);
                    }

                    *__error() = v243;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v55 = *__error();
                  v246 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: bad io_limit_bytes (%lld)", v467);
                  if (v246)
                  {
                    v58 = v246;
                    v59 = CFStringGetCStringPtr(v246, 0x8000100u);
                    if (v59)
                    {
                      goto LABEL_291;
                    }

                    v60 = 1949373162;
                    goto LABEL_387;
                  }

                  v224 = sub_10003E080(0, v247);
                  if (!os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_395;
                  }

                  *buf = 134217984;
                  v517 = *&v467;
                  v230 = v224;
                  v231 = "Unable to format: deferred disk writes resource: bad io_limit_bytes (%lld)";
                  goto LABEL_301;
                }

                v85 = sub_100070FBC(v32, @"duration_limit");
                [v85 doubleValue];
                v87 = v86;

                if (v87 < 0.0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v88 = __error();
                    v89 = *v88;
                    v91 = sub_10003E080(v88, v90);
                    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      v517 = v87;
                      _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "deferred disk writes resource: bad duration_limit (%f)", buf, 0xCu);
                    }

                    *__error() = v89;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v55 = *__error();
                  v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: bad duration_limit (%f)", *&v87);
                  if (!v92)
                  {
                    v224 = sub_10003E080(0, v93);
                    if (!os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_395;
                    }

                    *buf = 134217984;
                    v517 = v87;
                    v230 = v224;
                    v231 = "Unable to format: deferred disk writes resource: bad duration_limit (%f)";
                    goto LABEL_301;
                  }

                  v58 = v92;
                  v59 = CFStringGetCStringPtr(v92, 0x8000100u);
                  if (v59)
                  {
                    goto LABEL_291;
                  }

                  v60 = 34311375;
                  goto LABEL_387;
                }

                v456 = sub_1000710A4(v32, @"pname");
                v250 = sub_1000710A4(v32, @"action");
                if (v250)
                {
                  v251 = v250;
                  v252 = sub_100076928([v250 UTF8String]);
                  theStringa = [NSString stringWithUTF8String:v252];

                  free(v252);
                }

                else
                {
                  theStringa = 0;
                }

                v258 = v461;
                if ((v73 & 0x80000000) != 0)
                {
                  if (byte_100127EC8)
                  {
                    v273 = __error();
                    v274 = *v273;
                    v276 = sub_10003E080(v273, v275);
                    if (os_log_type_enabled(v276, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v276, OS_LOG_TYPE_INFO, "deferred disk writes resource: generating deferred report", buf, 2u);
                    }

                    *__error() = v274;
                  }

                  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                  {
                    v264 = *__error();
                    v277 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: generating deferred report");
                    if (!v277)
                    {
                      v300 = sub_10003E080(0, v278);
                      if (os_log_type_enabled(v300, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000B8514(&v496, v497);
                      }

                      goto LABEL_421;
                    }

                    v454 = v277;
                    v279 = CFStringGetCStringPtr(v277, 0x8000100u);
                    if (v279)
                    {
                      v280 = v279;
                      v450 = 0;
                    }

                    else
                    {
                      v280 = malloc_type_calloc(0x400uLL, 1uLL, 0xED37399uLL);
                      CFStringGetCString(v454, v280, 1024, 0x8000100u);
                      v450 = v280;
                    }

                    if (qword_100127ED0)
                    {
                      v306 = qword_100127ED0;
                    }

                    else
                    {
                      v306 = __stderrp;
                    }

                    fprintf(v306, "%s\n", v280);
                    if (v450)
                    {
                      free(v450);
                    }

                    CFRelease(v454);
LABEL_440:
                    *__error() = v264;
                  }
                }

                else
                {
                  if (byte_100127EC8)
                  {
                    v259 = __error();
                    v260 = *v259;
                    v262 = sub_10003E080(v259, v261);
                    if (os_log_type_enabled(v262, OS_LOG_TYPE_INFO))
                    {
                      v263 = sub_10003E020(v73);
                      *buf = 136446466;
                      v517 = *&v263;
                      v518 = 1024;
                      LODWORD(v519) = v73;
                      _os_log_impl(&_mh_execute_header, v262, OS_LOG_TYPE_INFO, "%{public}s [%d]: deferred disk writes resource: generating deferred report", buf, 0x12u);
                    }

                    *__error() = v260;
                  }

                  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                  {
                    v264 = *__error();
                    v265 = sub_10003E020(v73);
                    v266 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: deferred disk writes resource: generating deferred report", v265, v73);
                    if (v266)
                    {
                      v453 = v264;
                      v268 = v266;
                      v269 = CFStringGetCStringPtr(v266, 0x8000100u);
                      if (v269)
                      {
                        v270 = v269;
                        v271 = v268;
                        v272 = 0;
                      }

                      else
                      {
                        v270 = malloc_type_calloc(0x400uLL, 1uLL, 0xED37399uLL);
                        v271 = v268;
                        CFStringGetCString(v268, v270, 1024, 0x8000100u);
                        v272 = v270;
                      }

                      if (qword_100127ED0)
                      {
                        v303 = qword_100127ED0;
                      }

                      else
                      {
                        v303 = __stderrp;
                      }

                      fprintf(v303, "%s\n", v270);
                      if (v272)
                      {
                        free(v272);
                      }

                      CFRelease(v271);
                      v258 = v461;
                      v264 = v453;
                      goto LABEL_440;
                    }

                    v300 = sub_10003E080(0, v267);
                    if (os_log_type_enabled(v300, OS_LOG_TYPE_FAULT))
                    {
                      v301 = sub_10003E020(v73);
                      *buf = 136315394;
                      v517 = *&v301;
                      v518 = 1024;
                      LODWORD(v519) = v73;
                      _os_log_fault_impl(&_mh_execute_header, v300, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: deferred disk writes resource: generating deferred report", buf, 0x12u);
                    }

LABEL_421:

                    if (qword_100127ED0)
                    {
                      v304 = qword_100127ED0;
                    }

                    else
                    {
                      v304 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v304);
                    goto LABEL_440;
                  }
                }

                sub_100053FF4(v73, v456, v470, theStringa, v258, v467, v79, v82, v87);

                goto LABEL_400;
              }

              if (v31 == 3)
              {
                v32 = v28;
                v33 = sub_100070FBC(v32, @"pid");
                v34 = [v33 intValue];

                if (v34)
                {
                  v35 = sub_100070FBC(v32, @"tid");
                  v36 = [v35 unsignedLongLongValue];

                  v37 = sub_100070FBC(v32, @"flags");
                  v38 = [v37 unsignedLongLongValue];

                  v39 = sub_100070FBC(v32, @"cpu");
                  [v39 doubleValue];
                  v41 = v40;

                  if (v41 <= 0.0)
                  {
                    if (byte_100127EC8 == 1)
                    {
                      v132 = __error();
                      v133 = *v132;
                      v135 = sub_10003E080(v132, v134);
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134217984;
                        v517 = v41;
                        _os_log_error_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "deferred cpu resource: bad cpu_used (%f)", buf, 0xCu);
                      }

                      *__error() = v133;
                    }

                    if (byte_100127EC9 != 1 || dword_100127558 > 3)
                    {
                      goto LABEL_400;
                    }

                    v55 = *__error();
                    v136 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: bad cpu_used (%f)", *&v41);
                    if (!v136)
                    {
                      v224 = sub_10003E080(0, v137);
                      if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 134217984;
                        v517 = v41;
                        v230 = v224;
                        v231 = "Unable to format: deferred cpu resource: bad cpu_used (%f)";
                        goto LABEL_301;
                      }

                      goto LABEL_395;
                    }

                    v58 = v136;
                    v59 = CFStringGetCStringPtr(v136, 0x8000100u);
                    if (v59)
                    {
                      goto LABEL_291;
                    }

                    v60 = 3558672245;
                  }

                  else
                  {
                    v42 = sub_100070FBC(v32, @"duration");
                    [v42 doubleValue];
                    v44 = v43;

                    if (v44 <= 0.0)
                    {
                      if (byte_100127EC8 == 1)
                      {
                        v197 = __error();
                        v198 = *v197;
                        v200 = sub_10003E080(v197, v199);
                        if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 134217984;
                          v517 = v44;
                          _os_log_error_impl(&_mh_execute_header, v200, OS_LOG_TYPE_ERROR, "deferred cpu resource: bad duration (%f)", buf, 0xCu);
                        }

                        *__error() = v198;
                      }

                      if (byte_100127EC9 != 1 || dword_100127558 > 3)
                      {
                        goto LABEL_400;
                      }

                      v55 = *__error();
                      v201 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: bad duration (%f)", *&v44);
                      if (!v201)
                      {
                        v224 = sub_10003E080(0, v202);
                        if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 134217984;
                          v517 = v44;
                          v230 = v224;
                          v231 = "Unable to format: deferred cpu resource: bad duration (%f)";
                          goto LABEL_301;
                        }

                        goto LABEL_395;
                      }

                      v58 = v201;
                      v59 = CFStringGetCStringPtr(v201, 0x8000100u);
                      if (v59)
                      {
                        goto LABEL_291;
                      }

                      v60 = 2354760207;
                    }

                    else
                    {
                      v45 = sub_100070FBC(v32, @"endtime");
                      [v45 doubleValue];
                      v47 = v46;

                      if (v47 > 0.0)
                      {
                        v48 = sub_100070FBC(v32, @"cpu_limit");
                        [v48 doubleValue];
                        v50 = v49;

                        if (v50 < 0.0)
                        {
                          if (byte_100127EC8 == 1)
                          {
                            v51 = __error();
                            v52 = *v51;
                            v54 = sub_10003E080(v51, v53);
                            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 134217984;
                              v517 = v50;
                              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "deferred cpu resource: bad cpu_used_limit (%f)", buf, 0xCu);
                            }

                            *__error() = v52;
                          }

                          if (byte_100127EC9 != 1 || dword_100127558 > 3)
                          {
                            goto LABEL_400;
                          }

                          v55 = *__error();
                          v56 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: bad cpu_used_limit (%f)", *&v50);
                          if (v56)
                          {
                            v58 = v56;
                            v59 = CFStringGetCStringPtr(v56, 0x8000100u);
                            if (!v59)
                            {
                              v60 = 2279917455;
                              goto LABEL_387;
                            }

LABEL_291:
                            v248 = v59;
                            v249 = 0;
LABEL_388:
                            if (qword_100127ED0)
                            {
                              v298 = qword_100127ED0;
                            }

                            else
                            {
                              v298 = __stderrp;
                            }

                            fprintf(v298, "%s\n", v248);
                            if (v249)
                            {
                              free(v249);
                            }

                            CFRelease(v58);
LABEL_399:
                            *__error() = v55;
LABEL_400:

                            goto LABEL_401;
                          }

                          v224 = sub_10003E080(0, v57);
                          if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 134217984;
                            v517 = v50;
                            v230 = v224;
                            v231 = "Unable to format: deferred cpu resource: bad cpu_used_limit (%f)";
                            goto LABEL_301;
                          }

LABEL_395:

                          if (qword_100127ED0)
                          {
                            v299 = qword_100127ED0;
                          }

                          else
                          {
                            v299 = __stderrp;
                          }

                          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v299);
                          goto LABEL_399;
                        }

                        v233 = sub_100070FBC(v32, @"duration_limit");
                        [v233 doubleValue];
                        v235 = v234;

                        if (v235 < 0.0)
                        {
                          if (byte_100127EC8 == 1)
                          {
                            v236 = __error();
                            v237 = *v236;
                            v239 = sub_10003E080(v236, v238);
                            if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 134217984;
                              v517 = v235;
                              _os_log_error_impl(&_mh_execute_header, v239, OS_LOG_TYPE_ERROR, "deferred cpu resource: bad duration_limit (%f)", buf, 0xCu);
                            }

                            *__error() = v237;
                          }

                          if (byte_100127EC9 != 1 || dword_100127558 > 3)
                          {
                            goto LABEL_400;
                          }

                          v55 = *__error();
                          v240 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: bad duration_limit (%f)", *&v235);
                          if (v240)
                          {
                            v58 = v240;
                            v59 = CFStringGetCStringPtr(v240, 0x8000100u);
                            if (v59)
                            {
                              goto LABEL_291;
                            }

                            v60 = 1782473697;
                            goto LABEL_387;
                          }

                          v224 = sub_10003E080(0, v241);
                          if (!os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_395;
                          }

                          *buf = 134217984;
                          v517 = v235;
                          v230 = v224;
                          v231 = "Unable to format: deferred cpu resource: bad duration_limit (%f)";
LABEL_301:
                          _os_log_fault_impl(&_mh_execute_header, v230, OS_LOG_TYPE_FAULT, v231, buf, 0xCu);
                          goto LABEL_395;
                        }

                        v472 = sub_1000710A4(v32, @"pname");
                        v253 = sub_1000710A4(v32, @"action");
                        if (v253)
                        {
                          v254 = v253;
                          v463 = sub_100076928([v253 UTF8String]);
                          v469 = [NSString stringWithUTF8String:v463];

                          free(v463);
                        }

                        else
                        {
                          v469 = 0;
                        }

                        if ((v34 & 0x80000000) != 0)
                        {
                          if (byte_100127EC8)
                          {
                            v292 = __error();
                            v466 = *v292;
                            v294 = sub_10003E080(v292, v293);
                            if (os_log_type_enabled(v294, OS_LOG_TYPE_INFO))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v294, OS_LOG_TYPE_INFO, "deferred cpu resource: generating deferred report", buf, 2u);
                            }

                            *__error() = v466;
                          }

                          if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                          {
                            v465 = *__error();
                            v288 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: generating deferred report");
                            if (v288)
                            {
                              goto LABEL_378;
                            }

                            v290 = sub_10003E080(0, v295);
                            if (os_log_type_enabled(v290, OS_LOG_TYPE_FAULT))
                            {
                              sub_1000B85F0(&v486, v487);
                            }

LABEL_427:

                            if (qword_100127ED0)
                            {
                              v305 = qword_100127ED0;
                            }

                            else
                            {
                              v305 = __stderrp;
                            }

                            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v305);
LABEL_431:
                            *__error() = v465;
                          }
                        }

                        else
                        {
                          if (byte_100127EC8)
                          {
                            v283 = __error();
                            v464 = *v283;
                            v285 = sub_10003E080(v283, v284);
                            if (os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
                            {
                              v286 = sub_10003E020(v34);
                              *buf = 136446466;
                              v517 = *&v286;
                              v518 = 1024;
                              LODWORD(v519) = v34;
                              _os_log_impl(&_mh_execute_header, v285, OS_LOG_TYPE_INFO, "%{public}s [%d]: deferred cpu resource: generating deferred report", buf, 0x12u);
                            }

                            *__error() = v464;
                          }

                          if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                          {
                            v465 = *__error();
                            v287 = sub_10003E020(v34);
                            v288 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: deferred cpu resource: generating deferred report", v287, v34);
                            if (!v288)
                            {
                              v290 = sub_10003E080(0, v289);
                              if (os_log_type_enabled(v290, OS_LOG_TYPE_FAULT))
                              {
                                v291 = sub_10003E020(v34);
                                *buf = 136315394;
                                v517 = *&v291;
                                v518 = 1024;
                                LODWORD(v519) = v34;
                                _os_log_fault_impl(&_mh_execute_header, v290, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: deferred cpu resource: generating deferred report", buf, 0x12u);
                              }

                              goto LABEL_427;
                            }

LABEL_378:
                            theStringb = v288;
                            v296 = CFStringGetCStringPtr(v288, 0x8000100u);
                            if (v296)
                            {
                              v297 = v296;
                              v457 = 0;
                            }

                            else
                            {
                              v297 = malloc_type_calloc(0x400uLL, 1uLL, 0x436D0618uLL);
                              CFStringGetCString(theStringb, v297, 1024, 0x8000100u);
                              v457 = v297;
                            }

                            if (qword_100127ED0)
                            {
                              v302 = qword_100127ED0;
                            }

                            else
                            {
                              v302 = __stderrp;
                            }

                            fprintf(v302, "%s\n", v297);
                            if (v457)
                            {
                              free(v457);
                            }

                            CFRelease(theStringb);
                            goto LABEL_431;
                          }
                        }

                        sub_10005255C(v34, v472, v36, v38, v469, v41, v44, v47, v50, v235);

                        goto LABEL_400;
                      }

                      if (byte_100127EC8 == 1)
                      {
                        v218 = __error();
                        v219 = *v218;
                        v221 = sub_10003E080(v218, v220);
                        if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000B8598(&v490, v491);
                        }

                        *__error() = v219;
                      }

                      if (byte_100127EC9 != 1 || dword_100127558 > 3)
                      {
                        goto LABEL_400;
                      }

                      v55 = *__error();
                      v222 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: no endtime provided");
                      if (!v222)
                      {
                        v224 = sub_10003E080(0, v223);
                        if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                        {
                          sub_1000B85C4(&v488, v489);
                        }

                        goto LABEL_395;
                      }

                      v58 = v222;
                      v59 = CFStringGetCStringPtr(v222, 0x8000100u);
                      if (v59)
                      {
                        goto LABEL_291;
                      }

                      v60 = 485039807;
                    }
                  }
                }

                else
                {
                  if (byte_100127EC8 == 1)
                  {
                    v126 = __error();
                    v127 = *v126;
                    v129 = sub_10003E080(v126, v128);
                    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B861C(&v494, v495);
                    }

                    *__error() = v127;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v55 = *__error();
                  v130 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: no pid provided");
                  if (!v130)
                  {
                    v224 = sub_10003E080(0, v131);
                    if (os_log_type_enabled(v224, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B8648(&v492, v493);
                    }

                    goto LABEL_395;
                  }

                  v58 = v130;
                  v59 = CFStringGetCStringPtr(v130, 0x8000100u);
                  if (v59)
                  {
                    goto LABEL_291;
                  }

                  v60 = 4273087204;
                }

LABEL_387:
                v248 = malloc_type_calloc(0x400uLL, 1uLL, v60);
                CFStringGetCString(v58, v248, 1024, 0x8000100u);
                v249 = v248;
                goto LABEL_388;
              }

              if (byte_100127EC8 == 1)
              {
                v98 = __error();
                v99 = *v98;
                v101 = sub_10003E080(v98, v100);
                if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B8674(v515, v30);
                }

                *__error() = v99;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_401;
              }

              v66 = *__error();
              v103 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unhandled deferred report type %llu", [v30 longLongValue]);
              if (v103)
              {
                v69 = v103;
                v70 = CFStringGetCStringPtr(v103, 0x8000100u);
                if (v70)
                {
LABEL_98:
                  v105 = v70;
                  v106 = 0;
LABEL_215:
                  if (qword_100127ED0)
                  {
                    v203 = qword_100127ED0;
                  }

                  else
                  {
                    v203 = __stderrp;
                  }

                  fprintf(v203, "%s\n", v105);
                  if (v106)
                  {
                    free(v106);
                  }

                  CFRelease(v69);
                  goto LABEL_221;
                }

                v71 = 1033975112;
LABEL_214:
                v105 = malloc_type_calloc(0x400uLL, 1uLL, v71);
                CFStringGetCString(v69, v105, 1024, 0x8000100u);
                v106 = v105;
                goto LABEL_215;
              }

              v107 = sub_10003E080(0, v104);
              if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
              {
                sub_1000B86D4(v514, v30);
              }
            }

            else
            {
              if (byte_100127EC8 == 1)
              {
                v61 = __error();
                v62 = *v61;
                v64 = sub_10003E080(v61, v63);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B8724(&v481, v482);
                }

                *__error() = v62;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_401;
              }

              v66 = *__error();
              v67 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Bad deferred report type value type");
              if (v67)
              {
                v69 = v67;
                v70 = CFStringGetCStringPtr(v67, 0x8000100u);
                if (v70)
                {
                  goto LABEL_98;
                }

                v71 = 988123095;
                goto LABEL_214;
              }

              v107 = sub_10003E080(0, v68);
              if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
              {
                sub_1000B8750(&v479, v480);
              }
            }

            if (qword_100127ED0)
            {
              v190 = qword_100127ED0;
            }

            else
            {
              v190 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v190);
LABEL_221:
            *__error() = v66;
LABEL_401:

            ++v27;
          }

          while (v27 < [v22 count]);
        }

        if (v27 < [v22 count])
        {
          if (byte_100127EC8)
          {
            v346 = __error();
            v347 = *v346;
            v349 = sub_10003E080(v346, v348);
            if (os_log_type_enabled(v349, OS_LOG_TYPE_DEFAULT))
            {
              v350 = [v22 count];
              *buf = 134218240;
              *&v517 = &v350[-v27];
              v518 = 2048;
              v519 = v27;
              _os_log_impl(&_mh_execute_header, v349, OS_LOG_TYPE_DEFAULT, "Task expired with %lu remaining deferred reports (generated %lu)", buf, 0x16u);
            }

            *__error() = v347;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 2)
          {
            v352 = *__error();
            v353 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Task expired with %lu remaining deferred reports (generated %lu)", [v22 count] - v27, v27);
            if (v353)
            {
              v355 = v353;
              v356 = CFStringGetCStringPtr(v353, 0x8000100u);
              if (v356)
              {
                v357 = v356;
                v358 = 0;
              }

              else
              {
                v357 = malloc_type_calloc(0x400uLL, 1uLL, 0xE8D8601CuLL);
                CFStringGetCString(v355, v357, 1024, 0x8000100u);
                v358 = v357;
              }

              if (qword_100127ED0)
              {
                v397 = qword_100127ED0;
              }

              else
              {
                v397 = __stderrp;
              }

              fprintf(v397, "%s\n", v357);
              if (v358)
              {
                free(v358);
              }

              CFRelease(v355);
            }

            else
            {
              v393 = sub_10003E080(0, v354);
              if (os_log_type_enabled(v393, OS_LOG_TYPE_FAULT))
              {
                sub_1000B87FC();
              }

              if (qword_100127ED0)
              {
                v394 = qword_100127ED0;
              }

              else
              {
                v394 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v394);
            }

            *__error() = v352;
          }

          if (v27)
          {
            v379 = [v22 subarrayWithRange:{v27, objc_msgSend(v22, "count") - v27}];
            v477 = 0;
            v19 = v473;
            v398 = [v379 writeToURL:v473 error:&v477];
            v399 = v477;
            v400 = v399;
            if ((v398 & 1) == 0)
            {
              v401 = __error();
              v402 = *v401;
              v404 = sub_10003E080(v401, v403);
              if (os_log_type_enabled(v404, OS_LOG_TYPE_FAULT))
              {
                sub_1000B8890();
              }

              *__error() = v402;
              if (byte_100127EC9 == 1 && dword_100127558 <= 4)
              {
                v405 = *__error();
                v406 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write %lu remaining deferred reports to plist: %@", [v379 count], v400);
                if (v406)
                {
                  v408 = v406;
                  v409 = CFStringGetCStringPtr(v406, 0x8000100u);
                  if (v409)
                  {
                    v410 = v409;
                    v411 = 0;
                  }

                  else
                  {
                    v410 = malloc_type_calloc(0x400uLL, 1uLL, 0x9168E54EuLL);
                    CFStringGetCString(v408, v410, 1024, 0x8000100u);
                    v411 = v410;
                  }

                  if (qword_100127ED0)
                  {
                    v417 = qword_100127ED0;
                  }

                  else
                  {
                    v417 = __stderrp;
                  }

                  fprintf(v417, "%s\n", v410);
                  if (v411)
                  {
                    free(v411);
                  }

                  CFRelease(v408);
                  v19 = v473;
                }

                else
                {
                  v415 = sub_10003E080(0, v407);
                  if (os_log_type_enabled(v415, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B8910();
                  }

                  if (qword_100127ED0)
                  {
                    v416 = qword_100127ED0;
                  }

                  else
                  {
                    v416 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v416);
                }

                *__error() = v405;
              }

              v418 = +[NSFileManager defaultManager];
              v476 = 0;
              v419 = [v418 removeItemAtURL:v19 error:&v476];
              v420 = v476;

              if ((v419 & 1) == 0)
              {
                sub_1000B8990(v420);
              }

              goto LABEL_612;
            }

            v345 = 0;
            goto LABEL_614;
          }

          v345 = 0;
          v19 = v473;
          v20 = v474;
          goto LABEL_616;
        }

        v19 = v473;
        if (byte_100127EC8)
        {
          v359 = __error();
          v360 = *v359;
          v362 = sub_10003E080(v359, v361);
          if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
          {
            v363 = [v22 count];
            *buf = 134217984;
            v517 = *&v363;
            _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_DEFAULT, "Generated %lu deferred reports", buf, 0xCu);
          }

          *__error() = v360;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 2)
        {
          v365 = *__error();
          v366 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Generated %lu deferred reports", [v22 count]);
          if (v366)
          {
            v368 = v366;
            v369 = CFStringGetCStringPtr(v366, 0x8000100u);
            if (v369)
            {
              v370 = v369;
              v371 = 0;
            }

            else
            {
              v370 = malloc_type_calloc(0x400uLL, 1uLL, 0x79EB4913uLL);
              CFStringGetCString(v368, v370, 1024, 0x8000100u);
              v371 = v370;
            }

            if (qword_100127ED0)
            {
              v412 = qword_100127ED0;
            }

            else
            {
              v412 = __stderrp;
            }

            fprintf(v412, "%s\n", v370);
            if (v371)
            {
              free(v371);
            }

            CFRelease(v368);
          }

          else
          {
            v395 = sub_10003E080(0, v367);
            if (os_log_type_enabled(v395, OS_LOG_TYPE_FAULT))
            {
              sub_1000B877C(v22);
            }

            if (qword_100127ED0)
            {
              v396 = qword_100127ED0;
            }

            else
            {
              v396 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v396);
          }

          *__error() = v365;
          v19 = v473;
        }

        v413 = +[NSFileManager defaultManager];
        v478 = 0;
        v414 = [v413 removeItemAtURL:v19 error:&v478];
        v379 = v478;

        if (v414)
        {
          v345 = 1;
          goto LABEL_614;
        }

        v435 = __error();
        v436 = *v435;
        v438 = sub_10003E080(v435, v437);
        if (os_log_type_enabled(v438, OS_LOG_TYPE_FAULT))
        {
          sub_1000B82D0();
        }

        *__error() = v436;
        v345 = 1;
        if (byte_100127EC9 != 1 || dword_100127558 > 4)
        {
          goto LABEL_613;
        }

        v384 = *__error();
        v439 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@", v379);
        if (v439)
        {
          v387 = v439;
          v388 = CFStringGetCStringPtr(v439, 0x8000100u);
          if (v388)
          {
            goto LABEL_631;
          }

          v389 = 3682427990;
LABEL_656:
          v441 = malloc_type_calloc(0x400uLL, 1uLL, v389);
          CFStringGetCString(v387, v441, 1024, 0x8000100u);
          v442 = v441;
          goto LABEL_657;
        }

        v443 = sub_10003E080(0, v440);
        if (os_log_type_enabled(v443, OS_LOG_TYPE_FAULT))
        {
          sub_1000B8340();
        }

LABEL_651:

        if (qword_100127ED0)
        {
          v447 = qword_100127ED0;
        }

        else
        {
          v447 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v447);
        goto LABEL_663;
      }

      goto LABEL_31;
    }
  }

  v19 = v473;
  v20 = v474;
  if (byte_100127EC8 == 1)
  {
    v319 = __error();
    v320 = *v319;
    v322 = sub_10003E080(v319, v321);
    if (os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
    {
      sub_1000B8254();
    }

    *__error() = v320;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v324 = *__error();
    v325 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Invalid deferred reports plist");
    if (v325)
    {
      v327 = v325;
      v328 = CFStringGetCStringPtr(v325, 0x8000100u);
      if (v328)
      {
        v329 = v328;
        v330 = 0;
      }

      else
      {
        v329 = malloc_type_calloc(0x400uLL, 1uLL, 0xFF775BEFuLL);
        CFStringGetCString(v327, v329, 1024, 0x8000100u);
        v330 = v329;
      }

      if (qword_100127ED0)
      {
        v376 = qword_100127ED0;
      }

      else
      {
        v376 = __stderrp;
      }

      fprintf(v376, "%s\n", v329);
      if (v330)
      {
        free(v330);
      }

      CFRelease(v327);
    }

    else
    {
      v372 = sub_10003E080(0, v326);
      if (os_log_type_enabled(v372, OS_LOG_TYPE_FAULT))
      {
        sub_1000B8294();
      }

      if (qword_100127ED0)
      {
        v373 = qword_100127ED0;
      }

      else
      {
        v373 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v373);
    }

    *__error() = v324;
    v20 = v474;
  }

  v377 = +[NSFileManager defaultManager];
  v483 = 0;
  v378 = [v377 removeItemAtURL:v473 error:&v483];
  v379 = v483;

  if (v378)
  {
LABEL_553:
    v345 = 1;
    goto LABEL_615;
  }

  v380 = __error();
  v381 = *v380;
  v383 = sub_10003E080(v380, v382);
  if (os_log_type_enabled(v383, OS_LOG_TYPE_FAULT))
  {
    sub_1000B82D0();
  }

  *__error() = v381;
  v345 = 1;
  if (byte_100127EC9 != 1 || dword_100127558 > 4)
  {
    goto LABEL_613;
  }

  v384 = *__error();
  v385 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@", v379);
  if (!v385)
  {
    v443 = sub_10003E080(0, v386);
    if (os_log_type_enabled(v443, OS_LOG_TYPE_FAULT))
    {
      sub_1000B8340();
    }

    goto LABEL_651;
  }

  v387 = v385;
  v388 = CFStringGetCStringPtr(v385, 0x8000100u);
  if (!v388)
  {
    v389 = 1088578138;
    goto LABEL_656;
  }

LABEL_631:
  v441 = v388;
  v442 = 0;
LABEL_657:
  if (qword_100127ED0)
  {
    v448 = qword_100127ED0;
  }

  else
  {
    v448 = __stderrp;
  }

  fprintf(v448, "%s\n", v441);
  if (v442)
  {
    free(v442);
  }

  CFRelease(v387);
LABEL_663:
  *__error() = v384;
LABEL_612:
  v345 = 1;
LABEL_613:
  v19 = v473;
LABEL_614:
  v20 = v474;
LABEL_615:

LABEL_616:
LABEL_617:

  return v345;
}