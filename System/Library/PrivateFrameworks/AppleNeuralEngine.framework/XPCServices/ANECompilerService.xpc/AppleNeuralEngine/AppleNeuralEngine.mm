void sub_100001174(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.aned.modelCacheAsyncIO", v1);
  v3 = qword_100021AF0;
  qword_100021AF0 = v2;

  qword_100021AF8 = +[_ANELog daemon];

  _objc_release_x1();
}

void sub_1000018E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001918(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001930(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_100002AAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100021AF8;
  if (os_log_type_enabled(qword_100021AF8, OS_LOG_TYPE_ERROR))
  {
    sub_100010CC8(a1, v4, v3);
  }
}

void sub_100002B0C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100021AF8;
  if (os_log_type_enabled(qword_100021AF8, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = NSStringFromSelector(v5);
    v8 = [NSNumber numberWithBool:a2];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: status=%@", &v9, 0x16u);
  }
}

void sub_100002CDC(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v3 = os_transaction_create();
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) startDanglingModelGC];
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100003898(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100021AF8;
  if (os_log_type_enabled(qword_100021AF8, OS_LOG_TYPE_ERROR))
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

  return 0;
}

void sub_100004038(uint64_t a1)
{
  v2 = *(a1 + 64);
}

void sub_1000040D0(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.aned.storageAsyncIO", v1);
  v3 = qword_100021B08;
  qword_100021B08 = v2;

  qword_100021B10 = +[_ANELog daemon];

  _objc_release_x1();
}

void sub_100004A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004AC4(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_100021B10);
  v13 = 0;
  v14 = 0;
  LODWORD(v14) = a1[17];
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v13) == -1)
  {
    v4 = qword_100021B10;
    if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_INFO))
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
  v11 = qword_100021B10;
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

void sub_100004CD4(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_100021B10;
    if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_ERROR))
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

void sub_10000539C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000053D4(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_100021B10);
  v13 = 0;
  v14 = 0;
  LODWORD(v14) = a1[17];
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v13) == -1)
  {
    v4 = qword_100021B10;
    if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_INFO))
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
  v11 = qword_100021B10;
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

void sub_1000055E4(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_100021B10;
    if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_ERROR))
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

uint64_t sub_100006948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100021B10;
  if (os_log_type_enabled(qword_100021B10, OS_LOG_TYPE_ERROR))
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

void sub_100007EAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_10000A0D0(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v3 = os_transaction_create();
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) removeStaleModels];
  objc_autoreleasePoolPop(v2);
}

void sub_10000A3A4(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_10000A614(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      *&v24 = 0;
      *(&v24 + 1) = &v24;
      v25 = 0x2020000000;
      v26 = xpc_activity_set_state(v3, 4);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000A8F0;
      v16[3] = &unk_10001C678;
      v17 = *(a1 + 32);
      v18 = v3;
      v19 = &v24;
      v5 = objc_retainBlock(v16);
      v6 = +[_ANELog daemon];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 32) name];
        v8 = *(*(&v24 + 1) + 24);
        *buf = 138412546;
        v21 = v7;
        v22 = 1024;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Running activity %@, extended=%d", buf, 0x12u);
      }

      if (*(*(&v24 + 1) + 24) == 1)
      {
        v9 = [*(a1 + 32) queue];
        dispatch_async(v9, v5);
      }

      else
      {
        (v5[2])(v5);
      }

      _Block_object_dispose(&v24, 8);
    }
  }

  else
  {
    v10 = +[_ANELog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) name];
      LODWORD(v24) = 138412290;
      *(&v24 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Checking-in activity %@", &v24, 0xCu);
    }

    v12 = xpc_activity_copy_criteria(v3);
    if (!v12 || ([*(a1 + 32) executionCriteria], v13 = objc_claimAutoreleasedReturnValue(), v14 = xpc_equal(v12, v13), v13, !v14))
    {
      v15 = [*(a1 + 32) executionCriteria];
      xpc_activity_set_criteria(v3, v15);
    }
  }
}

void sub_10000A8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A8F0(uint64_t a1)
{
  getpid();
  proc_set_cpumon_params();
  v2 = [*(a1 + 32) name];
  [v2 UTF8String];
  v3 = os_transaction_create();

  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) handler];
  v5[2]();

  objc_autoreleasePoolPop(v4);
  getpid();
  proc_set_cpumon_defaults();
  xpc_activity_set_state(*(a1 + 40), 5);
  v6 = +[_ANELog daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) name];
    v8 = *(*(*(a1 + 48) + 8) + 24);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Done running activity %@, extended=%d", &v9, 0x12u);
  }
}

void sub_10000B214(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10000B33C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_10000C634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v53 - 192), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000C908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C920(uint64_t a1, int a2, CFTypeRef cf)
{
  CFRetain(cf);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = cf;

  *(*(*(a1 + 40) + 8) + 24) = a2;
  kdebug_trace();
  v8 = qword_100021B20;
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = *(a1 + 56);
    v12[0] = 67109376;
    v12[1] = 0;
    v13 = 1024;
    v14 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, v10, "_ANEF_JIT_ANEC_COMPILE", "%u ret:%d", v12, 0xEu);
  }
}

void sub_10000DAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v55 - 192), 8);

  _Unwind_Resume(a1);
}

void sub_10000DE0C(uint64_t a1, int a2, CFTypeRef cf)
{
  CFRetain(cf);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = cf;

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void sub_10000DE64(uint64_t a1, int a2, CFTypeRef cf)
{
  CFRetain(cf);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = cf;

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

uint64_t sub_10000E264(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2112;
  return result;
}

void sub_10000E288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 14) = 0;
  *(a3 + 22) = v3;
  *(a3 + 24) = a2;
}

void sub_10000E2A4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

uint64_t sub_10000E2C0(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2112;
  *(a4 + 14) = v4;
  return result;
}

void sub_10000E2D8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_10000E2F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10000F08C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

int main(int argc, const char **argv, const char **envp)
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v3 = +[_ANELog compiler];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100011CA0(v3);
    }
  }

  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  return 0;
}

uint64_t sub_10000F7F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F810(uint64_t a1)
{
  v2 = +[_ANELog compiler];
  v3 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelTypeKey];
  v4 = [v3 isEqualToString:kANEFModelANECIRValue];

  v5 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelTypeKey];
  v6 = [v5 isEqualToString:kANEFModelMILValue];

  v7 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelTypeKey];
  v8 = [v7 isEqualToString:kANEFModelMLIRValue];

  v9 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelTypeKey];
  v10 = [v9 isEqualToString:kANEFModelLLIRBundleValue];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100011D58(v10, v2);
  }

  if ((v4 & v6) != 1)
  {
    v148 = [*(a1 + 32) objectForKeyedSubscript:kANEFNetPlistFilenameKey];
    v12 = [*(a1 + 32) objectForKeyedSubscript:kANEFCompilerOptionsFilenameKey];
    v146 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelIsEncryptedKey];
    v13 = [v146 BOOLValue];
    v14 = v2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100011DD4(a1, v13, v14);
    }

    oslog = v14;

    v154 = 0;
    v15 = *(a1 + 40);
    v16 = (a1 + 40);
    v17 = *(a1 + 48);
    v153 = 0;
    v18 = [_ANESandboxingHelper consumeSandboxExtension:v15 forModel:v17 error:&v153];
    v19 = v153;
    v144 = v18;
    v145 = v19;
    if (v18 < 0 && v19)
    {
      v20 = *(a1 + 96);
      v21 = NSStringFromSelector(*(a1 + 112));
      v22 = [_ANEErrors fileAccessErrorForMethod:v21];
      v23 = &__NSDictionary0__struct;
      (*(v20 + 16))(v20, 0, &__NSDictionary0__struct, v22);

      [*(a1 + 48) string_id];
      kdebug_trace();
      v24 = +[_ANELog compiler];
      v25 = v24;
      v26 = *(a1 + 120);
      if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        v27 = v148;
        v28 = v12;
      }

      else
      {
        v27 = v148;
        v28 = v12;
        if (os_signpost_enabled(v24))
        {
          v29 = [*(a1 + 48) string_id];
          *buf = 134217984;
          *v156 = v29;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, v26, "_ANEC_MODEL_COMPILE", "model.string_id:%llu", buf, 0xCu);
        }
      }

LABEL_81:

      goto LABEL_82;
    }

    v143 = [_ANECloneHelper cloneIfWritable:*(a1 + 48) isEncryptedModel:v13 cloneDirectory:*(a1 + 56)];
    if (!v143)
    {
      (*(*(a1 + 96) + 16))();
    }

    v28 = v12;
    if (v4)
    {
      [*(a1 + 48) string_id];
      kdebug_trace();
      v30 = +[_ANELog compiler];
      v31 = v30;
      v32 = *(a1 + 120);
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        v33 = [*(a1 + 48) string_id];
        *buf = 67109376;
        *v156 = 1;
        *&v156[4] = 2048;
        *&v156[6] = v33;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_EVENT, v32, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
      }

      v34 = oslog;
      v27 = v148;
      v35 = v143;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v137 = NSStringFromSelector(*(a1 + 112));
        v96 = *(a1 + 64);
        v134 = [*(a1 + 48) modelURL];
        v97 = [*(a1 + 48) sourceURL];
        v98 = [*(a1 + 48) key];
        v99 = *(a1 + 72);
        *buf = 138413826;
        *v156 = v137;
        *&v156[8] = 2112;
        *&v156[10] = v96;
        v28 = v12;
        v35 = v143;
        v157 = 2112;
        v158 = v134;
        v159 = 2112;
        v160 = v97;
        v161 = 2112;
        v162 = v143;
        v163 = 2112;
        v164 = v98;
        v100 = v98;
        v165 = 2112;
        v166 = v99;
        _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%@: ANECIRModel : bundleId=%@ model.modelURL=%@ model.sourceURL=%@ modelURL=%@ key=%@ output=%@", buf, 0x48u);

        v27 = v148;
      }

      v36 = [*(a1 + 48) sourceURL];
      v37 = *(a1 + 48);
      if (v36)
      {
        [v37 sourceURL];
      }

      else
      {
        [v37 modelURL];
      }
      v52 = ;

      v53 = *(a1 + 64);
      v54 = *(a1 + 72);
      v55 = *(a1 + 80);
      v56 = *(a1 + 32);
      v57 = *(*(a1 + 104) + 8);
      obj = *(v57 + 40);
      LOBYTE(v130) = v13;
      v23 = [_ANECVAIRCompiler compileModelAt:v35 csIdentity:v53 plistFilename:v27 optionsFilename:v28 outputURL:v54 saveSourceURL:v52 aotModelBinaryPath:v55 isEncryptedModel:v130 options:v56 ok:&v154 error:&obj];
      objc_storeStrong((v57 + 40), obj);
      [*(a1 + 48) string_id];
      kdebug_trace();
      v58 = +[_ANELog compiler];
      v59 = v58;
      v60 = *(a1 + 120);
      if (v60 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v58))
      {
        goto LABEL_70;
      }

      v61 = [*(a1 + 48) string_id];
      *buf = 67109376;
      *v156 = 2;
      *&v156[4] = 2048;
      *&v156[6] = v61;
LABEL_47:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_EVENT, v60, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
LABEL_70:

      v25 = v143;
      goto LABEL_71;
    }

    if (((v6 | v8 | v10) & 1) == 0)
    {
      [*(a1 + 48) string_id];
      kdebug_trace();
      v45 = +[_ANELog compiler];
      v46 = v45;
      v47 = *(a1 + 120);
      if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        v48 = [*(a1 + 48) string_id];
        *buf = 67109376;
        *v156 = 3;
        *&v156[4] = 2048;
        *&v156[6] = v48;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, v47, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
      }

      v49 = oslog;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v138 = NSStringFromSelector(*(a1 + 112));
        v104 = *(a1 + 64);
        v105 = [*(a1 + 48) modelURL];
        v106 = [*(a1 + 48) sourceURL];
        v107 = [*(a1 + 48) key];
        v108 = *(a1 + 72);
        *buf = 138413826;
        *v156 = v138;
        *&v156[8] = 2112;
        *&v156[10] = v104;
        v157 = 2112;
        v158 = v105;
        v159 = 2112;
        v160 = v106;
        v161 = 2112;
        v162 = v143;
        v163 = 2112;
        v164 = v107;
        v109 = v107;
        v165 = 2112;
        v166 = v108;
        _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%@: CoreMLModel: bundleId=%@ model.modelURL=%@ model.sourceURL=%@ modelURL=%@ key=%@ output=%@", buf, 0x48u);
      }

      v50 = [*(a1 + 48) sourceURL];
      v51 = *(a1 + 48);
      v142 = (a1 + 40);
      if (v50)
      {
        [v51 sourceURL];
      }

      else
      {
        [v51 modelURL];
      }
      v68 = ;

      v69 = v68;
      v70 = [v68 path];
      v71 = *(a1 + 64);
      v72 = [*(a1 + 48) key];
      v74 = *(a1 + 80);
      v73 = *(a1 + 88);
      v75 = *(a1 + 72);
      v76 = *(a1 + 32);
      v77 = *(*(a1 + 104) + 8);
      v151 = *(v77 + 40);
      LOBYTE(v131) = v13;
      v23 = [_ANECoreMLModelCompiler compileModelAt:v143 csIdentity:v71 key:v72 optionsFilename:v12 tempDirectory:v73 outputURL:v75 saveSourceModelPath:v70 aotModelBinaryPath:v74 isEncryptedModel:v131 options:v76 ok:&v154 error:&v151];
      objc_storeStrong((v77 + 40), v151);

      [*(a1 + 48) string_id];
      kdebug_trace();
      v78 = +[_ANELog compiler];
      v79 = v78;
      v80 = *(a1 + 120);
      if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
      {
        v81 = [*(a1 + 48) string_id];
        *buf = 67109376;
        *v156 = 4;
        *&v156[4] = 2048;
        *&v156[6] = v81;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v79, OS_SIGNPOST_EVENT, v80, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
      }

      v28 = v12;
      goto LABEL_62;
    }

    if (v6)
    {
      [*(a1 + 48) string_id];
      kdebug_trace();
      v38 = +[_ANELog compiler];
      v39 = v38;
      v40 = *(a1 + 120);
      if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        v41 = [*(a1 + 48) string_id];
        *buf = 67109376;
        *v156 = 5;
        *&v156[4] = 2048;
        *&v156[6] = v41;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_EVENT, v40, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
      }

      v42 = oslog;
      v27 = v148;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v110 = NSStringFromSelector(*(a1 + 112));
        v139 = *(a1 + 64);
        v111 = [*(a1 + 48) modelURL];
        v112 = [*(a1 + 48) sourceURL];
        v113 = [*(a1 + 48) key];
        v114 = *(a1 + 72);
        *buf = 138413826;
        *v156 = v110;
        *&v156[8] = 2112;
        *&v156[10] = v139;
        v157 = 2112;
        v158 = v111;
        v159 = 2112;
        v160 = v112;
        v161 = 2112;
        v162 = v143;
        v163 = 2112;
        v164 = v113;
        v165 = 2112;
        v166 = v114;
        _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%@: MILModel : bundleId=%@ model.modelURL=%@ model.sourceURL=%@ modelURL=%@ key=%@ output=%@", buf, 0x48u);

        v27 = v148;
        v28 = v12;
      }

      if (!v27)
      {
        v27 = +[_ANEStrings defaultMILFileName];
      }

      v43 = [*(a1 + 48) sourceURL];
      v44 = *(a1 + 48);
      if (v43)
      {
        [v44 sourceURL];
      }

      else
      {
        [v44 modelURL];
      }
      v52 = ;

      v82 = *(a1 + 64);
      v83 = *(a1 + 72);
      v84 = *(a1 + 80);
      v85 = *(a1 + 32);
      v86 = *(*(a1 + 104) + 8);
      v150 = *(v86 + 40);
      LOBYTE(v130) = v13;
      v23 = [_ANEMILCompiler compileModelAt:v143 modelName:v27 csIdentity:v82 optionsFilename:v28 outputURL:v83 saveSourceURL:v52 aotModelBinaryPath:v84 isEncryptedModel:v130 options:v85 ok:&v154 error:&v150];
      objc_storeStrong((v86 + 40), v150);
      [*(a1 + 48) string_id];
      kdebug_trace();
      v87 = +[_ANELog compiler];
      v59 = v87;
      v60 = *(a1 + 120);
      if (v60 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v87))
      {
        goto LABEL_70;
      }

      v88 = [*(a1 + 48) string_id];
      *buf = 67109376;
      *v156 = 6;
      *&v156[4] = 2048;
      *&v156[6] = v88;
      goto LABEL_47;
    }

    if (((v8 | v10) & 1) == 0)
    {
      v27 = v148;
      v25 = v143;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100011E8C(oslog);
      }

      v23 = &__NSDictionary0__struct;
      goto LABEL_71;
    }

    [*(a1 + 48) string_id];
    kdebug_trace();
    v62 = +[_ANELog compiler];
    v63 = v62;
    v64 = *(a1 + 120);
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
    {
      v65 = [*(a1 + 48) string_id];
      *buf = 67109376;
      *v156 = 5;
      *&v156[4] = 2048;
      *&v156[6] = v65;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_EVENT, v64, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
    }

    v66 = oslog;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v141 = NSStringFromSelector(*(a1 + 112));
      v133 = *(a1 + 64);
      v132 = [*(a1 + 48) modelURL];
      v136 = [*(a1 + 48) sourceURL];
      v126 = [*(a1 + 48) key];
      v127 = *(a1 + 72);
      *buf = 138413826;
      *v156 = v141;
      *&v156[8] = 2112;
      *&v156[10] = v133;
      v157 = 2112;
      v158 = v132;
      v159 = 2112;
      v160 = v136;
      v161 = 2112;
      v162 = v143;
      v163 = 2112;
      v164 = v126;
      v128 = v126;
      v165 = 2112;
      v166 = v127;
      _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "%@: MLIRModel : bundleId=%@ model.modelURL=%@ model.sourceURL=%@ modelURL=%@ key=%@ output=%@", buf, 0x48u);
    }

    if (!v148)
    {
      if (v8)
      {
        v67 = +[_ANEStrings defaultMLIRFileName];
      }

      else
      {
        if (!v10)
        {
          v148 = 0;
          goto LABEL_87;
        }

        v67 = +[_ANEStrings defaultLLIRBundleName];
      }

      v148 = v67;
    }

LABEL_87:
    v142 = (a1 + 40);
    v115 = [*(a1 + 48) sourceURL];
    v116 = *(a1 + 48);
    if (v115)
    {
      [v116 sourceURL];
    }

    else
    {
      [v116 modelURL];
    }
    v117 = ;

    v135 = *(a1 + 64);
    v140 = *(a1 + 72);
    v118 = *(a1 + 80);
    v119 = *(a1 + 32);
    v120 = [*(a1 + 48) mpsConstants];
    v121 = *(*(a1 + 104) + 8);
    v149 = *(v121 + 40);
    LOBYTE(v130) = v13;
    v129 = v118;
    v28 = v12;
    v23 = [_ANEMLIRCompiler compileModelAt:v143 modelName:v148 csIdentity:v135 optionsFilename:v12 outputURL:v140 saveSourceURL:v117 aotModelBinaryPath:v129 isEncryptedModel:v130 options:v119 mpsConstants:v120 ok:&v154 error:&v149];
    objc_storeStrong((v121 + 40), v149);

    [*(a1 + 48) string_id];
    kdebug_trace();
    v122 = +[_ANELog compiler];
    v123 = v122;
    v124 = *(a1 + 120);
    if (v124 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v122))
    {
      v125 = [*(a1 + 48) string_id];
      *buf = 67109376;
      *v156 = 6;
      *&v156[4] = 2048;
      *&v156[6] = v125;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v123, OS_SIGNPOST_EVENT, v124, "_ANEC_MODEL_COMPILE", "%u model.string_id:%llu", buf, 0x12u);
    }

LABEL_62:
    v27 = v148;
    v25 = v143;
    v16 = v142;
LABEL_71:
    v89 = v154;
    v90 = oslog;
    v91 = v90;
    if (v89 == 1)
    {
      v92 = v144;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        v93 = NSStringFromSelector(*(a1 + 112));
        v94 = *(a1 + 72);
        *buf = 138413058;
        *v156 = v93;
        *&v156[8] = 2112;
        *&v156[10] = v25;
        v157 = 2112;
        v158 = v94;
        v159 = 2112;
        v160 = v23;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "%@: SUCCESS: model=%@ : output=%@ : lAttr=%@ : lErr=(nil)", buf, 0x2Au);
      }
    }

    else
    {
      v92 = v144;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v101 = NSStringFromSelector(*(a1 + 112));
        v102 = *(a1 + 72);
        v103 = *(*(*(a1 + 104) + 8) + 40);
        *buf = 138413314;
        *v156 = v101;
        *&v156[8] = 2112;
        *&v156[10] = v25;
        v157 = 2112;
        v158 = v102;
        v159 = 2112;
        v160 = v23;
        v161 = 2112;
        v162 = v103;
        _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%@: ERROR: model=%@ : output=%@ : lAttr=%@ : lErr=%@", buf, 0x34u);
      }
    }

    (*(*(a1 + 96) + 16))();
    v154 = [_ANESandboxingHelper releaseSandboxExtension:*v16 handle:v92];
    if ((v154 & 1) == 0)
    {
      v95 = v91;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        sub_100011ED0(v16, v92, v95);
      }
    }

    goto LABEL_81;
  }

  v11 = v2;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100011F88(a1, v11);
  }

  (*(*(a1 + 96) + 16))();
LABEL_82:
}

void sub_100010AAC(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_1000039B0();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: nil currentConnection", v5, 0xCu);
}

void sub_100010B54(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_1000039B0();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: FAILED creating %@", v7, 0x16u);
}

void sub_100010C10(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_1000039B0();
  v6 = 2112;
  v7 = @"com.apple.private.ANEStorageMaintainer";
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: Could not create connection to %@", v5, 0x16u);
}

void sub_100010CC8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = NSStringFromSelector(v4);
  sub_1000039B0();
  v9 = 2112;
  v10 = v7;
  v11 = 2112;
  v12 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: Could not create connection to %@ : error=%@", v8, 0x20u);
}

void sub_100010D94(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: %@", buf, 0x16u);
}

void sub_100010E10(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v9 = a3;
  sub_100007EAC(&_mh_execute_header, v5, v7, "%@: modelFilePath=%@", v8);
}

void sub_100010EC0(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: +updateAccessTimeForFilePath:%@ failed", buf, 0x16u);
}

void sub_100010F28(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v9 = a3;
  sub_100007EAC(&_mh_execute_header, v5, v7, "%@: weightFilePath=%@", v8);
}

void sub_100010FD8(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v9 = a3;
  sub_100007EAC(&_mh_execute_header, v5, v7, "%@: filePath=%@", v8);
}

void sub_100011084(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v9 = a3;
  sub_100007EAC(&_mh_execute_header, v5, v7, "%@: Skipping update for filePath=%@", v8);
}

void sub_100011130(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: +setAccessTime:forFilePath failed", &v5, 0xCu);
}

void sub_1000111D8()
{
  sub_100007E98();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to remove %@ : error=%@", v2, 0x16u);
}

void sub_100011254(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v3 = *a2;
  v4 = 136315394;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  sub_100007EAC(&_mh_execute_header, a3, a3, "Mark %s as purgeable (flags 0x%llx)", &v4);
}

void sub_1000112D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Fail to open %s %{darwin.errno}d", &v5, 0x12u);
}

void sub_100011380(const char *a1, uint64_t a2, NSObject *a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = *__error();
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  v11 = 1024;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@: fail to stat (%@) with errno=%{darwin:errno}d", &v7, 0x1Cu);
}

void sub_100011444(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_10000926C();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: sandbox_extension_issue_file() returned NULL. path=%@", v5, 0x16u);
}

void sub_1000114F4(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_10000926C();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: Sandbox extension(%@) consumed", v5, 0x16u);
}

void sub_1000115A4(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: Sandbox extension is nil/not valid", &v5, 0xCu);
}

void sub_10001164C(const char *a1, uint64_t a2, NSObject *a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@: %@", &v6, 0x16u);
}

void sub_1000116FC()
{
  sub_10000E278();
  sub_10000E264(v1, 5.778e-34, v2, v3);
  *(v5 + 14) = v4;
  sub_10000E298();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001174C()
{
  sub_10000E278();
  sub_10000E264(v1, 5.778e-34, v2, v3);
  *(v5 + 14) = v4;
  sub_10000E2A4(&_mh_execute_header, "%@: targetArchitecture=%@", v6, v7);
}

void sub_100011794(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10000E2D8(&_mh_execute_header, a2, a3, "%@: compiling encrypted model", a2);
}

void sub_1000117E0()
{
  sub_10000E278();
  v4 = sub_10000E264(v1, 5.7781e-34, v2, v3);
  sub_10000E288(v4, v5, v6);
  sub_10000E298();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_100011830()
{
  sub_10000E278();
  sub_10000E2C0(v1, 5.778e-34, v2, v3);
  sub_10000E2A4(&_mh_execute_header, "%@: lAttr=%@", v4, v5);
}

void sub_10001187C()
{
  sub_10000E278();
  sub_10000E264(v1, 5.778e-34, v2, v3);
  *(v5 + 14) = v4;
  sub_10000E2A4(&_mh_execute_header, "%@: Attempt to create %@", v6, v7);
}

void sub_1000118C4(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10000E2D8(&_mh_execute_header, a2, a3, "%@: compileModel is JITModel", a2);
}

void sub_100011910(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000E2F4(&_mh_execute_header, a2, a3, "Failed to get convert alignment to number for key: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10001197C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000E2F4(&_mh_execute_header, a2, a3, "Failed to get alignment for key: %@ from mps constants dict", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000119E8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000E2F4(&_mh_execute_header, a2, a3, "Failed to get surface for key: %@ from mps constants dict", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100011A9C(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_100007E98();
  v8 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: %@", v7, 0x16u);
}

void sub_100011B50(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_100007E98();
  sub_10000F08C(&_mh_execute_header, v5, v6, "%@: optionsFilePath=%@", v7, v8, v9, v10);
}

void sub_100011BF8(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_100007E98();
  sub_10000F08C(&_mh_execute_header, v5, v6, "%@: lAttr=%@", v7, v8, v9, v10);
}

void sub_100011CA0(NSObject *a1)
{
  v2 = *__error();
  v3 = 136315650;
  v4 = "main";
  v5 = 2080;
  v6 = "com.apple.aned";
  v7 = 1024;
  v8 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%s: _set_user_dir_suffix(%s) FAILED. errno=%d", &v3, 0x1Cu);
}

void sub_100011D58(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "isLLIRBundle:%u", v2, 8u);
}

void sub_100011DD4(uint64_t a1, char a2, NSObject *a3)
{
  v5 = NSStringFromSelector(*(a1 + 112));
  v6 = 138412546;
  v7 = v5;
  v8 = 1024;
  v9 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@: isEncryptedModel=%d", &v6, 0x12u);
}

void sub_100011ED0(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  v6 = *__error();
  v7 = 138412802;
  v8 = v5;
  v9 = 2048;
  v10 = a2;
  v11 = 1024;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "releaseSandboxExtension:(%@) handle:(%lld) failed (%d)", &v7, 0x1Cu);
}

void sub_100011F88(uint64_t a1, NSObject *a2)
{
  v3 = NSStringFromSelector(*(a1 + 112));
  v4 = 138412802;
  v5 = v3;
  v6 = 2112;
  v7 = kANEFModelANECIRValue;
  v8 = 2112;
  v9 = kANEFModelMILValue;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@: Can not specify both %@ and %@", &v4, 0x20u);
}