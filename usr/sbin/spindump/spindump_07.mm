void sub_1000B9B94()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B9C18(char a1, NSObject *a2)
{
  v2 = "";
  if (a1)
  {
    v2 = "non-";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unable to find existing %sWindowServer-based sampled process", &v3, 0xCu);
}

void sub_1000B9CA8()
{
  sub_1000461C8();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000B9D18(int a1)
{
  sub_100035B20(a1);
  sub_1000461C8();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B9DDC(int a1)
{
  sub_100035B20(a1);
  sub_1000461C8();
  sub_10005396C();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000B9E84()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000B9EF4()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000B9F78()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA030()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA11C()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA1A0()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA28C()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA310()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA394()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BA404()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA488()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA574()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538A4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA5F8()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA67C()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BA6EC()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_1000538B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA770()
{
  sub_1000462C0();
  sub_100035B20(v0);
  sub_1000537F4();
  sub_100053884();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000BA7F4(uint64_t a1, void *a2)
{
  v5 = sub_10008EC8C(a1, a2);
  *v4 = 67109120;
  *v3 = v5;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "pid %d doesn't exist", v4, 8u);
}

void sub_1000BA850(uint64_t a1, void *a2)
{
  v5 = sub_10008EC8C(a1, a2);
  *v4 = 67109120;
  *v3 = v5;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Unable to format: pid %d doesn't exist", v4, 8u);
}

void sub_1000BA8AC()
{
  sub_100055190();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000BA920()
{
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000BAA30(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100117E80 == 1)
  {
    v9 = __error();
    v10 = *v9;
    v12 = sub_100035B80(v9, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      *buf = 136315394;
      v31 = "_numClientsSampling == 0";
      v32 = 1024;
      v33 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Still have %d clients sampling when dealloc'ed", buf, 0x12u);
    }

    *__error() = v10;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v15 = *__error();
    v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Still have %d clients sampling when dealloc'ed", "_numClientsSampling == 0", *a1);
    if (v16)
    {
      v23 = v16;
      v24 = sub_100060DC4(v16);
      if (v24)
      {
        v27 = v24;
        v28 = 0;
      }

      else
      {
        v25 = sub_10008ECAC();
        v27 = malloc_type_calloc(v25, v26, 0x76F48353uLL);
        sub_100077F94(v23, v27);
        v28 = v27;
      }

      if (qword_100117E88)
      {
        v29 = qword_100117E88;
      }

      else
      {
        v29 = __stderrp;
      }

      fprintf(v29, "%s\n", v27);
      if (v28)
      {
        free(v28);
      }

      CFRelease(v23);
    }

    else
    {
      v18 = sub_100035B80(0, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = *a1;
        *buf = 136315394;
        v31 = "_numClientsSampling == 0";
        v32 = 1024;
        v33 = v19;
        _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Unable to format: %s: Still have %d clients sampling when dealloc'ed", buf, 0x12u);
      }

      sub_10008ECB8();
      sub_100060E10("UNABLE TO FORMAT STRING\n", v20, v21, v22);
    }

    *__error() = v15;
  }

  sub_100035A54("[SPStackshotProvider dealloc]", "SPSampleProvider.m", 480, "%s: Still have %d clients sampling when dealloc'ed", a5, a6, a7, a8, "_numClientsSampling == 0", *a1);
  abort();
}

void sub_1000BAD18(uint64_t a1, _DWORD *a2, int a3)
{
  *a2 = 136315650;
  sub_10008EC58(a1, a2, a3);
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: Unable to create sampling thread: %d (%s)", v3, 0x1Cu);
}

void sub_1000BAD6C(uint64_t a1, _DWORD *a2, int a3)
{
  *a2 = 136315650;
  sub_10008EC58(a1, a2, a3);
  _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Unable to format: %s: Unable to create sampling thread: %d (%s)", v3, 0x1Cu);
}

int *sub_1000BADC0()
{
  v1 = __error();
  v2 = *v1;
  v4 = sub_100035B80(v1, v3);
  if (sub_100060EB0(v4))
  {
    v25[0] = 0;
    sub_10008EC24(&_mh_execute_header, v5, v6, "failed to set the sampling thread to a fixed-priority policy", v25);
  }

  result = __error();
  *result = v2;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v9 = *__error();
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"failed to set the sampling thread to a fixed-priority policy");
    if (v10)
    {
      v12 = v10;
      if (sub_100060DC4(v10))
      {
        v13 = 0;
      }

      else
      {
        v20 = sub_10008ECAC();
        v22 = malloc_type_calloc(v20, v21, 0xA71AFBB0uLL);
        sub_100046264(v22);
        v13 = v2;
      }

      v23 = sub_100078010(qword_100117E88);
      fprintf(v23, "%s\n", v24);
      if (v13)
      {
        free(v13);
      }

      CFRelease(v12);
    }

    else
    {
      v14 = sub_100035B80(0, v11);
      if (sub_100060EB0(v14))
      {
        v26[0] = 0;
        sub_10008EC24(&_mh_execute_header, v15, v16, "Unable to format: failed to set the sampling thread to a fixed-priority policy", v26);
      }

      sub_10008ECB8();
      sub_100060E10("UNABLE TO FORMAT STRING\n", v17, v18, v19);
    }

    result = __error();
    *result = v9;
  }

  return result;
}

int *sub_1000BAF50()
{
  v1 = __error();
  v2 = *v1;
  v4 = sub_100035B80(v1, v3);
  if (sub_100060EB0(v4))
  {
    v25[0] = 0;
    sub_10008EC24(&_mh_execute_header, v5, v6, "failed to set sampling thread's priority", v25);
  }

  result = __error();
  *result = v2;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v9 = *__error();
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"failed to set sampling thread's priority");
    if (v10)
    {
      v12 = v10;
      if (sub_100060DC4(v10))
      {
        v13 = 0;
      }

      else
      {
        v20 = sub_10008ECAC();
        v22 = malloc_type_calloc(v20, v21, 0x6D1B51D4uLL);
        sub_100046264(v22);
        v13 = v2;
      }

      v23 = sub_100078010(qword_100117E88);
      fprintf(v23, "%s\n", v24);
      if (v13)
      {
        free(v13);
      }

      CFRelease(v12);
    }

    else
    {
      v14 = sub_100035B80(0, v11);
      if (sub_100060EB0(v14))
      {
        v26[0] = 0;
        sub_10008EC24(&_mh_execute_header, v15, v16, "Unable to format: failed to set sampling thread's priority", v26);
      }

      sub_10008ECB8();
      sub_100060E10("UNABLE TO FORMAT STRING\n", v17, v18, v19);
    }

    result = __error();
    *result = v9;
  }

  return result;
}

void sub_1000BB170(_DWORD *a1, uint64_t a2)
{
  *a1 = 136315394;
  sub_10008EC78(a1, a2, "stackshotData.length < 4294967295U");
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: bad stackshot data length %lu", v3, 0x16u);
}

void sub_1000BB1C0(_DWORD *a1, uint64_t a2)
{
  *a1 = 136315394;
  sub_10008EC78(a1, a2, "stackshotData.length < 4294967295U");
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Unable to format: %s: bad stackshot data length %lu", v3, 0x16u);
}

void sub_1000BB384()
{
  v1 = __error();
  v2 = *v1;
  v4 = sub_100035B80(v1, v3);
  if (sub_100060EB0(v4))
  {
    v25[0] = 0;
    sub_10008EC24(&_mh_execute_header, v5, v6, "shared instance has 0 references", v25);
  }

  *__error() = v2;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v8 = *__error();
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"shared instance has 0 references");
    if (v9)
    {
      v11 = v9;
      if (sub_100060DC4(v9))
      {
        v12 = 0;
      }

      else
      {
        v19 = sub_10008ECAC();
        v21 = malloc_type_calloc(v19, v20, 0xC44C137AuLL);
        sub_100046264(v21);
        v12 = v2;
      }

      v22 = sub_100078010(qword_100117E88);
      fprintf(v22, "%s\n", v24);
      if (v12)
      {
        free(v12);
      }

      CFRelease(v11);
    }

    else
    {
      v13 = sub_100035B80(0, v10);
      if (sub_100060EB0(v13))
      {
        v26[0] = 0;
        sub_10008EC24(&_mh_execute_header, v14, v15, "Unable to format: shared instance has 0 references", v26);
      }

      sub_10008ECB8();
      sub_100060E10("UNABLE TO FORMAT STRING\n", v16, v17, v18);
    }

    *__error() = v8;
  }

  v23 = qword_100117E50;
  qword_100117E50 = 0;
}

void sub_1000BB58C(void *a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No one's sampling when requested to adjust sampling target to %{public}@ %d", buf, 0x12u);
}

void sub_1000BB5F8(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to format: No one's sampling when requested to adjust sampling target to %@ %d", buf, 0x12u);
}

void sub_1000BB660()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BB6D0()
{
  sub_100055190();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Already sampling with %uus-interval stackshots and %us-interval occasional data", v2, 0xEu);
}

void sub_1000BB75C()
{
  sub_100055190();
  v3 = 1024;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Unable to format: Already sampling with %uus-interval stackshots and %us-interval occasional data", v2, 0xEu);
}

void sub_1000BB7E8()
{
  sub_100055190();
  sub_10005393C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000BB8C4()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_1000BB934(int *a1)
{
  v2 = __error();
  v3 = *v2;
  v5 = sub_100035B80(v2, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *v24 = 0;
    sub_10008EC40(&_mh_execute_header, v5, v6, "shared instance isn't self", v24);
  }

  *__error() = v3;
  if (byte_100117E81 != 1 || dword_100117510 > 4)
  {
    return 1;
  }

  v9 = *__error();
  v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"shared instance isn't self");
  if (v10)
  {
    v12 = v10;
    v13 = sub_100060DC4(v10);
    if (v13)
    {
      v14 = v13;
      v15 = 0;
    }

    else
    {
      v21 = sub_10008ECAC();
      v14 = malloc_type_calloc(v21, v22, 0x71A30AC7uLL);
      sub_100077F94(v12, v14);
      v15 = v14;
    }

    if (qword_100117E88)
    {
      v23 = qword_100117E88;
    }

    else
    {
      v23 = __stderrp;
    }

    fprintf(v23, "%s\n", v14);
    if (v15)
    {
      free(v15);
    }

    CFRelease(v12);
  }

  else
  {
    v16 = sub_100035B80(0, v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *v25 = 0;
      sub_10008EC40(&_mh_execute_header, v16, v17, "Unable to format: shared instance isn't self", v25);
    }

    sub_10008ECB8();
    sub_100060E10("UNABLE TO FORMAT STRING\n", v18, v19, v20);
  }

  result = 0;
  *a1 = v9;
  return result;
}

int *sub_1000BBBD4(uint64_t a1, uint64_t a2)
{
  v4 = __error();
  v5 = *v4;
  v7 = sub_100035B80(v4, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_100077FE4();
    sub_100078040(&_mh_execute_header, v24, v25, "filePath %s cut off with date (needed %zu chars)", v26, v27, v28, v29, v36, v38);
  }

  result = __error();
  *result = v5;
  if (byte_100117E81 == 1 && dword_100117510 <= 4)
  {
    v10 = *__error();
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"filePath %s cut off with date (needed %zu chars)", a1, a2);
    if (v11)
    {
      v13 = v11;
      v14 = sub_100060DC4(v11);
      if (v14)
      {
        v15 = v14;
        v16 = 0;
      }

      else
      {
        v21 = sub_10008ECAC();
        v15 = malloc_type_calloc(v21, v22, 0x67BC2E96uLL);
        sub_100077F94(v13, v15);
        v16 = v15;
      }

      if (qword_100117E88)
      {
        v23 = qword_100117E88;
      }

      else
      {
        v23 = __stderrp;
      }

      fprintf(v23, "%s\n", v15);
      if (v16)
      {
        free(v16);
      }

      CFRelease(v13);
    }

    else
    {
      v17 = sub_100035B80(0, v12);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_100077FE4();
        sub_100078040(&_mh_execute_header, v30, v31, "Unable to format: filePath %s cut off with date (needed %zu chars)", v32, v33, v34, v35, v37, v39);
      }

      sub_10008ECB8();
      sub_100060E10("UNABLE TO FORMAT STRING\n", v18, v19, v20);
    }

    result = __error();
    *result = v10;
  }

  return result;
}

void sub_1000BBE40(uint64_t a1, NSObject *a2)
{
  __error();
  v3 = __error();
  strerror(*v3);
  sub_100060B34();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to open %s to save stackshots: %d (%s)", v4, 0x1Cu);
}

void sub_1000BBEE4(uint64_t a1, NSObject *a2)
{
  __error();
  v3 = __error();
  strerror(*v3);
  sub_100060B34();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: Unable to open %s to save stackshots: %d (%s)", v4, 0x1Cu);
}

void sub_1000BBFF0()
{
  sub_100053948();
  sub_1000586BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000BC060()
{
  sub_100060C74();
  sub_100078C90();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void sub_1000BC0D4()
{
  sub_100060C74();
  sub_100078C90();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void sub_1000BC274()
{
  sub_100060C74();
  sub_100078C90();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_1000BC2E8()
{
  sub_100060C74();
  sub_100078C90();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

id sub_1000BC444()
{
  sub_10009CE54();
  v6 = v5;
  v7 = v0;
  v8 = v1;
  if (v2)
  {
    v9 = v2[6];
    if (v9)
    {
      v20 = v2;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            if (sub_1000BC614())
            {
              v18 = v15;

              goto LABEL_15;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v2 = v20;
    }

    else
    {
      v16 = objc_alloc_init(NSMutableArray);
      v17 = v2[6];
      v2[6] = v16;
    }

    v18 = sub_10008F924(SPTreeNode, v2, v4, v6, v3, v7, v8);
    [v2[6] addObject:v18];
  }

  else
  {
    v18 = 0;
  }

LABEL_15:

  return v18;
}

uint64_t sub_1000BC614()
{
  sub_10009CE54();
  v6 = v5;
  v7 = v0;
  v8 = v1;
  if (v2)
    v2 = *(v2 + 8) == v4 && *(v2 + 32) == v3 && sub_10008FA38(*(v2 + 40), v7) && sub_10008FA38(*(v2 + 24), v8) && (*(v2 + 32) == -1 || ([*(v2 + 16) firstObject], v9 = {;
  }

  return v2;
}

id *sub_1000BC6FC(id *a1, void *a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v17 = a2;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (a1)
  {
    v32.receiver = a1;
    v32.super_class = SPLoadInfo;
    v22 = objc_msgSendSuper2(&v32, "init");
    a1 = v22;
    if (v22)
    {
      objc_storeStrong(v22 + 5, a2);
      *(a1 + 32) = a3;
      a1[7] = a4;
      a1[8] = a5;
      v23 = [v18 copy];
      v24 = a1[1];
      a1[1] = v23;

      v25 = [v19 copy];
      v26 = a1[2];
      a1[2] = v25;

      v27 = [v20 copy];
      v28 = a1[3];
      a1[3] = v27;

      v29 = [v21 copy];
      v30 = a1[6];
      a1[6] = v29;
    }
  }

  return a1;
}

id *sub_1000BC830(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[5] bundleIdentifier];
    v3 = v2;
    if (!v2)
    {
      v3 = v1[1];
    }

    v1 = v3;
  }

  return v1;
}

id *sub_1000BC890(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[5] name];
    v3 = v2;
    if (!v2)
    {
      v3 = v1[2];
    }

    v1 = v3;
  }

  return v1;
}

id sub_1000BC8F0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = v2;
      goto LABEL_17;
    }

    v4 = [*(a1 + 40) bundleVersion];
    v5 = [*(a1 + 40) bundleShortVersion];
    v6 = [*(a1 + 40) binaryVersion];
    v7 = v6;
    if (!v5 && !v4 && !v6)
    {
      v3 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v8 = +[NSMutableString string];
    v3 = v8;
    if (v5)
    {
      [v8 appendString:v5];
      if (!(v4 | v7))
      {
        goto LABEL_16;
      }

      [v3 appendString:@" "];
    }

    if (v4 | v7)
    {
      if (v4)
      {
        v9 = v4;
      }

      else
      {
        v9 = v7;
      }

      [v3 appendFormat:@"(%@)", v9];
    }

    goto LABEL_16;
  }

  v3 = 0;
LABEL_17:

  return v3;
}

int64_t sub_1000BCA0C(id a1, SPTreeNode *a2, SPTreeNode *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    count = v4->_count;
    if (v5)
    {
LABEL_3:
      v7 = v5->_count;
      goto LABEL_4;
    }
  }

  else
  {
    count = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (count < v7)
  {
    v8 = 1;
    goto LABEL_12;
  }

  if (v4)
  {
    v9 = v4->_count;
    if (v5)
    {
LABEL_8:
      v10 = v5->_count;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_9:
  if (v9 <= v10)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

LABEL_12:

  return v8;
}

uint64_t sub_1000BCA9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 56);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v4 = v3 > v2;
  if (v3 >= v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void sub_1000BCAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v9 = __error();
    v10 = *v9;
    v12 = sub_100035B80(v9, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "bodies || angleBracketContents || stateInfo";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: No frame bodies, state, nor angle bracket contents", buf, 0xCu);
    }

    *__error() = v10;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v14 = *__error();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No frame bodies, state, nor angle bracket contents", "bodies || angleBracketContents || stateInfo");
    if (v15)
    {
      v21 = v15;
      v22 = sub_100060DC4(v15);
      if (v22)
      {
        v8 = v22;
        v24 = 0;
      }

      else
      {
        v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x9EF20C4EuLL);
        sub_100046264(v23);
        v24 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v25 = qword_100117E88;
      }

      else
      {
        v25 = __stderrp;
      }

      fprintf(v25, "%s\n", v8);
      if (v24)
      {
        free(v24);
      }

      CFRelease(v21);
    }

    else
    {
      v17 = sub_100035B80(0, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v27 = "bodies || angleBracketContents || stateInfo";
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Unable to format: %s: No frame bodies, state, nor angle bracket contents", buf, 0xCu);
      }

      if (qword_100117E88)
      {
        v20 = qword_100117E88;
      }

      else
      {
        v20 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v18, v19, v20);
    }

    *__error() = v14;
  }

  sub_100035A54("+[SPTreeNode nodeWithParent:isKernel:bodies:address:stateInfo:angleBracketContents:]", "SPTextualReportParser.m", 70, "%s: No frame bodies, state, nor angle bracket contents", a5, a6, a7, a8, "bodies || angleBracketContents || stateInfo");
  abort();
}

void sub_1000BCCCC(void *a1, void *a2)
{
  if (byte_100117E80 == 1)
  {
    v5 = __error();
    v6 = *v5;
    v8 = sub_100035B80(v5, v7);
    if (sub_10009CE24(v8))
    {
      v9 = [a1 debugDescription];
      v10 = [v9 UTF8String];
      v11 = [a2 debugDescription];
      *buf = 136315650;
      v44 = "!(bodies && angleBracketContents)";
      v45 = 2080;
      v46 = v10;
      v47 = 2080;
      v48 = [v11 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: bodies (%s) and angle bracket contents (%s)", buf, 0x20u);
    }

    *__error() = v6;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v13 = *__error();
    v14 = [a1 debugDescription];
    v15 = [v14 UTF8String];
    v16 = [a2 debugDescription];
    v42 = [v16 UTF8String];
    v41 = "!(bodies && angleBracketContents)";
    v18 = sub_10009CE3C(v42, v17, @"%s: bodies (%s) and angle bracket contents (%s)");

    if (v18)
    {
      v29 = sub_100060DC4(v18);
      if (v29)
      {
        v14 = v29;
        v31 = 0;
      }

      else
      {
        v30 = malloc_type_calloc(0x400uLL, 1uLL, 0xB491877uLL);
        sub_10009CCA4(v30);
        v31 = v14;
      }

      if (qword_100117E88)
      {
        v32 = qword_100117E88;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v14);
      if (v31)
      {
        free(v31);
      }

      CFRelease(v18);
    }

    else
    {
      v21 = sub_100035B80(v19, v20);
      if (sub_10009CE0C(v21))
      {
        v22 = [a1 debugDescription];
        v23 = [v22 UTF8String];
        v24 = [a2 debugDescription];
        v25 = [v24 UTF8String];
        *buf = 136315650;
        v44 = "!(bodies && angleBracketContents)";
        v45 = 2080;
        v46 = v23;
        v47 = 2080;
        v48 = v25;
        _os_log_fault_impl(&_mh_execute_header, 0, OS_LOG_TYPE_FAULT, "Unable to format: %s: bodies (%s) and angle bracket contents (%s)", buf, 0x20u);
      }

      if (qword_100117E88)
      {
        v28 = qword_100117E88;
      }

      else
      {
        v28 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v26, v27, v28);
    }

    *__error() = v13;
  }

  v33 = [a1 debugDescription];
  v34 = [v33 UTF8String];
  v35 = [a2 debugDescription];
  v36 = [v35 UTF8String];
  sub_100035A54("+[SPTreeNode nodeWithParent:isKernel:bodies:address:stateInfo:angleBracketContents:]", "SPTextualReportParser.m", 69, "%s: bodies (%s) and angle bracket contents (%s)", v37, v38, v39, v40, "!(bodies && angleBracketContents)", v34, v36);

  abort();
}

void sub_1000BCFF8()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_100060B34();
  sub_100060CC4();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x1Cu);
}

void sub_1000BD098()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_100060B34();
  sub_100060CC4();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x1Cu);
}

void sub_1000BD1AC()
{
  sub_10006D344();
  sub_100060DF8(v0, v1, v2, 1.5047e-36);
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Parsing spindump text requires a seekable file: %d (%s)", v3, 0x12u);
}

void sub_1000BD1F0()
{
  sub_10006D344();
  sub_100060DF8(v0, v1, v2, 1.5047e-36);
  _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text requires a seekable file: %d (%s)", v3, 0x12u);
}

void sub_1000BD3D4()
{
  sub_10006D344();
  *v0 = 136315650;
  sub_10008EC58(v1, v0, v2);
  sub_10009CDA0(&_mh_execute_header, "%s: frame match with no count and whitespace (%d: %s)", v3, v4);
}

void sub_1000BD418()
{
  sub_10006D344();
  *v0 = 136315650;
  sub_10008EC58(v1, v0, v2);
  sub_10009CD84(&_mh_execute_header, "Unable to format: %s: frame match with no count and whitespace (%d: %s)", v3, v4);
}

void sub_1000BD45C()
{
  sub_10006D344();
  *v0 = 136315650;
  sub_10008EC58(v1, v0, v2);
  sub_10009CDA0(&_mh_execute_header, "%s: frame match with no count (%d: %s)", v3, v4);
}

void sub_1000BD4A0()
{
  sub_10006D344();
  *v0 = 136315650;
  sub_10008EC58(v1, v0, v2);
  sub_10009CD84(&_mh_execute_header, "Unable to format: %s: frame match with no count (%d: %s)", v3, v4);
}

void sub_1000BD4E4()
{
  sub_10006D344();
  *v0 = 136315650;
  sub_10008EC58(v1, v0, v2);
  sub_10009CDA0(&_mh_execute_header, "%s: Non-frame line has count but no indent level (%d: %s)", v3, v4);
}

void sub_1000BD528()
{
  sub_10006D344();
  *v0 = 136315650;
  sub_10008EC58(v1, v0, v2);
  sub_10009CD84(&_mh_execute_header, "Unable to format: %s: Non-frame line has count but no indent level (%d: %s)", v3, v4);
}

void sub_1000BD56C(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  *a2 = 136315394;
  sub_10009CC90(a1, a2, "heaviestNode.angleBracketContents || heaviestNode.stateInfo");
  sub_10009CDE8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000BD5C8(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  *a2 = 136315394;
  sub_10009CC90(a1, a2, "heaviestNode.angleBracketContents || heaviestNode.stateInfo");
  sub_10009CDDC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000BD68C(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315394;
  sub_10009CC90(a1, a2, "regex");
  sub_10009CDE8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000BD6D8(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315394;
  sub_10009CC90(a1, a2, "regex");
  sub_10009CDDC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000BD7F4()
{
  v1 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v2 = __error();
    v3 = *v2;
    v5 = sub_100035B80(v2, v4);
    if (sub_10009CE80(v5))
    {
      sub_10009CDF4();
      sub_10009CD64(&_mh_execute_header, v6, v7, "%s: bufSize overflow (%d)", v8, v9, v10, v11, v36, v37);
    }

    *__error() = v3;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v13 = *__error();
    sub_10009CE6C();
    v15 = CFStringCreateWithFormat(v14, 0, @"%s: bufSize overflow (%d)");
    if (v15)
    {
      v27 = v15;
      v28 = sub_100060DC4(v15);
      if (v28)
      {
        v1 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x6F14803CuLL);
        sub_1000628C4(v29);
        v30 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v1);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v27);
    }

    else
    {
      v17 = sub_100035B80(0, v16);
      if (sub_1000629CC(v17))
      {
        sub_10009CDF4();
        sub_100078060(&_mh_execute_header, v18, v19, "Unable to format: %s: bufSize overflow (%d)", v20, v21, v22, v23, v36, v37);
      }

      if (qword_100117E88)
      {
        v26 = qword_100117E88;
      }

      else
      {
        v26 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v24, v25, v26);
    }

    *__error() = v13;
  }

  sub_10009CE6C();
  sub_100035A54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]_block_invoke", "SPTextualReportParser.m", 251, "%s: bufSize overflow (%d)", v32, v33, v34, v35);
  abort();
}

void sub_1000BDA04()
{
  v1 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v2 = __error();
    v3 = *v2;
    v5 = sub_100035B80(v2, v4);
    if (sub_10009CE80(v5))
    {
      sub_10009CDF4();
      sub_10009CD64(&_mh_execute_header, v6, v7, "%s: Unable to allocate %d buffer", v8, v9, v10, v11, v36, v37);
    }

    *__error() = v3;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v13 = *__error();
    sub_10009CE6C();
    v15 = CFStringCreateWithFormat(v14, 0, @"%s: Unable to allocate %d buffer");
    if (v15)
    {
      v27 = v15;
      v28 = sub_100060DC4(v15);
      if (v28)
      {
        v1 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x29DCA47uLL);
        sub_1000628C4(v29);
        v30 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v1);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v27);
    }

    else
    {
      v17 = sub_100035B80(0, v16);
      if (sub_1000629CC(v17))
      {
        sub_10009CDF4();
        sub_100078060(&_mh_execute_header, v18, v19, "Unable to format: %s: Unable to allocate %d buffer", v20, v21, v22, v23, v36, v37);
      }

      if (qword_100117E88)
      {
        v26 = qword_100117E88;
      }

      else
      {
        v26 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v24, v25, v26);
    }

    *__error() = v13;
  }

  sub_10009CE6C();
  sub_100035A54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]_block_invoke", "SPTextualReportParser.m", 254, "%s: Unable to allocate %d buffer", v32, v33, v34, v35);
  abort();
}

void sub_1000BDC14()
{
  sub_10009CCCC();
  sub_10009CDE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000BDC88()
{
  sub_10009CCCC();
  sub_10009CDDC();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000BE344()
{
  if (byte_100117E80 == 1)
  {
    v0 = __error();
    v1 = *v0;
    v3 = sub_100035B80(v0, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __error();
      v4 = __error();
      strerror(*v4);
      sub_10009CE98();
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: ftello failed: %d (%s)", buf, 0x1Cu);
    }

    *__error() = v1;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v6 = *__error();
    v7 = *__error();
    v8 = __error();
    v9 = strerror(*v8);
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: ftello failed: %d (%s)", "pos != -1", v7, v9);
    v12 = v10;
    if (v10)
    {
      v25 = sub_100060DC4(v10);
      if (!v25)
      {
        v26 = malloc_type_calloc(0x400uLL, 1uLL, 0x7EF3DC29uLL);
        sub_100046264(v26);
      }

      if (qword_100117E88)
      {
        v27 = qword_100117E88;
      }

      else
      {
        v27 = __stderrp;
      }

      fprintf(v27, "%s\n", v25);
      CFRelease(v12);
    }

    else
    {
      v13 = sub_100035B80(0, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __error();
        v14 = __error();
        strerror(*v14);
        sub_10009CE98();
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Unable to format: %s: ftello failed: %d (%s)", buf, 0x1Cu);
      }

      if (qword_100117E88)
      {
        v17 = qword_100117E88;
      }

      else
      {
        v17 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v15, v16, v17);
    }

    *__error() = v6;
  }

  v18 = *__error();
  v19 = __error();
  v20 = strerror(*v19);
  sub_100035A54("LookaheadLines", "SPTextualReportParser.m", 936, "%s: ftello failed: %d (%s)", v21, v22, v23, v24, "pos != -1", v18, v20);
  abort();
}

void sub_1000BEC1C()
{
  sub_10009CCCC();
  sub_10009CDE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000BEC90()
{
  sub_10009CCCC();
  sub_10009CDDC();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000BED04()
{
  sub_10009CCCC();
  sub_10009CDDC();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000BED78()
{
  v1 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v2 = __error();
    v3 = *v2;
    v5 = sub_100035B80(v2, v4);
    if (sub_10009CE80(v5))
    {
      sub_10009CDF4();
      sub_10009CD64(&_mh_execute_header, v6, v7, "%s: bufSize overflow (%d)", v8, v9, v10, v11, v36, v37);
    }

    *__error() = v3;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v13 = *__error();
    sub_10009CE6C();
    v15 = CFStringCreateWithFormat(v14, 0, @"%s: bufSize overflow (%d)");
    if (v15)
    {
      v27 = v15;
      v28 = sub_100060DC4(v15);
      if (v28)
      {
        v1 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x97648203uLL);
        sub_1000628C4(v29);
        v30 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v1);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v27);
    }

    else
    {
      v17 = sub_100035B80(0, v16);
      if (sub_1000629CC(v17))
      {
        sub_10009CDF4();
        sub_100078060(&_mh_execute_header, v18, v19, "Unable to format: %s: bufSize overflow (%d)", v20, v21, v22, v23, v36, v37);
      }

      if (qword_100117E88)
      {
        v26 = qword_100117E88;
      }

      else
      {
        v26 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v24, v25, v26);
    }

    *__error() = v13;
  }

  sub_10009CE6C();
  sub_100035A54("LookaheadLines_block_invoke", "SPTextualReportParser.m", 947, "%s: bufSize overflow (%d)", v32, v33, v34, v35);
  abort();
}

void sub_1000BEF88()
{
  v1 = &off_1000C5000;
  if (byte_100117E80 == 1)
  {
    v2 = __error();
    v3 = *v2;
    v5 = sub_100035B80(v2, v4);
    if (sub_10009CE80(v5))
    {
      sub_10009CDF4();
      sub_10009CD64(&_mh_execute_header, v6, v7, "%s: Unable to allocate %d buffer", v8, v9, v10, v11, v36, v37);
    }

    *__error() = v3;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v13 = *__error();
    sub_10009CE6C();
    v15 = CFStringCreateWithFormat(v14, 0, @"%s: Unable to allocate %d buffer");
    if (v15)
    {
      v27 = v15;
      v28 = sub_100060DC4(v15);
      if (v28)
      {
        v1 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x126F64F7uLL);
        sub_1000628C4(v29);
        v30 = &off_1000C5000;
      }

      if (qword_100117E88)
      {
        v31 = qword_100117E88;
      }

      else
      {
        v31 = __stderrp;
      }

      fprintf(v31, "%s\n", v1);
      if (v30)
      {
        free(v30);
      }

      CFRelease(v27);
    }

    else
    {
      v17 = sub_100035B80(0, v16);
      if (sub_1000629CC(v17))
      {
        sub_10009CDF4();
        sub_100078060(&_mh_execute_header, v18, v19, "Unable to format: %s: Unable to allocate %d buffer", v20, v21, v22, v23, v36, v37);
      }

      if (qword_100117E88)
      {
        v26 = qword_100117E88;
      }

      else
      {
        v26 = __stderrp;
      }

      sub_100060E10("UNABLE TO FORMAT STRING\n", v24, v25, v26);
    }

    *__error() = v13;
  }

  sub_10009CE6C();
  sub_100035A54("LookaheadLines_block_invoke", "SPTextualReportParser.m", 950, "%s: Unable to allocate %d buffer", v32, v33, v34, v35);
  abort();
}

void sub_1000BF198(void *a1, NSObject *a2)
{
  v4 = [a1 uuid];
  v5 = [a1 path];
  v6 = v5;
  if (!v5)
  {
    v6 = [a1 name];
  }

  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unable to find symbol owner for %@ %@", &v7, 0x16u);
  if (!v5)
  {
  }
}

void sub_1000BF284(uint64_t a1, id *a2)
{
  v3 = [*a2 uuid];
  v4 = [*a2 name];
  sub_10009CDBC();
  sub_100060CC4();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x20u);
}

void sub_1000BF33C(uint64_t a1, id *a2)
{
  v3 = [*a2 uuid];
  v4 = [*a2 name];
  sub_10009CDBC();
  sub_100060CC4();
  _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x20u);
}