int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_1000010A4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.aned.storageAsyncIO", v1);
  v3 = qword_10000C8B8;
  qword_10000C8B8 = v2;

  qword_10000C8C0 = +[_ANELog daemon];

  _objc_release_x1();
}

void sub_100001A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001A98(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_10000C8C0);
  v13 = 0;
  v14 = 0;
  LODWORD(v14) = a1[17];
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v13) == -1)
  {
    v4 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
    {
      v5 = a1[23];
      v6 = v4;
      v7 = NSStringFromSelector(v5);
      v8 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 138412802;
      *v16 = v7;
      *&v16[8] = 1024;
      *&v16[10] = v8;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: fcntl(F_RDADVISE). errno=%d : %s", buf, 0x1Cu);
    }
  }

  kdebug_trace();
  v11 = qword_10000C8C0;
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67109376;
    *v16 = v14;
    *&v16[4] = 2050;
    *&v16[6] = v2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v3, "_ANED_MODEL_READ_ADVISE", "size=%d\n %{public, signpost.description:begin_time}llu ", buf, 0x12u);
  }
}

void sub_100001CA8(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = NSStringFromSelector(v7);
      v10 = *(a1 + 40);
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      v14 = 138413570;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a3;
      v22 = 1024;
      v23 = v11;
      v24 = 2080;
      v25 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: munmap(%s) failed. bytes=%p : len=%lu errno=%d : %s", &v14, 0x3Au);
    }
  }
}

void sub_100002370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000023A8(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_10000C8C0);
  v13 = 0;
  v14 = 0;
  LODWORD(v14) = a1[17];
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v13) == -1)
  {
    v4 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
    {
      v5 = a1[23];
      v6 = v4;
      v7 = NSStringFromSelector(v5);
      v8 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 138412802;
      *v16 = v7;
      *&v16[8] = 1024;
      *&v16[10] = v8;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: fcntl(F_RDADVISE). errno=%d : %s", buf, 0x1Cu);
    }
  }

  kdebug_trace();
  v11 = qword_10000C8C0;
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67109376;
    *v16 = v14;
    *&v16[4] = 2050;
    *&v16[6] = v2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v3, "_ANED_WEIGHT_READ_ADVISE", "size=%d\n %{public, signpost.description:begin_time}llu ", buf, 0x12u);
  }
}

void sub_1000025B8(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = NSStringFromSelector(v7);
      v10 = *(a1 + 40);
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      v14 = 138413570;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a3;
      v22 = 1024;
      v23 = v11;
      v24 = 2080;
      v25 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: munmap(%s) failed. bytes=%p : len=%lu errno=%d : %s", &v14, 0x3Au);
    }
  }
}

uint64_t sub_10000391C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_10000C8C0;
  if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = NSStringFromSelector(v9);
    v12 = 138412802;
    v13 = v11;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: URL=%@ : error=%@", &v12, 0x20u);
  }

  return 1;
}

void sub_100004E80(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_1000050AC(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100004E6C();
  v9 = a3;
  sub_100004E80(&_mh_execute_header, v5, v7, "%@: modelFilePath=%@", v8);
}

void sub_10000515C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: +updateAccessTimeForFilePath:%@ failed", buf, 0x16u);
}

void sub_1000051C4(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100004E6C();
  v9 = a3;
  sub_100004E80(&_mh_execute_header, v5, v7, "%@: weightFilePath=%@", v8);
}

void sub_100005274(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100004E6C();
  v9 = a3;
  sub_100004E80(&_mh_execute_header, v5, v7, "%@: filePath=%@", v8);
}

void sub_100005320(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100004E6C();
  v9 = a3;
  sub_100004E80(&_mh_execute_header, v5, v7, "%@: Skipping update for filePath=%@", v8);
}

void sub_1000053CC(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: +setAccessTime:forFilePath failed", &v5, 0xCu);
}

void sub_100005474()
{
  sub_100004E6C();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to remove %@ : error=%@", v2, 0x16u);
}

void sub_1000054F0(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v3 = *a2;
  v4 = 136315394;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  sub_100004E80(&_mh_execute_header, a3, a3, "Mark %s as purgeable (flags 0x%llx)", &v4);
}

void sub_100005574(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Fail to open %s %{darwin.errno}d", &v5, 0x12u);
}

void sub_10000561C(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: garbageCollectDanglingModelsAtPath: failed", &v5, 0xCu);
}