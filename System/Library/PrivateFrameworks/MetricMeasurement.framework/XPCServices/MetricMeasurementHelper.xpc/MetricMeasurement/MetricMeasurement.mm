int main(int argc, const char **argv, const char **envp)
{
  unsetenv("TMPDIR");
  _set_user_dir_suffix();
  v3 = objc_autoreleasePoolPush();
  v5 = _MXMGetLog(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 infoDictionary];
    v8 = [v7 objectForKeyedSubscript:@"CFBundleName"];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Starting %@.", &v12, 0xCu);
  }

  v9 = objc_opt_new();
  v10 = +[NSXPCListener serviceListener];
  [v10 setDelegate:v9];
  objc_autoreleasePoolPop(v3);
  [v10 resume];

  return 0;
}

uint64_t uncache_regular_file(int a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = mmap(0, a2, 1, 1, a1, 0);
  if (v3 == -1)
  {
    sub_100005C68();
  }

  else
  {
    v4 = v3;
    v5 = msync(v3, a2, 18);
    if (v5 != -1)
    {
      munmap(v4, a2);
      return 0;
    }

    v8 = _MXMGetLog(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error while trying to uncache: msync", v9, 2u);
    }

    munmap(v4, a2);
  }

  return 1;
}

uint64_t uncache_dir2(DIR *a1)
{
  v22 = 0;
  v2 = open(".", 0);
  if (v2 == -1)
  {
    v18 = _MXMGetLog(v2, v3);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error while trying to uncache: open(., ...)", __str, 2u);
    }

    return 1;
  }

  v4 = v2;
  v5 = dirfd(a1);
  v6 = fchdir(v5);
  if (v6 == -1)
  {
    v19 = _MXMGetLog(v6, v7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      v20 = "Error while trying to uncache: fchdir(dirfd(dirp))";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, __str, 2u);
    }
  }

  else
  {
    v8 = malloc_type_malloc(0x418uLL, 0x1000040D92F83E5uLL);
    v9 = readdir_r(a1, v8, &v22);
    for (i = v9 == 0; !v9 && v22 == v8; i = v9 == 0)
    {
      v12 = v8->d_name[0];
      if (v12 != 46)
      {
        goto LABEL_36;
      }

      v12 = v8->d_name[1];
      if (!v8->d_name[1])
      {
        goto LABEL_14;
      }

      if (v12 == 46)
      {
        if (!v8->d_name[2])
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_36:
        if (46 == v12)
        {
          goto LABEL_14;
        }
      }

      if (uncache_filename(v8->d_name, 0))
      {
        goto LABEL_29;
      }

      v13 = getxattr(v8->d_name, "com.apple.ResourceFork", 0, 0, 0, 32);
      if (v13 != -1)
      {
        v14 = v13;
        snprintf(__str, 0x400uLL, "%s/..namedfork/rsrc", v8->d_name);
        if (uncache_filename(__str, v14))
        {
          goto LABEL_29;
        }
      }

LABEL_14:
      v9 = readdir_r(a1, v8, &v22);
    }

    if (!i)
    {
      v21 = _MXMGetLog(v9, v10);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *__str = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error while trying to uncache: readdir_r", __str, 2u);
      }

LABEL_29:
      free(v8);
      fchdir(v4);
      goto LABEL_30;
    }

    free(v8);
    v15 = fchdir(v4);
    if (v15 != -1)
    {
      close(v4);
      return 0;
    }

    v19 = _MXMGetLog(v15, v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      v20 = "Error while trying to uncache: fchdir(oldcwdfd)";
      goto LABEL_24;
    }
  }

LABEL_30:
  close(v4);
  return 1;
}

uint64_t uncache_filename(const char *a1, size_t a2)
{
  memset(&v29.st_size, 0, 48);
  v4 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v4 == -1)
  {
    v16 = _MXMGetLog(v4, v5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Error while trying to uncache: open";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    }

LABEL_13:

    return 1;
  }

  v6 = v4;
  v7 = fstat(v4, &v29);
  if (v7 == -1)
  {
    v16 = _MXMGetLog(v7, v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Error while trying to uncache: fstat";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = v29.st_mode & 0xF000;
  if (v9 == 0x8000)
  {
    if (a2)
    {
      st_size = a2;
    }

    else
    {
      st_size = v29.st_size;
    }

    v14 = uncache_regular_file(v6, st_size);
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (v9 != 0x4000)
  {
    v23 = _MXMGetLog(v7, v8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v31) = v29.st_mode;
      v24 = "Cannot uncache file of mode 0%o";
      v25 = v23;
      v26 = OS_LOG_TYPE_INFO;
      v27 = 8;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v25, v26, v24, buf, v27);
    }

LABEL_26:

    goto LABEL_27;
  }

  v10 = opendir(a1);
  if (!v10)
  {
    v23 = _MXMGetLog(0, v11);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Error while trying to uncache: opendir";
      v25 = v23;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 2;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v12 = v10;
  v13 = uncache_dir2(v10);
  v14 = closedir(v12);
  if (v13)
  {
LABEL_27:
    v28 = _MXMGetLog(v14, v15);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = a1;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Uncache failed with filepath: %s", buf, 0xCu);
    }

    close(v6);
    return 1;
  }

LABEL_18:
  v19 = close(v6);
  v21 = _MXMGetLog(v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = a1;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Uncached filename: %s", buf, 0xCu);
  }

  return 0;
}

uint64_t _uncacheFilepath(void *a1)
{
  v1 = a1;
  uncache_filename([v1 UTF8String], 0);

  return 0;
}

void sub_100001EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v11 = _MXMGetLog(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Exception caught while trying to uncache: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100001E74);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MXMGetLog(uint64_t a1, uint64_t a2)
{
  if (qword_100011B10 != -1)
  {
    sub_100005CDC();
  }

  return qword_100011B08;
}

void sub_100001F7C(id a1)
{
  qword_100011B08 = os_log_create("com.apple.metricmeasurement", "Default");

  _objc_release_x1();
}

uint64_t _MXMGetInstrumentsLog(uint64_t a1, uint64_t a2)
{
  if (qword_100011B20 != -1)
  {
    sub_100005CF0();
  }

  return qword_100011B18;
}

void sub_100001FF8(id a1)
{
  qword_100011B18 = os_log_create("com.apple.metricmeasurement", "PointsOfInterest");

  _objc_release_x1();
}

void sub_1000030EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003128(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v14.tv_sec = 0;
  v14.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v14);
  v9 = (v14.tv_sec - *(a1 + 56));
  [*(a1 + 32) add:a4];
  v10 = [*(a1 + 32) checkQuiesced:v9];
  v12 = 0;
  if (v8)
  {
    goto LABEL_10;
  }

  if (v10)
  {
    v13 = _MXMGetLog(v10, v11);
    v12 = 1;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Successfully quiesced within: %f", buf, 0xCu);
    }

LABEL_9:

LABEL_10:
    *(*(*(a1 + 48) + 8) + 24) = v12;
    [v7 cancel];
    goto LABEL_11;
  }

  if (*(a1 + 72) <= v9)
  {
    v13 = _MXMGetLog(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Timed out: %f", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_9;
  }

LABEL_11:
}

void sub_1000043B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000043DC(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSMutableDictionary dictionary];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v8 = v13 = 0;
  v9 = *(a1 + 32);
  sysmon_table_apply();
  [*(a1 + 32) logTopUsageProcesses:{v8, _NSConcreteStackBlock, 3221225472, sub_10000455C, &unk_10000C538}];
  [*(a1 + 32) convertToPercent:*(a1 + 64) ncpus:v11[3]];
  v5 = 100.0 - v4;
  v6 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  (*(v6 + 16))(v6, WeakRetained, *(a1 + 40), v5);

  _Block_object_dispose(&v10, 8);
}

void sub_100004540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000455C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000046CC;
  v14 = sub_1000046DC;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sysmon_row_apply();
  v4 = *(a1 + 32);
  [*(a1 + 40) convertToPercent:*(a1 + 56) ncpus:v7[3]];
  v5 = [NSNumber numberWithDouble:?];
  [v4 setValue:v5 forKey:v11[5]];

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

void sub_1000046A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000046CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000046E4(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 == 51)
  {
    xdouble = v5;
    v9 = xpc_get_type(v5) == &_xpc_type_double;
    v5 = xdouble;
    if (v9)
    {
      value = xpc_double_get_value(xdouble);
      v5 = xdouble;
      *(*(a1[5] + 8) + 24) = value;
      *(*(a1[6] + 8) + 24) = *(*(a1[5] + 8) + 24) + *(*(a1[6] + 8) + 24);
    }
  }

  else if (a2 == 13)
  {
    xdoublea = v5;
    v6 = xpc_to_foundation(v5);
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = xdoublea;
  }
}

id xpc_to_foundation(void *a1)
{
  v1 = a1;
  type = xpc_get_type(v1);
  if (type == &_xpc_type_array)
  {
    [NSMutableArray arrayWithCapacity:xpc_array_get_count(v1)];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100004FDC;
    v4 = applier[3] = &unk_10000C5C8;
    v13 = v4;
    xpc_array_apply(v1, applier);
    v5 = v13;
    goto LABEL_12;
  }

  if (type != &_xpc_type_BOOL)
  {
    if (type == &_xpc_type_date)
    {
      value = xpc_date_get_value(v1);
      v7 = dword_100011B2C;
      if (!dword_100011B2C)
      {
        mach_timebase_info(&dword_100011B28);
        v7 = dword_100011B2C;
      }

      v8 = (value * dword_100011B28 / v7) / 1000000000.0;
LABEL_19:
      v3 = [NSNumber numberWithDouble:v8];
      goto LABEL_20;
    }

    if (type != &_xpc_type_dictionary)
    {
      if (type != &_xpc_type_double)
      {
        if (type == &_xpc_type_int64)
        {
          v3 = [NSNumber numberWithLongLong:xpc_int64_get_value(v1)];
        }

        else if (type == &_xpc_type_string)
        {
          v3 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v1)];
        }

        else
        {
          if (type == &_xpc_type_uint64)
          {
            [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v1)];
          }

          else
          {
            +[NSNull null];
          }
          v3 = ;
        }

        goto LABEL_20;
      }

      v8 = xpc_double_get_value(v1);
      goto LABEL_19;
    }

    [NSMutableDictionary dictionaryWithCapacity:xpc_dictionary_get_count(v1)];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100005030;
    v4 = v10[3] = &unk_10000C5F0;
    v11 = v4;
    xpc_dictionary_apply(v1, v10);
    v5 = v11;
LABEL_12:

    goto LABEL_21;
  }

  v3 = [NSNumber numberWithBool:xpc_BOOL_get_value(v1)];
LABEL_20:
  v4 = v3;
LABEL_21:

  return v4;
}

int64_t sub_100004CA8(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  return v6 < v8;
}

double MachAbsoluteTimeToTimeInterval(uint64_t a1)
{
  v2 = dword_100011B2C;
  if (!dword_100011B2C)
  {
    mach_timebase_info(&dword_100011B28);
    v2 = dword_100011B2C;
  }

  return (dword_100011B28 * a1 / v2) / 1000000000.0;
}

uint64_t sub_100004FDC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = xpc_to_foundation(a3);
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a2];

  return 1;
}

uint64_t sub_100005030(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = xpc_to_foundation(a3);
  v6 = *(a1 + 32);
  v7 = [NSString stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

id _fullProcessNameForPid()
{
  v0 = __chkstk_darwin();
  if (v0 < 1 || (v1 = v0, bzero(buffer, 0x1000uLL), proc_pidpath(v1, buffer, 0x1000u) < 1))
  {
    v2 = 0;
  }

  else
  {
    buffer[4095] = 0;
    v2 = [NSString stringWithUTF8String:basename(buffer)];
  }

  return v2;
}

uint64_t _processIdentifierWithProcessName(void *a1)
{
  v1 = a1;
  *__error() = 0;
  v2 = proc_listpids(1u, 0, 0, 0);
  if ((v2 & 0x80000000) != 0)
  {
    v23 = _MXMGetLog(v2, v3);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = *__error();
      *buf = 67109120;
      *v30 = v24;
      v25 = "Failed to read pids: %d";
      v26 = v23;
      v27 = 8;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, v25, buf, v27);
    }

LABEL_23:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v4 = v2;
  v5 = v2;
  v6 = malloc_type_malloc(v2, 0x100004052888210uLL);
  if (!v6)
  {
    v23 = _MXMGetLog(0, v7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v25 = "Failed to allocate buffer";
      v26 = v23;
      v27 = 2;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v8 = v6;
  memset(v6, 255, v5);
  v9 = proc_listpids(1u, 0, v8, v4);
  v10 = v9;
  v12 = _MXMGetLog(v9, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v30 = v1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Searching for procName: %@", buf, 0xCu);
  }

  if (v10 < 4)
  {
LABEL_15:
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v10 >> 2 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10 >> 2;
    }

    v14 = v8;
    while (1)
    {
      v16 = *v14++;
      v15 = v16;
      if (v16 >= 1)
      {
        v17 = _fullProcessNameForPid();
        v19 = _MXMGetLog(v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *v30 = v17;
          *&v30[8] = 1024;
          *&v30[10] = v15;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Checking %@ (%d)", buf, 0x12u);
        }

        v20 = [v17 isEqualToString:v1];
        if (v20)
        {
          break;
        }
      }

      if (!--v13)
      {
        goto LABEL_15;
      }
    }
  }

  free(v8);
  v23 = _MXMGetLog(v21, v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v30 = v15;
    *&v30[4] = 2112;
    *&v30[6] = v1;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Found pid (%d) for process name: %@", buf, 0x12u);
  }

LABEL_24:

  return v15;
}

uint64_t _terminateProcess(void *a1)
{
  v1 = a1;
  v2 = os_variant_allows_internal_security_policies();
  if (v2)
  {
    v4 = _processIdentifierWithProcessName(v1);
    if (v4 >= 1)
    {
      v6 = v4;
      v7 = [RBSProcessIdentifier identifierWithPid:v4];
      v8 = [RBSProcessPredicate predicateMatchingIdentifier:v7];

      v9 = [objc_alloc_init(RBSTerminateContext) initWithExplanation:@"Terminating process between performance test iterations via MetricMeasurement"];
      [v9 setReportType:0];
      v10 = [[RBSTerminateRequest alloc] initWithPredicate:v8 context:v9];
      v12 = v10;
      if (v10)
      {
        v20 = 0;
        v13 = [v10 execute:&v20];
        v14 = v20;
        v16 = _MXMGetLog(v14, v15);
        v17 = v16;
        if (v13)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v22 = v1;
            v23 = 1024;
            v24 = v6;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Successfully terminated process with name: %@ (%d)", buf, 0x12u);
          }

          v18 = 1;
          goto LABEL_19;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v22 = v1;
          v23 = 1024;
          v24 = v6;
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error occurred when trying to terminate process with name: %@ (%d). Error: %@", buf, 0x1Cu);
        }
      }

      else
      {
        v14 = _MXMGetLog(0, v11);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v22 = v1;
          v23 = 1024;
          v24 = v6;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create RBSTerminateRequest for process name: %@ (%d)", buf, 0x12u);
        }
      }

      v18 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v8 = _MXMGetLog(v4, v5);
    v18 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unable to find process ID for process name: %@. Skipping termination.", buf, 0xCu);
    }
  }

  else
  {
    v8 = _MXMGetLog(v2, v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AppleInternal policies must be enabled for successful process termination.", buf, 2u);
    }

    v18 = 0;
  }

LABEL_20:

  return v18;
}

void sub_100005C68()
{
  perror("mmap");
  v2 = _MXMGetLog(v0, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Error while trying to uncache: mmap", v3, 2u);
  }
}