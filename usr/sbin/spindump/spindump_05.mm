void sub_100077DF8(void *a1, int a2, int a3, int a4)
{
  v12 = a1;
  v7 = [v12 dataGatheringOptions];
  if (a2)
  {
    [v12 setDataGatheringOptions:v7 | 0x60];
    v8 = [v12 dataGatheringOptions];
    if (a3)
    {
      v9 = v8 | 8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFFFF7;
    }
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF97;
  }

  [v12 setDataGatheringOptions:v9];
  v10 = [v12 dataGatheringOptions] & 0xFFFFFFFFFFFFFFEFLL;
  v11 = 16;
  if (!a4)
  {
    v11 = 0;
  }

  [v12 setDataGatheringOptions:v10 | v11];
}

_DWORD *sub_100077F40(void *a1, int *a2)
{
  v3 = *(*a1 + 4 * *a2);

  return sub_100035B20(v3);
}

void sub_100077F60(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_fault_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

uint64_t sub_100077F94(const __CFString *a1, char *a2)
{

  return CFStringGetCString(a1, a2, 1024, 0x8000100u);
}

uint64_t sub_100078010@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

void *sub_100078020()
{

  return malloc_type_calloc(0x400uLL, 1uLL, 0xE3AA1872uLL);
}

void sub_100078040(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_fault_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_100078060(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_fault_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

CFStringRef sub_10007808C(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

double sub_100078EB4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 machAbsTimeSeconds];
  if (v5 != 0.0)
  {
    [v4 machAbsTimeSeconds];
    if (v6 != 0.0)
    {
      [v4 machAbsTimeSeconds];
      v8 = v7;
      [v3 machAbsTimeSeconds];
LABEL_10:
      v13 = v8 - v9;
      goto LABEL_11;
    }
  }

  [v3 machContTimeSeconds];
  if (v10 != 0.0)
  {
    [v4 machContTimeSeconds];
    if (v11 != 0.0)
    {
      [v4 machContTimeSeconds];
      v8 = v12;
      [v3 machContTimeSeconds];
      goto LABEL_10;
    }
  }

  [v3 wallTime];
  v13 = 0.0;
  if (v14 != 0.0)
  {
    [v4 wallTime];
    if (v15 != 0.0)
    {
      [v4 wallTime];
      v8 = v16;
      [v3 wallTime];
      goto LABEL_10;
    }
  }

LABEL_11:

  return v13;
}

void sub_10007B3B4(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100117E00;
  qword_100117E00 = v1;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.spindump.create_sampled_process", v5);
  v4 = qword_100117E08;
  qword_100117E08 = v3;
}

uint64_t sub_10007B434(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007B44C(uint64_t a1)
{
  v2 = [qword_100117E00 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    if (*(a1 + 60) != 1)
    {
      return;
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      *v9 = 0;
    }

    if (![qword_100117E00 count])
    {
LABEL_62:
      v50 = [[SPSampledProcess alloc] initWithPid:*(a1 + 56) isWSBased:*(a1 + 62)];
      v51 = *(*(a1 + 40) + 8);
      v52 = *(v51 + 40);
      *(v51 + 40) = v50;

      [qword_100117E00 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
      *(*(*(*(a1 + 40) + 8) + 40) + 299) = 1;
      return;
    }

    if (*(a1 + 61) != 1)
    {
      goto LABEL_5;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = [qword_100117E00 allValues];
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (!v11)
    {
      goto LABEL_61;
    }

    v12 = v11;
    v13 = *v54;
LABEL_15:
    v14 = 0;
    while (1)
    {
      if (*v54 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v53 + 1) + 8 * v14);
      if (([v15 targetProcessId] & 0x80000000) != 0)
      {
        if (byte_100117E80)
        {
          v35 = __error();
          v36 = *v35;
          v38 = sub_100035B80(v35, v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(a1 + 56);
            *buf = 67109120;
            LODWORD(v58) = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "overridden by [%d]", buf, 8u);
          }

          *__error() = v36;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_56;
        }

        v24 = *__error();
        v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"overridden by [%d]", *(a1 + 56));
        if (v26)
        {
          goto LABEL_41;
        }

        v28 = sub_100035B80(0, v41);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          v48 = *(a1 + 56);
          *buf = 67109120;
          LODWORD(v58) = v48;
          v32 = v28;
          v33 = "Unable to format: overridden by [%d]";
          v34 = 8;
          goto LABEL_59;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v16 = __error();
          v17 = *v16;
          v19 = sub_100035B80(v16, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_100035B20([v15 targetProcessId]);
            v21 = [v15 targetProcessId];
            v22 = *(a1 + 56);
            *buf = 136446722;
            v58 = v20;
            v59 = 1024;
            v60 = v21;
            v61 = 1024;
            v62 = v22;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: overridden by [%d]", buf, 0x18u);
          }

          *__error() = v17;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_56;
        }

        v24 = *__error();
        v25 = sub_100035B20([v15 targetProcessId]);
        v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: overridden by [%d]", v25, [v15 targetProcessId], *(a1 + 56));
        if (v26)
        {
LABEL_41:
          v42 = v26;
          CStringPtr = CFStringGetCStringPtr(v26, 0x8000100u);
          if (CStringPtr)
          {
            v44 = CStringPtr;
            v45 = 0;
          }

          else
          {
            v44 = malloc_type_calloc(0x400uLL, 1uLL, 0x624BA0D9uLL);
            CFStringGetCString(v42, v44, 1024, 0x8000100u);
            v45 = v44;
          }

          if (qword_100117E88)
          {
            v46 = qword_100117E88;
          }

          else
          {
            v46 = __stderrp;
          }

          fprintf(v46, "%s\n", v44);
          if (v45)
          {
            free(v45);
          }

          CFRelease(v42);
          goto LABEL_55;
        }

        v28 = sub_100035B80(0, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          v29 = sub_100035B20([v15 targetProcessId]);
          v30 = [v15 targetProcessId];
          v31 = *(a1 + 56);
          *buf = 136315650;
          v58 = v29;
          v59 = 1024;
          v60 = v30;
          v61 = 1024;
          v62 = v31;
          v32 = v28;
          v33 = "Unable to format: %s [%d]: overridden by [%d]";
          v34 = 24;
LABEL_59:
          _os_log_fault_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, v33, buf, v34);
        }
      }

      if (qword_100117E88)
      {
        v47 = qword_100117E88;
      }

      else
      {
        v47 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v47);
LABEL_55:
      *__error() = v24;
LABEL_56:
      [v15 stopSamplingWithReason:9];
      if (v12 == ++v14)
      {
        v49 = [v10 countByEnumeratingWithState:&v53 objects:v63 count:16];
        v12 = v49;
        if (!v49)
        {
LABEL_61:

          [qword_100117E00 removeAllObjects];
          goto LABEL_62;
        }

        goto LABEL_15;
      }
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *v6 = 1;
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  if (*(a1 + 62) != [v5 isWSBased])
  {
LABEL_5:
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void sub_10007BAE8(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithInt:*(a1 + 40)];
  v3 = *(a1 + 32);
  v5 = v2;
  v4 = [qword_100117E00 objectForKey:?];

  if (v3 == v4)
  {
    [qword_100117E00 removeObjectForKey:v5];
  }

  if (![qword_100117E00 count])
  {
    +[SPSampledProcess stopMemoryPressureTimer];
  }
}

id sub_10007BF8C(uint64_t a1)
{
  v1 = (a1 + 32);
  if ((*(*(a1 + 32) + 72) & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_100035B80(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = sub_100035B20(*(*v1 + 18));
        v7 = *(*v1 + 18);
        *buf = 136446466;
        v29 = v6;
        v30 = 1024;
        v31 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s [%d]: exited - HID", buf, 0x12u);
      }

      *__error() = v3;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_40;
    }

    v9 = *__error();
    v10 = sub_100035B20(*(*v1 + 18));
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: exited - HID", v10, *(*v1 + 18));
    if (!v11)
    {
      v13 = sub_100035B80(0, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1000B6870();
      }

LABEL_35:

      if (qword_100117E88)
      {
        v25 = qword_100117E88;
      }

      else
      {
        v25 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v25);
LABEL_39:
      *__error() = v9;
      goto LABEL_40;
    }

    goto LABEL_24;
  }

  if (byte_100117E80)
  {
    v14 = __error();
    v15 = *v14;
    v17 = sub_100035B80(v14, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "exited - HID", buf, 2u);
    }

    *__error() = v15;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v9 = *__error();
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"exited - HID");
    if (!v11)
    {
      v13 = sub_100035B80(0, v19);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1000B683C();
      }

      goto LABEL_35;
    }

LABEL_24:
    v20 = v11;
    CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
    if (CStringPtr)
    {
      v22 = CStringPtr;
      v23 = 0;
    }

    else
    {
      v22 = malloc_type_calloc(0x400uLL, 1uLL, 0xB01773A3uLL);
      CFStringGetCString(v20, v22, 1024, 0x8000100u);
      v23 = v22;
    }

    if (qword_100117E88)
    {
      v24 = qword_100117E88;
    }

    else
    {
      v24 = __stderrp;
    }

    fprintf(v24, "%s\n", v22);
    if (v23)
    {
      free(v23);
    }

    CFRelease(v20);
    goto LABEL_39;
  }

LABEL_40:
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10007C3D0;
  v27[3] = &unk_100109AE8;
  v27[4] = *v1;
  sub_10007C31C(v27);
  return [*v1 deleteHIDExitSource];
}

void sub_10007C31C(void *a1)
{
  v1 = a1;
  if (qword_100117E28 != -1)
  {
    sub_1000B68F0();
  }

  v2 = qword_100117E18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088440;
  block[3] = &unk_100109CC0;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void sub_10007C3D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  v6 = [NSNumber numberWithInt:*(v5 + 72)];
  v7 = [v3 objectForKeyedSubscript:v6];

  v8 = *(*v4 + 72);
  if (v7)
  {
    v9 = v7 == *v4;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (v8 < 0)
    {
      if (byte_100117E80)
      {
        v44 = __error();
        v45 = *v44;
        v47 = sub_100035B80(v44, v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B6A6C();
        }

        *__error() = v45;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_86;
      }

      v28 = *__error();
      v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Process exited, no longer waiting for HID event");
      if (!v30)
      {
        v32 = sub_100035B80(0, v49);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          sub_1000B6AA0();
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v23 = __error();
        v24 = *v23;
        v26 = sub_100035B80(v23, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B6AD4();
        }

        *__error() = v24;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_86;
      }

      v28 = *__error();
      v29 = sub_100035B20(*(*v4 + 72));
      v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Process exited, no longer waiting for HID event", v29, *(*v4 + 72));
      if (!v30)
      {
        v32 = sub_100035B80(0, v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          sub_1000B6B54();
        }

LABEL_81:

        if (qword_100117E88)
        {
          v60 = qword_100117E88;
        }

        else
        {
          v60 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v60);
LABEL_85:
        *__error() = v28;
LABEL_86:
        dispatch_semaphore_signal(v7[53]);
        v61 = [NSNumber numberWithInt:*(*v4 + 72)];
        [v3 setObject:0 forKeyedSubscript:v61];

        goto LABEL_96;
      }
    }

    v50 = v30;
    CStringPtr = CFStringGetCStringPtr(v30, 0x8000100u);
    if (CStringPtr)
    {
      v52 = CStringPtr;
      v53 = 0;
    }

    else
    {
      v52 = malloc_type_calloc(0x400uLL, 1uLL, 0xD53039E6uLL);
      CFStringGetCString(v50, v52, 1024, 0x8000100u);
      v53 = v52;
    }

    if (qword_100117E88)
    {
      v55 = qword_100117E88;
    }

    else
    {
      v55 = __stderrp;
    }

    fprintf(v55, "%s\n", v52);
    if (v53)
    {
      free(v53);
    }

    CFRelease(v50);
    goto LABEL_85;
  }

  if ((v8 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v10 = __error();
      v11 = *v10;
      v13 = sub_100035B80(v10, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B696C();
      }

      *__error() = v11;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      goto LABEL_96;
    }

    v15 = *__error();
    v16 = sub_100035B20(*(*v4 + 72));
    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Process exited, and not waiting for a HID event", v16, *(*v4 + 72));
    if (v17)
    {
      v19 = v17;
      v20 = CFStringGetCStringPtr(v17, 0x8000100u);
      if (v20)
      {
        v21 = v20;
        v22 = 0;
      }

      else
      {
        v21 = malloc_type_calloc(0x400uLL, 1uLL, 0xCD2A47B5uLL);
        CFStringGetCString(v19, v21, 1024, 0x8000100u);
        v22 = v21;
      }

      if (qword_100117E88)
      {
        v56 = qword_100117E88;
      }

      else
      {
        v56 = __stderrp;
      }

      fprintf(v56, "%s\n", v21);
      if (v22)
      {
        free(v22);
      }

      v57 = v19;
LABEL_94:
      CFRelease(v57);
LABEL_95:
      *__error() = v15;
      goto LABEL_96;
    }

    v54 = sub_100035B80(0, v18);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      sub_1000B69EC();
    }

    goto LABEL_75;
  }

  if (byte_100117E80)
  {
    v33 = __error();
    v34 = *v33;
    v36 = sub_100035B80(v33, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B6904();
    }

    *__error() = v34;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v15 = *__error();
    v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Process exited, and not waiting for a HID event");
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
        v42 = malloc_type_calloc(0x400uLL, 1uLL, 0xCD2A47B5uLL);
        CFStringGetCString(v40, v42, 1024, 0x8000100u);
        v43 = v42;
      }

      if (qword_100117E88)
      {
        v62 = qword_100117E88;
      }

      else
      {
        v62 = __stderrp;
      }

      fprintf(v62, "%s\n", v42);
      if (v43)
      {
        free(v43);
      }

      v57 = v40;
      goto LABEL_94;
    }

    v58 = sub_100035B80(0, v39);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      sub_1000B6938();
    }

LABEL_75:
    if (qword_100117E88)
    {
      v59 = qword_100117E88;
    }

    else
    {
      v59 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v59);
    goto LABEL_95;
  }

LABEL_96:
}

void sub_10007CAA0(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_10007CB18;
  v1[3] = &unk_100109B10;
  v1[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10007C31C(v1);
}

void sub_10007CB18(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 targetProcessId]);
  v7 = [v3 objectForKeyedSubscript:v6];

  v8 = *v4;
  if (*(v4 + 8) != 1)
  {
    if (v7)
    {
      v22 = v8[18];
      if (v7 != v8)
      {
        if (v22 < 0)
        {
          if (byte_100117E80)
          {
            v89 = __error();
            v90 = *v89;
            v92 = sub_100035B80(v89, v91);
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B6BD4();
            }

            *__error() = v90;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 0)
          {
            goto LABEL_256;
          }

          v28 = *__error();
          v94 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Previous spin waiting for HID event");
          if (v94)
          {
            v32 = v94;
            CStringPtr = CFStringGetCStringPtr(v94, 0x8000100u);
            if (CStringPtr)
            {
              v97 = CStringPtr;
              v98 = 0;
            }

            else
            {
              v97 = malloc_type_calloc(0x400uLL, 1uLL, 0xC75494B9uLL);
              CFStringGetCString(v32, v97, 1024, 0x8000100u);
              v98 = v97;
            }

            if (qword_100117E88)
            {
              v171 = qword_100117E88;
            }

            else
            {
              v171 = __stderrp;
            }

            fprintf(v171, "%s\n", v97);
            if (v98)
            {
              free(v98);
            }

            goto LABEL_254;
          }

          v140 = sub_100035B80(0, v95);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
          {
            sub_1000B6C08();
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v23 = __error();
            v24 = *v23;
            v26 = sub_100035B80(v23, v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B6C3C();
            }

            *__error() = v24;
          }

          if (byte_100117E81 != 1 || dword_100117510 > 0)
          {
            goto LABEL_256;
          }

          v28 = *__error();
          v29 = sub_100035B20(*(*v4 + 72));
          v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Previous spin waiting for HID event", v29, *(*v4 + 72));
          if (v30)
          {
            v32 = v30;
            v33 = CFStringGetCStringPtr(v30, 0x8000100u);
            if (v33)
            {
              v34 = v33;
              v35 = 0;
            }

            else
            {
              v34 = malloc_type_calloc(0x400uLL, 1uLL, 0xC75494B9uLL);
              CFStringGetCString(v32, v34, 1024, 0x8000100u);
              v35 = v34;
            }

            if (qword_100117E88)
            {
              v144 = qword_100117E88;
            }

            else
            {
              v144 = __stderrp;
            }

            fprintf(v144, "%s\n", v34);
            if (v35)
            {
              free(v35);
            }

LABEL_254:
            CFRelease(v32);
LABEL_255:
            *__error() = v28;
LABEL_256:
            if (!*(*v4 + 424))
            {
              goto LABEL_295;
            }

            if (([*v4 targetProcessId] & 0x80000000) != 0)
            {
              if (byte_100117E80)
              {
                v188 = __error();
                v189 = *v188;
                v191 = sub_100035B80(v188, v190);
                if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B6D3C();
                }

                *__error() = v189;
              }

              if (byte_100117E81 == 1 && dword_100117510 <= 3)
              {
                v192 = *__error();
                v193 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: _hidEventSem non-NULL when already tracking this process in previous spin", "self->_hidEventSem == ((void*)0)");
                if (v193)
                {
                  v210 = v193;
                  v211 = CFStringGetCStringPtr(v193, 0x8000100u);
                  if (v211)
                  {
                    v212 = v211;
                    v213 = 0;
                  }

                  else
                  {
                    v212 = malloc_type_calloc(0x400uLL, 1uLL, 0x520D1BC6uLL);
                    CFStringGetCString(v210, v212, 1024, 0x8000100u);
                    v213 = v212;
                  }

                  if (qword_100117E88)
                  {
                    v225 = qword_100117E88;
                  }

                  else
                  {
                    v225 = __stderrp;
                  }

                  fprintf(v225, "%s\n", v212);
                  if (v213)
                  {
                    free(v213);
                  }

                  CFRelease(v210);
                }

                else
                {
                  v195 = sub_100035B80(0, v194);
                  if (os_log_type_enabled(v195, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B6DBC();
                  }

                  if (qword_100117E88)
                  {
                    v196 = qword_100117E88;
                  }

                  else
                  {
                    v196 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v196);
                }

                *__error() = v192;
              }

              v230 = "self->_hidEventSem == ((void*)0)";
              v224 = "%s: _hidEventSem non-NULL when already tracking this process in previous spin";
            }

            else
            {
              if (byte_100117E80)
              {
                v172 = __error();
                v173 = *v172;
                v175 = sub_100035B80(v172, v174);
                if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B6E3C();
                }

                *__error() = v173;
              }

              if (byte_100117E81 == 1 && dword_100117510 <= 3)
              {
                v176 = *__error();
                v177 = sub_100035B20([*v4 targetProcessId]);
                v178 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: _hidEventSem non-NULL when already tracking this process in previous spin", v177, [*v4 targetProcessId], "self->_hidEventSem == ((void*)0)");
                if (v178)
                {
                  v206 = v178;
                  v207 = CFStringGetCStringPtr(v178, 0x8000100u);
                  if (v207)
                  {
                    v208 = v207;
                    v209 = 0;
                  }

                  else
                  {
                    v208 = malloc_type_calloc(0x400uLL, 1uLL, 0x520D1BC6uLL);
                    CFStringGetCString(v206, v208, 1024, 0x8000100u);
                    v209 = v208;
                  }

                  if (qword_100117E88)
                  {
                    v222 = qword_100117E88;
                  }

                  else
                  {
                    v222 = __stderrp;
                  }

                  fprintf(v222, "%s\n", v208);
                  if (v209)
                  {
                    free(v209);
                  }

                  CFRelease(v206);
                }

                else
                {
                  v180 = sub_100035B80(0, v179);
                  if (os_log_type_enabled(v180, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B6ED4();
                  }

                  if (qword_100117E88)
                  {
                    v181 = qword_100117E88;
                  }

                  else
                  {
                    v181 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v181);
                }

                *__error() = v176;
              }

              v223 = sub_100035B20([*v4 targetProcessId]);
              v231 = [*v4 targetProcessId];
              v232 = "self->_hidEventSem == ((void*)0)";
              v230 = v223;
              v224 = "%s [%d]: %s: _hidEventSem non-NULL when already tracking this process in previous spin";
            }

            v226 = 897;
            goto LABEL_368;
          }

          v140 = sub_100035B80(0, v31);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
          {
            sub_1000B6CBC();
          }
        }

        if (qword_100117E88)
        {
          v147 = qword_100117E88;
        }

        else
        {
          v147 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v147);
        goto LABEL_255;
      }

      if (v22 < 0)
      {
        if (byte_100117E80)
        {
          v130 = __error();
          v131 = *v130;
          v133 = sub_100035B80(v130, v132);
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
          {
            sub_1000B6F6C();
          }

          *__error() = v131;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          goto LABEL_285;
        }

        v74 = *__error();
        v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No longer waiting for HID event");
        if (!v76)
        {
          v78 = sub_100035B80(0, v135);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
          {
            sub_1000B6FA0();
          }

          goto LABEL_280;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v69 = __error();
          v70 = *v69;
          v72 = sub_100035B80(v69, v71);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            sub_1000B6FD4();
          }

          *__error() = v70;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 0)
        {
          goto LABEL_285;
        }

        v74 = *__error();
        v75 = sub_100035B20(*(*v4 + 72));
        v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No longer waiting for HID event", v75, *(*v4 + 72));
        if (!v76)
        {
          v78 = sub_100035B80(0, v77);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
          {
            sub_1000B7054();
          }

LABEL_280:

          if (qword_100117E88)
          {
            v184 = qword_100117E88;
          }

          else
          {
            v184 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v184);
LABEL_284:
          *__error() = v74;
LABEL_285:
          dispatch_semaphore_signal(*(*v4 + 424));
          v185 = *(*v4 + 424);
          *(*v4 + 424) = 0;

          v186 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*v4 targetProcessId]);
          [v3 setObject:0 forKeyedSubscript:v186];

          [*v4 deleteHIDExitSource];
          goto LABEL_295;
        }
      }

      v136 = v76;
      v137 = CFStringGetCStringPtr(v76, 0x8000100u);
      if (v137)
      {
        v138 = v137;
        v139 = 0;
      }

      else
      {
        v138 = malloc_type_calloc(0x400uLL, 1uLL, 0x630446DAuLL);
        CFStringGetCString(v136, v138, 1024, 0x8000100u);
        v139 = v138;
      }

      if (qword_100117E88)
      {
        v148 = qword_100117E88;
      }

      else
      {
        v148 = __stderrp;
      }

      fprintf(v148, "%s\n", v138);
      if (v139)
      {
        free(v139);
      }

      CFRelease(v136);
      goto LABEL_284;
    }

    if ((v8[18] & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v109 = __error();
        v110 = *v109;
        v112 = sub_100035B80(v109, v111);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B70D4();
        }

        *__error() = v110;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_226;
      }

      v51 = *__error();
      v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Doesn't require HID event and we weren't waiting before anyway");
      if (!v53)
      {
        v55 = sub_100035B80(0, v114);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_1000B7108();
        }

        goto LABEL_221;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v46 = __error();
        v47 = *v46;
        v49 = sub_100035B80(v46, v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B713C();
        }

        *__error() = v47;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_226;
      }

      v51 = *__error();
      v52 = sub_100035B20(*(*v4 + 72));
      v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Doesn't require HID event and we weren't waiting before anyway", v52, *(*v4 + 72));
      if (!v53)
      {
        v55 = sub_100035B80(0, v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_1000B71BC();
        }

LABEL_221:

        if (qword_100117E88)
        {
          v154 = qword_100117E88;
        }

        else
        {
          v154 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v154);
LABEL_225:
        *__error() = v51;
LABEL_226:
        if (!*(*v4 + 424))
        {
          goto LABEL_295;
        }

        if (([*v4 targetProcessId] & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v197 = __error();
            v198 = *v197;
            v200 = sub_100035B80(v197, v199);
            if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
            {
              sub_1000B723C();
            }

            *__error() = v198;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v201 = *__error();
            v202 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: _hidEventSem non-NULL when not requiring HID event", "self->_hidEventSem == ((void*)0)");
            if (v202)
            {
              v218 = v202;
              v219 = CFStringGetCStringPtr(v202, 0x8000100u);
              if (v219)
              {
                v220 = v219;
                v221 = 0;
              }

              else
              {
                v220 = malloc_type_calloc(0x400uLL, 1uLL, 0xD335DB8AuLL);
                CFStringGetCString(v218, v220, 1024, 0x8000100u);
                v221 = v220;
              }

              if (qword_100117E88)
              {
                v229 = qword_100117E88;
              }

              else
              {
                v229 = __stderrp;
              }

              fprintf(v229, "%s\n", v220);
              if (v221)
              {
                free(v221);
              }

              CFRelease(v218);
            }

            else
            {
              v204 = sub_100035B80(0, v203);
              if (os_log_type_enabled(v204, OS_LOG_TYPE_FAULT))
              {
                sub_1000B72BC();
              }

              if (qword_100117E88)
              {
                v205 = qword_100117E88;
              }

              else
              {
                v205 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v205);
            }

            *__error() = v201;
          }

          v230 = "self->_hidEventSem == ((void*)0)";
          v224 = "%s: _hidEventSem non-NULL when not requiring HID event";
        }

        else
        {
          if (byte_100117E80)
          {
            v159 = __error();
            v160 = *v159;
            v162 = sub_100035B80(v159, v161);
            if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
            {
              sub_1000B733C();
            }

            *__error() = v160;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v163 = *__error();
            v164 = sub_100035B20([*v4 targetProcessId]);
            v165 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: _hidEventSem non-NULL when not requiring HID event", v164, [*v4 targetProcessId], "self->_hidEventSem == ((void*)0)");
            if (v165)
            {
              v214 = v165;
              v215 = CFStringGetCStringPtr(v165, 0x8000100u);
              if (v215)
              {
                v216 = v215;
                v217 = 0;
              }

              else
              {
                v216 = malloc_type_calloc(0x400uLL, 1uLL, 0xD335DB8AuLL);
                CFStringGetCString(v214, v216, 1024, 0x8000100u);
                v217 = v216;
              }

              if (qword_100117E88)
              {
                v227 = qword_100117E88;
              }

              else
              {
                v227 = __stderrp;
              }

              fprintf(v227, "%s\n", v216);
              if (v217)
              {
                free(v217);
              }

              CFRelease(v214);
            }

            else
            {
              v167 = sub_100035B80(0, v166);
              if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
              {
                sub_1000B73D4();
              }

              if (qword_100117E88)
              {
                v168 = qword_100117E88;
              }

              else
              {
                v168 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v168);
            }

            *__error() = v163;
          }

          v228 = sub_100035B20([*v4 targetProcessId]);
          v231 = [*v4 targetProcessId];
          v232 = "self->_hidEventSem == ((void*)0)";
          v230 = v228;
          v224 = "%s [%d]: %s: _hidEventSem non-NULL when not requiring HID event";
        }

        v226 = 908;
LABEL_368:
        sub_100035A54("[SPSampledProcess requireHIDEvent:]_block_invoke", "SPProcessEvent.m", v226, v224, v155, v156, v157, v158, v230, v231, v232);
        abort();
      }
    }

    v115 = v53;
    v116 = CFStringGetCStringPtr(v53, 0x8000100u);
    if (v116)
    {
      v117 = v116;
      v118 = 0;
    }

    else
    {
      v117 = malloc_type_calloc(0x400uLL, 1uLL, 0xCF4E71B1uLL);
      CFStringGetCString(v115, v117, 1024, 0x8000100u);
      v118 = v117;
    }

    if (qword_100117E88)
    {
      v143 = qword_100117E88;
    }

    else
    {
      v143 = __stderrp;
    }

    fprintf(v143, "%s\n", v117);
    if (v118)
    {
      free(v118);
    }

    CFRelease(v115);
    goto LABEL_225;
  }

  if (!v7)
  {
    if ((v8[18] & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v99 = __error();
        v100 = *v99;
        v102 = sub_100035B80(v99, v101);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B7688();
        }

        *__error() = v100;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_218;
      }

      v41 = *__error();
      v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Requires HID event");
      if (!v43)
      {
        v45 = sub_100035B80(0, v104);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          sub_1000B76BC();
        }

        goto LABEL_213;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v36 = __error();
        v37 = *v36;
        v39 = sub_100035B80(v36, v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B76F0();
        }

        *__error() = v37;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_218;
      }

      v41 = *__error();
      v42 = sub_100035B20(*(*v4 + 72));
      v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Requires HID event", v42, *(*v4 + 72));
      if (!v43)
      {
        v45 = sub_100035B80(0, v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          sub_1000B7770();
        }

LABEL_213:

        if (qword_100117E88)
        {
          v149 = qword_100117E88;
        }

        else
        {
          v149 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v149);
LABEL_217:
        *__error() = v41;
LABEL_218:
        v150 = dispatch_semaphore_create(0);
        v151 = *(*v4 + 424);
        *(*v4 + 424) = v150;

        v152 = *v4;
        v153 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*v4 targetProcessId]);
        [v3 setObject:v152 forKeyedSubscript:v153];

        [*v4 createHIDExitSource];
        goto LABEL_295;
      }
    }

    v105 = v43;
    v106 = CFStringGetCStringPtr(v43, 0x8000100u);
    if (v106)
    {
      v107 = v106;
      v108 = 0;
    }

    else
    {
      v107 = malloc_type_calloc(0x400uLL, 1uLL, 0x9184FDDCuLL);
      CFStringGetCString(v105, v107, 1024, 0x8000100u);
      v108 = v107;
    }

    if (qword_100117E88)
    {
      v142 = qword_100117E88;
    }

    else
    {
      v142 = __stderrp;
    }

    fprintf(v142, "%s\n", v107);
    if (v108)
    {
      free(v108);
    }

    CFRelease(v105);
    goto LABEL_217;
  }

  v9 = v8[18];
  if (v7 != v8)
  {
    if (v9 < 0)
    {
      if (byte_100117E80)
      {
        v79 = __error();
        v80 = *v79;
        v82 = sub_100035B80(v79, v81);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Already waiting for HID event from previous spin, canceling this spin", buf, 2u);
        }

        *__error() = v80;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 2)
      {
        goto LABEL_197;
      }

      v17 = *__error();
      v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already waiting for HID event from previous spin, canceling this spin");
      if (!v19)
      {
        v21 = sub_100035B80(0, v84);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1000B746C();
        }

        goto LABEL_192;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v10 = __error();
        v11 = *v10;
        v13 = sub_100035B80(v10, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = sub_100035B20(*(*v4 + 72));
          v15 = *(*v4 + 72);
          *buf = 136446466;
          v234 = v14;
          v235 = 1024;
          v236 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Already waiting for HID event from previous spin, canceling this spin", buf, 0x12u);
        }

        *__error() = v11;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 2)
      {
        goto LABEL_197;
      }

      v17 = *__error();
      v18 = sub_100035B20(*(*v4 + 72));
      v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already waiting for HID event from previous spin, canceling this spin", v18, *(*v4 + 72));
      if (!v19)
      {
        v21 = sub_100035B80(0, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1000B74A0();
        }

LABEL_192:

        if (qword_100117E88)
        {
          v146 = qword_100117E88;
        }

        else
        {
          v146 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v146);
LABEL_196:
        *__error() = v17;
LABEL_197:
        [*v4 stopSamplingWithReason:7];
        goto LABEL_295;
      }
    }

    v85 = v19;
    v86 = CFStringGetCStringPtr(v19, 0x8000100u);
    if (v86)
    {
      v87 = v86;
      v88 = 0;
    }

    else
    {
      v87 = malloc_type_calloc(0x400uLL, 1uLL, 0x7684D7B6uLL);
      CFStringGetCString(v85, v87, 1024, 0x8000100u);
      v88 = v87;
    }

    if (qword_100117E88)
    {
      v141 = qword_100117E88;
    }

    else
    {
      v141 = __stderrp;
    }

    fprintf(v141, "%s\n", v87);
    if (v88)
    {
      free(v88);
    }

    CFRelease(v85);
    goto LABEL_196;
  }

  if ((v9 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v56 = __error();
      v57 = *v56;
      v59 = sub_100035B80(v56, v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B7588();
      }

      *__error() = v57;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      goto LABEL_295;
    }

    v61 = *__error();
    v62 = sub_100035B20(*(*v4 + 72));
    v63 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already waiting for HID event", v62, *(*v4 + 72));
    if (v63)
    {
      v65 = v63;
      v66 = CFStringGetCStringPtr(v63, 0x8000100u);
      if (v66)
      {
        v67 = v66;
        v68 = 0;
      }

      else
      {
        v67 = malloc_type_calloc(0x400uLL, 1uLL, 0x711E5E63uLL);
        CFStringGetCString(v65, v67, 1024, 0x8000100u);
        v68 = v67;
      }

      if (qword_100117E88)
      {
        v169 = qword_100117E88;
      }

      else
      {
        v169 = __stderrp;
      }

      fprintf(v169, "%s\n", v67);
      if (v68)
      {
        free(v68);
      }

      v170 = v65;
LABEL_293:
      CFRelease(v170);
LABEL_294:
      *__error() = v61;
      goto LABEL_295;
    }

    v145 = sub_100035B80(0, v64);
    if (os_log_type_enabled(v145, OS_LOG_TYPE_FAULT))
    {
      sub_1000B7608();
    }

    goto LABEL_274;
  }

  if (byte_100117E80)
  {
    v119 = __error();
    v120 = *v119;
    v122 = sub_100035B80(v119, v121);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B7520();
    }

    *__error() = v120;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v61 = *__error();
    v124 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already waiting for HID event");
    if (v124)
    {
      v126 = v124;
      v127 = CFStringGetCStringPtr(v124, 0x8000100u);
      if (v127)
      {
        v128 = v127;
        v129 = 0;
      }

      else
      {
        v128 = malloc_type_calloc(0x400uLL, 1uLL, 0x711E5E63uLL);
        CFStringGetCString(v126, v128, 1024, 0x8000100u);
        v129 = v128;
      }

      if (qword_100117E88)
      {
        v187 = qword_100117E88;
      }

      else
      {
        v187 = __stderrp;
      }

      fprintf(v187, "%s\n", v128);
      if (v129)
      {
        free(v129);
      }

      v170 = v126;
      goto LABEL_293;
    }

    v182 = sub_100035B80(0, v125);
    if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
    {
      sub_1000B7554();
    }

LABEL_274:
    if (qword_100117E88)
    {
      v183 = qword_100117E88;
    }

    else
    {
      v183 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v183);
    goto LABEL_294;
  }

LABEL_295:
}

void sub_10007E574(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 64);
  v5 = [NSNumber numberWithInt:*(a1 + 64)];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (!v6)
  {
    if ((*v4 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v50 = __error();
        v51 = *v50;
        v53 = sub_100035B80(v50, v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B79FC();
        }

        *__error() = v51;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_136;
      }

      v30 = *__error();
      v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No sampled process for hid event");
      if (!v32)
      {
        v34 = sub_100035B80(0, v55);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_1000B7A30();
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v25 = __error();
        v26 = *v25;
        v28 = sub_100035B80(v25, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B7A64();
        }

        *__error() = v26;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_136;
      }

      v30 = *__error();
      v31 = sub_100035B20(*v4);
      v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No sampled process for hid event", v31, *v4);
      if (!v32)
      {
        v34 = sub_100035B80(0, v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_1000B7AE4();
        }

        goto LABEL_106;
      }
    }

    v56 = v32;
    CStringPtr = CFStringGetCStringPtr(v32, 0x8000100u);
    if (CStringPtr)
    {
LABEL_65:
      v69 = CStringPtr;
      v70 = 0;
LABEL_119:
      if (qword_100117E88)
      {
        v91 = qword_100117E88;
      }

      else
      {
        v91 = __stderrp;
      }

      fprintf(v91, "%s\n", v69);
      if (v70)
      {
        free(v70);
      }

      CFRelease(v56);
      goto LABEL_125;
    }

    v58 = 2845071430;
LABEL_118:
    v69 = malloc_type_calloc(0x400uLL, 1uLL, v58);
    CFStringGetCString(v56, v69, 1024, 0x8000100u);
    v70 = v69;
    goto LABEL_119;
  }

  v7 = (a1 + 32);
  if (![*(v6 + 416) gt:*(a1 + 32)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if ((*(a1 + 64) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v71 = __error();
        v72 = *v71;
        v74 = sub_100035B80(v71, v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Got hid event", buf, 2u);
        }

        *__error() = v72;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 1)
      {
        goto LABEL_135;
      }

      v42 = *__error();
      v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got hid event");
      if (v76)
      {
        v78 = v76;
        v79 = CFStringGetCStringPtr(v76, 0x8000100u);
        if (v79)
        {
          v80 = v79;
          v81 = 0;
        }

        else
        {
          v80 = malloc_type_calloc(0x400uLL, 1uLL, 0x57A67270uLL);
          CFStringGetCString(v78, v80, 1024, 0x8000100u);
          v81 = v80;
        }

        if (qword_100117E88)
        {
          v92 = qword_100117E88;
        }

        else
        {
          v92 = __stderrp;
        }

        fprintf(v92, "%s\n", v80);
        if (v81)
        {
          free(v81);
        }

        v87 = v78;
        goto LABEL_133;
      }

      v89 = sub_100035B80(0, v77);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
      {
        sub_1000B77F0();
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v35 = __error();
        v36 = *v35;
        v38 = sub_100035B80(v35, v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = sub_100035B20(*v4);
          v40 = *v4;
          *buf = 136446466;
          v106 = v39;
          v107 = 1024;
          v108 = v40;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%{public}s [%d]: Got hid event", buf, 0x12u);
        }

        *__error() = v36;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 1)
      {
        goto LABEL_135;
      }

      v42 = *__error();
      v43 = sub_100035B20(*v4);
      v44 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Got hid event", v43, *v4);
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
          v48 = malloc_type_calloc(0x400uLL, 1uLL, 0x57A67270uLL);
          CFStringGetCString(v46, v48, 1024, 0x8000100u);
          v49 = v48;
        }

        if (qword_100117E88)
        {
          v86 = qword_100117E88;
        }

        else
        {
          v86 = __stderrp;
        }

        fprintf(v86, "%s\n", v48);
        if (v49)
        {
          free(v49);
        }

        v87 = v46;
LABEL_133:
        CFRelease(v87);
LABEL_134:
        *__error() = v42;
LABEL_135:
        v93 = [SATimeRange timeRangeStart:*(a1 + 40) end:*(a1 + 32)];
        [v6 setEventTimeRange:v93];

        [v6 setReportTimeStart:*(a1 + 40)];
        [v6 setReportTimeEnd:*(a1 + 32)];
        [v6 setTargetHIDEventMachAbs:*(a1 + 56)];
        [v6 setTargetHIDEventEndMachAbs:{objc_msgSend(*(a1 + 32), "machAbsTime")}];
        dispatch_semaphore_signal(*(v6 + 424));
        v94 = [NSNumber numberWithInt:*(a1 + 64)];
        [v3 setObject:0 forKeyedSubscript:v94];

        [v6 deleteHIDExitSource];
        goto LABEL_136;
      }

      v84 = sub_100035B80(0, v45);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
      {
        sub_1000B7824();
      }
    }

    if (qword_100117E88)
    {
      v90 = qword_100117E88;
    }

    else
    {
      v90 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v90);
    goto LABEL_134;
  }

  if ((*v4 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v8 = __error();
      v9 = *v8;
      v11 = sub_100035B80(v8, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v95 = sub_100035B20(*v4);
        v96 = *v4;
        [*(v6 + 416) machAbsTimeSeconds];
        v98 = v97;
        [*v7 machAbsTimeSeconds];
        *buf = 136446722;
        v106 = v95;
        v107 = 1024;
        v108 = v96;
        v109 = 2048;
        v110 = v98 - v99;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s [%d]: Got hid event from %.1fs earlier than the spin we monitored, continuing to wait", buf, 0x1Cu);
      }

      *__error() = v9;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v13 = *__error();
      v14 = sub_100035B20(*v4);
      v15 = *v4;
      [*(v6 + 416) machAbsTimeSeconds];
      v17 = v16;
      [*v7 machAbsTimeSeconds];
      v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Got hid event from %.1fs earlier than the spin we monitored, continuing to wait", v14, v15, v17 - v18);
      if (v19)
      {
        v21 = v19;
        v22 = CFStringGetCStringPtr(v19, 0x8000100u);
        if (v22)
        {
          v23 = v22;
          v24 = 0;
        }

        else
        {
          v23 = malloc_type_calloc(0x400uLL, 1uLL, 0xF72AC13FuLL);
          CFStringGetCString(v21, v23, 1024, 0x8000100u);
          v24 = v23;
        }

        if (qword_100117E88)
        {
          v85 = qword_100117E88;
        }

        else
        {
          v85 = __stderrp;
        }

        fprintf(v85, "%s\n", v23);
        if (v24)
        {
          free(v24);
        }

        CFRelease(v21);
      }

      else
      {
        v82 = sub_100035B80(0, v20);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          v100 = sub_100035B20(*v4);
          v101 = *v4;
          [*(v6 + 416) machAbsTimeSeconds];
          v103 = v102;
          [*v7 machAbsTimeSeconds];
          *buf = 136315650;
          v106 = v100;
          v107 = 1024;
          v108 = v101;
          v109 = 2048;
          v110 = v103 - v104;
          _os_log_fault_impl(&_mh_execute_header, v82, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Got hid event from %.1fs earlier than the spin we monitored, continuing to wait", buf, 0x1Cu);
        }

        if (qword_100117E88)
        {
          v83 = qword_100117E88;
        }

        else
        {
          v83 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v83);
      }

      *__error() = v13;
    }

    goto LABEL_136;
  }

  if (byte_100117E80)
  {
    v59 = __error();
    v60 = *v59;
    v62 = sub_100035B80(v59, v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B78A4(v6, v7);
    }

    *__error() = v60;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v30 = *__error();
    [*(v6 + 416) machAbsTimeSeconds];
    v65 = v64;
    [*v7 machAbsTimeSeconds];
    v67 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got hid event from %.1fs earlier than the spin we monitored, continuing to wait", v65 - v66);
    if (v67)
    {
      v56 = v67;
      CStringPtr = CFStringGetCStringPtr(v67, 0x8000100u);
      if (CStringPtr)
      {
        goto LABEL_65;
      }

      v58 = 4146774335;
      goto LABEL_118;
    }

    v34 = sub_100035B80(0, v68);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_1000B7950(v6, v7);
    }

LABEL_106:

    if (qword_100117E88)
    {
      v88 = qword_100117E88;
    }

    else
    {
      v88 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v88);
LABEL_125:
    *__error() = v30;
  }

LABEL_136:
}

void sub_10008071C(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 298) != 1 || *(v2 + 297) == 1)
  {
    v4 = *(v2 + 32);
    if (!v4)
    {
      v5 = dispatch_get_global_queue(25, 2uLL);
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
      v7 = *(*v3 + 32);
      *(*v3 + 32) = v6;

      v8 = *v3;
      v9 = *(*v3 + 32);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100080B88;
      handler[3] = &unk_1001097E8;
      handler[4] = v8;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(*(*v3 + 32));
      v2 = *v3;
      v4 = *(*v3 + 32);
    }

    v10 = *(v2 + 400);
    if (v10 >= 0x3E8)
    {
      v11 = 1000000;
    }

    else
    {
      v11 = 1000 * v10;
    }

    v12 = dispatch_time(0, ((*(a1 + 40) - *(a1 + 48)) * 1000000000.0));
    dispatch_source_set_timer(v4, v12, 0xFFFFFFFFFFFFFFFFLL, v11);
    return;
  }

  if ((*(v2 + 72) & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v13 = __error();
      v14 = *v13;
      v16 = sub_100035B80(v13, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B8300();
      }

      *__error() = v14;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      return;
    }

    v18 = *__error();
    v19 = sub_100035B20(*(*v3 + 72));
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Lost race: already done sampling", v19, *(*v3 + 72));
    if (v20)
    {
      v22 = v20;
      CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
      if (CStringPtr)
      {
        v24 = CStringPtr;
        v25 = 0;
      }

      else
      {
        v24 = malloc_type_calloc(0x400uLL, 1uLL, 0xF7E812DuLL);
        CFStringGetCString(v22, v24, 1024, 0x8000100u);
        v25 = v24;
      }

      if (qword_100117E88)
      {
        v38 = qword_100117E88;
      }

      else
      {
        v38 = __stderrp;
      }

      fprintf(v38, "%s\n", v24);
      if (v25)
      {
        free(v25);
      }

      v39 = v22;
LABEL_58:
      CFRelease(v39);
LABEL_59:
      *__error() = v18;
      return;
    }

    v37 = sub_100035B80(0, v21);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      sub_1000B8380();
    }

    goto LABEL_47;
  }

  if (byte_100117E80)
  {
    v26 = __error();
    v27 = *v26;
    v29 = sub_100035B80(v26, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B8298();
    }

    *__error() = v27;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v18 = *__error();
    v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Lost race: already done sampling");
    if (v31)
    {
      v33 = v31;
      v34 = CFStringGetCStringPtr(v31, 0x8000100u);
      if (v34)
      {
        v35 = v34;
        v36 = 0;
      }

      else
      {
        v35 = malloc_type_calloc(0x400uLL, 1uLL, 0xF7E812DuLL);
        CFStringGetCString(v33, v35, 1024, 0x8000100u);
        v36 = v35;
      }

      if (qword_100117E88)
      {
        v42 = qword_100117E88;
      }

      else
      {
        v42 = __stderrp;
      }

      fprintf(v42, "%s\n", v35);
      if (v36)
      {
        free(v36);
      }

      v39 = v33;
      goto LABEL_58;
    }

    v40 = sub_100035B80(0, v32);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_1000B82CC();
    }

LABEL_47:
    if (qword_100117E88)
    {
      v41 = qword_100117E88;
    }

    else
    {
      v41 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v41);
    goto LABEL_59;
  }
}

void sub_100080B88(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 48);
  SAMachAbsTimeSecondsGetCurrent();
  v3 = *(*v1 + 18);
  if (v2 <= v4)
  {
    if (v3 < 0)
    {
      if (byte_100117E80)
      {
        v39 = __error();
        v40 = *v39;
        v42 = sub_100035B80(v39, v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B8400();
        }

        *__error() = v40;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_83;
      }

      v23 = *__error();
      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Monitoring timed out");
      if (!v25)
      {
        v27 = sub_100035B80(0, v44);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          sub_1000B8434();
        }

        goto LABEL_78;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v18 = __error();
        v19 = *v18;
        v21 = sub_100035B80(v18, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B8468();
        }

        *__error() = v19;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_83;
      }

      v23 = *__error();
      v24 = sub_100035B20(*(*v1 + 18));
      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Monitoring timed out", v24, *(*v1 + 18));
      if (!v25)
      {
        v27 = sub_100035B80(0, v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          sub_1000B84E8();
        }

LABEL_78:

        if (qword_100117E88)
        {
          v55 = qword_100117E88;
        }

        else
        {
          v55 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v55);
LABEL_82:
        *__error() = v23;
LABEL_83:
        [*v1 stopSamplingWithReason:3];
        return;
      }
    }

    v45 = v25;
    CStringPtr = CFStringGetCStringPtr(v25, 0x8000100u);
    if (CStringPtr)
    {
      v47 = CStringPtr;
      v48 = 0;
    }

    else
    {
      v47 = malloc_type_calloc(0x400uLL, 1uLL, 0x9AA84E51uLL);
      CFStringGetCString(v45, v47, 1024, 0x8000100u);
      v48 = v47;
    }

    if (qword_100117E88)
    {
      v50 = qword_100117E88;
    }

    else
    {
      v50 = __stderrp;
    }

    fprintf(v50, "%s\n", v47);
    if (v48)
    {
      free(v48);
    }

    CFRelease(v45);
    goto LABEL_82;
  }

  if ((v3 & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v5 = __error();
      v6 = *v5;
      v8 = sub_100035B80(v5, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B85D0();
      }

      *__error() = v6;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      return;
    }

    v10 = *__error();
    v11 = sub_100035B20(*(*v1 + 18));
    v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Monitoring timeout was extended, doing nothing", v11, *(*v1 + 18));
    if (v12)
    {
      v14 = v12;
      v15 = CFStringGetCStringPtr(v12, 0x8000100u);
      if (v15)
      {
        v16 = v15;
        v17 = 0;
      }

      else
      {
        v16 = malloc_type_calloc(0x400uLL, 1uLL, 0x322215D7uLL);
        CFStringGetCString(v14, v16, 1024, 0x8000100u);
        v17 = v16;
      }

      if (qword_100117E88)
      {
        v51 = qword_100117E88;
      }

      else
      {
        v51 = __stderrp;
      }

      fprintf(v51, "%s\n", v16);
      if (v17)
      {
        free(v17);
      }

      v52 = v14;
LABEL_91:
      CFRelease(v52);
LABEL_92:
      *__error() = v10;
      return;
    }

    v49 = sub_100035B80(0, v13);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      sub_1000B8650();
    }

    goto LABEL_72;
  }

  if (byte_100117E80)
  {
    v28 = __error();
    v29 = *v28;
    v31 = sub_100035B80(v28, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B8568();
    }

    *__error() = v29;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v10 = *__error();
    v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Monitoring timeout was extended, doing nothing");
    if (v33)
    {
      v35 = v33;
      v36 = CFStringGetCStringPtr(v33, 0x8000100u);
      if (v36)
      {
        v37 = v36;
        v38 = 0;
      }

      else
      {
        v37 = malloc_type_calloc(0x400uLL, 1uLL, 0x322215D7uLL);
        CFStringGetCString(v35, v37, 1024, 0x8000100u);
        v38 = v37;
      }

      if (qword_100117E88)
      {
        v56 = qword_100117E88;
      }

      else
      {
        v56 = __stderrp;
      }

      fprintf(v56, "%s\n", v37);
      if (v38)
      {
        free(v38);
      }

      v52 = v35;
      goto LABEL_91;
    }

    v53 = sub_100035B80(0, v34);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      sub_1000B859C();
    }

LABEL_72:
    if (qword_100117E88)
    {
      v54 = qword_100117E88;
    }

    else
    {
      v54 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v54);
    goto LABEL_92;
  }
}

uint64_t sub_1000815D4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  *(*(a1 + 32) + 64) = objc_retainBlock(*(a1 + 48));

  return _objc_release_x1();
}

void sub_10008169C(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v1 + 40);
  if (v3 != 1)
  {
    if (v4)
    {
      *(v1 + 40) = 0;
    }

    return;
  }

  if (v4)
  {
    return;
  }

  if (*(v1 + 298) != 1 || *(v1 + 297) == 1)
  {
    v5 = *(v1 + 72);
    if (v5 >= 1)
    {
      v6 = dispatch_get_global_queue(25, 2uLL);
      v7 = dispatch_source_create(&_dispatch_source_type_proc, v5, 0xA0000000uLL, v6);
      v8 = *(*v2 + 40);
      *(*v2 + 40) = v7;

      v9 = *v2;
      v10 = *(*v2 + 40);
      if (v10)
      {
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100081EC4;
        handler[3] = &unk_1001097E8;
        handler[4] = v9;
        dispatch_source_set_event_handler(v10, handler);
        dispatch_resume(*(*v2 + 40));
        return;
      }

      if ((*(v9 + 72) & 0x80000000) == 0)
      {
        if (byte_100117E80)
        {
          v33 = __error();
          v34 = *v33;
          v36 = sub_100035B80(v33, v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_1000B89C8();
          }

          *__error() = v34;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v16 = *__error();
          v37 = sub_100035B20(*(*v2 + 72));
          v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to allocate proc exit dispatch source", v37, *(*v2 + 72));
          if (v38)
          {
            v30 = v38;
            CStringPtr = CFStringGetCStringPtr(v38, 0x8000100u);
            if (CStringPtr)
            {
              goto LABEL_47;
            }

            v32 = 2518794908;
            goto LABEL_93;
          }

          v65 = sub_100035B80(0, v39);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
          {
            sub_1000B8A48();
          }

LABEL_87:

LABEL_103:
          if (qword_100117E88)
          {
            v68 = qword_100117E88;
          }

          else
          {
            v68 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v68);
          goto LABEL_116;
        }

        return;
      }

      if (byte_100117E80)
      {
        v56 = __error();
        v57 = *v56;
        v59 = sub_100035B80(v56, v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_1000B8958();
        }

        *__error() = v57;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        return;
      }

      v16 = *__error();
      v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to allocate proc exit dispatch source");
      if (v60)
      {
        v19 = v60;
        v20 = CFStringGetCStringPtr(v60, 0x8000100u);
        if (v20)
        {
          goto LABEL_80;
        }

        v21 = 2518794908;
LABEL_108:
        v62 = malloc_type_calloc(0x400uLL, 1uLL, v21);
        CFStringGetCString(v19, v62, 1024, 0x8000100u);
        v63 = v62;
        goto LABEL_109;
      }

      v64 = sub_100035B80(0, v61);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        sub_1000B8994();
      }

LABEL_102:

      goto LABEL_103;
    }

    if (v5)
    {
      if (byte_100117E80)
      {
        v11 = __error();
        v12 = *v11;
        v14 = sub_100035B80(v11, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No target process to monitor for exiting", buf, 2u);
        }

        *__error() = v12;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 1)
      {
        return;
      }

      v16 = *__error();
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No target process to monitor for exiting");
      if (!v17)
      {
        v64 = sub_100035B80(0, v18);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          sub_1000B88F0();
        }

        goto LABEL_102;
      }

      v19 = v17;
      v20 = CFStringGetCStringPtr(v17, 0x8000100u);
      if (!v20)
      {
        v21 = 2765977849;
        goto LABEL_108;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v42 = __error();
        v43 = *v42;
        v45 = sub_100035B80(v42, v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Can't stop when kernel exits", buf, 2u);
        }

        *__error() = v43;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 1)
      {
        return;
      }

      v16 = *__error();
      v47 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Can't stop when kernel exits");
      if (!v47)
      {
        v64 = sub_100035B80(0, v48);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          sub_1000B8924();
        }

        goto LABEL_102;
      }

      v19 = v47;
      v20 = CFStringGetCStringPtr(v47, 0x8000100u);
      if (!v20)
      {
        v21 = 3500407202;
        goto LABEL_108;
      }
    }

LABEL_80:
    v62 = v20;
    v63 = 0;
LABEL_109:
    if (qword_100117E88)
    {
      v69 = qword_100117E88;
    }

    else
    {
      v69 = __stderrp;
    }

    fprintf(v69, "%s\n", v62);
    if (v63)
    {
      free(v63);
    }

    v67 = v19;
    goto LABEL_115;
  }

  if ((*(v1 + 72) & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v49 = __error();
      v50 = *v49;
      v52 = sub_100035B80(v49, v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B8298();
      }

      *__error() = v50;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      return;
    }

    v16 = *__error();
    v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Lost race: already done sampling");
    if (!v54)
    {
      v64 = sub_100035B80(0, v55);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        sub_1000B82CC();
      }

      goto LABEL_102;
    }

    v19 = v54;
    v20 = CFStringGetCStringPtr(v54, 0x8000100u);
    if (!v20)
    {
      v21 = 3680569647;
      goto LABEL_108;
    }

    goto LABEL_80;
  }

  if (byte_100117E80)
  {
    v22 = __error();
    v23 = *v22;
    v25 = sub_100035B80(v22, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B8300();
    }

    *__error() = v23;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v16 = *__error();
    v27 = sub_100035B20(*(*v2 + 72));
    v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Lost race: already done sampling", v27, *(*v2 + 72));
    if (v28)
    {
      v30 = v28;
      CStringPtr = CFStringGetCStringPtr(v28, 0x8000100u);
      if (CStringPtr)
      {
LABEL_47:
        v40 = CStringPtr;
        v41 = 0;
LABEL_94:
        if (qword_100117E88)
        {
          v66 = qword_100117E88;
        }

        else
        {
          v66 = __stderrp;
        }

        fprintf(v66, "%s\n", v40);
        if (v41)
        {
          free(v41);
        }

        v67 = v30;
LABEL_115:
        CFRelease(v67);
LABEL_116:
        *__error() = v16;
        return;
      }

      v32 = 3680569647;
LABEL_93:
      v40 = malloc_type_calloc(0x400uLL, 1uLL, v32);
      CFStringGetCString(v30, v40, 1024, 0x8000100u);
      v41 = v40;
      goto LABEL_94;
    }

    v65 = sub_100035B80(0, v29);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
    {
      sub_1000B8380();
    }

    goto LABEL_87;
  }
}

id sub_100081EC4(uint64_t a1)
{
  v1 = (a1 + 32);
  if ((*(*(a1 + 32) + 72) & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_100035B80(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B8B30();
      }

      *__error() = v3;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      return [*v1 stopSamplingWithReason:2];
    }

    v7 = *__error();
    v8 = sub_100035B20(*(*v1 + 18));
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: exited", v8, *(*v1 + 18));
    if (!v9)
    {
      v11 = sub_100035B80(0, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1000B8BB0();
      }

LABEL_35:

      if (qword_100117E88)
      {
        v23 = qword_100117E88;
      }

      else
      {
        v23 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v23);
LABEL_39:
      *__error() = v7;
      return [*v1 stopSamplingWithReason:2];
    }

    goto LABEL_24;
  }

  if (byte_100117E80)
  {
    v12 = __error();
    v13 = *v12;
    v15 = sub_100035B80(v12, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B8AC8();
    }

    *__error() = v13;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v7 = *__error();
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"exited");
    if (!v9)
    {
      v11 = sub_100035B80(0, v17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1000B8AFC();
      }

      goto LABEL_35;
    }

LABEL_24:
    v18 = v9;
    CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
    if (CStringPtr)
    {
      v20 = CStringPtr;
      v21 = 0;
    }

    else
    {
      v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x7E1E3432uLL);
      CFStringGetCString(v18, v20, 1024, 0x8000100u);
      v21 = v20;
    }

    if (qword_100117E88)
    {
      v22 = qword_100117E88;
    }

    else
    {
      v22 = __stderrp;
    }

    fprintf(v22, "%s\n", v20);
    if (v21)
    {
      free(v21);
    }

    CFRelease(v18);
    goto LABEL_39;
  }

  return [*v1 stopSamplingWithReason:2];
}

id sub_100082644(id result)
{
  v3 = *(result + 4);
  if (*(v3 + 297) == 1)
  {
    v15 = v1;
    v16 = v2;
    v4 = result;
    *(v3 + 297) = 0;
    [*(result + 4) removeSelfFromPidCache];
    v5 = v4[4];
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;

    v7 = v4[4];
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = v4[4];
    v10 = *(v9 + 301);
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100082718;
    v13[3] = &unk_100109BB0;
    v13[4] = v9;
    v14 = *(v4 + 40);
    return [v11 stopAndWaitForAllSamplingToComplete:(v10 & 1) == 0 withCompletionCallbackOnQueue:v12 withBlock:v13];
  }

  return result;
}

void sub_100083A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [NSNumber numberWithInt:*(v5 + 72)];
  v7 = [v3 objectForKeyedSubscript:v6];

  if (v7 && v7 == *v4)
  {
    if ((*(*v4 + 18) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v18 = __error();
        v19 = *v18;
        v21 = sub_100035B80(v18, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B9400();
        }

        *__error() = v19;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_42;
      }

      v13 = *__error();
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Removing self from processes waiting on HID event list");
      if (!v15)
      {
        v17 = sub_100035B80(0, v23);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_1000B9434();
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v8 = __error();
        v9 = *v8;
        v11 = sub_100035B80(v8, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B9468();
        }

        *__error() = v9;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_42;
      }

      v13 = *__error();
      v14 = sub_100035B20(*(*v4 + 18));
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Removing self from processes waiting on HID event list", v14, *(*v4 + 18));
      if (!v15)
      {
        v17 = sub_100035B80(0, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_1000B94E8();
        }

LABEL_37:

        if (qword_100117E88)
        {
          v29 = qword_100117E88;
        }

        else
        {
          v29 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v29);
LABEL_41:
        *__error() = v13;
LABEL_42:
        v30 = [NSNumber numberWithInt:*(*v4 + 18)];
        [v3 setObject:0 forKeyedSubscript:v30];

        [*v4 deleteHIDExitSource];
        goto LABEL_43;
      }
    }

    v24 = v15;
    CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
    if (CStringPtr)
    {
      v26 = CStringPtr;
      v27 = 0;
    }

    else
    {
      v26 = malloc_type_calloc(0x400uLL, 1uLL, 0xC1A22004uLL);
      CFStringGetCString(v24, v26, 1024, 0x8000100u);
      v27 = v26;
    }

    if (qword_100117E88)
    {
      v28 = qword_100117E88;
    }

    else
    {
      v28 = __stderrp;
    }

    fprintf(v28, "%s\n", v26);
    if (v27)
    {
      free(v27);
    }

    CFRelease(v24);
    goto LABEL_41;
  }

LABEL_43:
}

void sub_100083D80(uint64_t a1)
{
  (*(*(*(a1 + 32) + 64) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
}

void sub_100083DD4(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setTargetThreadId:0];
  v6 = (a1 + 32);
  v5 = *(a1 + 32);
  if ((v5[18] & 0x80000000) == 0)
  {
    [v4 setTargetProcessId:?];
    v5 = *v6;
  }

  if (*(v5 + 19))
  {
    [v4 setTargetThreadId:?];
    v5 = *v6;
  }

  if (*(v5 + 15))
  {
    v7 = [v4 targetProcess];
    v8 = [v7 mainBinaryPath];
    v9 = [v8 isAbsolutePath];

    if ((v9 & 1) == 0)
    {
      v10 = [v4 targetProcess];
      v11 = v10;
      if (v10)
      {
        [v10 setMainBinaryPath:*(*v6 + 15)];
      }
    }
  }

  [v4 setTargetHIDEventMachAbs:*(*v6 + 20)];
  [v4 setTargetHIDEventEndMachAbs:*(*v6 + 21)];
  v12 = [v4 targetProcess];
  v13 = [v12 name];
  v14 = *(*v6 + 10);
  *(*v6 + 10) = v13;

  v15 = [v4 targetProcess];
  v16 = [v15 mainBinaryPath];
  v17 = [v16 isAbsolutePath];
  if (v17)
  {
    v2 = [v4 targetProcess];
    v18 = [v2 mainBinaryPath];
  }

  else
  {
    v18 = 0;
  }

  objc_storeStrong(*v6 + 15, v18);
  if (v17)
  {
  }

  v19 = [v4 targetProcess];
  v20 = [v19 isUnresponsive];

  if (v20)
  {
    v21 = [v4 targetProcess];
    [v21 timeOfLastResponse];
    *(*v6 + 18) = v22;
  }

  else
  {
    *(*v6 + 18) = 0;
  }

  v23 = *(a1 + 40);
  if (!v23)
  {
    v24 = 1;
    goto LABEL_46;
  }

  v24 = *(a1 + 48);
  v25 = [v23 stackshotProvider];
  v26 = *(*v6 + 3);

  if (v25 != v26)
  {
    if ((*(*v6 + 18) & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v73 = __error();
        v74 = *v73;
        v76 = sub_100035B80(v73, v75);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          sub_1000B9568();
        }

        *__error() = v74;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v77 = *__error();
        v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Mismatched sample providers", "endSnapshot.stackshotProvider == self->_sampleProvider");
        if (v78)
        {
          v86 = v78;
          CStringPtr = CFStringGetCStringPtr(v78, 0x8000100u);
          if (CStringPtr)
          {
            v88 = CStringPtr;
            v89 = 0;
          }

          else
          {
            v88 = malloc_type_calloc(0x400uLL, 1uLL, 0xE692CA2uLL);
            CFStringGetCString(v86, v88, 1024, 0x8000100u);
            v89 = v88;
          }

          if (qword_100117E88)
          {
            v96 = qword_100117E88;
          }

          else
          {
            v96 = __stderrp;
          }

          fprintf(v96, "%s\n", v88);
          if (v89)
          {
            free(v89);
          }

          CFRelease(v86);
        }

        else
        {
          v80 = sub_100035B80(0, v79);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
          {
            sub_1000B95E8();
          }

          if (qword_100117E88)
          {
            v81 = qword_100117E88;
          }

          else
          {
            v81 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v81);
        }

        *__error() = v77;
      }

      sub_100035A54("[SPSampledProcess _samplingHasCompletedWithEndSnapshot:withReason:]_block_invoke", "SPProcessEvent.m", 1269, "%s: Mismatched sample providers", v27, v28, v29, v30, "endSnapshot.stackshotProvider == self->_sampleProvider");
    }

    else
    {
      if (byte_100117E80)
      {
        v63 = __error();
        v64 = *v63;
        v66 = sub_100035B80(v63, v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          sub_1000B9668();
        }

        *__error() = v64;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v67 = *__error();
        v68 = sub_100035B20(*(*v6 + 18));
        v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Mismatched sample providers", v68, *(*v6 + 18), "endSnapshot.stackshotProvider == self->_sampleProvider");
        if (v69)
        {
          v82 = v69;
          v83 = CFStringGetCStringPtr(v69, 0x8000100u);
          if (v83)
          {
            v84 = v83;
            v85 = 0;
          }

          else
          {
            v84 = malloc_type_calloc(0x400uLL, 1uLL, 0xE692CA2uLL);
            CFStringGetCString(v82, v84, 1024, 0x8000100u);
            v85 = v84;
          }

          if (qword_100117E88)
          {
            v90 = qword_100117E88;
          }

          else
          {
            v90 = __stderrp;
          }

          fprintf(v90, "%s\n", v84);
          if (v85)
          {
            free(v85);
          }

          CFRelease(v82);
        }

        else
        {
          v71 = sub_100035B80(0, v70);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
          {
            sub_1000B9704();
          }

          if (qword_100117E88)
          {
            v72 = qword_100117E88;
          }

          else
          {
            v72 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v72);
        }

        *__error() = v67;
      }

      v91 = sub_100035B20(*(*v6 + 18));
      sub_100035A54("[SPSampledProcess _samplingHasCompletedWithEndSnapshot:withReason:]_block_invoke", "SPProcessEvent.m", 1269, "%s [%d]: %s: Mismatched sample providers", v92, v93, v94, v95, v91, *(*v6 + 18), "endSnapshot.stackshotProvider == self->_sampleProvider");
    }

    abort();
  }

  *(*(a1 + 32) + 284) = [*(a1 + 40) numSamplesAvoidedDueToAudio];
  *(*(a1 + 32) + 276) = [*(a1 + 40) numSamples];
  v31 = [*(a1 + 32) eventTimeRange];

  if (!v31)
  {
    v32 = *v6;
    v33 = *(*v6 + 18);
    if (v33 > 0.0)
    {
      v34 = *(v32 + 52);
      if (!v34)
      {
        goto LABEL_25;
      }

      [v34 wallTime];
      if (v33 < v35)
      {
        goto LABEL_26;
      }

      v32 = *v6;
      if (!*(*v6 + 52))
      {
LABEL_25:
        v36 = *(v32 + 18);
        v37 = [*(a1 + 40) timestamp];
        [v37 wallTime];
        v39 = v38;

        if (v36 < v39)
        {
LABEL_26:
          v40 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:*(*v6 + 18)];
          v41 = v40;
          if (*(*v6 + 52))
          {
            [v40 guessMissingTimesBasedOnTimestamp:?];
            if (!v41)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v62 = [*(a1 + 40) timestamp];
            [v41 guessMissingTimesBasedOnTimestamp:v62];

            if (!v41)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_33;
        }

        v32 = *v6;
      }
    }

    v42 = *(v32 + 52);
    if (v42)
    {
      v41 = v42;
LABEL_33:
      v43 = [*(a1 + 40) timestamp];
      v44 = [SATimeRange timeRangeStart:v41 end:v43];
      [*(a1 + 32) setEventTimeRange:v44];

      [*(a1 + 32) setReportTimeStart:v41];
      v45 = [*(a1 + 40) timestamp];
      [*(a1 + 32) setReportTimeEnd:v45];
    }
  }

LABEL_34:
  if (*(*v6 + 18) >= 1)
  {
    v46 = [*v6 eventTimeRange];

    if (v46)
    {
      v100 = 0;
      v101 = &v100;
      v102 = 0x2020000000;
      v103 = 0;
      v47 = [*v6 reportTimeStart];
      v48 = v47;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v50 = [*v6 eventTimeRange];
        v49 = [v50 startTime];
      }

      v51 = [v4 indexOfFirstSampleOnOrAfterTimestamp:v49];
      v52 = [*v6 reportTimeEnd];
      v53 = v52;
      if (v52)
      {
        v54 = v52;
      }

      else
      {
        v55 = [*v6 eventTimeRange];
        v54 = [v55 endTime];
      }

      v56 = [v4 indexOfLastSampleOnOrBeforeTimestamp:v54];
      if (v51 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v57 = v56;
        if (v56 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v58 = [v4 targetProcess];
          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_100084790;
          v99[3] = &unk_100109BD8;
          v99[4] = &v100;
          v99[5] = v51;
          v99[6] = v57;
          [v58 enumerateTaskStatesBetweenStartTime:v49 startSampleIndex:v51 endTime:v54 endSampleIndex:v57 reverseOrder:0 block:v99];
        }
      }

      *(*v6 + 72) = v101[3];

      _Block_object_dispose(&v100, 8);
    }
  }

LABEL_46:
  v59 = *v6;
  v60 = *(*v6 + 7);
  if (v60 && v59[8])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100084808;
    block[3] = &unk_100109B38;
    block[4] = v59;
    v98 = v24;
    dispatch_async(v60, block);
    v61 = *(*v6 + 7);
    *(*v6 + 7) = 0;
  }
}

void sub_10008476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100084790(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 suspendCount] || objc_msgSend(v3, "isPidSuspended"))
  {
    *(*(a1[4] + 8) + 24) += [v3 sampleCountInSampleIndexRangeStart:a1[5] end:a1[6]];
  }
}

void sub_100084808(uint64_t a1)
{
  (*(*(*(a1 + 32) + 64) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
}

void sub_1000851E8(uint64_t a1, void *a2, double a3)
{
  LODWORD(a3) = *(*(a1 + 32) + 400);
  v4 = *&a3 / 1000000.0;
  v5 = a2;
  [v5 setAttemptedSamplingInterval:v4];
  [*(a1 + 32) reportTimeThreshold];
  [v5 setReportTimeThreshold:?];
  [*(a1 + 32) _saveReportToStream:*(a1 + 40) withSampleStore:v5];
}

void sub_100085C20(uint64_t a1, void *a2, double a3)
{
  LODWORD(a3) = *(*(a1 + 32) + 400);
  v4 = *&a3 / 1000000.0;
  v5 = a2;
  [v5 setAttemptedSamplingInterval:v4];
  [*(a1 + 32) reportTimeThreshold];
  [v5 setReportTimeThreshold:?];
  v6 = [*(a1 + 32) _samplePrinterForSampleStore:v5];

  (*(*(a1 + 40) + 16))();
}

id sub_100085D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, void *a7, void *a8, double a9)
{
  v257 = a5;
  v17 = a7;
  v18 = a8;
  v19 = v18;
  if (!a4 || !v17 || !v18)
  {
    v20 = 0;
    *__error() = 22;
    goto LABEL_475;
  }

  v255 = v18;
  if ((a1 & 0x80000000) != 0)
  {
    v256 = 0;
  }

  else if (proc_pidpath(a1, &buffer, 0x400u) < 1)
  {
    if (byte_100117E80 == 1)
    {
      v21 = __error();
      v22 = *v21;
      v24 = sub_100035B80(v21, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000B9950();
      }

      *__error() = v22;
    }

    v256 = 0;
    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v25 = *__error();
      v26 = sub_100035B20(a1);
      v27 = *__error();
      v28 = __error();
      v29 = strerror(*v28);
      v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get path: %d (%s)", v26, a1, v27, v29);
      v32 = v30;
      if (v30)
      {
        CStringPtr = CFStringGetCStringPtr(v30, 0x8000100u);
        if (CStringPtr)
        {
          v34 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xED55E785uLL);
          CFStringGetCString(v32, CStringPtr, 1024, 0x8000100u);
          v34 = CStringPtr;
        }

        if (qword_100117E88)
        {
          v37 = qword_100117E88;
        }

        else
        {
          v37 = __stderrp;
        }

        fprintf(v37, "%s\n", CStringPtr);
        if (v34)
        {
          free(v34);
        }

        CFRelease(v32);
      }

      else
      {
        v35 = sub_100035B80(0, v31);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          sub_1000B99F8();
        }

        if (qword_100117E88)
        {
          v36 = qword_100117E88;
        }

        else
        {
          v36 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v36);
      }

      v256 = 0;
      *__error() = v25;
    }
  }

  else
  {
    v256 = [NSString stringWithUTF8String:&buffer];
  }

  if ((a6 & 1) != 0 && !sub_10002B3B0(a1))
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v83 = __error();
        v84 = *v83;
        v86 = sub_100035B80(v83, v85);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          sub_1000B9AA0();
        }

        *__error() = v84;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_218;
      }

      v55 = *__error();
      v87 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"process doesn't exist, not sampling");
      v59 = v87;
      if (v87)
      {
        v89 = CFStringGetCStringPtr(v87, 0x8000100u);
        if (v89)
        {
          v90 = 0;
        }

        else
        {
          v89 = malloc_type_calloc(0x400uLL, 1uLL, 0xA6D1A9A1uLL);
          CFStringGetCString(v59, v89, 1024, 0x8000100u);
          v90 = v89;
        }

        if (qword_100117E88)
        {
          v172 = qword_100117E88;
        }

        else
        {
          v172 = __stderrp;
        }

        fprintf(v172, "%s\n", v89);
        if (v90)
        {
          free(v90);
        }

        goto LABEL_216;
      }

      v136 = sub_100035B80(0, v88);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
      {
        sub_1000B9ADC();
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v51 = __error();
        v52 = *v51;
        v54 = sub_100035B80(v51, v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_1000B9B10();
        }

        *__error() = v52;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_218;
      }

      v55 = *__error();
      v56 = sub_100035B20(a1);
      v57 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: process doesn't exist, not sampling", v56, a1);
      v59 = v57;
      if (v57)
      {
        v60 = CFStringGetCStringPtr(v57, 0x8000100u);
        if (v60)
        {
          v61 = 0;
        }

        else
        {
          v60 = malloc_type_calloc(0x400uLL, 1uLL, 0xA6D1A9A1uLL);
          CFStringGetCString(v59, v60, 1024, 0x8000100u);
          v61 = v60;
        }

        if (qword_100117E88)
        {
          v160 = qword_100117E88;
        }

        else
        {
          v160 = __stderrp;
        }

        fprintf(v160, "%s\n", v60);
        if (v61)
        {
          free(v61);
        }

LABEL_216:
        CFRelease(v59);
LABEL_217:
        *__error() = v55;
LABEL_218:
        v173 = __error();
        v20 = 0;
        v174 = 2;
LABEL_379:
        *v173 = v174;
        goto LABEL_473;
      }

      v136 = sub_100035B80(0, v58);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
      {
        sub_1000B9B94();
      }
    }

    if (qword_100117E88)
    {
      v161 = qword_100117E88;
    }

    else
    {
      v161 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v161);
    goto LABEL_217;
  }

  v38 = (a6 >> 2) & 1;
  v261 = 0;
  v20 = [SPSampledProcess copySampledProcessForPid:a1 isWSBased:v38 createIfUnsampled:1 cancelExistingProcesses:(a6 >> 9) & 1 wasSampled:&v261];
  if (v20)
  {
    goto LABEL_35;
  }

  if ((a6 & 2) == 0 || (v261 & 1) == 0)
  {
LABEL_335:
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v204 = __error();
        v205 = *v204;
        v207 = sub_100035B80(v204, v206);
        if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
        {
          sub_1000BA67C();
        }

        *__error() = v205;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_378;
      }

      v197 = *__error();
      v208 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to create SPSampledProcess");
      v201 = v208;
      if (v208)
      {
        v210 = CFStringGetCStringPtr(v208, 0x8000100u);
        if (v210)
        {
          v211 = 0;
        }

        else
        {
          v210 = malloc_type_calloc(0x400uLL, 1uLL, 0x525AA6ACuLL);
          CFStringGetCString(v201, v210, 1024, 0x8000100u);
          v211 = v210;
        }

        if (qword_100117E88)
        {
          v215 = qword_100117E88;
        }

        else
        {
          v215 = __stderrp;
        }

        fprintf(v215, "%s\n", v210);
        if (v211)
        {
          free(v211);
        }

        goto LABEL_376;
      }

      v212 = sub_100035B80(0, v209);
      if (os_log_type_enabled(v212, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA6B8();
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v193 = __error();
        v194 = *v193;
        v196 = sub_100035B80(v193, v195);
        if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
        {
          sub_1000BA6EC();
        }

        *__error() = v194;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_378;
      }

      v197 = *__error();
      v198 = sub_100035B20(a1);
      v199 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to create SPSampledProcess", v198, a1);
      v201 = v199;
      if (v199)
      {
        v202 = CFStringGetCStringPtr(v199, 0x8000100u);
        if (v202)
        {
          v203 = 0;
        }

        else
        {
          v202 = malloc_type_calloc(0x400uLL, 1uLL, 0x525AA6ACuLL);
          CFStringGetCString(v201, v202, 1024, 0x8000100u);
          v203 = v202;
        }

        if (qword_100117E88)
        {
          v213 = qword_100117E88;
        }

        else
        {
          v213 = __stderrp;
        }

        fprintf(v213, "%s\n", v202);
        if (v203)
        {
          free(v203);
        }

LABEL_376:
        CFRelease(v201);
LABEL_377:
        *__error() = v197;
LABEL_378:
        v173 = __error();
        v20 = 0;
        v174 = 37;
        goto LABEL_379;
      }

      v212 = sub_100035B80(0, v200);
      if (os_log_type_enabled(v212, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA770();
      }
    }

    if (qword_100117E88)
    {
      v214 = qword_100117E88;
    }

    else
    {
      v214 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v214);
    goto LABEL_377;
  }

  v50 = [SPSampledProcess copySampledProcessForPid:a1 isWSBased:(a6 & 4) == 0 createIfUnsampled:0 cancelExistingProcesses:0 wasSampled:0];
  v254 = v50;
  if (v50)
  {
    [v50 stopSamplingWithReason:9];
    goto LABEL_334;
  }

  if ((a1 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v137 = __error();
      theStringc = *v137;
      v139 = sub_100035B80(v137, v138);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B9C18((a6 & 4) != 0, v139);
      }

      *__error() = theStringc;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v246 = *__error();
      v140 = "";
      if (v38)
      {
        v140 = "non-";
      }

      v141 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to find existing %sWindowServer-based sampled process", v140);
      theStringb = v141;
      if (v141)
      {
        v143 = CFStringGetCStringPtr(v141, 0x8000100u);
        if (v143)
        {
          v245 = 0;
        }

        else
        {
          v143 = malloc_type_calloc(0x400uLL, 1uLL, 0x74E39FBBuLL);
          CFStringGetCString(theStringb, v143, 1024, 0x8000100u);
          v245 = v143;
        }

        if (qword_100117E88)
        {
          v192 = qword_100117E88;
        }

        else
        {
          v192 = __stderrp;
        }

        fprintf(v192, "%s\n", v143);
        if (v245)
        {
          free(v245);
        }

        goto LABEL_332;
      }

      theStringe = sub_100035B80(0, v142);
      v188 = theStringe;
      if (os_log_type_enabled(theStringe, OS_LOG_TYPE_FAULT))
      {
        sub_1000B9CA8();
        v188 = theStringe;
      }

      if (qword_100117E88)
      {
        v180 = qword_100117E88;
      }

      else
      {
        v180 = __stderrp;
      }

LABEL_303:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v180);
LABEL_333:
      *__error() = v246;
    }
  }

  else
  {
    if (byte_100117E80)
    {
      v91 = __error();
      theStringa = *v91;
      v93 = sub_100035B80(v91, v92);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B9D18(a1);
      }

      *__error() = theStringa;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v246 = *__error();
      v94 = sub_100035B20(a1);
      if (v38)
      {
        v95 = "non-";
      }

      else
      {
        v95 = "";
      }

      v96 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to find existing %sWindowServer-based sampled process", v94, a1, v95);
      theStringb = v96;
      if (v96)
      {
        v98 = CFStringGetCStringPtr(v96, 0x8000100u);
        if (v98)
        {
          v244 = 0;
        }

        else
        {
          v98 = malloc_type_calloc(0x400uLL, 1uLL, 0x74E39FBBuLL);
          CFStringGetCString(theStringb, v98, 1024, 0x8000100u);
          v244 = v98;
        }

        if (qword_100117E88)
        {
          v185 = qword_100117E88;
        }

        else
        {
          v185 = __stderrp;
        }

        fprintf(v185, "%s\n", v98);
        if (v244)
        {
          free(v244);
        }

LABEL_332:
        CFRelease(theStringb);
        goto LABEL_333;
      }

      theStringd = sub_100035B80(0, v97);
      v179 = theStringd;
      if (os_log_type_enabled(theStringd, OS_LOG_TYPE_FAULT))
      {
        sub_1000B9DDC(a1);
        v179 = theStringd;
      }

      if (qword_100117E88)
      {
        v180 = qword_100117E88;
      }

      else
      {
        v180 = __stderrp;
      }

      goto LABEL_303;
    }
  }

LABEL_334:
  v20 = [SPSampledProcess copySampledProcessForPid:a1 isWSBased:(a6 >> 2) & 1 createIfUnsampled:1 cancelExistingProcesses:(a6 >> 9) & 1 wasSampled:&v261];

  if (!v20)
  {
    goto LABEL_335;
  }

LABEL_35:
  v253 = (a6 >> 1) & 1;
  if (v261 != 1)
  {
    [v20 setSamplingIntervalUs:a2];
    [v20 setOccasionalDataIntervalSec:a3];
    [v20 setSamplingMode:a4 withAdditionalSampledProcesses:v257];
    [v20 setOmitSensitiveStrings:(a6 >> 4) & 1];
    [v20 setCancelOnMemoryPressure:(a6 >> 5) & 1];
    if ([v20 startSampling])
    {
      if ((a6 & 0x40) != 0)
      {
        [v20 requireHIDEvent:1];
      }

      goto LABEL_54;
    }

    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v116 = __error();
        v117 = *v116;
        v119 = sub_100035B80(v116, v118);
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          sub_1000B9E84();
        }

        *__error() = v117;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_273;
      }

      v76 = *__error();
      v120 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to start sampling");
      v80 = v120;
      if (v120)
      {
        v122 = CFStringGetCStringPtr(v120, 0x8000100u);
        if (v122)
        {
          v123 = 0;
        }

        else
        {
          v122 = malloc_type_calloc(0x400uLL, 1uLL, 0xDE501104uLL);
          CFStringGetCString(v80, v122, 1024, 0x8000100u);
          v123 = v122;
        }

        if (qword_100117E88)
        {
          v183 = qword_100117E88;
        }

        else
        {
          v183 = __stderrp;
        }

        fprintf(v183, "%s\n", v122);
        if (v123)
        {
          free(v123);
        }

        goto LABEL_271;
      }

      v163 = sub_100035B80(0, v121);
      if (os_log_type_enabled(v163, OS_LOG_TYPE_FAULT))
      {
        sub_1000B9EC0();
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v72 = __error();
        v73 = *v72;
        v75 = sub_100035B80(v72, v74);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          sub_1000B9EF4();
        }

        *__error() = v73;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_273;
      }

      v76 = *__error();
      v77 = sub_100035B20(a1);
      v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Failed to start sampling", v77, a1);
      v80 = v78;
      if (v78)
      {
        v81 = CFStringGetCStringPtr(v78, 0x8000100u);
        if (v81)
        {
          v82 = 0;
        }

        else
        {
          v81 = malloc_type_calloc(0x400uLL, 1uLL, 0xDE501104uLL);
          CFStringGetCString(v80, v81, 1024, 0x8000100u);
          v82 = v81;
        }

        if (qword_100117E88)
        {
          v176 = qword_100117E88;
        }

        else
        {
          v176 = __stderrp;
        }

        fprintf(v176, "%s\n", v81);
        if (v82)
        {
          free(v82);
        }

LABEL_271:
        CFRelease(v80);
LABEL_272:
        *__error() = v76;
LABEL_273:
        [v20 removeSelfFromPidCache];
        *__error() = 37;

LABEL_472:
        v20 = 0;
        goto LABEL_473;
      }

      v163 = sub_100035B80(0, v79);
      if (os_log_type_enabled(v163, OS_LOG_TYPE_FAULT))
      {
        sub_1000B9F78();
      }
    }

    if (qword_100117E88)
    {
      v178 = qword_100117E88;
    }

    else
    {
      v178 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v178);
    goto LABEL_272;
  }

  if ((a6 & 0x102) == 0x100)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v99 = __error();
        v100 = *v99;
        v102 = sub_100035B80(v99, v101);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
        {
          sub_1000BA50C();
        }

        *__error() = v100;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_471;
      }

      v43 = *__error();
      v103 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not overriding existing sampling callback");
      v47 = v103;
      if (v103)
      {
        v105 = CFStringGetCStringPtr(v103, 0x8000100u);
        if (v105)
        {
          v106 = 0;
        }

        else
        {
          v105 = malloc_type_calloc(0x400uLL, 1uLL, 0xDE1A83DDuLL);
          CFStringGetCString(v47, v105, 1024, 0x8000100u);
          v106 = v105;
        }

        if (qword_100117E88)
        {
          v181 = qword_100117E88;
        }

        else
        {
          v181 = __stderrp;
        }

        fprintf(v181, "%s\n", v105);
        if (v106)
        {
          free(v106);
        }

        goto LABEL_256;
      }

      v162 = sub_100035B80(0, v104);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA540();
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v39 = __error();
        v40 = *v39;
        v42 = sub_100035B80(v39, v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          sub_1000BA574();
        }

        *__error() = v40;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 0)
      {
        goto LABEL_471;
      }

      v43 = *__error();
      v44 = sub_100035B20(a1);
      v45 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Not overriding existing sampling callback", v44, a1);
      v47 = v45;
      if (v45)
      {
        v48 = CFStringGetCStringPtr(v45, 0x8000100u);
        if (v48)
        {
          v49 = 0;
        }

        else
        {
          v48 = malloc_type_calloc(0x400uLL, 1uLL, 0xDE1A83DDuLL);
          CFStringGetCString(v47, v48, 1024, 0x8000100u);
          v49 = v48;
        }

        if (qword_100117E88)
        {
          v175 = qword_100117E88;
        }

        else
        {
          v175 = __stderrp;
        }

        fprintf(v175, "%s\n", v48);
        if (v49)
        {
          free(v49);
        }

LABEL_256:
        CFRelease(v47);
LABEL_257:
        *__error() = v43;
        goto LABEL_471;
      }

      v162 = sub_100035B80(0, v46);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA5F8();
      }
    }

    if (qword_100117E88)
    {
      v177 = qword_100117E88;
    }

    else
    {
      v177 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v177);
    goto LABEL_257;
  }

  if ((a6 & 0x10) != 0 && ([v20 omitSensitiveStrings] & 1) == 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v164 = __error();
        v165 = *v164;
        v167 = sub_100035B80(v164, v166);
        if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buffer) = 0;
          _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "Already sampling with sensitive strings", &buffer, 2u);
        }

        *__error() = v165;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 2)
      {
        goto LABEL_471;
      }

      v129 = *__error();
      v168 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling with sensitive strings");
      v133 = v168;
      if (v168)
      {
        v170 = CFStringGetCStringPtr(v168, 0x8000100u);
        if (v170)
        {
          v171 = 0;
        }

        else
        {
          v170 = malloc_type_calloc(0x400uLL, 1uLL, 0xD8407571uLL);
          CFStringGetCString(v133, v170, 1024, 0x8000100u);
          v171 = v170;
        }

        if (qword_100117E88)
        {
          v242 = qword_100117E88;
        }

        else
        {
          v242 = __stderrp;
        }

        fprintf(v242, "%s\n", v170);
        if (v171)
        {
          free(v171);
        }

        goto LABEL_469;
      }

      v184 = sub_100035B80(0, v169);
      if (os_log_type_enabled(v184, OS_LOG_TYPE_FAULT))
      {
        sub_1000B9FFC();
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v124 = __error();
        v125 = *v124;
        v127 = sub_100035B80(v124, v126);
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          v128 = sub_100035B20(a1);
          buffer = 136446466;
          v263 = v128;
          v264 = 1024;
          v265 = a1;
          _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Already sampling with sensitive strings", &buffer, 0x12u);
        }

        *__error() = v125;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 2)
      {
        goto LABEL_471;
      }

      v129 = *__error();
      v130 = sub_100035B20(a1);
      v131 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already sampling with sensitive strings", v130, a1);
      v133 = v131;
      if (v131)
      {
        v134 = CFStringGetCStringPtr(v131, 0x8000100u);
        if (v134)
        {
          v135 = 0;
        }

        else
        {
          v134 = malloc_type_calloc(0x400uLL, 1uLL, 0xD8407571uLL);
          CFStringGetCString(v133, v134, 1024, 0x8000100u);
          v135 = v134;
        }

        if (qword_100117E88)
        {
          v190 = qword_100117E88;
        }

        else
        {
          v190 = __stderrp;
        }

        fprintf(v190, "%s\n", v134);
        if (v135)
        {
          free(v135);
        }

LABEL_469:
        CFRelease(v133);
LABEL_470:
        *__error() = v129;
LABEL_471:
        *__error() = 37;

        goto LABEL_472;
      }

      v184 = sub_100035B80(0, v132);
      if (os_log_type_enabled(v184, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA030();
      }
    }

    if (qword_100117E88)
    {
      v191 = qword_100117E88;
    }

    else
    {
      v191 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v191);
    goto LABEL_470;
  }

  if ((a6 & 2) != 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v144 = __error();
        v145 = *v144;
        v147 = sub_100035B80(v144, v146);
        if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
        {
          sub_1000BA224();
        }

        *__error() = v145;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        theString = *__error();
        v148 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling, overriding existing callback");
        v69 = v148;
        if (v148)
        {
          v150 = CFStringGetCStringPtr(v148, 0x8000100u);
          if (v150)
          {
            v151 = 0;
          }

          else
          {
            v150 = malloc_type_calloc(0x400uLL, 1uLL, 0x1D4CFECCuLL);
            CFStringGetCString(v69, v150, 1024, 0x8000100u);
            v151 = v150;
          }

          if (qword_100117E88)
          {
            v216 = qword_100117E88;
          }

          else
          {
            v216 = __stderrp;
          }

          fprintf(v216, "%s\n", v150);
          if (v151)
          {
            free(v151);
          }

          goto LABEL_393;
        }

        v182 = sub_100035B80(0, v149);
        if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
        {
          sub_1000BA258();
        }

LABEL_309:

        if (qword_100117E88)
        {
          v189 = qword_100117E88;
        }

        else
        {
          v189 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v189);
        goto LABEL_394;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v62 = __error();
        v63 = *v62;
        v65 = sub_100035B80(v62, v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          sub_1000BA28C();
        }

        *__error() = v63;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 0)
      {
        theString = *__error();
        v66 = sub_100035B20(a1);
        v67 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already sampling, overriding existing callback", v66, a1);
        v69 = v67;
        if (v67)
        {
          v70 = CFStringGetCStringPtr(v67, 0x8000100u);
          if (v70)
          {
            v71 = 0;
          }

          else
          {
            v70 = malloc_type_calloc(0x400uLL, 1uLL, 0x1D4CFECCuLL);
            CFStringGetCString(v69, v70, 1024, 0x8000100u);
            v71 = v70;
          }

          if (qword_100117E88)
          {
            v186 = qword_100117E88;
          }

          else
          {
            v186 = __stderrp;
          }

          fprintf(v186, "%s\n", v70);
          if (v71)
          {
            free(v71);
          }

LABEL_393:
          CFRelease(v69);
LABEL_394:
          *__error() = theString;
          goto LABEL_395;
        }

        v182 = sub_100035B80(0, v68);
        if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
        {
          sub_1000BA310();
        }

        goto LABEL_309;
      }
    }
  }

  else if ((a1 & 0x80000000) != 0)
  {
    if (byte_100117E80)
    {
      v152 = __error();
      v153 = *v152;
      v155 = sub_100035B80(v152, v154);
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BA0B4();
      }

      *__error() = v153;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      theString = *__error();
      v156 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling, not overriding existing callback");
      v69 = v156;
      if (v156)
      {
        v158 = CFStringGetCStringPtr(v156, 0x8000100u);
        if (v158)
        {
          v159 = 0;
        }

        else
        {
          v158 = malloc_type_calloc(0x400uLL, 1uLL, 0x9F25C25AuLL);
          CFStringGetCString(v69, v158, 1024, 0x8000100u);
          v159 = v158;
        }

        if (qword_100117E88)
        {
          v217 = qword_100117E88;
        }

        else
        {
          v217 = __stderrp;
        }

        fprintf(v217, "%s\n", v158);
        if (v159)
        {
          free(v159);
        }

        goto LABEL_393;
      }

      v182 = sub_100035B80(0, v157);
      if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA0E8();
      }

      goto LABEL_309;
    }
  }

  else
  {
    if (byte_100117E80)
    {
      v107 = __error();
      v108 = *v107;
      v110 = sub_100035B80(v107, v109);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BA11C();
      }

      *__error() = v108;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      theString = *__error();
      v111 = sub_100035B20(a1);
      v112 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already sampling, not overriding existing callback", v111, a1);
      v69 = v112;
      if (v112)
      {
        v114 = CFStringGetCStringPtr(v112, 0x8000100u);
        if (v114)
        {
          v115 = 0;
        }

        else
        {
          v114 = malloc_type_calloc(0x400uLL, 1uLL, 0x9F25C25AuLL);
          CFStringGetCString(v69, v114, 1024, 0x8000100u);
          v115 = v114;
        }

        if (qword_100117E88)
        {
          v187 = qword_100117E88;
        }

        else
        {
          v187 = __stderrp;
        }

        fprintf(v187, "%s\n", v114);
        if (v115)
        {
          free(v115);
        }

        goto LABEL_393;
      }

      v182 = sub_100035B80(0, v113);
      if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA1A0();
      }

      goto LABEL_309;
    }
  }

LABEL_395:
  if ([v20 samplingIntervalUs] != a2 || a3 && objc_msgSend(v20, "occasionalDataIntervalSec") && objc_msgSend(v20, "occasionalDataIntervalSec") != a3)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100117E80)
      {
        v229 = __error();
        v230 = *v229;
        v232 = sub_100035B80(v229, v231);
        if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
        {
          sub_1000BA394();
        }

        *__error() = v230;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_471;
      }

      v222 = *__error();
      v233 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling with incompatible parameters");
      v226 = v233;
      if (v233)
      {
        v235 = CFStringGetCStringPtr(v233, 0x8000100u);
        if (v235)
        {
          v236 = 0;
        }

        else
        {
          v235 = malloc_type_calloc(0x400uLL, 1uLL, 0x23ECBC0uLL);
          CFStringGetCString(v226, v235, 1024, 0x8000100u);
          v236 = v235;
        }

        if (qword_100117E88)
        {
          v241 = qword_100117E88;
        }

        else
        {
          v241 = __stderrp;
        }

        fprintf(v241, "%s\n", v235);
        if (v236)
        {
          free(v236);
        }

        goto LABEL_460;
      }

      v238 = sub_100035B80(0, v234);
      if (os_log_type_enabled(v238, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA3D0();
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v218 = __error();
        v219 = *v218;
        v221 = sub_100035B80(v218, v220);
        if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
        {
          sub_1000BA404();
        }

        *__error() = v219;
      }

      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_471;
      }

      v222 = *__error();
      v223 = sub_100035B20(a1);
      v224 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already sampling with incompatible parameters", v223, a1);
      v226 = v224;
      if (v224)
      {
        v227 = CFStringGetCStringPtr(v224, 0x8000100u);
        if (v227)
        {
          v228 = 0;
        }

        else
        {
          v227 = malloc_type_calloc(0x400uLL, 1uLL, 0x23ECBC0uLL);
          CFStringGetCString(v226, v227, 1024, 0x8000100u);
          v228 = v227;
        }

        if (qword_100117E88)
        {
          v239 = qword_100117E88;
        }

        else
        {
          v239 = __stderrp;
        }

        fprintf(v239, "%s\n", v227);
        if (v228)
        {
          free(v228);
        }

LABEL_460:
        CFRelease(v226);
LABEL_461:
        *__error() = v222;
        goto LABEL_471;
      }

      v238 = sub_100035B80(0, v225);
      if (os_log_type_enabled(v238, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA488();
      }
    }

    if (qword_100117E88)
    {
      v240 = qword_100117E88;
    }

    else
    {
      v240 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v240);
    goto LABEL_461;
  }

  if ([v20 samplingMode] >= a4)
  {
    if ((a6 & 2) != 0)
    {
      [v20 setSamplingMode:a4 withAdditionalSampledProcesses:v257];
      [v20 setCancelOnMemoryPressure:(a6 >> 5) & 1];
LABEL_424:
      [v20 requireHIDEvent:(a6 >> 6) & 1];
LABEL_425:
      if ((a6 & 8) != 0)
      {
        [v20 setIsUrgent:1];
      }

      objc_initWeak(&buffer, v20);
      v258[0] = _NSConcreteStackBlock;
      v258[1] = 3221225472;
      v258[2] = sub_100088028;
      v258[3] = &unk_100109C78;
      v259 = v255;
      objc_copyWeak(&v260, &buffer);
      [v20 setSamplingCompletionHandlerQueue:v17 andBlock:v258];
      objc_destroyWeak(&v260);

      objc_destroyWeak(&buffer);
      goto LABEL_428;
    }

    if ((a6 & 0x20) == 0)
    {
      [v20 setCancelOnMemoryPressure:0];
    }
  }

  else
  {
    [v20 setSamplingMode:a4 withAdditionalSampledProcesses:v257];
    if ((a6 >> 1) & 1 | ((a6 & 0x20) == 0))
    {
      [v20 setCancelOnMemoryPressure:?];
      if (v253)
      {
        goto LABEL_424;
      }
    }
  }

LABEL_54:
  if ((a6 & 2) != 0 || (v261 & 1) == 0)
  {
    goto LABEL_425;
  }

  LOBYTE(v253) = 0;
LABEL_428:
  if (a9 > 0.0)
  {
    [v20 setSamplingTimeoutAtTime:a9];
  }

  if (v253 & 1 | ((v261 & 1) == 0))
  {
    [v20 setStopWhenProcessExits:a6 & 1];
  }

  if ((a6 & 0x80) != 0)
  {
    [v20 gatherLoadInfoForPid:a1];
  }

  v237 = v256;
  if (!v256)
  {
    goto LABEL_474;
  }

  [v20 setTargetProcessAbsolutePath:?];
LABEL_473:
  v237 = v256;
LABEL_474:

  v19 = v255;
LABEL_475:

  return v20;
}

void sub_100088004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100088028(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v3 + 16))(v3, WeakRetained, a2);
}

const char *sub_100088394(int a1)
{
  if ((a1 - 1) > 9)
  {
    return "unknown";
  }

  else
  {
    return (&off_100109CE0)[(a1 - 1)];
  }
}

void sub_1000883C0(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100117E20;
  qword_100117E20 = v1;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.spindump.processes_waiting_for_hid_event", v5);
  v4 = qword_100117E18;
  qword_100117E18 = v3;
}

_DWORD *sub_100088470(uint64_t a1)
{
  v2 = *(*a1 + 72);

  return sub_100035B20(v2);
}

void sub_1000884EC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0xEu);
}

id sub_10008850C()
{
  v2 = *v0;

  return [v2 targetProcessId];
}

id sub_100088524(void **a1)
{
  v2 = *a1;

  return [v2 targetProcessId];
}

_DWORD *sub_10008853C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = *a1;

  return sub_100035B20(v4);
}

id sub_10008866C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    stackshot_config_set_pid();
    v32 = stackshot_capture_with_config();
    if (!v32)
    {
      v33 = [NSData alloc];
      stackshot_buffer = stackshot_config_get_stackshot_buffer();
      v6 = [v33 initWithBytesNoCopy:stackshot_buffer length:stackshot_config_get_stackshot_size() freeWhenDone:0];
      goto LABEL_53;
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100088B58;
    v43[3] = &unk_100109290;
    v44 = v32;
    if (qword_100117E30 == -1)
    {
      v6 = 0;
      goto LABEL_53;
    }

    dispatch_once(&qword_100117E30, v43);
LABEL_52:
    v6 = 0;
    goto LABEL_53;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (!v4)
  {
    goto LABEL_52;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v40;
  do
  {
    v8 = 0;
    do
    {
      if (*v40 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v39 + 1) + 8 * v8);
      [v9 intValue];
      stackshot_config_set_pid();
      v10 = stackshot_capture_with_config();
      if (v10)
      {
        if (v10 == 2)
        {
          if (byte_100117E80 == 1)
          {
            v11 = __error();
            v12 = *v11;
            v14 = sub_100035B80(v11, v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              sub_1000BA7F4(v46, v9);
            }

            *__error() = v12;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 0)
          {
            v16 = *__error();
            v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"pid %d doesn't exist", [v9 intValue]);
            if (v17)
            {
              v19 = v17;
              v36 = v16;
              v20 = v3;
              v21 = v6;
              CStringPtr = CFStringGetCStringPtr(v17, 0x8000100u);
              if (CStringPtr)
              {
                v23 = CStringPtr;
                v24 = 0;
              }

              else
              {
                v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x4C16FD23uLL);
                CFStringGetCString(v19, v23, 1024, 0x8000100u);
                v24 = v23;
              }

              if (qword_100117E88)
              {
                v30 = qword_100117E88;
              }

              else
              {
                v30 = __stderrp;
              }

              fprintf(v30, "%s\n", v23);
              if (v24)
              {
                free(v24);
              }

              CFRelease(v19);
              v6 = v21;
              v3 = v20;
              v16 = v36;
            }

            else
            {
              v28 = sub_100035B80(0, v18);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
              {
                sub_1000BA850(v45, v9);
              }

              if (qword_100117E88)
              {
                v29 = qword_100117E88;
              }

              else
              {
                v29 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v29);
            }

            *__error() = v16;
          }

          [v3 removeObject:v9];
        }

        else
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100088D30;
          block[3] = &unk_100109290;
          v38 = v10;
          if (qword_100117E38 != -1)
          {
            dispatch_once(&qword_100117E38, block);
          }
        }
      }

      else
      {
        if (v6)
        {
          v25 = stackshot_config_get_stackshot_buffer();
          [v6 appendBytes:v25 length:stackshot_config_get_stackshot_size()];
        }

        else
        {
          v26 = [NSMutableData alloc];
          v27 = stackshot_config_get_stackshot_buffer();
          v6 = [v26 initWithBytes:v27 length:stackshot_config_get_stackshot_size()];
        }

        stackshot_config_dealloc_buffer();
      }

      v8 = v8 + 1;
    }

    while (v5 != v8);
    v31 = [v3 countByEnumeratingWithState:&v39 objects:v47 count:16];
    v5 = v31;
  }

  while (v31);
LABEL_53:

  return v6;
}

int *sub_100088B58(int *result)
{
  v1 = result;
  if (byte_100117E80 == 1)
  {
    v2 = __error();
    v3 = *v2;
    v5 = sub_100035B80(v2, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000BA8AC();
    }

    result = __error();
    *result = v3;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stackshot failed: %d", v1[8]);
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
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x759AEC2uLL);
        CFStringGetCString(v10, v12, 1024, 0x8000100u);
        v13 = v12;
      }

      if (qword_100117E88)
      {
        v16 = qword_100117E88;
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
      v14 = sub_100035B80(0, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA920();
      }

      if (qword_100117E88)
      {
        v15 = qword_100117E88;
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

  return result;
}

int *sub_100088D30(int *result)
{
  v1 = result;
  if (byte_100117E80 == 1)
  {
    v2 = __error();
    v3 = *v2;
    v5 = sub_100035B80(v2, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000BA8AC();
    }

    result = __error();
    *result = v3;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stackshot failed: %d", v1[8]);
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
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x59C8CB92uLL);
        CFStringGetCString(v10, v12, 1024, 0x8000100u);
        v13 = v12;
      }

      if (qword_100117E88)
      {
        v16 = qword_100117E88;
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
      v14 = sub_100035B80(0, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1000BA920();
      }

      if (qword_100117E88)
      {
        v15 = qword_100117E88;
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

  return result;
}

uint64_t sub_100089AD0(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  policy_info = 0;
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  if (thread_policy_set(v3, 1u, &policy_info, 1u))
  {
    sub_1000BADC0();
  }

  v140 = 63;
  v4 = pthread_self();
  v5 = pthread_mach_thread_np(v4);
  if (thread_policy_set(v5, 3u, &v140, 1u))
  {
    sub_1000BAF50();
  }

  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v139 = 0;
  if (byte_100117EC8 & 1) != 0 || (byte_100117EC9)
  {
    dsema = 0;
  }

  else
  {
    dsema = dispatch_semaphore_create(0);
  }

  group = dispatch_group_create();
  v108 = byte_100117EC9;
  if (byte_100117EC9 == 1)
  {
    dispatch_suspend(*(a1 + 24));
  }

  v132 = 0;
  v133 = &v132;
  v134 = 0x2020000000;
  v135 = 0;
  when = dispatch_time(0, 0);
  SAMachAbsTimeSecondsGetCurrent();
  v7 = v6;
  [*(a1 + 8) startingSamplingLiveSystem];
  v114 = 0;
  v111 = 0;
  v113 = 0;
  do
  {
    v8 = objc_autoreleasePoolPush();
    if ((byte_100117E94 & 2) != 0 && sub_10002B3E4())
    {
      ++*(a1 + 88);
      goto LABEL_117;
    }

    ++*(a1 + 84);
    if (dispatch_semaphore_wait(*(a1 + 112), 0))
    {
      if (byte_100117E80 == 1)
      {
        v9 = __error();
        v10 = *v9;
        v12 = sub_100035B80(v9, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000BB0E0(&v130, v131);
        }

        *__error() = v10;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v16 = *__error();
        v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to update sampling pid list");
        v19 = v17;
        if (v17)
        {
          CStringPtr = CFStringGetCStringPtr(v17, 0x8000100u);
          if (CStringPtr)
          {
            v21 = 0;
          }

          else
          {
            CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x49956E23uLL);
            CFStringGetCString(v19, CStringPtr, 1024, 0x8000100u);
            v21 = CStringPtr;
          }

          if (qword_100117E88)
          {
            v24 = qword_100117E88;
          }

          else
          {
            v24 = __stderrp;
          }

          fprintf(v24, "%s\n", CStringPtr);
          if (v21)
          {
            free(v21);
          }

          CFRelease(v19);
        }

        else
        {
          v22 = sub_100035B80(0, v18);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            sub_1000BB118(&v128, v129);
          }

          if (qword_100117E88)
          {
            v23 = qword_100117E88;
          }

          else
          {
            v23 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v23);
        }

        v14 = 0;
        *__error() = v16;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = *(a1 + 104);
      if (v14 == 1)
      {
        *(a1 + 104) = 0;
        v15 = [*(a1 + 96) mutableCopy];

        v111 = v15;
      }

      dispatch_semaphore_signal(*(a1 + 112));
    }

    v25 = v133[3];
    if (v25)
    {
      v133[3] = 0;
    }

    else
    {
      v25 = stackshot_config_create();
    }

    if (!v114)
    {
      v14 = 1;
    }

    if (v14 == 1)
    {
      stackshot_config_set_flags();
      stackshot_config_set_delta_timestamp();
LABEL_54:
      v26 = 0;
      goto LABEL_55;
    }

    stackshot_config_set_flags();
    stackshot_config_set_delta_timestamp();
    if (!dword_100117E5C)
    {
      goto LABEL_54;
    }

    v26 = ((dword_100117E5C * 1.2) + 0x3FFFF) & 0xFFFC0000;
    stackshot_config_set_size_hint();
LABEL_55:
    v114 = mach_absolute_time();
    v27 = sub_10008866C(v25, v111);
    if (v27)
    {
      SASecondsFromMachTimeUsingLiveTimebase();
      v29 = v28;
      if ([v27 length] >= 0xFFFFFFFF)
      {
        if (byte_100117E80 == 1)
        {
          v89 = __error();
          v90 = *v89;
          v92 = sub_100035B80(v89, v91);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            sub_1000BB170(buf, [v27 length]);
          }

          *__error() = v90;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v93 = *__error();
          v94 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: bad stackshot data length %lu", "stackshotData.length < 4294967295U", [v27 length]);
          v96 = v94;
          if (v94)
          {
            v99 = CFStringGetCStringPtr(v94, 0x8000100u);
            if (v99)
            {
              v100 = 0;
            }

            else
            {
              v99 = malloc_type_calloc(0x400uLL, 1uLL, 0xF7639C3DuLL);
              CFStringGetCString(v96, v99, 1024, 0x8000100u);
              v100 = v99;
            }

            if (qword_100117E88)
            {
              v101 = qword_100117E88;
            }

            else
            {
              v101 = __stderrp;
            }

            fprintf(v101, "%s\n", v99);
            if (v100)
            {
              free(v100);
            }

            CFRelease(v96);
          }

          else
          {
            v97 = sub_100035B80(0, v95);
            if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
            {
              sub_1000BB1C0(v142, [v27 length]);
            }

            if (qword_100117E88)
            {
              v98 = qword_100117E88;
            }

            else
            {
              v98 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v98);
          }

          *__error() = v93;
        }

        v102 = [v27 length];
        sub_100035A54("_SamplingThread", "SPSampleProvider.m", 263, "%s: bad stackshot data length %lu", v103, v104, v105, v106, "stackshotData.length < 4294967295U", v102);
        abort();
      }

      v30 = [v27 length];
      v31 = v30;
      if ((v14 & 1) == 0)
      {
        if (v26 && v26 < v30)
        {
          if (byte_100117E80 == 1)
          {
            v32 = __error();
            v33 = *v32;
            v35 = sub_100035B80(v32, v34);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109632;
              v144 = dword_100117E5C;
              v145 = 1024;
              *v146 = v26;
              *&v146[4] = 1024;
              *&v146[6] = v31;
              _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Hint too small (previous %d, hint %d, actual %d)", buf, 0x14u);
            }

            *__error() = v33;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 0)
          {
            v36 = *__error();
            v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Hint too small (previous %d, hint %d, actual %d)", dword_100117E5C, v26, v31);
            v39 = v37;
            if (v37)
            {
              v40 = CFStringGetCStringPtr(v37, 0x8000100u);
              if (v40)
              {
                v41 = 0;
              }

              else
              {
                v40 = malloc_type_calloc(0x400uLL, 1uLL, 0xD2D880CDuLL);
                CFStringGetCString(v39, v40, 1024, 0x8000100u);
                v41 = v40;
              }

              if (qword_100117E88)
              {
                v44 = qword_100117E88;
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

              CFRelease(v39);
            }

            else
            {
              v42 = sub_100035B80(0, v38);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109632;
                v144 = dword_100117E5C;
                v145 = 1024;
                *v146 = v26;
                *&v146[4] = 1024;
                *&v146[6] = v31;
                _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "Unable to format: Hint too small (previous %d, hint %d, actual %d)", buf, 0x14u);
              }

              if (qword_100117E88)
              {
                v43 = qword_100117E88;
              }

              else
              {
                v43 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v43);
            }

            *__error() = v36;
          }
        }

        if (dword_100117E5C < v31)
        {
          dword_100117E5C = v31;
        }
      }

      if (dsema)
      {
        v113 |= (atomic_fetch_add_explicit(v137 + 3, v31, memory_order_relaxed) + v31) > 20971519;
      }

      v45 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008E054;
      block[3] = &unk_100109DF8;
      v46 = a1;
      v125 = v46;
      v127 = v29;
      v47 = group;
      v126 = v47;
      dispatch_async(v45, block);

      if (qword_100117E68 != -1)
      {
        sub_1000BB148();
      }

      if (qword_100117E60)
      {
        v48 = v27;
        v49 = [v27 bytes];
        v50 = [v27 length];
        if (fwrite(v49, v50, 1uLL, qword_100117E60) != 1)
        {
          if (byte_100117E80 == 1)
          {
            v51 = __error();
            v52 = *v51;
            v54 = sub_100035B80(v51, v53);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v71 = ferror(qword_100117E60);
              v72 = strerror(v71);
              *buf = 67109378;
              v144 = v71;
              v145 = 2080;
              *v146 = v72;
              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Unable to write stackshot: %d (%s)", buf, 0x12u);
            }

            *__error() = v52;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v109 = *__error();
            v55 = ferror(qword_100117E60);
            v56 = strerror(v55);
            v57 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write stackshot: %d (%s)", v55, v56);
            v59 = v57;
            if (v57)
            {
              v60 = CFStringGetCStringPtr(v57, 0x8000100u);
              if (v60)
              {
                v61 = 0;
              }

              else
              {
                v60 = malloc_type_calloc(0x400uLL, 1uLL, 0x98F51B62uLL);
                CFStringGetCString(v59, v60, 1024, 0x8000100u);
                v61 = v60;
              }

              if (qword_100117E88)
              {
                v64 = qword_100117E88;
              }

              else
              {
                v64 = __stderrp;
              }

              fprintf(v64, "%s\n", v60);
              if (v61)
              {
                free(v61);
              }

              CFRelease(v59);
            }

            else
            {
              v62 = sub_100035B80(0, v58);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
              {
                v73 = ferror(qword_100117E60);
                v74 = strerror(v73);
                *buf = 67109378;
                v144 = v73;
                v145 = 2080;
                *v146 = v74;
                _os_log_fault_impl(&_mh_execute_header, v62, OS_LOG_TYPE_FAULT, "Unable to format: Unable to write stackshot: %d (%s)", buf, 0x12u);
              }

              if (qword_100117E88)
              {
                v63 = qword_100117E88;
              }

              else
              {
                v63 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v63);
            }

            *__error() = v109;
          }

          fclose(qword_100117E60);
          qword_100117E60 = 0;
        }
      }

      v65 = *(a1 + 24);
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_10008E554;
      v116[3] = &unk_100109E40;
      v117 = v46;
      v118 = v27;
      v120 = &v132;
      v122 = v25;
      v66 = dsema;
      v123 = v31;
      v119 = v66;
      v121 = &v136;
      dispatch_group_async(v47, v65, v116);
    }

LABEL_117:
    objc_autoreleasePoolPop(v8);
    if (((dsema != 0) & v113) == 1)
    {
      if (qword_100117E70 != -1)
      {
        sub_1000BB210();
      }

      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      v113 = 0;
    }

    SAMachAbsTimeSecondsGetCurrent();
    v68 = v67;
    v69 = *(a1 + 64);
    v7 = v7 + v69 / 1000000.0;
    if (v7 <= v67)
    {
      v70 = dispatch_time(0, 0);
      v7 = v68;
    }

    else
    {
      v70 = dispatch_time(when, 1000 * v69);
    }

    when = v70;
  }

  while (dispatch_semaphore_wait(*(a1 + 48), v70));
  [*(a1 + 8) finishedSamplingLiveSystem];
  if (v108)
  {
    if (qword_100117ED0 && dispatch_group_wait(qword_100117ED0, 0))
    {
      if (byte_100117E80 == 1)
      {
        v75 = __error();
        v76 = *v75;
        v78 = sub_100035B80(v75, v77);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Sampling completed, waiting for SIGINFO...", buf, 2u);
        }

        *__error() = v76;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v79 = *__error();
        v80 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling completed, waiting for SIGINFO...");
        v82 = v80;
        if (v80)
        {
          v83 = CFStringGetCStringPtr(v80, 0x8000100u);
          if (v83)
          {
            v84 = 0;
          }

          else
          {
            v83 = malloc_type_calloc(0x400uLL, 1uLL, 0xB93FA9D3uLL);
            CFStringGetCString(v82, v83, 1024, 0x8000100u);
            v84 = v83;
          }

          if (qword_100117E88)
          {
            v87 = qword_100117E88;
          }

          else
          {
            v87 = __stderrp;
          }

          fprintf(v87, "%s\n", v83);
          if (v84)
          {
            free(v84);
          }

          CFRelease(v82);
        }

        else
        {
          v85 = sub_100035B80(0, v81);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
          {
            sub_1000BB238();
          }

          if (qword_100117E88)
          {
            v86 = qword_100117E88;
          }

          else
          {
            v86 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v86);
        }

        *__error() = v79;
      }

      dispatch_group_wait(qword_100117ED0, 0xFFFFFFFFFFFFFFFFLL);
    }

    dispatch_resume(*(a1 + 24));
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (v133[3])
  {
    stackshot_config_dealloc();
  }

  _Block_object_dispose(&v132, 8);

  _Block_object_dispose(&v136, 8);
  objc_autoreleasePoolPop(context);
  return 0;
}

void sub_10008AB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v49 - 248), 8);
  _Unwind_Resume(a1);
}

void sub_10008B638(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.spindump.sample_provider_singleton", v3);
  v2 = qword_100117E48;
  qword_100117E48 = v1;
}

void sub_10008B7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008B810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008B828(uint64_t a1)
{
  v2 = dword_100117E58;
  if (!dword_100117E58)
  {
    v3 = objc_alloc_init(SPStackshotProvider);
    v4 = qword_100117E50;
    qword_100117E50 = v3;

    v2 = dword_100117E58;
  }

  dword_100117E58 = v2 + 1;
  v5 = +[SATimestamp timestamp];
  v6 = *(qword_100117E50 + 84);
  v7 = *(qword_100117E50 + 88);
  if ([qword_100117E50 startWithSamplingIntervalUs:*(a1 + 48) andOccasionalDataIntervalSec:*(a1 + 52) andOnlySampleProcesses:*(a1 + 32) andOnlySampleMainThreads:*(a1 + 56) andOmitSensitiveStrings:*(a1 + 57)])
  {
    v8 = [SPStackshotProviderSnapshot alloc];
    v9 = [(SPStackshotProviderSnapshot *)v8 initWithStackshotProvider:qword_100117E50 timestamp:v5 numSamples:v6 numSamplesAvoidedDueToAudio:v7];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    if (!--dword_100117E58)
    {
      sub_1000BB384();
    }
  }
}

void sub_10008D598(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  if (v7 + -1.0 > v9)
  {
    LODWORD(a5) = *(v8 + 68);
    if (v7 + 1.0 < v9 + *&a5)
    {
      v17 = v5;
      v18 = v6;
      *(v8 + 56) = v7;
      v11 = [SAAuxiliaryData auxiliaryDataForTimestamp:0];
      v12 = *(a1 + 32);
      v13 = *(v12 + 24);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10008D684;
      v15[3] = &unk_100109D80;
      v15[4] = v12;
      v16 = v11;
      v14 = v11;
      dispatch_async(v13, v15);
    }
  }
}

void sub_10008D8F0(uint64_t a1)
{
  v1 = qword_100117E50;
  if (qword_100117E50 != *(a1 + 32))
  {
    if (sub_1000BB934(&v25))
    {
      return;
    }

    v7 = v25;
LABEL_43:
    *__error() = v7;
    return;
  }

  if (--dword_100117E58)
  {
    if (byte_100117E80 == 1)
    {
      v2 = __error();
      v3 = *v2;
      v5 = sub_100035B80(v2, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BBB04();
      }

      *__error() = v3;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 0)
    {
      return;
    }

    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stackshot provider shared instance not yet done");
    if (v8)
    {
      v10 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (!CStringPtr)
      {
        v12 = 3275332155;
LABEL_36:
        v20 = malloc_type_calloc(0x400uLL, 1uLL, v12);
        CFStringGetCString(v10, v20, 1024, 0x8000100u);
        v21 = v20;
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    v22 = sub_100035B80(0, v9);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000BBB38();
    }

    goto LABEL_31;
  }

  qword_100117E50 = 0;

  if (byte_100117E80 == 1)
  {
    v13 = __error();
    v14 = *v13;
    v16 = sub_100035B80(v13, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1000BBB6C();
    }

    *__error() = v14;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v7 = *__error();
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stackshot provider shared instance done");
    if (v18)
    {
      v10 = v18;
      CStringPtr = CFStringGetCStringPtr(v18, 0x8000100u);
      if (!CStringPtr)
      {
        v12 = 1965783567;
        goto LABEL_36;
      }

LABEL_26:
      v20 = CStringPtr;
      v21 = 0;
LABEL_37:
      if (qword_100117E88)
      {
        v24 = qword_100117E88;
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
      goto LABEL_43;
    }

    v22 = sub_100035B80(0, v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000BBBA0();
    }

LABEL_31:

    if (qword_100117E88)
    {
      v23 = qword_100117E88;
    }

    else
    {
      v23 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v23);
    goto LABEL_43;
  }
}

void sub_10008DBF0(uint64_t a1)
{
  [*(a1 + 32) machAbsTimeSeconds];
  if (v2 + -1.0 > *(*(a1 + 40) + 56))
  {
    [*(a1 + 32) machAbsTimeSeconds];
    *(*(a1 + 40) + 56) = v3;
    v4 = [SAAuxiliaryData auxiliaryDataForTimestamp:0];
    v5 = *(a1 + 40);
    v6 = *(v5 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008DDA4;
    block[3] = &unk_100109D80;
    block[4] = v5;
    v16 = v4;
    v7 = v4;
    dispatch_async(v6, block);
  }

  if (*(a1 + 48) && *(a1 + 56))
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008DDB0;
    v11[3] = &unk_100109DA8;
    v10 = *(a1 + 32);
    v8 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    v14 = *(a1 + 64);
    v13 = *(a1 + 56);
    v9 = objc_retainBlock(v11);
    if (*(a1 + 72) == 1)
    {
      dispatch_group_notify(*(*(a1 + 40) + 32), *(a1 + 48), v9);
    }

    else
    {
      dispatch_async(*(a1 + 48), v9);
    }
  }
}

void sub_10008DDB0(uint64_t a1)
{
  v2 = [[SPStackshotProviderSnapshot alloc] initWithStackshotProvider:*(a1 + 32) timestamp:*(a1 + 40) numSamples:*(a1 + 56) numSamplesAvoidedDueToAudio:*(a1 + 60)];
  (*(*(a1 + 48) + 16))();
}

void sub_10008DF50(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  v2 = [NSNumber numberWithInt:*(a1 + 40)];
  [v1 addObject:v2];
}

void sub_10008E054(double *a1)
{
  v1 = *(a1 + 4);
  v2 = *(v1 + 68);
  if (v2)
  {
    if (a1[6] > *(v1 + 56) + v2)
    {
      v4 = objc_autoreleasePoolPush();
      *(*(a1 + 4) + 56) = a1[6];
      v5 = [SAAuxiliaryData auxiliaryDataForTimestamp:0];
      v6 = *(a1 + 4);
      v7 = *(a1 + 5);
      v8 = v6[3];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10008E15C;
      v10[3] = &unk_100109D80;
      v11 = v6;
      v12 = v5;
      v9 = v5;
      dispatch_group_async(v7, v8, v10);

      objc_autoreleasePoolPop(v4);
    }
  }
}

void sub_10008E168(id a1)
{
  v1 = getenv("SPINDUMP_SAVE_STACKSHOTS");
  if (v1 && (*v1 != 48 || v1[1]))
  {
    strcpy(__filename, "/var/mobile/stackshots.");
    memset(&v28, 0, sizeof(v28));
    v27 = time(0);
    localtime_r(&v27, &v28);
    v2 = strftime(&__filename[23], 0x3E9uLL, "%Y-%m-%d-%T", &v28);
    v3 = v2 + 23;
    if (v2 + 23 >= 0x400)
    {
      sub_1000BBBD4(__filename, v3);
    }

    v4 = getpid();
    snprintf(&__filename[v3], 1001 - v2, ".%d.buf", v4);
    qword_100117E60 = fopen(__filename, "w");
    if (qword_100117E60)
    {
      if (byte_100117E80)
      {
        v5 = __error();
        v6 = *v5;
        v8 = sub_100035B80(v5, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v30 = __filename;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving stackshots to %s", buf, 0xCu);
        }

        *__error() = v6;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v9 = *__error();
        v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Saving stackshots to %s", __filename);
        if (!v10)
        {
          v12 = sub_100035B80(0, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            sub_1000BBDCC();
          }

LABEL_34:

          if (qword_100117E88)
          {
            v26 = qword_100117E88;
          }

          else
          {
            v26 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
LABEL_38:
          *__error() = v9;
          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (byte_100117E80)
      {
        v13 = __error();
        v14 = *v13;
        v16 = sub_100035B80(v13, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000BBE40(__filename, v16);
        }

        *__error() = v14;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v9 = *__error();
        v17 = *__error();
        v18 = __error();
        v19 = strerror(*v18);
        v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open %s to save stackshots: %d (%s)", __filename, v17, v19);
        if (!v10)
        {
          v12 = sub_100035B80(0, v20);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            sub_1000BBEE4(__filename, v12);
          }

          goto LABEL_34;
        }

LABEL_23:
        v21 = v10;
        CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
        if (CStringPtr)
        {
          v23 = CStringPtr;
          v24 = 0;
        }

        else
        {
          v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x67BC2E96uLL);
          CFStringGetCString(v21, v23, 1024, 0x8000100u);
          v24 = v23;
        }

        if (qword_100117E88)
        {
          v25 = qword_100117E88;
        }

        else
        {
          v25 = __stderrp;
        }

        fprintf(v25, "%s\n", v23);
        if (v24)
        {
          free(v24);
        }

        CFRelease(v21);
        goto LABEL_38;
      }
    }
  }
}

intptr_t sub_10008E554(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) addKCDataStackshots:*(a1 + 40) createSeparateSamplePerStackshot:0];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v2 = *(*(a1 + 32) + 120);
  v3 = [v2 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (!v3)
  {
    goto LABEL_48;
  }

  v4 = v3;
  v5 = *v43;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v43 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v42 + 1) + 8 * i);
      if (([*(*(a1 + 32) + 8) cacheLoadInfoForProcess:{objc_msgSend(v7, "intValue")}] & 1) == 0)
      {
        if (([v7 intValue] & 0x80000000) != 0)
        {
          if (byte_100117E80)
          {
            v20 = __error();
            v21 = *v20;
            v23 = sub_100035B80(v20, v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_1000BBF88(&v40, v41);
            }

            *__error() = v21;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v13 = *__error();
            v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to cache load info");
            if (v15)
            {
LABEL_30:
              v26 = v15;
              CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
              if (CStringPtr)
              {
                v28 = CStringPtr;
                v29 = 0;
              }

              else
              {
                v28 = malloc_type_calloc(0x400uLL, 1uLL, 0x1D8FE22BuLL);
                CFStringGetCString(v26, v28, 1024, 0x8000100u);
                v29 = v28;
              }

              if (qword_100117E88)
              {
                v30 = qword_100117E88;
              }

              else
              {
                v30 = __stderrp;
              }

              fprintf(v30, "%s\n", v28);
              if (v29)
              {
                free(v29);
              }

              CFRelease(v26);
              goto LABEL_45;
            }

            v17 = sub_100035B80(0, v25);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              sub_1000BBFC0(&v38, v39);
            }

LABEL_41:

            if (qword_100117E88)
            {
              v31 = qword_100117E88;
            }

            else
            {
              v31 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
LABEL_45:
            *__error() = v13;
            continue;
          }
        }

        else
        {
          if (byte_100117E80)
          {
            v8 = __error();
            v9 = *v8;
            v11 = sub_100035B80(v8, v10);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v32 = sub_100035B20([v7 intValue]);
              v33 = [v7 intValue];
              *buf = 136446466;
              v47 = v32;
              v48 = 1024;
              v49 = v33;
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to cache load info", buf, 0x12u);
            }

            *__error() = v9;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v13 = *__error();
            v14 = sub_100035B20([v7 intValue]);
            v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to cache load info", v14, [v7 intValue]);
            if (v15)
            {
              goto LABEL_30;
            }

            v17 = sub_100035B80(0, v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              v18 = sub_100035B20([v7 intValue]);
              v19 = [v7 intValue];
              *buf = 136315394;
              v47 = v18;
              v48 = 1024;
              v49 = v19;
              _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Unable to cache load info", buf, 0x12u);
            }

            goto LABEL_41;
          }
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v42 objects:v50 count:16];
  }

  while (v4);
LABEL_48:

  [*(*(a1 + 32) + 120) removeAllObjects];
  objc_autoreleasePoolPop(context);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    result = stackshot_config_dealloc();
  }

  else
  {
    result = stackshot_config_dealloc_buffer();
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 72);
  }

  if (*(a1 + 48))
  {
    v35 = *(a1 + 80);
    v36 = atomic_fetch_add_explicit((*(*(a1 + 64) + 8) + 24), -v35, memory_order_relaxed) - v35;
    if (v36 <= 20971519 && v36 + *(a1 + 80) >= 20971520)
    {
      return dispatch_semaphore_signal(*(a1 + 48));
    }
  }

  return result;
}

void sub_10008EA60(id a1)
{
  if (byte_100117E80 == 1)
  {
    v1 = __error();
    v2 = *v1;
    v4 = sub_100035B80(v1, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000BBFF0();
    }

    *__error() = v2;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v6 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to process samples fast enough, throttling sampling rate to avoid bloating memory. Use -noThrottle to avoid this.");
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
        v11 = malloc_type_calloc(0x400uLL, 1uLL, 0xA311B46AuLL);
        CFStringGetCString(v9, v11, 1024, 0x8000100u);
        v12 = v11;
      }

      if (qword_100117E88)
      {
        v15 = qword_100117E88;
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
      v13 = sub_100035B80(0, v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1000BC02C();
      }

      if (qword_100117E88)
      {
        v14 = qword_100117E88;
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

void sub_10008EC24(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

void sub_10008EC40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

uint64_t sub_10008EC58(uint64_t result, uint64_t a2, int a3)
{
  *(a2 + 4) = v3;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  *(a2 + 18) = 2080;
  *(a2 + 20) = result;
  return result;
}

uint64_t sub_10008EC78@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 4) = a3;
  *(result + 12) = 2048;
  *(result + 14) = a2;
  return result;
}

id sub_10008EC8C(uint64_t a1, void *a2)
{

  return [a2 intValue];
}

id *sub_10008F924(uint64_t a1, void *a2, char a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a2;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_opt_self();
  if (v13 && v15)
  {
    sub_1000BCCCC(v13, v15);
  }

  if (!v15 && !v14 && !v13)
  {
    sub_1000BCAC0(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v24 = objc_alloc_init(v16);
  objc_storeWeak(v24 + 7, v12);
  *(v24 + 8) = a3;
  v25 = [v13 copy];
  v26 = v24[2];
  v24[2] = v25;

  v24[4] = a5;
  v27 = [v14 copy];
  v28 = v24[5];
  v24[5] = v27;

  v29 = [v15 copy];
  v30 = v24[3];
  v24[3] = v29;

  return v24;
}

BOOL sub_10008FA38(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = !(v3 | v4) || v3 && v4 && ([v3 isEqualToString:v4] & 1) != 0;

  return v6;
}

void sub_100097B64(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Unwind_Resume(a1);
}

void *sub_100097FA0(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    *(v3 + 24) = 2 * v4;
    v5 = *(*(*v2 + 8) + 24);
    if (v5 <= 0)
    {
      sub_1000BD7F4();
    }
  }

  else
  {
    *(v3 + 24) = 0x4000;
    v5 = *(*(*v2 + 8) + 24);
  }

  result = reallocf(*(*(*(a1 + 40) + 8) + 24), v5);
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    sub_1000BDA04();
  }

  return result;
}

void sub_100098044(FILE *a1, void *a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v8 = a4;
  v11 = a2;
  v12 = a3;
  v13 = a6;
  context = objc_autoreleasePoolPush();
  v14 = +[NSMutableDictionary dictionary];
  v15 = +[NSMutableDictionary dictionary];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = a5;
  v16 = +[NSMutableSet set];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10009B848;
  v47 = sub_10009B858;
  v48 = 0;
  v17 = sub_100098334(a1, 0, v12, v8);
  v18 = v44[5];
  v44[5] = v17;

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10009B860;
  v31[3] = &unk_100109F10;
  v41 = a5;
  v19 = v13;
  v32 = v19;
  v38 = v49;
  v39 = &v43;
  v42 = v8;
  v40 = a1;
  v20 = v12;
  v33 = v20;
  v21 = v11;
  v34 = v21;
  v22 = v14;
  v35 = v22;
  v23 = v16;
  v36 = v23;
  v24 = v15;
  v37 = v24;
  sub_10009A5FC(a1, 0, v31);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10009BCFC;
  v28[3] = &unk_100109F60;
  v25 = v23;
  v29 = v25;
  v26 = v24;
  v30 = v26;
  [v22 enumerateKeysAndObjectsUsingBlock:v28];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v49, 8);

  objc_autoreleasePoolPop(context);
}

id sub_100098334(FILE *a1, uint64_t a2, void *a3, char a4)
{
  v5 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(NSMutableArray);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009AB3C;
  v15[3] = &unk_100109EC8;
  v18 = &v20;
  v10 = v7;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v19 = a4;
  sub_10009A5FC(a1, v5, v15);
  if ((v21[3] & 1) == 0)
  {

    v11 = 0;
  }

  v12 = v17;
  v13 = v11;

  _Block_object_dispose(&v20, 8);
  objc_autoreleasePoolPop(v8);

  return v13;
}

void sub_10009847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_100098494(void *a1, void *a2, int a3, int a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = v10;
  if (a3)
  {
    v12 = [v10 rangeWithName:@"indentCount"];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = [v9 substringWithRange:{v12, v13}];
      v14 = sub_10009A270(v16);
    }
  }

  else
  {
    if ([v10 rangeWithName:@"indentWhitespace"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = v15;
    }

    if ((v14 & 0x80000000) == 0)
    {
      v14 = ((v14 - a4) / a5);
    }
  }

  return v14;
}

void *sub_100098564(void *a1, uint64_t a2, void *a3, void *a4, int a5, unint64_t *a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = objc_autoreleasePoolPush();
  *a6 = -1;
  if (a5)
  {
    v15 = [v12 rangeWithName:@"binaryIndex"];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_3:
      v17 = 0;
      goto LABEL_280;
    }

    v25 = [v11 substringWithRange:{v15, v16}];
    v26 = sub_10009A270(v25);

    if (v26 < [v13 count])
    {
      v17 = [v13 objectAtIndexedSubscript:v26];
      v27 = [v12 rangeWithName:@"offsetIntoBinary"];
      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1000BE12C(v11, a2);
      }

      v29 = [v11 substringWithRange:{v27, v28}];
      v24 = sub_10009A270(v29);
      goto LABEL_278;
    }

    if (byte_100117E80 == 1)
    {
      v60 = __error();
      v61 = *v60;
      v63 = sub_100035B80(v60, v62);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v267 = v26;
        v268 = 2048;
        *v269 = [v13 count];
        *&v269[8] = 1024;
        *&v269[10] = a2;
        *&v269[14] = 2112;
        *&v269[16] = v11;
        _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Parsing spindump text: corrupt condensed file, frame line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", buf, 0x26u);
      }

      *__error() = v61;
    }

    v17 = 0;
    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_280;
    }

    v39 = *__error();
    v64 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: corrupt condensed file, frame line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", v26, [v13 count], a2, v11);
    if (v64)
    {
      v42 = v64;
      CStringPtr = CFStringGetCStringPtr(v64, 0x8000100u);
      if (CStringPtr)
      {
        goto LABEL_55;
      }

      v44 = 3085136139;
      goto LABEL_151;
    }

    v160 = sub_100035B80(0, v65);
    if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
    {
      v230 = [v13 count];
      *buf = 134218754;
      v267 = v26;
      v268 = 2048;
      *v269 = v230;
      *&v269[8] = 1024;
      *&v269[10] = a2;
      *&v269[14] = 2112;
      *&v269[16] = v11;
      _os_log_fault_impl(&_mh_execute_header, v160, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: corrupt condensed file, frame line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", buf, 0x26u);
    }

    goto LABEL_134;
  }

  v18 = [v12 rangeWithName:@"address"];
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = [v11 substringWithRange:{v18, v19}];
    v31 = sub_10009A270(v30);

    v260 = _NSConcreteStackBlock;
    v261 = 3221225472;
    v262 = sub_1000BCA9C;
    v263 = &unk_100109EE8;
    v264 = v31;
    v32 = SABinarySearchArray();
    if (v32 < [v13 count])
    {
      v33 = [v13 objectAtIndexedSubscript:v32];
      if (v33)
      {
        v17 = v33;
        if (v33[7] <= v31)
        {
          goto LABEL_56;
        }
      }
    }

    if (!v32)
    {
      goto LABEL_19;
    }

    v34 = [v13 objectAtIndexedSubscript:v32 - 1];
    if (!v34)
    {
      goto LABEL_19;
    }

    v17 = v34;
    if (v34[8] - 1 < v31)
    {

LABEL_19:
      if ([v12 rangeWithName:@"binaryName"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v12, "rangeWithName:", @"binaryUuid") == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_3;
      }

      if (byte_100117E80 == 1)
      {
        v35 = __error();
        v36 = *v35;
        v38 = sub_100035B80(v35, v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_1000BDC14();
        }

        *__error() = v36;
      }

      v17 = 0;
      if (byte_100117E81 != 1 || dword_100117510 > 3)
      {
        goto LABEL_280;
      }

      v39 = *__error();
      v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to find load info for (%d: %@)", a2, v11);
      if (v40)
      {
        v42 = v40;
        CStringPtr = CFStringGetCStringPtr(v40, 0x8000100u);
        if (CStringPtr)
        {
LABEL_55:
          v66 = CStringPtr;
          v67 = 0;
LABEL_152:
          if (qword_100117E88)
          {
            v180 = qword_100117E88;
          }

          else
          {
            v180 = __stderrp;
          }

          fprintf(v180, "%s\n", v66);
          if (v67)
          {
            free(v67);
          }

          CFRelease(v42);
          goto LABEL_158;
        }

        v44 = 2824012580;
LABEL_151:
        v66 = malloc_type_calloc(0x400uLL, 1uLL, v44);
        CFStringGetCString(v42, v66, 1024, 0x8000100u);
        v67 = v66;
        goto LABEL_152;
      }

      v161 = sub_100035B80(0, v41);
      if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
      {
        sub_1000BDC88();
      }

LABEL_134:
      if (qword_100117E88)
      {
        v162 = qword_100117E88;
      }

      else
      {
        v162 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v162);
LABEL_158:
      v17 = 0;
      *__error() = v39;
      goto LABEL_280;
    }

LABEL_56:
    v24 = v31 - v17[7];
    goto LABEL_279;
  }

  v250 = a2;
  v251 = v14;
  v20 = [v12 rangeWithName:@"binaryUuid"];
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v45 = v20;
    v46 = v21;
    v47 = [v11 substringWithRange:{v20, v21}];
    v48 = sub_10009B6E4(v47);

    if (!v48)
    {
      if (byte_100117E80 == 1)
      {
        v79 = __error();
        v80 = *v79;
        v82 = sub_100035B80(v79, v81);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = [v11 substringWithRange:{v45, v46}];
          *buf = 138412802;
          v267 = v83;
          v268 = 1024;
          *v269 = v250;
          *&v269[4] = 2112;
          *&v269[6] = v11;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: unable to parse UUID %@ in line (%d: %@)", buf, 0x1Cu);
        }

        *__error() = v80;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v84 = v13;
        v85 = v12;
        v86 = *__error();
        v87 = [v11 substringWithRange:{v45, v46}];
        v88 = v11;
        v89 = v87;
        v90 = v88;
        v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: unable to parse UUID %@ in line (%d: %@)", v87, v250, v88);

        if (v91)
        {
          v94 = CFStringGetCStringPtr(v91, 0x8000100u);
          if (v94)
          {
            v95 = v94;
            v96 = 0;
          }

          else
          {
            v95 = malloc_type_calloc(0x400uLL, 1uLL, 0x80A8BE69uLL);
            CFStringGetCString(v91, v95, 1024, 0x8000100u);
            v96 = v95;
          }

          v11 = v90;
          if (qword_100117E88)
          {
            v202 = qword_100117E88;
          }

          else
          {
            v202 = __stderrp;
          }

          fprintf(v202, "%s\n", v95);
          v12 = v85;
          if (v96)
          {
            free(v96);
          }

          CFRelease(v91);
        }

        else
        {
          v198 = sub_100035B80(v92, v93);
          v11 = v90;
          if (os_log_type_enabled(v198, OS_LOG_TYPE_FAULT))
          {
            v231 = [v90 substringWithRange:{v45, v46}];
            *buf = 138412802;
            v267 = v231;
            v268 = 1024;
            *v269 = v250;
            *&v269[4] = 2112;
            *&v269[6] = v90;
            _os_log_fault_impl(&_mh_execute_header, v198, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: unable to parse UUID %@ in line (%d: %@)", buf, 0x1Cu);
          }

          if (qword_100117E88)
          {
            v199 = qword_100117E88;
          }

          else
          {
            v199 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v199);
          v12 = v85;
        }

        v13 = v84;
LABEL_216:
        *__error() = v86;
      }

LABEL_217:

      v17 = 0;
      v14 = v251;
      goto LABEL_280;
    }

    v248 = v11;
    v258 = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v49 = v13;
    v50 = [v49 countByEnumeratingWithState:&v256 objects:v272 count:16];
    if (!v50)
    {

      goto LABEL_109;
    }

    v52 = v50;
    v244 = v13;
    v246 = v12;
    v17 = 0;
    v53 = *v257;
    while (1)
    {
      v54 = 0;
      do
      {
        if (*v257 != v53)
        {
          objc_enumerationMutation(v49);
        }

        v55 = *(*(&v256 + 1) + 8 * v54);
        if (v55)
        {
          Property = objc_getProperty(*(*(&v256 + 1) + 8 * v54), v51, 40, 1);
        }

        else
        {
          Property = 0;
        }

        v57 = [Property uuid];
        v58 = [v57 isEqual:v48];

        if (v58)
        {
          if (v17)
          {
            if (objc_getProperty(v17, v51, 48, 1))
            {
              v12 = v246;
              if (byte_100117E80)
              {
                v97 = __error();
                v98 = *v97;
                v100 = sub_100035B80(v97, v99);
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                {
                  v102 = objc_getProperty(v17, v101, 40, 1);
                  v103 = [v102 uuid];
                  v105 = objc_getProperty(v17, v104, 48, 1);

                  *buf = 138413314;
                  v267 = v48;
                  v268 = 2112;
                  *v269 = v103;
                  *&v269[8] = 2112;
                  *&v269[10] = v105;
                  *&v269[18] = 1024;
                  *&v269[20] = v250;
                  v270 = 2112;
                  v271 = v248;
                  _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", buf, 0x30u);
                }

                *__error() = v98;
              }

              v106 = byte_100117E81 == 1 && dword_100117510 <= 2;
              v11 = v248;
              v13 = v244;
              if (!v106)
              {
                goto LABEL_263;
              }

              v242 = *__error();
              v108 = objc_getProperty(v17, v107, 40, 1);
              v109 = [v108 uuid];
              v111 = objc_getProperty(v17, v110, 48, 1);

              v112 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", v48, v109, v111, v250, v248);
              if (v112)
              {
                v115 = CFStringGetCStringPtr(v112, 0x8000100u);
                if (v115)
                {
                  v116 = v115;
                  v117 = 0;
                }

                else
                {
                  v116 = malloc_type_calloc(0x400uLL, 1uLL, 0xB6BD52EBuLL);
                  CFStringGetCString(v112, v116, 1024, 0x8000100u);
                  v117 = v116;
                }

                v12 = v246;
                if (qword_100117E88)
                {
                  v212 = qword_100117E88;
                }

                else
                {
                  v212 = __stderrp;
                }

                fprintf(v212, "%s\n", v116);
                if (v117)
                {
                  free(v117);
                }

                CFRelease(v112);
              }

              else
              {
                v203 = sub_100035B80(v113, v114);
                if (os_log_type_enabled(v203, OS_LOG_TYPE_FAULT))
                {
                  v232 = objc_getProperty(v17, v204, 40, 1);
                  v233 = [v232 uuid];
                  v235 = objc_getProperty(v17, v234, 48, 1);

                  *buf = 138413314;
                  v267 = v48;
                  v268 = 2112;
                  *v269 = v233;
                  *&v269[8] = 2112;
                  *&v269[10] = v235;
                  *&v269[18] = 1024;
                  *&v269[20] = v250;
                  v270 = 2112;
                  v271 = v248;
                  _os_log_fault_impl(&_mh_execute_header, v203, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", buf, 0x30u);
                }

                if (qword_100117E88)
                {
                  v205 = qword_100117E88;
                }

                else
                {
                  v205 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v205);
                v12 = v246;
              }

              v170 = v242;
            }

            else
            {
              v13 = v244;
              if (byte_100117E80)
              {
                v163 = __error();
                v164 = *v163;
                v166 = sub_100035B80(v163, v165);
                if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
                {
                  v168 = [objc_getProperty(v17 v167];
                  *buf = 138413058;
                  v267 = v48;
                  v268 = 2112;
                  *v269 = v168;
                  *&v269[8] = 1024;
                  *&v269[10] = v250;
                  *&v269[14] = 2112;
                  *&v269[16] = v248;
                  _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ (%d: %@)", buf, 0x26u);
                }

                *__error() = v164;
              }

              v169 = byte_100117E81 == 1 && dword_100117510 <= 2;
              v12 = v246;
              v11 = v248;
              if (!v169)
              {
                goto LABEL_263;
              }

              v170 = *__error();
              v172 = [objc_getProperty(v17 v171];
              v173 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ (%d: %@)", v48, v172, v250, v248);

              if (v173)
              {
                v176 = v170;
                v177 = CFStringGetCStringPtr(v173, 0x8000100u);
                if (v177)
                {
                  v178 = v177;
                  v179 = 0;
                }

                else
                {
                  v178 = malloc_type_calloc(0x400uLL, 1uLL, 0x20241F5BuLL);
                  CFStringGetCString(v173, v178, 1024, 0x8000100u);
                  v179 = v178;
                }

                if (qword_100117E88)
                {
                  v221 = qword_100117E88;
                }

                else
                {
                  v221 = __stderrp;
                }

                fprintf(v221, "%s\n", v178);
                if (v179)
                {
                  free(v179);
                }

                CFRelease(v173);
                v170 = v176;
              }

              else
              {
                v213 = sub_100035B80(v174, v175);
                if (os_log_type_enabled(v213, OS_LOG_TYPE_FAULT))
                {
                  v240 = [objc_getProperty(v17 v214];
                  *buf = 138413058;
                  v267 = v48;
                  v268 = 2112;
                  *v269 = v240;
                  *&v269[8] = 1024;
                  *&v269[10] = v250;
                  *&v269[14] = 2112;
                  *&v269[16] = v248;
                  _os_log_fault_impl(&_mh_execute_header, v213, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ (%d: %@)", buf, 0x26u);
                }

                if (qword_100117E88)
                {
                  v215 = qword_100117E88;
                }

                else
                {
                  v215 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v215);
              }
            }

            *__error() = v170;
            v11 = v248;
LABEL_263:

            goto LABEL_264;
          }

          v17 = v55;
        }

        v54 = v54 + 1;
      }

      while (v52 != v54);
      v59 = [v49 countByEnumeratingWithState:&v256 objects:v272 count:16];
      v52 = v59;
      if (!v59)
      {

        v12 = v246;
        v11 = v248;
        v13 = v244;
        if (!v17)
        {
LABEL_109:
          if (byte_100117E80 == 1)
          {
            v139 = __error();
            v140 = *v139;
            v142 = sub_100035B80(v139, v141);
            if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v267 = v48;
              v268 = 1024;
              *v269 = v250;
              *&v269[4] = 2112;
              *&v269[6] = v11;
              _os_log_error_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "Parsing spindump text: No matching binary for frame line with binary UUID %@! (%d: %@)", buf, 0x1Cu);
            }

            *__error() = v140;
          }

          if (byte_100117E81 == 1 && dword_100117510 <= 3)
          {
            v86 = *__error();
            v143 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No matching binary for frame line with binary UUID %@! (%d: %@)", v48, v250, v11);
            if (v143)
            {
              v145 = v143;
              v146 = CFStringGetCStringPtr(v143, 0x8000100u);
              if (v146)
              {
                v147 = v146;
                v148 = 0;
              }

              else
              {
                v147 = malloc_type_calloc(0x400uLL, 1uLL, 0x4CCB5E1CuLL);
                CFStringGetCString(v145, v147, 1024, 0x8000100u);
                v148 = v147;
              }

              if (qword_100117E88)
              {
                v211 = qword_100117E88;
              }

              else
              {
                v211 = __stderrp;
              }

              fprintf(v211, "%s\n", v147);
              if (v148)
              {
                free(v148);
              }

              CFRelease(v145);
            }

            else
            {
              v200 = sub_100035B80(0, v144);
              if (os_log_type_enabled(v200, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                v267 = v48;
                v268 = 1024;
                *v269 = v250;
                *&v269[4] = 2112;
                *&v269[6] = v11;
                _os_log_fault_impl(&_mh_execute_header, v200, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No matching binary for frame line with binary UUID %@! (%d: %@)", buf, 0x1Cu);
              }

              if (qword_100117E88)
              {
                v201 = qword_100117E88;
              }

              else
              {
                v201 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v201);
            }

            goto LABEL_216;
          }

          goto LABEL_217;
        }

LABEL_264:
        v222 = [v12 rangeWithName:@"offsetIntoBinary"];
        if (v222 == 0x7FFFFFFFFFFFFFFFLL)
        {
          sub_1000BDCFC(v11, v250);
        }

        v224 = [v11 substringWithRange:{v222, v223}];
        v24 = sub_10009A270(v224);

LABEL_266:
        v14 = v251;
        goto LABEL_279;
      }
    }
  }

  v22 = [v12 rangeWithName:@"binaryName"];
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
    v24 = -1;
    goto LABEL_266;
  }

  v249 = v11;
  v29 = [v11 substringWithRange:{v22, v23}];
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v68 = v13;
  v69 = [v68 countByEnumeratingWithState:&v252 objects:v265 count:16];
  if (!v69)
  {

LABEL_119:
    v14 = v251;
    if (byte_100117E80 == 1)
    {
      v149 = __error();
      v150 = *v149;
      v152 = sub_100035B80(v149, v151);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v267 = v29;
        v268 = 1024;
        *v269 = v250;
        *&v269[4] = 2112;
        *&v269[6] = v11;
        _os_log_error_impl(&_mh_execute_header, v152, OS_LOG_TYPE_ERROR, "Parsing spindump text: No matching binary for frame line with binary name %@! (%d: %@)", buf, 0x1Cu);
      }

      *__error() = v150;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v153 = *__error();
      v154 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No matching binary for frame line with binary name %@! (%d: %@)", v29, v250, v11);
      if (v154)
      {
        v156 = v154;
        v157 = CFStringGetCStringPtr(v154, 0x8000100u);
        if (v157)
        {
          v158 = v157;
          v159 = 0;
        }

        else
        {
          v158 = malloc_type_calloc(0x400uLL, 1uLL, 0xEC7BDB2BuLL);
          CFStringGetCString(v156, v158, 1024, 0x8000100u);
          v159 = v158;
        }

        if (qword_100117E88)
        {
          v216 = qword_100117E88;
        }

        else
        {
          v216 = __stderrp;
        }

        fprintf(v216, "%s\n", v158);
        if (v159)
        {
          free(v159);
        }

        CFRelease(v156);
      }

      else
      {
        v206 = sub_100035B80(0, v155);
        if (os_log_type_enabled(v206, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v267 = v29;
          v268 = 1024;
          *v269 = v250;
          *&v269[4] = 2112;
          *&v269[6] = v11;
          _os_log_fault_impl(&_mh_execute_header, v206, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No matching binary for frame line with binary name %@! (%d: %@)", buf, 0x1Cu);
        }

        if (qword_100117E88)
        {
          v207 = qword_100117E88;
        }

        else
        {
          v207 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v207);
      }

      *__error() = v153;
    }

    goto LABEL_3;
  }

  v71 = v69;
  v245 = v13;
  v247 = v12;
  v17 = 0;
  v72 = *v253;
  do
  {
    v73 = 0;
    do
    {
      if (*v253 != v72)
      {
        objc_enumerationMutation(v68);
      }

      v74 = *(*(&v252 + 1) + 8 * v73);
      if (v74)
      {
        v75 = objc_getProperty(*(*(&v252 + 1) + 8 * v73), v70, 40, 1);
      }

      else
      {
        v75 = 0;
      }

      v76 = [v75 name];
      v77 = [v76 isEqualToString:v29];

      if (v77)
      {
        if (!v17)
        {
          v17 = v74;
          goto LABEL_67;
        }

        if (objc_getProperty(v17, v70, 48, 1))
        {
          v12 = v247;
          if (byte_100117E80)
          {
            v118 = __error();
            v119 = *v118;
            v121 = sub_100035B80(v118, v120);
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
            {
              v123 = objc_getProperty(v17, v122, 40, 1);
              v124 = [v123 uuid];
              v126 = objc_getProperty(v17, v125, 48, 1);

              *buf = 138413314;
              v267 = v29;
              v268 = 2112;
              *v269 = v124;
              *&v269[8] = 2112;
              *&v269[10] = v126;
              *&v269[18] = 1024;
              *&v269[20] = v250;
              v270 = 2112;
              v271 = v249;
              _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", buf, 0x30u);
            }

            *__error() = v119;
          }

          v127 = byte_100117E81 == 1 && dword_100117510 <= 2;
          v11 = v249;
          v13 = v245;
          if (!v127)
          {
            goto LABEL_275;
          }

          v243 = *__error();
          v129 = objc_getProperty(v17, v128, 40, 1);
          v130 = [v129 uuid];
          v132 = objc_getProperty(v17, v131, 48, 1);

          v133 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", v29, v130, v132, v250, v249);
          if (v133)
          {
            v136 = CFStringGetCStringPtr(v133, 0x8000100u);
            if (v136)
            {
              v137 = v136;
              v138 = 0;
            }

            else
            {
              v137 = malloc_type_calloc(0x400uLL, 1uLL, 0xD0215DAuLL);
              CFStringGetCString(v133, v137, 1024, 0x8000100u);
              v138 = v137;
            }

            v12 = v247;
            if (qword_100117E88)
            {
              v217 = qword_100117E88;
            }

            else
            {
              v217 = __stderrp;
            }

            fprintf(v217, "%s\n", v137);
            if (v138)
            {
              free(v138);
            }

            CFRelease(v133);
          }

          else
          {
            v208 = sub_100035B80(v134, v135);
            if (os_log_type_enabled(v208, OS_LOG_TYPE_FAULT))
            {
              v236 = objc_getProperty(v17, v209, 40, 1);
              v237 = [v236 uuid];
              v239 = objc_getProperty(v17, v238, 48, 1);

              *buf = 138413314;
              v267 = v29;
              v268 = 2112;
              *v269 = v237;
              *&v269[8] = 2112;
              *&v269[10] = v239;
              *&v269[18] = 1024;
              *&v269[20] = v250;
              v270 = 2112;
              v271 = v249;
              _os_log_fault_impl(&_mh_execute_header, v208, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", buf, 0x30u);
            }

            if (qword_100117E88)
            {
              v210 = qword_100117E88;
            }

            else
            {
              v210 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v210);
            v12 = v247;
          }

          v188 = v243;
        }

        else
        {
          v13 = v245;
          if (byte_100117E80)
          {
            v181 = __error();
            v182 = *v181;
            v184 = sub_100035B80(v181, v183);
            if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
            {
              v186 = [objc_getProperty(v17 v185];
              *buf = 138413058;
              v267 = v29;
              v268 = 2112;
              *v269 = v186;
              *&v269[8] = 1024;
              *&v269[10] = v250;
              *&v269[14] = 2112;
              *&v269[16] = v249;
              _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ (%d: %@)", buf, 0x26u);
            }

            *__error() = v182;
          }

          v187 = byte_100117E81 == 1 && dword_100117510 <= 2;
          v12 = v247;
          v11 = v249;
          if (!v187)
          {
            goto LABEL_275;
          }

          v188 = *__error();
          v190 = [objc_getProperty(v17 v189];
          v191 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ (%d: %@)", v29, v190, v250, v249);

          if (v191)
          {
            v194 = v188;
            v195 = CFStringGetCStringPtr(v191, 0x8000100u);
            if (v195)
            {
              v196 = v195;
              v197 = 0;
            }

            else
            {
              v196 = malloc_type_calloc(0x400uLL, 1uLL, 0x575F020CuLL);
              CFStringGetCString(v191, v196, 1024, 0x8000100u);
              v197 = v196;
            }

            if (qword_100117E88)
            {
              v225 = qword_100117E88;
            }

            else
            {
              v225 = __stderrp;
            }

            fprintf(v225, "%s\n", v196);
            if (v197)
            {
              free(v197);
            }

            CFRelease(v191);
            v188 = v194;
          }

          else
          {
            v218 = sub_100035B80(v192, v193);
            if (os_log_type_enabled(v218, OS_LOG_TYPE_FAULT))
            {
              v241 = [objc_getProperty(v17 v219];
              *buf = 138413058;
              v267 = v29;
              v268 = 2112;
              *v269 = v241;
              *&v269[8] = 1024;
              *&v269[10] = v250;
              *&v269[14] = 2112;
              *&v269[16] = v249;
              _os_log_fault_impl(&_mh_execute_header, v218, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ (%d: %@)", buf, 0x26u);
            }

            if (qword_100117E88)
            {
              v220 = qword_100117E88;
            }

            else
            {
              v220 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v220);
          }
        }

        *__error() = v188;
        v11 = v249;
LABEL_275:

        goto LABEL_276;
      }

LABEL_67:
      v73 = v73 + 1;
    }

    while (v71 != v73);
    v78 = [v68 countByEnumeratingWithState:&v252 objects:v265 count:16];
    v71 = v78;
  }

  while (v78);

  v12 = v247;
  v11 = v249;
  v13 = v245;
  if (!v17)
  {
    goto LABEL_119;
  }

LABEL_276:
  v226 = [v12 rangeWithName:@"offsetIntoBinary"];
  v14 = v251;
  if (v226 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1000BDF14(v11, v250);
  }

  v228 = [v11 substringWithRange:{v226, v227}];
  v24 = sub_10009A270(v228);

LABEL_278:
LABEL_279:
  *a6 = v24;
LABEL_280:
  objc_autoreleasePoolPop(v14);

  return v17;
}

unint64_t sub_10009A270(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [v1 UTF8String];
  if (!v3)
  {
    v4 = [v1 dataUsingEncoding:4 allowLossyConversion:1];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_5;
    }

    v5 = v4;
    v3 = [v4 bytes];
  }

  v6 = strtoull(v3, 0, 0);
LABEL_5:
  objc_autoreleasePoolPop(v2);

  return v6;
}

uint64_t sub_10009A310(FILE *a1, int a2, int a3, int a4, int a5, const char *a6, uint64_t a7, const char *a8, int a9, int a10)
{
  v16 = "";
  if (a3)
  {
    v16 = "*";
  }

  fprintf(a1, "%*s", a2, v16);
  fprintf(a1, "%-*d", a5, a4);
  fputs(a6, a1);
  if (a7 != -1)
  {
    fprintf(a1, " [0x%llx]", a7);
  }

  if (a8)
  {
    fprintf(a1, " (%s)", a8);
  }

  if (a9)
  {
    fprintf(a1, " %d", a9);
    if (a9 != a10)
    {
      fprintf(a1, "-%d", a10);
    }
  }

  return fputc(10, a1);
}

uint64_t sub_10009A430(FILE *a1, int a2, int a3, int a4, int a5, const char *a6, uint64_t a7, int a8, int a9)
{
  v15 = "*";
  if (!a3)
  {
    v15 = "";
  }

  fprintf(a1, "%*s", a2, v15);
  if (a4 < 1)
  {
    if (a5 >= 1)
    {
      fprintf(a1, "%*s");
    }
  }

  else
  {
    fprintf(a1, "%-*d");
  }

  if (a6)
  {
    fprintf(a1, "<%s>", a6);
    if (a7)
    {
      fprintf(a1, " (%s)");
    }
  }

  else if (a7)
  {
    fprintf(a1, "<%s>");
  }

  if (a8)
  {
    fprintf(a1, " %d", a8);
    if (a8 != a9)
    {
      fprintf(a1, "-%d", a9);
    }
  }

  return fputc(10, a1);
}

void sub_10009A5FC(FILE *a1, int a2, void *a3)
{
  LODWORD(v3) = a2;
  v5 = a3;
  v6 = ftello(a1);
  if (v6 == -1)
  {
    sub_1000BE344();
  }

  v7 = v6;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10009B640;
  v44[3] = &unk_1001093D0;
  v44[4] = &v45;
  v44[5] = &v49;
  v8 = objc_retainBlock(v44);
  (v8[2])();
LABEL_3:
  v9 = 0;
  while (fgets((v50[3] + v9), *(v46 + 6) - v9, a1))
  {
    v10 = v50[3];
    v9 = strnlen(v10, *(v46 + 6));
    if (v10[v9 - 1] == 10)
    {
      v10[v9 - 1] = 0;
      v11 = [NSString alloc];
      v12 = [v11 initWithUTF8String:v50[3]];
      v3 = (v3 + 1);
      buf[0] = 0;
      v5[2](v5, v12, v3, buf);
      v13 = buf[0];

      if ((v13 & 1) == 0)
      {
        goto LABEL_3;
      }

      break;
    }

    (v8[2])(v8);
  }

  free(v50[3]);
  if (fseeko(a1, v7, 0))
  {
    if (byte_100117E80 == 1)
    {
      v14 = __error();
      v15 = *v14;
      v17 = sub_100035B80(v14, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *__error();
        v19 = __error();
        v20 = strerror(*v19);
        *buf = 136315906;
        v54 = "ret == 0";
        v55 = 2048;
        v56 = v7;
        v57 = 1024;
        v58 = v18;
        v59 = 2080;
        v60 = v20;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Unable to seek back to %lld after searching for load infos: %d (%s)", buf, 0x26u);
      }

      *__error() = v15;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 3)
    {
      v22 = *__error();
      v23 = *__error();
      v24 = __error();
      v25 = strerror(*v24);
      v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to seek back to %lld after searching for load infos: %d (%s)", "ret == 0", v7, v23, v25);
      v28 = v26;
      if (v26)
      {
        CStringPtr = CFStringGetCStringPtr(v26, 0x8000100u);
        if (CStringPtr)
        {
          v42 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x9252CE00uLL);
          CFStringGetCString(v28, CStringPtr, 1024, 0x8000100u);
          v42 = CStringPtr;
        }

        if (qword_100117E88)
        {
          v43 = qword_100117E88;
        }

        else
        {
          v43 = __stderrp;
        }

        fprintf(v43, "%s\n", CStringPtr);
        if (v42)
        {
          free(v42);
        }

        CFRelease(v28);
      }

      else
      {
        v29 = sub_100035B80(0, v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          v30 = *__error();
          v31 = __error();
          v32 = strerror(*v31);
          *buf = 136315906;
          v54 = "ret == 0";
          v55 = 2048;
          v56 = v7;
          v57 = 1024;
          v58 = v30;
          v59 = 2080;
          v60 = v32;
          _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Unable to format: %s: Unable to seek back to %lld after searching for load infos: %d (%s)", buf, 0x26u);
        }

        if (qword_100117E88)
        {
          v33 = qword_100117E88;
        }

        else
        {
          v33 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v33);
      }

      *__error() = v22;
    }

    v34 = *__error();
    v35 = __error();
    v36 = strerror(*v35);
    sub_100035A54("LookaheadLines", "SPTextualReportParser.m", 978, "%s: Unable to seek back to %lld after searching for load infos: %d (%s)", v37, v38, v39, v40, "ret == 0", v7, v34, v36);
    abort();
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
}

void sub_10009AADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10009AB3C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = [*(a1 + 32) firstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 56);
      v12 = v8;
      v13 = v10;
      v14 = [v13 rangeWithName:@"kernelDot"];
      if (v11 == 1)
      {
        v15 = [v13 rangeWithName:@"binaryIndex"];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          sub_1000BEA04(v12, a3);
        }

        v17 = [v12 substringWithRange:{v15, v16}];
        v18 = sub_10009A270(v17);
      }

      else
      {
        v18 = 0;
      }

      v31 = [v13 rangeWithName:@"startAddress"];
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v108 = 0;
      }

      else
      {
        v33 = [v12 substringWithRange:{v31, v32}];
        v108 = sub_10009A270(v33);
      }

      v34 = [v13 rangeWithName:@"endAddress"];
      if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v107 = 0;
      }

      else
      {
        v36 = [v12 substringWithRange:{v34, v35}];
        v107 = sub_10009A270(v36);
      }

      v37 = [v13 rangeWithName:@"bundleIdentifier"];
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = 0;
      }

      else
      {
        v39 = [v12 substringWithRange:{v37, v38}];
        v40 = v39;
      }

      v41 = [v13 rangeWithName:@"name"];
      v109 = a3;
      if (v41 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v43 = 0;
      }

      else
      {
        v43 = [v12 substringWithRange:{v41, v42}];
        v44 = v43;
      }

      v110 = a4;
      v45 = [v13 rangeWithName:@"version"];
      if (v45 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v47 = 0;
      }

      else
      {
        v47 = [v12 substringWithRange:{v45, v46}];
        v48 = v47;
      }

      v49 = [v13 rangeWithName:@"binaryUuid"];
      if (v49 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1000BE7EC(v12, a3);
      }

      v106 = v14;
      v113 = v18;
      v51 = [v12 substringWithRange:{v49, v50}];
      v52 = sub_10009B6E4(v51);
      v53 = v52;

      v54 = [v13 rangeWithName:@"segmentName"];
      if (v54 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v56 = 0;
      }

      else
      {
        v56 = [v12 substringWithRange:{v54, v55}];
        v57 = v56;
      }

      v58 = [v13 rangeWithName:@"binaryPath"];
      if (v58 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v60 = 0;
      }

      else
      {
        v60 = [v12 substringWithRange:{v58, v59}];
        v61 = v60;
      }

      v112 = v39;
      v111 = v43;
      v114 = v47;
      v62 = v52;
      v63 = v56;
      v64 = v60;
      if (!v62)
      {
        sub_1000BE5D4(v12, v109);
      }

      v65 = v64;
      if (*(a1 + 56) != 1 || v113 == [*(a1 + 40) count])
      {
        if ([v65 isAbsolutePath])
        {
          v91 = v65;
        }

        else
        {
          v91 = 0;
        }

        v92 = [SABinary binaryWithUUID:v62 absolutePath:v91];
        v93 = [v92 path];

        if (!v93 && v65)
        {
          [v92 addPath:v65];
        }

        v95 = v111;
        v94 = v112;
        v96 = sub_1000BC6FC([SPLoadInfo alloc], v92, v106 != 0x7FFFFFFFFFFFFFFFLL, v108, v107, v112, v111, v114, v63);
        [*(a1 + 40) addObject:v96];
      }

      else
      {
        if (byte_100117E80 == 1)
        {
          v66 = __error();
          v67 = *v66;
          v69 = sub_100035B80(v66, v68);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v101 = [*(a1 + 40) count];
            *buf = 134218754;
            *v116 = v101;
            *&v116[8] = 2048;
            *&v116[10] = v113;
            v117 = 1024;
            v118 = v109;
            v119 = 2112;
            v120 = v12;
            _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Parsing spindump text: corrupt condensed file, binary at position %lu has index %lu (%d: %@)", buf, 0x26u);
          }

          *__error() = v67;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v70 = *__error();
          v71 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: corrupt condensed file, binary at position %lu has index %lu (%d: %@)", [*(a1 + 40) count], v113, v109, v12);
          if (v71)
          {
            v73 = v71;
            CStringPtr = CFStringGetCStringPtr(v71, 0x8000100u);
            if (CStringPtr)
            {
              v75 = CStringPtr;
              v76 = 0;
            }

            else
            {
              v75 = malloc_type_calloc(0x400uLL, 1uLL, 0xC89B8028uLL);
              CFStringGetCString(v73, v75, 1024, 0x8000100u);
              v76 = v75;
            }

            if (qword_100117E88)
            {
              v97 = qword_100117E88;
            }

            else
            {
              v97 = __stderrp;
            }

            fprintf(v97, "%s\n", v75);
            if (v76)
            {
              free(v76);
            }

            CFRelease(v73);
          }

          else
          {
            v89 = sub_100035B80(0, v72);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
            {
              v105 = [*(a1 + 40) count];
              *buf = 134218754;
              *v116 = v105;
              *&v116[8] = 2048;
              *&v116[10] = v113;
              v117 = 1024;
              v118 = v109;
              v119 = 2112;
              v120 = v12;
              _os_log_fault_impl(&_mh_execute_header, v89, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: corrupt condensed file, binary at position %lu has index %lu (%d: %@)", buf, 0x26u);
            }

            if (qword_100117E88)
            {
              v90 = qword_100117E88;
            }

            else
            {
              v90 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v90);
          }

          *__error() = v70;
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        v95 = v111;
        *v110 = 1;
        v94 = v112;
      }
    }

    else if ([v8 length])
    {
      if (byte_100117E80 == 1)
      {
        v19 = __error();
        v20 = *v19;
        v22 = sub_100035B80(v19, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000BEC1C();
        }

        *__error() = v20;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v24 = *__error();
        v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected line in load infos, ignoring (%d: %@)", a3, v8);
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
            v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xC242A947uLL);
            CFStringGetCString(v27, v29, 1024, 0x8000100u);
            v30 = v29;
          }

          if (qword_100117E88)
          {
            v100 = qword_100117E88;
          }

          else
          {
            v100 = __stderrp;
          }

          fprintf(v100, "%s\n", v29);
          if (v30)
          {
            free(v30);
          }

          CFRelease(v27);
        }

        else
        {
          v98 = sub_100035B80(0, v26);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
          {
            sub_1000BEC90();
          }

          if (qword_100117E88)
          {
            v99 = qword_100117E88;
          }

          else
          {
            v99 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v99);
        }

        *__error() = v24;
      }
    }

    else
    {
      if (![*(a1 + 40) count])
      {
        if (byte_100117E80 == 1)
        {
          v77 = __error();
          v78 = *v77;
          v80 = sub_100035B80(v77, v79);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v116 = a3;
            *&v116[4] = 2112;
            *&v116[6] = v8;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "Parsing spindump text: No load infos, ended at line (%d: %@)", buf, 0x12u);
          }

          *__error() = v78;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 1)
        {
          v82 = *__error();
          v83 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No load infos, ended at line (%d: %@)", a3, v8);
          if (v83)
          {
            v85 = v83;
            v86 = CFStringGetCStringPtr(v83, 0x8000100u);
            if (v86)
            {
              v87 = v86;
              v88 = 0;
            }

            else
            {
              v87 = malloc_type_calloc(0x400uLL, 1uLL, 0xC34195DAuLL);
              CFStringGetCString(v85, v87, 1024, 0x8000100u);
              v88 = v87;
            }

            if (qword_100117E88)
            {
              v104 = qword_100117E88;
            }

            else
            {
              v104 = __stderrp;
            }

            fprintf(v104, "%s\n", v87);
            if (v88)
            {
              free(v88);
            }

            CFRelease(v85);
          }

          else
          {
            v102 = sub_100035B80(0, v84);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
            {
              sub_1000BED04();
            }

            if (qword_100117E88)
            {
              v103 = qword_100117E88;
            }

            else
            {
              v103 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v103);
          }

          *__error() = v82;
        }
      }

      *a4 = 1;
    }
  }

  else if ([v7 containsString:@"Binary Images:"])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}