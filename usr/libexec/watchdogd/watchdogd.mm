void sub_1000010B0(id a1, RBSProcessMonitor *a2, RBSProcessHandle *a3, RBSProcessStateUpdate *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = [(RBSProcessHandle *)v6 pid];
  v13 = [(RBSProcessStateUpdate *)v5 state];
  v8 = [v13 taskState];
  v9 = [(RBSProcessStateUpdate *)v5 state];

  v10 = [v9 endowmentNamespaces];
  v11 = [(RBSProcessHandle *)v6 bundle];

  v12 = [v11 identifier];
  sub_100001640(v7, v8, v10, v12);
}

uint64_t sub_100001198()
{
  qword_1000270E8 = 0;
  sub_1000017B0(0, "service monitoring thread created");
  *policy_info = 0;
  v68 = 0;
  get_default = 1;
  policy_infoCnt = 4;
  v0 = pthread_self();
  v1 = pthread_mach_thread_np(v0);
  if (thread_policy_get(v1, 2u, policy_info, &policy_infoCnt, &get_default))
  {
    goto LABEL_52;
  }

  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  if (!thread_policy_set(v3, 2u, policy_info, 4u))
  {
    v4 = qword_100027238;
    v5 = pthread_self();
    pthread_setspecific(v4, v5);
    v6 = pthread_setname_np("watchdogd service monitoring thread");
    sub_10000B9B8(v6, v7, v8, v9, v10);
    LOBYTE(policy_infoCnt) = 0;
    sub_10000372C(&policy_infoCnt, qword_1000270E8, v11, v12, v13);
    if (policy_infoCnt == 1)
    {
      v63 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + 30000000000;
    }

    else
    {
      v63 = 0;
    }

    v14 = 10000000000;
    qword_100027210 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v15 = dispatch_time(0, 0);
    *policy_info = 0;
    v16 = &unk_100027000;
    v17 = &unk_100027000;
    v18 = &unk_100027000;
    while (1)
    {
      dispatch_semaphore_wait(v16[70], 0xFFFFFFFFFFFFFFFFLL);
      if (!v17[27])
      {
        goto LABEL_51;
      }

      sub_1000017B0(0, "service monitoring thread resuming monitoring after %s", v17[27]);
      if (v18[512] == 1)
      {
        break;
      }

      if (*policy_info)
      {
        v15 = dispatch_time(0, *policy_info);
        *policy_info = 0;
      }

      if (sub_100003648(v15, policy_info, v19, v20, v21))
      {
        do
        {
LABEL_18:
          sub_100001D9C();
          sub_100001DF4(v26, v27, v28, v29, v30);
          context = objc_autoreleasePoolPush();
          v35 = sub_1000021EC(qword_1000270E8, v31, v32, v33, v34);
          v15 = dispatch_time(0, v14);
          v36 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (byte_1000270F0 == 1)
          {
            v37 = sub_10000666C();
            if (v37)
            {
              v42 = v37;
              if (sub_100006718(v37, v38, v39, v40, v41))
              {
                qword_1000270F8 = v42;
              }

              else
              {
                sub_1000034BC(v42);
                sub_1000035D0();
              }
            }
          }

          v43 = v14;
          sub_10000277C(v35, v36 + v14);
          for (i = qword_1000271F8; i; i = *i)
          {
            if (sub_100002C54(i) && *(i + 68) == 2 && *(i + 208) == 1)
            {
              for (j = *(i + 72); j; j = *(j + 96))
              {
                if (*(i + 1488) < 1)
                {
LABEL_33:
                  if (sub_100002C54(j))
                  {
                    *(j + 80) = 0;
                  }
                }

                else
                {
                  v46 = *(j + 24);
                  v47 = strlen(v46);
                  v48 = *(i + 1488) & 0x7FFFFFFFLL;
                  v49 = (i + 1328);
                  while (v47 != strlen(v49) || strcasecmp(v46, v49))
                  {
                    v49 += 32;
                    if (!--v48)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (*(j + 68) != 3)
                  {
                    _os_assert_log();
                    _os_crash();
                    __break(1u);
LABEL_51:
                    _os_assert_log();
                    _os_crash();
                    __break(1u);
LABEL_52:
                    _os_crash();
                    __break(1u);
                    goto LABEL_53;
                  }

                  if (!sub_100002C54(j))
                  {
                    bzero((j + 112), 0x700uLL);
                    *(j + 80) = 1;
                    *(j + 120) = qword_1000270E8 + 1;
                    *(j + 112) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
                  }
                }
              }
            }
          }

          if ((sub_100002C8C(v36) & 1) == 0)
          {
            sub_100009784(v36);
          }

          sub_1000034BC(qword_100027100);
          qword_100027100 = qword_1000270F8;
          qword_1000270F8 = 0;
          objc_autoreleasePoolPop(context);
          v50 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v14 = v43;
          if (v50 - qword_100027210 >= 0x1BF08EB001)
          {
            sub_1000034F4(v50, v51, v52, v53, v54);
          }

          v16 = &unk_100027000;
          v17 = &unk_100027000;
          v18 = &unk_100027000;
          if (policy_infoCnt == 1 && clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) > v63)
          {
            sub_10000372C(&policy_infoCnt, qword_1000270E8, v55, v56, v57);
            if (policy_infoCnt == 1)
            {
              v63 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + 30000000000;
            }
          }

          sub_1000035D0();
          v61 = sub_100003648(v15, policy_info, v58, v59, v60);
          ++qword_1000270E8;
        }

        while (((v61 ^ 1) & 1) == 0);
      }
    }

    v22 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v23 = qword_1000271F8;
    if (qword_1000271F8)
    {
      v24 = v22;
      do
      {
        bzero(v23 + 14, 0x700uLL);
        if (sub_100002C54(v23))
        {
          v25 = qword_1000270E8;
          v23[14] = v24;
          v23[15] = v25;
        }

        v23 = *v23;
      }

      while (v23);
    }

    goto LABEL_18;
  }

LABEL_53:
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t sub_100001640(int a1, int a2, void *a3, const __CFString *a4)
{
  v7 = a3;
  v8 = v7;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      goto LABEL_11;
    }

    if (a2 != 4)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (a2 == 1)
  {
    goto LABEL_11;
  }

  if (a2 == 2)
  {
LABEL_7:
    v11 = v7;
    v7 = [v7 containsObject:@"com.apple.frontboard.visibility"];
    v8 = v11;
    if (v7)
    {
      v7 = sub_100001718(a4);
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = a1;
      }

LABEL_13:
      dword_100027168 = v9;
      v8 = v11;
      goto LABEL_14;
    }

LABEL_11:
    if (dword_100027168 != a1)
    {
      goto LABEL_14;
    }

    v11 = v8;
    v7 = sub_100001718(@"com.apple.SpringBoard");
    v9 = 0;
    goto LABEL_13;
  }

LABEL_14:

  return _objc_release_x1(v7, v8);
}

uint64_t sub_100001718(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = &stru_100019B70;
  }

  v2 = IORegistryEntrySetCFProperty(dword_100027148, @"IOPMUBootAppName", v1);
  v3 = v2;
  if (v2)
  {
    mach_error_string(v2);
    sub_1000017B0(2, "failed to record foreground application with error %s");
  }

  else
  {
    CFStringGetCStringPtr(v1, 0x8000100u);
    sub_1000017B0(0, "set foreground app %s in PMU");
  }

  return v3;
}

void sub_1000017B0(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = a1;
  v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  sub_100001804(0, v3, v4, a2, va);
}

void sub_100001804(char a1, int a2, uint64_t a3, const char *a4, va_list a5)
{
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  if (a2 == 2)
  {
    v10 = 16;
  }

  else
  {
    v10 = 2 * (a2 == 1);
  }

  if (pthread_getspecific(qword_100027238))
  {
    if (a1)
    {
      _os_assert_log();
      _os_crash();
      sub_10000D0C8();
    }

    if (!qword_100027170)
    {
      _os_assert_log();
      _os_crash();
      sub_10000D0C8();
    }

    bzero(&v37, 0x204uLL);
    *&data[4] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    *data = a2;
    v11 = vsnprintf(v38, 0x200uLL, a4, a5);
    if (v11 >= 512)
    {
      v12 = 512;
    }

    else
    {
      v12 = v11;
    }

    v37 = v12;
    v13 = IODataQueueEnqueue(qword_100027170, data, v12 + 16);
    if (v13 != 268435460 && v13)
    {
      if (v13 != -536870168)
      {
        _os_assert_log();
        _os_crash();
        sub_10000D0C8();
      }

      atomic_fetch_add(&dword_10002725C, 1u);
    }
  }

  else
  {
    if (qword_1000271B8 != -1)
    {
      sub_100003BCC();
    }

    if (dword_1000271C0 && qword_1000271C8 != -1)
    {
      sub_10000D0CC();
    }

    *data = 0;
    v14 = vasprintf(data, a4, a5);
    if (*data && v14 >= 1)
    {
      v15 = qword_1000271A8;
      if ((a1 & 2) == 0)
      {
        v15 = &_os_log_default;
      }

      v16 = v15;
      v17 = v16;
      v18 = qword_100027198;
      v19 = (a1 & 2) >> 1;
      if (a1)
      {
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100002620;
        v28[3] = &unk_1000191C8;
        v20 = v29;
        v22 = v16;
        v31 = v10;
        v29[3] = a3;
        v29[4] = *data;
        v29[0] = v22;
        v29[1] = v33;
        v30 = a2;
        v32 = v19;
        v29[2] = v35;
        dispatch_sync(v18, v28);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100001B9C;
        block[3] = &unk_1000191C8;
        v20 = v24;
        v21 = v16;
        v26 = v10;
        v24[3] = a3;
        v24[4] = *data;
        v24[0] = v21;
        v24[1] = v33;
        v25 = a2;
        v27 = v19;
        v24[2] = v35;
        dispatch_async(v18, block);
      }
    }
  }

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void sub_100001B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001B9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 76);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    *buf = 134218242;
    v10 = v4;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "%llu: %s", buf, 0x16u);
  }

  if (qword_1000271A0)
  {
    *(*(*(a1 + 40) + 8) + 24) = sub_100001CF8(*(a1 + 64), *(a1 + 56), *(a1 + 72), *(a1 + 77), (*(*(a1 + 48) + 8) + 24));
    v6 = *(a1 + 48);
    if (*(*(v6 + 8) + 24))
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000C708;
      v8[3] = &unk_1000191A0;
      v7 = *(a1 + 40);
      v8[4] = v6;
      v8[5] = v7;
      dispatch_async(qword_1000271A0, v8);
    }
  }

  free(*(a1 + 64));
}

uint64_t sub_100001CF8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  if (!a1)
  {
    sub_10000C89C();
  }

  if (a3 == 2)
  {
    v5 = "ERROR";
    goto LABEL_10;
  }

  if (a3)
  {
    if (dword_1000271C0 >= 3)
    {
      v5 = "DEBUG";
      goto LABEL_10;
    }

    return 0;
  }

  if (dword_1000271C0 < 2)
  {
    return 0;
  }

  v5 = "INFO";
LABEL_10:
  v7 = "";
  if (a4)
  {
    v7 = "service-monitoring thread:";
  }

  return asprintf(a5, "watchdogd: %s %llu: %s: %s\n", v7, a2, v5, a1);
}

void sub_100001D9C()
{
  v0 = IOConnectCallScalarMethod(dword_100026B08, 1u, 0, 0, 0, 0);
  if (v0)
  {
    sub_10000CD90(v0);
  }

  sub_1000017B0(1, "checked in with KEXT");
}

void sub_100001DF4(intptr_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = atomic_load(byte_100027248);
  if (v5)
  {
    if (!qword_100027240)
    {
      sub_10000C89C();
    }

    if (os_unfair_lock_trylock(&unk_100027218))
    {
      v9 = qword_100027240;
      if (qword_100027240)
      {
        while (1)
        {
          v10 = v9;
          v9 = *(v9 + 16);
          v11 = v10[1];
          if (*v10 != 2)
          {
            break;
          }

          v18 = qword_1000271F8;
          if (qword_1000271F8)
          {
            v19 = 0;
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  v20 = v18;
                  v18 = *v18;
                  if (!v19)
                  {
                    break;
                  }

                  v20[1] = v19;
                  if (!v18)
                  {
                    goto LABEL_71;
                  }
                }

                v21 = v11[3];
                if (!strcmp(v21, v20[3]))
                {
                  break;
                }

                v19 = 0;
                if (!v18)
                {
                  goto LABEL_71;
                }
              }

              v19 = v20[1];
              if (v19 < qword_1000266B8)
              {
                break;
              }

              sub_1000017B0(0, "service %s is going to be removed", v21);
              sub_10000BAFC(1, v11[3]);
              v22 = qword_1000271F8;
              if (qword_1000271F8 == v20)
              {
                v23 = &qword_1000271F8;
              }

              else
              {
                do
                {
                  v23 = v22;
                  v22 = *v22;
                }

                while (v22 != v20);
              }

              *v23 = *v22;
              v24 = v20[3];
              if (v24)
              {
                free(v24);
              }

              v25 = v20[5];
              if (v25)
              {
                free(v25);
              }

              v26 = v20[4];
              if (v26)
              {
                free(v26);
              }

              v27 = v20[6];
              if (v27)
              {
                free(v27);
              }

              free(v20);
              v28 = qword_100027240;
              if (qword_100027240 == v10)
              {
                v30 = &qword_100027240;
              }

              else
              {
                do
                {
                  v29 = v28;
                  v28 = *(v28 + 16);
                }

                while (v28 != v10);
                v30 = (v29 + 16);
              }

              *v30 = *(v28 + 16);
              if (v11)
              {
                v31 = v11[3];
                if (v31)
                {
                  free(v31);
                }

                v32 = v11[5];
                if (v32)
                {
                  free(v32);
                }

                v33 = v11[4];
                if (v33)
                {
                  free(v33);
                }

                v34 = v11[6];
                if (v34)
                {
                  free(v34);
                }

                free(v11);
              }

              free(v10);
              --dword_1000266C0;
              if (!v18)
              {
                goto LABEL_71;
              }
            }

            sub_1000017B0(2, "Not allowed to unregister static watchdog service %s", v21);
            if (!v9)
            {
              goto LABEL_74;
            }
          }

          else
          {
LABEL_71:
            if (!v9)
            {
              goto LABEL_74;
            }
          }
        }

        if (*v10 == 1)
        {
          v12 = &qword_1000271F8;
          do
          {
            v12 = *v12;
            if (!v12)
            {
              if (!sub_10000B8E0(v11, qword_1000270E8, v6, v7, v8))
              {
                goto LABEL_71;
              }

              v35 = 0;
              v36 = dword_1000266C0;
              v11[1] = dword_1000266C0;
              v37 = &qword_1000271F8;
              do
              {
                v38 = v35;
                v37 = *v37;
                v35 = v37;
              }

              while (v37);
              if (!v38)
              {
                sub_10000C89C();
              }

              *v11 = *v38;
              *v38 = v11;
              dword_1000266C0 = v36 + 1;
              sub_1000017B0(0, "service %s enroll successful", v11[3]);
              v39 = qword_100027240;
              if (qword_100027240 == v10)
              {
                v41 = &qword_100027240;
              }

              else
              {
                do
                {
                  v40 = v39;
                  v39 = *(v39 + 16);
                }

                while (v39 != v10);
                v41 = (v40 + 16);
              }

              *v41 = *(v39 + 16);
              goto LABEL_70;
            }

            v13 = v11[3];
            v14 = v12[3];
            v15 = strcmp(v13, v14);
          }

          while (v15);
          sub_1000017B0(v15, "Service %s:%s has already been enrolled, duplicated with %s:%s", v13, v11[4], v14, v12[4]);
          v16 = qword_100027240;
          if (qword_100027240 == v10)
          {
            qword_100027240 = *(qword_100027240 + 16);
          }

          else
          {
            do
            {
              v17 = v16;
              v16 = *(v16 + 16);
            }

            while (v16 != v10);
            *(v17 + 16) = *(v16 + 16);
            if (!v11)
            {
              goto LABEL_70;
            }
          }

          v42 = v11[3];
          if (v42)
          {
            free(v42);
          }

          v43 = v11[5];
          if (v43)
          {
            free(v43);
          }

          v44 = v11[4];
          if (v44)
          {
            free(v44);
          }

          v45 = v11[6];
          if (v45)
          {
            free(v45);
          }

          free(v11);
LABEL_70:
          free(v10);
        }

        goto LABEL_71;
      }

LABEL_74:
      os_unfair_lock_unlock(&unk_100027218);
      atomic_store(0, byte_100027248);
      v46 = qword_100027250;

      dispatch_semaphore_signal(v46);
    }

    else
    {
      if (byte_100027108 == 1)
      {
        sub_10000C89C();
      }

      byte_100027108 = 1;
    }
  }
}

uint64_t sub_1000021EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (dword_100027258)
  {
    sub_10000C89C();
  }

  if (mach_port_allocate(mach_task_self_, 3u, &dword_100027258))
  {
    sub_10000C89C();
  }

  v6 = qword_1000271F8;
  if (qword_1000271F8)
  {
    v7 = 0;
    do
    {
      bzero((v6 + 200), 0x6A8uLL);
      *(v6 + 204) = 14;
      *(v6 + 210) = 0;
      *(v6 + 1498) = 0;
      if ((*(v6 + 16) & 1) == 0 && *(v6 + 104) && (*(v6 + 68) != 3 || *(v6 + 80) == 1))
      {
        name = 0;
        *&options.flags = xmmword_10000EE38;
        options.reserved[1] = 0;
        if (mach_port_construct(mach_task_self_, &options, 1uLL, &name))
        {
          sub_10000C89C();
        }

        v8 = sub_1000023C0(*(v6 + 104), *(v6 + 8), a1, name, 0);
        *(v6 + 204) = v8;
        if (v8)
        {
          if (v8 == 268435460)
          {
            sub_1000017B0(2, "failed to kickoff alive request to service %s, %s watchdog request handling code likely hung");
          }

          else
          {
            mach_error_string(v8);
            sub_1000017B0(2, "failed to kickoff alive request to service %s with error: %s");
          }

          mach_port_mod_refs(mach_task_self_, name, 1u, -1);
        }

        else
        {
          if (mach_port_insert_member(mach_task_self_, name, dword_100027258))
          {
            sub_10000C89C();
          }

          *(v6 + 200) = name;
          v7 = (v7 + 1);
        }
      }

      v6 = *v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  sub_1000017B0(0, "watchdogd sent %d pings for round %llu", v7, a1);
  return v7;
}

uint64_t sub_1000023C0(mach_port_name_t a1, uint64_t a2, uint64_t a3, unsigned int a4, mach_msg_timeout_t timeout)
{
  v11 = a4;
  v12 = 1376256;
  *name = 0u;
  v13 = NDR_record;
  v14 = a2;
  v15 = a3;
  v8 = -2147483629;
  name[1] = a1;
  v10 = 0x1005BB490;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v8);
  }

  v6 = mach_msg(&v8, 17, 0x40u, 0, 0, timeout, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((v8 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, name[2]);
    }

    mach_msg_destroy(&v8);
  }

  return v6;
}

void sub_1000024B0(id a1)
{
  if (IODataQueueWaitForAvailableData(qword_100027170, dword_100027178))
  {
    sub_10000C89C();
  }

  do
  {
    bzero(&data, 0x210uLL);
    dataSize = 528;
    v1 = IODataQueueDequeue(qword_100027170, &data, &dataSize);
    v8 = v1;
    if (v1)
    {
      if (v1 == -536870169)
      {
        return;
      }

      mach_error_string(v1);
      sub_1000017B0(2, "LOGGING ERROR: IODataQueueDequeue returned %s");
    }

    else
    {
      sub_1000025E0(data, v11, v2, v3, v4, v5, v6, v7, &v12);
      if (atomic_exchange(&dword_10002725C, 0))
      {
        sub_1000017B0(2, "dropped %d messages from service monitoring thread");
      }
    }
  }

  while (v8 != -536870169);
}

void sub_100002620(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 76);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    *buf = 134218242;
    v10 = v4;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "%llu: %s", buf, 0x16u);
  }

  if (qword_1000271A0)
  {
    *(*(*(a1 + 40) + 8) + 24) = sub_100001CF8(*(a1 + 64), *(a1 + 56), *(a1 + 72), *(a1 + 77), (*(*(a1 + 48) + 8) + 24));
    v6 = *(a1 + 48);
    if (*(*(v6 + 8) + 24))
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000C6A0;
      v8[3] = &unk_1000191A0;
      v7 = *(a1 + 40);
      v8[4] = v6;
      v8[5] = v7;
      dispatch_sync(qword_1000271A0, v8);
    }
  }

  free(*(a1 + 64));
}

void sub_10000277C(int a1, __uint64_t a2)
{
  if (a1 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (a2 <= v5)
      {
        break;
      }

      v6 = (a2 - v5) / 0xF4240;
      bzero(&msg, 0x538uLL);
      bzero(v10, 0x538uLL);
      v7 = mach_msg(&msg, 1282, 0, 0x57Cu, dword_100027258, v6, 0);
      if (v7 != 268451843)
      {
        if (v7)
        {
          mach_error_string(v7);
          sub_1000017B0(2, "failed to receive message with error: %s");
        }

        else
        {
          ++v4;
          if (msg.msgh_id == 6009000)
          {
            sub_100002950(&msg, v10);
          }

          else
          {
            sub_1000017B0(0, "received message with an unknown message id: %d (Reply ID should be: %d)");
          }
        }
      }
    }

    while (v4 < a1);
  }

  for (i = qword_1000271F8; i; i = *i)
  {
    v9 = *(i + 200);
    if (v9)
    {
      mach_port_mod_refs(mach_task_self_, v9, 1u, -1);
      *(i + 200) = 0;
    }
  }

  mach_port_mod_refs(mach_task_self_, dword_100027258, 3u, -1);
  dword_100027258 = 0;
  sub_1000017B0(0, "watchdogd_process_replies returning after processing %d replies (%d pings sent)", v4, a1);
}

uint64_t sub_100002950(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v4 = *(a1 + 20) + 100;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 20) = v4;
  if (*(a1 + 20) == 6009000)
  {
    if ((*a1 & 0x80000000) == 0 && (LODWORD(v6) = *(a1 + 4), (v6 - 1337) >= 0xFFFFFB5F) && (v7 = *(a1 + 56), v7 <= 0x400) && v6 - 152 >= v7 && (v9 = (v7 + 3) & 0xFFFFFFFC, v6 >= v9 + 152) && (v10 = a1 + v9, v11 = *(v10 + 148), v11 <= 5) && ((v12 = v6 - v9, v11 <= (v12 - 152) >> 5) ? (v13 = v12 == 32 * v11 + 152) : (v13 = 0), v13 && (v6 >= 0x43C ? (v6 = 1084) : (v6 = v6), memchr((a1 + 60), 0, v6 - 60))))
    {
      *(a2 + 32) = sub_100002AB8(*(a1 + 12), *(a1 + 32), *(a1 + 40), *(a1 + 48), (a1 + 60), *(v10 + 60), v10 + 68, (v10 + 152), v11);
    }

    else
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t sub_100002AB8(int a1, unint64_t a2, uint64_t a3, int a4, const char *a5, uint64_t a6, uint64_t a7, const void *a8, unsigned int a9)
{
  if (dword_1000266C0 <= a2)
  {
    sub_1000017B0(2, "received invalid client ID (%llu) in reply message, skipping message", a3);
    return 5;
  }

  v15 = &qword_1000271F8;
  do
  {
    v15 = *v15;
  }

  while (v15 && v15[1] != a2);
  if (*(v15 + 50) != a1)
  {
    sub_1000017B0(2, "received message for client (with claimed client ID: %llu) doesn't match receive port, skipping message", a3);
    return 5;
  }

  sub_1000017B0(1, "received reply message from %s round: %llu is_alive: %d string: %s", v15[5], a3, a4, a5);
  if (*(v15 + 51))
  {
    sub_10000C89C();
  }

  *(v15 + 208) = 1;
  *(v15 + 209) = a4 != 0;
  v15[155] = a6;
  if (*a5)
  {
    __strlcpy_chk();
  }

  for (i = 0; i != 10; ++i)
  {
    v17 = *(a7 + i * 8);
    if (v17)
    {
      v15[i + 156] = v17;
    }
  }

  if (*(v15 + 17) != 2)
  {
    return 0;
  }

  sub_1000017B0(0, "reply from controller %s for round: %llu includes %d ephemeral services", v15[5], a3, a9);
  if (!a9)
  {
    return 0;
  }

  if (a9 >= 6)
  {
    sub_10000C89C();
  }

  memcpy(v15 + 166, a8, 32 * a9);
  result = 0;
  v15[186] = a9;
  return result;
}

uint64_t sub_100002C8C(uint64_t a1)
{
  byte_1000270F0 = 0;
  v2 = __chkstk_darwin(a1);
  __chkstk_darwin(v2);
  v52 = &v48 - v4;
  v5 = qword_1000271F8;
  if (!qword_1000271F8)
  {
    v46 = 1;
    return v46 & 1;
  }

  v49 = v3;
  v50 = 0;
  v53 = 0;
  v51 = 0;
  v54 = 0;
  v55 = 1;
  do
  {
    if (!sub_100002C54(v5) || *(v5 + 68) == 3 && *(v5 + 120) == qword_1000270E8 + 1)
    {
      goto LABEL_103;
    }

    if (*(v5 + 209) == 1)
    {
      v6 = qword_1000270E8;
      ++*(v5 + 128);
      *(v5 + 136) = a1;
      *(v5 + 192) = 0;
      *(v5 + 152) = 0;
      *(v5 + 160) = 0;
      *(v5 + 144) = v6;
      uuid_clear((v5 + 168));
      *(v5 + 188) = 0;
      *(v5 + 1496) = 0;
      atomic_store(0, (v5 + 184));
      sub_1000017B0(0, "watchdog poll for service %s returned successfully, %lld successful checkins");
      goto LABEL_103;
    }

    v7 = *(v5 + 144);
    if (*(v5 + 120) > v7)
    {
      v7 = *(v5 + 120);
    }

    if (*(v5 + 160))
    {
      v8 = *(v5 + 160);
    }

    else
    {
      v8 = v7;
    }

    if (*(v5 + 192) != dword_1000266C4 && qword_1000270E8 + 2 == v8 + *(v5 + 56))
    {
      sub_1000017B0(2, "marking diagnostic collection next round for %s", *(v5 + 40));
      byte_1000270F0 = 1;
    }

    v9 = v5 + 1498;
    *(v5 + 1866) = 0u;
    *(v5 + 1882) = 0u;
    *(v5 + 1834) = 0u;
    *(v5 + 1850) = 0u;
    *(v5 + 1802) = 0u;
    *(v5 + 1818) = 0u;
    *(v5 + 1770) = 0u;
    *(v5 + 1786) = 0u;
    *(v5 + 1738) = 0u;
    *(v5 + 1754) = 0u;
    *(v5 + 1706) = 0u;
    *(v5 + 1722) = 0u;
    *(v5 + 1674) = 0u;
    *(v5 + 1690) = 0u;
    *(v5 + 1642) = 0u;
    *(v5 + 1658) = 0u;
    *(v5 + 1610) = 0u;
    *(v5 + 1626) = 0u;
    *(v5 + 1578) = 0u;
    *(v5 + 1594) = 0u;
    *(v5 + 1546) = 0u;
    *(v5 + 1562) = 0u;
    *(v5 + 1514) = 0u;
    *(v5 + 1530) = 0u;
    *(v5 + 1498) = 0u;
    v10 = snprintf((v5 + 1498), 0x190uLL, "checkin with service: %s ", *(v5 + 40));
    if (v10 <= 0x190)
    {
      v11 = 400 - v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = snprintf((v9 + v10), v11, "(%d induced crashes) ", *(v5 + 196)) + v10;
    if (v12 <= 0x190)
    {
      v13 = 400 - v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v5 + 204);
    if (v14)
    {
      if (v14 == 268435460)
      {
        v15 = snprintf((v9 + v12), v13, "failed to send ping message, %s watchdog request handling code likely hung ");
      }

      else
      {
        mach_error_string(v14);
        v15 = snprintf((v9 + v12), v13, "failed to send ping message with error %s ");
      }
    }

    else if (*(v5 + 208))
    {
      if (*(v5 + 209))
      {
        sub_10000D02C(*(v5 + 209));
      }

      v15 = snprintf((v9 + v12), v13, "returned not alive ");
    }

    else
    {
      v15 = snprintf((v9 + v12), v13, "didn't receive a reply from the service ");
    }

    v16 = v12 + v15;
    if (v16 <= 0x190)
    {
      v17 = 400 - v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v5 + 1240);
    if (*(v5 + 210))
    {
      if (v18)
      {
        v19 = snprintf((v9 + v16), v17, "with context:\n%s (code 0x%llx)\n");
      }

      else
      {
        v19 = snprintf((v9 + v16), v17, "with context:\n%s\n");
      }

      goto LABEL_39;
    }

    if (v18)
    {
      v19 = snprintf((v9 + v16), v17, "with code 0x%llx\n");
LABEL_39:
      v16 += v19;
    }

    if (v16 <= 0x190)
    {
      v20 = 400 - v16;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v5 + 128);
    if (v21)
    {
      v16 += snprintf((v9 + v16), v20, "%lld seconds since last successful checkin, %lld total successful checkins since ", (a1 - *(v5 + 136)) / 0x3B9ACA00uLL, v21);
      if (v16 <= 0x190)
      {
        v22 = 400 - v16;
      }

      else
      {
        v22 = 0;
      }

      if (*(v5 + 68) == 3 && *(v5 + 120) != *(*(v5 + 88) + 120))
      {
        v23 = snprintf((v9 + v16), v22, "monitoring enabled by %s (%lld seconds ago)");
      }

      else
      {
        v23 = snprintf((v9 + v16), v22, "%lld seconds ago");
      }
    }

    else if (*(v5 + 68) == 3 && *(v5 + 120) != *(*(v5 + 88) + 120))
    {
      v23 = snprintf((v9 + v16), v20, "no successful checkins since monitoring enabled by %s (%lld seconds ago)");
    }

    else
    {
      v23 = snprintf((v9 + v16), v20, "no successful checkins since %lld seconds ago");
    }

    v24 = *(v5 + 152);
    if (v24)
    {
      v25 = v16 + v23;
      if (v25 <= 0x190)
      {
        v26 = 400 - v25;
      }

      else
      {
        v26 = 0;
      }

      snprintf((v9 + v25), v26, ", %lld seconds since last crashed by watchdogd, ", (a1 - v24) / 0x3B9ACA00uLL);
    }

    if (os_variant_has_internal_diagnostics())
    {
      if (sub_100005984())
      {
        sub_1000017B0(2, "skipping evaluating or taking action on service %s because watchdogd defanged");
        goto LABEL_103;
      }

      v27 = sub_100005FAC(*(v5 + 24), 0);
      if (v27 >= 1)
      {
        if (sub_100005F00(v27))
        {
          sub_1000017B0(2, "skipping evaluating or taking action on service %s because service being debugged");
          goto LABEL_103;
        }
      }
    }

    sub_1000017B0(2, "%s", (v5 + 1498));
    if ((byte_100027202 & 1) == 0 && qword_1000270E8 == v8 + *(v5 + 56) / 2)
    {
      v28 = 0;
      v29 = 0;
      v30 = v5 + 1248;
      do
      {
        while (*(v30 + 8 * v28))
        {
          sub_1000017B0(0, "Evaluate Healthiness Found Unresponsive Thread");
          v29 = 1;
          if (v28++ == 9)
          {
            goto LABEL_76;
          }
        }

        ++v28;
      }

      while (v28 != 10);
      if ((v29 & 1) == 0)
      {
        goto LABEL_79;
      }

LABEL_76:
      v32 = 0;
      v33 = v52 + 112 * v54;
      *v33 = *(v5 + 24);
      *(v33 + 88) = (10 * ((*(v5 + 56) + (*(v5 + 56) >> 31)) >> 1));
      do
      {
        *(v33 + 8 + v32) = *(v30 + v32);
        v32 += 8;
      }

      while (v32 != 80);
      uuid_generate((v5 + 168));
      uuid_copy((v33 + 96), (v5 + 168));
      ++v54;
      v51 = 1;
    }

LABEL_79:
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (!has_internal_diagnostics)
    {
      goto LABEL_101;
    }

    v39 = 2863311532 * *(v5 + 56);
    if (qword_1000270E8 < v8 + (HIDWORD(v39) + (v39 >> 63)))
    {
      goto LABEL_101;
    }

    v41 = 0;
    v40 = 0;
    atomic_compare_exchange_strong((v5 + 184), &v41, 1u);
    v42 = v41 == 0;
    if (*(v5 + 63) == 1)
    {
      v40 = *(v5 + 188) ^ 1;
    }

    if (!((v41 == 0) | v40 & 1))
    {
      goto LABEL_101;
    }

    if ((v50 & 0x100000000) != 0)
    {
      if (v53)
      {
        goto LABEL_88;
      }
    }

    else
    {
      has_internal_diagnostics = sub_100006EC4(has_internal_diagnostics, v35, v36, v37, v38);
      if (has_internal_diagnostics)
      {
LABEL_88:
        sub_100001DF4(has_internal_diagnostics, v35, v36, v37, v38);
        v43 = HIDWORD(v53);
        if ((v53 & 0x100000000) != 0)
        {
          v44 = HIDWORD(v53);
        }

        else
        {
          v44 = 1;
        }

        if (v42)
        {
          v43 = v44;
        }

        LODWORD(v53) = 1;
        HIDWORD(v53) = v43;
        if (v40)
        {
          *(v5 + 188) = 1;
          sub_100007C18(*(v5 + 40));
        }

        goto LABEL_95;
      }
    }

    LODWORD(v53) = 0;
LABEL_95:
    if ((v53 & 0x100000000) != 0 && v42)
    {
      v45 = v49 + 24 * v50;
      *v45 = *(v5 + 40);
      if (uuid_is_null((v5 + 168)))
      {
        uuid_generate((v5 + 168));
      }

      uuid_copy((v45 + 8), (v5 + 168));
      LODWORD(v50) = v50 + 1;
    }

    HIDWORD(v50) = 1;
LABEL_101:
    if (qword_1000270E8 >= v8 + *(v5 + 56))
    {
      v55 = 0;
      *(v5 + 1496) = 1;
    }

LABEL_103:
    v5 = *v5;
  }

  while (v5);
  if ((v53 & 0x100000000) != 0)
  {
    sub_100006F78(v49, v50, &stru_100018EE0);
  }

  v46 = v55;
  if (v53)
  {
    sub_100006F38();
  }

  if (v51)
  {
    sub_100008020(v52, v54);
  }

  return v46 & 1;
}

unsigned __int8 *sub_1000034BC(unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    result = stackshot_config_dealloc();
    *v1 = 0;
    atomic_store(0, v1 + 8);
  }

  return result;
}

void sub_1000034F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100027158 != -1)
  {
    sub_10000D0B4();
  }

  if (byte_100027160 == 1)
  {

    sub_1000017B0(0, "skipping setting PMU boot stage because -wdt_no_pmu found in boot-args or no-pmu found in EDT");
  }

  else
  {
    if (!dword_100027148)
    {
      sub_10000C89C();
    }

    if ((byte_100027164 & 1) == 0)
    {
      v5 = IORegistryEntrySetCFProperty(dword_100027148, @"IOPMUBootStage", [NSNumber numberWithUnsignedInt:254]);
      if (v5)
      {
        sub_1000017B0(2, "Unable to set device boot stage to 0x%x, IORegistryEntrySetCFProperty returned 0x%x", 254, v5);
      }

      byte_100027164 = 1;
    }
  }
}

void *sub_1000035D0()
{
  result = pthread_getspecific(qword_100027238);
  if (!result)
  {
    sub_10000C89C();
  }

  if (byte_100026B44 == 1)
  {
    v1 = atomic_load((qword_100026B38 + 8));
    if ((v1 & 1) == 0)
    {
      v2 = atomic_load((qword_100026B38 + 24));
      if ((v2 & 1) == 0)
      {
        v3 = getpid();
        result = proc_set_dirty(v3, 0);
        byte_100026B44 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100003648(dispatch_time_t timeout, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    sub_10000C89C();
  }

  if (!dispatch_semaphore_wait(qword_100027220, timeout))
  {
    if (dispatch_time_to_nsec())
    {
      sub_10000C89C();
    }

    sub_10000C89C();
  }

  return 1;
}

uint64_t sub_10000372C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    sub_10000C89C();
  }

  *a1 = 0;
  v6 = qword_1000271F8;
  if (qword_1000271F8)
  {
    v8 = 0;
    do
    {
      sp = 0;
      if ((*(v6 + 16) & 1) == 0 && *(v6 + 60) == 1)
      {
        v9 = bootstrap_look_up(bootstrap_port, *(v6 + 32), &sp);
        v10 = *(v6 + 32);
        if (v9)
        {
          v11 = bootstrap_strerror(v9);
          sub_1000017B0(0, "late checkin service discovery for service %s failed, returned: %s", v10, v11);
          *a1 = 1;
        }

        else
        {
          sub_1000017B0(v9, "found late checkin service: %s", *(v6 + 32));
          *(v6 + 104) = sp;
          *(v6 + 60) = 0;
          *(v6 + 120) = a2;
          *(v6 + 112) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          sub_10000BAFC(0, *(v6 + 24));
          v8 = 1;
        }
      }

      v6 = *v6;
    }

    while (v6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_10000384C(int a1, int a2, uint64_t a3, intptr_t notificationID)
{
  if (a3 == -536870144)
  {
    sub_1000017B0(0, "received system wake notification", a3, notificationID);
    if (byte_100026C94 == 1)
    {
      byte_100026C94 = 0;
      if (qword_1000271F0)
      {
        dispatch_async(qword_1000271F0, &stru_100018D80);
      }

      sub_100003948("wake", v6, v7, v8, v9);
    }
  }

  else
  {
    if (a3 == -536870272)
    {
      sub_1000017B0(0, "received system sleep notification");
      byte_100026C94 = 1;
      sub_100008774();
    }

    else if (a3 != -536870288)
    {
      return;
    }

    v5 = dword_100026C90;

    IOAllowPowerChange(v5, notificationID);
  }
}

void sub_100003948(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = dword_100026C84;
  if (dword_100026C84 <= 0)
  {
    sub_10000C89C();
  }

  --dword_100026C84;
  if (v5 == 1)
  {
    sub_100003998(result, a2, a3, a4, a5);

    sub_100003A0C();
  }
}

void sub_100003998(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1000270D8)
  {
    sub_10000C89C();
  }

  qword_1000270D8 = a1;
  if (qword_1000270E0 != -1)
  {
    sub_10000D018();
  }

  dispatch_semaphore_signal(qword_100027230);
  sub_1000017B0(0, "signaled service monitoring thread to resume for %s", a1);
}

void sub_100003A0C()
{
  v0 = IOConnectCallScalarMethod(dword_100026B08, 4u, 0, 0, 0, 0);
  if (v0)
  {
    sub_10000CDF8(v0);
  }

  sub_1000017B0(v0, "called into KEXT to re-enable userspace monitoring");
}

void sub_100003A60()
{
  v0 = 60;
  waitTime = 60;
  if (byte_100026C88 == 1)
  {
    v0 = 120;
    waitTime.tv_sec = 120;
  }

  sub_1000017B0(0, "Wait for IOKit to quiesce in %ds", v0);
  v2 = sub_100003B88(v1);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WatchdogdWaitForIOKitQuiese", &unk_100014123, buf, 2u);
  }

  v3 = IOKitWaitQuietWithOptions(kIOMainPortDefault, &waitTime, 1u);
  if (v3)
  {
    sub_100005A34("Timeout waiting for IOKit to quiesce in 60s");
  }

  v4 = sub_100003B88(v3);
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WatchdogdWaitForIOKitQuiese", &unk_100014123, v5, 2u);
  }
}

id sub_100003B88(uint64_t a1)
{
  if (qword_100027190 != -1)
  {
    sub_10000D0F4();
  }

  v2 = qword_100027188;

  return v2;
}

void wd_optin_service_register(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    sub_10000C89C();
  }

  if (!v6)
  {
    sub_10000C89C();
  }

  v8 = v7;
  if (!v7)
  {
    sub_10000C89C();
  }

  if (sub_100003D54())
  {
    mach_service = xpc_connection_create_mach_service("com.apple.watchdogd.optin.registration", 0, 2uLL);
    xpc_connection_set_event_handler(mach_service, &stru_100018A70);
    xpc_connection_activate(mach_service);
    v10 = sub_100003E6C(v5, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003F94;
    v12[3] = &unk_100018A98;
    v13 = mach_service;
    v14 = v8;
    v11 = mach_service;
    xpc_connection_send_message_with_reply(v11, v10, v6, v12);
  }

  else
  {
    *__error() = 45;
    v8[2](v8, 0);
  }
}

BOOL sub_100003D54()
{
  if ((os_variant_is_darwinos() & 1) == 0)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10000C8B8();
    return 0;
  }

  if (qword_1000266D8 != -1)
  {
    sub_10000C8FC();
  }

  if (byte_1000266D0 == 1)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10000C968();
    return 0;
  }

  if (qword_1000266E0 != -1)
  {
    sub_10000C910();
  }

  if (byte_1000266E8 != 1)
  {
    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10000C924();
    return 0;
  }

  return result;
}

void sub_100003E24(id a1, OS_xpc_object *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000C9AC();
  }
}

id sub_100003E6C(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "watchdogd_request_command", a2);
  if (!v3)
  {
    goto LABEL_4;
  }

  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:&v9];
  v6 = v9;
  if (v5)
  {
    xpc_dictionary_set_data(v4, "watchdogd_optin_service_identifier", [v5 bytes], objc_msgSend(v5, "length"));

LABEL_4:
    v7 = v4;
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000C9F0(v6);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

void sub_100003F94(uint64_t a1, void *a2)
{
  sub_100003FE4(a2);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  xpc_connection_cancel(v3);
}

uint64_t sub_100003FE4(void *a1)
{
  v1 = a1;
  if (xpc_get_type(v1) == &_xpc_type_error)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000CB4C(v1);
    }

    v3 = __error();
    v2 = 0;
    v4 = 61;
    goto LABEL_7;
  }

  if (xpc_get_type(v1) == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(v1, "watchdogd_request_result");
    if (int64 == 2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v7 = "optin un-registration successful";
        v8 = &v9;
        goto LABEL_19;
      }
    }

    else
    {
      if (int64 != 1)
      {
        if (int64)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10000CAD0();
          }

          v3 = __error();
          if ((int64 - 3) > 1)
          {
            v2 = 0;
            v4 = 22;
          }

          else
          {
            v2 = 0;
            v4 = 1;
          }
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10000CA8C();
          }

          v3 = __error();
          v2 = 0;
          v4 = 94;
        }

LABEL_7:
        *v3 = v4;
        goto LABEL_8;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v7 = "optin registration successful";
        v8 = &v10;
LABEL_19:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      }
    }

    v2 = 1;
    goto LABEL_8;
  }

  v2 = 0;
LABEL_8:

  return v2;
}

uint64_t wd_optin_service_register_sync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    sub_10000C89C();
  }

  v2 = v1;
  if (sub_100003D54())
  {
    mach_service = xpc_connection_create_mach_service("com.apple.watchdogd.optin.registration", 0, 2uLL);
    xpc_connection_set_event_handler(mach_service, &stru_100018AB8);
    xpc_connection_activate(mach_service);
    v4 = sub_100003E6C(v2, 0);
    v5 = xpc_connection_send_message_with_reply_sync(mach_service, v4);
    v6 = sub_100003FE4(v5);
    xpc_connection_cancel(mach_service);
  }

  else
  {
    v6 = 0;
    *__error() = 45;
  }

  return v6;
}

void sub_100004248(id a1, OS_xpc_object *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000C9AC();
  }
}

BOOL wd_optin_service_unregister_sync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    sub_10000C89C();
  }

  v2 = v1;
  v3 = sub_100003D54();
  if (v3)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.watchdogd.optin.registration", 0, 2uLL);
    xpc_connection_set_event_handler(mach_service, &stru_100018AD8);
    xpc_connection_activate(mach_service);
    v5 = sub_100003E6C(v2, 1u);
    v6 = xpc_connection_send_message_with_reply_sync(mach_service, v5);
    sub_100003FE4(v6);
    xpc_connection_cancel(mach_service);
  }

  else
  {
    *__error() = 45;
  }

  return v3;
}

void sub_100004358(id a1, OS_xpc_object *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000C9AC();
  }
}

void sub_1000043A0(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_1000266D0 = v2 != 0;
  }
}

void sub_1000043FC(id a1)
{
  if (qword_1000266F0 != -1)
  {
    sub_10000CBD8();
  }

  if (os_parse_boot_arg_from_buffer_int())
  {
    byte_1000266E8 = 1;
  }
}

void sub_10000447C(id a1)
{
  v1 = 1024;
  if (sysctlbyname("kern.bootargs", &unk_1000266F8, &v1, 0, 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000CBEC();
    }

    _os_crash();
    __break(1u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v3 = &unk_1000266F8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "retrieved current device boot-args: %s", buf, 0xCu);
  }
}

void sub_10000457C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100008BA4(a1, a2);
  v3 = strlen(v2);
  if (!strnstr(v2, "wdt_test=", v3))
  {
    return;
  }

  v4 = strlen(v2);
  v5 = strnstr(v2, "wdt_controller", v4);
  v6 = strlen(v2);
  v7 = strnstr(v2, "wdt_ephemeral", v6);
  v8 = strlen(v2);
  v9 = strnstr(v2, "wdt_optin", v8);
  v10 = strlen(v2);
  v11 = strnstr(v2, "wdt_exclave", v10);
  v12 = strlen(v2);
  v13 = strnstr(v2, "wdt_unblock", v12);
  bzero(buffer, 0x400uLL);
  bzero(__str, 0x400uLL);
  v14 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v14)
  {
    sub_1000017B0(2, "NVRAM is not supported on this system");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v14, @"boot-args", 0, 0);
  if (!CFProperty)
  {
    sub_1000017B0(2, "No boot-args NVRAM variable found");
  }

  CFStringGetCString(CFProperty, buffer, 1024, 0x8000100u);
  sub_1000017B0(0, "Retrieved current boot-args from NVRAM: %s\n", buffer);
  CFRelease(CFProperty);
  sub_100004E84(buffer, "wdt_test=");
  sub_100004E84(buffer, "wdt_unblock=");
  sub_100004E84(buffer, "wdt_ephemeral=");
  sub_100004E84(buffer, "wdt_controller=");
  sub_100004E84(buffer, "wdt_optin=");
  sub_100004E84(buffer, "wdt_exclave=");
  sub_100004E84(buffer, "wdt=");
  sub_100004E84(buffer, "-wdt_no_pmu");
  snprintf(__str, 0x400uLL, "%s wdt=-1 -wdt_no_pmu", buffer);
  v16 = CFStringCreateWithCString(kCFAllocatorDefault, __str, 0x8000100u);
  v17 = IORegistryEntrySetCFProperty(v14, @"boot-args", v16);
  if (v17)
  {
    v18 = mach_error_string(v17);
    sub_1000017B0(2, "Failed to set new boot-args to %s in NVRAM, IORegistryEntrySetCFProperty returned %s", __str, v18);
  }

  CFRelease(v16);
  v19 = IORegistryEntrySetCFProperty(v14, @"IONVRAM-FORCESYNCNOW-PROPERTY", @"IONVRAM-FORCESYNCNOW-PROPERTY");
  if (v19)
  {
    v20 = mach_error_string(v19);
    sub_1000017B0(2, "Failed to flush new boot-args to in NVRAM, IORegistryEntrySetCFProperty returned %s", v20);
  }

  sub_1000017B0(0, "Updated and flushed new boot-args: %s", __str);
  v21 = strlen(v2);
  if (strnstr(v2, "wdt_test=healthy", v21) || (v22 = strlen(v2), strnstr(v2, "wdt_test=tm_nopanic", v22)) || (v23 = strlen(v2), strnstr(v2, "wdt_test=tm_panic", v23)))
  {
    sub_10000C258(0, "watchdogd detected testing boot-args for daemon (controller: %d) (ephemeral: %d) (optin: %d) (exclave :%d) (unblock: %d)", v5 != 0, v7 != 0, v9 != 0, v11 != 0, v13 != 0);
    if (dword_1000266C0 <= 2)
    {
      sub_10000C89C();
    }

    memcpy(&unk_10001F728, &unk_10001C318, 0x770uLL);
    if (v13)
    {
      v24 = "-b";
    }

    else
    {
      v24 = 0;
    }

    sub_100004C44(off_10001F740[0], off_10001F748[0], "/usr/local/libexec/watchdogtestdaemon", v24, 0);
    v25 = 1;
    dword_1000266C0 = 1;
    qword_1000266B8 = 1;
    if (v5)
    {
      memcpy(&unk_10001FE98, &unk_10001CA88, 0x770uLL);
      sub_100004C44(off_10001FEB0[0], off_10001FEB8[0], "/usr/local/libexec/watchdogtestcontroller", "-c", 0);
      v25 = ++dword_1000266C0;
      ++qword_1000266B8;
    }

    if (v7)
    {
      v26 = (&unk_10001F728 + 1904 * v25);
      memcpy(v26, &unk_10001D1F8, 0x770uLL);
      sub_100004C44(v26[3], v26[4], "/usr/local/libexec/watchdogtestephemeral", "-e", 0);
      ++dword_1000266C0;
      ++qword_1000266B8;
    }

    if (v9)
    {
      sub_100004C44(off_10001D980[0], off_10001D988[0], "/usr/local/libexec/watchdogtestoptin", "-o0", 0);
      sub_100004C44(off_10001E0F0[0], off_10001E0F8[0], "/usr/local/libexec/watchdogtestoptin", "-o1", 0);
    }

    if (v11)
    {
      memcpy(&unk_10001F728 + 1904 * dword_1000266C0, &unk_10001E848, 0x770uLL);
      sub_100004C44(off_10001E860[0], off_10001E868[0], "/usr/local/libexec/watchdogtestexclave", "-m", 0);
      ++dword_1000266C0;
      ++qword_1000266B8;
    }

    if (v13)
    {
      sub_100004C44(off_10001EFD0[0], off_10001EFD8[0], "/usr/local/libexec/watchdogtestunblock", "-d", "com.apple.watchdogtestd.listener");
    }

    return;
  }

  v27 = strlen(v2);
  if (strnstr(v2, "wdt_test=no_user_checkin", v27))
  {
    sub_10000C258(0, "watchdogd detected testing boot-args to not run, exiting");
    goto LABEL_37;
  }

  v28 = strlen(v2);
  if (strnstr(v2, "wdt_test=cpu_hang", v28))
  {
    sub_10000C258(0, "watchdogd detected testing boot-args to trigger CPU hang");
    sub_100005B58();
  }

  v29 = strlen(v2);
  if (strnstr(v2, "wdt_test=soc_watchdog", v29))
  {
    sub_10000C258(0, "triggering SoC watchdog");
    sub_1000034F4(v30, v31, v32, v33, v34);
    v35 = 0;
LABEL_36:
    sub_100005BAC(v35);
LABEL_37:
    sub_1000087B0();
  }

  v36 = strlen(v2);
  if (strnstr(v2, "wdt_test=panic_soc_watchdog", v36))
  {
    sub_10000C258(0, "triggering panic SoC watchdog");
    sub_1000034F4(v37, v38, v39, v40, v41);
    v35 = 1;
    goto LABEL_36;
  }

  v42 = strlen(v2);
  if (strnstr(v2, "wdt_test=iokit_busy", v42))
  {
    sub_10000C258(0, "triggering IOKit busy");
    sub_100005C00();
  }
}

void sub_100004C44(const char *a1, const char *a2, const char *a3, const char *a4, const char *a5)
{
  v10 = launch_data_alloc(LAUNCH_DATA_DICTIONARY);
  v11 = objc_autoreleasePoolPush();
  v12 = launch_data_new_string(a1);
  launch_data_dict_insert(v10, v12, "Label");
  v13 = launch_data_alloc(LAUNCH_DATA_ARRAY);
  v14 = launch_data_new_string(a3);
  launch_data_array_set_index(v13, v14, 0);
  if (a4)
  {
    v15 = launch_data_new_string(a4);
    launch_data_array_set_index(v13, v15, 1uLL);
  }

  launch_data_dict_insert(v10, v13, "ProgramArguments");
  v16 = launch_data_new_string("Interactive");
  launch_data_dict_insert(v10, v16, "POSIXSpawnType");
  v17 = launch_data_new_BOOL(0);
  launch_data_dict_insert(v10, v17, "EnablePressuredExit");
  v18 = launch_data_new_BOOL(0);
  launch_data_dict_insert(v10, v18, "EnableTransactions");
  v19 = launch_data_alloc(LAUNCH_DATA_DICTIONARY);
  v20 = launch_data_new_BOOL(0);
  launch_data_dict_insert(v19, v20, "SuccessfulExit");
  launch_data_dict_insert(v10, v19, "KeepAlive");
  v21 = launch_data_alloc(LAUNCH_DATA_DICTIONARY);
  v22 = launch_data_new_BOOL(1);
  launch_data_dict_insert(v21, v22, a2);
  if (a5)
  {
    v23 = launch_data_new_BOOL(1);
    launch_data_dict_insert(v21, v23, a5);
  }

  launch_data_dict_insert(v10, v21, "MachServices");
  objc_autoreleasePoolPop(v11);
  v24 = launch_data_alloc(LAUNCH_DATA_DICTIONARY);
  if (!v24)
  {
    sub_10000C89C();
  }

  v25 = v24;
  launch_data_dict_insert(v24, v10, "SubmitJob");
  v26 = launch_msg(v25);
  if (v26)
  {
    v27 = v26;
    if (launch_data_get_type(v26) != LAUNCH_DATA_ERRNO || !launch_data_get_errno(v27))
    {
      launch_data_free(v25);
      v25 = v27;
      goto LABEL_11;
    }

LABEL_15:
    sub_10000CC74(a2);
  }

  if (*__error())
  {
    goto LABEL_15;
  }

LABEL_11:

  launch_data_free(v25);
}

void sub_100004E84(char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  if (v4 > v5)
  {
    __s2 = 0;
    v6 = strnstr(a1, a2, v5);
    if (!v6)
    {
      asprintf(&__s2, " %s", a2);
      v7 = __s2;
      v8 = strstr(a1, __s2);
      free(v7);
      if (!v8)
      {
        sub_1000017B0(0, "No existing %s boot-arg to remove.\n", a2);
        return;
      }

      v6 = v8 + 1;
    }

    v9 = &v6[strcspn(v6, " ")];
    v10 = &v9[strspn(v9, " ")];
    do
    {
      v11 = v6--;
    }

    while (v6 >= a1 && *v6 == 32);
    if (*v10)
    {
      v12 = &v10[-(v11 != a1)];
      v13 = strlen(v12);
      memmove(v11, v12, v13 + 1);
    }

    else
    {
      *v11 = 0;
    }
  }
}

uint64_t sub_100004FB4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v36 = 0;
  bzero(&v43, 0x878uLL);
  v42[1] = 0;
  v42[0] = 0;
  v41[1] = 0;
  v41[0] = 0;
  v35 = 0;
  v40 = 0;
  *uu = 0;
  v1 = +[NSMutableArray array];
  if (!qword_1000271E8)
  {
    sub_10000C89C();
  }

  v2 = v1;
  if (statfs("/", &v43))
  {
    v3 = __error();
    strerror(*v3);
    sub_1000017B0(2, "failed to statfs root with error: %s");
LABEL_4:
    v4 = 0;
    goto LABEL_35;
  }

  sub_100005558(v43.f_mntfromname, v42, v41, &v36);
  v5 = APFSContainerVolumeGroupGet();
  if (v5 == 49197)
  {
    goto LABEL_10;
  }

  v6 = v5;
  if (v5 == 49154)
  {
    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  is_null = uuid_is_null(uu);
  if (is_null)
  {
    if (uuid_is_null(uu))
    {
LABEL_10:
      v8 = [NSString stringWithFormat:@"%ss%d", v41, v36];
      [v2 addObject:v8];

      goto LABEL_12;
    }

LABEL_11:
    v9 = strerror(v6 & 0x3FFF);
    sub_1000017B0(2, "error looking up volume group: %s", v9);
    goto LABEL_12;
  }

  sub_1000017B0(is_null, "root volume is part of a volume group looking up volumes to monitor...");
  *&v38.f_bsize = 0;
  Volumes = APFSContainerVolumeGroupGetVolumes();
  if (Volumes)
  {
    strerror(Volumes & 0x3FFF);
    sub_1000017B0(2, "failed to get volume group from disk: %s with error: %s");
    goto LABEL_4;
  }

  if (CFArrayGetCount(*&v38.f_bsize) < 1)
  {
    sub_10000C89C();
  }

  if (CFArrayGetCount(*&v38.f_bsize) >= 1)
  {
    v26 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*&v38.f_bsize, v26);
      notification = 0;
      if (!CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &notification))
      {
        sub_10000C89C();
      }

      v28 = [NSString stringWithFormat:@"%ss%d", v41, notification];
      [v2 addObject:v28];

      ++v26;
    }

    while (CFArrayGetCount(*&v38.f_bsize) > v26);
  }

  CFRelease(*&v38.f_bsize);
LABEL_12:
  bzero(&v38, 0x878uLL);
  v33 = 0;
  if (statfs("/private/var", &v38))
  {
    v10 = __error();
    strerror(*v10);
    sub_1000017B0(2, "failed to statfs data volume with error: %s");
  }

  else
  {
    v11 = APFSVolumeRole();
    mach_error_string(v11);
    sub_1000017B0(2, "Failed to get role of %s, expected data volume, actual role 0x%x, error message: %s\n");
  }

  if (![v2 count])
  {
    sub_1000017B0(2, "No volumes watchdog needs to monitor are found\n");
    goto LABEL_4;
  }

  notification = 0;
  v13 = IONotificationPortCreate(kIOMainPortDefault);
  if (!v13)
  {
    sub_10000C89C();
  }

  v14 = v13;
  IONotificationPortSetDispatchQueue(v13, qword_1000271E8);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v2;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v29 + 1) + 8 * i) UTF8String];
        v21 = IOBSDNameMatching(kIOMainPortDefault, 0, v20);
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v21);
        if (MatchingService)
        {
          v23 = MatchingService;
          if (IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
          {
            v24 = IOServiceAddInterestNotification(v14, v23, "IOGeneralInterest", sub_100005648, 0, &notification);
            if (v24)
            {
              mach_error_string(v24);
              sub_1000017B0(2, "failed to register volume interest notification for: %s with error: %s");
            }

            else
            {
              sub_1000017B0(v24, "registered volume interest notification for: %s");
            }
          }

          else
          {
            sub_1000017B0(2, "unable to monitor: %s for freeze notifications, not an APFS volume");
          }

          IOObjectRelease(v23);
        }

        else
        {
          sub_1000017B0(2, "failed to find IOKit object for volume: %s", v20);
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  v4 = v35;
LABEL_35:

  return v4 & 1;
}

void sub_100005558(const char *a1, char *a2, char *a3, uint64_t a4)
{
  v11 = 0;
  v8 = strlen(a1);
  v9 = strnstr(a1, "/dev", v8);
  if (v9 && ((v10 = v9, sscanf(v9, "/dev/disk%ds%d", &v11, a4) == 2) || sscanf(v10, "disk%ds%d", &v11, a4) == 2))
  {
    snprintf(a2, 0x10uLL, "/dev/disk%d", v11);
    snprintf(a3, 0x10uLL, "disk%d", v11);
  }

  else
  {
    sub_1000017B0(2, "failed to parse disk information from root_disk_name: %s", a1);
  }
}

void sub_100005648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= -536330231)
  {
    if (a3 == -536330234)
    {
      v7 = dword_100026B00;
      if (!dword_100026B00)
      {
        sub_100008774();
        v7 = dword_100026B00;
      }

      dword_100026B00 = v7 + 1;
      v5 = "received volume freeze notification";
      goto LABEL_22;
    }

    if (a3 == -536330233)
    {
      if (!--dword_100026B00)
      {
        sub_100003948("volume unfreeze notification", a2, a3, a4, a5);
      }

      v5 = "received volume unfreeze complete notification";
      goto LABEL_22;
    }

LABEL_13:
    sub_1000017B0(0, "ignoring interest notification of type: %u");
    return;
  }

  if (a3 == -536330230)
  {
    if ((byte_100026B04 & 1) == 0)
    {
      byte_100026B04 = 1;
      sub_100008774();
      v5 = "received volume transcribe start notification";
LABEL_22:
      v8 = 0;
      goto LABEL_23;
    }

    v5 = "duplicated volume transcribe start notification!";
LABEL_20:
    v8 = 2;
LABEL_23:

    sub_1000017B0(v8, v5);
    return;
  }

  if (a3 != -536330229)
  {
    goto LABEL_13;
  }

  if (byte_100026B04 != 1)
  {
    v5 = "duplicated volume transcribe stop notification!";
    goto LABEL_20;
  }

  byte_100026B04 = 0;
  sub_100003948("volume transcribe stop notification", a2, a3, a4, a5);
  if (qword_100026AF8)
  {
    v6 = APFSVolumeNeedsCryptoMigration();
    if (v6)
    {
      sub_1000017B0(2, "Cannot determine whether crypto migration for %s is needed with error %d", qword_100026AF8, v6 & 0x3FFF);
    }

    else
    {
      sub_1000017B0(0, "crypto migration finished");
      sub_100008688(0, v9, v10, v11, v12);
    }
  }

  sub_1000017B0(0, "received volume transcribe stop notification");
}

void sub_10000581C()
{
  v0 = IOServiceMatching("IOWatchdog");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    sub_10000C258(2, "failed to discover watchdog KEXT service");
    if (sub_100008CDC(v5, v6))
    {
      sub_10000C258(0, "detected virtual machine environment and no watchdog KEXT found, exiting...");

      sub_1000087B0();
    }

    sub_10000CD0C();
  }

  v2 = MatchingService;
  v3 = IOServiceOpen(MatchingService, mach_task_self_, 1u, &dword_100026B08);
  IOObjectRelease(v2);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = dword_100026B08 == 0;
  }

  if (v4)
  {
    sub_10000CCBC(&v7, v3);
  }

  sub_1000017B0(0, "connected to watchdog KEXT");
}

BOOL sub_100005928()
{
  output = 0;
  outputCnt = 1;
  v0 = IOConnectCallScalarMethod(dword_100026B08, 0, 0, 0, &output, &outputCnt);
  if (v0)
  {
    sub_10000CD28(v0);
  }

  return output != 0;
}

BOOL sub_100005984()
{
  output = 0;
  outputCnt = 1;
  v0 = IOConnectCallScalarMethod(dword_100026B08, 5u, 0, 0, &output, &outputCnt);
  if (v0)
  {
    sub_10000CD5C(v0);
  }

  return output != 0;
}

void sub_1000059E0()
{
  v0 = IOConnectCallScalarMethod(dword_100026B08, 3u, 0, 0, 0, 0);
  if (v0)
  {
    sub_10000CDC4(v0);
  }

  sub_1000017B0(v0, "called into KEXT to disable userspace monitoring");
}

void sub_100005A34(const char *a1)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__str = 0u;
  v3 = 0u;
  snprintf(__str, 0x800uLL, "%s", a1);
  v1 = IOConnectCallStructMethod(dword_100026B08, 2u, __str, 0x800uLL, 0, 0);
  sub_1000017B0(2, "IOConnectCallStructMethod returned 0x%x", v1);
  _os_crash();
  __break(1u);
}

uint64_t sub_100005AE8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outputStruct = 0;
  v8 = 2;
  if (!a1)
  {
    sub_10000C89C();
  }

  v6 = IOConnectCallStructMethod(dword_100026B08, 9u, 0, 0, &outputStruct, &v8);
  if (v6)
  {
    sub_10000CE2C(v6);
  }

  *a1 = HIBYTE(outputStruct);
  return outputStruct;
}

void sub_100005B58()
{
  v0 = IOConnectCallScalarMethod(dword_100026B08, 6u, 0, 0, 0, 0);
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonTestCPUHang method, returned : %d", v0);
  _os_crash();
  __break(1u);
}

uint64_t sub_100005BAC(uint64_t a1)
{
  input = a1;
  result = IOConnectCallScalarMethod(dword_100026B08, 7u, &input, 1u, 0, 0);
  if (input)
  {
    sub_10000CE60(result);
  }

  if (result)
  {
    sub_10000CE94(result);
  }

  return result;
}

uint64_t sub_100005C00()
{
  result = IOConnectCallScalarMethod(dword_100026B08, 8u, 0, 0, 0, 0);
  if (result)
  {
    sub_10000CEC8(result);
  }

  return result;
}

id sub_100005C3C(uint64_t a1)
{
  if (qword_100026B28 != -1)
  {
    sub_10000CEFC();
  }

  v2 = qword_100026B20;

  return v2;
}

void sub_100005C80(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.watchdogd.service_diagnostics", v3);
  v2 = qword_100026B20;
  qword_100026B20 = v1;

  if (!qword_100026B20)
  {
    sub_10000C89C();
  }
}

id sub_100005CF8(int a1)
{
  qword_100026B30 = malloc_type_calloc(a1, 0x1D0uLL, 0x105004013238DB1uLL);
  if (!qword_100026B30)
  {
    sub_10000C89C();
  }

  qword_100026B38 = malloc_type_calloc(2uLL, 0x10uLL, 0x1080040C20BADFCuLL);
  if (!qword_100026B38)
  {
    sub_10000C89C();
  }

  dword_100026B40 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v2 = dispatch_queue_create("com.apple.watchdogd.enhanced_diags", 0);
    v3 = qword_100026B10;
    qword_100026B10 = v2;

    v4 = dispatch_group_create();
    v5 = qword_100026B18;
    qword_100026B18 = v4;
  }

  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v11 = objc_opt_self();
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  v14 = objc_opt_self();
  v15 = objc_opt_self();
  v16 = objc_opt_self();
  v17 = objc_opt_self();
  v18 = objc_opt_self();
  v19 = objc_opt_self();
  v20 = objc_opt_self();
  v21 = objc_opt_self();
  return objc_opt_self();
}

uint64_t sub_100005F00(int a1)
{
  v6 = 0u;
  v7 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(a1, 13, 0, buffer, 64) == 64)
  {
    return (v6 >> 1) & 1;
  }

  v3 = __error();
  v4 = strerror(*v3);
  sub_1000017B0(2, "failed to get PROC_PIDT_SHORTBSDINFO on pid %d with error: %s", a1, v4);
  return 0;
}

uint64_t sub_100005FAC(const char *a1, char **a2)
{
  v4 = [NSString stringWithUTF8String:a1];
  if (!v4)
  {
    sub_10000C89C();
  }

  v5 = v4;
  v6 = +[OSLaunchdDomain currentDomain];
  v7 = [OSLaunchdJob copyJobWithLabel:v5 domain:v6];

  if (v7 || (+[OSLaunchdDomain systemDomain], v8 = objc_claimAutoreleasedReturnValue(), v7 = [OSLaunchdJob copyJobWithLabel:v5 domain:v8], v8, v7))
  {
    v9 = [v7 getCurrentJobInfo];
    v10 = v9;
    if (!v9)
    {
      sub_1000017B0(2, "failed to get service info for launchd service %s", a1);
      if (a2)
      {
        asprintf(a2, "appears to have been unloaded");
      }

      goto LABEL_34;
    }

    if (!a2)
    {
      goto LABEL_30;
    }

    if ([v9 state] != 4 && objc_msgSend(v10, "state") != 2)
    {
      if ([v10 state] == 3)
      {
        [v10 lastSpawnError];
        strerror([v10 lastSpawnError]);
        asprintf(a2, "failed to spawn with error %d (%s)");
      }

      else if ([v10 state] == 1)
      {
        asprintf(a2, "has not run since boot / load");
      }

      goto LABEL_30;
    }

    v11 = [v10 lastExitStatus];

    if (!v11)
    {
      if ([v10 state] != 2)
      {
        sub_10000C89C();
      }

      asprintf(a2, "has not exited since first loaded");
      goto LABEL_30;
    }

    v12 = [v10 lastExitStatus];
    v13 = [v12 os_reason_namespace];

    v14 = [v10 lastExitStatus];
    v15 = [v14 wait4Status];

    if (!v13)
    {
      if ((v15 & 0x7F) == 0)
      {
        asprintf(a2, "last exited with exit status : %d");
      }

      goto LABEL_30;
    }

    if (v13 == 20)
    {
LABEL_30:
      if ([v10 state] == 2)
      {
        if ([v10 pid] <= 0)
        {
          sub_10000C89C();
        }

        v21 = [v10 pid];
        goto LABEL_35;
      }

      sub_1000017B0(2, "failed to get PID for launchd service %s, current OSLaunchdJobState is %d", a1, [v10 state]);
LABEL_34:
      v21 = 0xFFFFFFFFLL;
LABEL_35:

      goto LABEL_36;
    }

    v25[0] = &off_100019BB8;
    v25[1] = &off_100019BD0;
    v26[0] = @"JETSAM";
    v26[1] = @"SIGNAL";
    v25[2] = &off_100019BE8;
    v25[3] = &off_100019C00;
    v26[2] = @"CODESIGNING";
    v26[3] = @"HANGTRACER";
    v25[4] = &off_100019C18;
    v25[5] = &off_100019C30;
    v26[4] = @"TEST";
    v26[5] = @"DYLD";
    v25[6] = &off_100019C48;
    v25[7] = &off_100019C60;
    v26[6] = @"LIBXPC";
    v26[7] = @"OBJC";
    v25[8] = &off_100019C78;
    v25[9] = &off_100019C90;
    v26[8] = @"EXEC";
    v26[9] = @"FRONTBOARD";
    v25[10] = &off_100019CA8;
    v25[11] = &off_100019CC0;
    v26[10] = @"TCC";
    v26[11] = @"REPORTCRASH";
    v25[12] = &off_100019CD8;
    v25[13] = &off_100019CF0;
    v26[12] = @"COREANIMATION";
    v26[13] = @"AGGREGATED";
    v25[14] = &off_100019D08;
    v25[15] = &off_100019D20;
    v26[14] = @"RUNNINGBOARD";
    v26[15] = @"SKYWALK";
    v25[16] = &off_100019D38;
    v25[17] = &off_100019D50;
    v26[16] = @"SETTINGS";
    v26[17] = @"LIBSYSTEM";
    v25[18] = &off_100019D68;
    v25[19] = &off_100019D80;
    v26[18] = @"FOUNDATION";
    v26[19] = @"WATCHDOG";
    v25[20] = &off_100019D98;
    v25[21] = &off_100019DB0;
    v26[20] = @"METAL";
    v26[21] = @"WATCHKIT";
    v25[22] = &off_100019DC8;
    v25[23] = &off_100019DE0;
    v26[22] = @"GUARD";
    v26[23] = @"ANALYTICS";
    v25[24] = &off_100019DF8;
    v25[25] = &off_100019E10;
    v26[24] = @"SANDBOX";
    v26[25] = @"SECURITY";
    v25[26] = &off_100019E28;
    v25[27] = &off_100019E40;
    v26[26] = @"ENDPOINTSECURITY";
    v26[27] = @"PAC_EXCEPTION";
    v25[28] = &off_100019E58;
    v25[29] = &off_100019E70;
    v26[28] = @"BLUETOOTH_CHIP";
    v26[29] = @"PORT_SPACE";
    v25[30] = &off_100019E88;
    v25[31] = &off_100019EA0;
    v26[30] = @"WEBKIT";
    v26[31] = @"BACKLIGHTSERVICES";
    v25[32] = &off_100019EB8;
    v25[33] = &off_100019ED0;
    v26[32] = @"ROSETTA";
    v26[33] = @"OS_REASON_AUDIO";
    v25[34] = &off_100019EE8;
    v25[35] = &off_100019F00;
    v26[34] = @"REALITYKIT";
    v26[35] = @"MTE_FAIL";
    v16 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:36];
    v17 = [NSNumber numberWithUnsignedInt:v13];
    v18 = [v16 objectForKey:v17];

    if (v18)
    {
      v19 = [NSNumber numberWithUnsignedInt:v13];
      v20 = [v16 objectForKeyedSubscript:v19];

      if (v20)
      {
LABEL_29:
        v22 = [v20 UTF8String];
        v23 = [v10 lastExitStatus];
        asprintf(a2, "last exited with reason namespace: %s, code %llu", v22, [v23 os_reason_code]);

        goto LABEL_30;
      }
    }

    else
    {
    }

    v20 = [NSString stringWithFormat:@"%d", v13];
    goto LABEL_29;
  }

  sub_1000017B0(2, "did not find a launchd service %s", a1);
  if (a2)
  {
    asprintf(a2, "appears to not exist in launchd");
  }

  v21 = 0xFFFFFFFFLL;
LABEL_36:

  return v21;
}

uint64_t sub_10000666C()
{
  if (!pthread_getspecific(qword_100027238))
  {
    sub_10000C89C();
  }

  v0 = 0;
  v1 = 1;
  atomic_compare_exchange_strong((qword_100026B38 + 8), &v0, 1u);
  if (v0)
  {
    v2 = 0;
    atomic_compare_exchange_strong((qword_100026B38 + 24), &v2, 1u);
    if (v2)
    {
      return 0;
    }
  }

  else
  {
    v1 = 0;
  }

  if ((byte_100026B44 & 1) == 0)
  {
    v3 = getpid();
    proc_set_dirty(v3, 1);
    byte_100026B44 = 1;
  }

  return qword_100026B38 + 16 * v1;
}

BOOL sub_100006718(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    sub_10000C89C();
  }

  v6 = sub_100006768();
  *a1 = v6;
  if (!v6)
  {
    sub_1000017B0(2, "failed to capture stackshot");
  }

  return v6 != 0;
}

uint64_t sub_100006768()
{
  v0 = stackshot_config_create();
  if (!v0)
  {
    sub_10000C89C();
  }

  v1 = v0;
  if (stackshot_config_set_flags())
  {
    sub_10000C89C();
  }

  v2 = -6;
  while (1)
  {
    v3 = stackshot_capture_with_config();
    if (v3 != 16 && v3 != 60)
    {
      break;
    }

    if (__CFADD__(v2++, 1))
    {
      strerror(v3);
      sub_1000017B0(2, "failed to capture stackshot, syscall returned %d (%s)");
      return 0;
    }
  }

  if (!v3)
  {
    stackshot_size = stackshot_config_get_stackshot_size();
    sub_1000017B0(0, "watchdog captured stackshot (%u bytes)", stackshot_size);
    return v1;
  }

  sub_1000017B0(2, "failed to capture stackshot, syscall returned %d");
  return 0;
}

void sub_100006838(uint64_t a1, uint64_t a2, int a3)
{
  sub_1000017B0(0, "writing diagnostics for %d services", a3);
  if (!a1)
  {
    sub_10000C89C();
  }

  if (dword_100026B40 < a3)
  {
    sub_10000C89C();
  }

  if (a3 <= 0)
  {
    dword_100026B48 = a3;
  }

  else
  {
    v6 = 0;
    v7 = (a2 + 48);
    do
    {
      v8 = qword_100026B30 + v6;
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 96) = 0u;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      *(v8 + 160) = 0u;
      *(v8 + 176) = 0u;
      *(v8 + 192) = 0u;
      *(v8 + 208) = 0u;
      *(v8 + 224) = 0u;
      *(v8 + 240) = 0u;
      *(v8 + 256) = 0u;
      *(v8 + 272) = 0u;
      *(v8 + 288) = 0u;
      *(v8 + 304) = 0u;
      *(v8 + 320) = 0u;
      *(v8 + 336) = 0u;
      *(v8 + 352) = 0u;
      *(v8 + 368) = 0u;
      *(v8 + 384) = 0u;
      *(v8 + 400) = 0u;
      *(v8 + 416) = 0u;
      *(v8 + 432) = 0u;
      *(v8 + 448) = 0u;
      *v8 = *(v7 - 3);
      v9 = *(v7 - 3);
      *(v8 + 16) = *(v7 - 4);
      *(v8 + 432) = *(v7 - 2);
      if (*v9)
      {
        __strlcpy_chk();
      }

      uuid_copy((v8 + 444), v7);
      v7 += 64;
      v6 += 464;
    }

    while (464 * a3 != v6);
    v10 = 0;
    dword_100026B48 = a3;
    v11 = 440;
    do
    {
      v12 = qword_100026B30;
      v13 = sub_100005FAC(*(qword_100026B30 + v11 - 440), (qword_100026B30 + v11 - 416));
      if (v13 >= 1)
      {
        *(v12 + v11) = v13;
      }

      ++v10;
      v11 += 464;
    }

    while (v10 < dword_100026B48);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006A34;
  block[3] = &unk_100018B98;
  block[4] = a1;
  block[5] = mach_absolute_time();
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  v15 = sub_100005C3C(v14);
  dispatch_async(v15, v14);
}

void sub_100006A34(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  memset(out, 0, 37);
  if (dword_100026B48 >= 1)
  {
    v3 = 0;
    v4 = 444;
    do
    {
      context = objc_autoreleasePoolPush();
      v5 = qword_100026B30;
      v6 = qword_100026B30 + v4;
      v7 = [NSMutableString stringWithFormat:@"(%d monitored services unresponsive): %s", dword_100026B48, qword_100026B30 + v4 - 412];
      v8 = v7;
      v9 = (v6 - 420);
      if (*(v6 - 420))
      {
        [v7 appendFormat:@", %s", *(v6 - 420)];
        free(*v9);
        *v9 = 0;
      }

      if (*(v6 - 4) < 1)
      {
        v17 = [CDStackshotReport alloc];
        v18 = (v5 + v4);
        v19 = [NSString stringWithUTF8String:*(v18 - 436)];
        v15 = [v17 initWithName:v19 reason:v8 exceptionCode:v18 - 12 exceptionCodeCount:1];

        if (*(v6 - 4) < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = [NSNumber numberWithInt:?];
        }

        uuid_unparse(v18, out);
        v24 = [NSString stringWithUTF8String:out];
        [v15 setIncidentID:v24];

        stackshot_buffer = stackshot_config_get_stackshot_buffer();
        stackshot_size = stackshot_config_get_stackshot_size();
        if (!v16)
        {
LABEL_17:
          [v15 useStackshotBuffer:stackshot_buffer size:stackshot_size frontmostPids:&__NSArray0__struct atTime:*(a1 + 40) machTime:0xFFFFFFFFLL sequence:0 isSnapshotDead:Current];
          goto LABEL_18;
        }

        v30 = v16;
        v23 = &v30;
      }

      else
      {
        v29 = 0;
        v28 = xmmword_10000EE20;
        v10 = [CDSystemWatchdogStackshotReport alloc];
        v11 = *(v6 - 4);
        v12 = (v5 + v4);
        v13 = [NSString stringWithUTF8String:*(v12 - 436)];
        v14 = [NSString stringWithUTF8String:*(v12 - 428)];
        v15 = [v10 initWithPid:v11 procName:v13 bundleID:v14 exitSnapshot:&v28 reason:v8];

        if (*(v6 - 4) < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = [NSNumber numberWithInt:?];
        }

        uuid_unparse(v12, out);
        v20 = [NSString stringWithUTF8String:out];
        [v15 setIncidentID:v20];

        stackshot_buffer = stackshot_config_get_stackshot_buffer();
        stackshot_size = stackshot_config_get_stackshot_size();
        if (!v16)
        {
          goto LABEL_17;
        }

        v31 = v16;
        v23 = &v31;
      }

      v25 = [NSArray arrayWithObjects:v23 count:1];
      [v15 useStackshotBuffer:stackshot_buffer size:stackshot_size frontmostPids:v25 atTime:*(a1 + 40) machTime:0xFFFFFFFFLL sequence:0 isSnapshotDead:Current];

LABEL_18:
      [v15 saveWithOptions:0];

      objc_autoreleasePoolPop(context);
      ++v3;
      v4 += 464;
    }

    while (v3 < dword_100026B48);
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    stackshot_config_dealloc();
    *v26 = 0;
    atomic_store(0, (v26 + 8));
  }

  sync();
}

uint64_t sub_100006E04(const char *a1, const char *a2)
{
  sub_1000017B0(0, "crashing service %s with reason context: %s", a1, a2);
  if (sub_100005FAC(a1, 0) <= 0)
  {
    sub_1000017B0(2, "failed to discover PID for job %s");
    return 0;
  }

  v3 = 1;
  if (terminate_with_reason())
  {
    v4 = __error();
    strerror(*v4);
    sub_1000017B0(2, "failed to terminate service %s, terminate_with_reason() returned %d (%s)");
    return 0;
  }

  return v3;
}

BOOL sub_100006EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  atomic_compare_exchange_strong(byte_1000271D0, &v5, 1u);
  v6 = v5 == 0;
  if (v5)
  {
    sub_1000017B0(2, "skipping collecting enhanced diagnostics because outstanding diagnostics still in progress", a3, a4, a5);
  }

  else
  {
    if (!qword_100026B18)
    {
      sub_10000C89C();
    }

    gettimeofday(&stru_1000271D8, 0);
  }

  return v6;
}

void sub_100006F78(uint64_t a1, unsigned int a2, void *a3)
{
  v16 = a3;
  if (&_DRSubmitLog)
  {
    v17 = objc_alloc_init(NSMutableDictionary);
  }

  else
  {
    v17 = 0;
  }

  memset(out, 0, 37);
  xmmword_100026B4C = 0u;
  unk_100026B5C = 0u;
  xmmword_100026B6C = 0u;
  unk_100026B7C = 0u;
  xmmword_100026B8C = 0u;
  unk_100026B9C = 0u;
  xmmword_100026BAC = 0u;
  unk_100026BBC = 0u;
  xmmword_100026BCC = 0u;
  unk_100026BDC = 0u;
  xmmword_100026BEC = 0u;
  unk_100026BFC = 0u;
  xmmword_100026C0C = 0u;
  unk_100026C1C = 0u;
  xmmword_100026C2C = 0u;
  unk_100026C3C = 0u;
  if (a2 >= 1)
  {
    v5 = 0;
    v6 = a2;
    v7 = (a1 + 8);
    do
    {
      v8 = &xmmword_100026B4C + v5;
      v9 = 256 - v5;
      if (v5)
      {
        v10 = snprintf(v8, v9, ", %s");
      }

      else
      {
        v10 = snprintf(v8, v9, "%s");
      }

      if (v10 + v5 >= 256)
      {
        v5 = 256;
      }

      else
      {
        v5 += v10;
      }

      if (&_DRSubmitLog)
      {
        uuid_unparse(v7, out);
        v11 = [NSString stringWithUTF8String:out];
        v12 = [NSString stringWithUTF8String:*(v7 - 1)];
        [v17 setValue:v11 forKey:v12];
      }

      v7 += 24;
      --v6;
    }

    while (v6);
  }

  sub_1000017B0(0, "attempting to dump tailspin for: %s", &xmmword_100026B4C);
  dispatch_group_enter(qword_100026B18);
  v13 = qword_100026B10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000071B4;
  block[3] = &unk_100018BE0;
  v20 = v16;
  v21 = &xmmword_100026B4C;
  v19 = v17;
  v14 = v17;
  v15 = v16;
  dispatch_async(v13, block);
}

void sub_1000071B4(uint64_t a1)
{
  sub_1000076E0(v36);
  snprintf(__str, 0x100uLL, "watchdog monitored services appear unhealthy: %s", *(a1 + 48));
  snprintf(v34, 0x400uLL, "%s/watchdog-%s.tailspin", "/var/mobile/Library/Logs/CrashReporter", v36);
  if (!&_tailspin_dump_output_with_options_sync)
  {
    sub_1000017B0(2, "Tailspin SPI not found");
    return;
  }

  v2 = open(v34, 2562, 416);
  if (v2 < 0)
  {
    v11 = __error();
    strerror(*v11);
    sub_1000017B0(2, "Could not create file, skip tailspin: %s %s");
    return;
  }

  v3 = v2;
  v33[0] = &__kCFBooleanFalse;
  v32[0] = UnsafePointer;
  v32[1] = UnsafePointer;
  v4 = [NSString stringWithUTF8String:__str];
  v33[1] = v4;
  v32[2] = UnsafePointer;
  v5 = [NSNumber numberWithBool:&_DRSubmitLog != 0];
  v33[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v8 = tailspin_dump_output_with_options_sync();
  (*(*(a1 + 40) + 16))();
  if (v8)
  {
    close(v3);
    sub_1000017B0(0, "%s created successfully", v34);
    v27[0] = xmmword_10000EE00;
    v27[1] = xmmword_10000EE10;
    v28 = clock_gettime_nsec_np(_CLOCK_REALTIME) + 604800000000000;
    v29 = 0;
    v9 = fsctl(v34, 0xC0304A6FuLL, v27, 0);
    if (v9)
    {
      v10 = __error();
      strerror(*v10);
      sub_1000017B0(2, "Failed to mark %s as purgeable due to %s");
    }

    else
    {
      sub_1000017B0(v9, "Mark %s as purgeable succeeds");
    }

    v17 = +[NSFileManager defaultManager];
    v30[0] = NSFileOwnerAccountName;
    v30[1] = NSFileGroupOwnerAccountName;
    v31[0] = @"root";
    v31[1] = @"_analyticsusers";
    v18 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v19 = [NSString stringWithUTF8String:v34];
    v25 = 0;
    [v17 setAttributes:v18 ofItemAtPath:v19 error:&v25];
    v15 = v25;

    if (!v15)
    {
      if (&_DRSubmitLog)
      {
        v20 = [NSString stringWithUTF8String:*(a1 + 48)];
        v21 = [NSString stringWithUTF8String:__str];
        v22 = [NSString stringWithUTF8String:v34];
        DRSubmitLog();
        v15 = 0;

        if (v15)
        {
          v16 = [v15 localizedDescription];
          [v16 UTF8String];
          sub_1000017B0(2, "DRSubmitLog: %s");
          goto LABEL_14;
        }

        sub_1000017B0(0, "submitted %s to DiagnosticPipeline", v34);
        if ((sub_100008EE0(v23, v24) & 1) == 0)
        {
          sub_10000775C();
        }

        dispatch_group_leave(qword_100026B18);
      }

      else
      {
        sub_1000017B0(0, "DRSubmitLog is not available");
      }

      v15 = 0;
      goto LABEL_15;
    }

    v16 = [v15 localizedDescription];
    [v16 UTF8String];
    sub_1000017B0(2, "setAttributes: %s");
LABEL_14:

    goto LABEL_15;
  }

  sub_1000017B0(2, "Failed to save tailspin to file: %s", v34);
  close(v3);
  v12 = +[NSFileManager defaultManager];
  v13 = [NSString stringWithUTF8String:v34];
  v26 = 0;
  v14 = [v12 removeItemAtPath:v13 error:&v26];
  v15 = v26;

  if ((v14 & 1) == 0)
  {
    v16 = [v15 localizedDescription];
    [v16 UTF8String];
    sub_1000017B0(2, "Cannot remove failed tailspin: %s");
    goto LABEL_14;
  }

LABEL_15:
}

uint64_t sub_1000076E0(char *a1)
{
  memset(&v3, 0, sizeof(v3));
  localtime_r(&stru_1000271D8.tv_sec, &v3);
  return snprintf(a1, 0x80uLL, "%d-%02d-%02d.%02d.%02d.%02d", v3.tm_year + 1900, v3.tm_mon + 1, v3.tm_mday, v3.tm_hour, v3.tm_min, v3.tm_sec);
}

void sub_10000775C()
{
  v0 = +[NSDate date];
  v1 = +[NSCalendar currentCalendar];
  v2 = [v1 components:16 fromDate:qword_100026C60 toDate:v0 options:0];

  if ([v2 day] >= 7)
  {
    v35 = v0;
    sub_1000017B0(0, "Prune the old tailspins in %s", "/var/mobile/Library/Logs/CrashReporter");
    v3 = +[NSFileManager defaultManager];
    v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
    v45[0] = NSURLNameKey;
    v45[1] = NSURLIsDirectoryKey;
    v5 = [NSArray arrayWithObjects:v45 count:2];
    v6 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:v5 options:4 errorHandler:0];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
      v36 = *v41;
      do
      {
        v10 = 0;
        v37 = v8;
        do
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v40 + 1) + 8 * v10);
          v12 = [v11 lastPathComponent];
          if ([v12 containsString:@".tailspin"])
          {
            v13 = v12;
            v14 = [v13 lastPathComponent];
            if ([v14 containsString:@".tailspin"])
            {
              v15 = [v13 rangeOfString:@".tailspin"];
              if (v15 == 0x7FFFFFFFFFFFFFFFLL)
              {
                sub_10000C89C();
              }
            }

            else
            {
              v15 = 0;
            }

            v16 = 0;
            v17 = -v15;
            do
            {
              v18 = [v14 characterAtIndex:v16++];
              v19 = v17 + 1;
              if (!v17)
              {
                break;
              }

              ++v17;
            }

            while (v18 != 45);
            if (v19 == 1)
            {
              sub_1000017B0(2, "unable to parse date from filename %s, skipping", [v14 UTF8String]);
              v20 = 0;
            }

            else
            {
              v21 = [v14 substringWithRange:{v16, -v19}];
              v22 = objc_opt_new();
              v23 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
              [v22 setLocale:v23];
              [v22 setDateFormat:@"yyyy-MM-dd.HH.mm.ss"];
              v20 = [v22 dateFromString:v21];

              v9 = v36;
            }

            if (v20)
            {
              v24 = +[NSCalendar currentCalendar];
              v25 = [v24 components:16 fromDate:v20 toDate:v35 options:0];

              v26 = [v25 day];
              if (v26 >= 8)
              {
                v27 = v26;
                v28 = [v11 absoluteString];
                sub_1000017B0(0, "Deleting old tailspin %s that was generated %ld days ago", [v28 UTF8String], v27);

                v29 = +[NSFileManager defaultManager];
                v39 = 0;
                v30 = [v29 removeItemAtURL:v11 error:&v39];
                v31 = v39;

                if ((v30 & 1) == 0)
                {
                  v32 = [v11 absoluteString];
                  v33 = [v32 UTF8String];
                  v34 = [v31 localizedDescription];
                  sub_1000017B0(2, "Failed to delete old tailspin %s, error:%s", v33, [v34 UTF8String]);
                }

                v9 = v36;
              }
            }

            else
            {
              v25 = v2;
            }

            v2 = v25;
            v8 = v37;
          }

          v10 = v10 + 1;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v8);
    }

    v0 = v35;
    objc_storeStrong(&qword_100026C60, v35);
  }
}

void sub_100007C18(uint64_t a1)
{
  dispatch_group_enter(qword_100026B18);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007CA4;
  block[3] = &unk_100018C00;
  block[4] = a1;
  dispatch_async(qword_100026B10, block);
}

void sub_100007CA4(uint64_t a1)
{
  sub_1000076E0(v20);
  snprintf(__str, 0x400uLL, "%s/watchdog-%s-ddt-%s.txt", "/var/mobile/Library/Logs/CrashReporter", *(a1 + 32), v20);
  __argv[0] = "ddt";
  __argv[1] = "--no-ports";
  v2 = *(a1 + 32);
  __argv[2] = "--no-kevents";
  __argv[3] = v2;
  __argv[4] = "-o";
  __argv[5] = __str;
  __argv[6] = 0;
  *__envp = off_100018C90;
  v17 = 0;
  v3 = posix_spawnattr_init(&v17);
  if (v3)
  {
    sub_10000CF10(v3);
  }

  v4 = posix_spawnattr_setflags(&v17, 16396);
  if (v4)
  {
    sub_10000CF10(v4);
  }

  v5 = posix_spawnattr_setprocesstype_np();
  if (v5)
  {
    sub_10000CF10(v5);
  }

  v16 = 0;
  v6 = posix_spawnattr_setsigmask(&v17, &v16);
  if (v6)
  {
    sub_10000CF10(v6);
  }

  v15 = -1;
  v7 = posix_spawnattr_setsigdefault(&v17, &v15);
  if (v7)
  {
    sub_10000CF10(v7);
  }

  v14 = 0;
  if (posix_spawn_file_actions_init(&v14) == -1)
  {
    sub_10000CF2C();
  }

  if (posix_spawn_file_actions_addopen(&v14, 1, "/dev/console", 131073, 0) == -1)
  {
    sub_10000CF2C();
  }

  if (posix_spawn_file_actions_addopen(&v14, 2, "/dev/console", 131073, 0) == -1)
  {
    sub_10000CF2C();
  }

  if (posix_spawn_file_actions_addopen(&v14, 0, "/dev/null", 0, 0) == -1)
  {
    sub_10000CF2C();
  }

  v13 = 0;
  v8 = posix_spawn(&v13, "/usr/local/bin/ddt", &v14, &v17, __argv, __envp);
  posix_spawn_file_actions_destroy(&v14);
  posix_spawnattr_destroy(&v17);
  if (v8)
  {
    strerror(v8);
    sub_1000017B0(2, "failed to spawn %s with error: %s");
  }

  else
  {
    sub_1000017B0(0, "%s spawned as %d", "/usr/local/bin/ddt", v13);
    v12 = 0;
    v9 = waitpid(v13, &v12, 0);
    if (v9 == -1)
    {
      while (*__error() == 4)
      {
        sub_1000017B0(2, "waitpid on %s with PID %d returned EINTR, retrying", "/usr/local/bin/ddt", v13);
        v9 = waitpid(v13, &v12, 0);
        if (v9 != -1)
        {
          goto LABEL_16;
        }
      }

      v10 = __error();
      strerror(*v10);
      sub_1000017B0(2, "waitpid on %s with PID %d failed with error %s");
    }

    else
    {
LABEL_16:
      if (v9 == v13)
      {
        if ((v12 & 0x7F) != 0)
        {
          sub_1000017B0(2, "%s : did not exit? status : %d");
        }

        else if (BYTE1(v12))
        {
          sub_1000017B0(2, "%s: exited with status %d");
        }

        else
        {
          sub_1000017B0(0, "%s: exited with status %d, saved at %s");
        }

        v11 = v12 & 0x7F;
        if ((v12 & 0x7F) != 0 && v11 != 127)
        {
          strsignal(v11);
          sub_1000017B0(2, "%s: exited due to signal %s");
        }
      }

      else
      {
        sub_1000017B0(2, "waitpid on %s with PID %d returned %d");
      }
    }
  }

  dispatch_group_leave(qword_100026B18);
}

void sub_100008020(uint64_t a1, int a2)
{
  if (qword_100026C58 == -1)
  {
    if (!a1)
    {
LABEL_24:

      sub_1000017B0(2, "No valid unblock requests, return");
      return;
    }
  }

  else
  {
    sub_10000CF4C();
    if (!a1)
    {
      goto LABEL_24;
    }
  }

  if (a2 <= 0)
  {
    goto LABEL_24;
  }

  v22 = objc_opt_new();
  sub_1000017B0(0, "Request unblock operation for:");
  v4 = 0;
  v5 = a1;
  do
  {
    v6 = a1 + 112 * v4;
    v7 = sub_100005FAC(*v6, 0);
    if (v7 <= 0)
    {
      sub_1000017B0(2, "Skip evaluating or taking action on service %s because failed to get PID");
    }

    else
    {
      v8 = v7;
      if (sub_100005F00(v7))
      {
        sub_1000017B0(2, "Skip evaluating or taking action on service %s because service being debugged");
      }

      else
      {
        v9 = 8;
        while (1)
        {
          v10 = *(v5 + v9);
          if (v10)
          {
            break;
          }

          v9 += 8;
          if (v9 == 88)
          {
            sub_1000017B0(2, "Skip evaluating or taking action on service %s because failed to find blocked thread");
            goto LABEL_13;
          }
        }

        v11 = [[NSUUID alloc] initWithUUIDBytes:v6 + 96];
        v12 = [[UBStuckService alloc] initForPid:v8 threadID:v10 timeElapsed:v11 incidentUUID:*(v6 + 88)];
        [v22 addObject:v12];
        v13 = *v6;
        v14 = [v11 UUIDString];
        sub_1000017B0(0, "%s : %s", v13, [v14 UTF8String]);
      }
    }

LABEL_13:
    ++v4;
    v5 += 112;
  }

  while (v4 != a2);
  if ([v22 count])
  {
    v15 = os_transaction_create();
    if (sub_100006768())
    {
      v16 = [NSData alloc];
      stackshot_buffer = stackshot_config_get_stackshot_buffer();
      v18 = [v16 initWithBytes:stackshot_buffer length:stackshot_config_get_stackshot_size()];
    }

    else
    {
      sub_1000017B0(2, "Failed to capture stackshot");
      v18 = 0;
    }

    stackshot_config_dealloc();
    v19 = qword_100026C50;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000083E0;
    block[3] = &unk_100018C70;
    v24 = v22;
    v25 = v18;
    v26 = v15;
    v20 = v15;
    v21 = v18;
    dispatch_async(v19, block);
  }

  else
  {
    sub_1000017B0(0, "No valuable service could be found, return");
  }
}

void sub_100008350(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("com.apple.watchdogd.unblock_diagnostics", attr);
  v3 = qword_100026C50;
  qword_100026C50 = v2;

  if (!qword_100026C50)
  {
    sub_10000C89C();
  }
}

void sub_1000083E0(uint64_t a1)
{
  v2 = objc_alloc_init(UBUnblockClient);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008498;
  v5[3] = &unk_100018C48;
  v6 = *(a1 + 48);
  [v2 recover:v3 stackshotData:v4 replyQueue:0 callback:v5];
}

void sub_100008498(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = [a2 description];
    sub_1000017B0(2, "Unblock reactive action returns error: %s", [v6 UTF8String]);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 recoveryStatus] == 1)
          {
            [v11 pid];
            sub_1000017B0(0, "Error occured when trying to recover process %d");
          }

          else if ([v11 recoveryStatus] == 2)
          {
            [v11 pid];
            sub_1000017B0(0, "Unable to identify recoverable action for process %d");
          }

          else
          {
            [v11 issueType];
            [v11 pid];
            [v11 recoveryConfidence];
            [v11 recoveryStatus];
            sub_1000017B0(0, "Identified issue %d for process %d with confidence %d, %s");
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

void sub_100008688(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (byte_100026C80 == 1 && (a1 & 1) == 0)
  {
    if (qword_100026C78 != -1)
    {
      sub_10000CF60();
    }

    v5 = qword_1000271F0;
    if (!qword_1000271F0)
    {
      sub_10000C89C();
    }

    dispatch_async(v5, &stru_100018CC0);
  }
}

void sub_1000086F8(id a1)
{
  sub_1000017B0(0, "watchdogd registers iokit monitoring");
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.watchdogd.monitoring_iokit", v3);
  v2 = qword_1000271F0;
  qword_1000271F0 = v1;
}

void sub_100008774()
{
  v0 = dword_100026C84;
  if (!dword_100026C84)
  {
    sub_1000059E0();
    sub_100008FA4();
    v0 = dword_100026C84;
  }

  dword_100026C84 = v0 + 1;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.iokit.matching", 0, &stru_100018CE0);
  if (pthread_key_create(&qword_100027238, 0))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_13:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  sub_10000C2AC();
  sub_10000581C();
  sub_10000BEF4();
  if (!sub_100005928())
  {
    sub_10000C258(0, "userspace monitoring disabled");
    sub_1000034F4(v18, v19, v20, v21, v22);
LABEL_11:
    sleep(2u);
    exit(0);
  }

  sub_1000017B0(0, "userspace monitoring enabled");
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    sub_10000457C(has_internal_diagnostics, v2);
  }

  sub_100001D9C();
  byte_100026C80 = sub_100005AE8(&byte_100026C88, v3, v4, v5, v6);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

  v9 = dispatch_queue_create("com.apple.watchdogd.monitoring_transitions", v8);
  v10 = qword_1000271E8;
  qword_1000271E8 = v9;

  if (!qword_1000271E8)
  {
    goto LABEL_13;
  }

  dispatch_async(qword_1000271E8, &stru_100018D00);
  dispatch_async(qword_1000271E8, &stru_100018D20);
  dispatch_async(qword_1000271E8, &stru_100018D40);
  sub_10000BF84(v11, v12, v13, v14, v15);
  if (os_variant_is_darwinos())
  {
    sub_10000A0EC();
  }

  dispatch_async(qword_1000271E8, &stru_100018D60);
  v16 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  v17 = qword_100026C70;
  qword_100026C70 = v16;

  if (qword_100026C70)
  {
    dispatch_source_set_event_handler_f(qword_100026C70, sub_100008B54);
    signal(15, 1);
    dispatch_resume(qword_100026C70);

    objc_autoreleasePoolPop(v0);
    CFRunLoopRun();
    goto LABEL_11;
  }

LABEL_14:
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000089E4(id a1)
{
  thePortRef = 0;
  dword_100026C90 = IORegisterForSystemPower(0, &thePortRef, sub_10000384C, &dword_100026C8C);
  if (!dword_100026C90)
  {
    sub_10000C89C();
  }

  if (!thePortRef)
  {
    sub_10000C89C();
  }

  IONotificationPortSetDispatchQueue(thePortRef, qword_1000271E8);
}

void sub_100008A50(id a1)
{
  v1 = sub_100004FB4(a1);
  v2 = "No";
  if (v1)
  {
    v2 = "Yes";
  }

  sub_1000017B0(0, "crypto migration needed: %s", v2);

  sub_100008688(v1, v3, v4, v5, v6);
}

void sub_100008ABC(id a1)
{
  if (NSClassFromString(@"UBUnblockService"))
  {
    v1 = +[UBUnblockService sharedInstance];
    v2 = qword_100026C68;
    qword_100026C68 = v1;

    if (![qword_100026C68 setupAndActivate:byte_100027202])
    {
      return;
    }

    v3 = "Failed to bootstrap Unblock Service";
  }

  else
  {
    v3 = "UBUnblockService is not available";
  }

  sub_1000017B0(2, v3);
}

void sub_100008B54()
{
  sub_1000017B0(0, "watchodgd has been SIGTERMed");
  sub_100001D9C();
  is_darwinos = os_variant_is_darwinos();
  if (!is_darwinos)
  {
    exit(1);
  }

  sub_10000A02C(is_darwinos);
}

char *sub_100008BA4(uint64_t a1, uint64_t a2)
{
  if (qword_100026C98 != -1)
  {
    sub_10000CF74();
  }

  return byte_100026CA0;
}

void sub_100008BDC(id a1)
{
  v2 = 1024;
  v1 = sysctlbyname("kern.bootargs", byte_100026CA0, &v2, 0, 0);
  if (v1)
  {
    sub_10000CF88();
  }

  sub_1000017B0(v1, "retrieved current device boot-args: %s", byte_100026CA0);
}

uint64_t sub_100008C44(uint64_t a1, uint64_t a2)
{
  if (qword_1000270A0 != -1)
  {
    sub_10000CFC8();
  }

  return byte_1000270A8;
}

void sub_100008C7C(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"stress-rack", 0, 0);
    if (!CFProperty)
    {
      v3 = 0;
      goto LABEL_6;
    }

    CFRelease(CFProperty);
  }

  v3 = 1;
LABEL_6:
  byte_1000270A8 = v3;
}

uint64_t sub_100008CDC(uint64_t a1, uint64_t a2)
{
  if (qword_1000270B0 != -1)
  {
    sub_10000CFDC();
  }

  return byte_1000270A9;
}

void sub_100008D14(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_1000270A9 = v2 != 0;
  }
}

uint64_t sub_100008D70(uint64_t a1, uint64_t a2)
{
  if (qword_1000270C0 != -1)
  {
    sub_10000CFF0();
  }

  return byte_1000270B8;
}

void sub_100008DA8(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (v1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"osenvironment", 0, 0);
    if (CFProperty)
    {
      v3 = CFProperty;
      Length = CFDataGetLength(CFProperty);
      if (Length > 64)
      {
        v6 = 0;
      }

      else
      {
        v5 = Length;
        v9.location = 0;
        v9.length = Length;
        CFDataGetBytes(v3, v9, buffer);
        v6 = strncmp(buffer, "diagnostics", v5) == 0;
      }

      byte_1000270B8 = v6;
      CFRelease(v3);
    }

    else
    {
      byte_1000270B8 = 0;

      sub_1000017B0(2, "Cannot locate osenvironment entry in IORegistry");
    }
  }

  else
  {
    byte_1000270B8 = 0;
  }
}

uint64_t sub_100008EE0(uint64_t a1, uint64_t a2)
{
  if (qword_1000270C8 != -1)
  {
    sub_10000D004();
  }

  return byte_1000270D0;
}

void sub_100008F18(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/filesystems");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"e-apfs", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      byte_1000270D0 = 1;
    }

    IOObjectRelease(v2);
  }
}

void sub_100008FA4()
{
  dispatch_semaphore_signal(qword_100027220);
  sub_1000017B0(0, "signaled service monitoring thread to pause");
  dispatch_semaphore_wait(qword_100027228, 0xFFFFFFFFFFFFFFFFLL);
  sub_1000017B0(0, "service monitoring thread paused");
  qword_1000270D8 = 0;
}

void sub_100008FFC(id a1)
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = &unk_10001F728;
  if (has_internal_diagnostics)
  {
    sub_100008BA4(has_internal_diagnostics, v2);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = -1;
    if (os_parse_boot_arg_from_buffer_string())
    {
      dword_1000266C4 = 0;
      sub_1000017B0(0, "monitoring for all daemons configured to panic on first timeout (per %s boot-arg)", "-wdt_panic_immediately");
    }

    else if (os_parse_boot_arg_from_buffer_string())
    {
      sub_1000017B0(0, "detected boot-arg (%s) to panic on first timeout with value: %s", "wdt_panic_when_unresponsive", &v30);
      sub_10000953C("wdt_panic_when_unresponsive", &v30, &stru_100018E80);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
    }

    if (os_parse_boot_arg_from_buffer_string())
    {
      sub_1000017B0(0, "detected boot-arg (%s) to capture ddt on timeout with value: %s", "wdt_capture_ddt_on_timeout", &v30);
      sub_10000953C("wdt_capture_ddt_on_timeout", &v30, &stru_100018EA0);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
    }

    if (os_parse_boot_arg_from_buffer_string())
    {
      byte_100027200 = 1;
    }

    if ((os_parse_boot_arg_from_buffer_string() & 1) != 0 || !NSClassFromString(@"UBUnblockService") || (_os_feature_enabled_impl() & 1) == 0)
    {
      sub_1000017B0(0, "detected setting for skipping unblock reactive action");
      byte_100027202 = 1;
    }

    if (os_parse_boot_arg_from_buffer_string())
    {
      sub_1000017B0(0, "Enable tailspin check before crashing service (per %s boot-arg)", "-wdt_skip_crash_without_tailspin");
      byte_100027201 = 1;
    }

    has_internal_diagnostics = os_parse_boot_arg_from_buffer_int();
    v4 = dword_1000266C0;
    if (dword_1000266C0 >= 1)
    {
      v5 = 0;
      v6 = off_10001F750;
      do
      {
        if (*(v6 - 23) == 1)
        {
          sub_1000017B0(0, "enabled monitoring for internal service : %s", *v6);
          *(v6 - 24) = 0;
          v4 = dword_1000266C0;
        }

        ++v5;
        v6 += 238;
      }

      while (v5 < v4);
    }
  }

  if (sub_100008D70(has_internal_diagnostics, v2))
  {
    v7 = dword_1000266C0;
    if (dword_1000266C0 >= 1)
    {
      v8 = 0;
      v9 = off_10001F750;
      do
      {
        if (*(v9 + 24) == 1)
        {
          sub_1000017B0(0, "disable monitoring for service : %s at checkerboard mode", *v9);
          *(v9 - 24) = 1;
          v7 = dword_1000266C0;
        }

        ++v8;
        v9 += 238;
      }

      while (v8 < v7);
    }
  }

  v10 = dispatch_semaphore_create(0);
  v11 = qword_100027220;
  qword_100027220 = v10;

  v12 = dispatch_semaphore_create(0);
  v13 = qword_100027228;
  qword_100027228 = v12;

  v14 = dispatch_semaphore_create(0);
  v15 = qword_100027230;
  qword_100027230 = v14;

  sub_100005CF8(dword_1000266C0);
  v16 = dword_1000266C0;
  if (dword_1000266C0 < 1)
  {
    v3 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = &unk_10001F728 + 1904 * v17;
      if (*(v18 + 17) == 2)
      {
        v19 = 0;
        *(v18 + 9) = 0;
        v20 = &unk_10001F728;
        v21 = v16;
        do
        {
          if (*(v20 + 17) == 3)
          {
            v22 = *(v20 + 9);
            if (!v22)
            {
              sub_10000C89C();
            }

            v23 = strlen(*(v18 + 5));
            if (!strncmp(*(v18 + 5), v22, v23))
            {
              *(v20 + 12) = v19;
              *(v18 + 9) = v20;
              v19 = v20;
              *(v20 + 11) = v18;
            }
          }

          v20 += 1904;
          --v21;
        }

        while (v21);
      }

      ++v17;
    }

    while (v17 != v16);
    v24 = &qword_10001F780;
    v25 = v16;
    do
    {
      if (*(v24 - 5) == 3 && !*v24)
      {
        sub_10000C89C();
      }

      v24 += 238;
      v25 = (v25 - 1);
    }

    while (v25);
    v26 = v16 + 1;
    v27 = (&unk_10001F728 + 1904 * v16 - 1904);
    do
    {
      *v27 = v25;
      v27[1] = v26 - 2;
      --v26;
      v25 = v27;
      v27 -= 238;
    }

    while (v26 > 1);
  }

  qword_1000271F8 = v3;
  v28 = pthread_create(&qword_100027208, 0, sub_100001198, 0);
  if (v28)
  {
    sub_10000CF10(v28);
  }
}

void sub_10000953C(const char *a1, char *a2, void *a3)
{
  __stringp = a2;
  v4 = a3;
  v5 = strsep(&__stringp, ",");
  if (v5)
  {
    v6 = v5;
    while (*v6)
    {
      v7 = dword_1000266C0;
      if (dword_1000266C0 < 1)
      {
LABEL_8:
        sub_1000017B0(2, "%s boot-arg specified for daemon %s which cannot be found in services list", a1, v6);
      }

      else
      {
        v8 = &unk_10001F728;
        while (1)
        {
          v9 = strlen(v8[5]);
          if (!strncasecmp(v8[5], v6, v9))
          {
            break;
          }

          v8 += 238;
          if (!--v7)
          {
            goto LABEL_8;
          }
        }

        v4[2](v4, v8);
      }

      v6 = strsep(&__stringp, ",");
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    sub_1000017B0(2, "%s boot-arg specified with empty daemon name", a1);
  }

LABEL_13:
}

void sub_1000096E8(uint64_t a1, uint64_t a2)
{
  v2 = 1000000000 * *(a1 + 32) / 0x2540BE400uLL;
  if (*(a2 + 56) >= v2)
  {
    sub_1000017B0(2, "Keep %s default timeout cause %lld seconds (per %s boot-arg) is too short");
  }

  else
  {
    *(a2 + 56) = v2;
    sub_1000017B0(0, "%s configured to timeout in %lld seconds (per %s boot-arg)");
  }
}

void sub_100009784(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = qword_1000271F8;
  if (!qword_1000271F8)
  {
    goto LABEL_76;
  }

  v3 = v1;
  do
  {
    v4 = sub_100002C54(v2);
    if (v4 && *(v2 + 1496) == 1 && ((*(v2 + 62) & 1) != 0 || *(v2 + 192) >= dword_1000266C4))
    {
      bzero(v40, 0x800uLL);
      if (*(v2 + 128))
      {
        v5 = snprintf(v40, 0x800uLL, "no successful checkins from %s (%d induced crashes) in %llu seconds\n");
      }

      else if (*(v2 + 68) == 3 && *(v2 + 120) != *(*(v2 + 88) + 120))
      {
        v5 = snprintf(v40, 0x800uLL, "no successful checkins from %s (%d induced crashes) since monitoring enabled by %s (%llu seconds ago)\n");
      }

      else
      {
        v5 = snprintf(v40, 0x800uLL, "no successful checkins from %s (%d induced crashes) \n", *(v2 + 40), *(v2 + 196));
      }

      v6 = v5;
      if (v5 <= 0x800)
      {
        v7 = 2048 - v5;
      }

      else
      {
        v7 = 0;
      }

      if (*(v2 + 210))
      {
        v8 = *(v2 + 1240);
        if (v8)
        {
          v9 = snprintf(&v40[v5], v7, "%s returned not alive with context : %s (code: 0x%llx\n", *(v2 + 40), (v2 + 210), v8);
        }

        else
        {
          v9 = snprintf(&v40[v5], v7, "service returned not alive with context : %s\n", (v2 + 210));
        }

        v6 += v9;
        if (v6 <= 0x800)
        {
          v7 = 2048 - v6;
        }

        else
        {
          v7 = 0;
        }
      }

      v39 = 0;
      sub_100005FAC(*(v2 + 24), &v39);
      if (v39)
      {
        snprintf(&v40[v6], v7, "%s %s\n", *(v2 + 40), v39);
      }

      bzero(v41, 0x800uLL);
      v10 = snprintf(v41, 0x800uLL, "%s", v40);
      v11 = qword_1000271F8;
      if (qword_1000271F8)
      {
        v12 = v10;
        if (v10 <= 0x800)
        {
          v13 = 2048 - v10;
        }

        else
        {
          v13 = 0;
        }

        do
        {
          if (sub_100002C54(v11))
          {
            v14 = &v41[v12];
            if (*(v11 + 196))
            {
              v15 = snprintf(&v41[v12], v13, "service: %s (%d induced crashes), ");
            }

            else
            {
              v15 = snprintf(&v41[v12], v13, "service: %s, ");
            }

            v16 = v15;
            v17 = *(v11 + 136);
            v18 = v13 - v15;
            if (v17)
            {
              v19 = snprintf(&v14[v15], v18, "total successful checkins in %llu seconds: %llu, last successful checkin: %llu seconds ago\n", (v3 - *(v11 + 112)) / 0x3B9ACA00uLL, *(v11 + 128), (v3 - v17) / 0x3B9ACA00uLL);
            }

            else if (*(v11 + 68) == 3 && *(v11 + 120) != *(*(v11 + 88) + 120))
            {
              v19 = snprintf(&v14[v15], v18, "no successful checkins since monitoring enabled by %s (%llu seconds ago)\n");
            }

            else
            {
              v19 = snprintf(&v14[v15], v18, "no successful checkins in %llu seconds\n");
            }

            v12 += v16 + v19;
            if (v12 <= 0x800)
            {
              v13 = 2048 - v12;
            }

            else
            {
              v13 = 0;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }

      sub_100005A34(v41);
    }

    v2 = *v2;
  }

  while (v2);
  v20 = qword_1000271F8;
  __chkstk_darwin(v4);
  v22 = &v37[-8 * v21 - 1];
  if (!v20)
  {
LABEL_76:
    sub_10000C89C();
  }

  v23 = 0;
  do
  {
    if (*(v20 + 1496) != 1)
    {
      goto LABEL_61;
    }

    if (*(v20 + 1497))
    {
      sub_10000D02C(*(v20 + 1497));
    }

    v24 = &v22[8 * v23];
    *v24 = *(v20 + 24);
    *(v24 + 1) = *(v20 + 40);
    if (uuid_is_null((v20 + 168)))
    {
      sub_1000017B0(0, "service %s incident_id is null", *(v20 + 40));
      uuid_generate(v24 + 48);
    }

    else
    {
      uuid_copy(v24 + 48, (v20 + 168));
    }

    v25 = *(v20 + 61);
    *(v20 + 1497) = v25;
    if (byte_100027201 == 1)
    {
      v26 = atomic_load((v20 + 184));
      if (v26 == 1)
      {
        sub_1000017B0(0, "skip crashing service %s due to pending tailspin", *(v20 + 24));
        *(v20 + 1497) = 1;
      }

      else if ((*(v20 + 1497) & 1) == 0)
      {
LABEL_59:
        v27 = 313391822;
        goto LABEL_60;
      }
    }

    else if ((v25 & 1) == 0)
    {
      goto LABEL_59;
    }

    v27 = 581827278;
LABEL_60:
    v24[3] = v20 + 1498;
    v24[4] = v27;
    v24[5] = *(v20 + 8);
    ++v23;
LABEL_61:
    v20 = *v20;
  }

  while (v20);
  if (v23 <= 0)
  {
    goto LABEL_76;
  }

  v28 = qword_100027100;
  if (qword_100027100)
  {
    sub_100006838(qword_100027100, v22, v23);
    qword_100027100 = 0;
  }

  v29 = v23;
  v30 = v22 + 5;
  do
  {
    v31 = *v30;
    v30 += 8;
    v32 = sub_10000B8BC(v31);
    if (!v32)
    {
      sub_10000C89C();
    }

    v33 = v32;
    if ((*(v32 + 1497) & 1) == 0)
    {
      v34 = sub_100006E04(v32[3], v32 + 1498);
      if (v34)
      {
        ++*(v33 + 49);
        v34 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v33[19] = v34;
      }

      if (&_AnalyticsSendEventLazy)
      {
        v35 = sub_100005C3C(v34);
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100009EC4;
        v37[3] = &unk_100018F20;
        v37[4] = v33;
        v38 = v28 != 0;
        dispatch_async(v35, v37);
      }
    }

    *(v33 + 1497) = 0;
    v33[20] = qword_1000270E8;
    ++*(v33 + 48);
    atomic_store(0, v33 + 46);
    --v29;
  }

  while (v29);
}

void sub_100009E04(id a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    os_unfair_lock_lock(&unk_100027218);
    for (i = qword_1000271F8; i; i = *i)
    {
      v2 = 1;
      atomic_compare_exchange_strong((i + 184), &v2, 2u);
      if (v2 == 1)
      {
        sub_1000017B0(0, "update service %s tailspin status to DONE", *(i + 40));
      }
    }

    os_unfair_lock_unlock(&unk_100027218);
  }
}

id sub_100009F44(uint64_t a1)
{
  v6[0] = @"crashedProcess";
  v2 = [NSString stringWithUTF8String:*(*(a1 + 32) + 40)];
  v6[1] = @"diagsCaptured";
  v7[0] = v2;
  v3 = [NSNumber numberWithBool:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_10000A02C(uint64_t a1)
{
  v1 = sub_10000A074(a1);
  dispatch_async(v1, &stru_100018F40);
}

id sub_10000A074(uint64_t a1)
{
  if (qword_100027120 != -1)
  {
    sub_10000D04C();
  }

  v2 = qword_100027118;

  return v2;
}

void sub_10000A0B8(id a1)
{
  sub_10000C258(0, "bailing out");

  sub_1000087CC();
}

void sub_10000A0EC()
{
  v0 = objc_alloc_init(NSMutableArray);
  v1 = +[NSFileManager defaultManager];
  v2 = [NSString stringWithFormat:@"%s", off_1000266C8];
  v3 = [v1 fileExistsAtPath:v2];

  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = sub_10000AD30(v4);
  memset(value, 0, 37);
  if (getxattr(off_1000266C8, "BootSessionUUID", value, 0x25uLL, 0, 0) == -1)
  {
    v12 = *__error();
    v13 = __error();
    v14 = strerror(*v13);
    sub_1000017B0(2, "Cannot get boot session uuid xattr from file with error %d %s", v12, v14);
  }

  else
  {
    v6 = [NSString stringWithCString:value encoding:4];
    v7 = [v6 isEqualToString:v5];

    if (v7)
    {
      v8 = sub_10000A4C4();

      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create("com.apple.watchdogd.service_recovery", v9);
      v11 = qword_100027110;
      qword_100027110 = v10;

      if (!qword_100027110)
      {
        sub_10000C89C();
      }

      v0 = v8;
      goto LABEL_8;
    }
  }

  sub_1000017B0(0, "Found stashed services info from different boot, try to remove it");
  if (unlink(off_1000266C8))
  {
    sub_10000D060();
  }

LABEL_8:
  sub_1000017B0(0, "watchdogd sets up listener for opt-in service registration");
  qword_100027240 = 0;
  atomic_store(0, byte_100027248);
  v15 = dispatch_semaphore_create(0);
  v16 = qword_100027250;
  qword_100027250 = v15;

  v18 = sub_10000A074(v17);
  mach_service = xpc_connection_create_mach_service("com.apple.watchdogd.optin.registration", v18, 1uLL);
  v20 = qword_100027138;
  qword_100027138 = mach_service;

  v21 = qword_100027138;
  if (!qword_100027138)
  {
    sub_10000C89C();
  }

  *value = _NSConcreteStackBlock;
  *&value[8] = 3221225472;
  *&value[16] = sub_10000AE2C;
  *&value[24] = &unk_100018FD0;
  *&value[32] = v18;
  v22 = v18;
  xpc_connection_set_event_handler(v21, value);
  xpc_connection_activate(qword_100027138);
  sub_1000017B0(0, "watchdogd starts listening incoming opt-in service registration message");

  if ([v0 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v0;
    v24 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v30 + 1) + 8 * i);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000A7B4;
          block[3] = &unk_100018F68;
          block[4] = v28;
          dispatch_async(qword_100027110, block);
        }

        v25 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v25);
    }
  }
}

id sub_10000A4C4()
{
  v0 = objc_alloc_init(NSMutableArray);
  v1 = [NSString stringWithFormat:@"%s", off_1000266C8];
  v22 = 0;
  v2 = [NSData dataWithContentsOfFile:v1 options:0 error:&v22];
  v3 = v22;

  if (v2)
  {
    v21 = 0;
    v4 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v21];
    v5 = v21;

    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v4 count])
        {
          v6 = [v4 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v0 addObjectsFromArray:v4];
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v16 = v0;
            v8 = v0;
            v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v18;
              do
              {
                for (i = 0; i != v10; i = i + 1)
                {
                  if (*v18 != v11)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v13 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:@"watchdog_optin_service_launchd_job_label"];
                  sub_1000017B0(0, "Found previously stashed service %s", [v13 UTF8String]);
                }

                v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
              }

              while (v10);
            }

            v0 = v16;
          }
        }
      }

      else
      {
        sub_1000017B0(2, "Stashed data seems not compliant with expectation");
      }
    }

    else
    {
      v14 = [v5 description];
      sub_1000017B0(2, "Failed to parse plist with error : %s", [v14 UTF8String]);
    }
  }

  else
  {
    v4 = [v3 description];
    sub_1000017B0(2, "Failed to read stashed service: %s", [v4 UTF8String]);
    v5 = v3;
  }

  return v0;
}

uint64_t sub_10000A7BC(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    sub_10000C89C();
  }

  v2 = v1;

  v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
  if (v3)
  {
    v4 = v3;
    v5 = malloc_type_calloc(1uLL, 0x770uLL, 0x1072040412F3752uLL);
    if (v5)
    {
      v6 = v5;
      v4[1] = v5;
      *v4 = 1;
      v5[17] = 1;
      v7 = 6;
      v5[14] = 6;
      v8 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_launchd_job_label"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        *(v6 + 3) = strdup([v8 UTF8String]);
        v9 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_bootstrap_service_name"];

        if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          *(v6 + 4) = strdup([v9 UTF8String]);
          v10 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_process_name"];

          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *(v6 + 5) = strdup([v10 UTF8String]);
              v9 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_bundle_id"];

              if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                *(v6 + 6) = strdup([v9 UTF8String]);
                v11 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_skip_crashing"];
                if (v11)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v6 + 61) = [v11 BOOLValue];
                  }
                }

                v12 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_late_first_checkin"];

                if (v12)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v6 + 60) = [v12 BOOLValue];
                  }
                }

                v13 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_internal_builds_only"];

                if (v13)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v6 + 17) = [v13 BOOLValue];
                  }
                }

                v14 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_num_rounds_to_timeout"];

                if (v14)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v6 + 14) = [v14 unsignedIntValue];
                  }
                }

                v15 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_panic_on_first_timeout"];

                if (v15)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v6 + 62) = [v15 BOOLValue];
                  }
                }

                v16 = [v2 objectForKeyedSubscript:@"watchdog_optin_service_capture_ddt_on_timeout"];

                if (v16)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    *(v6 + 63) = [v16 BOOLValue];
                  }
                }

                v4[2] = qword_100027240;
                qword_100027240 = v4;
                atomic_store(1u, byte_100027248);
                sub_1000017B0(0, "wait for service %s to be enrolled", *(v6 + 3));
                dispatch_semaphore_wait(qword_100027250, 0xFFFFFFFFFFFFFFFFLL);
                v17 = atomic_load(byte_100027248);
                if (v17)
                {
                  sub_10000C89C();
                }

                if (!qword_100027240)
                {
                  v7 = 1;
                  v8 = v9;
                  goto LABEL_48;
                }

                sub_1000017B0(2, "watchdogd refuses to pick up opt-in service %s", *(v6 + 3));
                v18 = &qword_100027240;
                v19 = qword_100027240;
                if (qword_100027240 != v4)
                {
                  do
                  {
                    v20 = v19;
                    v19 = *(v19 + 16);
                  }

                  while (v19 != v4);
                  v18 = (v20 + 16);
                }

                *v18 = *(v19 + 16);
                free(v4);
                free(*(v6 + 6));
                *(v6 + 6) = 0;
                v7 = 7;
              }

              else
              {
                v16 = 0;
              }

              free(*(v6 + 5));
              *(v6 + 5) = 0;
            }

            else
            {
              v16 = 0;
              v9 = v10;
            }
          }

          else
          {
            v16 = 0;
            v9 = 0;
          }

          free(*(v6 + 4));
          *(v6 + 4) = 0;
        }

        else
        {
          v16 = 0;
        }

        free(*(v6 + 3));
        v8 = v9;
      }

      else
      {
        v16 = 0;
      }

      free(v6);
LABEL_48:

      goto LABEL_49;
    }

    sub_1000017B0(2, "Failed to allocate new watchdog service");
  }

  else
  {
    sub_1000017B0(2, "Failed to allocate new optin service");
  }

  v7 = 5;
LABEL_49:

  return v7;
}

void sub_10000ACB8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.watchdogd.optin_listener", v3);
  v2 = qword_100027118;
  qword_100027118 = v1;

  if (!qword_100027118)
  {
    sub_10000C89C();
  }
}

id sub_10000AD30(uint64_t a1)
{
  if (qword_100027130 != -1)
  {
    sub_10000D0A0();
  }

  v2 = qword_100027128;

  return v2;
}

void sub_10000AD74(id a1)
{
  memset(v4, 0, sizeof(v4));
  v3 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v4, &v3, 0, 0))
  {
    sub_1000017B0(2, "Failed to get kern.bootsessionuuid");
  }

  else
  {
    v1 = [NSString stringWithCString:v4 encoding:4];
    v2 = qword_100027128;
    qword_100027128 = v1;
  }
}

void sub_10000AE2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    v4 = xpc_connection_copy_entitlement_value();
    v5 = v4;
    if (v4 && xpc_get_type(v4) == &_xpc_type_BOOL && xpc_BOOL_get_value(v5))
    {
      sub_1000017B0(0, "Client has correct entitlement");
    }

    else
    {
      sub_1000017B0(2, "Client doesn't have correct entitlement");
      sub_10000AFBC(v3, 3u);
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000B048;
    handler[3] = &unk_100018FD0;
    v6 = v3;
    v8 = v6;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_set_target_queue(v6, *(a1 + 32));
    xpc_connection_activate(v6);
  }

  else if (xpc_get_type(v3) == &_xpc_type_error)
  {
    xpc_dictionary_get_string(v3, _xpc_error_key_description);
    sub_1000017B0(0, "watchdogd received error message %s");
  }

  else
  {
    xpc_get_type(v3);
    sub_1000017B0(0, "watchdogd received unknown event of type %p");
  }
}

void sub_10000AFBC(void *a1, unsigned int a2)
{
  xdict = a1;
  reply = xpc_dictionary_create_reply(xdict);
  if (!reply)
  {
    sub_10000C89C();
  }

  v4 = reply;
  xpc_dictionary_set_int64(reply, "watchdogd_request_result", a2);
  v5 = xpc_dictionary_get_remote_connection(xdict);
  if (!v5)
  {
    sub_10000C89C();
  }

  v6 = v5;
  xpc_connection_send_message(v5, v4);
}

void sub_10000B048(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "watchdogd_request_command");
    if (uint64 != 1)
    {
      if (!uint64)
      {
        v5 = sub_10000B5B4(v3);
        v6 = v5;
        if (v5)
        {
          v7 = sub_10000A7BC(v5);
          if (v7 == 1)
          {
            v6 = v6;
            sub_1000017B0(0, "Try to stash service info into file");
            v8 = objc_alloc_init(NSMutableArray);
            v9 = +[NSFileManager defaultManager];
            v10 = [NSString stringWithFormat:@"%s", off_1000266C8];
            v11 = [v9 fileExistsAtPath:v10];

            if (v11)
            {
              v12 = sub_10000A4C4();

              v8 = v12;
            }

            [v8 addObject:v6];
            sub_10000B69C(off_1000266C8, v8, v11 ^ 1);
            v13 = sub_10000A4C4();

            v14 = 1;
          }

          else
          {
            v14 = v7;
          }

          goto LABEL_44;
        }

        goto LABEL_18;
      }

LABEL_17:
      v6 = 0;
LABEL_18:
      v14 = 5;
LABEL_44:
      sub_10000AFBC(v3, v14);

      goto LABEL_45;
    }

    v15 = sub_10000B5B4(v3);
    if (!v15)
    {
      sub_1000017B0(2, "Unregister: return WATCHDOG_SERVICE_REGISTRATION_ERROR_PARSE_FAILED");
      goto LABEL_17;
    }

    v16 = v15;
    sub_1000017B0(0, "Try to remove service info from stash");
    v17 = objc_alloc_init(NSMutableArray);
    v18 = +[NSFileManager defaultManager];
    v19 = [NSString stringWithFormat:@"%s", off_1000266C8];
    v20 = [v18 fileExistsAtPath:v19];

    if (v20)
    {
      v21 = sub_10000A4C4();

      v17 = v21;
    }

    else
    {
      sub_1000017B0(2, "Faile to find previously stashed service info");
    }

    [v17 removeObject:v16];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = v17;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v36 + 1) + 8 * i) objectForKeyedSubscript:@"watchdog_optin_service_launchd_job_label"];
          sub_1000017B0(0, "Remaining stashed service %s", [v27 UTF8String]);
        }

        v24 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v24);
    }

    if ([v22 count])
    {
      sub_10000B69C(off_1000266C8, v22, 0);
    }

    else if (unlink(off_1000266C8))
    {
      sub_10000D060();
    }

    v28 = sub_10000A4C4();

    v6 = v16;
    v29 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
    if (v29)
    {
      v30 = v29;
      v31 = malloc_type_calloc(1uLL, 0x770uLL, 0x1072040412F3752uLL);
      if (v31)
      {
        v32 = v31;
        v30[1] = v31;
        *v30 = 2;
        v33 = [v6 objectForKeyedSubscript:@"watchdog_optin_service_launchd_job_label"];
        if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v34 = strdup([v33 UTF8String]);
          v32[3] = v34;
          v30[2] = qword_100027240;
          qword_100027240 = v30;
          atomic_store(1u, byte_100027248);
          sub_1000017B0(0, "wait for service %s to be un-enrolled", v34);
          dispatch_semaphore_wait(qword_100027250, 0xFFFFFFFFFFFFFFFFLL);
          v35 = atomic_load(byte_100027248);
          if (v35)
          {
            sub_10000C89C();
          }

          if (!qword_100027240)
          {
            v14 = 2;
            goto LABEL_43;
          }

          v14 = 7;
        }

        else
        {
          v14 = 6;
        }

        free(v32);
      }

      else
      {
        sub_1000017B0(2, "Failed to allocate new watchdog service");
        v33 = 0;
        v14 = 5;
      }

      free(v30);
    }

    else
    {
      sub_1000017B0(2, "Failed to allocate new watchdog service");
      v33 = 0;
      v14 = 5;
    }

LABEL_43:

    goto LABEL_44;
  }

  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    xpc_dictionary_get_string(v3, _xpc_error_key_description);
    sub_1000017B0(0, "watchdogd received error message %s");
  }

  else
  {
    xpc_get_type(v3);
    sub_1000017B0(0, "watchdogd received unknown request type %p");
  }

  xpc_connection_cancel(*(a1 + 32));
LABEL_45:
}

id sub_10000B5B4(void *a1)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, "watchdogd_optin_service_identifier", &length);
  if (data)
  {
    v2 = [NSData dataWithBytes:data length:length];
    if (v2)
    {
      v6 = 0;
      v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v6];
      if (!v3)
      {
        v4 = [v6 description];
        sub_1000017B0(2, "Failed to get the opt-in service identifier with error %s", [v4 UTF8String]);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10000B69C(const char *a1, void *a2, int a3)
{
  v5 = a2;
  if (!a1)
  {
    sub_10000C89C();
  }

  v6 = v5;
  v7 = open(a1, 513, 420);
  if ((v7 & 0x80000000) != 0)
  {
    v13 = __error();
    v14 = strerror(*v13);
    sub_1000017B0(2, "Failed to safely open file : %s", v14);
  }

  else
  {
    v8 = v7;
    v22 = 0;
    v9 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v22];
    v10 = v22;
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];
      sub_1000017B0(2, "Error parsing plist: %s", [v12 UTF8String]);

      close(v8);
    }

    else
    {
      v15 = [[NSFileHandle alloc] initWithFileDescriptor:v8 closeOnDealloc:0];
      [v15 seekToFileOffset:0];
      v21 = 0;
      [v15 writeData:v9 error:&v21];
      v16 = v21;
      v17 = [v15 truncateFileAtOffset:{objc_msgSend(v9, "length")}];
      if (v16)
      {
        v18 = [v16 description];
        [v18 UTF8String];
        sub_1000017B0(2, "Error persisting submission results: %s");
      }

      else
      {
        v18 = sub_10000AD30(v17);
        v19 = [v18 length];
        if (v18 && a3 && setxattr(a1, "BootSessionUUID", [v18 UTF8String], v19, 0, 0))
        {
          v20 = __error();
          strerror(*v20);
          sub_1000017B0(2, "setxattr failed with error %s");
        }
      }

      close(v8);
    }
  }
}

uint64_t *sub_10000B8BC(uint64_t a1)
{
  result = &qword_1000271F8;
  do
  {
    result = *result;
  }

  while (result && result[1] != a1);
  return result;
}

BOOL sub_10000B8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    sub_10000C89C();
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000D02C(v6);
  }

  if (*(a1 + 60))
  {
    return 1;
  }

  sp = 0;
  v9 = bootstrap_look_up(bootstrap_port, *(a1 + 32), &sp);
  v7 = v9 == 0;
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = bootstrap_strerror(v9);
    sub_1000017B0(2, "bootstrap_look_up service: %s failed with error: %s", v10, v11);
  }

  else
  {
    sub_1000017B0(v9, "discovered port for service: %s", *(a1 + 32));
    *(a1 + 104) = sp;
    *(a1 + 120) = a2;
    *(a1 + 112) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    sub_10000BAFC(0, *(a1 + 24));
  }

  return v7;
}

void sub_10000B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1000271F8;
  if (qword_1000271F8)
  {
    v6 = 0;
    do
    {
      sp = 0;
      if ((*(v5 + 16) & 1) == 0)
      {
        if (!*(v5 + 68))
        {
          sub_10000C89C();
        }

        if (!*(v5 + 56))
        {
          sub_10000C89C();
        }

        v7 = *(v5 + 32);
        if (!*v7)
        {
          sub_10000C89C();
        }

        if (!**(v5 + 24))
        {
          sub_10000C89C();
        }

        if (!**(v5 + 40))
        {
          sub_10000C89C();
        }

        if (!**(v5 + 48))
        {
          sub_10000C89C();
        }

        if (*(v5 + 104))
        {
          sub_10000C89C();
        }

        v8 = bootstrap_look_up(bootstrap_port, v7, &sp);
        v9 = *(v5 + 32);
        if (v8)
        {
          v10 = bootstrap_strerror(v8);
          sub_1000017B0(2, "bootstrap_look_up service: %s failed with error: %s", v9, v10);
        }

        else
        {
          sub_1000017B0(v8, "discovered port for service: %s", *(v5 + 32));
          *(v5 + 104) = sp;
          ++v6;
          sub_10000BAFC(0, *(v5 + 24));
        }
      }

      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  sub_1000017B0(0, "found %d services to monitor", v6);
}

void sub_10000BAFC(int a1, const char *a2)
{
  client = 0;
  if (&_es_new_client)
  {
    v4 = es_new_client(&client, &stru_100019010);
    if (v4 || !client)
    {
      sub_1000017B0(2, "Failed to create new ES client due to %u", v4);
      return;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BE44;
    block[3] = &unk_100018C00;
    block[4] = client;
    if (qword_100027140 != -1)
    {
      dispatch_once(&qword_100027140, block);
    }

    v5 = [NSString stringWithUTF8String:a2];
    if (!v5)
    {
      sub_10000C89C();
    }

    v6 = v5;
    v7 = +[OSLaunchdDomain currentDomain];
    v8 = [OSLaunchdJob copyJobWithLabel:v6 domain:v7];

    if (v8 || (+[OSLaunchdDomain systemDomain], v9 = objc_claimAutoreleasedReturnValue(), v8 = [OSLaunchdJob copyJobWithLabel:v6 domain:v9], v9, v8))
    {
      v10 = [v8 getCurrentJobInfo];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 program];
      }

      else
      {
        sub_1000017B0(2, "failed to get service info for launchd service %s", a2);
        v12 = 0;
      }

      if (v12)
      {
        if (a1 == 1)
        {
          sub_1000017B0(0, "Notify ESK to unmute service %s", a2);
          v14 = [v12 UTF8String];
          v15 = es_default_unmute_path_events();
          if (!v15)
          {
            v16 = v14;
            v13 = "Notify ESK about %s unenrolled";
            goto LABEL_27;
          }

          sub_1000017B0(2, "Faled to notify ESK about %s unenrolled %d", v14, v15);
          v16 = a2;
          v13 = "Failed to unmute service %s";
        }

        else
        {
          if (a1)
          {
            goto LABEL_28;
          }

          sub_1000017B0(0, "Notify ESK to mute service %s", a2);
          if (sub_10000BE84(client, [v12 UTF8String]))
          {
            goto LABEL_28;
          }

          v16 = a2;
          v13 = "Failed to mute service %s";
        }

        v15 = 2;
LABEL_27:
        sub_1000017B0(v15, v13, v16);
        goto LABEL_28;
      }
    }

    else
    {
      sub_1000017B0(2, "did not find a launchd service %s", a2);
    }

    sub_1000017B0(2, "Failed to query executable path of %s", a2);
    v12 = 0;
LABEL_28:
    es_delete_client(client);

    return;
  }

  sub_1000017B0(0, "ESK seems not available");
}

void sub_10000BE44(uint64_t a1)
{
  sub_10000BE84(*(a1 + 32), "/usr/libexec/watchdogd");

  sub_1000017B0(0, "Notify ESK about watchdogd enrolled");
}

BOOL sub_10000BE84(uint64_t a1, uint64_t a2)
{
  v2 = es_default_mute_path_events();
  v3 = v2;
  if (v2)
  {
    sub_1000017B0(2, "Faled to notify ESK about %s enrolled %d");
  }

  else
  {
    sub_1000017B0(v2, "Notify ESK about %s enrolled");
  }

  return v3 == 0;
}

void sub_10000BEF4()
{
  if (qword_100027158 != -1)
  {
    sub_10000D0B4();
  }

  if ((byte_100027160 & 1) == 0)
  {
    v0 = IOServiceMatching("IOService");
    if (!v0)
    {
      sub_10000C89C();
    }

    v1 = v0;
    CFDictionarySetValue(v0, @"IOPropertyMatch", &off_100019F40);
    dword_100027148 = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    if (!dword_100027148)
    {
      sub_10000C89C();
    }
  }
}

void sub_10000BF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100027158 != -1)
  {
    sub_10000D0B4();
  }

  if ((byte_100027160 & 1) == 0)
  {
    if (!dword_100027148)
    {
      sub_10000C89C();
    }

    if (!qword_100027150)
    {
      if (objc_opt_class())
      {
        v5 = [RBSProcessMonitor monitorWithConfiguration:&stru_100019058];
        v6 = qword_100027150;
        qword_100027150 = v5;
      }

      v7 = [NSSet setWithObject:@"com.apple.frontboard.visibility"];
      sub_100001640(0, 4, v7, @"com.apple.SpringBoard");
    }
  }
}

void sub_10000C070(id a1, RBSProcessMonitorConfiguring *a2)
{
  v2 = a2;
  v3 = +[RBSProcessStateDescriptor descriptor];
  [v3 setValues:1];
  v8 = @"com.apple.frontboard.visibility";
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setEndowmentNamespaces:v4];

  [(RBSProcessMonitorConfiguring *)v2 setStateDescriptor:v3];
  v5 = +[RBSProcessPredicate predicateMatchingProcessTypeApplication];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(RBSProcessMonitorConfiguring *)v2 setPredicates:v6];

  [(RBSProcessMonitorConfiguring *)v2 setUpdateHandler:&stru_100019098];
}

void sub_10000C190(id a1)
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    v3 = sub_100008BA4(has_internal_diagnostics, v2);
    if (strnstr(v3, "-wdt_no_pmu", 0x400uLL))
    {
      byte_100027160 = 1;
    }

    else
    {
      v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/arm-io/wdt");
      if (v4)
      {
        v5 = v4;
        v6 = IORegistryEntrySearchCFProperty(v4, "IODeviceTree", @"no-pmu", kCFAllocatorDefault, 3u);
        if (v6)
        {
          byte_100027160 = 1;
          CFRelease(v6);
        }

        IOObjectRelease(v5);
      }
    }
  }
}

void sub_10000C258(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  sub_100001804(1, a1, v4, a2, va);
}

void sub_10000C2AC()
{
  v0 = malloc_type_malloc(0x8000uLL, 0xD04F6A6AuLL);
  qword_100027170 = v0;
  if (!v0)
  {
    sub_10000C89C();
  }

  v1 = v0;
  bzero(v0 + 1, 0x7FFCuLL);
  *v1 = 32728;
  NotificationPort = IODataQueueAllocateNotificationPort();
  dword_100027178 = NotificationPort;
  if (!NotificationPort)
  {
    sub_10000C89C();
  }

  mach_port_insert_right(mach_task_self_, NotificationPort, NotificationPort, 0x14u);
  if (IODataQueueSetNotificationPort(qword_100027170, dword_100027178))
  {
    sub_10000C89C();
  }

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.watchdogd.rt_log", v13);
  v4 = dispatch_source_create(&_dispatch_source_type_mach_recv, dword_100027178, 0, v3);
  v5 = qword_100027180;
  qword_100027180 = v4;

  dispatch_source_set_event_handler(qword_100027180, &stru_1000190D8);
  dispatch_activate(qword_100027180);
  v8 = sub_100008BA4(v6, v7);
  if (sub_100008C44(v8, v9))
  {
    dword_1000271C0 = 1;
  }

  if (v8)
  {
    v10 = strlen(v8);
    v11 = strnstr(v8, "wdt_logging=", v10);
    if (v11)
    {
      v12 = v11;
      if (strlen(v11) >= 0xD)
      {
        dword_1000271C0 = atoi(v12 + 12);
      }
    }
  }

  [OSLaunchdJob setDisableLogging_4watchdogd:1];
}

void sub_10000C444(id a1)
{
  v1 = os_log_create("com.apple.watchdogd", "signpost");
  v2 = qword_100027188;
  qword_100027188 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10000C488(id a1)
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.watchdogd.log", v5);
  v2 = qword_100027198;
  qword_100027198 = v1;

  v3 = os_log_create("com.apple.watchdogd", "service-monitoring-thread");
  v4 = qword_1000271A8;
  qword_1000271A8 = v3;
}

void sub_10000C510(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1000271B0 = fopen("/dev/console", "w+");
  v2 = __error();
  if (qword_1000271B0)
  {
    v3 = dispatch_queue_create("com.apple.watchdogd.serial_log", v1);
    v4 = qword_1000271A0;
    qword_1000271A0 = v3;

    v5 = qword_100027198;
    v6 = &stru_100019178;
  }

  else
  {
    v7 = *v2;
    v5 = qword_100027198;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C604;
    block[3] = &unk_100019158;
    v9 = v7;
    v6 = block;
  }

  dispatch_async(v5, v6);
}

void sub_10000C604(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000D108(a1);
  }
}

void sub_10000C644(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "watchdogd logging to serial enabled", v1, 2u);
  }
}

uint64_t sub_10000C6A0(uint64_t a1)
{
  fwrite(*(*(*(a1 + 32) + 8) + 24), 1uLL, *(*(*(a1 + 40) + 8) + 24), qword_1000271B0);
  free(*(*(*(a1 + 32) + 8) + 24));
  v2 = qword_1000271B0;

  return fflush(v2);
}

uint64_t sub_10000C708(uint64_t a1)
{
  fwrite(*(*(*(a1 + 32) + 8) + 24), 1uLL, *(*(*(a1 + 40) + 8) + 24), qword_1000271B0);
  free(*(*(*(a1 + 32) + 8) + 24));
  v2 = qword_1000271B0;

  return fflush(v2);
}

uint64_t (*sub_10000C770(uint64_t a1))()
{
  if (*(a1 + 20) == 6009000)
  {
    return sub_10000C790;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_10000C790(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, LODWORD(v4) = result[1], (v4 - 1337) >= 0xFFFFFB5F) && (v5 = result[14], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 152 >= v5) ? (v7 = v4 >= v6 + 152) : (v7 = 0), v7 && (v8 = result + v6, v9 = *(v8 + 37), v9 <= 5) && ((v10 = v4 - v6, v9 <= (v10 - 152) >> 5) ? (v11 = v10 == 32 * v9 + 152) : (v11 = 0), v11 && (v4 >= 0x43C ? (v4 = 1084) : (v4 = v4), (result = memchr(result + 15, 0, v4 - 60)) != 0))))
  {
    result = sub_100002AB8(v3[3], *(v3 + 4), *(v3 + 5), v3[12], v3 + 60, *(v8 + 60), (v8 + 68), v8 + 152, v9);
    *(a2 + 32) = result;
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

void sub_10000C89C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000C9F0(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_100004570();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000CB4C(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_100004570();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000CBEC()
{
  v0 = __error();
  strerror(*v0);
  sub_100004570();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000CC74(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  sub_1000017B0(2, "failed to submit launchd job for %s with error %s", a1, v3);
  _os_crash();
  __break(1u);
}

void sub_10000CCBC(char **a1, int a2)
{
  *a1 = 0;
  asprintf(a1, "IOServiceOpen failed with error : 0x%x", a2);
  sub_10000C258(2, "%s", *a1);
  _os_crash();
  __break(1u);
}

void sub_10000CD28(int a1)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonCheckEnabled method, returned : 0x%x", a1);
  _os_crash();
  __break(1u);
}

void sub_10000CD5C(int a1)
{
  sub_1000017B0(2, "Failed to call kIOWatchdogDaemonCheckUserspaceDefanged method, returned : 0x%x", a1);
  _os_crash();
  __break(1u);
}

void sub_10000CD90(int a1)
{
  sub_1000017B0(2, "Failed to call kIOWatchdogDaemonCheckin method, returned : %d", a1);
  _os_crash();
  __break(1u);
}

void sub_10000CDC4(int a1)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonDisableUserspaceMonitoring method, returned : 0x%x", a1);
  _os_crash();
  __break(1u);
}

void sub_10000CDF8(int a1)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonReenableUserspaceMonitoring method, returned : 0x%x", a1);
  _os_crash();
  __break(1u);
}

void sub_10000CE2C(int a1)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonCheckIOKitMonitoringEnabled method, returned : 0x%x", a1);
  _os_crash();
  __break(1u);
}

void sub_10000CE60(int a1)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonTestSocWatchdog method, returned : %d", a1);
  _os_crash();
  __break(1u);
}

void sub_10000CE94(int a1)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonTestSocWatchdog method, returned : %d", a1);
  _os_crash();
  __break(1u);
}

void sub_10000CEC8(int a1)
{
  sub_10000C258(2, "Failed to call kIOWatchdogDaemonTestIOKitBusy method, returned : %d", a1);
  _os_crash();
  __break(1u);
}

void sub_10000CF10(int a1)
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000CF2C()
{
  __error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000CF88()
{
  v0 = __error();
  v1 = strerror(*v0);
  sub_10000C258(2, "could not retrieve device boot-args, failed with error: %s", v1);
  _os_crash();
  __break(1u);
}

void sub_10000D02C(unsigned __int8 a1)
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000D060()
{
  v0 = __error();
  v1 = strerror(*v0);
  sub_1000017B0(0, "Failed to unlink prior stashed services info with error %s", v1);
  _os_crash();
  __break(1u);
}

void sub_10000D108(uint64_t a1)
{
  v1 = strerror(*(a1 + 32));
  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to open /dev/console with error : %s", &v2, 0xCu);
}