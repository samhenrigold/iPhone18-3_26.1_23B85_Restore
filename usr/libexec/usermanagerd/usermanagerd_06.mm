void sub_10005CC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005CCC0(uint64_t a1)
{
  v9 = 0;
  if ((sub_100021D04(*(a1 + 32), *(a1 + 40), 0, &v9) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = mach_task_self_;
    v7 = vm_page_size;
    if (vm_page_size >= *(a1 + 64) + 1024)
    {
      v8 = *(a1 + 64) + 1024;
    }

    else
    {
      v8 = vm_page_size;
    }

    memset_s(*(a1 + 56), v8, 0, v8);
    vm_deallocate(v6, v5, v7);
  }
}

void sub_10005D180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005D1B0(uint64_t a1)
{
  v5 = 0;
  if ((sub_100021D04(*(a1 + 32), *(a1 + 40), 1, &v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_10005DE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005DEF8(uint64_t a1)
{
  v10 = 0;
  if ((sub_100022858(*(a1 + 32), *(a1 + 40), 0, &v10) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v10 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = mach_task_self_;
  v6 = vm_page_size;
  v7 = *(a1 + 56);
  if (vm_page_size >= *(a1 + 64) + 1024)
  {
    v8 = *(a1 + 64) + 1024;
  }

  else
  {
    v8 = vm_page_size;
  }

  memset_s(*(a1 + 56), v8, 0, v8);
  return vm_deallocate(v5, v7, v6);
}

void sub_10005E3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005E3E0(uint64_t a1)
{
  v5 = 0;
  if ((sub_100022858(*(a1 + 32), *(a1 + 40), 1, &v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_10005F0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005F130(void *a1)
{
  v10 = 0;
  if ((sub_100022F48(a1[4], a1[5], 0, &v10) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v10 userInfo:0];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = mach_task_self_;
  v6 = vm_page_size;
  v7 = a1[7];
  if (vm_page_size >= a1[8] + 1024)
  {
    v8 = a1[8] + 1024;
  }

  else
  {
    v8 = vm_page_size;
  }

  memset_s(a1[7], v8, 0, v8);
  return vm_deallocate(v5, v7, v6);
}

void sub_10005F5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005F618(uint64_t *a1)
{
  v5 = 0;
  if ((sub_100022F48(a1[4], a1[5], 1, &v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_10005FA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005FA68(uint64_t a1)
{
  v5 = 0;
  if ((sub_100023684(&v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_1000603DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006043C(uint64_t a1)
{
  v9 = 0;
  if ((sub_100023DF8(*(a1 + 32), 0, &v9) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = mach_task_self_;
    v7 = vm_page_size;
    if (vm_page_size >= 0x400)
    {
      v8 = 1024;
    }

    else
    {
      v8 = vm_page_size;
    }

    memset_s(v5, v8, 0, v8);
    vm_deallocate(v6, v5, v7);
  }
}

void sub_1000608D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100060904(uint64_t a1)
{
  v5 = 0;
  if ((sub_100023DF8(*(a1 + 32), 1, &v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_100060D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100060D78(uint64_t a1)
{
  if (!sub_10002E270(*(a1 + 32)))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v10 = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v11, 0, 0, &_mh_execute_header, v2, 0, "removeUserSession failed", &v10, 2);
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void sub_10006137C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000613A0(uint64_t a1)
{
  v2 = sub_100030DC0("/private/var//keybags/nextsession_opaque.kb");
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (v2)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v5 = qword_1000EB420;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      LODWORD(v6) = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v6;
      }

      else
      {
        v6 = v6 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = *(*(*(a1 + 32) + 8) + 40);
        v8 = v5;
        v18[0] = 67109120;
        v18[1] = [v7 length];
        v9 = _os_log_send_and_compose_impl(v6, &v17, 0, 0, &_mh_execute_header, v8, 0, "RetrieveBlob SUCCESS with BLOB with size %d", v18);

        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        LOWORD(v18[0]) = 0;
        v13 = _os_log_send_and_compose_impl(v12, &v17, 0, 0, &_mh_execute_header, v10, 0, "RetrieveBlob FAILED to read BLOB", v18, 2);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    v16 = *(*(a1 + 40) + 8);
    v5 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void sub_100061774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100061798(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      LOWORD(v22[0]) = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v21, 0, 0, &_mh_execute_header, v2, 0, "In SetDeleteBlob", v22, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (unlink("/private/var//keybags/nextsession_opaque.kb"))
  {
    *(*(*(a1 + 32) + 8) + 24) = *__error();
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = *(*(*(a1 + 32) + 8) + 24);
        v22[0] = 67109120;
        v22[1] = v10;
        v11 = _os_log_send_and_compose_impl(v9, &v21, 0, 0, &_mh_execute_header, v7, 0, "Removing User Session OpaqueBlob failed with error :%d", v22);
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*(*(*(a1 + 32) + 8) + 24) userInfo:0];
    v19 = *(*(a1 + 40) + 8);
    v13 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v13 = qword_1000EB420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        LOWORD(v22[0]) = 0;
        LODWORD(v20) = 2;
        v16 = _os_log_send_and_compose_impl(v15, &v21, 0, 0, &_mh_execute_header, v13, 0, "Removed User Session OpaqueBlob", v22, v20);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }
  }
}

void sub_100061C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100061C7C(uint64_t a1)
{
  if (sub_10001A8EC())
  {
    if (qword_1000EB438 != -1)
    {
      sub_100095FC8();
    }

    v2 = qword_1000EB430;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v20 = 0;
      v3 = sub_1000011A8(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        LOWORD(v21) = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v20, 0, 0, &_mh_execute_header, v2, 16, "Failed to switch user: user switch already in progress", &v21, 2);
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];
    v17 = *(*(a1 + 48) + 8);
    v7 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    v7 = [*(a1 + 32) objectForKey:kUMUserSessionIDKey];
    if (sub_10002E4B4(*(a1 + 32), 0, *(a1 + 40)) == 1)
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v8 = qword_1000EB420;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 0;
        LODWORD(v9) = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v9;
        }

        else
        {
          v9 = v9 & 0xFFFFFFFE;
        }

        if (v9)
        {
          v10 = v8;
          v21 = 67109120;
          v22 = [v7 intValue];
          v11 = _os_log_send_and_compose_impl(v9, &v20, 0, 0, &_mh_execute_header, v10, 0, "Successful switch Session with next boot foreground ID %d", &v21);

          if (v11)
          {
            sub_100002A8C(v11);
          }
        }

        else
        {
          v11 = 0;
        }

        free(v11);
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v12 = qword_1000EB420;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 0;
        LODWORD(v13) = sub_1000011A8(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v13;
        }

        else
        {
          v13 = v13 & 0xFFFFFFFE;
        }

        if (v13)
        {
          v14 = v12;
          v21 = 67109120;
          v22 = [v7 intValue];
          v15 = _os_log_send_and_compose_impl(v13, &v20, 0, 0, &_mh_execute_header, v14, 0, "Failed to switch Session with next boot foreground ID %d", &v21);

          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v19 = *(*(a1 + 48) + 8);
      v8 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }
}

void sub_100062258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100062278(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      LOWORD(v18) = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v19, 0, 0, &_mh_execute_header, v2, 0, "In SetSBDBlob", &v18, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (sub_10002FAEC(*(a1 + 32), "/private/var//keybags/nextsession_SBD_opaque.kb") == 1)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LOWORD(v18) = 0;
        LODWORD(v17) = 2;
        v10 = _os_log_send_and_compose_impl(v9, &v19, 0, 0, &_mh_execute_header, v7, 0, "Successful Setting of SBD Opaque Bag", &v18, v17, v18);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        LOWORD(v18) = 0;
        LODWORD(v17) = 2;
        v10 = _os_log_send_and_compose_impl(v15, &v19, 0, 0, &_mh_execute_header, v7, 0, "Failed Setting of SBD Opaque Bag", &v18, v17, v18);
LABEL_29:
        v16 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_32;
      }

LABEL_31:
      v16 = 0;
LABEL_32:
      free(v16);
    }
  }
}

void sub_1000626D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000626F8(uint64_t a1)
{
  v15 = 0;
  *(*(*(a1 + 48) + 8) + 24) = sub_100030420(*(a1 + 32), *(a1 + 40), &v15);
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        LOWORD(v16[0]) = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v14, 0, 0, &_mh_execute_header, v2, 0, "setUserSessionKeybagData successful", v16, 2);
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v16[0] = 67109120;
        v16[1] = v15;
        v10 = _os_log_send_and_compose_impl(v9, &v14, 0, 0, &_mh_execute_header, v7, 0, "FAILED to setUserSessionKeybagData with error :%d", v16);
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v15 userInfo:0];
    v13 = *(*(a1 + 56) + 8);
    v2 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_100062B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100062B68(uint64_t *a1)
{
  v19 = 0;
  v2 = sub_1000024C0(a1[4], &v19);
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[5] + 8) + 40))
  {
    v5 = 1;
  }

  else
  {
    v5 = v19 == 0;
  }

  if (v5)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v6 = qword_1000EB420;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        LOWORD(v20[0]) = 0;
        v9 = _os_log_send_and_compose_impl(v8, &v18, 0, 0, &_mh_execute_header, v6, 0, "userKeybagOpaqueData retrieval successful", v20, 2);
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v11 = qword_1000EB420;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v20[0] = 67109120;
        v20[1] = v19;
        v14 = _os_log_send_and_compose_impl(v13, &v18, 0, 0, &_mh_execute_header, v11, 0, "FAILED to get userKeybagOpaqueData with error :%d", v20);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v19 userInfo:0];
    v17 = *(a1[6] + 8);
    v6 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

void sub_100062F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100062F8C(uint64_t a1)
{
  v2 = sub_100030DC0("/private/var//keybags/nextsession_SBD_opaque.kb");
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (v2)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v5 = qword_1000EB420;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      LODWORD(v6) = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v6;
      }

      else
      {
        v6 = v6 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = *(*(*(a1 + 32) + 8) + 40);
        v8 = v5;
        v18[0] = 67109120;
        v18[1] = [v7 length];
        v9 = _os_log_send_and_compose_impl(v6, &v17, 0, 0, &_mh_execute_header, v8, 0, "RetrieveSBDBlob SUCCESS with BLOB with size %d", v18);

        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        LOWORD(v18[0]) = 0;
        v13 = _os_log_send_and_compose_impl(v12, &v17, 0, 0, &_mh_execute_header, v10, 0, "RetrieveSBDBlob FAILED to read BLOB", v18, 2);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    v16 = *(*(a1 + 40) + 8);
    v5 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void sub_100063360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100063384(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      LOWORD(v22[0]) = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v21, 0, 0, &_mh_execute_header, v2, 0, "In DeleteSBDBlob", v22, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (unlink("/private/var//keybags/nextsession_SBD_opaque.kb"))
  {
    *(*(*(a1 + 32) + 8) + 24) = *__error();
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = *(*(*(a1 + 32) + 8) + 24);
        v22[0] = 67109120;
        v22[1] = v10;
        v11 = _os_log_send_and_compose_impl(v9, &v21, 0, 0, &_mh_execute_header, v7, 0, "Removing User Session SBD OpaqueBlob failed with error :%d", v22);
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*(*(*(a1 + 32) + 8) + 24) userInfo:0];
    v19 = *(*(a1 + 40) + 8);
    v13 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v13 = qword_1000EB420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        LOWORD(v22[0]) = 0;
        LODWORD(v20) = 2;
        v16 = _os_log_send_and_compose_impl(v15, &v21, 0, 0, &_mh_execute_header, v13, 0, "Removed User Session SBD OpaqueBlob", v22, v20);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }
  }
}

void sub_100063888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000638AC(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v14 = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v15, 0, 0, &_mh_execute_header, v2, 0, "In getUserSessionAttributes:reply:", &v14, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_10002FF34(*(a1 + 32));
  if (v7)
  {
    v8 = [*(a1 + 40) externalizeUserDictionary:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_100063C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100063CB8(uint64_t a1)
{
  v2 = sub_100030990(*(a1 + 32));
  if (v2)
  {
    v3 = [*(a1 + 40) externalizeUserDictionary:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v6 = qword_1000EB420;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      LODWORD(v7) = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v7;
      }

      else
      {
        v7 = v7 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(*(*(a1 + 64) + 8) + 40);
        v9 = v6;
        v18 = 67109120;
        v19 = [v8 intValue];
        v10 = _os_log_send_and_compose_impl(v7, &v17, 0, 0, &_mh_execute_header, v9, 0, "In Set User Session with ID %d completed", &v18);
        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v6 = qword_1000EB420;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      LODWORD(v14) = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v14;
      }

      else
      {
        v14 = v14 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = *(*(*(a1 + 64) + 8) + 40);
        v9 = v6;
        v18 = 67109120;
        v19 = [v15 intValue];
        v10 = _os_log_send_and_compose_impl(v14, &v17, 0, 0, &_mh_execute_header, v9, 0, "Failed to Set User Session with ID %d completed", &v18);
LABEL_20:
        v16 = v10;

        if (v16)
        {
          sub_100002A8C(v16);
        }

        goto LABEL_23;
      }

LABEL_22:
      v16 = 0;
LABEL_23:
      free(v16);
    }
  }
}

void sub_100064088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000640AC(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v20 = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v21, 0, 0, &_mh_execute_header, v2, 0, "In UserSessionConfigured", &v20, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100018360();
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) externalizeUserDictionary:v7];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v20 = 0;
        LODWORD(v19) = 2;
        v15 = _os_log_send_and_compose_impl(v14, &v21, 0, 0, &_mh_execute_header, v12, 0, "Did not find any session in UserSessionConfigured", &v20, v19);
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v18 = *(*(a1 + 48) + 8);
    v8 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

void sub_100064658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10006468C(uint64_t a1)
{
  if (sub_10001A8EC())
  {
    if (qword_1000EB438 != -1)
    {
      sub_100095FC8();
    }

    v2 = qword_1000EB430;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v33 = 0;
      v3 = sub_1000011A8(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v32 = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v33, 0, 0, &_mh_execute_header, v2, 16, "Failed to switch user: user switch already in progress", &v32, 2);
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    return;
  }

  v7 = sub_100018084(502);
  if (v7)
  {
    v8 = v7;
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v9 = qword_1000EB420;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 0;
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v32 = 0;
        v12 = _os_log_send_and_compose_impl(v11, &v33, 0, 0, &_mh_execute_header, v9, 0, "LOGINWINDOW User EXISTS ALREADY, returning loginwindow setup", &v32, 2);
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

LABEL_54:
    v28 = [*(a1 + 32) externalizeUserDictionary:v8];
    v29 = *(*(a1 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    return;
  }

  v14 = sub_10001D4F4(*(a1 + 56), 0);
  if (v14)
  {
    v8 = v14;
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v15 = qword_1000EB420;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v32 = 0;
        v18 = _os_log_send_and_compose_impl(v17, &v33, 0, 0, &_mh_execute_header, v15, 0, "DONE Creating LOGINWINDOW User", &v32, 2);
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v23 = qword_1000EB420;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v32 = 0;
        LODWORD(v31) = 2;
        v26 = _os_log_send_and_compose_impl(v25, &v33, 0, 0, &_mh_execute_header, v23, 0, "Forcing USR as configuration is successful", &v32, v31);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    sub_10002E9D8(*(*(*(a1 + 48) + 8) + 40), 0);
    goto LABEL_54;
  }

  *(*(*(a1 + 40) + 8) + 40) = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];

  _objc_release_x1();
}

void sub_100064D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064D4C(uint64_t a1)
{
  v2 = sub_100018084(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_100033BF4(v2, v4);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v5 = qword_1000EB420;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 0;
        v6 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
        }

        else
        {
          v7 = v6 & 0xFFFFFFFE;
        }

        if (v7)
        {
          *v16 = 138412290;
          *&v16[4] = v3;
          v8 = _os_log_send_and_compose_impl(v7, &v17, 0, 0, &_mh_execute_header, v5, 0, "AddSyncservice: to the session %@", v16, 12);
          v9 = v8;
          if (v8)
          {
            sub_100002A8C(v8);
          }
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }
    }

    v10 = [(__CFDictionary *)v3 objectForKey:kUMUserSessionIDKey];
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v11 = qword_1000EB420;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      LODWORD(v12) = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v12;
      }

      else
      {
        v12 = v12 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = v11;
        v14 = [v10 intValue];
        LODWORD(v17) = 67109120;
        HIDWORD(v17) = v14;
        v15 = _os_log_send_and_compose_impl(v12, v16, 0, 0, &_mh_execute_header, v13, 0, "Added MachService to User Session with ID %d", &v17);

        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }
  }
}

void sub_10006513C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065154(uint64_t a1)
{
  v2 = sub_100018084(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_1000344FC(v2, v4);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v5 = qword_1000EB420;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 0;
        v6 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
        }

        else
        {
          v7 = v6 & 0xFFFFFFFE;
        }

        if (v7)
        {
          *v16 = 138412290;
          *&v16[4] = v3;
          v8 = _os_log_send_and_compose_impl(v7, &v17, 0, 0, &_mh_execute_header, v5, 0, "Removed Syncservice from the session %@", v16, 12);
          v9 = v8;
          if (v8)
          {
            sub_100002A8C(v8);
          }
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }
    }

    v10 = [(__CFDictionary *)v3 objectForKey:kUMUserSessionIDKey];
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v11 = qword_1000EB420;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      LODWORD(v12) = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v12;
      }

      else
      {
        v12 = v12 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = v11;
        v14 = [v10 intValue];
        LODWORD(v17) = 67109120;
        HIDWORD(v17) = v14;
        v15 = _os_log_send_and_compose_impl(v12, v16, 0, 0, &_mh_execute_header, v13, 0, "Added MachService to User Session with ID %d", &v17);

        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }
  }
}

void sub_100065524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006553C(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 40);
      v18 = 67109120;
      v19 = v5;
      v6 = _os_log_send_and_compose_impl(v4, &v17, 0, 0, &_mh_execute_header, v2, 0, " TRYING to LOAD  SYNC BUBBLE FOR uid %d:", &v18);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if (sub_1000315F8(*(a1 + 40)))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v8 = qword_1000EB420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = *(a1 + 40);
        v18 = 67109120;
        v19 = v11;
        v12 = _os_log_send_and_compose_impl(v10, &v17, 0, 0, &_mh_execute_header, v8, 0, "FAILURE TO LOAD SYNC BUBBLE FOR uid %d:", &v18);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v8 = qword_1000EB420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = *(a1 + 40);
        v18 = 67109120;
        v19 = v15;
        v12 = _os_log_send_and_compose_impl(v14, &v17, 0, 0, &_mh_execute_header, v8, 0, "SUCCESSFUL LOAD  OF SYNC BUBBLE FOR uid %d:", &v18);
LABEL_29:
        v16 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }

        goto LABEL_32;
      }

LABEL_31:
      v16 = 0;
LABEL_32:
      free(v16);
    }
  }
}

void sub_100065954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006596C(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 40);
      v18 = 67109120;
      v19 = v5;
      v6 = _os_log_send_and_compose_impl(v4, &v17, 0, 0, &_mh_execute_header, v2, 0, " TRYING to LOAD  SYNC BUBBLE FOR uid %d:", &v18);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if (sub_10002C904(*(a1 + 40), 1))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v8 = qword_1000EB420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = *(a1 + 40);
        v18 = 67109120;
        v19 = v11;
        v12 = _os_log_send_and_compose_impl(v10, &v17, 0, 0, &_mh_execute_header, v8, 0, "FAILURE TO LOAD SYNC BUBBLE FOR uid %d:", &v18);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v8 = qword_1000EB420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = *(a1 + 40);
        v18 = 67109120;
        v19 = v15;
        v12 = _os_log_send_and_compose_impl(v14, &v17, 0, 0, &_mh_execute_header, v8, 0, "SUCCESSFUL LOAD  OF SYNC BUBBLE FOR uid %d:", &v18);
LABEL_29:
        v16 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }

        goto LABEL_32;
      }

LABEL_31:
      v16 = 0;
LABEL_32:
      free(v16);
    }
  }
}

void sub_100065D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065DA0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        LOWORD(v21) = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v22, 0, 0, &_mh_execute_header, v2, 0, "TRYING to Setup Test for EDUMode", &v21, 2, v21);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        LOWORD(v21) = 0;
        v5 = _os_log_send_and_compose_impl(v7, &v22, 0, 0, &_mh_execute_header, v2, 0, "TRYING to Clear TestSetup for EDUMode", &v21, 2, v21);
LABEL_18:
        v8 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }

        goto LABEL_21;
      }

LABEL_20:
      v8 = 0;
LABEL_21:
      free(v8);
    }
  }

  if (!sub_1000332B0(*(a1 + 40)))
  {
    if (*(a1 + 40) == 1)
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v9 = qword_1000EB420;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      v22 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (!v14)
      {
        goto LABEL_59;
      }

      LOWORD(v21) = 0;
      LODWORD(v20) = 2;
      v12 = _os_log_send_and_compose_impl(v14, &v22, 0, 0, &_mh_execute_header, v9, 0, "FAILED Internal test setup", &v21, v20, v21);
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v9 = qword_1000EB420;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      v22 = 0;
      v17 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (!v18)
      {
        goto LABEL_59;
      }

      LOWORD(v21) = 0;
      LODWORD(v20) = 2;
      v12 = _os_log_send_and_compose_impl(v18, &v22, 0, 0, &_mh_execute_header, v9, 0, "FAILED Internal test Cleared", &v21, v20, v21);
    }

LABEL_57:
    v19 = v12;
    if (v12)
    {
      sub_100002A8C(v12);
    }

    goto LABEL_60;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  if (*(a1 + 40) != 1)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v9 = qword_1000EB420;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    v22 = 0;
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (!v16)
    {
      goto LABEL_59;
    }

    LOWORD(v21) = 0;
    LODWORD(v20) = 2;
    v12 = _os_log_send_and_compose_impl(v16, &v22, 0, 0, &_mh_execute_header, v9, 0, "SUCCESSFUL Internal test Cleared", &v21, v20, v21);
    goto LABEL_57;
  }

  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v9 = qword_1000EB420;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 0;
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      LOWORD(v21) = 0;
      LODWORD(v20) = 2;
      v12 = _os_log_send_and_compose_impl(v11, &v22, 0, 0, &_mh_execute_header, v9, 0, "SUCCESSFUL Internal test setup", &v21, v20, v21);
      goto LABEL_57;
    }

LABEL_59:
    v19 = 0;
LABEL_60:
    free(v19);
  }

LABEL_61:
}

void sub_1000662FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100066314(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = dword_1000EA3DC;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      v9[0] = 67109120;
      v9[1] = v5;
      v6 = _os_log_send_and_compose_impl(v4, &v8, 0, 0, &_mh_execute_header, v2, 0, "handle_GetSyncBubbleID:%d", v9);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_100066684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000666A8(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:kUMUserSessionIDKey];
  v3 = sub_100018084([v2 intValue]);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:kUMUserSessionSyncMachServicesKey];
    if (v5)
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v6 = qword_1000EB420;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v22[0] = 0;
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          *v23 = 138412290;
          *&v23[4] = v5;
          v9 = _os_log_send_and_compose_impl(v8, v22, 0, 0, &_mh_execute_header, v6, 0, "Sending machservice list %@", v23, 12);
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      v15 = [NSArray arrayWithArray:v5];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *(*(*(a1 + 48) + 8) + 24) = 0;
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v11 = qword_1000EB420;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v22[0] = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        *v23 = 138412290;
        *&v23[4] = v4;
        LODWORD(v21) = 12;
        v14 = _os_log_send_and_compose_impl(v19, v22, 0, 0, &_mh_execute_header, v11, 0, "AddSyncservice: to the session %@", v23, v21, v22[0]);
LABEL_30:
        v20 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v11 = qword_1000EB420;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *v23 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LOWORD(v22[0]) = 0;
        v14 = _os_log_send_and_compose_impl(v13, v23, 0, 0, &_mh_execute_header, v11, 0, "Empty content in machservice list", v22, 2, v22[0]);
        goto LABEL_30;
      }
    }

    v20 = 0;
LABEL_33:
    free(v20);
LABEL_34:
  }
}

void sub_100066B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100066B64(uint64_t result)
{
  if (qword_1000EB5C0)
  {
    v1 = result;
    *(*(*(v1 + 32) + 8) + 40) = [NSArray arrayWithArray:?];

    return _objc_release_x1();
  }

  return result;
}

void sub_100066D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100066D44(uint64_t a1)
{
  if (qword_1000EB5C0)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v13 = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v14, 0, 0, &_mh_execute_header, v2, 0, "Trying to Clear SYNC BUBBLE TABLE", &v13, 2);
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    if (CFArrayGetCount(qword_1000EB5C0) >= 1)
    {
      CFArrayRemoveAllValues(qword_1000EB5C0);
      if (qword_1000EB5C0)
      {
        CFRelease(qword_1000EB5C0);
      }

      qword_1000EB5C0 = 0;
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v7 = qword_1000EB420;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v8 = sub_1000011A8(1);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFE;
        }

        if (v9)
        {
          v13 = 0;
          LODWORD(v12) = 2;
          v10 = _os_log_send_and_compose_impl(v9, &v14, 0, 0, &_mh_execute_header, v7, 0, "CLEARED THE SYNC BUBBLE LIST", &v13, v12);
          v11 = v10;
          if (v10)
          {
            sub_100002A8C(v10);
          }
        }

        else
        {
          v11 = 0;
        }

        free(v11);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_1000671F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10006721C(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v11 = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v12, 0, 0, &_mh_execute_header, v2, 0, "Listing swichblock", &v11, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = +[RDServer sharedServer];
  v8 = [v7 fetchUserBlockTaskList];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_1000674F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100067510(uint64_t result)
{
  if (qword_1000EB5C8)
  {
    v1 = result;
    *(*(*(v1 + 32) + 8) + 40) = [NSArray arrayWithArray:?];

    return _objc_release_x1();
  }

  return result;
}

void sub_1000676E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067700(uint64_t a1)
{
  v2 = sub_100018084(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = byte_1000EA3D8 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && sub_10006F578(v2, 0, 0, 0) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v5 = qword_1000EB420;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 40);
        v12[0] = 67109120;
        v12[1] = v8;
        v9 = _os_log_send_and_compose_impl(v7, &v11, 0, 0, &_mh_execute_header, v5, 0, "User Volume for uid %d mounted", v12);
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }
  }
}

void sub_1000679F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067A08(uint64_t a1)
{
  v2 = sub_100018084(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = byte_1000EA3D8 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && sub_100070DBC(v2, 0, 0, 0x80000) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v5 = qword_1000EB420;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 40);
        v12[0] = 67109120;
        v12[1] = v8;
        v9 = _os_log_send_and_compose_impl(v7, &v11, 0, 0, &_mh_execute_header, v5, 0, "User Volume for uid %d mounted", v12);
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }
  }
}

void sub_100067D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void *sub_100067D94(void *a1)
{
  result = sub_10002E998();
  if (result)
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  else
  {
    v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    result = a1[4];
    if (result)
    {
      v6 = result[2];

      return v6();
    }
  }

  return result;
}

void sub_100067FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067FC8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        LOWORD(v22) = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v21, 0, 0, &_mh_execute_header, v2, 0, "Called to set Network BK_SYS to true", &v22, 2);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        LOWORD(v22) = 0;
        v5 = _os_log_send_and_compose_impl(v7, &v21, 0, 0, &_mh_execute_header, v2, 0, "Called to set Network BK_SYS to false", &v22, 2);
LABEL_18:
        v8 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }

        goto LABEL_21;
      }

LABEL_20:
      v8 = 0;
LABEL_21:
      free(v8);
    }
  }

  if (sub_10001C98C(*(a1 + 40)))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v9 = qword_1000EB420;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = *(a1 + 40);
        v22 = 67109120;
        v23 = v12;
        v13 = _os_log_send_and_compose_impl(v11, &v21, 0, 0, &_mh_execute_header, v9, 0, "Network BK_SYS value set to %d", &v22);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    dword_1000EB5E0 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 0;
    sub_100018C80();
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v15 = qword_1000EB420;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = *(a1 + 40);
        v22 = 67109120;
        v23 = v18;
        v19 = _os_log_send_and_compose_impl(v17, &v21, 0, 0, &_mh_execute_header, v15, 0, "Failed to set Network BK_SYS value %d", &v22);
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }
  }
}

void sub_100068AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100068B80(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) machPort];
  if (qword_1000EB448 != -1)
  {
    sub_10009602C();
  }

  v2 = qword_1000EB440;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v44 = 0;
    LODWORD(v3) = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      LODWORD(v47) = 67109120;
      HIDWORD(v47) = [v4 machPort];
      v6 = _os_log_send_and_compose_impl(v3, &v44, 0, 0, &_mh_execute_header, v5, 2, "replacePersonaMachPortVoucher: have SourcePort:%d", &v47);

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100001458(0xFFFFFFFFLL, 0xFFFFFFFFLL, *(a1 + 88));
  *(*(*(a1 + 56) + 8) + 24) = sub_100001AF4(*(a1 + 40), *(a1 + 92), [*(a1 + 32) machPort], v7, (*(*(a1 + 64) + 8) + 24));
  v8 = mach_port_deallocate(mach_task_self_, [*(a1 + 32) machPort]);
  if (v8)
  {
    v9 = v8;
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v10 = qword_1000EB440;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v47 = 0;
      LODWORD(v11) = sub_1000011A8(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v11;
      }

      else
      {
        v11 = v11 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = v10;
        v14 = [v12 machPort];
        LODWORD(v44) = 67109376;
        HIDWORD(v44) = v14;
        v45 = 1024;
        v46 = v9;
        v15 = _os_log_send_and_compose_impl(v11, &v47, 0, 0, &_mh_execute_header, v13, 16, "replacePersonaMachPortVoucher: mach_port_deallocate(%d) failed with error: %{mach.errno}d", &v44, 14);

        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v16 = qword_1000EB440;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v44 = 0;
      v17 = sub_1000011A8(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v19 = *(*(*(a1 + 56) + 8) + 24);
        LODWORD(v47) = 67109120;
        HIDWORD(v47) = v19;
        LODWORD(v43) = 8;
        v20 = _os_log_send_and_compose_impl(v18, &v44, 0, 0, &_mh_execute_header, v16, 16, "replacePersonaMachPortVoucher: setupVoucherwithPersonaID failed: %{darwin.errno}d", &v47, v43);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    v32 = NSPOSIXErrorDomain;
    v33 = *(*(*(a1 + 56) + 8) + 24);
    goto LABEL_72;
  }

  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v28 = qword_1000EB440;
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    v44 = 0;
    v29 = sub_1000011A8(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 0xFFFFFFFE;
    }

    if (v30)
    {
      LOWORD(v47) = 0;
      LODWORD(v43) = 2;
      v31 = _os_log_send_and_compose_impl(v30, &v44, 0, 0, &_mh_execute_header, v28, 16, "replacePersonaMachPortVoucher: no replacement voucher port received from kernel", &v47, v43);
      goto LABEL_67;
    }

LABEL_69:
    v39 = 0;
LABEL_70:
    free(v39);
LABEL_71:

    v32 = NSPOSIXErrorDomain;
    v33 = 9;
LABEL_72:
    v40 = [NSError errorWithDomain:v32 code:v33 userInfo:0];
    v41 = *(*(a1 + 72) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    goto LABEL_73;
  }

  if (qword_1000EB448 != -1)
  {
    sub_100096004();
  }

  v22 = qword_1000EB440;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v44 = 0;
    v23 = sub_1000011A8(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v25 = *(*(*(a1 + 64) + 8) + 24);
      LODWORD(v47) = 67109120;
      HIDWORD(v47) = v25;
      v26 = _os_log_send_and_compose_impl(v24, &v44, 0, 0, &_mh_execute_header, v22, 2, "replacePersonaMachPortVoucher: kernel replacement voucher port:%d", &v47);
      v27 = v26;
      if (v26)
      {
        sub_100002A8C(v26);
      }
    }

    else
    {
      v27 = 0;
    }

    free(v27);
  }

  v34 = [[UMPersonaMachPort alloc] initWithMachPort:*(*(*(a1 + 64) + 8) + 24) options:1];
  v35 = *(*(a1 + 80) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v34;

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v28 = qword_1000EB440;
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    v44 = 0;
    v37 = sub_1000011A8(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 & 0xFFFFFFFE;
    }

    if (v38)
    {
      LOWORD(v47) = 0;
      LODWORD(v43) = 2;
      v31 = _os_log_send_and_compose_impl(v38, &v44, 0, 0, &_mh_execute_header, v28, 16, "replacePersonaMachPortVoucher: failed to create transport for target port", &v47, v43);
LABEL_67:
      v39 = v31;
      if (v31)
      {
        sub_100002A8C(v31);
      }

      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_73:
}

void sub_10006968C(uint64_t a1)
{
  v14 = 0;
  if (qword_1000EB448 != -1)
  {
    sub_10009602C();
  }

  v2 = qword_1000EB440;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v13 = 0;
    v3 = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 44);
      v15[0] = 67109376;
      v15[1] = v5;
      v16 = 1024;
      v17 = v6;
      v7 = _os_log_send_and_compose_impl(v4, &v13, 0, 0, &_mh_execute_header, v2, 2, "fetchPersonaListforPid (sync, pid: %d, asid: %d): entitlement OK", v15, 14);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = sub_100001458(*(a1 + 44), *(a1 + 48), *(a1 + 52));
  v10 = sub_100002B68(v9, &v14);
  v11 = *(a1 + 32);
  if (v10)
  {
    (*(v11 + 16))(v11, v10, 0);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v14 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }
}

void sub_100069CB8(uint64_t a1)
{
  v12 = 0;
  v2 = sub_100047940(&v12);
  if (!v2)
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v3 = qword_1000EB440;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v4 = sub_1000011A8(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v6 = *(a1 + 40);
        v13[0] = 67109376;
        v13[1] = v6;
        v14 = 1024;
        v15 = v12;
        v7 = _os_log_send_and_compose_impl(v5, &v11, 0, 0, &_mh_execute_header, v3, 0, "fetchAllUsersPersonaListforPid (sync, pid: %d) failed to fetch all user persona array: %{darwin.errno}d", v13, 14);
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    v9 = *(a1 + 32);
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10006A4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A4DC(uint64_t a1)
{
  v26 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v25 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 56);
      v7 = *(a1 + 60);
      v27 = 138412802;
      v28 = v5;
      v29 = 1024;
      v30 = v6;
      v31 = 1024;
      v32 = v7;
      v8 = _os_log_send_and_compose_impl(v4, &v25, 0, 0, &_mh_execute_header, v2, 2, "In UMSyncServer: entitlement OK, calling fetchPersonaSession with profileInfo:%@ for pid:%d with asid:%d", &v27, 24);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  v10 = sub_100001458(*(a1 + 60), *(a1 + 64), *(a1 + 68));
  v11 = sub_100002B94(*(a1 + 32), v10, &v26);
  if (v11)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v27 = 138412290;
        v28 = v11;
        LODWORD(v24) = 12;
        v15 = _os_log_send_and_compose_impl(v14, &v25, 0, 0, &_mh_execute_header, v12, 2, "fetchpersona:%@", &v27, v24);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v26 userInfo:0];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = *(*(*(a1 + 48) + 8) + 40);
        v27 = 138412290;
        v28 = v21;
        LODWORD(v24) = 12;
        v15 = _os_log_send_and_compose_impl(v20, &v25, 0, 0, &_mh_execute_header, v12, 2, "Fetch persona failed with error:%@", &v27, v24);
LABEL_29:
        v22 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }

        goto LABEL_32;
      }

LABEL_31:
      v22 = 0;
LABEL_32:
      free(v22);
    }
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    (*(v23 + 16))(v23, v11, *(*(*(a1 + 48) + 8) + 40));
  }
}

uint64_t sub_10006AA34(uint64_t a1)
{
  sub_100047950();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10006AE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AE80(uint64_t a1)
{
  v26 = 2;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 56);
      v7 = *(a1 + 60);
      v27 = 138412802;
      v28 = v5;
      v29 = 1024;
      v30 = v6;
      v31 = 1024;
      v32 = v7;
      v8 = _os_log_send_and_compose_impl(v4, &v25, 0, 0, &_mh_execute_header, v2, 0, "In UMSyncServer: entitlement OK, calling bundleIdentifiersForPersona for profileInfo:%@ for pid:%d with asid:%d", &v27, 24);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  v10 = sub_100001458(*(a1 + 60), *(a1 + 64), *(a1 + 68));
  v11 = sub_1000480DC(*(a1 + 32), v10, &v26);
  if (v11)
  {
    v26 = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v27 = 138412290;
        v28 = v11;
        LODWORD(v24) = 12;
        v15 = _os_log_send_and_compose_impl(v14, &v25, 0, 0, &_mh_execute_header, v12, 0, "fetchBundleIdentifiersForPersona Success with array %@", &v27, v24);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v26 userInfo:0];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = *(*(*(a1 + 48) + 8) + 40);
        v27 = 138412290;
        v28 = v21;
        LODWORD(v24) = 12;
        v15 = _os_log_send_and_compose_impl(v20, &v25, 0, 0, &_mh_execute_header, v12, 0, "fetchBundleIdentifiersForPersona failed with %@", &v27, v24);
LABEL_29:
        v22 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }

        goto LABEL_32;
      }

LABEL_31:
      v22 = 0;
LABEL_32:
      free(v22);
    }
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    (*(v23 + 16))(v23, v11, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_10006B6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B6F4(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 64);
      v7 = *(a1 + 68);
      v27 = 138412802;
      v28 = v5;
      v29 = 1024;
      v30 = v6;
      v31 = 1024;
      v32 = v7;
      v8 = _os_log_send_and_compose_impl(v4, &v26, 0, 0, &_mh_execute_header, v2, 0, "In UMSyncServer: setBundlesIdentifiers for profileInfo:%@ for pid:%d with asid:%d", &v27, 24);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  v10 = sub_100001458(*(a1 + 68), *(a1 + 72), *(a1 + 76));
  v11 = sub_1000479A8(*(a1 + 32), *(a1 + 40), v10);
  if (v11)
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v15 = qword_1000EB420;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = *(*(*(a1 + 56) + 8) + 40);
        v27 = 138412290;
        v28 = v18;
        LODWORD(v25) = 12;
        v19 = _os_log_send_and_compose_impl(v17, &v26, 0, 0, &_mh_execute_header, v15, 0, "Update bundle failed with error:%@", &v27, v25);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v15 = qword_1000EB420;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 0;
      v20 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = *(a1 + 40);
        v27 = 138412290;
        v28 = v22;
        LODWORD(v25) = 12;
        v19 = _os_log_send_and_compose_impl(v21, &v26, 0, 0, &_mh_execute_header, v15, 0, "Update BundleIDS Succcess, new bundles:%@", &v27, v25);
LABEL_29:
        v23 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }

        goto LABEL_32;
      }

LABEL_31:
      v23 = 0;
LABEL_32:
      free(v23);
    }
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    (*(v24 + 16))(v24, *(*(*(a1 + 56) + 8) + 40));
  }
}

void sub_10006BD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006BD30(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v25[0] = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 56);
      *v26 = 138412546;
      *&v26[4] = v5;
      v27 = 1024;
      v28 = v6;
      v7 = _os_log_send_and_compose_impl(v4, v25, 0, 0, &_mh_execute_header, v2, 0, "Registering PersonaObserver with machService:%@ with asid:%d", v26, 18);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = sub_100001458(*(a1 + 56), *(a1 + 60), *(a1 + 64));
  if (sub_10004A188(*(a1 + 32), v9))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        LOWORD(v25[0]) = 0;
        LODWORD(v24) = 2;
        v13 = _os_log_send_and_compose_impl(v12, v26, 0, 0, &_mh_execute_header, v10, 0, "Successful Persona Observer registration of machServiceName", v25, v24);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v15 = qword_1000EB420;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v25[0] = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = *(a1 + 32);
        *v26 = 138412290;
        *&v26[4] = v18;
        LODWORD(v24) = 12;
        v19 = _os_log_send_and_compose_impl(v17, v25, 0, 0, &_mh_execute_header, v15, 0, "Failed to register Persona Observer:%@", v26, v24);
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v22 = *(*(a1 + 48) + 8);
    v10 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    (*(v23 + 16))(v23, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_10006C5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006C624(uint64_t a1)
{
  v2 = sub_100001458(*(a1 + 56), *(a1 + 60), *(a1 + 64));
  v3 = *(a1 + 32);
  v4 = *(a1 + 100);
  v5 = *(a1 + 84);
  v11[0] = *(a1 + 68);
  v11[1] = v5;
  v6 = sub_10004A908(v3, v11, v4, v2);
  if (!v6)
  {
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v6, *(*(*(a1 + 48) + 8) + 40));
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

id sub_10006C714()
{
  v0 = objc_opt_new();
  v1 = qword_1000EB418;
  qword_1000EB418 = v0;

  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.usermanagerd.xpc"];
  v3 = qword_1000EB410;
  qword_1000EB410 = v2;

  v4 = [qword_1000EB410 _xpcConnection];
  __xpc_connection_set_logging();

  [qword_1000EB410 setDelegate:qword_1000EB418];
  v5 = qword_1000EB410;

  return [v5 resume];
}

void sub_10006C7B8(id a1)
{
  qword_1000EB420 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_10006C800(id a1)
{
  qword_1000EB430 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

void sub_10006C848(id a1)
{
  qword_1000EB440 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

void sub_10006E124(id a1)
{
  qword_1000EB450 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

uint64_t sub_10006E16C()
{
  *(v0 - 244) = 0;
  result = 0;
  *(v0 - 176) = 1;
  *(v0 - 168) = 1;
  return result;
}

void sub_10006E19C()
{
  *(v0 - 168) = 0;
  *(v0 - 164) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 184) = 0;
  *(v0 - 212) = 0;
  *(v0 - 220) = 0;
  *(v0 - 188) = 0;
  *(v0 - 228) = 0;
  *(v0 - 160) = 0;
  *(v0 - 236) = 0;
  *(v0 - 244) = 0;
}

uint64_t sub_10006E1DC()
{
  result = 0;
  *(v0 - 176) = 1;
  return result;
}

void sub_10006E1FC()
{
  *(v0 - 236) = 0;
  *(v0 - 244) = 0;
  *(v0 - 172) = 0;
}

void sub_10006E26C()
{
  *(v1 - 184) = v0;
  *(v1 - 180) = v0;
  *(v1 - 188) = v0;
}

id sub_10006E27C()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void sub_10006E2D8()
{
  *(v0 - 220) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
}

id sub_10006E2F0(uint64_t a1, uint64_t a2)
{

  return sub_100098D4C(v2, a2, 0);
}

__CFDictionary *sub_10006E308(__CFDictionary *a1)
{
  strcpy(v6, "User");
  result = sub_100053A84(v6, 2, 0, 0);
  if (result)
  {
    v3 = result;
    Value = CFDictionaryGetValue(result, kUMUserSessionVolumeDeviceNodeKey);
    v5 = CFDictionaryGetValue(v3, kUMUserSessionVolumeUUIDKey);
    CFDictionarySetValue(a1, kUMUserSessionVolumeDeviceNodeKey, Value);
    CFDictionarySetValue(a1, kUMUserSessionVolumeUUIDKey, v5);
    CFRelease(v3);
    return 1;
  }

  return result;
}

uint64_t sub_10006E3C4(__CFDictionary *a1, uint64_t a2, const __CFString *a3, _DWORD *a4, char a5, int a6)
{
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  *__argv = 0u;
  v81 = 0u;
  BootDevice = APFSContainerGetBootDevice();
  if (BootDevice)
  {
    v13 = BootDevice;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v14 = qword_1000EB460;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        *__str = 67109120;
        *&__str[4] = v13;
        v17 = _os_log_send_and_compose_impl(v16, buffer, 0, 0, &_mh_execute_header, v14, 0, "APFSContainerGetBootDevice failed with %d", __str);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    if (a4)
    {
      result = 0;
      *a4 = v13;
      return result;
    }

    return 0;
  }

  strcpy(v78, "/dev/");
  CFStringGetCString(0, &v78[5], 59, 0x8000100u);
  CFRelease(0);
  v19 = a1;
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v20 = qword_1000EB460;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *__str = 0;
    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      *buffer = 138412290;
      *&buffer[4] = a3;
      v23 = _os_log_send_and_compose_impl(v22, __str, 0, 0, &_mh_execute_header, v20, 0, "Creating an APFS UserVolume for username:%@", buffer, 12);
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  CFStringGetCString(a3, buffer, 256, 0x8000100u);
  if (a5)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v26 = qword_1000EB460;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v88 = 0;
      v27 = sub_1000011A8(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        *__str = 136315138;
        *&__str[4] = buffer;
        v29 = _os_log_send_and_compose_impl(v28, v88, 0, 0, &_mh_execute_header, v26, 0, "Creating an APFS PersonaVolume with volumename:%s", __str);
        v30 = v29;
        if (v29)
        {
          sub_100002A8C(v29);
        }
      }

      else
      {
        v30 = 0;
      }

      free(v30);
    }

    __argv[0] = "/sbin/newfs_apfs";
    __argv[1] = "-R";
    *&v81 = "e";
    *(&v81 + 1) = "-v";
    *&v82 = buffer;
    v36 = 5;
    v37 = v19;
    v38 = &off_1000EB000;
  }

  else
  {
    snprintf(__str, 0x100uLL, "%zu", a2);
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v31 = qword_1000EB460;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v91 = 0;
      v32 = sub_1000011A8(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        *v88 = 136315394;
        *&v88[4] = buffer;
        v89 = 2080;
        v90 = __str;
        LODWORD(v76) = 22;
        v34 = _os_log_send_and_compose_impl(v33, &v91, 0, 0, &_mh_execute_header, v31, 0, "Creating an APFS UserVolume for username:%s with size:%s", v88, v76);
        v35 = v34;
        if (v34)
        {
          sub_100002A8C(v34);
        }
      }

      else
      {
        v35 = 0;
      }

      free(v35);
    }

    __argv[0] = "/sbin/newfs_apfs";
    if (a6)
    {
      __argv[1] = "-R";
      *&v81 = "u";
      v39 = 3;
    }

    else
    {
      v39 = 1;
    }

    v37 = v19;
    __argv[v39] = "-v";
    v36 = v39 + 2;
    __argv[v39 + 1] = buffer;
    v38 = &off_1000EB000;
    if (a2)
    {
      __argv[v36] = "-s";
      v36 = v39 | 4;
      __argv[v39 + 3] = __str;
    }
  }

  __argv[v36] = "-P";
  __argv[v36 + 1] = "-w";
  __argv[v36 + 2] = "-A";
  __argv[v36 + 3] = v78;
  __argv[v36 + 4] = 0;
  v40 = sub_100054C9C(__argv);
  if (v40)
  {
    v41 = v40;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v42 = v38[140];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *v88 = 0;
      v43 = sub_1000011A8(1);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
      }

      else
      {
        v44 = v43 & 0xFFFFFFFE;
      }

      if (v44)
      {
        LODWORD(v91) = 67109120;
        HIDWORD(v91) = v41;
        v45 = _os_log_send_and_compose_impl(v44, v88, 0, 0, &_mh_execute_header, v42, 0, "newfs_apfs failed with %d", &v91);
        v46 = v45;
        if (v45)
        {
          sub_100002A8C(v45);
        }
      }

      else
      {
        v46 = 0;
      }

      free(v46);
    }

    if (a4)
    {
      result = 0;
      *a4 = v41;
      return result;
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v47 = v38[140];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *v88 = 0;
    v48 = sub_1000011A8(1);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
    }

    else
    {
      v49 = v48 & 0xFFFFFFFE;
    }

    if (v49)
    {
      LOWORD(v91) = 0;
      LODWORD(v76) = 2;
      v50 = _os_log_send_and_compose_impl(v49, v88, 0, 0, &_mh_execute_header, v47, 0, "newfs_apfs Success", &v91, v76);
      v51 = v50;
      if (v50)
      {
        sub_100002A8C(v50);
      }
    }

    else
    {
      v51 = 0;
    }

    free(v51);
  }

  v52 = sub_100053A84(buffer, 0, 0, 0);
  if (!v52)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v61 = v38[140];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v91 = 0;
      v62 = sub_1000011A8(1);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v62;
      }

      else
      {
        v63 = v62 & 0xFFFFFFFE;
      }

      if (v63)
      {
        *v88 = 138412290;
        *&v88[4] = a3;
        LODWORD(v76) = 12;
        v64 = _os_log_send_and_compose_impl(v63, &v91, 0, 0, &_mh_execute_header, v61, 0, "Failed to obtain device node for the newly created volume for the User:%@", v88, v76);
        v65 = v64;
        if (v64)
        {
          sub_100002A8C(v64);
        }
      }

      else
      {
        v65 = 0;
      }

      free(v65);
    }

    return 0;
  }

  v53 = v52;
  Value = CFDictionaryGetValue(v52, kUMUserSessionVolumeDeviceNodeKey);
  v55 = CFDictionaryGetValue(v53, kUMUserSessionVolumeUUIDKey);
  CFDictionarySetValue(v37, kUMUserSessionVolumeDeviceNodeKey, Value);
  CFDictionarySetValue(v37, kUMUserSessionVolumeUUIDKey, v55);
  CFDictionarySetValue(v37, kUMUserSessionNeedsMountKey, kCFBooleanTrue);
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v56 = v38[140];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v91 = 0;
    v57 = sub_1000011A8(1);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
    }

    else
    {
      v58 = v57 & 0xFFFFFFFE;
    }

    if (v58)
    {
      *v88 = 138412546;
      *&v88[4] = Value;
      v89 = 2112;
      v90 = v55;
      LODWORD(v76) = 22;
      v59 = _os_log_send_and_compose_impl(v58, &v91, 0, 0, &_mh_execute_header, v56, 0, "Added Keys for disk:%@, volumeuuid:%@", v88, v76);
      v60 = v59;
      if (v59)
      {
        sub_100002A8C(v59);
      }
    }

    else
    {
      v60 = 0;
    }

    free(v60);
  }

  CFRelease(v53);
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v66 = v38[140];
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v91 = 0;
    v67 = sub_1000011A8(1);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v68 = v67;
    }

    else
    {
      v68 = v67 & 0xFFFFFFFE;
    }

    if (v68)
    {
      *v88 = 138412290;
      *&v88[4] = a3;
      LODWORD(v76) = 12;
      v69 = _os_log_send_and_compose_impl(v68, &v91, 0, 0, &_mh_execute_header, v66, 0, "Successful creation of volume with  with user name %@", v88, v76);
      v70 = v69;
      if (v69)
      {
        sub_100002A8C(v69);
      }
    }

    else
    {
      v70 = 0;
    }

    free(v70);
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v71 = v38[140];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    v91 = 0;
    v72 = sub_1000011A8(1);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v73 = v72;
    }

    else
    {
      v73 = v72 & 0xFFFFFFFE;
    }

    if (v73)
    {
      *v88 = 138412290;
      *&v88[4] = v37;
      LODWORD(v76) = 12;
      v74 = _os_log_send_and_compose_impl(v73, &v91, 0, 0, &_mh_execute_header, v71, 0, "Modified Session now is %@", v88, v76);
      v75 = v74;
      if (v74)
      {
        sub_100002A8C(v74);
      }
    }

    else
    {
      v75 = 0;
    }

    free(v75);
  }

  return 1;
}

uint64_t sub_10006EE90(const __CFDictionary *a1, _DWORD *a2)
{
  memset(v26, 0, sizeof(v26));
  sub_1000795D4(a1, kUMUserSessionVolumeDeviceNodeKey, v26, 256);
  v4 = sub_10006F1C8(a1, v26);
  if (v4)
  {
    if (a2)
    {
      v5 = v4;
      result = 0;
      *a2 = v5;
      return result;
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v7 = qword_1000EB460;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v25[0] = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      *v24 = 136315138;
      *&v24[4] = v26;
      v10 = _os_log_send_and_compose_impl(v9, v25, 0, 0, &_mh_execute_header, v7, 0, "Deleting APFS User Volume for the node %s", v24);
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v12 = APFSVolumeDelete();
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      *a2 = v12;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v14 = qword_1000EB460;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        LODWORD(v25[0]) = 67109120;
        HIDWORD(v25[0]) = v13;
        v17 = _os_log_send_and_compose_impl(v16, v24, 0, 0, &_mh_execute_header, v14, 0, "deleteAPFSUserVolume failed with %d", v25);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v19 = qword_1000EB460;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    v20 = sub_1000011A8(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      LOWORD(v25[0]) = 0;
      v22 = _os_log_send_and_compose_impl(v21, v24, 0, 0, &_mh_execute_header, v19, 0, "deleteAPFSUserVolume succeeded", v25, 2);
      v23 = v22;
      if (v22)
      {
        sub_100002A8C(v22);
      }
    }

    else
    {
      v23 = 0;
    }

    free(v23);
  }

  return 1;
}

uint64_t sub_10006F1C8(__CFDictionary *a1, char *a2)
{
  theString = 0;
  if (a2)
  {
    BootDevice = APFSContainerGetBootDevice();
    if (BootDevice)
    {
      v5 = BootDevice;
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v6 = qword_1000EB460;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 0;
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          *v25 = 67109120;
          *&v25[4] = v5;
          v9 = _os_log_send_and_compose_impl(v8, buffer, 0, 0, &_mh_execute_header, v6, 0, "APFSContainerGetBootDevice failed with %d", v25);
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      return v5;
    }

    CFStringGetCString(theString, buffer, 64, 0x8000100u);
    CFRelease(theString);
    if (strstr(a2, buffer))
    {
      return 0;
    }

    if (strrchr(a2, 115))
    {
      __strcat_chk();
      strlcpy(a2, buffer, 0x100uLL);
      v16 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
      CFDictionarySetValue(a1, kUMUserSessionVolumeDeviceNodeKey, v16);
      CFRelease(v16);
      return 0;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v18 = qword_1000EB460;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        *v25 = 136315394;
        *&v25[4] = a2;
        v26 = 2080;
        v27 = buffer;
        v21 = _os_log_send_and_compose_impl(v20, &v23, 0, 0, &_mh_execute_header, v18, 0, "Failed to update userdata volume device %s (%s)\n", v25, 22);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    return 19;
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F4C();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        *buffer = 136315138;
        *&buffer[4] = "updateAPFSDevWithCurrentBootContainer";
        v14 = _os_log_send_and_compose_impl(v13, v25, 0, 0, &_mh_execute_header, v11, 0, "%s: Invalid input parameters\n", buffer);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    return 22;
  }
}

uint64_t sub_10006F578(__CFDictionary *a1, const __CFString *a2, _DWORD *a3, int a4)
{
  memset(v129, 0, sizeof(v129));
  bzero(buffer, 0x400uLL);
  if (a2 && (v8 = CFGetTypeID(a2), v8 == CFStringGetTypeID()))
  {
    CFStringGetCString(a2, buffer, 1024, 0x8000100u);
  }

  else
  {
    sub_1000795D4(a1, kUMUserSessionHomeDirKey, buffer, 1024);
  }

  sub_1000795D4(a1, kUMUserSessionVolumeDeviceNodeKey, v129, 256);
  v9 = sub_10006F1C8(a1, v129);
  if (v9)
  {
    v10 = v9;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *&v119.st_dev = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LODWORD(__argv[0]) = 67109120;
        HIDWORD(__argv[0]) = v10;
        v14 = _os_log_send_and_compose_impl(v13, &v119, 0, 0, &_mh_execute_header, v11, 0, "updateAPFSDevWithCurrentBootContainer failed with error:%d", __argv);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v22 = 0;
    if (a3)
    {
      *a3 = v10;
    }

    return v22;
  }

  if (a4)
  {
    if (byte_1000EB602 == 1)
    {
      v16 = sub_10001B570();
    }

    else
    {
      v16 = 501;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v18 = qword_1000EB460;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      __argv[0] = 0;
      v23 = sub_1000011A8(1);
      v18 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v119.st_dev = 136315650;
        *&v119.st_mode = buffer;
        WORD2(v119.st_ino) = 2080;
        *(&v119.st_ino + 6) = v129;
        HIWORD(v119.st_gid) = 1024;
        v119.st_rdev = v16;
        LODWORD(v112) = 28;
        v25 = _os_log_send_and_compose_impl(v24, __argv, 0, 0, &_mh_execute_header, v18, 0, "Mounting APFS user mount at %s from %s for user:%d", &v119, v112, *v113);

        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {

        v25 = 0;
      }

      free(v25);
    }

    v17 = v16;
  }

  else
  {
    v16 = sub_1000023E8(a1, kUMUserSessionIDKey);
    v17 = sub_1000023E8(a1, kUMUserSessionGroupIDKey);
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v18 = qword_1000EB460;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *&v119.st_dev = 0;
      v19 = sub_1000011A8(1);
      v18 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LODWORD(__argv[0]) = 67109120;
        HIDWORD(__argv[0]) = v16;
        v21 = _os_log_send_and_compose_impl(v20, &v119, 0, 0, &_mh_execute_header, v18, 0, "Mounting APFS user mount for user %d", __argv);

        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {

        v21 = 0;
      }

      free(v21);
    }
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  *__argv = 0u;
  v121 = 0u;
  memset(&v119, 0, sizeof(v119));
  if (stat(buffer, &v119))
  {
    v26 = *__error();
    if (v26 != 2)
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v41 = qword_1000EB460;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v118[0] = 0;
        LODWORD(v42) = sub_1000011A8(1);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v42;
        }

        else
        {
          v42 = v42 & 0xFFFFFFFE;
        }

        if (v42)
        {
          v43 = v41;
          *v113 = 136315394;
          *&v113[4] = buffer;
          v114 = 2080;
          *v115 = strerror(v26);
          LODWORD(v112) = 22;
          v44 = _os_log_send_and_compose_impl(v42, v118, 0, 0, &_mh_execute_header, v43, 0, "Failed to stat file path %s, with error %s ", v113, v112);

          if (v44)
          {
            sub_100002A8C(v44);
          }
        }

        else
        {
          v44 = 0;
        }

        free(v44);
      }

      return 0;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v27 = qword_1000EB460;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v16;
      v29 = v17;
      v118[0] = 0;
      v30 = sub_1000011A8(1);
      v31 = v27;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v30;
      }

      else
      {
        v32 = v30 & 0xFFFFFFFE;
      }

      if (v32)
      {
        *v113 = 136315138;
        *&v113[4] = buffer;
        v33 = _os_log_send_and_compose_impl(v32, v118, 0, 0, &_mh_execute_header, v31, 0, "pathname %s does not exist, creating", v113);

        if (v33)
        {
          sub_100002A8C(v33);
        }
      }

      else
      {

        v33 = 0;
      }

      free(v33);
      v17 = v29;
      v16 = v28;
    }

    if (mkdir(buffer, 0x1C0u) < 0)
    {
      v45 = *__error();
      if (v45 != 17)
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v70 = qword_1000EB460;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v118[0] = 0;
          LODWORD(v71) = sub_1000011A8(1);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v71 = v71;
          }

          else
          {
            v71 = v71 & 0xFFFFFFFE;
          }

          if (v71)
          {
            v72 = v70;
            v73 = strerror(v45);
            *v113 = 136315394;
            *&v113[4] = buffer;
            v114 = 2080;
            *v115 = v73;
            LODWORD(v112) = 22;
            v74 = _os_log_send_and_compose_impl(v71, v118, 0, 0, &_mh_execute_header, v72, 0, "Failed to created file path %s, with error %s ", v113, v112);

            if (v74)
            {
              sub_100002A8C(v74);
            }
          }

          else
          {
            v74 = 0;
          }

          free(v74);
        }

        if (!a3)
        {
          return 0;
        }

        goto LABEL_246;
      }
    }

    if (chown(buffer, v16, v17))
    {
      v46 = *__error();
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v47 = qword_1000EB460;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v118[0] = 0;
        LODWORD(v48) = sub_1000011A8(1);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v48;
        }

        else
        {
          v48 = v48 & 0xFFFFFFFE;
        }

        if (v48)
        {
          v49 = v47;
          v50 = strerror(v46);
          *v113 = 136315906;
          *&v113[4] = buffer;
          v114 = 1024;
          *v115 = v16;
          *&v115[4] = 1024;
          *&v115[6] = v17;
          v116 = 2080;
          v117 = v50;
          v51 = _os_log_send_and_compose_impl(v48, v118, 0, 0, &_mh_execute_header, v49, 0, "Failed to chown path %s for uid=%d, gid=%d with error %s ", v113, 34);

          if (v51)
          {
            sub_100002A8C(v51);
          }
        }

        else
        {
          v51 = 0;
        }

        free(v51);
      }

      rmdir(buffer);
      if (!a3)
      {
        return 0;
      }

LABEL_246:
      v22 = 0;
      *a3 = 22;
      return v22;
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v34 = qword_1000EB460;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v16;
      v36 = v17;
      *v113 = 0;
      v37 = sub_1000011A8(1);
      v38 = v34;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v37;
      }

      else
      {
        v39 = v37 & 0xFFFFFFFE;
      }

      if (v39)
      {
        LODWORD(v118[0]) = 67109120;
        HIDWORD(v118[0]) = v35;
        v40 = _os_log_send_and_compose_impl(v39, v113, 0, 0, &_mh_execute_header, v38, 0, "User mount path exists already for user %d", v118);

        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {

        v40 = 0;
      }

      free(v40);
      v17 = v36;
      v16 = v35;
    }
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v52 = qword_1000EB460;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = v16;
    v54 = v17;
    *v113 = 0;
    v55 = sub_1000011A8(1);
    v56 = v52;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = v55;
    }

    else
    {
      v57 = v55 & 0xFFFFFFFE;
    }

    if (v57)
    {
      LOWORD(v118[0]) = 0;
      LODWORD(v112) = 2;
      v58 = _os_log_send_and_compose_impl(v57, v113, 0, 0, &_mh_execute_header, v56, 0, "Checking to see if already mounted", v118, v112);

      if (v58)
      {
        sub_100002A8C(v58);
      }
    }

    else
    {

      v58 = 0;
    }

    free(v58);
    v17 = v54;
    v16 = v53;
  }

  if (sub_100070858(a1, 0) != 1)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v64 = qword_1000EB460;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = v17;
      v118[0] = 0;
      v66 = sub_1000011A8(1);
      v67 = v64;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = v66;
      }

      else
      {
        v68 = v66 & 0xFFFFFFFE;
      }

      if (v68)
      {
        *v113 = 136315394;
        *&v113[4] = v129;
        v114 = 2080;
        *v115 = buffer;
        LODWORD(v112) = 22;
        v69 = _os_log_send_and_compose_impl(v68, v118, 0, 0, &_mh_execute_header, v67, 0, "Mounting the volume with Device:%s  mounted on %s", v113, v112);

        if (v69)
        {
          sub_100002A8C(v69);
        }
      }

      else
      {

        v69 = 0;
      }

      free(v69);
      v17 = v65;
    }

    __argv[0] = "/sbin/mount_apfs";
    if (a4)
    {
      v75 = 1;
    }

    else
    {
      __argv[1] = "-o";
      *&v121 = "nosuid";
      *(&v121 + 1) = "-o";
      *&v122 = "nodev";
      v75 = 5;
    }

    __argv[v75] = v129;
    __argv[v75 + 1] = buffer;
    __argv[v75 | 2u] = 0;
    v76 = sub_100054C9C(__argv);
    if (v76)
    {
      v77 = v76;
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v78 = qword_1000EB460;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *v113 = 0;
        v79 = sub_1000011A8(1);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v80 = v79;
        }

        else
        {
          v80 = v79 & 0xFFFFFFFE;
        }

        if (v80)
        {
          LODWORD(v118[0]) = 67109120;
          HIDWORD(v118[0]) = v77;
          v81 = _os_log_send_and_compose_impl(v80, v113, 0, 0, &_mh_execute_header, v78, 0, "mountfs_apfs failed with %d", v118);
          v82 = v81;
          if (v81)
          {
            sub_100002A8C(v81);
          }
        }

        else
        {
          v82 = 0;
        }

        free(v82);
      }

      v22 = 0;
      if (a3)
      {
        *a3 = v77;
      }

      if (!a2)
      {
        goto LABEL_242;
      }

      goto LABEL_174;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v83 = qword_1000EB460;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v118[0] = 0;
      v84 = sub_1000011A8(1);
      v85 = v83;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = v84;
      }

      else
      {
        v86 = v84 & 0xFFFFFFFE;
      }

      if (v86)
      {
        *v113 = 136315394;
        *&v113[4] = v129;
        v114 = 2080;
        *v115 = buffer;
        LODWORD(v112) = 22;
        v87 = _os_log_send_and_compose_impl(v86, v118, 0, 0, &_mh_execute_header, v85, 0, "mountfs_apfs: Device:%s  mounted on %s", v113, v112);

        if (v87)
        {
          sub_100002A8C(v87);
        }
      }

      else
      {

        v87 = 0;
      }

      free(v87);
    }

    if ((a4 & 1) == 0)
    {
      if (CFDictionaryContainsKey(a1, kUMUserSessionVolumeMountedKey))
      {
        CFDictionaryReplaceValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanTrue);
      }

      else
      {
        CFDictionarySetValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanTrue);
      }
    }

    if (chown(buffer, v16, v17))
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v93 = qword_1000EB460;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v118[0] = 0;
        v94 = sub_1000011A8(1);
        v93 = v93;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v95 = v94;
        }

        else
        {
          v95 = v94 & 0xFFFFFFFE;
        }

        if (v95)
        {
          LODWORD(v112) = 18;
          v96 = _os_log_send_and_compose_impl(v95, v118, 0, 0, &_mh_execute_header, v93, 0, "Failed to set uid/gid:%d to path:%s", v113, v112);
          goto LABEL_209;
        }

        goto LABEL_211;
      }
    }

    else
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v93 = qword_1000EB460;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *v113 = 0;
        v97 = sub_1000011A8(1);
        v93 = v93;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v98 = v97;
        }

        else
        {
          v98 = v97 & 0xFFFFFFFE;
        }

        if (v98)
        {
          LOWORD(v118[0]) = 0;
          v96 = _os_log_send_and_compose_impl(v98, v113, 0, 0, &_mh_execute_header, v93, 0, "Set approp ownership on mounted path");
LABEL_209:
          v99 = v96;

          if (v99)
          {
            sub_100002A8C(v99);
          }

          goto LABEL_212;
        }

LABEL_211:

        v99 = 0;
LABEL_212:
        free(v99);
      }
    }

    if (a2)
    {
      v100 = 1;
    }

    else
    {
      v100 = a4;
    }

    if (v100)
    {
      v101 = 457;
    }

    else
    {
      v101 = 448;
    }

    if (chmod(buffer, v101))
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v102 = qword_1000EB460;
      if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_240;
      }

      v118[0] = 0;
      v103 = sub_1000011A8(1);
      v104 = v102;
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = v103;
      }

      else
      {
        v105 = v103 & 0xFFFFFFFE;
      }

      if (v105)
      {
        v106 = _os_log_send_and_compose_impl(v105, v118, 0, 0, &_mh_execute_header, v104, 0, "Failed to set 0700 on mounted path:%s", v113);
        goto LABEL_236;
      }
    }

    else
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v102 = qword_1000EB460;
      if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_240;
      }

      *v113 = 0;
      v107 = sub_1000011A8(1);
      v104 = v102;
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v108 = v107;
      }

      else
      {
        v108 = v107 & 0xFFFFFFFE;
      }

      if (v108)
      {
        LOWORD(v118[0]) = 0;
        v106 = _os_log_send_and_compose_impl(v108, v113, 0, 0, &_mh_execute_header, v104, 0, "Set approp permission on mounted path");
LABEL_236:
        v109 = v106;

        if (v109)
        {
          sub_100002A8C(v109);
        }

        goto LABEL_239;
      }
    }

    v109 = 0;
LABEL_239:
    free(v109);
LABEL_240:

    goto LABEL_241;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v59 = qword_1000EB460;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *v113 = 0;
    v60 = sub_1000011A8(1);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v61 = v60;
    }

    else
    {
      v61 = v60 & 0xFFFFFFFE;
    }

    if (v61)
    {
      LOWORD(v118[0]) = 0;
      LODWORD(v112) = 2;
      v62 = _os_log_send_and_compose_impl(v61, v113, 0, 0, &_mh_execute_header, v59, 0, "Volume already mounted, returning success..", v118, v112);
      v63 = v62;
      if (v62)
      {
        sub_100002A8C(v62);
      }
    }

    else
    {
      v63 = 0;
    }

    free(v63);
  }

  if ((a4 & 1) == 0)
  {
    CFDictionarySetValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanTrue);
  }

  if (a3)
  {
    *a3 = 0;
  }

LABEL_241:
  v22 = 1;
  if (!a2)
  {
LABEL_242:
    v110 = sub_100079590(a1, kUMUserSessionHomeDirKey);
    sub_100070A64(v110, v16, v17);
    return v22;
  }

LABEL_174:
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v88 = qword_1000EB460;
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    *v113 = 0;
    v89 = sub_1000011A8(1);
    v90 = v88;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = v89;
    }

    else
    {
      v91 = v89 & 0xFFFFFFFE;
    }

    if (v91)
    {
      LOWORD(v118[0]) = 0;
      LODWORD(v112) = 2;
      v92 = _os_log_send_and_compose_impl(v91, v113, 0, 0, &_mh_execute_header, v90, 0, "Skipping tmp setup...", v118, v112);

      if (v92)
      {
        sub_100002A8C(v92);
      }
    }

    else
    {

      v92 = 0;
    }

    free(v92);
  }

  return v22;
}

uint64_t sub_100070858(const __CFDictionary *a1, void *a2)
{
  v16 = 0;
  result = CFDictionaryContainsKey(a1, kUMUserSessionVolumeDeviceNodeKey);
  if (result)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *__s2 = 0u;
    v22 = 0u;
    sub_1000795D4(a1, kUMUserSessionVolumeDeviceNodeKey, __s2, 256);
    if (sub_10006F1C8(a1, __s2))
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v5 = qword_1000EB460;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v6 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
        }

        else
        {
          v7 = v6 & 0xFFFFFFFE;
        }

        if (v7)
        {
          v17 = 136315394;
          v18 = "checkAPFSVolumeMounted";
          v19 = 2080;
          v20 = __s2;
          v8 = _os_log_send_and_compose_impl(v7, &v15, 0, 0, &_mh_execute_header, v5, 0, "%s: Failed to update userdata volume device path (%s)", &v17, 22);
          v9 = v8;
          if (v8)
          {
            sub_100002A8C(v8);
          }
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }
    }

    else
    {
      v10 = getmntinfo(&v16, 2);
      if (!v10)
      {
        return 255;
      }

      v11 = v10 + 1;
      f_mntfromname = v16[v10 - 1].f_mntfromname;
      while (--v11 >= 1)
      {
        v13 = f_mntfromname - 2168;
        v14 = strstr(f_mntfromname, __s2);
        f_mntfromname = v13;
        if (v14)
        {
          if (a2)
          {
            *a2 = *(v13 + 138);
          }

          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100070A64(const __CFString *a1, uid_t a2, gid_t a3)
{
  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  v6 = qword_1000EB460;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v12 = 0;
      v9 = _os_log_send_and_compose_impl(v8, buffer, 0, 0, &_mh_execute_header, v6, 0, "Ensuring tmp path set and cleared", &v12, 2);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  bzero(buffer, 0x400uLL);
  result = CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  if (result)
  {
    sub_100070BD4(buffer);
    sub_10001AC18(buffer, a2, a3);
    return 1;
  }

  return result;
}

uint64_t sub_100070BD4(uint64_t a1)
{
  bzero(v11, 0x400uLL);
  __strlcpy_chk();
  __strlcat_chk();
  if (sub_10002D62C(v11) == 1)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v1 = qword_1000EB460;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v2 = sub_1000011A8(1);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v2;
      }

      else
      {
        v3 = v2 & 0xFFFFFFFE;
      }

      if (v3)
      {
        LOWORD(v9[0]) = 0;
        v4 = _os_log_send_and_compose_impl(v3, &v10, 0, 0, &_mh_execute_header, v1, 0, "CLEARED TMP path for the Users", v9, 2, v9[0]);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v1 = qword_1000EB460;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        LOWORD(v9[0]) = 0;
        v4 = _os_log_send_and_compose_impl(v6, &v10, 0, 0, &_mh_execute_header, v1, 0, "FAILED to CLEAR TMP path for the Users", v9, 2, v9[0]);
LABEL_18:
        v7 = v4;
        if (v4)
        {
          sub_100002A8C(v4);
        }

        goto LABEL_21;
      }

LABEL_20:
      v7 = 0;
LABEL_21:
      free(v7);
    }
  }

  return 1;
}

uint64_t sub_100070DBC(const __CFDictionary *a1, const __CFString *a2, _DWORD *a3, int a4)
{
  v8 = sub_1000023E8(a1, kUMUserSessionIDKey);
  bzero(buffer, 0x400uLL);
  if (a2 && (v9 = CFGetTypeID(a2), v9 == CFStringGetTypeID()))
  {
    CFStringGetCString(a2, buffer, 1024, 0x8000100u);
  }

  else
  {
    sub_1000795D4(a1, kUMUserSessionHomeDirKey, buffer, 1024);
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v10 = qword_1000EB460;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      *v29 = 67109378;
      *&v29[4] = v8;
      *&v29[8] = 2080;
      *&v29[10] = buffer;
      LODWORD(v28) = 18;
      v13 = _os_log_send_and_compose_impl(v12, &v30, 0, 0, &_mh_execute_header, v10, 0, "Unmounting APFS volume with user %d: path %s", v29, v28);
      v14 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }

  v15 = sub_100054EFC(buffer, a4);
  if (v15)
  {
    v16 = v15;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v17 = qword_1000EB460;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        LODWORD(v30) = 67109120;
        HIDWORD(v30) = v16;
        v20 = _os_log_send_and_compose_impl(v19, v29, 0, 0, &_mh_execute_header, v17, 0, "unMountAPFSUserVolume failed with %d", &v30);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    result = 0;
    if (a3)
    {
      *a3 = v16;
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v22 = qword_1000EB460;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      v23 = sub_1000011A8(1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        *v29 = 136315138;
        *&v29[4] = buffer;
        v25 = _os_log_send_and_compose_impl(v24, &v30, 0, 0, &_mh_execute_header, v22, 0, "unMountAPFSUserVolume success: user volume %s unmounted", v29);
        v26 = v25;
        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {
        v26 = 0;
      }

      free(v26);
    }

    if (CFDictionaryContainsKey(a1, kUMUserSessionVolumeMountedKey))
    {
      CFDictionaryReplaceValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanFalse);
    }

    else
    {
      CFDictionarySetValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanFalse);
    }

    return 1;
  }

  return result;
}

uint64_t sub_100071178()
{
  if (sub_10005489C(v20, 256))
  {
    v18 = 0;
    VEKState = APFSVolumeGetVEKState();
    if (VEKState == 22)
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v2 = qword_1000EB460;
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v17 = 0;
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        LOWORD(v19[0]) = 0;
        v5 = _os_log_send_and_compose_impl(v8, &v17, 0, 0, &_mh_execute_header, v2, 0, "Unencrypted volume per APFSVolumeGetVEKState, no user binding needed", v19, 2);
LABEL_22:
        v9 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }

        goto LABEL_43;
      }

LABEL_42:
      v9 = 0;
LABEL_43:
      free(v9);
LABEL_44:
      v6 = 0;
LABEL_48:

      return v6;
    }

    v1 = VEKState;
    if (VEKState)
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v2 = qword_1000EB460;
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }

      v17 = 0;
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v19[0] = 67109120;
        v19[1] = v1;
        v12 = _os_log_send_and_compose_impl(v11, &v17, 0, 0, &_mh_execute_header, v2, 0, "APFSVolumeGetVEKState returned error:%d, try user binding..", v19);
        goto LABEL_40;
      }
    }

    else
    {
      if (HIBYTE(v18) == 1)
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v2 = qword_1000EB460;
        if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        v17 = 0;
        v3 = sub_1000011A8(1);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          v4 = v3;
        }

        else
        {
          v4 = v3 & 0xFFFFFFFE;
        }

        if (v4)
        {
          LOWORD(v19[0]) = 0;
          v5 = _os_log_send_and_compose_impl(v4, &v17, 0, 0, &_mh_execute_header, v2, 0, "Volume already userbound, no user binding needed", v19, 2);
          goto LABEL_22;
        }

        goto LABEL_42;
      }

      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v2 = qword_1000EB460;
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
LABEL_47:
        v6 = 1;
        goto LABEL_48;
      }

      v17 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        LOWORD(v19[0]) = 0;
        v12 = _os_log_send_and_compose_impl(v14, &v17, 0, 0, &_mh_execute_header, v2, 0, "Volume is not user bound, needs binding");
LABEL_40:
        v15 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }

        goto LABEL_46;
      }
    }

    v15 = 0;
LABEL_46:
    free(v15);
    goto LABEL_47;
  }

  return 0;
}

uint64_t sub_1000714B8(const __CFString *a1, uint64_t a2, int a3, int *a4)
{
  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  memset(uu, 0, sizeof(uu));
  v7 = qword_1000EB460;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      LOWORD(v57[0]) = 0;
      v10 = _os_log_send_and_compose_impl(v9, buffer, 0, 0, &_mh_execute_header, v7, 0, "binding System Data Volume to PrimaryIdentity", v57, 2);
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  *buffer = 0u;
  v60 = 0u;
  if (!CFStringGetCString(a1, buffer, 256, 0x8000100u))
  {
    if (a4)
    {
      *a4 = 22;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v17 = qword_1000EB460;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_110;
    }

    *&v57[0] = 0;
    v18 = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (!v19)
    {
      goto LABEL_108;
    }

    *v56 = 0;
    LODWORD(v54) = 2;
    v20 = _os_log_send_and_compose_impl(v19, v57, 0, 0, &_mh_execute_header, v17, 0, "Failed to retrieve Cstring from user uuidstring", v56, v54, v55[0]);
LABEL_80:
    v39 = v20;
    if (!v20)
    {
LABEL_109:
      free(v39);
LABEL_110:

      return 0;
    }

LABEL_81:
    sub_100002A8C(v39);
    goto LABEL_109;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v12 = qword_1000EB460;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 0;
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      LODWORD(v57[0]) = 136315138;
      *(v57 + 4) = buffer;
      v15 = _os_log_send_and_compose_impl(v14, v56, 0, 0, &_mh_execute_header, v12, 0, "primaryUUIDString is %s", v57);
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  if (uuid_parse(buffer, uu))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v21 = qword_1000EB460;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *&v57[0] = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        *v56 = 0;
        LODWORD(v54) = 2;
        v24 = _os_log_send_and_compose_impl(v23, v57, 0, 0, &_mh_execute_header, v21, 0, "failed to parse unique string to uuid_t", v56, v54);
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    if (a4)
    {
      result = 0;
      *a4 = 22;
      return result;
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v26 = qword_1000EB460;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *&v57[0] = 0;
    v27 = sub_1000011A8(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFE;
    }

    if (v28)
    {
      *v56 = 0;
      LODWORD(v54) = 2;
      v29 = _os_log_send_and_compose_impl(v28, v57, 0, 0, &_mh_execute_header, v26, 0, "uuid parse successful, discovering disknode", v56, v54);
      v30 = v29;
      if (v29)
      {
        sub_100002A8C(v29);
      }
    }

    else
    {
      v30 = 0;
    }

    free(v30);
  }

  memset(v57, 0, sizeof(v57));
  if (!sub_10005489C(v57, 256))
  {
    if (a4)
    {
      *a4 = 2;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v17 = qword_1000EB460;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_110;
    }

    *v56 = 0;
    v37 = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 & 0xFFFFFFFE;
    }

    if (!v38)
    {
      goto LABEL_108;
    }

    LOWORD(v55[0]) = 0;
    LODWORD(v54) = 2;
    v20 = _os_log_send_and_compose_impl(v38, v56, 0, 0, &_mh_execute_header, v17, 0, "FAILED TO FIND DISKNODE", v55, v54, v55[0]);
    goto LABEL_80;
  }

  if (a3)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v32 = qword_1000EB460;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v55[0] = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        *v56 = 136315138;
        *&v56[4] = v57;
        v35 = _os_log_send_and_compose_impl(v34, v55, 0, 0, &_mh_execute_header, v32, 0, "SDV disknode:%s, setting APFS UserProtections, passing cached_kek option", v56);
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v32 = qword_1000EB460;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v55[0] = 0;
      v40 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFE;
      }

      if (v41)
      {
        *v56 = 136315138;
        *&v56[4] = v57;
        v42 = _os_log_send_and_compose_impl(v41, v55, 0, 0, &_mh_execute_header, v32, 0, "SDV disknode:%s, setting APFS UserProtections", v56);
        v43 = v42;
        if (v42)
        {
          sub_100002A8C(v42);
        }
      }

      else
      {
        v43 = 0;
      }

      free(v43);
    }
  }

  v44 = APFSVolumeEnableUserProtectionWithOptions();
  if (v44)
  {
    v45 = v44;
    if (a4)
    {
      *a4 = v44;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v17 = qword_1000EB460;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_110;
    }

    v55[0] = 0;
    LODWORD(v46) = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v46;
    }

    else
    {
      v46 = v46 & 0xFFFFFFFE;
    }

    if (v46)
    {
      v47 = v17;
      v48 = strerror(v45);
      *v56 = 136315138;
      *&v56[4] = v48;
      v39 = _os_log_send_and_compose_impl(v46, v55, 0, 0, &_mh_execute_header, v47, 0, "APFSVolumeEnableUserProtectionWithOptions failed with error:%s", v56);

      if (!v39)
      {
        goto LABEL_109;
      }

      goto LABEL_81;
    }

LABEL_108:
    v39 = 0;
    goto LABEL_109;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v49 = qword_1000EB460;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 0;
    v50 = sub_1000011A8(1);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v50;
    }

    else
    {
      v51 = v50 & 0xFFFFFFFE;
    }

    if (v51)
    {
      LOWORD(v55[0]) = 0;
      LODWORD(v54) = 2;
      v52 = _os_log_send_and_compose_impl(v51, v56, 0, 0, &_mh_execute_header, v49, 0, "System Data Volume, bound to AKS with primary", v55, v54);
      v53 = v52;
      if (v52)
      {
        sub_100002A8C(v52);
      }
    }

    else
    {
      v53 = 0;
    }

    free(v53);
  }

  return 1;
}

uint64_t sub_100071D58(const char *a1, uint64_t a2, char *a3, int *a4)
{
  v6 = a2;
  v44 = 0;
  v43 = 1;
  if (sub_100053A00(a1, v48, 256, a2, &v43))
  {
    if (v43 == 1)
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v8 = qword_1000EB460;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 0;
        v9 = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          *v45 = 136315394;
          *&v45[4] = a1;
          v46 = 2080;
          v47 = v48;
          v11 = _os_log_send_and_compose_impl(v10, &v42, 0, 0, &_mh_execute_header, v8, 0, "checking Volume %s with disknode:%s Needs Migration..", v45, 22);
          v12 = v11;
          if (v11)
          {
            sub_100002A8C(v11);
          }
        }

        else
        {
          v12 = 0;
        }

        free(v12);
      }

      v24 = APFSVolumeNeedsCryptoMigration();
      if (v24)
      {
        v25 = v24;
        if (a4)
        {
          *a4 = v24;
        }

        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v18 = qword_1000EB460;
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_73;
        }

        v42 = 0;
        LODWORD(v26) = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v26;
        }

        else
        {
          v26 = v26 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v27 = v18;
          v28 = strerror(v25);
          *v45 = 136315138;
          *&v45[4] = v28;
          v22 = _os_log_send_and_compose_impl(v26, &v42, 0, 0, &_mh_execute_header, v27, 0, "APFSVolumeNeedsCryptoMigration failed with error:%s", v45);

          if (!v22)
          {
LABEL_72:
            free(v22);
            goto LABEL_73;
          }

LABEL_50:
          sub_100002A8C(v22);
          goto LABEL_72;
        }

LABEL_71:
        v22 = 0;
        goto LABEL_72;
      }

      if (v44 == 1)
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v18 = qword_1000EB460;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 0;
          v29 = sub_1000011A8(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
          }

          else
          {
            v30 = v29 & 0xFFFFFFFE;
          }

          if (v30)
          {
            LOWORD(v42) = 0;
            LODWORD(v41) = 2;
            v31 = _os_log_send_and_compose_impl(v30, v45, 0, 0, &_mh_execute_header, v18, 0, "System Data Volume needs Migration", &v42, v41);
            v32 = v31;
            if (v31)
            {
              sub_100002A8C(v31);
            }
          }

          else
          {
            v32 = 0;
          }

          free(v32);
        }

        v23 = 1;
        goto LABEL_74;
      }

      if (a4)
      {
        *a4 = 0;
      }

      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v18 = qword_1000EB460;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_73:
        v23 = 0;
LABEL_74:

        if (a3)
        {
          *a3 = v43;
        }

        return v23;
      }

      v42 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (!v34)
      {
        goto LABEL_71;
      }

      *v45 = 136315138;
      *&v45[4] = a1;
      v21 = _os_log_send_and_compose_impl(v34, &v42, 0, 0, &_mh_execute_header, v18, 0, "%s Volume does not need Migration", v45);
    }

    else
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v18 = qword_1000EB460;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *v45 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (!v20)
      {
        goto LABEL_71;
      }

      v21 = _os_log_send_and_compose_impl(v20, v45, 0, 0, &_mh_execute_header, v18, 0, "UnEncrypted Disk, does not need migration");
    }

    v22 = v21;
    if (!v21)
    {
      goto LABEL_72;
    }

    goto LABEL_50;
  }

  if (a4)
  {
    *a4 = 2;
  }

  if (v6 != 2)
  {
    if (qword_1000EB468 != -1)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v36 = qword_1000EB460;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        v37 = sub_1000011A8(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
        }

        else
        {
          v38 = v37 & 0xFFFFFFFE;
        }

        if (v38)
        {
          LOWORD(v42) = 0;
          LODWORD(v41) = 2;
          v40 = _os_log_send_and_compose_impl(v38, v45, 0, 0, &_mh_execute_header, v36, 0, "FAILED TO FIND DISKNODE", &v42, v41);
          v39 = v40;
          if (v40)
          {
            sub_100002A8C(v40);
          }
        }

        else
        {
          v39 = 0;
        }

        free(v39);
      }

      sub_100018028("FAILED TO FIND DISKNODE");
LABEL_91:
      sub_100097F24();
    }
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v13 = qword_1000EB460;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v45 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      LOWORD(v42) = 0;
      v16 = _os_log_send_and_compose_impl(v15, v45, 0, 0, &_mh_execute_header, v13, 0, "FAILED TO FIND DISKNODE for USER VOLUME, may be shared iPad, skipping..", &v42, 2);
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  return 0;
}

uint64_t sub_100072384(uint64_t a1, _DWORD *a2)
{
  v4 = APFSVolumeConvertToUserCrypto();
  if (v4)
  {
    v5 = v4;
    if (qword_1000EB468 != -1)
    {
      sub_100097F4C();
    }

    v6 = qword_1000EB460;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v18 = 136315394;
        v19 = a1;
        v20 = 1024;
        v21 = v5;
        v9 = _os_log_send_and_compose_impl(v8, &v17, 0, 0, &_mh_execute_header, v6, 0, "APFS Guest volume migration for disk:%s FAILED with error  %d", &v18, 18);
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    result = 0;
    if (a2)
    {
      *a2 = v5;
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F4C();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v18 = 136315138;
        v19 = a1;
        v14 = _os_log_send_and_compose_impl(v13, &v17, 0, 0, &_mh_execute_header, v11, 0, "APFS Guest volume migration for disk:%s Succeeded", &v18);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10007262C(int *a1)
{
  if (!sub_10005489C(v24, 256))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v7 = qword_1000EB460;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *v23 = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      LOWORD(v22[0]) = 0;
      v10 = _os_log_send_and_compose_impl(v9, v23, 0, 0, &_mh_execute_header, v7, 0, "FAILED TO FIND DISKNODE", v22, 2);
      if (!v10)
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }

LABEL_43:
    v10 = 0;
    goto LABEL_44;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v2 = qword_1000EB460;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      *v23 = 136315138;
      *&v23[4] = v24;
      v5 = _os_log_send_and_compose_impl(v4, v22, 0, 0, &_mh_execute_header, v2, 0, "Transcribing SDV with disknode:%s", v23);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v11 = APFSVolumeTranscribePFK();
  if (v11)
  {
    v12 = v11;
    if (a1)
    {
      *a1 = v11;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v7 = qword_1000EB460;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    v22[0] = 0;
    LODWORD(v13) = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 = v13 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v14 = v7;
      v15 = strerror(v12);
      *v23 = 136315138;
      *&v23[4] = v15;
      v10 = _os_log_send_and_compose_impl(v13, v22, 0, 0, &_mh_execute_header, v14, 0, "APFSVolumeTranscribePFK failed with error:%s", v23);

      if (!v10)
      {
LABEL_44:
        free(v10);
LABEL_45:
        v20 = 0;
        goto LABEL_46;
      }

LABEL_33:
      sub_100002A8C(v10);
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v7 = qword_1000EB460;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 0;
    v16 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      *v23 = 136315138;
      *&v23[4] = v24;
      v18 = _os_log_send_and_compose_impl(v17, v22, 0, 0, &_mh_execute_header, v7, 0, "Successful Transcribe of System Data Volume:%s", v23);
      v19 = v18;
      if (v18)
      {
        sub_100002A8C(v18);
      }
    }

    else
    {
      v19 = 0;
    }

    free(v19);
  }

  v20 = 1;
LABEL_46:

  return v20;
}

uint64_t sub_1000729D4(int a1, int *a2)
{
  if (!sub_100054A9C(v64, 256))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v63 = 0x204000100;
        v14 = _os_log_send_and_compose_impl(v13, v60, 0, 0, &_mh_execute_header, v11, 0, "Failed to find primary User Volume Disk Node returning error:%d", &v63);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    if (!a2)
    {
      return 0;
    }

    result = 0;
    v26 = 2;
    goto LABEL_44;
  }

  if (!a1)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v5 = qword_1000EB460;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v63) = 0;
        v18 = _os_log_send_and_compose_impl(v17, v60, 0, 0, &_mh_execute_header, v5, 0, "Skipping VolumeMap", &v63, 2);
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    goto LABEL_75;
  }

  v4 = [NSString stringWithUTF8String:v64];
  if (!v4)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v20 = qword_1000EB460;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        LOWORD(v63) = 0;
        v23 = _os_log_send_and_compose_impl(v22, v60, 0, 0, &_mh_execute_header, v20, 0, "FAILED TO allocate CFRef for disk node of the Primary, bailing with ENOMEM", &v63, 2);
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    if (!a2)
    {
      return 0;
    }

    result = 0;
    v26 = 12;
LABEL_44:
    *a2 = v26;
    return result;
  }

  v5 = v4;
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v6 = qword_1000EB460;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v63 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      *v60 = 138412546;
      *&v60[4] = v5;
      v61 = 1024;
      v62 = 501;
      v9 = _os_log_send_and_compose_impl(v8, &v63, 0, 0, &_mh_execute_header, v6, 0, "Calling AKSVolumeMap with disk:%@, uid:%d", v60, 18);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v27 = sub_100089A80(qword_1000EB608);
  v59 = 0;
  v28 = [v27 mapVolume:v5 toSession:501 withPersona:0 error:&v59];
  v29 = v59;

  if (!v28)
  {
    v35 = [v29 code];
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v36 = qword_1000EB460;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v63 = 0;
      LODWORD(v37) = sub_1000011A8(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v37;
      }

      else
      {
        v37 = v37 & 0xFFFFFFFE;
      }

      if (v37)
      {
        v38 = v36;
        v39 = [v29 code];
        *v60 = 134217984;
        *&v60[4] = v39;
        v40 = _os_log_send_and_compose_impl(v37, &v63, 0, 0, &_mh_execute_header, v38, 0, "AKS VolumeMap failed with %ld, returning..", v60);

        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v40 = 0;
      }

      free(v40);
    }

    if (a2)
    {
      *a2 = v35;
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v30 = qword_1000EB460;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v63 = 0;
    v31 = sub_1000011A8(1);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (v32)
    {
      *v60 = 138412546;
      *&v60[4] = v5;
      v61 = 1024;
      v62 = 501;
      LODWORD(v58) = 18;
      v33 = _os_log_send_and_compose_impl(v32, &v63, 0, 0, &_mh_execute_header, v30, 0, "AKS VolumeMapPath Success for disk:%@, uid:%d", v60, v58);
      v34 = v33;
      if (v33)
      {
        sub_100002A8C(v33);
      }
    }

    else
    {
      v34 = 0;
    }

    free(v34);
  }

LABEL_75:
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v41 = qword_1000EB460;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v63 = 0;
    v42 = sub_1000011A8(1);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
    }

    else
    {
      v43 = v42 & 0xFFFFFFFE;
    }

    if (v43)
    {
      *v60 = 136315138;
      *&v60[4] = v64;
      v44 = _os_log_send_and_compose_impl(v43, &v63, 0, 0, &_mh_execute_header, v41, 0, "Calling APFSVolumeMigrateMediaKey for diskNode:%s", v60);
      v45 = v44;
      if (v44)
      {
        sub_100002A8C(v44);
      }
    }

    else
    {
      v45 = 0;
    }

    free(v45);
  }

  v46 = APFSVolumeMigrateMediaKey();
  if (v46)
  {
    v47 = v46;
    if (a2)
    {
      *a2 = v46;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v48 = qword_1000EB460;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 0;
      v49 = sub_1000011A8(1);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v50 = v49;
      }

      else
      {
        v50 = v49 & 0xFFFFFFFE;
      }

      if (v50)
      {
        LODWORD(v63) = 67109120;
        HIDWORD(v63) = v47;
        v51 = _os_log_send_and_compose_impl(v50, v60, 0, 0, &_mh_execute_header, v48, 0, "Failed to migrate Media Key with error:%d", &v63);
        v52 = v51;
        if (v51)
        {
          sub_100002A8C(v51);
        }
      }

      else
      {
        v52 = 0;
      }

      free(v52);
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v53 = qword_1000EB460;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *v60 = 0;
    v54 = sub_1000011A8(1);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v54;
    }

    else
    {
      v55 = v54 & 0xFFFFFFFE;
    }

    if (v55)
    {
      LOWORD(v63) = 0;
      LODWORD(v58) = 2;
      v56 = _os_log_send_and_compose_impl(v55, v60, 0, 0, &_mh_execute_header, v53, 0, "Migrating Metadata of UserVolume to ClassC is Complete", &v63, v58);
      v57 = v56;
      if (v56)
      {
        sub_100002A8C(v56);
      }
    }

    else
    {
      v57 = 0;
    }

    free(v57);
  }

  return 1;
}

uint64_t sub_10007324C(const char *a1, int *a2)
{
  HIDWORD(v22) = 2;
  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  v4 = qword_1000EB460;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 0;
    v5 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      *v23 = 136315138;
      *&v23[4] = a1;
      v7 = _os_log_send_and_compose_impl(v6, &v24, 0, 0, &_mh_execute_header, v4, 0, "Setting last booted user  for volume:%s", v23);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = fsctl(a1, 0x80014A22uLL, &v22 + 4, 0);
  if (v9)
  {
    v10 = v9;
    if (a2)
    {
      *a2 = v9;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LODWORD(v24) = 67109120;
        HIDWORD(v24) = v10;
        v14 = _os_log_send_and_compose_impl(v13, v23, 0, 0, &_mh_execute_header, v11, 0, "Failed to set last user in APFS-AKS with error:%d", &v24);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v20 = 0;
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v24) = 0;
        LODWORD(v22) = 2;
        v18 = _os_log_send_and_compose_impl(v17, v23, 0, 0, &_mh_execute_header, v11, 0, "Setting last user in APFS-AKS Complete", &v24, v22);
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    v20 = 1;
  }

  return v20;
}

uint64_t sub_100073538()
{
  if (qword_1000EB5A0)
  {
    v0 = 0;
  }

  else
  {
    v0 = byte_1000EA3D8 == 0;
  }

  if (v0)
  {
    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  v1 = qword_1000EB460;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      LOWORD(v22) = 0;
      v4 = _os_log_send_and_compose_impl(v3, &v21, 0, 0, &_mh_execute_header, v1, 0, "UNMOUNT BACKGROUND APFS VOLUMES, if mounted", &v22, 2);
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }

  if (CFArrayGetCount(qword_1000EB5A0) >= 1)
  {
    for (i = 0; CFArrayGetCount(qword_1000EB5A0) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, i);
      if (!ValueAtIndex)
      {
        continue;
      }

      v9 = ValueAtIndex;
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != CFDictionaryGetTypeID() || !CFDictionaryContainsKey(v9, kUMUserSessionVolumeMountedKey))
      {
        continue;
      }

      v11 = sub_100002454(v9, kUMUserSessionVolumeMountedKey);
      v12 = sub_1000023E8(v9, kUMUserSessionIDKey);
      if (sub_100002454(v9, kUMUserSessionForegroundKey) || v11 == 0)
      {
        continue;
      }

      if (sub_100070DBC(v9, 0, 0, 0x80000))
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v14 = qword_1000EB460;
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        v21 = 0;
        v15 = sub_1000011A8(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          v22 = 67109120;
          v23 = v12;
          v17 = _os_log_send_and_compose_impl(v16, &v21, 0, 0, &_mh_execute_header, v14, 0, "Unmounted the APFS volume for user with uid:%d", &v22);
          goto LABEL_43;
        }
      }

      else
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v14 = qword_1000EB460;
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        v21 = 0;
        v18 = sub_1000011A8(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v22 = 67109120;
          v23 = v12;
          v17 = _os_log_send_and_compose_impl(v19, &v21, 0, 0, &_mh_execute_header, v14, 0, "Unmount of APFS volume failed for user with uid:%d", &v22);
LABEL_43:
          v20 = v17;
          if (v17)
          {
            sub_100002A8C(v17);
          }

          goto LABEL_46;
        }
      }

      v20 = 0;
LABEL_46:
      free(v20);
LABEL_47:
    }
  }

  return 1;
}

uint64_t sub_1000738C4(uint64_t a1, int *a2)
{
  memset(v35, 0, sizeof(v35));
  if (qword_1000EB468 != -1)
  {
    sub_100097F4C();
  }

  v3 = qword_1000EB460;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LOWORD(v31[0]) = 0;
      v6 = _os_log_send_and_compose_impl(v5, v32, 0, 0, &_mh_execute_header, v3, 0, "Trying to find User volume on shared iPad", v31, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if (!sub_100054A9C(v35, 256))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v13 = qword_1000EB460;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        LOWORD(v31[0]) = 0;
        LODWORD(v30) = 2;
        v16 = _os_log_send_and_compose_impl(v15, v32, 0, 0, &_mh_execute_header, v13, 0, "could not find Primary UserVolume diskNode", v31, v30);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v19 = 2;
    goto LABEL_57;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v8 = qword_1000EB460;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v31[0] = 0;
    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      *v32 = 136315138;
      *&v32[4] = v35;
      v11 = _os_log_send_and_compose_impl(v10, v31, 0, 0, &_mh_execute_header, v8, 0, "Found Primary UserVolume disknode:%s", v32);
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  v18 = APFSVolumeDelete();
  if (v18)
  {
    v19 = v18;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v13 = qword_1000EB460;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v31[0] = 0;
      v20 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        *v32 = 136315394;
        *&v32[4] = v35;
        v33 = 1024;
        v34 = v19;
        v22 = _os_log_send_and_compose_impl(v21, v31, 0, 0, &_mh_execute_header, v13, 0, "Failed to delete Volume:%s with error:%d", v32, 18);
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

LABEL_57:

    result = 0;
    if (a2)
    {
      *a2 = v19;
    }

    return result;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v24 = qword_1000EB460;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v31[0] = 0;
    v25 = sub_1000011A8(1);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      *v32 = 136315138;
      *&v32[4] = v35;
      v27 = _os_log_send_and_compose_impl(v26, v31, 0, 0, &_mh_execute_header, v24, 0, "Deleted Volume:%s", v32);
      v28 = v27;
      if (v27)
      {
        sub_100002A8C(v27);
      }
    }

    else
    {
      v28 = 0;
    }

    free(v28);
  }

  return 1;
}

uint64_t sub_100073D54(const __CFString *a1, uid_t a2, gid_t a3)
{
  v44 = 0;
  v43 = 4;
  v42 = 0;
  memset(&v41, 0, sizeof(v41));
  if (sysctlbyname("kern.exclaves_status", &v44, &v43, 0, 0))
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v6 = qword_1000EB460;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_88;
    }

    *buffer = 0;
    LODWORD(v7) = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 = v7 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = v6;
      v9 = *__error();
      *v45 = 67109120;
      *&v45[4] = v9;
      v39 = 8;
      v10 = "failed to get exclaves status: %d\n";
      v11 = buffer;
      goto LABEL_10;
    }

LABEL_86:
    v12 = 0;
LABEL_87:
    free(v12);
LABEL_88:

    return *__error();
  }

  if (v44 == 1)
  {
    bzero(buffer, 0x400uLL);
    if (a1)
    {
      if (!CFStringGetCString(a1, buffer, 1024, 0x8000100u))
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v18 = qword_1000EB460;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 0;
          v19 = sub_1000011A8(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 & 0xFFFFFFFE;
          }

          if (v20)
          {
            LOWORD(v40[0]) = 0;
            v21 = _os_log_send_and_compose_impl(v20, v45, 0, 0, &_mh_execute_header, v18, 0, "failed to get the homeDirPath\n", v40, 2);
            v22 = v21;
            if (v21)
            {
              sub_100002A8C(v21);
            }
          }

          else
          {
            v22 = 0;
          }

          free(v22);
        }

        return 22;
      }
    }

    else
    {
      strcpy(buffer, "/private/var/mobile");
    }

    __strlcat_chk();
    if (stat(buffer, &v41))
    {
      if (*__error() != 2)
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v6 = qword_1000EB460;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_88;
        }

        v40[0] = 0;
        LODWORD(v7) = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v7;
        }

        else
        {
          v7 = v7 & 0xFFFFFFFE;
        }

        if (!v7)
        {
          goto LABEL_86;
        }

        v8 = v6;
        v30 = __error();
        v31 = strerror(*v30);
        *v45 = 136315394;
        *&v45[4] = buffer;
        v46 = 2080;
        v47 = v31;
        v39 = 22;
        v10 = "failed to stat path %s (%s)\n";
        goto LABEL_85;
      }

      if (mkdir(buffer, 0x1EDu))
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v6 = qword_1000EB460;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_88;
        }

        v40[0] = 0;
        LODWORD(v7) = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v7;
        }

        else
        {
          v7 = v7 & 0xFFFFFFFE;
        }

        if (!v7)
        {
          goto LABEL_86;
        }

        v8 = v6;
        v28 = __error();
        v29 = strerror(*v28);
        *v45 = 136315394;
        *&v45[4] = buffer;
        v46 = 2080;
        v47 = v29;
        v39 = 22;
        v10 = "failed to create path %s (%s)\n";
        goto LABEL_85;
      }

      if (chown(buffer, a2, a3))
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v6 = qword_1000EB460;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_88;
        }

        v40[0] = 0;
        LODWORD(v7) = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v7;
        }

        else
        {
          v7 = v7 & 0xFFFFFFFE;
        }

        if (!v7)
        {
          goto LABEL_86;
        }

        v8 = v6;
        v33 = __error();
        v34 = strerror(*v33);
        *v45 = 136315394;
        *&v45[4] = buffer;
        v46 = 2080;
        v47 = v34;
        v39 = 22;
        v10 = "failed to change ownership on %s (%s)\n";
        goto LABEL_85;
      }
    }

    if (!fsctl(buffer, 0x80044119uLL, &v42, 0))
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v13 = qword_1000EB460;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_99;
      }

      v40[0] = 0;
      v37 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        *v45 = 136315138;
        *&v45[4] = buffer;
        v16 = _os_log_send_and_compose_impl(v38, v40, 0, 0, &_mh_execute_header, v13, 0, "successfully registered the exclaves writable storage at %s\n", v45);
LABEL_22:
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }

        goto LABEL_98;
      }

LABEL_97:
      v17 = 0;
LABEL_98:
      free(v17);
LABEL_99:

      return 0;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v6 = qword_1000EB460;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_88;
    }

    v40[0] = 0;
    LODWORD(v7) = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 = v7 & 0xFFFFFFFE;
    }

    if (!v7)
    {
      goto LABEL_86;
    }

    v8 = v6;
    v35 = __error();
    v36 = strerror(*v35);
    *v45 = 136315394;
    *&v45[4] = buffer;
    v46 = 2080;
    v47 = v36;
    v39 = 22;
    v10 = "failed to register the exclaves writable storage path %s (%s)\n";
LABEL_85:
    v11 = v40;
LABEL_10:
    v12 = _os_log_send_and_compose_impl(v7, v11, 0, 0, &_mh_execute_header, v8, 0, v10, v45, v39, v40[0]);

    if (v12)
    {
      sub_100002A8C(v12);
    }

    goto LABEL_87;
  }

  if (v44 == 255)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v13 = qword_1000EB460;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_99;
    }

    *buffer = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      *v45 = 0;
      v16 = _os_log_send_and_compose_impl(v15, buffer, 0, 0, &_mh_execute_header, v13, 0, "Skipping the registration of the exclaves writable storage\n");
      goto LABEL_22;
    }

    goto LABEL_97;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v23 = qword_1000EB460;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v24 = sub_1000011A8(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      *v45 = 67109120;
      *&v45[4] = v44;
      v26 = _os_log_send_and_compose_impl(v25, buffer, 0, 0, &_mh_execute_header, v23, 0, "invalid exclaves status: %d\n", v45);
      v27 = v26;
      if (v26)
      {
        sub_100002A8C(v26);
      }
    }

    else
    {
      v27 = 0;
    }

    free(v27);
  }

  return 6;
}

void sub_1000745A8(id a1)
{
  qword_1000EB460 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

id *sub_1000746C0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v14 = a3;
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a2;
  objc_opt_self();
  v23 = sub_1000747CC([UMDarwinDirectoryUser alloc], v22, v14, v21, v20, v19, v18, v17, v16);

  return v23;
}

id *sub_1000747CC(id *a1, void *a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v27 = a2;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v17 = a8;
  v18 = a9;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = UMDarwinDirectoryUser;
    v19 = objc_msgSendSuper2(&v28, "init");
    if (!v19)
    {
      sub_100088DDC();
    }

    a1 = v19;

    objc_storeStrong(a1 + 2, a2);
    *(a1 + 2) = a3;
    objc_storeStrong(a1 + 3, a4);
    objc_storeStrong(a1 + 4, a5);
    objc_storeStrong(a1 + 5, a6);
    objc_storeStrong(a1 + 6, a7);
    objc_storeStrong(a1 + 7, a8);
    v20 = [v18 mutableCopy];
    v21 = a1[8];
    a1[8] = v20;
  }

  return a1;
}

id *sub_100074B58(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = a2;
  objc_opt_self();
  v11 = sub_100074BF8([UMDarwinDirectoryGroup alloc], v10, v6, v9, v8);

  return v11;
}

id *sub_100074BF8(id *a1, void *a2, int a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = UMDarwinDirectoryGroup;
    v12 = objc_msgSendSuper2(&v18, "init");
    if (!v12)
    {
      sub_100088DDC();
    }

    a1 = v12;

    v13 = [v9 copy];
    v14 = a1[2];
    a1[2] = v13;

    *(a1 + 2) = a3;
    objc_storeStrong(a1 + 3, a4);
    v15 = [v11 copy];
    v16 = a1[4];
    a1[4] = v15;
  }

  return a1;
}

void sub_100075C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100075C4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100075C64(uint64_t a1, void *a2, int a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

void sub_100075F00(id a1)
{
  qword_1000EB470 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

uint64_t sub_100075F48(uint64_t a1, unsigned int a2)
{
  objc_opt_self();
  if (a2 >= 9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_100075F74(uint64_t a1, unsigned int a2)
{
  objc_opt_self();
  if (a2 >= 9)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return a2;
  }
}

id sub_100075FA4(uint64_t a1, int *a2)
{
  v3 = objc_opt_self();
  v4 = objc_alloc_init(v3);
  v5 = v4;
  if (*a2 != 2)
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098610();
    }

    v9 = qword_1000EB480;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v19 = 0;
    v10 = sub_1000011A8(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = *a2;
      v20 = 67109120;
      v21 = v12;
      v13 = _os_log_send_and_compose_impl(v11, &v19, 0, 0, &_mh_execute_header, v9, 16, "Failed to parse kpersona_info struct: Unexpected version: %u", &v20);
      goto LABEL_20;
    }

LABEL_22:
    v17 = 0;
LABEL_23:
    free(v17);
    goto LABEL_24;
  }

  sub_10008BDA4(v4, a2[1]);
  v6 = sub_100075F48(v3, a2[2]);
  sub_100095DAC(v5, v6);
  if (sub_100001434(v5) != -1)
  {
    v7 = [NSString stringWithUTF8String:a2 + 22];
    sub_100096054(v5, v7);

    sub_100095EC8(v5, a2[86]);
    v8 = v5;
    goto LABEL_25;
  }

  if (qword_1000EB488 != -1)
  {
    sub_100098610();
  }

  v9 = qword_1000EB480;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v19 = 0;
    v14 = sub_1000011A8(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = a2[2];
      v20 = 67109120;
      v21 = v16;
      v13 = _os_log_send_and_compose_impl(v15, &v19, 0, 0, &_mh_execute_header, v9, 16, "Failed to parse kpersona_info struct: Unknown type: %d", &v20);
LABEL_20:
      v17 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:

  v8 = 0;
LABEL_25:

  return v8;
}

double sub_100076214@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *(a2 + 252) = 0u;
    *(a2 + 236) = 0u;
    *(a2 + 220) = 0u;
    *(a2 + 204) = 0u;
    *(a2 + 188) = 0u;
    *(a2 + 172) = 0u;
    *(a2 + 156) = 0u;
    *(a2 + 140) = 0u;
    *(a2 + 124) = 0u;
    *(a2 + 108) = 0u;
    *(a2 + 92) = 0u;
    *(a2 + 76) = 0u;
    *(a2 + 60) = 0u;
    *(a2 + 44) = 0u;
    *(a2 + 28) = 0u;
    *(a2 + 12) = 0u;
    *(a2 + 316) = 0u;
    *(a2 + 332) = 0u;
    *(a2 + 284) = 0u;
    *(a2 + 300) = 0u;
    *(a2 + 268) = 0u;
    *a2 = 2;
    *(a2 + 4) = sub_100001440(a1);
    v4 = sub_100001434(a1);
    v5 = sub_100075F74(UMKPersonaInfo, v4);
    *(a2 + 8) = v5;
    if (v5 < 9)
    {
      v11 = sub_100096040(a1, v6);
      v12 = [v11 getCString:a2 + 88 maxLength:256 encoding:4];

      if (v12)
      {
        *(a2 + 344) = sub_100001660(a1);
        return result;
      }

      if (qword_1000EB488 != -1)
      {
        sub_100098610();
      }

      v7 = qword_1000EB480;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v18 = 0;
      LODWORD(v14) = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v14 = v14;
      }

      else
      {
        v14 = v14 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v9 = v7;
        v16 = sub_100096040(a1, v15);
        *v17 = 138543362;
        *&v17[4] = v16;
        v10 = _os_log_send_and_compose_impl(v14, &v18, 0, 0, &_mh_execute_header, v9, 16, "Failed to create kpersona_info struct: Failed to convert name to C string: %{public}@", v17, 12);

LABEL_21:
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098610();
      }

      v7 = qword_1000EB480;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *v17 = 0;
      LODWORD(v8) = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v8;
      }

      else
      {
        v8 = v8 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = v7;
        LODWORD(v18) = 67109120;
        HIDWORD(v18) = sub_100001434(a1);
        v10 = _os_log_send_and_compose_impl(v8, v17, 0, 0, &_mh_execute_header, v9, 16, "Failed to create kpersona_info struct: Unknown type: %u", &v18);
        goto LABEL_21;
      }
    }

    v10 = 0;
LABEL_24:
    free(v10);
LABEL_25:

    result = 0.0;
    *(a2 + 332) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  result = 0.0;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 332) = 0u;
  return result;
}