id sub_1000010E0()
{
  v0 = objc_alloc_init(TracerouteService);

  return [(TracerouteService *)v0 createXPCListener];
}

int64_t sub_100001110(int64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    string = xpc_dictionary_get_string(result, off_10001C3E8[0]);
    if (string)
    {
      v5 = string;
      v6 = strlen(string);
      if (v6)
      {
        v7 = v6;
        v8 = malloc_type_calloc(v6 + 2, 1uLL, 0x100004077774924uLL);
        *a2 = v8;
        if (v5[v7 - 1] == 47)
        {
          snprintf(v8, v7 + 2, "%s");
        }

        else
        {
          snprintf(v8, v7 + 2, "%s/");
        }
      }
    }

    value = xpc_dictionary_get_value(v3, off_10001C3F0[0]);
    v10 = xpc_dictionary_get_value(v3, off_10001C3F8[0]);
    v11 = xpc_dictionary_get_value(v3, off_10001C400[0]);
    result = xpc_dictionary_get_value(v3, off_10001C430);
    v12 = result;
    if (value)
    {
      result = xpc_get_type(value);
      if (result == &_xpc_type_int64)
      {
        result = xpc_int64_get_value(value);
        *(a2 + 32) = result;
      }
    }

    if (v10)
    {
      result = xpc_get_type(v10);
      if (result == &_xpc_type_int64)
      {
        result = xpc_int64_get_value(v10);
        *(a2 + 36) = result;
      }
    }

    if (v11)
    {
      result = xpc_get_type(v11);
      if (result == &_xpc_type_int64)
      {
        result = xpc_int64_get_value(v11);
        *(a2 + 40) = result;
      }
    }

    if (v12)
    {
      result = xpc_get_type(v12);
      if (result == &_xpc_type_BOOL)
      {
        result = xpc_BOOL_get_value(v12);
        *(a2 + 48) = result;
      }
    }
  }

  return result;
}

uint64_t sub_1000012B4(char *a1, void *a2, void *a3)
{
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  *string = 0u;
  v46 = 0u;
  v44 = 0;
  v45 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x30040EEE2E2AFuLL);
  if (!v6)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE10();
    }

    goto LABEL_18;
  }

  v7 = v6;
  v8 = strdup(a1);
  *v7 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD94();
    }

    goto LABEL_17;
  }

  v9 = dispatch_group_create();
  v7[1] = v9;
  if (!v9)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD18();
    }

LABEL_17:
    sub_1000018FC(v7);
LABEL_18:
    v42[3] = 0;
    v13 = -1;
    goto LABEL_64;
  }

  dispatch_group_enter(v9);
  v42[3] = v7;
  v46 = 0u;
  v47 = 0u;
  *string = 0u;
  v49 = 0u;
  v50 = 0u;
  HIDWORD(v46) = 9;
  pid = getpid();
  if (a2)
  {
    remote_connection = xpc_dictionary_get_remote_connection(a2);
    if (remote_connection)
    {
      pid = xpc_connection_get_pid(remote_connection);
    }
  }

  HIDWORD(v50) = pid;
  if (!strcmp(a1, off_10001C3D8[0]))
  {
    v12 = 86400;
    if (!a2)
    {
LABEL_25:
      DWORD1(v50) = v12;
      goto LABEL_26;
    }

LABEL_20:
    if (xpc_dictionary_get_value(a2, off_10001C408[0]))
    {
      uint64 = xpc_dictionary_get_uint64(a2, off_10001C408[0]);
      v15 = uint64;
      if (HIDWORD(uint64))
      {
        v16 = off_10001C390;
        v12 = -1;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v52 = v15;
          v53 = 1024;
          v54 = -1;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "timeout %llu too big, capped to %u\n", buf, 0x12u);
        }
      }

      else
      {
        v12 = uint64;
      }
    }

    goto LABEL_25;
  }

  if (!strcmp(a1, off_10001C3E0[0]))
  {
    v12 = 172800;
    if (!a2)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_26:
  value = xpc_dictionary_get_value(a2, off_10001C3D0[0]);
  if (value && (v18 = value, xpc_get_type(value) == &_xpc_type_uint64))
  {
    v19 = xpc_int64_get_value(v18);
  }

  else
  {
    v19 = qword_10001D6E0;
  }

  LODWORD(v47) = v19;
  v20 = xpc_dictionary_get_value(a2, off_10001C420[0]);
  if (v20 && (v21 = v20, xpc_get_type(v20) == &_xpc_type_uint64))
  {
    if (xpc_int64_get_value(v21))
    {
      v23 = 521;
    }

    else
    {
      v23 = 0;
    }

    HIDWORD(v46) = v23;
    v22 = v23 | 0x800;
  }

  else
  {
    v22 = 2057;
  }

  v24 = xpc_dictionary_get_value(a2, off_10001C430);
  if (v24)
  {
    v25 = v24;
    if (xpc_get_type(v24) == &_xpc_type_BOOL)
    {
      if (xpc_BOOL_get_value(v25))
      {
        v26 = v22;
      }

      else
      {
        v26 = 0;
      }

      HIDWORD(v46) = v26;
    }
  }

  v27 = xpc_dictionary_get_value(a2, off_10001C418[0]);
  if (v27)
  {
    v28 = v27;
    if (xpc_get_type(v27) == &_xpc_type_uint64)
    {
      DWORD2(v46) = xpc_uint64_get_value(v28);
    }
  }

  v29 = xpc_dictionary_get_value(a2, off_10001C428[0]);
  if (v29)
  {
    v30 = v29;
    if (xpc_get_type(v29) == &_xpc_type_uint64)
    {
      DWORD1(v47) = xpc_uint64_get_value(v30);
    }
  }

  v31 = xpc_dictionary_get_value(a2, off_10001C410[0]);
  if (v31 && (v32 = v31, xpc_get_type(v31) == &_xpc_type_string))
  {
    string_ptr = xpc_string_get_string_ptr(v32);
    *&v46 = strdup(string_ptr);
    if (!v46)
    {
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        sub_10000CC9C();
      }

      goto LABEL_56;
    }

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  if (!strcmp(a1, off_10001C3E0[0]) && v33)
  {
    *&v46 = strdup("droptap");
  }

  sub_100001110(a2, &v47 + 8);
LABEL_56:
  v34 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    v38 = v46;
    v39 = "''";
    if (!v46)
    {
      v38 = "''";
    }

    if (*(&v47 + 1))
    {
      v39 = *(&v47 + 1);
    }

    *buf = 136448002;
    v52 = "process_start_pcap_request";
    v53 = 1024;
    v54 = 247;
    v55 = 2082;
    v56 = a1;
    v57 = 2082;
    v58 = v38;
    v59 = 1024;
    v60 = DWORD1(v50);
    v61 = 2082;
    v62 = v39;
    v63 = 1024;
    v64 = DWORD2(v46);
    v65 = 1024;
    v66 = DWORD1(v47);
    _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%{public}s:%d starting %{public}s on %{public}s timeout %u in_file_dir_path %{public}s snaplen %u buffersize %u\n", buf, 0x42u);
  }

  if (sub_100006C60(*(v42[3] + 8), a1, &v46, &v45))
  {
    dispatch_group_leave(*(v42[3] + 8));
    sub_1000018FC(v42[3]);
    v42[3] = 0;
    v13 = -1;
  }

  else
  {
    v35 = *(v45 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100001954;
    block[3] = &unk_100018788;
    block[4] = &v41;
    block[5] = v45;
    dispatch_group_notify(v35, &_dispatch_main_q, block);
    *(v45 + 128) = HIDWORD(v50);
    if (string[0] && *string[0])
    {
      xpc_dictionary_set_string(a3, off_10001C3E8[0], string[0]);
    }

    dispatch_group_leave(*(v42[3] + 8));
    v13 = 0;
  }

  sub_100006DA8(&v46);
LABEL_64:
  _Block_object_dispose(&v41, 8);
  return v13;
}

void sub_1000018FC(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    free(a1);
  }
}

void sub_100001954(uint64_t a1)
{
  v2 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CE8C(a1, v2);
  }

  v3 = *(a1 + 40);
  *(v3 + 136) = 0;
  sub_100008BA4(*(v3 + 16), 0);
  sub_1000018FC(*(*(*(a1 + 32) + 8) + 24));
}

uint64_t sub_1000019C4(const char *a1, uint64_t a2, void *a3)
{
  v7 = 0u;
  v8 = 0u;
  *string = 0u;
  memset(v5, 0, sizeof(v5));
  HIDWORD(v5[0]) = 1;
  sub_100006D6C(a1, v5);
  if (string[0] && *string[0])
  {
    xpc_dictionary_set_string(a3, off_10001C3E8[0], string[0]);
  }

  sub_100006DA8(v5);
  return 0;
}

uint64_t sub_100001A3C(char *a1, void *a2, void *a3)
{
  if (a1)
  {
    if (!strcmp(a1, off_10001C3D8[0]))
    {
      v7 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "process_task_run";
        v14 = 1024;
        v15 = 315;
        v16 = 2082;
        v17 = a1;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d Starting %{public}s\n", &v12, 0x1Cu);
      }
    }

    else
    {
      v6 = strcmp(a1, off_10001C3E0[0]);
      v7 = off_10001C390;
      v8 = os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v12 = 136315650;
          v13 = "process_task_run";
          v14 = 1024;
          v15 = 324;
          v16 = 2082;
          v17 = a1;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d Can't start unknown command %{public}s\n", &v12, 0x1Cu);
        }

        v9 = -1;
        goto LABEL_16;
      }

      if (v8)
      {
        v12 = 136315650;
        v13 = "process_task_run";
        v14 = 1024;
        v15 = 320;
        v16 = 2082;
        v17 = a1;
        goto LABEL_14;
      }
    }

    v9 = sub_1000012B4(a1, a2, a3);
LABEL_16:
    xpc_dictionary_set_string(a3, off_10001C3C0[0], a1);
    return v9;
  }

  v10 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "process_task_run";
    v14 = 1024;
    v15 = 309;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%d Can't start command with no key\n", &v12, 0x12u);
  }

  return -1;
}

uint64_t sub_100001CB8(const char *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (!strcmp(a1, off_10001C3D8[0]) || !strcmp(a1, off_10001C3E0[0]))
    {
      v7 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = "process_task_stop";
        v13 = 1024;
        v14 = 344;
        v15 = 2082;
        v16 = a1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d Stopping %{public}s\n", &v11, 0x1Cu);
      }

      sub_1000019C4(a1, v8, a3);
      v6 = 0;
    }

    else
    {
      v5 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = "process_task_stop";
        v13 = 1024;
        v14 = 349;
        v15 = 2082;
        v16 = a1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d Can't stop unknown command %{public}s\n", &v11, 0x1Cu);
      }

      v6 = -1;
    }

    xpc_dictionary_set_string(a3, off_10001C3C0[0], a1);
  }

  else
  {
    v9 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446466;
      v12 = "process_task_stop";
      v13 = 1024;
      v14 = 337;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%d Can't stop command with no key\n", &v11, 0x12u);
    }

    return -1;
  }

  return v6;
}

void sub_100001EE8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

timeval *sub_100001F04(char *__s1, uint64_t a2)
{
  for (i = off_10001C190; i; i = *i)
  {
    if (!strcmp(__s1, *(i + 2)))
    {
      v5 = *(i + 6);
      v6 = off_10001C390;
      v7 = os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO);
      if (v5 != 1)
      {
        if (v7)
        {
          *buf = 136446210;
          v26 = __s1;
          v16 = "task %{public}s already exists\n";
          v17 = v6;
          v18 = OS_LOG_TYPE_INFO;
          v19 = 12;
LABEL_17:
          _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);
        }

        return 0;
      }

      if (v7)
      {
        *buf = 136446210;
        v26 = __s1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "task %{public}s skipped terminated\n", buf, 0xCu);
      }
    }
  }

  v8 = malloc_type_calloc(0x90uLL, 1uLL, 0x13380F65uLL);
  if (v8)
  {
    v9 = v8;
    v10 = strdup(__s1);
    v9[1].tv_sec = v10;
    if (!v10)
    {
      v20 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        v21 = __error();
        v22 = strerror(*v21);
        v23 = *__error();
        *buf = 136446978;
        v26 = "new_tasklet";
        v27 = 1024;
        v28 = 112;
        v29 = 2082;
        v30 = v22;
        v31 = 1024;
        v32 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) calloc()\n", buf, 0x22u);
      }

      v9[1].tv_usec = 1;
      sub_1000021D8(v9);
      return 0;
    }

    *&v9[2].tv_usec = a2;
    *(&v9[1].tv_usec + 1) = 1;
    gettimeofday(v9 + 6, 0);
    v11 = off_10001C198;
    v9->tv_sec = 0;
    *&v9->tv_usec = v11;
    *v11 = v9;
    off_10001C198 = v9;
  }

  else
  {
    v12 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v13 = __error();
      v14 = strerror(*v13);
      v15 = *__error();
      *buf = 136446978;
      v26 = "new_tasklet";
      v27 = 1024;
      v28 = 106;
      v29 = 2082;
      v30 = v14;
      v31 = 1024;
      v32 = v15;
      v16 = "%{public}s:%d - error %{public}s (%d) calloc()\n";
      v17 = v12;
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 34;
      goto LABEL_17;
    }

    return 0;
  }

  return v9;
}

void sub_1000021D8(NSObject **a1)
{
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CF38();
  }

  if (!*(a1 + 6))
  {
    v2 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "not terminated %p\n", &v14, 0xCu);
    }
  }

  v3 = a1[15];
  if (v3)
  {
    if (!dispatch_source_testcancel(a1[15]))
    {
      dispatch_source_cancel(v3);
    }

    a1[15] = 0;
  }

  v4 = a1[10];
  if (v4)
  {
    v5 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136446466;
      v15 = "free_tasklet";
      v16 = 1024;
      v17 = 54;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}s:%d cancelling tsk->tsk_stderr_source\n", &v14, 0x12u);
      v4 = a1[10];
    }

    if (!dispatch_source_testcancel(v4))
    {
      dispatch_source_cancel(v4);
    }

    a1[10] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    v7 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136446466;
      v15 = "free_tasklet";
      v16 = 1024;
      v17 = 61;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s:%d cancelling tsk->tsk_stdout_source\n", &v14, 0x12u);
      v6 = a1[9];
    }

    if (!dispatch_source_testcancel(v6))
    {
      dispatch_source_cancel(v6);
    }

    a1[9] = 0;
  }

  v8 = a1[7];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[11];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[2];
  if (v10)
  {
    free(v10);
  }

  v11 = a1[1];
  if (v11)
  {
    v12 = &off_10001C190;
    v13 = *a1;
    if (*a1)
    {
      v12 = *a1;
    }

    v12[1] = v11;
    a1[1]->isa = v13;
  }

  free(a1);
}

uint64_t sub_100002434(uint64_t a1, char *__s1, unsigned int (*a3)(void, uint64_t, timeval *), uint64_t a4, uint64_t a5, timeval **a6)
{
  v11 = sub_100001F04(__s1, a1);
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CFC0();
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    if (a3(*&v11[2].tv_usec, a4, v11 + 2))
    {
      sub_1000021D8(v11);
      return 0xFFFFFFFFLL;
    }

    v13 = *&v11[2].tv_usec;
    if (v13)
    {
      dispatch_group_enter(v13);
    }

    if (a5)
    {
      v14 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
      {
        sub_10000D03C(v11, a5, v14);
      }

      LODWORD(v11[7].tv_sec) = a5;
      v11[3].tv_sec = sub_100002728;
      v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      if (v15)
      {
        v16 = v15;
        *&v11[7].tv_usec = v15;
        ++*(&v11[1].tv_usec + 1);
        *handler = _NSConcreteStackBlock;
        *&handler[8] = 0x40000000;
        *&handler[16] = sub_100002B2C;
        *&handler[24] = &unk_1000187A8;
        v21 = v11;
        v22 = v15;
        dispatch_source_set_event_handler(v15, handler);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 0x40000000;
        v19[2] = sub_100002BF4;
        v19[3] = &unk_1000187C8;
        v19[4] = v11;
        v19[5] = v16;
        dispatch_source_set_cancel_handler(v16, v19);
        v17 = dispatch_time(0, 1000000000 * a5);
        dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_resume(v16);
      }

      else if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        sub_10000D0D8();
      }
    }
  }

  if (!qword_10001C5F0)
  {
    qword_10001C5F0 = os_transaction_create();
  }

  v18 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
  {
    *handler = 136315650;
    *&handler[4] = "run_func";
    *&handler[12] = 1024;
    *&handler[14] = 222;
    *&handler[18] = 2082;
    *&handler[20] = __s1;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s:%d transaction held for %{public}s\n", handler, 0x1Cu);
  }

  result = 0;
  if (a6)
  {
    *a6 = v11;
  }

  return result;
}

uint64_t sub_100002728(const char *a1)
{
  v2 = strlen(a1) - 1;
  v3 = a1[v2];
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D164();
  }

  for (i = off_10001C190; i; i = *i)
  {
    v5 = *(i + 2);
    v6 = v2;
    if (v3 != 42)
    {
      v6 = strlen(*(i + 2));
    }

    if (!strncmp(a1, v5, v6))
    {
      v7 = *(i + 6);
      v8 = off_10001C390;
      v9 = os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        if (v9)
        {
          *buf = 136446722;
          v17 = "stop_func";
          v18 = 1024;
          v19 = 282;
          v20 = 2082;
          v21 = a1;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s:%d skipped func %{public}s terminated\n\n", buf, 0x1Cu);
        }
      }

      else
      {
        if (v9)
        {
          *buf = 136446722;
          v17 = "stop_func";
          v18 = 1024;
          v19 = 246;
          v20 = 2082;
          v21 = a1;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s:%d stopping func %{public}s\n\n", buf, 0x1Cu);
          v5 = *(i + 2);
        }

        *(i + 17) = 3;
        sub_100008BA4(v5, 3);
        v10 = *(i + 15);
        if (v10 && !dispatch_source_testcancel(*(i + 15)))
        {
          v11 = off_10001C390;
          if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v17 = "stop_func";
            v18 = 1024;
            v19 = 254;
            v20 = 2082;
            v21 = a1;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s:%d cancelling timer source for func %{public}s\n\n", buf, 0x1Cu);
            v10 = *(i + 15);
          }

          dispatch_source_cancel(v10);
        }

        v12 = *(i + 4);
        if (v12)
        {
          if (!dispatch_source_testcancel(*(i + 4)))
          {
            dispatch_source_cancel(v12);
            v12 = *(i + 4);
          }

          dispatch_release(v12);
          *(i + 4) = 0;
        }

        v13 = *(i + 5);
        if (v13)
        {
          dispatch_group_leave(v13);
        }

        else
        {
          *(i + 17) = 0;
          sub_100008BA4(*(i + 2), 0);
        }

        *(i + 6) = 1;
        if (!qword_10001C5F0)
        {
          os_release(0);
          qword_10001C5F0 = 0;
        }

        v14 = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v17 = "stop_func";
          v18 = 1024;
          v19 = 280;
          v20 = 2082;
          v21 = a1;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:%d transaction dropped for %{public}s\n", buf, 0x1Cu);
        }
      }
    }
  }

  return 0;
}

void sub_100002A7C(const char *a1, char **a2)
{
  v4 = strlen(a1);
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D1E0();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  if (v4)
  {
    v5 = off_10001C190;
    if (off_10001C190)
    {
      while (strncmp(a1, v5[2], v4) || *(v5 + 6))
      {
        v5 = *v5;
        if (!v5)
        {
          return;
        }
      }

      v6 = v5[11];
      if (v6)
      {
        *a2 = strdup(v6);
      }
    }
  }
}

void sub_100002B2C(uint64_t a1)
{
  v2 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 16);
    v6 = 136446210;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "timeout fired for %{public}s\n", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  if (v5)
  {
    v5(*(v4 + 16));
  }

  dispatch_source_cancel(*(a1 + 40));
}

void sub_100002BF4(uint64_t a1)
{
  v2 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 16);
    v5 = 136446210;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "timeout cancelled for %{public}s\n", &v5, 0xCu);
  }

  *(*(a1 + 32) + 120) = 0;
  v4 = *(a1 + 40);
  --*(*(a1 + 32) + 28);
  dispatch_release(v4);
}

void sub_100002CE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

void sub_100002CFC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x22u);
}

uint64_t sub_100002D1C(NSObject *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
    {
      sub_10000DD18();
    }

    return 0xFFFFFFFFLL;
  }

  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D25C();
  }

  if ((*(a2 + 12) & 3) == 0)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000DC94();
    }

    return 0xFFFFFFFFLL;
  }

  v6 = malloc_type_calloc(1uLL, 0xF0uLL, 0x10B0040BA8824E3uLL);
  if (!v6)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000DC10();
    }

    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v6->i32[3] = -1;
  v6[13].i32[3] = -1;
  v8 = dispatch_queue_create("com.apple.packetcapturetest", 0);
  v7[7].i64[0] = v8;
  if (!v8)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000DB8C();
    }

    free(v7);
    return 0xFFFFFFFFLL;
  }

  dispatch_set_context(v8, v7);
  dispatch_set_finalizer_f(v7[7].i64[0], sub_10000429C);
  v7->i32[2] = *(a2 + 12);
  v9 = &v7->i8[8];
  v10 = *(a2 + 20);
  if (!v10)
  {
    v10 = 0x80000;
  }

  v7[1].i32[3] = v10;
  if (v7[4].i32[1])
  {
    v7[4].i32[3] = 256;
  }

  v7[11] = vbslq_s8(vceqzq_s64(*(a2 + 40)), xmmword_100010800, *(a2 + 40));
  v11 = *(a2 + 8);
  if (!v11)
  {
    v11 = 2048;
  }

  v7[1].i32[2] = v11;
  v12 = strdup(*a2);
  v7->i64[0] = v12;
  if (!v12)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000DA84();
    }

    goto LABEL_162;
  }

  if (strnstr(v12, "droptap", 7uLL))
  {
    v13 = "droptap";
  }

  else
  {
    v13 = "packets";
  }

  v14 = strdup(v13);
  v7[9].i64[0] = v14;
  v15 = off_10001C390;
  if (!v14)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000DA00();
    }

    goto LABEL_162;
  }

  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a2 + 16);
    *buf = 136315650;
    v129 = "capture_packet";
    v130 = 1024;
    *v131 = 1452;
    *&v131[4] = 1024;
    *&v131[6] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:%d pcap_opts->pco_compression %d\n", buf, 0x18u);
    v15 = off_10001C390;
  }

  v7[4].i32[1] = *(a2 + 16);
  v7[14].i32[2] = (*(a2 + 12) >> 11) & 1;
  v133 = 0u;
  v134 = 0u;
  v116 = 0;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D300();
  }

  if ((*v9 & 0x10) == 0)
  {
LABEL_23:
    v17 = pcap_setup_pktap_interface();
    v7[1].i64[0] = v17;
    if (!v17)
    {
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
      {
        sub_10000D650();
      }

      goto LABEL_136;
    }

    snprintf(__str, 0x13uLL, "/dev/bpf%d", 0);
    v18 = open(__str, 0);
    v7->i32[3] = v18;
    if (v18 == -1)
    {
      v19 = 1;
      while (*__error() == 16)
      {
        snprintf(__str, 0x13uLL, "/dev/bpf%d", v19);
        v20 = open(__str, 0);
        v7->i32[3] = v20;
        ++v19;
        if (v20 != -1)
        {
          goto LABEL_28;
        }
      }

      v37 = off_10001C390;
      if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_136;
      }

      v38 = __error();
      v39 = strerror(*v38);
      v40 = *__error();
      *v119 = 136447234;
      v120 = "open_bpf_device";
      v121 = 1024;
      v122 = 538;
      v123 = 2082;
      *v124 = v39;
      *&v124[8] = 1024;
      v125 = v40;
      v126 = 2082;
      v127 = __str;
      v36 = "%{public}s:%d - error %{public}s (%d) open(%{public}s)\n";
      v41 = v37;
      v42 = 44;
      goto LABEL_135;
    }

LABEL_28:
    v21 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v22 = __error();
      v23 = strerror(*v22);
      v24 = *__error();
      *v119 = 136446978;
      v120 = "open_bpf_device";
      v121 = 1024;
      v122 = 547;
      v123 = 2082;
      *v124 = v23;
      *&v124[8] = 1024;
      v125 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) Skipping ioctl(BIOCGETUUID) until sandbox updated\n", v119, 0x22u);
    }

    if ((*v9 & 0x10) != 0)
    {
      v116 = 1;
      if (ioctl(v7->i32[3], 0x80044280uLL, &v116) < 0)
      {
        v32 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_136;
        }

        v43 = __error();
        v44 = strerror(*v43);
        v45 = *__error();
        *v119 = 136446978;
        v120 = "open_bpf_device";
        v121 = 1024;
        v122 = 562;
        v123 = 2082;
        *v124 = v44;
        *&v124[8] = 1024;
        v125 = v45;
        v36 = "%{public}s:%d - error %{public}s (%d) ioctl(BIOCSHEADDROP, 1)\n";
        goto LABEL_134;
      }

      if (ioctl(v7->i32[3], 0x40044280uLL, &v116) < 0)
      {
        v32 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_136;
        }

        v49 = __error();
        v50 = strerror(*v49);
        v51 = *__error();
        *v119 = 136446978;
        v120 = "open_bpf_device";
        v121 = 1024;
        v122 = 566;
        v123 = 2082;
        *v124 = v50;
        *&v124[8] = 1024;
        v125 = v51;
        v36 = "%{public}s:%d - error %{public}s (%d) ioctl(BIOCGHEADDROP, 1)\n";
        goto LABEL_134;
      }

      if (v116 != 1 && os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        sub_10000D538();
      }
    }

    if ((*v9 & 0x100) == 0 || ((*v9 & 0x400) == 0 || (v25 = &unk_10001C290, dword_10001C29C == -1)) && (v25 = &unk_10001C1A0, dword_10001C1AC == -1))
    {
      v25 = 0;
    }

    else
    {
      v7[1].i32[3] = *(v25 + 7);
      v7[4].i32[1] = *(v25 + 17);
    }

    v113 = v7[1].i32[3];
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D5BC();
    }

    if (ioctl(v7->i32[3], 0xC0044266uLL, &v113) < 0)
    {
      v32 = off_10001C390;
      if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_136;
      }

      v33 = __error();
      v34 = strerror(*v33);
      v35 = *__error();
      *v119 = 136446978;
      v120 = "open_bpf_device";
      v121 = 1024;
      v122 = 597;
      v123 = 2082;
      *v124 = v34;
      *&v124[8] = 1024;
      v125 = v35;
      v36 = "%{public}s:%d - error %{public}s (%d) ioctl(BIOCSBLEN)\n";
      goto LABEL_134;
    }

    if (ioctl(v7->i32[3], 0x40044266uLL, &v113) < 0)
    {
      v32 = off_10001C390;
      if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_136;
      }

      v46 = __error();
      v47 = strerror(*v46);
      v48 = *__error();
      *v119 = 136446978;
      v120 = "open_bpf_device";
      v121 = 1024;
      v122 = 601;
      v123 = 2082;
      *v124 = v47;
      *&v124[8] = 1024;
      v125 = v48;
      v36 = "%{public}s:%d - error %{public}s (%d) ioctl(BIOCGBLEN)\n";
      goto LABEL_134;
    }

    v26 = v7[1].i32[3];
    v27 = v113;
    if (v26 != v113)
    {
      v28 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
      {
        *v119 = 136446978;
        v120 = "open_bpf_device";
        v121 = 1024;
        v122 = 605;
        v123 = 1024;
        *v124 = v27;
        *&v124[4] = 1024;
        *&v124[6] = v26;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%{public}s:%d bufsize truncated to %u from %u\n", v119, 0x1Eu);
        v27 = v113;
      }

      v7[1].i32[3] = v27;
      v26 = v27;
    }

    v29 = malloc_type_malloc((v7[4].i32[3] + v26), 0xF29D5E87uLL);
    v7[2].i64[0] = v29;
    if (v29)
    {
      v30 = v7[4].u32[3];
      if (!v30 || (v31 = malloc_type_malloc(v30, 0x7D9FC61CuLL), (v7[6].i64[0] = v31) != 0))
      {
        if (v25)
        {
          *dst = 0u;
          v118 = 0u;
          uuid_copy(dst, v25 + 48);
          __strlcpy_chk();
          if ((ioctl(v7->i32[3], 0x80204283uLL, dst) & 0x80000000) == 0)
          {
            goto LABEL_116;
          }

          v32 = off_10001C390;
          if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_136;
          }

          v69 = __error();
          v70 = strerror(*v69);
          v71 = *__error();
          *v119 = 136446978;
          v120 = "open_bpf_device";
          v121 = 1024;
          v122 = 635;
          v123 = 2082;
          *v124 = v70;
          *&v124[8] = 1024;
          v125 = v71;
          v36 = "%{public}s:%d - error %{public}s (%d) ioctl(BIOCSETUP)\n";
        }

        else
        {
          v116 = 1;
          v57 = ioctl(v7->i32[3], 0xC004427FuLL, &v116);
          v32 = off_10001C390;
          v58 = os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT);
          if (v57 < 0)
          {
            if (!v58)
            {
              goto LABEL_136;
            }

            v72 = __error();
            v73 = strerror(*v72);
            v74 = *__error();
            *v119 = 136446978;
            v120 = "open_bpf_device";
            v121 = 1024;
            v122 = 644;
            v123 = 2082;
            *v124 = v73;
            *&v124[8] = 1024;
            v125 = v74;
            v36 = "%{public}s:%d - error %{public}s (%d) ioctl(BIOCSWANTPKTAP)\n";
          }

          else
          {
            if (v58)
            {
              v59 = __error();
              v60 = strerror(*v59);
              v61 = *__error();
              *v119 = 136446978;
              v120 = "open_bpf_device";
              v121 = 1024;
              v122 = 651;
              v123 = 2082;
              *v124 = v60;
              *&v124[8] = 1024;
              v125 = v61;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) Skipping ioctl(BIOCSPKTHDRV2) until sandbox is updated\n", v119, 0x22u);
              v32 = off_10001C390;
            }

            v62 = v7[4].i32[1];
            v116 = v62;
            if (v62)
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *v119 = 136315650;
                v120 = "open_bpf_device";
                v121 = 1024;
                v122 = 663;
                v123 = 1024;
                *v124 = v62;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s:%d setting BIOCSHDRCOMP with %d\n", v119, 0x18u);
              }

              v63 = ioctl(v7->i32[3], 0x80044287uLL, &v116);
              v32 = off_10001C390;
              if (v63 < 0)
              {
                if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
                {
                  v75 = __error();
                  v76 = strerror(*v75);
                  v77 = *__error();
                  *v119 = 136446978;
                  v120 = "open_bpf_device";
                  v121 = 1024;
                  v122 = 665;
                  v123 = 2082;
                  *v124 = v76;
                  *&v124[8] = 1024;
                  v125 = v77;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) ioctl(BIOCSHDRCOMP)\n", v119, 0x22u);
                  v64 = 0;
                  v32 = off_10001C390;
                }

                else
                {
                  v64 = 0;
                }
              }

              else
              {
                v64 = 1;
              }

              v7[4].i32[2] = v64;
            }

            v116 = (*v9 >> 6) & (*v9 << 26 >> 31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v78 = __error();
              v79 = strerror(*v78);
              v80 = *__error();
              *v119 = 136446978;
              v120 = "open_bpf_device";
              v121 = 1024;
              v122 = 679;
              v123 = 2082;
              *v124 = v79;
              *&v124[8] = 1024;
              v125 = v80;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) Skipping ioctl(BIOCSTRUNCATE) until sandbox is fixed\n", v119, 0x22u);
            }

            v133 = 0u;
            v134 = 0u;
            __strlcpy_chk();
            if (ioctl(v7->i32[3], 0x8020426CuLL, &v133) != -1)
            {
LABEL_116:
              if ((*v9 & 0x110) != 0)
              {
                sub_100006E70(v7);
              }

              if (v7[4].i32[1])
              {
                v7[4].i32[2] = 0;
                if (ioctl(v7->i32[3], 0x40044289uLL, &v116))
                {
                  v81 = off_10001C390;
                  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
                  {
                    v82 = __error();
                    v83 = strerror(*v82);
                    v84 = *__error();
                    *v119 = 136446978;
                    v120 = "open_bpf_device";
                    v121 = 1024;
                    v122 = 709;
                    v123 = 2082;
                    *v124 = v83;
                    *&v124[8] = 1024;
                    v125 = v84;
                    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) BIOCGHDRCOMPON\n", v119, 0x22u);
                  }
                }

                else if (v116)
                {
                  v7[4].i32[2] = 1;
                }
              }

              v116 = 149;
              if (ioctl(v7->i32[3], 0x80044278uLL, &v116) == -1)
              {
                v32 = off_10001C390;
                if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_136;
                }

                v85 = __error();
                v86 = strerror(*v85);
                v87 = *__error();
                *v119 = 136446978;
                v120 = "open_bpf_device";
                v121 = 1024;
                v122 = 721;
                v123 = 2082;
                *v124 = v86;
                *&v124[8] = 1024;
                v125 = v87;
                v36 = "%{public}s:%d - error %{public}s (%d) ioctl(BIOCSDLT)\n";
              }

              else
              {
                v114 = 1;
                LODWORD(v115) = 0;
                if (ioctl(v7->i32[3], 0x8010426DuLL, &v114) != -1)
                {
                  sub_100007284();
                  if (!sub_100007368(v7->i32[3]))
                  {
                    goto LABEL_137;
                  }

LABEL_136:
                  sub_100006DF8(v7);
                  goto LABEL_137;
                }

                v32 = off_10001C390;
                if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_136;
                }

                v88 = __error();
                v89 = strerror(*v88);
                v90 = *__error();
                *v119 = 136446978;
                v120 = "open_bpf_device";
                v121 = 1024;
                v122 = 730;
                v123 = 2082;
                *v124 = v89;
                *&v124[8] = 1024;
                v125 = v90;
                v36 = "%{public}s:%d - error %{public}s (%d) ioctl(BIOCSRTIMEOUT)\n";
              }

              goto LABEL_134;
            }

            v32 = off_10001C390;
            if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_136;
            }

            v91 = __error();
            v92 = strerror(*v91);
            v93 = *__error();
            *v119 = 136446978;
            v120 = "open_bpf_device";
            v121 = 1024;
            v122 = 694;
            v123 = 2082;
            *v124 = v92;
            *&v124[8] = 1024;
            v125 = v93;
            v36 = "%{public}s:%d - error %{public}s (%d) ioctl(BIOCSETIF)\n";
          }
        }

LABEL_134:
        v41 = v32;
        v42 = 34;
        goto LABEL_135;
      }

      v52 = off_10001C390;
      if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_136;
      }

      v65 = __error();
      v66 = strerror(*v65);
      v67 = *__error();
      v68 = v7[4].i32[3];
      *v119 = 136447234;
      v120 = "open_bpf_device";
      v121 = 1024;
      v122 = 616;
      v123 = 2082;
      *v124 = v66;
      *&v124[8] = 1024;
      v125 = v67;
      v126 = 1024;
      LODWORD(v127) = v68;
      v36 = "%{public}s:%d - error %{public}s (%d) malloc(%u)\n";
    }

    else
    {
      v52 = off_10001C390;
      if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_136;
      }

      v53 = __error();
      v54 = strerror(*v53);
      v55 = *__error();
      v56 = v7[1].i32[3];
      *v119 = 136447234;
      v120 = "open_bpf_device";
      v121 = 1024;
      v122 = 610;
      v123 = 2082;
      *v124 = v54;
      *&v124[8] = 1024;
      v125 = v55;
      v126 = 1024;
      LODWORD(v127) = v56;
      v36 = "%{public}s:%d - error %{public}s (%d) malloc(%u)\n";
    }

    v41 = v52;
    v42 = 40;
LABEL_135:
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v36, v119, v42);
    goto LABEL_136;
  }

  if (v7 == &unk_10001C1A0 || v7 == &unk_10001C290)
  {
    if ((*v9 & 0x100) != 0)
    {
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        sub_10000D3A4();
      }
    }

    else
    {
      if (v7->i32[3] == -1)
      {
        goto LABEL_23;
      }

      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        sub_10000D42C();
      }
    }
  }

  else if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
  {
    sub_10000D4B0();
  }

LABEL_137:
  sub_1000064F0(v7);
  if (v7->i32[3] == -1)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D97C();
    }

    goto LABEL_162;
  }

  v94 = pcap_open_dead(151, 0xFFFF);
  v7[7].i64[1] = v94;
  if (!v94)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D8F8();
    }

    goto LABEL_162;
  }

  if (*v9)
  {
    if (sub_100004534(v7, a2))
    {
LABEL_162:
      v108 = v7[7].i64[0];
      if (v108)
      {
        dispatch_release(v108);
      }

      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
      {
        sub_10000DB08();
      }

      return 0xFFFFFFFFLL;
    }

    v105 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
    {
      v106 = v7[1].i64[0];
      v107 = v7[8].i64[1];
      *buf = 136446466;
      v129 = v106;
      v130 = 2082;
      *v131 = v107;
      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "Starting packet capture over %{public}s to %{public}s\n", buf, 0x16u);
    }
  }

  if ((*v9 & 2) != 0)
  {
    v95 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
    {
      v96 = v7[1].i64[0];
      *buf = 136446210;
      v129 = v96;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Starting packet capture over %{public}s to PowerLog\n", buf, 0xCu);
    }
  }

  v97 = dispatch_source_create(&_dispatch_source_type_read, v7->i32[3], 0, v7[7].i64[0]);
  v7[2].i64[1] = v97;
  if (!v97)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D874();
    }

    goto LABEL_162;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100004D08;
  handler[3] = &unk_1000187E8;
  handler[4] = v7;
  dispatch_source_set_event_handler(v97, handler);
  v98 = v7[2].i64[1];
  v111[0] = _NSConcreteStackBlock;
  v111[1] = 0x40000000;
  v111[2] = sub_10000646C;
  v111[3] = &unk_100018808;
  v111[4] = v7;
  dispatch_source_set_cancel_handler(v98, v111);
  v99 = v7->i32[2];
  if ((v99 & 9) != 1)
  {
    goto LABEL_148;
  }

  v100 = sub_1000067C4(v7, v99);
  v7[13].i32[3] = v100;
  if (v100 == -1)
  {
    goto LABEL_162;
  }

  v101 = dispatch_source_create(&_dispatch_source_type_read, v100, 0, v7[7].i64[0]);
  v7[14].i64[0] = v101;
  if (!v101)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D7F0();
    }

    goto LABEL_162;
  }

  dispatch_retain(v7[7].i64[0]);
  v102 = v7[14].i64[0];
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 0x40000000;
  v110[2] = sub_1000069F8;
  v110[3] = &unk_100018828;
  v110[4] = v7;
  dispatch_source_set_event_handler(v102, v110);
  v103 = v7[14].i64[0];
  v109[0] = _NSConcreteStackBlock;
  v109[1] = 0x40000000;
  v109[2] = sub_100006BE4;
  v109[3] = &unk_100018848;
  v109[4] = v7;
  dispatch_source_set_cancel_handler(v103, v109);
  dispatch_resume(v7[14].i64[0]);
LABEL_148:
  dispatch_resume(v7[2].i64[1]);
  if (a1)
  {
    v7[6].i64[1] = a1;
    dispatch_group_enter(a1);
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D6E8();
    }
  }

  dispatch_retain(v7[2].i64[1]);
  *a3 = v7[2].i64[1];
  result = os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10000D76C();
    return 0;
  }

  return result;
}

void sub_10000429C(uint64_t a1)
{
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000DD9C();
  }

  if ((*(a1 + 8) & 1) != 0 && *(a1 + 128))
  {
    pcap_ng_dump_close();
    *(a1 + 128) = 0;
  }

  v2 = *(a1 + 120);
  if (v2)
  {
    pcap_close(v2);
  }

  sub_100006DF8(a1);
  if ((*(a1 + 9) & 8) != 0)
  {
    v3 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 136);
      *buf = 136315650;
      v16 = "packet_capture_context_finalizer";
      v17 = 1024;
      v18 = 1202;
      v19 = 2080;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d Marking %s as purgeable\n", buf, 0x1Cu);
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      v14 = 66053;
      if (fsctl(v5, 0xC0084A44uLL, &v14, 0))
      {
        v6 = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 136);
          *buf = 136446722;
          v16 = "packet_capture_context_finalizer";
          v17 = 1024;
          v18 = 1211;
          v19 = 2082;
          v20 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d Failed to mark pcap as purgeable at %{public}s\n", buf, 0x1Cu);
        }
      }
    }
  }

  if (*a1)
  {
    free(*a1);
  }

  if (*(a1 + 128))
  {
    pcap_ng_dump_close();
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 200);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    v13 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v16 = "packet_capture_context_finalizer";
      v17 = 1024;
      v18 = 1231;
      v19 = 2048;
      v20 = v12;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s:%d leave group %p\n", buf, 0x1Cu);
      v12 = *(a1 + 104);
    }

    dispatch_group_leave(v12);
  }

  free(a1);
}

uint64_t sub_100004534(uint64_t a1, uint64_t a2)
{
  if (time((a1 + 160)) != -1)
  {
    *v60 = 0;
    if (mach_timebase_info(v60))
    {
      v4 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        v5 = __error();
        v6 = strerror(*v5);
        v7 = *__error();
        *v60 = 136446978;
        *&v60[4] = "open_pcap_file";
        v61 = 1024;
        v62 = 1264;
        v63 = 2082;
        v64 = v6;
        v65 = 1024;
        LODWORD(v66[0]) = v7;
        v8 = "%{public}s:%d - error %{public}s (%d) get_current_time() failed\n";
LABEL_7:
        v12 = v4;
        v13 = 34;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v8, v60, v13);
        return 0xFFFFFFFFLL;
      }

      return 0xFFFFFFFFLL;
    }

    v15 = mach_absolute_time();
    v16 = ++qword_10001C5F8;
    v17 = qword_10001C5F8 + v15 * *v60 / *&v60[4] % 0x3B9ACA00;
    *(a1 + 168) = v17;
    v18 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 136315906;
      *&v60[4] = "open_pcap_file";
      v61 = 1024;
      v62 = 1269;
      v63 = 2048;
      v64 = v16;
      v65 = 2048;
      v66[0] = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s:%d pcap_gen_count %lu pcc->pcc_nsecs %lu\n", v60, 0x26u);
    }

    *(a1 + 208) = *(a2 + 56);
    *(a1 + 216) = *(a2 + 64);
    *(a1 + 232) = *(a2 + 72);
    v19 = *(a2 + 24);
    if (v19)
    {
      v20 = realpath_DARWIN_EXTSN(v19, 0);
      *(a1 + 200) = v20;
      if (v20)
      {
        free(*(a2 + 24));
        *(a2 + 24) = 0;
        if (!mkdir(*(a1 + 200), 0x1EDu) || *__error() == 17)
        {
          goto LABEL_20;
        }

        v21 = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          v22 = __error();
          v23 = strerror(*v22);
          v24 = *__error();
          v25 = *(a1 + 200);
          *v60 = 136447234;
          *&v60[4] = "open_pcap_file";
          v61 = 1024;
          v62 = 1292;
          v63 = 2082;
          v64 = v23;
          v65 = 1024;
          LODWORD(v66[0]) = v24;
          WORD2(v66[0]) = 2082;
          *(v66 + 6) = v25;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) ppc_final_file_path - mkdir(%{public}s)\n", v60, 0x2Cu);
        }

        v26 = strdup("/Library/Logs/CrashReporter/");
        *(a1 + 200) = v26;
        if (v26)
        {
LABEL_20:
          v27 = strdup(*(a1 + 200));
          *(a1 + 192) = v27;
          if (!v27)
          {
            v4 = off_10001C390;
            if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            v28 = __error();
            v29 = strerror(*v28);
            v30 = *__error();
            *v60 = 136446978;
            *&v60[4] = "open_pcap_file";
            v61 = 1024;
            v62 = 1304;
            v63 = 2082;
            v64 = v29;
            v65 = 1024;
            LODWORD(v66[0]) = v30;
            v8 = "%{public}s:%d - error %{public}s (%d) ppc_temp_file_path - strdup(strdup(pcc->ppc_final_file_path)\n\n";
            goto LABEL_7;
          }

          goto LABEL_31;
        }

        v35 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        v52 = __error();
        v53 = strerror(*v52);
        v54 = *__error();
        *v60 = 136447234;
        *&v60[4] = "open_pcap_file";
        v61 = 1024;
        v62 = 1297;
        v63 = 2082;
        v64 = v53;
        v65 = 1024;
        LODWORD(v66[0]) = v54;
        WORD2(v66[0]) = 2082;
        *(v66 + 6) = "/Library/Logs/CrashReporter/";
        v8 = "%{public}s:%d - error %{public}s (%d) ppc_final_file_path - strdup(%{public}s)\n\n";
      }

      else
      {
        v35 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        v36 = __error();
        v37 = strerror(*v36);
        v38 = *__error();
        v39 = *(a2 + 24);
        *v60 = 136447234;
        *&v60[4] = "open_pcap_file";
        v61 = 1024;
        v62 = 1285;
        v63 = 2082;
        v64 = v37;
        v65 = 1024;
        LODWORD(v66[0]) = v38;
        WORD2(v66[0]) = 2082;
        *(v66 + 6) = v39;
        v8 = "%{public}s:%d - error %{public}s (%d) ppc_final_file_path - realpath(%{public}s)\n";
      }
    }

    else
    {
      v31 = strdup("/Library/Logs/CrashReporter/");
      *(a1 + 200) = v31;
      if (v31)
      {
        v32 = *(a1 + 192);
        if (v32 && *v32)
        {
          v33 = realpath_DARWIN_EXTSN(v32, 0);
          if (v33)
          {
            v34 = v33;
            free(*(a1 + 192));
            *(a1 + 192) = v34;
            goto LABEL_32;
          }

          v55 = off_10001C390;
          if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          v56 = __error();
          v57 = strerror(*v56);
          v58 = *__error();
          v59 = *(a1 + 192);
          *v60 = 136447234;
          *&v60[4] = "open_pcap_file";
          v61 = 1024;
          v62 = 1323;
          v63 = 2082;
          v64 = v57;
          v65 = 1024;
          LODWORD(v66[0]) = v58;
          WORD2(v66[0]) = 2082;
          *(v66 + 6) = v59;
          v8 = "%{public}s:%d - error %{public}s (%d) ppc_temp_file_path NULL - realpath(%{public}s)\n\n";
          v12 = v55;
LABEL_49:
          v13 = 44;
          goto LABEL_8;
        }

        v27 = strdup("/private/var/tmp/");
        *(a1 + 192) = v27;
        if (v27)
        {
LABEL_31:
          v34 = v27;
LABEL_32:
          v40 = sub_100007514(v34, *(a1 + 144), (a1 + 160), *(a1 + 168));
          *(a1 + 136) = v40;
          v41 = (a1 + 136);
          if (v40)
          {
            v42 = sub_100007514(*(a1 + 200), *(a1 + 144), (a1 + 160), *(a1 + 168));
            *(a2 + 32) = v42;
            if (v42)
            {
              v43 = a1 + 120;
              v44 = pcap_ng_dump_open();
              *(v43 + 8) = v44;
              if (v44)
              {
                return 0;
              }

              v51 = off_10001C390;
              if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
              {
                sub_10000DE20(v41, v43, v51);
              }
            }

            else if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
            {
              sub_10000DED4();
            }
          }

          else if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
          {
            sub_10000DF74();
          }

          return 0xFFFFFFFFLL;
        }

        v35 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        v48 = __error();
        v49 = strerror(*v48);
        v50 = *__error();
        *v60 = 136447234;
        *&v60[4] = "open_pcap_file";
        v61 = 1024;
        v62 = 1331;
        v63 = 2082;
        v64 = v49;
        v65 = 1024;
        LODWORD(v66[0]) = v50;
        WORD2(v66[0]) = 2082;
        *(v66 + 6) = "/private/var/tmp/";
        v8 = "%{public}s:%d - error %{public}s (%d) ppc_final_file_path NULL - strdup(%{public}s)\n\n";
      }

      else
      {
        v35 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        v45 = __error();
        v46 = strerror(*v45);
        v47 = *__error();
        *v60 = 136447234;
        *&v60[4] = "open_pcap_file";
        v61 = 1024;
        v62 = 1314;
        v63 = 2082;
        v64 = v46;
        v65 = 1024;
        LODWORD(v66[0]) = v47;
        WORD2(v66[0]) = 2082;
        *(v66 + 6) = "/Library/Logs/CrashReporter/";
        v8 = "%{public}s:%d - error %{public}s (%d) ppc_final_file_path NULL - strdup(%{public}s)\n\n";
      }
    }

    v12 = v35;
    goto LABEL_49;
  }

  v4 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
  {
    v9 = __error();
    v10 = strerror(*v9);
    v11 = *__error();
    *v60 = 136446978;
    *&v60[4] = "open_pcap_file";
    v61 = 1024;
    v62 = 1260;
    v63 = 2082;
    v64 = v10;
    v65 = 1024;
    LODWORD(v66[0]) = v11;
    v8 = "%{public}s:%d - error %{public}s (%d) time() failed\n\n";
    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

void sub_100004D08(uint64_t a1)
{
  v1 = a1;
  while (1)
  {
    while (1)
    {
      v2 = read(*(*(v1 + 32) + 12), (*(*(v1 + 32) + 32) + *(*(v1 + 32) + 76)), *(*(v1 + 32) + 28));
      if (v2 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        if (*__error() != 35)
        {
          v133 = off_10001C390;
          if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
          {
            v134 = __error();
            v135 = strerror(*v134);
            v136 = *__error();
            *v145 = 136446978;
            *&v145[4] = "capture_packet_block_invoke";
            *&v145[12] = 1024;
            *&v145[14] = 1495;
            *&v145[18] = 2082;
            *&v145[20] = v135;
            *&v145[28] = 1024;
            *&v145[30] = v136;
            _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) read bpf\n", v145, 0x22u);
          }

          dispatch_source_cancel(*(*(v1 + 32) + 40));
        }

        return;
      }
    }

    if (!v2)
    {
      return;
    }

    v3 = *(v1 + 32);
    v4 = *(v3 + 76);
    if (v2 >= 1)
    {
      break;
    }

LABEL_214:
    if (v4 && *(v3 + 72))
    {
      v124 = *(v3 + 88);
      v123 = *(v3 + 96);
      v125 = *(v3 + 80);
      if (v125 >= v4)
      {
        v126 = v4;
      }

      else
      {
        v126 = v125;
      }

      memcpy(v123, v124, v126);
      *(*(v1 + 32) + 88) = *(*(v1 + 32) + 96);
      v127 = *(v1 + 32);
      v128 = *(v127 + 80);
      if (v128 >= *(v127 + 76))
      {
        v128 = *(v127 + 76);
      }

      *(v127 + 80) = v128;
    }
  }

  v5 = (*(v3 + 32) + v4);
  v140 = (v5 + v2);
  while (1)
  {
    v146 = 0;
    memset(&v145[16], 0, 256);
    *v145 = 0u;
    v141 = *(v5 + 8);
    v143 = v5 + v141;
    *v145 = *v5;
    *&v145[8] = v5[1];
    *&v145[16] = *(v5 + 1);
    v6 = *&v145[16];
    v7 = *(v1 + 32);
    v144 = *&v145[16];
    if (!*(v7 + 72))
    {
      goto LABEL_14;
    }

    v8 = *(v5 + 18);
    v9 = *&v145[16];
    if (!*(v5 + 18))
    {
      v12 = v5 + v141;
      goto LABEL_13;
    }

    v10 = *(v7 + 88);
    if (!v10)
    {
      v129 = off_10001C390;
      if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v130 = *(v7 + 80);
      *buf = 136447234;
      *&buf[4] = "capture_packet_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1534;
      *&buf[18] = 1024;
      *&buf[20] = v8;
      *&buf[24] = 1024;
      *&buf[26] = v130;
      *&buf[30] = 1024;
      *&buf[32] = *&v145[16];
      v131 = "%{public}s:%d prev_datap NULL bh_complen %u prev_caplen %u caplen %u \n\n";
      goto LABEL_233;
    }

    if (&v143[-*(v5 + 18)] < *(v7 + 32) - *(v7 + 76))
    {
      v129 = off_10001C390;
      if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v132 = *(v7 + 80);
      *buf = 136447234;
      *&buf[4] = "capture_packet_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 1539;
      *&buf[18] = 1024;
      *&buf[20] = v8;
      *&buf[24] = 1024;
      *&buf[26] = v132;
      *&buf[30] = 1024;
      *&buf[32] = *&v145[16];
      v131 = "%{public}s:%d datap underflow bh_complen %u prev_caplen %u caplen %u \n\n";
      goto LABEL_233;
    }

    v11 = *(v7 + 80);
    if (v11 < v8)
    {
      break;
    }

    v12 = &v143[-*(v5 + 18)];
    memmove(v12, v10, *(v5 + 18));
    v6 = *&v145[16];
    v9 = *&v145[16] + v8;
    *&v145[16] += v8;
    v7 = *(v1 + 32);
LABEL_13:
    v143 = v12;
    *(v7 + 88) = v12;
    *(*(v1 + 32) + 80) = v9;
LABEL_14:
    v142 = v5;
    if (dword_10001C388 >= 3)
    {
      if ((v143[38] & 8) != 0)
      {
        memset(buf, 0, 37);
        memset(v149, 0, 37);
        v53 = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
        {
          v54 = *v143;
          *out = 67109376;
          *&out[4] = v54;
          *&out[8] = 2048;
          *&out[10] = 40;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_length %u (sizeof(struct pktap_v2_hdr) %lu)\n\n", out, 0x12u);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v55 = *(v143 + 3);
          *out = 67109120;
          *&out[4] = v55;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_dlt %u\n\n", out, 8u);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v56 = v143[3];
          v57 = &v143[v56];
          v100 = v56 == 0;
          v58 = "";
          if (!v100)
          {
            v58 = v57;
          }

          v59 = *(v143 + 6);
          *out = 136446466;
          *&out[4] = v58;
          *&out[12] = 1024;
          *&out[14] = v59;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_ifname %{public}s pth2_iftype %d\n\n", out, 0x12u);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v60 = *(v143 + 9);
          *out = 67109120;
          *&out[4] = v60;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_flags 0x%x\n\n", out, 8u);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v61 = *(v143 + 4);
          *out = 67109120;
          *&out[4] = v61;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_protocol_family %u\n\n", out, 8u);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v62 = *(v143 + 4);
          v63 = *(v143 + 5);
          *out = 67109376;
          *&out[4] = v62;
          *&out[8] = 1024;
          *&out[10] = v63;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_frame_pre_length %u pth2_frame_post_length %u\n\n", out, 0xEu);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v64 = *(v143 + 5);
          *out = 67109120;
          *&out[4] = v64;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_svc %u\n\n", out, 8u);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v65 = *(v143 + 6);
          *out = 67109120;
          *&out[4] = v65;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_flowid %u\n\n", out, 8u);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v66 = *(v143 + 7);
          *out = 67109120;
          *&out[4] = v66;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_ipproto %u\n\n", out, 8u);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v67 = *(v143 + 7);
          v68 = *(v143 + 8);
          *out = 67109376;
          *&out[4] = v67;
          *&out[8] = 1024;
          *&out[10] = v68;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_pid %u pth2_e_pid %u\n\n", out, 0xEu);
          v53 = off_10001C390;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          if (v143[4])
          {
            v69 = &v143[v143[4]];
          }

          else
          {
            v69 = "";
          }

          v70 = v143[5];
          *out = 136446466;
          if (v70)
          {
            v71 = &v143[v70];
          }

          else
          {
            v71 = "";
          }

          *&out[4] = v69;
          *&out[12] = 2082;
          *&out[14] = v71;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "pth2_comm %{public}s pth2_ecomm %{public}s\n\n", out, 0x16u);
        }

        if (v143[1])
        {
          uuid_unparse(&v143[v143[1]], buf);
        }

        if (v143[2])
        {
          uuid_unparse(&v143[v143[2]], v149);
        }

        v72 = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
        {
          if (v143[1])
          {
            v73 = buf;
          }

          else
          {
            v73 = "";
          }

          v74 = v149;
          if (!v143[2])
          {
            v74 = "";
          }

          *out = 136446466;
          *&out[4] = v73;
          *&out[12] = 2082;
          *&out[14] = v74;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "pth2_uuid %{public}s pth2_euuid %{public}s\n\n", out, 0x16u);
        }

        v6 = v144;
      }

      else
      {
        memset(out, 0, sizeof(out));
        memset(v147, 0, 37);
        v13 = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
        {
          v14 = *v143;
          *buf = 67109888;
          *&buf[4] = v14;
          *&buf[8] = 2048;
          *&buf[10] = 156;
          *&buf[18] = 2048;
          *&buf[20] = *v145;
          *&buf[28] = 1024;
          *&buf[30] = *&v145[8];
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_length %u (sizeof(struct pktap_header) %lu) ts %ld.%d\n\n", buf, 0x22u);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = *(v143 + 1);
          *buf = 67109120;
          *&buf[4] = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_type_next %u\n\n", buf, 8u);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v16 = *(v143 + 2);
          *buf = 67109120;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_dlt %u\n\n", buf, 8u);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v17 = *(v143 + 40);
          *buf = 136446466;
          *&buf[4] = v143 + 12;
          *&buf[12] = 1024;
          *&buf[14] = v17;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_ifname %{public}s pth_iftype %d\n\n", buf, 0x12u);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v18 = *(v143 + 9);
          *buf = 67109120;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_flags 0x%x\n\n", buf, 8u);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v19 = *(v143 + 10);
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_protocol_family %u\n\n", buf, 8u);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v20 = *(v143 + 11);
          v21 = *(v143 + 12);
          *buf = 67109376;
          *&buf[4] = v20;
          *&buf[8] = 1024;
          *&buf[10] = v21;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_frame_pre_length %u pth_frame_post_length %u\n\n", buf, 0xEu);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v22 = *(v143 + 19);
          *buf = 67109120;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_svc %u\n\n", buf, 8u);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v23 = *(v143 + 27);
          *buf = 67109120;
          *&buf[4] = v23;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_flowid %u\n\n", buf, 8u);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v24 = v143[73];
          *buf = 67109120;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_ipproto %u\n\n", buf, 8u);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v25 = *(v143 + 13);
          v26 = *(v143 + 21);
          *buf = 67109376;
          *&buf[4] = v25;
          *&buf[8] = 1024;
          *&buf[10] = v26;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_pid %u pth_epid %u\n\n", buf, 0xEu);
          v13 = off_10001C390;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          *&buf[4] = v143 + 56;
          *&buf[12] = 2082;
          *&buf[14] = v143 + 88;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pth_comm %{public}s pth_ecomm %{public}s\n\n", buf, 0x16u);
        }

        uuid_unparse(v143 + 124, out);
        uuid_unparse(v143 + 140, v147);
        v27 = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
        {
          if (uuid_is_null(v143 + 124))
          {
            v28 = "";
          }

          else
          {
            v28 = out;
          }

          is_null = uuid_is_null(v143 + 140);
          *buf = 136446466;
          if (is_null)
          {
            v30 = "";
          }

          else
          {
            v30 = v147;
          }

          *&buf[4] = v28;
          v5 = v142;
          *&buf[12] = 2082;
          *&buf[14] = v30;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "pth_uuid %{public}s pth_euuid %{public}s\n\n", buf, 0x16u);
        }

        v6 = v144;
        if (dword_10001C388 >= 4)
        {
          v31 = *v143;
          v32 = *(v143 + 11);
          v33 = *&v145[20] - (v32 + v31);
          if (v33 >= 0x20)
          {
            v34 = 32;
          }

          else
          {
            v34 = v33;
          }

          if (*&v145[20] != v32 + v31)
          {
            v35 = 0;
            v36 = &v143[v31 + v32];
            do
            {
              v37 = 0;
              v38 = v35;
              v35 += 16;
              if (v35 >= v34)
              {
                v39 = v34;
              }

              else
              {
                v39 = v35;
              }

              do
              {
                v40 = v36[v38];
                v41 = v36[v38];
                if (v40 < 0)
                {
                  v42 = __maskrune(v36[v38], 0x40000uLL);
                }

                else
                {
                  v42 = _DefaultRuneLocale.__runetype[v40] & 0x40000;
                }

                v43 = v40 >> 4;
                v44 = v40 & 0xF;
                v45 = &v150[v38 & 0xF];
                if (v42)
                {
                  v46 = v41;
                }

                else
                {
                  v46 = 46;
                }

                *v45 = v46;
                v45[1] = 0;
                v47 = v43 | 0x30;
                v48 = v43 + 87;
                if (v40 < 0xFFFFFFA0)
                {
                  v48 = v47;
                }

                buf[v37] = v48;
                if (v44 >= 0xA)
                {
                  v49 = v44 + 87;
                }

                else
                {
                  v49 = v44 | 0x30;
                }

                v50 = v37 + 2;
                buf[v37 + 1] = v49;
                if (v38)
                {
                  v37 += 3;
                  buf[v50] = 32;
                }

                else
                {
                  v37 += 2;
                }

                ++v38;
              }

              while (v38 < v39);
              for (; v38 < v35; v37 = v51)
              {
                *&buf[v37] = 8224;
                v51 = v37 + 2;
                if (v38)
                {
                  buf[v51] = 32;
                  v51 = v37 + 3;
                }

                ++v38;
              }

              buf[v37] = 0;
              v52 = off_10001C390;
              if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
              {
                *v149 = 136446978;
                *&v149[4] = " ";
                *&v149[12] = 2082;
                *&v149[14] = buf;
                *&v149[22] = 2082;
                *&v149[24] = v150;
                *&v149[32] = 2082;
                *&v149[34] = "";
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%{public}s%{public}s  %{public}s%{public}s\n", v149, 0x2Au);
              }

              v6 = v144;
            }

            while (v35 < v34);
          }

          v1 = a1;
          v5 = v142;
        }
      }
    }

    v75 = *(v1 + 32);
    v76 = *(v75 + 8);
    if ((~v76 & 0xA0) != 0 || *(v75 + 72))
    {
      goto LABEL_124;
    }

    v77 = v5;
    v78 = v5[2];
    if (v78 > 0x9B)
    {
      v81 = (v77 + *(v77 + 8));
      v82 = *v81;
      if (v82 > v78)
      {
        v83 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_140;
        }

        *buf = 136446466;
        *&buf[4] = "get_packet_truncated_length";
        *&buf[12] = 1024;
        *&buf[14] = 1071;
        v84 = v83;
        v85 = "%{public}s:%d bh_caplen shorter than pktap pth_length\n\n";
        goto LABEL_158;
      }

      v86 = v81[11];
      v87 = v86 + v82;
      if (v86 + v82 > v78)
      {
        v88 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
        {
LABEL_140:
          *&v145[16] = v78;
          v6 = v144;
          goto LABEL_124;
        }

        *buf = 136446466;
        *&buf[4] = "get_packet_truncated_length";
        *&buf[12] = 1024;
        *&buf[14] = 1076;
        v84 = v88;
        v85 = "%{public}s:%d bh_caplen shorter than pktap pth_frame_pre_length\n\n";
        goto LABEL_158;
      }

      v89 = *(v81 + 40);
      if (v89 == 1)
      {
        if (!(v81[2] | v86))
        {
          v86 = 4;
        }

        v87 = v86 + v82;
      }

      v90 = v81 + v82;
      v91 = v78 - v87;
      v92 = v81[10];
      if (v92 == 30 || v92 == 2)
      {
        if (v89 == 6)
        {
          if (v86 <= 0xD)
          {
            v93 = v86;
            v94 = off_10001C390;
            if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              *&buf[4] = "get_packet_truncated_length";
              *&buf[12] = 1024;
              *&buf[14] = 1100;
              v95 = v94;
              v96 = "%{public}s:%d too short for Ethernet header\n\n";
              goto LABEL_155;
            }

LABEL_208:
            v6 = v144;
            v86 = v93;
            goto LABEL_209;
          }

          v99 = __rev16(*(v90 + 6));
          v100 = v99 == 2048 || v99 == 34525;
          if (!v100)
          {
            if (v99 != 2054)
            {
              v93 = v86;
              v119 = off_10001C390;
              if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                *&buf[4] = "get_packet_truncated_length";
                *&buf[12] = 1024;
                *&buf[14] = 1113;
                *&buf[18] = 1024;
                *&buf[20] = v99;
                _os_log_debug_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEBUG, "%{public}s:%d Ethernet not IP or IPv6 type: 0x%04x\n\n", buf, 0x18u);
              }

              if (v91 >= 0x28)
              {
                v91 = 40;
              }

              goto LABEL_208;
            }

            if (dword_10001C388 < 3)
            {
LABEL_209:
              v78 = v91 + v86 + *v81;
              v120 = v142[2];
              if (v78 > v120)
              {
                v121 = off_10001C390;
                v122 = os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR);
                v6 = v144;
                if (!v122)
                {
                  goto LABEL_129;
                }

                *buf = 136446978;
                *&buf[4] = "get_packet_truncated_length";
                *&buf[12] = 1024;
                *&buf[14] = 1171;
                *&buf[18] = 1024;
                *&buf[20] = v78;
                *&buf[24] = 1024;
                *&buf[26] = v120;
                _os_log_error_impl(&_mh_execute_header, v121, OS_LOG_TYPE_ERROR, "%{public}s:%d ret_len %u length greater than bh_caplen %u\n\n", buf, 0x1Eu);
                goto LABEL_128;
              }

              goto LABEL_133;
            }

            v93 = v86;
            v117 = off_10001C390;
            if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_208;
            }

            *buf = 136446722;
            *&buf[4] = "get_packet_truncated_length";
            *&buf[12] = 1024;
            *&buf[14] = 1108;
            *&buf[18] = 1024;
            *&buf[20] = 2054;
            v95 = v117;
            v96 = "%{public}s:%d Ethernet type 0x%04x (ARP)\n\n";
            v98 = 24;
LABEL_156:
            _os_log_debug_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEBUG, v96, buf, v98);
            goto LABEL_208;
          }
        }

        v101 = &v90[v86];
        if (v92 == 30)
        {
          v108 = v91;
          if (v91 >= 0x29u)
          {
            v109 = v86;
            v110 = sub_1000076EC(v101[6], v101 + 20, (v91 - 40));
            v86 = v109;
            v6 = v144;
            if ((v110 + 40) >= v91)
            {
              v108 = v91;
            }

            else
            {
              v108 = v110 + 40;
            }
          }

          v111 = v108;
          if (dword_10001C388 >= 3)
          {
            v107 = v86;
            v112 = off_10001C390;
            if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "get_packet_truncated_length";
              *&buf[12] = 1024;
              *&buf[14] = 1127;
              *&buf[18] = 1024;
              *&buf[20] = v111;
              *&buf[24] = 1024;
              *&buf[26] = v91;
              v113 = v112;
              v114 = "%{public}s:%d IPv6 length %u / %u\n\n";
              goto LABEL_187;
            }

            goto LABEL_199;
          }
        }

        else
        {
          if (v91 < 0x15u || (v102 = 4 * (*v101 & 0xF), v102 >= v91))
          {
            LOWORD(v105) = v91;
          }

          else
          {
            v103 = v86;
            v104 = sub_1000076EC(v101[9], &v101[v102], (v91 - v102));
            v86 = v103;
            v6 = v144;
            v105 = (v104 + v102);
            if (v105 >= v91)
            {
              LOWORD(v105) = v91;
            }
          }

          v111 = v105;
          if (dword_10001C388 >= 3)
          {
            v107 = v86;
            v115 = off_10001C390;
            if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "get_packet_truncated_length";
              *&buf[12] = 1024;
              *&buf[14] = 1122;
              *&buf[18] = 1024;
              *&buf[20] = v111;
              *&buf[24] = 1024;
              *&buf[26] = v91;
              v113 = v115;
              v114 = "%{public}s:%d IP length %u / %u\n\n";
LABEL_187:
              v116 = 30;
LABEL_198:
              _os_log_debug_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEBUG, v114, buf, v116);
            }

            goto LABEL_199;
          }
        }

LABEL_201:
        v91 = v111;
        goto LABEL_209;
      }

      if (v89 == 6)
      {
        if (v91 <= 0xD)
        {
          v93 = v86;
          v97 = off_10001C390;
          if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_208;
          }

          *buf = 136446466;
          *&buf[4] = "get_packet_truncated_length";
          *&buf[12] = 1024;
          *&buf[14] = 1139;
          v95 = v97;
          v96 = "%{public}s:%d too short for Ethernet header\n\n";
LABEL_155:
          v98 = 18;
          goto LABEL_156;
        }

        if (v91 >= 0x1E)
        {
          v111 = 30;
        }

        else
        {
          v111 = v91;
        }

        if (dword_10001C388 < 2)
        {
          goto LABEL_201;
        }

        v107 = v86;
        loga = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
        {
          v118 = __rev16(*(v90 + 6));
          *buf = 136447234;
          *&buf[4] = "get_packet_truncated_length";
          *&buf[12] = 1024;
          *&buf[14] = 1152;
          *&buf[18] = 1024;
          *&buf[20] = v118;
          *&buf[24] = 1024;
          *&buf[26] = v111;
          *&buf[30] = 1024;
          *&buf[32] = v91;
          v113 = loga;
          v114 = "%{public}s:%d Ethernet type 0x%04x length %u / %u\n";
          v116 = 36;
          goto LABEL_198;
        }

LABEL_199:
        v91 = v111;
      }

      else
      {
        if (v91 >= 0x10)
        {
          v106 = 16;
        }

        else
        {
          v106 = v91;
        }

        if (dword_10001C388 < 2)
        {
          v91 = v106;
          goto LABEL_209;
        }

        v107 = v86;
        log = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          *&buf[4] = "get_packet_truncated_length";
          *&buf[12] = 1024;
          *&buf[14] = 1162;
          *&buf[18] = 1024;
          *&buf[20] = v92;
          *&buf[24] = 1024;
          *&buf[26] = v106;
          *&buf[30] = 1024;
          *&buf[32] = v91;
          _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s:%d proto 0x%x length %u / %u\n\n", buf, 0x24u);
        }

        v91 = v106;
      }

      v6 = v144;
      v86 = v107;
      goto LABEL_209;
    }

    v79 = off_10001C390;
    v80 = os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG);
    v6 = v144;
    if (v80)
    {
      *buf = 136446466;
      *&buf[4] = "get_packet_truncated_length";
      *&buf[12] = 1024;
      *&buf[14] = 1066;
      v84 = v79;
      v85 = "%{public}s:%d bh_caplen shorter than struct pktap_header\n\n";
LABEL_158:
      _os_log_debug_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEBUG, v85, buf, 0x12u);
      v78 = v142[2];
      v6 = v144;
    }

LABEL_133:
    *&v145[16] = v78;
    if (!v78)
    {
      goto LABEL_129;
    }

    v76 = *(*(v1 + 32) + 8);
LABEL_124:
    if (v76)
    {
      if ((v143[38] & 8) != 0)
      {
        pcap_ng_dump_pktap_v2();
      }

      else
      {
        pcap_ng_dump_pktap();
      }

LABEL_128:
      v6 = v144;
    }

LABEL_129:
    v5 = (v142 + (((v6 + v141) + 3) & 0x1FFFFFFFCLL));
    if (v5 >= v140)
    {
      v3 = *(v1 + 32);
      LODWORD(v4) = *(v3 + 76);
      goto LABEL_214;
    }
  }

  v129 = off_10001C390;
  if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
  {
    return;
  }

  *buf = 136447234;
  *&buf[4] = "capture_packet_block_invoke";
  *&buf[12] = 1024;
  *&buf[14] = 1544;
  *&buf[18] = 1024;
  *&buf[20] = v8;
  *&buf[24] = 1024;
  *&buf[26] = v11;
  *&buf[30] = 1024;
  *&buf[32] = *&v145[16];
  v131 = "%{public}s:%d bh_complen prev_caplen bh_complen %u prev_caplen %u caplen %u \n\n";
LABEL_233:
  _os_log_error_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, v131, buf, 0x24u);
}

void sub_10000646C(uint64_t a1)
{
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000DFF8();
  }

  sub_1000064F0(*(a1 + 32));
  dispatch_release(*(*(a1 + 32) + 40));
  *(*(a1 + 32) + 40) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 224);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v2 = *(a1 + 32);
  }

  dispatch_release(*(v2 + 112));
}

void sub_1000064F0(uint64_t a1)
{
  v16 = 0;
  v15 = 0;
  v2 = *(a1 + 12);
  if (v2 != -1)
  {
    if (ioctl(v2, 0x4008426FuLL, &v16))
    {
      v3 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        v4 = __error();
        v5 = strerror(*v4);
        v6 = *__error();
        *buf = 136446978;
        *v18 = "get_pcc_info";
        *&v18[8] = 1024;
        v19 = 321;
        v20 = 2082;
        *v21 = v5;
        *&v21[8] = 1024;
        *v22 = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) BIOCGSTATS\n", buf, 0x22u);
      }
    }

    v7 = ioctl(*(a1 + 12), 0x40044266uLL, &v15);
    v8 = off_10001C390;
    if (v7 && os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v9 = __error();
      v10 = strerror(*v9);
      v11 = *__error();
      *buf = 136446978;
      *v18 = "get_pcc_info";
      *&v18[8] = 1024;
      v19 = 324;
      v20 = 2082;
      *v21 = v10;
      *&v21[8] = 1024;
      *v22 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) BIOCGBLEN\n", buf, 0x22u);
      v8 = off_10001C390;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 8);
      *buf = 136448002;
      *v18 = "get_pcc_info";
      *&v18[8] = 1024;
      v19 = 330;
      v20 = 1024;
      *v21 = v14;
      *&v21[4] = 1040;
      *&v21[6] = 16;
      *v22 = 2096;
      *&v22[2] = a1 + 48;
      v23 = 1024;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = HIDWORD(v16);
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s:%d flags 0x%x uuid %{uuid_t}.16P bufsize %u packets captured %u dropped %u\n", buf, 0x3Au);
    }

    v12 = HIDWORD(v16);
    if (HIDWORD(v16))
    {
      v13 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v18 = v12;
        *&v18[4] = 1024;
        *&v18[6] = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Dropped %u packets for %u captured\n", buf, 0xEu);
      }
    }
  }
}

uint64_t sub_1000067C4(uint64_t a1, char a2)
{
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E084();
  }

  v4 = socket(32, 3, 1);
  if (v4 == -1)
  {
    v6 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __error();
      v8 = strerror(*v7);
      v9 = *__error();
      *buf = 136446978;
      v18 = "open_kev_socket";
      v19 = 1024;
      v20 = 767;
      v21 = 2082;
      v22 = v8;
      v23 = 1024;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) socket(PF_SYSTEM, SOCK_RAW, SYSPROTO_EVENT)\n", buf, 0x22u);
    }

    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v15 = 1;
  v16 = veor_s8(vshl_u32(vdup_n_s32(a2 & 4), -2), 0x200000001);
  if (ioctl(v4, 0x800C6502uLL, &v15) == -1)
  {
    v10 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v11 = __error();
      v12 = strerror(*v11);
      v13 = *__error();
      *buf = 136446978;
      v18 = "open_kev_socket";
      v19 = 1024;
      v20 = 783;
      v21 = 2082;
      v22 = v12;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) ioctl(SIOCSKEVFILT)\n", buf, 0x22u);
    }

    goto LABEL_11;
  }

  if (sub_100007368(v5))
  {
LABEL_11:
    close(v5);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 220) = v5;
  return v5;
}

void sub_1000069F8(uint64_t a1)
{
  do
  {
    while (1)
    {
      v10.tv_sec = 0;
      *&v10.tv_usec = 0;
      if (recv(*(*(a1 + 32) + 220), *(*(a1 + 32) + 32), *(*(a1 + 32) + 28), 0) == -1)
      {
        break;
      }

      if (gettimeofday(&v10, 0))
      {
        v2 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        v7 = __error();
        v8 = strerror(*v7);
        v9 = *__error();
        *buf = 136446978;
        v12 = "capture_packet_block_invoke";
        v13 = 1024;
        v14 = 1665;
        v15 = 2082;
        v16 = v8;
        v17 = 1024;
        v18 = v9;
        v6 = "%{public}s:%d - error %{public}s (%d) gettimeofday\n";
        goto LABEL_10;
      }

      pcap_ng_dump_kern_event();
    }
  }

  while (*__error() == 4);
  if (*__error() == 35)
  {
    return;
  }

  v2 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
  {
    v3 = __error();
    v4 = strerror(*v3);
    v5 = *__error();
    *buf = 136446978;
    v12 = "capture_packet_block_invoke";
    v13 = 1024;
    v14 = 1660;
    v15 = 2082;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    v6 = "%{public}s:%d - error %{public}s (%d) read kevfd\n";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v6, buf, 0x22u);
  }

LABEL_11:
  dispatch_source_cancel(*(*(a1 + 32) + 224));
}

void sub_100006BE4(uint64_t a1)
{
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E108();
  }

  dispatch_release(*(*(a1 + 32) + 224));
  *(*(a1 + 32) + 224) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v2 = *(a1 + 32);
  }

  dispatch_release(*(v2 + 112));
}

uint64_t sub_100006C60(uint64_t a1, char *__s1, uint64_t a3, void *a4)
{
  v13 = 0;
  if (!*a3)
  {
    v8 = strdup("pktap");
    *a3 = v8;
    if (!v8)
    {
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        sub_10000E194();
      }

      return -1;
    }
  }

  if (sub_100002434(a1, __s1, sub_100002D1C, a3, *(a3 + 68), &v13))
  {
    sub_100008BA4(__s1, 0);
    if (a4)
    {
      *a4 = 0;
    }

    return -1;
  }

  v9 = v13;
  *&v13[8].tv_usec = 1;
  sub_100008BA4(v9[1].tv_sec, 1);
  v10 = *(a3 + 32);
  if (v10)
  {
    v11 = strdup(v10);
    *&v13[5].tv_usec = v11;
  }

  result = 0;
  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t sub_100006D6C(const char *a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002A7C(a1, (a2 + 32));
  }

  sub_100002728(a1);
  return 0;
}

void sub_100006DA8(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    free(v4);
    *(a1 + 32) = 0;
  }
}

uint64_t sub_100006DF8(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 != -1)
  {
    close(v2);
    *(a1 + 12) = -1;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 16))
  {
    pcap_cleanup_pktap_interface();
    free(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  result = *(a1 + 220);
  if (result != -1)
  {
    result = close(result);
    *(a1 + 220) = -1;
  }

  return result;
}

void sub_100006E70(uint64_t a1)
{
  v2 = socket(2, 2, 0);
  if (v2 == -1)
  {
    v5 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __error();
      v7 = strerror(*v6);
      v8 = *__error();
      *buf = 136446978;
      v39 = "set_always_on_pktap_filter";
      v40 = 1024;
      v41 = 431;
      v42 = 2082;
      v43 = v7;
      v44 = 1024;
      v45 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) socket(PF_INET, SOCK_DGRAM) failed\n", buf, 0x22u);
    }
  }

  else
  {
    v3 = v2;
    *__str = 0;
    v47 = 0;
    snprintf(__str, 0x10uLL, "%s", *(a1 + 16));
    v48 = xmmword_100010810;
    v49 = buf;
    if (ioctl(v3, 0xC028697BuLL, __str) == -1)
    {
      v9 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        v10 = __error();
        v11 = strerror(*v10);
        v12 = *__error();
        *v34 = 136447234;
        *&v34[4] = "set_always_on_pktap_filter";
        LOWORD(v35) = 1024;
        *(&v35 + 2) = 442;
        WORD3(v35) = 2082;
        *(&v35 + 1) = v11;
        LOWORD(v36[0]) = 1024;
        *(v36 + 2) = v12;
        WORD3(v36[0]) = 2080;
        *(&v36[0] + 1) = __str;
        v13 = "%{public}s:%d - error %{public}s (%d) ioctl(SIOCGDRVSPEC, %s)\n";
        v14 = v34;
        v15 = v9;
LABEL_11:
        v16 = 44;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v13, v14, v16);
      }
    }

    else
    {
      v4 = 0;
      while (*&buf[v4])
      {
        v4 += 32;
        if (v4 == 256)
        {
          goto LABEL_13;
        }
      }

      if (v4 == 224)
      {
LABEL_13:
        v17 = off_10001C390;
        if (!os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        v18 = *(a1 + 16);
        *v34 = 136315650;
        *&v34[4] = "set_always_on_pktap_filter";
        LOWORD(v35) = 1024;
        *(&v35 + 2) = 454;
        WORD3(v35) = 2080;
        *(&v35 + 1) = v18;
        v13 = "%s:%d %s pktap_filters are full\n";
        v14 = v34;
        v15 = v17;
        v16 = 28;
        goto LABEL_15;
      }

      v37 = 0;
      memset(v36, 0, sizeof(v36));
      v35 = 0u;
      *v34 = 0x200000002;
      *&v34[8] = 1768975969;
      if (v4)
      {
        memcpy(v36 + 4, buf, v4);
      }

      snprintf(__str, 0x10uLL, "%s", *(a1 + 16));
      v48 = xmmword_100010820;
      v49 = v34;
      if (ioctl(v3, 0x8028697BuLL, __str) == -1)
      {
        v19 = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          v20 = __error();
          v21 = strerror(*v20);
          v22 = *__error();
          v23 = *(a1 + 16);
          v24 = 136447234;
          v25 = "set_always_on_pktap_filter";
          v26 = 1024;
          v27 = 481;
          v28 = 2082;
          v29 = v21;
          v30 = 1024;
          v31 = v22;
          v32 = 2080;
          v33 = v23;
          v13 = "%{public}s:%d - error %{public}s (%d) ioctl(SIOCSDRVSPEC, %s)\n";
          v14 = &v24;
          v15 = v19;
          goto LABEL_11;
        }
      }
    }

LABEL_16:
    close(v3);
  }
}

void sub_100007284()
{
  v0 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
  {
    v1 = __error();
    v2 = strerror(*v1);
    v3 = *__error();
    v4 = 136446978;
    v5 = "set_snaplen";
    v6 = 1024;
    v7 = 409;
    v8 = 2082;
    v9 = v2;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) skipping ioctl(BIOCSETFNR) until sandbox is fixed\n", &v4, 0x22u);
  }
}

uint64_t sub_100007368(int a1)
{
  v2 = fcntl(a1, 3, 0);
  if (v2 == -1)
  {
    v4 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v5 = __error();
      v6 = strerror(*v5);
      v7 = *__error();
      *buf = 136446978;
      v13 = "set_nonblocking";
      v14 = 1024;
      v15 = 373;
      v16 = 2082;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      v8 = "%{public}s:%d - error %{public}s (%d) fcntl(F_GETFL)\n";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v8, buf, 0x22u);
    }
  }

  else
  {
    if ((v2 & 4) != 0 || fcntl(a1, 4, v2 | 4u) != -1)
    {
      return 0;
    }

    v4 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v9 = __error();
      v10 = strerror(*v9);
      v11 = *__error();
      *buf = 136446978;
      v13 = "set_nonblocking";
      v14 = 1024;
      v15 = 379;
      v16 = 2082;
      v17 = v10;
      v18 = 1024;
      v19 = v11;
      v8 = "%{public}s:%d - error %{public}s (%d) fcntl(F_SETFL)\n";
      goto LABEL_9;
    }
  }

  return 0xFFFFFFFFLL;
}

char *sub_100007514(const char *a1, const char *a2, const time_t *a3, uint64_t a4)
{
  memset(&v20, 0, sizeof(v20));
  v8 = strlen(a1);
  v9 = strlen(a2) + v8;
  v10 = a1[v8 - 1];
  v11 = 49;
  if (v10 != 47)
  {
    v11 = 50;
  }

  v12 = v9 + v11;
  v13 = malloc_type_malloc(v9 + v11, 0x369C8F77uLL);
  if (v13)
  {
    if (v10 == 47)
    {
      v14 = "";
    }

    else
    {
      v14 = "/";
    }

    localtime_r(a3, &v20);
    snprintf(v13, v12, "%s%s%s-%02d-%02d-%04d-%02d%02d%02d-%09lu-%lu.pcapng", a1, v14, a2, v20.tm_mon + 1, v20.tm_mday, v20.tm_year + 1900, v20.tm_hour, v20.tm_min, v20.tm_sec, a4, 0);
  }

  else
  {
    v15 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v18 = *__error();
      *buf = 136447234;
      v22 = "alloc_pcap_file_name";
      v23 = 1024;
      v24 = 822;
      v25 = 2082;
      v26 = v17;
      v27 = 1024;
      v28 = v18;
      v29 = 2048;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%d - error %{public}s (%d) malloc(%zu) failed\n", buf, 0x2Cu);
    }
  }

  return v13;
}

uint64_t sub_1000076EC(int a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a3;
  result = a3;
  if (a1 <= 16)
  {
    if ((a1 - 1) < 2)
    {
      return result;
    }

    if (a1 == 6)
    {
      if (a3 >= 0x15)
      {
        if (__rev16(a2[1]) != 53 && __rev16(*a2) != 53)
        {
          LODWORD(result) = (*(a2 + 12) >> 2) & 0x3C;
        }

        if (result >= a3)
        {
          return a3;
        }

        else
        {
          return result;
        }
      }

      return result;
    }

    return 0;
  }

  if (a1 == 58)
  {
    return result;
  }

  if (a1 == 50)
  {
    if (a3 >= 9)
    {
      return 9;
    }

    else
    {
      return a3;
    }
  }

  if (a1 != 17)
  {
    return 0;
  }

  if (a3 >= 9)
  {
    v6 = __rev16(a2[1]);
    if (v6 != 443 && v6 != 53)
    {
      v7 = __rev16(*a2);
      if (v7 != 53 && v7 != 443 && (v7 != 67 || v6 != 68) && (v7 != 68 || v6 != 67))
      {
        if (v6 == 500 && v7 == 500)
        {
          if (((a3 - 8) & 0xFFE0) != 0)
          {
            v8 = 32;
          }

          else
          {
            v8 = a3 - 8;
          }

          LOWORD(result) = v8 + 8;
        }

        else
        {
          LOWORD(result) = 8;
          if (v6 == 4500 && v7 == 4500)
          {
            LOWORD(result) = sub_10000785C(a2 + 8, (a3 - 8)) + 8;
          }
        }
      }
    }

    if (result >= v3)
    {
      return v3;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10000785C(_BYTE *a1, unsigned int a2)
{
  if (a2 < 4)
  {
    if (a2 == 1)
    {
      v3 = 1;
      goto LABEL_15;
    }

LABEL_12:
    if (a2 >= 9)
    {
      v3 = 9;
    }

    else
    {
      v3 = a2;
    }

    goto LABEL_15;
  }

  if (*a1 || a1[1] || a1[2] || a1[3])
  {
    goto LABEL_12;
  }

  if (((a2 - 4) & 0xFFE0) != 0)
  {
    v2 = 32;
  }

  else
  {
    v2 = a2 - 4;
  }

  v3 = v2 + 4;
LABEL_15:
  if (v3 >= a2)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

void start()
{
  if (sub_100009C2C("com.apple.pcapd"))
  {
    qword_10001C600 = dispatch_workloop_create_inactive("com.apple.pcapd");
    if (!qword_10001C600)
    {
      fprintf(__stderrp, "%s:%d dispatch_queue_create() failed: main queue\n", "main", 207);
      v0 = qword_10001D6E8;
      if (!os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      v12 = "main";
      v13 = 1024;
      v14 = 207;
      v1 = "%s:%d dispatch_queue_create() failed: main queue";
LABEL_12:
      v6 = v0;
      v7 = 18;
LABEL_13:
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v1, buf, v7);
      goto LABEL_14;
    }

    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(qword_10001C600);
    v17 = _NSConcreteStackBlock;
    v18 = 0x40000000;
    v19 = sub_100007C40;
    v20 = &unk_100018868;
    v21 = -1;
    if (lockdown_checkin_xpc())
    {
      fprintf(__stderrp, "%s:%d failure to secure checkin with the lockdown service\n", "main", 286);
      v0 = qword_10001D6E8;
      if (!os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      v12 = "main";
      v13 = 1024;
      v14 = 286;
      v1 = "%s:%d failure to secure checkin with the lockdown service";
      goto LABEL_12;
    }

    sub_10000A770();
    sub_1000010E0();
    v2 = 30;
    v3 = &dword_100000004;
    while (1)
    {
      signal(v2, 1);
      v4 = dispatch_source_create(&_dispatch_source_type_signal, v2, 0, qword_10001C600);
      if (!v4)
      {
        break;
      }

      v5 = v4;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100008990;
      handler[3] = &unk_100018888;
      v10 = v2;
      dispatch_source_set_event_handler(v4, handler);
      dispatch_resume(v5);
      v2 = *(&unk_100010868 + v3);
      v3 += 4;
      if (v3 == 32)
      {
        dispatch_main();
      }
    }

    fprintf(__stderrp, "%s:%d dispatch_source_create(%d) failed\n", "main", 314, v2);
    v8 = qword_10001D6E8;
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v12 = "main";
      v13 = 1024;
      v14 = 314;
      v15 = 1024;
      v16 = v2;
      v1 = "%s:%d dispatch_source_create(%d) failed";
      v6 = v8;
      v7 = 24;
      goto LABEL_13;
    }
  }

LABEL_14:
  exit(1);
}

void sub_100007C40(uint64_t a1, uint64_t a2)
{
  qword_10001C608 = a2;
  v2 = kLockdownNotificationHostDetached;
  v3 = sub_100008C28(kLockdownNotificationHostDetached);
  v4 = notify_register_dispatch(v3, &dword_10001C614, qword_10001C600, &stru_1000188C8);
  if (v4)
  {
    v52 = v4;
    v53 = __stderrp;
    v54 = sub_100008C28(v2);
    fprintf(v53, "%s:%d failed to setup notification for %s: %d\n", "setup_lockdown_notification", 348, v54, v52);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E218(v2);
    }

LABEL_74:
    exit(1);
  }

  memset(v60, 0, sizeof(v60));
  v57 = 0;
  v55 = 0;
  v56 = 0;
  qword_10001D628 = pcap_setup_pktap_interface();
  if (!qword_10001D628)
  {
    fprintf(__stderrp, "%s:%d pcap_setup_pktap_interface() fail - %s\n", "pcapd_open_bpf_device", 578, v58);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000EC40();
    }

    goto LABEL_70;
  }

  snprintf(__str, 0x13uLL, "/dev/bpf%d", 0);
  v5 = open(__str, 0);
  if (v5 == -1)
  {
    v6 = 1;
    while (*__error() == 16)
    {
      snprintf(__str, 0x13uLL, "/dev/bpf%d", v6);
      v5 = open(__str, 0);
      ++v6;
      if (v5 != -1)
      {
        goto LABEL_7;
      }
    }

    v46 = __stderrp;
    v47 = __error();
    v48 = strerror(*v47);
    fprintf(v46, "%s:%d open(%s) - %s\n", "pcapd_open_bpf_device", 592, __str, v48);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E2C4();
    }

    goto LABEL_70;
  }

LABEL_7:
  v7 = v5;
  if (dword_10001D6F0 >= 1)
  {
    fprintf(__stdoutp, "%s:%d intended bpf buffer size: %u\n", "pcapd_open_bpf_device", 602, dword_10001C380);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E378();
    }
  }

  if (ioctl(v7, 0xC0044266uLL, &dword_10001C380) < 0)
  {
    v25 = __stderrp;
    v26 = __error();
    v27 = strerror(*v26);
    fprintf(v25, "%s:%d ioctl(BIOCSBLEN) - %s\n", "pcapd_open_bpf_device", 604, v27);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000EBA4();
    }

    goto LABEL_69;
  }

  if (ioctl(v7, 0x40044266uLL, &dword_10001C380) < 0)
  {
    v28 = __stderrp;
    v29 = __error();
    v30 = strerror(*v29);
    fprintf(v28, "%s:%d ioctl(BIOCGBLEN) - %s\n", "pcapd_open_bpf_device", 608, v30);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000EB08();
    }

    goto LABEL_69;
  }

  if (dword_10001D6F0 >= 1)
  {
    fprintf(__stdoutp, "%s:%d final bpf buffer size: %u\n", "pcapd_open_bpf_device", 611, dword_10001C380);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E40C();
    }
  }

  v8 = dword_10001C380;
  if (!dword_10001C380)
  {
    sub_10000EAD4(__src);
  }

  v9 = malloc_type_malloc(dword_10001C380, 0x4BD48236uLL);
  if (!v9)
  {
    sub_10000EA98(__src, v8);
  }

  qword_10001D630 = v9;
  v57 = 1;
  if (ioctl(v7, 0xC004427FuLL, &v57) < 0)
  {
    v31 = __stderrp;
    v32 = __error();
    v33 = strerror(*v32);
    fprintf(v31, "%s:%d ioctl(BIOCSWANTPKTAP) - %s\n", "pcapd_open_bpf_device", 622, v33);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E9FC();
    }

    goto LABEL_69;
  }

  __strlcpy_chk();
  if (ioctl(v7, 0x8020426CuLL, v60) == -1)
  {
    v34 = __stderrp;
    v35 = __error();
    v36 = strerror(*v35);
    fprintf(v34, "%s:%d ioctl(BIOCSETIF) - %s\n", "pcapd_open_bpf_device", 631, v36);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E960();
    }

    goto LABEL_69;
  }

  v57 = 149;
  if (ioctl(v7, 0x80044278uLL, &v57) == -1)
  {
    v37 = __stderrp;
    v38 = __error();
    v39 = strerror(*v38);
    fprintf(v37, "%s:%d ioctl(BIOCSDLT) - %s\n", "pcapd_open_bpf_device", 640, v39);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E8C4();
    }

    goto LABEL_69;
  }

  v55 = 1;
  LODWORD(v56) = 0;
  if (ioctl(v7, 0x8010426DuLL, &v55) == -1)
  {
    v40 = __stderrp;
    v41 = __error();
    v42 = strerror(*v41);
    fprintf(v40, "%s:%d ioctl(BIOCSRTIMEOUT) - %s\n", "pcapd_open_bpf_device", 650, v42);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E828();
    }

    goto LABEL_69;
  }

  v10 = fcntl(v7, 3, 0);
  if (v10 == -1)
  {
    v43 = __stderrp;
    v44 = __error();
    v45 = strerror(*v44);
    fprintf(v43, "%s:%d fcntl(F_GETFL) - %s\n", "pcapd_open_bpf_device", 659, v45);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E78C();
    }

    goto LABEL_69;
  }

  if ((v10 & 4) == 0 && fcntl(v7, 4, v10 | 4u) == -1)
  {
    v49 = __stderrp;
    v50 = __error();
    v51 = strerror(*v50);
    fprintf(v49, "%s:%d fcntl(F_SETFL) - %s\n", "pcapd_open_bpf_device", 665, v51);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E6F0();
    }

LABEL_69:
    close(v7);
LABEL_70:
    if (qword_10001D630)
    {
      free(qword_10001D630);
      qword_10001D630 = 0;
    }

    sub_100008E68();
    fprintf(__stderrp, "%s:%d failure to kernel control socket\n", "handle_pcapd_service", 363);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000ECC8();
    }

    goto LABEL_74;
  }

  v11 = qword_10001D628;
  v12 = socket(2, 2, 0);
  if (v12 == -1)
  {
    v15 = __stderrp;
    v16 = __error();
    fprintf(v15, "%s:%d socket(PF_INET, SOCK_DGRAM) failed, errno=%d\n", "enable_pktap_filter", 502, *v16);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E5D8();
    }
  }

  else
  {
    v13 = v12;
    *v72 = 0;
    v73 = 0;
    snprintf(v72, 0x10uLL, "%s", v11);
    v74 = xmmword_100010810;
    v75 = __src;
    if (ioctl(v13, 0xC028697BuLL, v72) == -1)
    {
      v17 = __stderrp;
      v18 = __error();
      fprintf(v17, "%s:%d ioctl(SIOCGDRVSPEC, %s): errno=%d\n", "enable_pktap_filter", 513, v72, *v18);
      if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
      {
        sub_10000E53C();
      }
    }

    else
    {
      v14 = 0;
      while (*&__src[v14])
      {
        v14 += 32;
        if (v14 == 256)
        {
          goto LABEL_35;
        }
      }

      if (v14 == 224)
      {
LABEL_35:
        fprintf(__stdoutp, "%s:%d %s pktap_filters are full\n", "enable_pktap_filter", 526, v11);
        v19 = qword_10001D6E8;
        if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "enable_pktap_filter";
          LOWORD(v68) = 1024;
          *(&v68 + 2) = 526;
          WORD3(v68) = 2080;
          *(&v68 + 1) = v11;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s:%d %s pktap_filters are full", buf, 0x1Cu);
        }

        goto LABEL_46;
      }

      v68 = 0u;
      v70 = 0;
      memset(v69, 0, sizeof(v69));
      *buf = 0x200000002;
      *&buf[8] = 1768975969;
      fprintf(__stdoutp, "%s:%d Setting filter_param_if_name to %s\n", "enable_pktap_filter", 538, &buf[8]);
      v20 = qword_10001D6E8;
      if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_INFO))
      {
        *v61 = 136315650;
        v62 = "enable_pktap_filter";
        v63 = 1024;
        v64 = 538;
        v65 = 2080;
        v66 = &buf[8];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d Setting filter_param_if_name to %s", v61, 0x1Cu);
      }

      if (v14)
      {
        memcpy(&v69[4], __src, v14);
      }

      snprintf(v72, 0x10uLL, "%s", v11);
      v74 = xmmword_100010820;
      v75 = buf;
      if (ioctl(v13, 0x8028697BuLL, v72) == -1)
      {
        v21 = __stderrp;
        v22 = __error();
        fprintf(v21, "%s:%d ioctl(SIOCSDRVSPEC, %s), errno=%d\n", "enable_pktap_filter", 550, v11, *v22);
        if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
        {
          sub_10000E4A0();
        }
      }
    }

LABEL_46:
    close(v13);
  }

  fprintf(__stdoutp, "%s:%d tapping %s over %s\n", "pcapd_open_bpf_device", 672, qword_10001D628, __str);
  v23 = qword_10001D6E8;
  if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEFAULT))
  {
    *__src = 136315906;
    *&__src[4] = "pcapd_open_bpf_device";
    *&__src[12] = 1024;
    *&__src[14] = 672;
    *&__src[18] = 2080;
    *&__src[20] = qword_10001D628;
    *&__src[28] = 2080;
    *&__src[30] = __str;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%d tapping %s over %s", __src, 0x26u);
  }

  v24 = dispatch_source_create(&_dispatch_source_type_read, v7, 0, qword_10001C600);
  qword_10001C618 = v24;
  if (!v24)
  {
    fprintf(__stderrp, "%s:%d dispatch_source_create() for DISPATCH_SOURCE_TYPE_READ failed.\n", "handle_pcapd_service", 483);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E670();
    }

    goto LABEL_74;
  }

  *__src = _NSConcreteStackBlock;
  *&__src[8] = 0x40000000;
  *&__src[16] = sub_100008F7C;
  *&__src[24] = &unk_1000188E8;
  *&__src[32] = v7;
  dispatch_source_set_event_handler(v24, __src);
  dispatch_resume(qword_10001C618);
}

void sub_100008990(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 <= 0x1F)
  {
    if (((1 << v1) & 0xE248) == 0)
    {
      if (v1 == 30)
      {
        v4 = dword_10001D6F0;
        if (dword_10001D6F0 == 0x7FFFFFFF)
        {
          return;
        }

        ++dword_10001D6F0;
        fprintf(__stdoutp, "%s:%d pcapd verbosity now %d\n", "handle_signal", 712, v4 + 1);
        v3 = qword_10001D6E8;
        if (!os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136315650;
        v6 = "handle_signal";
        v7 = 1024;
        v8 = 712;
        v9 = 1024;
        v10 = dword_10001D6F0;
      }

      else
      {
        if (v1 != 31)
        {
          return;
        }

        v2 = dword_10001D6F0 - 1;
        if (dword_10001D6F0 < 1)
        {
          return;
        }

        --dword_10001D6F0;
        fprintf(__stdoutp, "%s:%d pcapd verbosity now %d\n", "handle_signal", 718, v2);
        v3 = qword_10001D6E8;
        if (!os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136315650;
        v6 = "handle_signal";
        v7 = 1024;
        v8 = 718;
        v9 = 1024;
        v10 = dword_10001D6F0;
      }

      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d pcapd verbosity now %d", buf, 0x18u);
      return;
    }

    sub_100008E68();
  }
}

uint64_t sub_100008BA4(const char *a1, int a2)
{
  result = strcmp(a1, "packetcapture");
  if (!result || (result = strcmp(a1, "droptapcap"), !result))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        ++dword_10001C610;
      }
    }

    else if (dword_10001C610-- <= 1)
    {
      exit(1);
    }
  }

  return result;
}

const char *sub_100008C28(const __CFString *a1)
{
  if (!a1)
  {
    return "<NULL>";
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFDataGetTypeID())
    {
      v8 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, a1, 0x8000100u);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = CFCopyDescription(a1);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    v9 = v8;
    if (CFStringGetCString(v8, &byte_10001C620[1024 * dword_10001D620], 1024, 0x8000100u))
    {
      CStringPtr = &byte_10001C620[1024 * dword_10001D620];
      if (dword_10001D620 <= 2)
      {
        v10 = dword_10001D620 + 1;
      }

      else
      {
        v10 = 0;
      }

      dword_10001D620 = v10;
    }

    else
    {
      CStringPtr = 0;
    }

    CFRelease(v9);
    goto LABEL_24;
  }

  FastestEncoding = CFStringGetFastestEncoding(a1);
  if (!FastestEncoding || FastestEncoding == 134217984 || FastestEncoding == 1536)
  {
    CStringPtr = CFStringGetCStringPtr(a1, FastestEncoding);
    if (CStringPtr)
    {
      goto LABEL_24;
    }
  }

  if (CFStringGetCString(a1, &byte_10001C620[1024 * dword_10001D620], 1024, 0x8000100u))
  {
    CStringPtr = &byte_10001C620[1024 * dword_10001D620];
    if (dword_10001D620 <= 2)
    {
      v5 = dword_10001D620 + 1;
    }

    else
    {
      v5 = 0;
    }

    dword_10001D620 = v5;
    goto LABEL_24;
  }

LABEL_15:
  CStringPtr = 0;
LABEL_24:
  if (CStringPtr)
  {
    return CStringPtr;
  }

  else
  {
    return "???";
  }
}

void sub_100008DA0(id a1, int a2)
{
  if (qword_10001C618)
  {
    dispatch_source_cancel(qword_10001C618);
    if (qword_10001C618)
    {
      dispatch_release(qword_10001C618);
      qword_10001C618 = 0;
    }
  }

  sub_100008E68();
  fprintf(__stdoutp, "%s:%d Device was detached from host, exiting\n", "setup_lockdown_notification_block_invoke", 344);
  v2 = qword_10001D6E8;
  if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v4 = "setup_lockdown_notification_block_invoke";
    v5 = 1024;
    v6 = 344;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d Device was detached from host, exiting", buf, 0x12u);
  }

  exit(1);
}

void sub_100008E68()
{
  if (qword_10001D628)
  {
    fprintf(__stdoutp, "%s:%d cleanup %s\n", "cleanup_pktap", 740, qword_10001D628);
    v0 = qword_10001D6E8;
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v2 = "cleanup_pktap";
      v3 = 1024;
      v4 = 740;
      v5 = 2080;
      v6 = qword_10001D628;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%s:%d cleanup %s", buf, 0x1Cu);
    }

    pcap_cleanup_pktap_interface();
    if (qword_10001D628)
    {
      free(qword_10001D628);
      qword_10001D628 = 0;
    }
  }
}

uint64_t sub_100008F7C(uint64_t a1)
{
  do
  {
LABEL_1:
    while (1)
    {
      result = read(*(a1 + 32), qword_10001D630, dword_10001C380);
      if (result == -1)
      {
        break;
      }

      if (!result)
      {
        return result;
      }

      if (result >= 1)
      {
        v2 = qword_10001D630;
        v3 = qword_10001D630 + result;
        while (1)
        {
          v35 = 0u;
          memset(v36, 0, 19);
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          if (v2 + 176 > v3)
          {
            break;
          }

          v4 = (v2 + *(v2 + 16));
          v5 = *v4;
          sub_100009828(v4);
          sub_100009968(&v4[v5], (*(v2 + 8) - *v4));
          sub_100009518(v2, &v31);
          sub_1000094BC(&v31);
          v6 = *(v2 + 8) - *v4 + 99;
          v7 = qword_10001D640;
          if (v6 > qword_10001D638)
          {
            v8 = reallocf(qword_10001D640, *(v2 + 8) - *v4 + 99);
            if (!v8)
            {
              sub_10000EEE4(buf, v6);
            }

            v7 = v8;
            qword_10001D640 = v8;
            qword_10001D638 = v6;
          }

          v9 = v31;
          v10 = v33;
          *(v7 + 16) = v32;
          *(v7 + 32) = v10;
          *v7 = v9;
          v11 = v34;
          v12 = v35;
          v13 = v36[0];
          *(v7 + 95) = *(v36 + 15);
          *(v7 + 64) = v12;
          *(v7 + 80) = v13;
          *(v7 + 48) = v11;
          memcpy((v7 + 99), &v4[v5], (*(v2 + 8) - *v4));
          v14 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v7, v6, kCFAllocatorNull);
          if (!v14)
          {
            fprintf(__stderrp, "%s:%d unable to allocate memory for packet\n", "handle_pcapd_service_block_invoke", 436);
            if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
            {
              sub_10000EE64();
            }

            lockdown_disconnect();
            goto LABEL_29;
          }

          v15 = v14;
          if (dword_10001D6F0 >= 1)
          {
            v16 = __stdoutp;
            Length = CFDataGetLength(v14);
            fprintf(v16, "%s:%d sending remote packet to host with payload size: %ld\n", "handle_pcapd_service_block_invoke", 445, Length);
            v18 = qword_10001D6E8;
            if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEBUG))
            {
              v19 = CFDataGetLength(v15);
              *buf = 136315650;
              v26 = "handle_pcapd_service_block_invoke";
              v27 = 1024;
              v28 = 445;
              v29 = 2048;
              v30 = v19;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s:%d sending remote packet to host with payload size: %ld", buf, 0x1Cu);
            }
          }

          if (lockdown_send_message())
          {
            fprintf(__stderrp, "%s:%d unable to send packet\n", "handle_pcapd_service_block_invoke", 450);
            if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
            {
              sub_10000EDE4();
            }

            lockdown_disconnect();
            sub_100008E68();
            CFRelease(v15);
            goto LABEL_30;
          }

          CFRelease(v15);
          v2 += (*(v2 + 8) + *(v2 + 16) + 3) & 0x1FFFFFFFCLL;
          if (v2 >= v3)
          {
            goto LABEL_1;
          }
        }

        fprintf(__stdoutp, "%s:%d not enough space for bpf and pktap headers\n", "handle_pcapd_service_block_invoke", 403);
        v20 = qword_10001D6E8;
        if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "handle_pcapd_service_block_invoke";
          v27 = 1024;
          v28 = 403;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s:%d not enough space for bpf and pktap headers", buf, 0x12u);
        }
      }
    }
  }

  while (*__error() == 4);
  result = __error();
  if (*result != 35)
  {
    v21 = __stderrp;
    v22 = __error();
    v23 = strerror(*v22);
    fprintf(v21, "%s:%d read bpf %s\n", "handle_pcapd_service_block_invoke", 379, v23);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000ED48();
    }

LABEL_29:
    close(*(a1 + 32));
    sub_100008E68();
LABEL_30:
    exit(1);
  }

  return result;
}

int8x8_t sub_1000094BC(uint64_t a1)
{
  *a1 = bswap32(*a1);
  *(a1 + 5) = bswap32(*(a1 + 5));
  *(a1 + 13) = vrev32_s8(*(a1 + 13));
  *(a1 + 21) = bswap32(*(a1 + 21));
  *(a1 + 10) = bswap32(*(a1 + 10)) >> 16;
  result = vrev32_s8(*(a1 + 87));
  *(a1 + 87) = result;
  *(a1 + 95) = bswap32(*(a1 + 95));
  return result;
}

void sub_100009518(int *a1, uint64_t a2)
{
  if (!a1)
  {
    fprintf(__stderrp, "%s:%d bpfhdr == NULL\n", "rvi_bpf_to_iptap", 140);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000F024();
    }

    errx(5, "bpfhdr == NULL");
  }

  if (!a2)
  {
    fprintf(__stderrp, "%s:%d iptap_hdr == NULL\n", "rvi_bpf_to_iptap", 145);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000EFA8();
    }

    errx(5, "iptap_hdr == NULL");
  }

  v4 = a1 + *(a1 + 8);
  *a2 = 99;
  *(a2 + 4) = 2;
  *(a2 + 5) = a1[2] - *v4;
  *(a2 + 9) = v4[80];
  v5 = *(v4 + 9);
  if (v5)
  {
    v6 = 16;
  }

  else
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    v6 = 1;
  }

  *(a2 + 12) = v6;
LABEL_8:
  *(a2 + 95) = v5;
  *(a2 + 13) = *(v4 + 10);
  if (*(v4 + 2))
  {
    v7 = *(v4 + 11);
  }

  else
  {
    v7 = 4;
  }

  *(a2 + 17) = v7;
  v8 = *(v4 + 13);
  *(a2 + 21) = *(v4 + 12);
  *(a2 + 41) = v8;
  __strlcpy_chk();
  *(a2 + 62) = *(v4 + 19);
  *(a2 + 66) = *(v4 + 21);
  __strlcpy_chk();
  v9 = *(v4 + 29);
  v10 = *(v4 + 30);
  if (*(v4 + 116) || (v9 = *a1, v10 = a1[1], *a1))
  {
    *(a2 + 95) |= 0x2000u;
    *(a2 + 87) = v9;
    *(a2 + 91) = v10;
  }

  v11 = strpbrk(v4 + 12, "0123456789");
  if (v11)
  {
    v12 = v11;
    *(a2 + 10) = atoi(v11);
    *v12 = 0;

    __strlcpy_chk();
  }

  else
  {
    fprintf(__stderrp, "%s:%d no unit number in %s\n", "rvi_bpf_to_iptap", 193, v4 + 12);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000EF20();
    }

    *(a2 + 10) = 0;
  }
}

uint64_t sub_100009794(char *a1, unsigned int a2)
{
  v2 = 0;
  v5[0] = 0;
  v3 = v5;
  do
  {
    if ((a2 >> v2))
    {
      *v3++ = aIopiTnrksc2w[v2];
    }

    ++v2;
  }

  while (v2 != 32);
  return snprintf(a1, 0x21uLL, "%s", v5);
}

void sub_100009828(uint64_t result)
{
  if (dword_10001D6F0 >= 2)
  {
    sub_100009794(v2, *(result + 36));
    snprintf(__str, 0x100uLL, "pktap length %u type_next %u dlt %u ifname %s iftype %u flags 0x%x (%s) proto_fam %u prelen %u postlen %u pid %u comm %s svc %u epid %u ecomm %s ", *result, *(result + 4), *(result + 8), (result + 12), *(result + 80), *(result + 36), v2, *(result + 40), *(result + 44), *(result + 48), *(result + 52), (result + 56), *(result + 76), *(result + 84), (result + 88));
    if (dword_10001D6F0 >= 1)
    {
      fprintf(__stdoutp, "%s:%d %s\n", "rvi_log_pktap_header", 286, __str);
      if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEBUG))
      {
        sub_10000F0A0();
      }
    }
  }
}

void sub_100009968(char *a1, unint64_t a2)
{
  if (dword_10001D6F0 >= 3 && a2 != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 16;
    v7 = a1;
    do
    {
      if (a2 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = a2;
      }

      v29 = v8;
      v9 = snprintf(__str, 0x63uLL, "\t0x%04lx:  ", v5);
      v10 = v9;
      v11 = v5 + 16;
      if (v5 == -16)
      {
        v12 = v9;
      }

      else
      {
        v13 = 0;
        do
        {
          if (v5 + v13 >= a2)
          {
            v18 = 32;
            __str[v10] = 32;
          }

          else
          {
            v14 = a1[v5 + v13];
            v15 = (v14 >> 4) + 87;
            if (v14 < 0xA0)
            {
              LOBYTE(v15) = (a1[v5 + v13] >> 4) | 0x30;
            }

            __str[v10] = v15;
            v16 = v14 & 0xF;
            v17 = v14 & 0xF | 0x30;
            v18 = (v14 & 0xF) + 87;
            if (v16 < 0xA)
            {
              v18 = v17;
            }
          }

          __str[v10 + 1] = v18;
          v12 = v10 + 2;
          if ((v5 + v13))
          {
            __str[v12] = 32;
            v12 = v10 + 3;
          }

          if (v13 == 15)
          {
            __str[v12++] = 32;
          }

          ++v13;
          v10 = v12;
        }

        while (v5 + v13 < v11);
      }

      *&__str[v12] = 8224;
      v19 = v12 + 2;
      if (v11 >= a2)
      {
        v20 = a2;
      }

      else
      {
        v20 = v5 + 16;
      }

      v30 = v7;
      v31 = v4;
      if (v5 < v20)
      {
        v21 = v29 + v4;
        v22 = v7;
        do
        {
          v24 = *v22++;
          v23 = v24;
          if (v24 < 0)
          {
            v25 = __maskrune(v23, 0x40000uLL);
          }

          else
          {
            v25 = _DefaultRuneLocale.__runetype[v23] & 0x40000;
          }

          if (v25)
          {
            v26 = v23;
          }

          else
          {
            v26 = 46;
          }

          __str[v19++] = v26;
          --v21;
        }

        while (v21);
      }

      __str[v19] = 0;
      if (dword_10001D6F0 >= 1)
      {
        fprintf(__stdoutp, "%s:%d %s\n", "rvi_log_hexdump", 330, __str);
        v27 = qword_10001D6E8;
        if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v33 = "rvi_log_hexdump";
          v34 = 1024;
          v35 = 330;
          v36 = 2080;
          v37 = __str;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s:%d %s", buf, 0x1Cu);
        }
      }

      v6 += 16;
      v4 = v31 - 16;
      v7 = v30 + 16;
      v5 = v11;
    }

    while (v11 < a2);
  }
}

BOOL sub_100009C2C(char *subsystem)
{
  if (!qword_10001D6E8)
  {
    qword_10001D6E8 = os_log_create(subsystem, "");
    if (!qword_10001D6E8)
    {
      fwrite("os_log_create failed", 0x14uLL, 1uLL, __stderrp);
      return 0;
    }
  }

  v2 = CFStringCreateWithCString(0, subsystem, 0x8000100u);
  if (!v2)
  {
    fprintf(__stderrp, "%s:%d CFStringCreateWithCString subsystem failed\n", "rvi_init_logging", 350);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000F1A4();
    }

    return 0;
  }

  v3 = v2;
  v4 = CFStringCreateWithCString(0, "verbose", 0);
  v5 = v4 != 0;
  if (v4)
  {
    v6 = v4;
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(v4, v3, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      if (AppIntegerValue <= 0x7FFFFFFE)
      {
        dword_10001D6F0 = AppIntegerValue;
        fprintf(__stdoutp, "%s:%d rvi_debug_verbosity is now %d\n", "rvi_init_logging", 363, AppIntegerValue);
        v8 = qword_10001D6E8;
        if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v12 = "rvi_init_logging";
          v13 = 1024;
          v14 = 363;
          v15 = 1024;
          v16 = dword_10001D6F0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d rvi_debug_verbosity is now %d", buf, 0x18u);
        }
      }
    }

    CFRelease(v6);
  }

  else
  {
    fprintf(__stderrp, "%s:%d CFStringCreateWithCString verbose_key failed\n", "rvi_init_logging", 355);
    if (os_log_type_enabled(qword_10001D6E8, OS_LOG_TYPE_ERROR))
    {
      sub_10000F128();
    }
  }

  CFRelease(v3);
  return v5;
}

uint64_t sub_100009EC0(_xpc_connection_s *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040B2345155uLL);
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F220();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    *(v2 + 4) = 1;
    v2[3] = a1;
    v2[4] = 0;
    xpc_connection_set_context(a1, v2);
    xpc_connection_set_finalizer_f(a1, sub_10000A8BC);
    if (!sub_100009E88())
    {
      sub_10000F2D8();
    }

    v3 = off_10001C3A0;
    *v2 = 0;
    v2[1] = v3;
    *v3 = v2;
    off_10001C3A0 = v2;
    xpc_connection_set_target_queue(a1, &_dispatch_main_q);
    xpc_retain(a1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10000A098;
    handler[3] = &unk_100018908;
    handler[4] = a1;
    xpc_connection_set_event_handler(a1, handler);
    xpc_connection_resume(a1);
    return 0;
  }

  v4 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "new_connection_context";
    v9 = 1024;
    v10 = 188;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d malloc failed\n", buf, 0x12u);
  }

  return 0;
}

void sub_10000A098(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  type = xpc_get_type(object);
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F304(v3, type);
  }

  if (type == &_xpc_type_error)
  {
    if (object != &_xpc_error_connection_invalid)
    {
      if (object == &_xpc_error_termination_imminent)
      {
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
        {
          sub_10000F600();
        }
      }

      else if (object == &_xpc_error_connection_interrupted && os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
      {
        sub_10000F584();
      }

      return;
    }

    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000F67C();
    }

    context = xpc_connection_get_context(v3);
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000F6F8();
      if (context)
      {
LABEL_27:
        v14 = context[3];
        if (v14 == v3)
        {
          if (!sub_100009E88())
          {
            sub_10000F79C();
          }

          v28 = *context;
          v29 = context[1];
          v30 = &off_10001C398;
          if (*context)
          {
            v30 = *context;
          }

          v30[1] = v29;
          *v29 = v28;
          if (*(context + 4) == 1)
          {
            for (i = off_10001C398; i; i = *i)
            {
              if (*(i + 4) == 2 && *(i + 4) == context[3])
              {
                v32 = off_10001C390;
                if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
                {
                  v33 = *(i + 3);
                  *buf = 136446722;
                  *&buf[4] = "free_connection_context";
                  *&buf[12] = 1024;
                  *&buf[14] = 237;
                  *&buf[18] = 2048;
                  *&buf[20] = v33;
                  _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}s:%d cancelling notifier: %p\n", buf, 0x1Cu);
                }

                xpc_connection_cancel(*(i + 3));
              }
            }
          }

          goto LABEL_66;
        }

        v15 = off_10001C390;
        if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          *&buf[4] = "free_connection_context";
          *&buf[12] = 1024;
          *&buf[14] = 220;
          *&buf[18] = 2048;
          *&buf[20] = v3;
          *&buf[28] = 2048;
          *&buf[30] = context;
          v36 = 2048;
          v37 = v14;
          v16 = "%{public}s:%d connection: %p context: %p bad ctx_connection %p \n";
          v17 = v15;
          v18 = 48;
LABEL_65:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
          goto LABEL_66;
        }

        goto LABEL_66;
      }
    }

    else if (context)
    {
      goto LABEL_27;
    }

    v34 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "free_connection_context";
      *&buf[12] = 1024;
      *&buf[14] = 216;
      *&buf[18] = 2048;
      *&buf[20] = v3;
      v16 = "%{public}s:%d connection: %p context is NULL\n";
      v17 = v34;
      v18 = 28;
      goto LABEL_65;
    }

LABEL_66:
    xpc_connection_cancel(v3);
    v27 = v3;
LABEL_67:
    xpc_release(v27);
    return;
  }

  if (type != &_xpc_type_dictionary)
  {
    return;
  }

  v5 = xpc_copy_description(object);
  if (v5)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000F3B8();
    }

    free(v5);
  }

  reply = xpc_dictionary_create_reply(object);
  if (reply)
  {
    v7 = reply;
    string = xpc_dictionary_get_string(object, off_10001C3A8[0]);
    v9 = xpc_dictionary_get_string(object, off_10001C3C0[0]);
    v10 = off_10001C390;
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "process_peer_request";
      *&buf[12] = 1024;
      *&buf[14] = 250;
      *&buf[18] = 2082;
      *&buf[20] = string;
      *&buf[28] = 1024;
      *&buf[30] = xpc_connection_get_pid(v3);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d command: %{public}s from pid: %u\n", buf, 0x22u);
    }

    if (!string)
    {
      v24 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "process_peer_request";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s:%d Invalid NULL command\n", buf, 0x12u);
      }

      xpc_dictionary_set_int64(v7, off_10001C3C8[0], -1);
      goto LABEL_43;
    }

    memset(buf, 0, 32);
    xpc_connection_get_audit_token();
    v11 = xpc_copy_entitlement_for_token();
    if (v11 && xpc_BOOL_get_value(v11))
    {
      if (!strcmp(string, off_10001C3B0[0]))
      {
        v12 = sub_100001A3C(v9, object, v7);
        goto LABEL_61;
      }

      if (!strcmp(string, off_10001C3B8[0]))
      {
        v12 = sub_100001CB8(v9, object, v7);
LABEL_61:
        v23 = v12;
        goto LABEL_39;
      }
    }

    else
    {
      v22 = off_10001C390;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        sub_10000F44C(string, v3, v22);
      }
    }

    v23 = -1;
LABEL_39:
    xpc_dictionary_set_int64(v7, off_10001C3C8[0], v23);
    xpc_dictionary_set_string(v7, off_10001C3A8[0], string);
LABEL_43:
    v25 = xpc_copy_description(v7);
    if (v25)
    {
      v26 = v25;
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
      {
        sub_10000F4F0();
      }

      free(v26);
    }

    xpc_connection_send_message(v3, v7);
    v27 = v7;
    goto LABEL_67;
  }

  v19 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    pid = xpc_connection_get_pid(v3);
    *buf = 136446978;
    v21 = "";
    *&buf[4] = "peer_event_handler";
    *&buf[14] = 329;
    *&buf[12] = 1024;
    if (v5)
    {
      v21 = v5;
    }

    *&buf[18] = 1024;
    *&buf[20] = pid;
    *&buf[24] = 2082;
    *&buf[26] = v21;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s:%d received invalid dictionary from peer(%d)\n:%{public}s\n", buf, 0x22u);
  }
}

void sub_10000A770()
{
  mach_service = xpc_connection_create_mach_service("com.apple.pcapd-local", &_dispatch_main_q, 1uLL);
  if (mach_service)
  {
    v1 = mach_service;
    xpc_connection_set_event_handler(mach_service, &stru_100018948);

    xpc_connection_activate(v1);
  }

  else if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
  {
    sub_10000F7C8();
  }
}

void sub_10000A7FC(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000F998();
    }

    sub_100009EC0(a2);
  }

  else
  {
    v4 = off_10001C390;
    if (type == &_xpc_type_error)
    {
      if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_ERROR))
      {
        sub_10000F8EC(a2, v4);
      }
    }

    else if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
    {
      sub_10000F860();
    }
  }
}

void sub_10000A8BC(void *a1)
{
  v2 = off_10001C390;
  if (os_log_type_enabled(off_10001C390, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FA14(a1, v2);
  }

  free(a1);
}

const char *sub_10000A9A4(void *a1)
{
  v2 = &_xpc_type_connection;
  v3 = &off_100018978;
  result = "<XPC_TYPE_UNKNOWN>";
  while (v2 != a1)
  {
    v5 = *v3;
    v3 += 2;
    v2 = v5;
    if (!v5)
    {
      return result;
    }
  }

  return *(v3 - 1);
}

Swift::Void __swiftcall TracerouteService.createXPCListener()()
{
  v1 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for XPCPeerRequirement();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  static XPCPeerRequirement.isPlatformCode(andMatchesSigningIdentifier:)();
  type metadata accessor for XPCListener();
  (*(v3 + 16))(v6, v8, v2);
  *(swift_allocObject() + 16) = v0;
  v9 = v0;
  static XPCListener.InitializationOptions.none.getter();
  XPCListener.__allocating_init(service:targetQueue:options:requirement:incomingSessionHandler:)();

  (*(v3 + 8))(v8, v2);
}

uint64_t sub_10000AD04()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AD3C()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

void sub_10000ADCC(uint64_t a2@<X8>)
{
  v3 = sub_10000C224(&qword_10001C498, &unk_100010970);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for XPCPeerRequirement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static XPCPeerRequirement.hasEntitlement(_:)();
  v10 = XPCReceivedMessage.senderSatisfies(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    sub_10000B0DC(v5);
    v11 = type metadata accessor for TracerouteResponse();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v5, 1, v11) == 1)
    {
      sub_10000CB54(v5, &qword_10001C498, &unk_100010970);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
    }

    else
    {
      *(a2 + 24) = v11;
      *(a2 + 32) = sub_10000CBB4(&qword_10001C4A0, &type metadata accessor for TracerouteResponse, &protocol conformance descriptor for TracerouteResponse);
      v16 = sub_10000CBFC(a2);
      (*(v12 + 32))(v16, v5, v11);
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "missing entitlement", v15, 2u);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_10000B0DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C224(&qword_10001C470, &qword_100010918);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TracerouteRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  sub_10000CBB4(&qword_10001C478, &type metadata accessor for TracerouteRequest, &protocol conformance descriptor for TracerouteRequest);
  XPCReceivedMessage.decode<A>(as:)();
  v20 = v1;
  v21 = a1;
  (*(v7 + 56))(v5, 0, 1, v6);
  v13 = *(v7 + 32);
  v13(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v13((v15 + v14), v10, v6);
  sub_10000C6D0(v15);

  v16 = v21;
  TracerouteResponse.init(results:)();
  (*(v7 + 8))(v12, v6);
  v17 = type metadata accessor for TracerouteResponse();
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t sub_10000B4F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000B518, 0, 0);
}

uint64_t sub_10000B518()
{
  type metadata accessor for TraceRoute();
  sub_10000C224(&qword_10001C490, &qword_100010968);
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  *(v1 + 16) = xmmword_1000108A0;
  TracerouteRequest.options.getter();
  v2 = dispatch thunk of TraceRouteOptions.target.getter();
  v4 = v3;

  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_10000B624;

  return static TraceRoute.trace(domains:)(v1);
}

uint64_t sub_10000B624(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10000B744, 0, 0);
}

uint64_t sub_10000B768()
{
  v1 = *(*v0 + 88);
  sub_10000C430(&qword_10001C468, "F5");
  type metadata accessor for Result();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10000B860(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_10000B954;

  return v10(v7 + 2);
}

uint64_t sub_10000B954()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10000BAE0;
  }

  else
  {
    v2 = sub_10000BA68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000BA68()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[2];
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_10000CB28(v2, v3);
  OS_dispatch_semaphore.signal()();
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000BAE0()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[6];
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  sub_10000CB28(v2, v3);
  OS_dispatch_semaphore.signal()();
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000BB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C224(&qword_10001C480, &qword_100010930);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000C9C8(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CB54(v11, &qword_10001C480, &qword_100010930);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000CB54(a3, &qword_10001C480, &qword_100010930);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000CB54(a3, &qword_10001C480, &qword_100010930);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id TracerouteService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TracerouteService.init()()
{
  Logger.init(subsystem:category:)();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TracerouteService(0);
  return objc_msgSendSuper2(&v2, "init");
}

id TracerouteService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TracerouteService(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000C034(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000C12C;

  return v6(a1);
}

uint64_t sub_10000C12C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000C224(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for TracerouteService(uint64_t a1)
{
  result = qword_10001D650;
  if (!qword_10001D650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C2C0(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000C354(uint64_t a1)
{
  sub_10000C430(&qword_10001C468, "F5");
  type metadata accessor for Result();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000C430(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000C478()
{
  v1 = type metadata accessor for TracerouteRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C500(uint64_t a1)
{
  v4 = *(type metadata accessor for TracerouteRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000C5DC;

  return sub_10000B4F8(a1, v1 + v5);
}

uint64_t sub_10000C5DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10000C6D0(uint64_t a1)
{
  v2 = sub_10000C224(&qword_10001C480, &qword_100010930);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  sub_10000C224(&qword_10001C488, &qword_100010938);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  v6 = dispatch_semaphore_create(0);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_100010928;
  v8[5] = a1;
  v8[6] = v5;
  v8[7] = v6;

  v9 = v6;
  sub_10000BB60(0, 0, v4, &unk_100010948, v8);

  OS_dispatch_semaphore.wait()();
  v10 = *(v5 + 24);
  if (v10 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v10)
    {
      v11[1] = *(v5 + 16);
      swift_errorRetain();
      sub_10000C224(&qword_10001C468, "F5");
      swift_willThrowTypedImpl();
    }

    else
    {
    }
  }
}

uint64_t sub_10000C8CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000C91C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000C5DC;

  return sub_10000B860(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_10000C9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C224(&qword_10001C480, &qword_100010930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CA38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CA70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC98;

  return sub_10000C034(a1, v4);
}

uint64_t sub_10000CB28(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000CB40(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10000CB40(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10000CB54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000C224(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000CBB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_10000CBFC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_10000CE8C(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*(*(a1 + 32) + 8) + 24) + 8);
  v3 = 136446722;
  v4 = "process_start_pcap_request_block_invoke";
  v5 = 1024;
  v6 = 258;
  v7 = 2048;
  v8 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s:%d pti_group notify %p\n", &v3, 0x1Cu);
}

void sub_10000CF38()
{
  v6 = 136446722;
  sub_100002CBC();
  sub_100002CE0(&_mh_execute_header, v0, v1, "%{public}s:%d freeing %p\n", v2, v3, v4, v5, v6);
}

void sub_10000CFC0()
{
  v6 = 136446722;
  sub_100002CBC();
  sub_100002CCC();
  sub_100002CE0(&_mh_execute_header, v0, v1, "%{public}s:%d key: %{public}s\n", v2, v3, v4, v5, v6);
}

void sub_10000D03C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136446978;
  *&v3[4] = "set_tasklet_timeout";
  *&v3[12] = 1024;
  *&v3[14] = 133;
  *&v3[18] = 2082;
  *&v3[20] = *(a1 + 16);
  *&v3[28] = 1024;
  *&v3[30] = a2;
  sub_100002CFC(&_mh_execute_header, a2, a3, "%{public}s:%d key: %{public}s timeout: %u\n", *v3, *&v3[8], *&v3[16], *&v3[24], *&v3[32]);
}

void sub_10000D0D8()
{
  v1[0] = 136446466;
  sub_100002CBC();
  *(&v1[3] + 2) = 146;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s:%d dispatch_source_create timer failed\n", v1, 0x12u);
}

void sub_10000D164()
{
  v6 = 136446722;
  sub_100002CBC();
  sub_100002CCC();
  sub_100002CE0(&_mh_execute_header, v0, v1, "%{public}s:%d key: %{public}s\n", v2, v3, v4, v5, v6);
}

void sub_10000D1E0()
{
  v6 = 136446722;
  sub_100002CBC();
  sub_100002CCC();
  sub_100002CE0(&_mh_execute_header, v0, v1, "%{public}s:%d key: %{public}s\n", v2, v3, v4, v5, v6);
}

void sub_10000D25C()
{
  sub_100007928(__stack_chk_guard);
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10000D300()
{
  *v4 = 136446978;
  sub_1000078E8();
  *&v4[7] = 504;
  v4[9] = 2082;
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}s:%d open_bpf_device %{public}s pcc_flags 0x%x\n", v4, 0x22u);
}

void sub_10000D3A4()
{
  sub_100007918();
  sub_1000078C8();
  sub_10000790C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10000D42C()
{
  sub_100001ED4();
  sub_10000790C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000D4B0()
{
  sub_100007918();
  sub_1000078C8();
  sub_10000790C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10000D538()
{
  sub_100001ED4();
  sub_10000790C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000D6E8()
{
  sub_100007928(__stack_chk_guard);
  sub_1000078E8();
  sub_1000078F8();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10000D76C()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000D7F0()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000D874()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000D8F8()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000D97C()
{
  sub_100007928(__stack_chk_guard);
  sub_1000078E8();
  sub_1000078C8();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10000DA00()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DA84()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DB08()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DB8C()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DC10()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DC94()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DD18()
{
  sub_100001ED4();
  sub_10000790C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DD9C()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DE20(uint64_t *a1, pcap_t **a2, NSObject *a3)
{
  v4 = *a1;
  pcap_geterr(*a2);
  v7[0] = 136447234;
  sub_100007918();
  sub_1000078C8();
  v8 = v5;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%{public}s:%d %{public}s: pcap_ng_dump_open(%{public}s) failed: %{public}s\n", v7, 0x30u);
}

void sub_10000DED4()
{
  sub_100007928(__stack_chk_guard);
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_10000DF74()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DFF8()
{
  sub_1000078E8();
  sub_1000078F8();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10000E084()
{
  sub_100001ED4();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000E108()
{
  sub_1000078E8();
  sub_1000078F8();
  sub_1000078DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10000E194()
{
  sub_100001ED4();
  sub_10000790C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000E218(const __CFString *a1)
{
  sub_100008C28(a1);
  sub_100002CBC();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_10000E2C4()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_10000E378()
{
  v1[0] = 136315650;
  sub_1000078E8();
  sub_1000094AC();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s:%d intended bpf buffer size: %u", v1, 0x18u);
}

void sub_10000E40C()
{
  v1[0] = 136315650;
  sub_1000078E8();
  sub_1000094AC();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s:%d final bpf buffer size: %u", v1, 0x18u);
}

void sub_10000E4A0()
{
  __error();
  sub_1000078E8();
  sub_100009490();
  sub_100009480();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10000E53C()
{
  __error();
  sub_1000078E8();
  sub_100009490();
  sub_100009480();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10000E5D8()
{
  __error();
  sub_1000078E8();
  sub_1000094AC();
  sub_100009480();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10000E670()
{
  v6 = 136315394;
  sub_100002CBC();
  sub_100001EE8(&_mh_execute_header, v0, v1, "%s:%d dispatch_source_create() for DISPATCH_SOURCE_TYPE_READ failed.", v2, v3, v4, v5, v6);
}

void sub_10000E6F0()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_10000946C();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10000E78C()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_10000946C();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10000E828()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_10000946C();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10000E8C4()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_10000946C();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10000E960()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_10000946C();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10000E9FC()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_10000946C();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10000EA98(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "strict_malloc(%zu) failed", a2);
  qword_10001C4B0 = *a1;
  __break(1u);
}

void sub_10000EAD4(char **a1)
{
  *a1 = 0;
  asprintf(a1, "strict_malloc called with size 0");
  qword_10001C4B0 = *a1;
  __break(1u);
}

void sub_10000EB08()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_10000946C();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10000EBA4()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_10000946C();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10000EC40()
{
  v1[0] = 136315650;
  sub_100002CBC();
  sub_10000946C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s:%d pcap_setup_pktap_interface() fail - %s", v1, 0x1Cu);
}

void sub_10000ECC8()
{
  v6 = 136315394;
  sub_100002CBC();
  sub_100001EE8(&_mh_execute_header, v0, v1, "%s:%d failure to kernel control socket", v2, v3, v4, v5, v6);
}

void sub_10000ED48()
{
  v0 = __error();
  strerror(*v0);
  sub_100002CBC();
  sub_10000946C();
  sub_100009480();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10000EDE4()
{
  v6 = 136315394;
  sub_100002CBC();
  sub_100001EE8(&_mh_execute_header, v0, v1, "%s:%d unable to send packet", v2, v3, v4, v5, v6);
}

void sub_10000EE64()
{
  v6 = 136315394;
  sub_100002CBC();
  sub_100001EE8(&_mh_execute_header, v0, v1, "%s:%d unable to allocate memory for packet", v2, v3, v4, v5, v6);
}

void sub_10000EEE4(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "_strict_reallocf(%zu) failed", a2);
  qword_10001C4B0 = *a1;
  __break(1u);
}

void sub_10000EF20()
{
  v1[0] = 136315650;
  sub_100002CBC();
  sub_10000946C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s:%d no unit number in %s", v1, 0x1Cu);
}

void sub_10000F0A0()
{
  v1[0] = 136315650;
  sub_100002CBC();
  sub_10000946C();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s:%d %s", v1, 0x1Cu);
}

void sub_10000F220()
{
  sub_10000A998();
  sub_100009E88();
  sub_100002CBC();
  sub_10000A930();
  sub_10000A90C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x3Cu);
}

void sub_10000F304(uint64_t a1, void *a2)
{
  sub_10000A9A4(a2);
  sub_100002CBC();
  sub_10000A90C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_10000F3B8()
{
  sub_10000A998();
  xpc_connection_get_pid(v0);
  sub_100002CBC();
  sub_10000A950();
  sub_10000A90C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_10000F44C(int a1, xpc_connection_t connection, NSObject *a3)
{
  xpc_connection_get_pid(connection);
  v4[0] = 136446978;
  sub_100002CBC();
  sub_10000A96C();
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}s:%d command NOT ALLOWED command: %{public}s from pid: %u\n", v4, 0x22u);
}

void sub_10000F4F0()
{
  sub_10000A998();
  xpc_connection_get_pid(v0);
  sub_100002CBC();
  sub_10000A950();
  sub_10000A90C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_10000F584()
{
  v6 = 136446722;
  sub_100002CBC();
  sub_10000A91C();
  sub_100002CE0(&_mh_execute_header, v0, v1, "%{public}s:%d XPC_ERROR_CONNECTION_INTERRUPTED for peer %p\n", v2, v3, v4, v5, v6);
}

void sub_10000F600()
{
  v6 = 136446722;
  sub_100002CBC();
  sub_10000A91C();
  sub_100002CE0(&_mh_execute_header, v0, v1, "%{public}s:%d XPC_ERROR_TERMINATION_IMMINENT for peer %p\n", v2, v3, v4, v5, v6);
}

void sub_10000F67C()
{
  v6 = 136446722;
  sub_100002CBC();
  sub_10000A91C();
  sub_100002CE0(&_mh_execute_header, v0, v1, "%{public}s:%d XPC_ERROR_CONNECTION_INVALID for peer %p\n", v2, v3, v4, v5, v6);
}

void sub_10000F6F8()
{
  sub_10000A998();
  sub_100009E88();
  sub_100002CBC();
  sub_10000A930();
  sub_10000A90C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10000F7C8()
{
  v1[0] = 136446722;
  sub_100002CBC();
  sub_10000A988();
  v2 = "com.apple.pcapd-local";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s:%d xpc_connection_create_mach_service(%s) failed\n", v1, 0x1Cu);
}

void sub_10000F860()
{
  v1[0] = 136446466;
  sub_100002CBC();
  *(&v1[3] + 2) = 411;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%{public}s:%d xpc listener unknown message type\n", v1, 0x12u);
}

void sub_10000F8EC(void *a1, NSObject *a2)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  v4[0] = 136446722;
  sub_100002CBC();
  sub_10000A988();
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s:%d xpc listener error: %s\n", v4, 0x1Cu);
}

void sub_10000F998()
{
  v6 = 136446722;
  sub_100002CBC();
  sub_10000A91C();
  sub_100002CE0(&_mh_execute_header, v0, v1, "%{public}s:%d xpc listener new connection %p\n\n", v2, v3, v4, v5, v6);
}

void sub_10000FA14(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = 136447234;
  v5 = "peer_context_finalizer";
  v6 = 1024;
  v7 = 174;
  v8 = 2048;
  v9 = a1;
  v10 = 2048;
  v11 = v2;
  v12 = 2048;
  v13 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s:%d free context: %p connection: %p peer: %p\n", &v4, 0x30u);
}