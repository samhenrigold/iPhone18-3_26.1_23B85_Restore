uint64_t sub_100000950()
{
  v0 = mach_thread_self();
  pthread_setname_np("com.apple.fseventsd.dev.fsevents");
  policy_info = 19;
  thread_policy_set(v0, 3u, &policy_info, 1u);
  mach_port_deallocate(mach_task_self_, v0);
  v23 = 0;
  v1 = mach_thread_self();
  get_default = 1;
  policy_infoCnt[0] = 1;
  if (!thread_policy_get(v1, 1u, &v23, policy_infoCnt, &get_default))
  {
    v23 = 0;
    thread_policy_set(v1, 1u, &v23, 1u);
  }

  mach_port_deallocate(mach_task_self_, v1);
  if (!dword_1000246C8)
  {
    while (1)
    {
      pthread_mutex_lock(&stru_1000241C0);
      v4 = qword_100024730;
      if (qword_100024730)
      {
        break;
      }

      do
      {
LABEL_13:
        v7 = v4;
        v4 = *(v4 + 32);
      }

      while (v4);
      v8 = sub_10000D850(1, 0x10000);
      *(v7 + 32) = v8;
      if (v8)
      {
        v5 = v8;
        ++dword_10002473C;
        goto LABEL_16;
      }

      pthread_cond_signal(&stru_100024200);
      v17 = pthread_mutex_unlock(&stru_1000241C0);
      v19 = sub_100009620(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000189CC(policy_infoCnt, policy_infoCnt + 1);
      }

      sleep(2u);
LABEL_35:
      if (dword_1000246C8)
      {
        goto LABEL_4;
      }
    }

    v5 = qword_100024730;
    while (1)
    {
      v6 = v5[3];
      if (*v5 - v6 >= 0x8000 || v5[1] == v6)
      {
        break;
      }

      v5 = *(v5 + 4);
      if (!v5)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v9 = v5[1];
    v10 = v5[3];
    if (v9 == v5[2] && v9 == v10)
    {
      v10 = 0;
      *(v5 + 1) = 0;
      v5[1] = 0;
    }

    v12 = *v5 - v10;
    pthread_mutex_unlock(&stru_1000241C0);
    v13 = read(dword_100024048, (*(v5 + 3) + v10), v12);
    if (v13 < 0)
    {
      if (*__error() == 9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = v13;
      if (v13)
      {
        if (v13 <= v12)
        {
          v5[3] += v13;
          pthread_mutex_lock(&stru_1000241C0);
          pthread_cond_signal(&stru_100024200);
          pthread_mutex_unlock(&stru_1000241C0);
        }

        else
        {
          v16 = sub_100009620(v13, v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v23 = 134218240;
            v24 = v15;
            v25 = 1024;
            v26 = v12;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "fsevent_producer: ************* DANGER : read %zd bytes but buffer is only %u", &v23, 0x12u);
          }
        }
      }

      else if (dword_1000246C8)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_35;
  }

LABEL_4:
  if (*__error() != 9)
  {
    v2 = dword_100024048;
    if ((dword_100024048 & 0x80000000) == 0)
    {
      dword_100024048 = -1;
      close(v2);
    }
  }

  pthread_mutex_lock(&stru_1000241C0);
  pthread_cond_signal(&stru_100024200);
  pthread_mutex_unlock(&stru_1000241C0);
  return 0;
}

uint64_t sub_100000C88()
{
  v25.tv_sec = 0;
  v25.tv_nsec = 0;
  v24.tv_sec = 0;
  *&v24.tv_usec = 0;
  v23.tv_sec = 0;
  *&v23.tv_usec = 0;
  v0 = mach_thread_self();
  pthread_setname_np("com.apple.fseventsd.notify");
  policy_info = 18;
  thread_policy_set(v0, 3u, &policy_info, 1u);
  mach_port_deallocate(mach_task_self_, v0);
  if (!dword_1000246C8)
  {
    v2 = 0;
    v3 = 9999;
    while (1)
    {
      while (1)
      {
        pthread_mutex_lock(&stru_1000241C0);
LABEL_5:
        v4 = qword_100024730;
        if (!qword_100024730)
        {
          break;
        }

        while (1)
        {
          v5 = *(v4 + 4);
          if (v5 != *(v4 + 12) || *(v4 + 8) > v5)
          {
            break;
          }

          v4 = *(v4 + 32);
          if (!v4)
          {
            goto LABEL_9;
          }
        }

        v8 = pthread_mutex_unlock(&stru_1000241C0);
LABEL_19:
        v10 = 0;
        if (!v4)
        {
          if (dword_1000246CC)
          {
            goto LABEL_31;
          }

          if (!v2)
          {
            goto LABEL_46;
          }

LABEL_33:
          gettimeofday(&v23, 0);
          v3 = sub_100002DE8(&v23);
          v8 = sub_10000309C(&qword_100025830);
          if (!v4)
          {
            goto LABEL_46;
          }

          v16 = *(v4 + 4);
          if (v16 == *(v4 + 8) && v16 <= *(v4 + 12))
          {
            v4 = *(v4 + 32) ? *(v4 + 32) : qword_100024730;
            if (!v4)
            {
              goto LABEL_46;
            }

            v17 = *(v4 + 4);
            if (v17 == *(v4 + 8) && v17 <= *(v4 + 12))
            {
              goto LABEL_46;
            }
          }

          ++v10;
        }

        if (v10 >= 101)
        {
          v18 = sub_100009620(v8, v9);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100018A00(&v20, v21);
          }

          goto LABEL_46;
        }

        v11 = *(v4 + 8);
        v12 = *(v4 + 12);
        if (v11 < v12)
        {
          goto LABEL_22;
        }

        if (v11 > v12 && *(v4 + 4) == v11)
        {
          *(v4 + 4) = 0;
LABEL_22:
          *(v4 + 8) = v12;
          v11 = v12;
        }

        if (!dword_1000246C8)
        {
          v13 = *(v4 + 4);
          v14 = v11 - v13;
          sub_100001034(*(v4 + 24) + v13, (v11 - v13), &qword_100025830, sub_100001BC0, 0);
          *(v4 + 4) += v14;
          if (dword_1000246CC)
          {
LABEL_31:
            v15 = -dword_1000246CC;
            sub_10000BE0C(sub_10000D920);
            atomic_fetch_add_explicit(&dword_1000246CC, v15, memory_order_relaxed);
          }

          v2 = 1;
          goto LABEL_33;
        }

LABEL_46:
        if (dword_1000246C8)
        {
          return sub_10000D7E0();
        }
      }

LABEL_9:
      if (dword_1000246CC)
      {
        v8 = pthread_mutex_unlock(&stru_1000241C0);
        if (dword_1000246CC)
        {
          v19 = -dword_1000246CC;
          v8 = sub_10000BE0C(sub_10000D920);
          v4 = 0;
          atomic_fetch_add_explicit(&dword_1000246CC, v19, memory_order_relaxed);
          v2 = 1;
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_19;
      }

      gettimeofday(&v24, 0);
      if ((v3 - 1500001) < 0xFFFFFFFFFFE91CA0)
      {
        v3 = 1500000;
      }

      v6 = 1000 * v3 + 1000 * v24.tv_usec;
      v25.tv_sec = v24.tv_sec + v6 / 0x3B9ACA00;
      v25.tv_nsec = v6 % 0x3B9ACA00;
      v7 = pthread_cond_timedwait(&stru_100024200, &stru_1000241C0, &v25);
      if (!v7)
      {
LABEL_15:
        if (!dword_1000246CC && dword_1000246C8)
        {
          pthread_mutex_unlock(&stru_1000241C0);
          return sub_10000D7E0();
        }

        goto LABEL_5;
      }

      if (v7 != 60)
      {
        if (dword_1000246C8)
        {
          goto LABEL_15;
        }

        goto LABEL_5;
      }

      pthread_mutex_unlock(&stru_1000241C0);
      gettimeofday(&v23, 0);
      v3 = sub_100002DE8(&v23);
      sub_10000309C(&qword_100025830);
    }
  }

  return sub_10000D7E0();
}

uint64_t sub_100001034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, __int16 *, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v71 = a1;
  v80 = 47;
  if (a2 >= 1)
  {
    v66 = 0;
    v69 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v52 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v70 = a2;
    v5 = a1;
    v6 = a1 + a2;
    v50 = v6;
    while (1)
    {
      v7 = *v5;
      v8 = (v5 + 2);
      if ((*v5 & 0xFFF) != 0x3E7)
      {
        v72 = v5[1];
        v9 = (byte_100024288 & ((*v5 & 0x2000u) >> 13)) != 0 ? (1 << *v5) | 0x20000000 : 1 << *v5;
        if (qword_1000246D0[dword_1000246E0] != -1)
        {
          break;
        }
      }

      ++dword_100024738;
      if (atomic_fetch_add_explicit(&qword_1000246D0[dword_1000246E0], 1uLL, memory_order_relaxed) == -2)
      {
        v47 = sub_100009620(a1, a2);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_100015F18(v86, &v87);
        }

        sub_10000A794(sub_10000D90C);
        v45 = a3;
        v46 = 2415919104;
      }

      else
      {
        v45 = a3;
        v46 = 0x80000000;
      }

      a1 = a4(v45, 0xFFFFFFFFLL, 0, &v80, 2, 2, v46);
      if (*v8 == 45887)
      {
        v8 = v5 + 5;
      }

      else
      {
        v48 = sub_100009620(a1, a2);
        a1 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          sub_100015F60(&v78, v79);
        }
      }

LABEL_146:
      v5 = v8;
      if (v8 - v71 >= v70)
      {
        return 1;
      }
    }

    if (v8 >= v6)
    {
      goto LABEL_146;
    }

    v73 = v9;
    v10 = 0;
    v74 = 0;
    v62 = 0;
    v63 = 0;
    *&v53[8] = 0;
    v61 = 0;
    v64 = 0;
    v11 = 0;
    v12 = 0;
    *v53 = (v7 - 11);
    v13 = "created";
    if (v7 == 12)
    {
      v13 = "changed";
    }

    v51 = v13;
    while (1)
    {
      v14 = *v8;
      if (v14 == 45887)
      {
        ++v8;
        goto LABEL_146;
      }

      v15 = v8[1];
      if (atomic_fetch_add_explicit(&qword_1000246D0[dword_1000246E0], 1uLL, memory_order_relaxed) == -2)
      {
        v16 = sub_100009620(a1, a2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100015ED0(v84, &v85);
        }

        sub_10000A794(sub_10000D90C);
        a1 = (a4)(a3, 0xFFFFFFFFLL, 0, &v80, 2, 2, 2415919104, -1, 0, 0, a5);
        atomic_fetch_add_explicit(&qword_1000246D0[dword_1000246E0], 1uLL, memory_order_relaxed);
      }

      v17 = (v8 + 2);
      if (v7 == 15)
      {
        if (v10 <= 3)
        {
          if (v10 <= 1)
          {
            if (v10)
            {
              if (v10 == 1 && v14 == 9)
              {
                v69 |= 1u;
                v60 = *v17;
                v74 = *v17;
              }
            }

            else if (v14 == 4)
            {
              v59 = 0;
              v60 = 0;
              v57 = 0;
              v58 = 0;
              v55 = 0;
              v56 = 0;
              v54 = 0;
              v69 = 0;
              v52 = *v17;
            }

            else
            {
              v52 = 0;
              v59 = 0;
              v60 = 0;
              v57 = 0;
              v58 = 0;
              v55 = 0;
              v56 = 0;
              v54 = 0;
              v69 = 0;
            }

            goto LABEL_134;
          }

          if (v10 == 2)
          {
            if (v14 == 7)
            {
              v59 = *v17;
              v32 = v69 | 2;
              goto LABEL_74;
            }
          }

          else if (v14 == 5)
          {
            v58 = *v17;
            v32 = v69 | 4;
LABEL_74:
            v69 = v32;
          }
        }

        else if (v10 <= 5)
        {
          if (v10 == 4)
          {
            if (v14 == 5)
            {
              v57 = *v17;
              v32 = v69 | 8;
              goto LABEL_74;
            }
          }

          else if (v14 == 4)
          {
            v56 = *v17;
            v32 = v69 | 0x10;
            goto LABEL_74;
          }
        }

        else
        {
          if (v10 == 6)
          {
            if (v14 == 4)
            {
              v55 = *v17;
            }

            goto LABEL_134;
          }

          if (v10 != 7)
          {
            if (v10 != 8 || v14 != 5 || (v69 & 0x5F) == 0)
            {
              goto LABEL_134;
            }

            v18 = (snprintf(__str, 0x400uLL, "/.activity/%d/%d/%lld/%lld/%lld/%u/%u/%lld", v52, v60, v59, v58, v57, v56, v55, v54) + 1);
            v19 = __str;
            v21 = v74;
            v20 = a3;
            v22 = v72;
            goto LABEL_133;
          }

          if (v14 == 5)
          {
            v54 = *v17;
            v32 = v69 | 0x40;
            goto LABEL_74;
          }
        }
      }

      else
      {
        if ((v14 - 1) <= 1)
        {
          if (*v17 == 47)
          {
            v11 = (v8 + 2);
          }

          else
          {
            v26 = sub_100009620(a1, a2);
            a1 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
            v11 = &unk_100024230;
            if (a1)
            {
              *__str = 136315138;
              *&__str[4] = v8 + 2;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "consumer: DANGER! fname does not begin with a '/' (%s)", __str, 0xCu);
            }
          }

          if (v11[1])
          {
            a1 = strrchr(v11, 47);
            if (!a1)
            {
              goto LABEL_118;
            }

            v27 = a1;
            v28 = (a1 - 12);
            if (a1 - 12 <= v11 || strncmp((a1 - 12), "/..namedfork", 0xCuLL))
            {
              goto LABEL_51;
            }

            v73 |= 0x200u;
            *v28 = 0;
            a1 = strrchr(v11, 47);
            if (a1)
            {
              v27 = a1;
              v37 = (a1 + 1);
              if (*(a1 + 1))
              {
                *a1 = 0;
                v38 = strrchr(v11, 47);
                if (v38 && (v39 = v38, !strcmp(v38 + 1, v37)))
                {
                  v27 = v39;
                }

                else
                {
                  *v27 = 47;
                }
              }

LABEL_51:
              v12 = v27 + 1;
              v65 = v27[1];
              a1 = strlen(v11);
              v29 = a1 + 1;
              v24 = v27 - v11 + 2;
LABEL_121:
              v67 = v29;
              if (v74)
              {
                if (v12 && (v66 & 0x20000000) != 0)
                {
                  *v12 = v65;
                  v24 = strlen(v11) + 1;
                  v25 = v73 | 0x20000000;
                }

                else
                {
                  v25 = v73;
                }

                v21 = v74;
                v20 = a3;
                v22 = v72;
                v19 = v11;
                v18 = v29;
LABEL_128:
                v68 = v24;
                v73 = v25;
LABEL_133:
                a1 = (a4)(v20, v22, v21, v19, v18);
                goto LABEL_134;
              }

              v68 = v24;
              v74 = 0;
              goto LABEL_134;
            }

            if (v11[1])
            {
LABEL_118:
              v43 = sub_100009620(a1, a2);
              a1 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
              if (a1)
              {
                *__str = 136315138;
                *&__str[4] = v11;
                _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "consumer: DANGER! last_slash is NULL and fname <<%s>> looks bad.", __str, 0xCu);
              }
            }
          }

          v12 = 0;
          v24 = 2;
          v29 = 2;
          goto LABEL_121;
        }

        if (v14 > 9)
        {
          if (v14 == 10)
          {
            v66 = *v17;
            v34 = *v17 & 0xF000;
            switch(v34)
            {
              case 40960:
                v35 = v73 | 0x400000;
                break;
              case 32768:
                v35 = v73 | 0x800000;
                break;
              case 16384:
                v35 = v73 | 0x1000000;
                break;
              default:
                v35 = v73;
                break;
            }

            v73 = v35 | (v66 >> 30 << 19);
            goto LABEL_134;
          }

          if (v14 == 12)
          {
            v66 = *(v8 + 4);
            v30 = v66 & 0xF000;
            if (v30 == 40960)
            {
              v31 = v73 | 0x400000;
            }

            else if (v30 == 0x8000)
            {
              v31 = v73 | 0x800000;
            }

            else
            {
              v31 = v30 == 0x4000 ? v73 | 0x1000000 : v73;
            }

            v74 = *(v8 + 3);
            v73 = v31 | (v66 >> 30 << 19);
            if (v11)
            {
              if (v12 && (v66 & 0x20000000) != 0)
              {
                *v12 = v65;
                v68 = strlen(v11) + 1;
                v73 |= 0x20000000u;
              }

              v21 = v74;
              v20 = a3;
              v22 = v72;
              v19 = v11;
              v18 = v67;
              goto LABEL_133;
            }
          }
        }

        else
        {
          switch(v14)
          {
            case 5:
              if (*v53 > 1u)
              {
                v33 = v61;
              }

              else
              {
                v33 = v61;
                if (!v61)
                {
                  *&v53[4] = *v17;
                  v33 = 1;
                }
              }

              if (*v53 <= 1u && v64 == 2 && v33 == 1)
              {
                v42 = snprintf(__str, 0x400uLL, "/.docid/%lld/%s/%lld/src=%lld,dst=%lld", v74, v51, *&v53[4], v62, v63) + 1;
                v6 = v50;
                v68 = strrchr(__str, 47) - __str + 2;
                a1 = (a4)(a3, v72, v74, __str, v42);
                v61 = 1;
                v64 = 2;
              }

              else
              {
                v61 = v33;
              }

              break;
            case 7:
              if (v15 == 4)
              {
                v36 = *v17;
              }

              else
              {
                v36 = *v17;
              }

              if (v64)
              {
                v40 = v62;
              }

              else
              {
                v40 = v36;
              }

              v41 = v63;
              if (v64)
              {
                v41 = v36;
              }

              v62 = v40;
              v63 = v41;
              ++v64;
              break;
            case 9:
              v23 = *v17;
              v74 = *v17;
              if (v7 == 13)
              {
                v81 = *v17;
                *__str = 0;
                sub_1000021A0(&unk_100025758);
                if (sub_10001232C(&v81, __str))
                {
                  sub_1000024C8(&unk_100025758);
                  v82 = v23;
                  a1 = ioctl(dword_100024048, 0x80047368uLL, &v82);
                }

                else
                {
                  *(*__str + 32) |= 0x400u;
                  a1 = sub_1000024C8(&unk_100025758);
                  v44 = 0;
                  atomic_compare_exchange_strong_explicit(dword_100024700, &v44, 1u, memory_order_relaxed, memory_order_relaxed);
                  if (qword_100024748)
                  {
                    a1 = *(qword_100024748 + 16);
                    if (a1)
                    {
                      a1 = sub_1000033CC(a1);
                    }
                  }
                }
              }

              if (v11)
              {
                if (v12 && (v66 & 0x20000000) != 0)
                {
                  *v12 = v65;
                  v24 = strlen(v11) + 1;
                  v25 = v73 | 0x20000000;
                }

                else
                {
                  v24 = v68;
                  v25 = v73;
                }

                v21 = v74;
                v20 = a3;
                v22 = v72;
                v19 = v11;
                v18 = v67;
                goto LABEL_128;
              }

              break;
          }
        }
      }

LABEL_134:
      v8 = (v17 + v15);
      ++v10;
      if (v17 + v15 >= v6)
      {
        goto LABEL_146;
      }
    }
  }

  return 1;
}

uint64_t sub_100001BC0(uint64_t a1, unsigned int a2, uint64_t a3, char *__s1, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  atomic_fetch_add(&dword_100024718, 1u);
  qword_100024710 = qword_100024708;
  if (!qword_100024708)
  {
    v17 = 0;
LABEL_19:
    atomic_fetch_add(&dword_100024718, 0xFFFFFFFF);
    return v17;
  }

  v11 = a7;
  if ((a7 & 0x80000000) == 0)
  {
    v15 = a3;
    LOBYTE(v46[0]) = 0;
    v45 = !strncmp(__s1, "/.docid/", 8uLL) || !strncmp(__s1, "/.activity/", 0xBuLL);
    v18 = __s1;
    if (v15)
    {
      v18 = sub_100002030(v15, __s1, v46);
    }

    if (!v18)
    {
      sub_10001587C();
    }

    if (!strncmp(v18, ".Spotlight-V100", 0xFuLL) || !strncmp(v18, ".fseventsd", 0xAuLL) || !strncmp(v18, ".MobileBackups", 0xEuLL) || !strncmp(v18, "Backups.backupdb", 0x10uLL) || strnstr(v18, "/.ubd/", 0x400uLL) || (v46[0] & 1) != 0)
    {
      v17 = 0;
    }

    else
    {
      v44 = a2;
      pthread_mutex_lock(&stru_100024180);
      v26 = qword_100024710;
      if (*(qword_100024710 + 8) < 1)
      {
        v17 = 0;
      }

      else
      {
        v41 = a6;
        v42 = a1;
        v43 = a8;
        v27 = 0;
        v17 = 0;
        do
        {
          if (*(*(*v26 + 8 * v27) + 8) != -1)
          {
            v28 = *(*(*v26 + 8 * v27) + 12);
            if (v28 >= 2)
            {
              v28 -= *(**(*v26 + 8 * v27) + v28 - 1) == 47;
            }

            v29 = __s1;
            if (v15)
            {
              if (*(*(*v26 + 8 * v27) + 8))
              {
                v29 = v18;
              }

              else
              {
                v29 = __s1;
              }
            }

            if (!strncmp(**(*v26 + 8 * v27), v29, v28))
            {
              if (v28 < 2 || ((v30 = v29[v28], v30 != 47) ? (v31 = v30 == 0) : (v31 = 1), v31))
              {
                if (!*(*(*v26 + 8 * v27) + 8) || *(*(*v26 + 8 * v27) + 8) == v15)
                {
                  if ((((*(*(*v26 + 8 * v27) + 14) & 1) == 0) & ~v45) != 0)
                  {
                    v35 = (__s1 - v29 + v41);
                    if (v35 >= v28)
                    {
                      v36 = v35 - 1;
                      v37 = __s1[v41 - 1];
                      __s1[v41 - 1] = 0;
                      v38 = sub_10000255C(v42, v44, v15, v29, v11 & 0x7E23F800, v43, a9, a10);
                      if (v38)
                      {
                        v39 = v38;
                        sub_100002B70(*(*(*qword_100024710 + 8 * v27) + 24), v38);
                        sub_100002CCC(v39, v40);
                        v17 = (v17 + 1);
                      }

                      v36[v29] = v37;
                    }
                  }

                  else
                  {
                    v32 = sub_10000255C(v42, v44, v15, v29, v11, v43, a9, a10);
                    if (v32)
                    {
                      v33 = v32;
                      sub_100002B70(*(*(*qword_100024710 + 8 * v27) + 24), v32);
                      sub_100002CCC(v33, v34);
                      v17 = (v17 + 1);
                    }
                  }
                }
              }
            }
          }

          ++v27;
          v26 = qword_100024710;
        }

        while (v27 < *(qword_100024710 + 8));
      }

      pthread_mutex_unlock(&stru_100024180);
    }

    qword_100024710 = 0;
    goto LABEL_19;
  }

  v20 = sub_10000255C(a1, 0xFFFFFFFFLL, 0, __s1, a7, a8, a9, a10);
  if (v20)
  {
    v22 = v20;
    v23 = 0;
    v17 = 0;
    atomic_fetch_add(&dword_10002471C, 1u);
    do
    {
      v24 = *(&xmmword_100024758 + v23);
      if (v24 && (*(v24 + 192) & 2) == 0)
      {
        v46[0] = *(&xmmword_100024758 + v23);
        v46[1] = 0;
        sub_100002B70(v46, v22);
        v17 = (v17 + 1);
      }

      v23 += 8;
    }

    while (v23 != 4096);
    atomic_fetch_add(&dword_10002471C, 0xFFFFFFFF);
    sub_100002CCC(v22, v21);
    qword_100024710 = 0;
    atomic_fetch_add(&dword_100024718, 0xFFFFFFFF);
  }

  else
  {
    v25 = sub_100009620(0, v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100015840();
    }

    return 0;
  }

  return v17;
}

const char *sub_100002030(int a1, char *__s1, _BYTE *a3)
{
  v3 = __s1;
  *a3 = 0;
  if (a1)
  {
    if (!strncmp(__s1, "/.docid/", 8uLL) || !strncmp(v3, "/.activity/", 0xBuLL))
    {
      ++v3;
    }

    else
    {
      sub_1000021A0(&unk_100025758);
      v6 = qword_1000246E8;
      if (!qword_1000246E8)
      {
        goto LABEL_25;
      }

      if (*(qword_1000246E8 + 8) < 1)
      {
        LODWORD(v7) = 0;
      }

      else
      {
        v7 = 0;
        do
        {
          if (**(*v6 + 8 * v7) == a1)
          {
            if ((*(*(*v6 + 8 * v7) + 32) & 0x8000) != 0)
            {
              *a3 = 1;
            }

            else if ((*(*(*v6 + 8 * v7) + 32) & 0x50) == 0)
            {
              break;
            }
          }

          ++v7;
        }

        while (v7 < *(v6 + 8));
      }

      if (v7 < *(v6 + 8))
      {
        v8 = *(*(*v6 + 8 * v7) + 24);
        if (v8 < 1)
        {
          v10 = 0;
        }

        else
        {
          v9 = 0;
          do
          {
            if (v3[v9] == 47)
            {
              --v8;
            }

            else if (!v3[v9])
            {
              break;
            }

            ++v9;
          }

          while (v8 > 0);
          v10 = v9;
        }

        sub_1000024C8(&unk_100025758);
        v3 += v10;
      }

      else
      {
LABEL_25:
        sub_1000024C8(&unk_100025758);
      }
    }
  }

  return v3;
}

uint64_t sub_1000021A0(uint64_t a1)
{
  v2 = sub_100002260(a1);
  if (v2)
  {
    v4 = *v2;
    if (*v2 < 0)
    {
      sub_100003238();
    }

    *v2 = v4 + 1;
    if (v4)
    {
      return 0;
    }

    else
    {
      v7 = pthread_rwlock_rdlock((a1 + 8));
      v5 = v7;
      if (v7)
      {
        v9 = sub_100009620(v7, v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100014974(v5);
        }
      }
    }
  }

  else
  {
    v6 = sub_100009620(0, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100014A10();
    }

    return pthread_rwlock_rdlock((a1 + 8));
  }

  return v5;
}

void *sub_100002260(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v4 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    v2 = v4;
    if (v4)
    {
      *v4 = 0;
      if (pthread_setspecific(*a1, v4))
      {
        free(v2);
        return 0;
      }
    }
  }

  return v2;
}

char *sub_1000022D8(const char *a1, size_t a2)
{
  v2 = a2;
  if (a1[a2 - 1] && !a1[a2])
  {
    v2 = a2 + 1;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = a1 + 1;
    do
    {
      v5 = dword_100024298[v4 ^ HIBYTE(v5)] ^ (v5 << 8);
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  pthread_mutex_lock(&stru_100024050);
  v9 = (qword_100025848 + 8 * (dword_100025854 & v8));
  v10 = *v9;
  if (*v9)
  {
    while (strncmp(v10 + 20, a1, v2) || v10[v2 + 19])
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    v13 = (v10 + 16);
  }

  else
  {
LABEL_16:
    v11 = malloc_type_zone_malloc(qword_1000246A8, v2 + 24, 0x10A0040FC488333uLL);
    if (!v11)
    {
      pthread_mutex_unlock(&stru_100024050);
      return 0;
    }

    v10 = v11;
    *(v11 + 4) = 1;
    strlcpy(v11 + 20, a1, v2);
    v12 = *v9;
    *v10 = *v9;
    if (v12)
    {
      *(v12 + 1) = v10;
    }

    *v9 = v10;
    *(v10 + 1) = v9;
    v13 = &dword_100025850;
  }

  ++*v13;
  pthread_mutex_unlock(&stru_100024050);
  return v10 + 20;
}

uint64_t sub_100002450(uint64_t a1, uint64_t a2)
{
  add = atomic_fetch_add((a1 + 16), 1u);
  if (add <= -2)
  {
    v3 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100015470();
    }

    MEMORY[0x99] = -1159983647;
  }

  return (add + 1);
}

uint64_t sub_1000024C8(uint64_t a1)
{
  v2 = sub_100002260(a1);
  if (v2)
  {
    v4 = *v2;
    if (!*v2)
    {
      sub_100003264();
    }

    if (v4 < 1)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = v4 - 1;
    }

    *v2 = v5;
    if (v5)
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_100009620(0, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000148F4();
    }
  }

  return pthread_rwlock_unlock((a1 + 8));
}

char *sub_10000255C(uint64_t a1, uint64_t a2, int a3, char *a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v76 = a2;
  v11 = *a4;
  if (*a4)
  {
    v12 = 0;
    v13 = a4 + 1;
    v14 = a4;
    while (1)
    {
      if (v12 && v11 == 47)
      {
        v12 = 1;
      }

      else
      {
        *v14++ = v11;
        if (v14 - a4 == 1023)
        {
          *v14 = 0;
          v16 = 1023;
          goto LABEL_13;
        }

        v12 = *(v13 - 1) == 47;
      }

      v15 = *v13++;
      v11 = v15;
      if (!v15)
      {
        goto LABEL_11;
      }
    }
  }

  v14 = a4;
LABEL_11:
  *v14 = 0;
  v16 = v14 - a4;
LABEL_13:
  v17 = v16 + 1;
  if (a4[v16])
  {
    if (a4[v17])
    {
      v74 = a4[v16];
      a4[v16] = 0;
    }

    else
    {
      v74 = 0;
      v17 = v16 + 2;
    }
  }

  else
  {
    v74 = 0;
  }

  v18 = (a1 + 16);
  v19 = *(a1 + 8);
  v75 = (a1 + 8);
  if (3 * v19 + 3 <= (4 * *(a1 + 16)))
  {
    v20 = (2 * v19 + 2);
    if (v20 >= 0x80000)
    {
      if (!*(a1 + 12))
      {
        v21 = sub_100009620(v20, a2);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000158E4();
        }

        *(a1 + 12) = 1;
      }

      goto LABEL_46;
    }

    v78 = 0;
    v22 = sub_1000083CC(v20, &v78);
    if (v22)
    {
      v24 = v22;
      v69 = v17;
      v70 = a5;
      v25 = pthread_mutex_lock(&stru_100024100);
      v27 = 0;
      *(a1 + 16) = 0;
      v28 = *a1;
      *a1 = v24;
      v29 = *(a1 + 8);
      *(a1 + 8) = v78;
      while (1)
      {
        v30 = v28[v27];
        if (v30)
        {
          break;
        }

LABEL_42:
        if (++v27 > v29)
        {
          pthread_mutex_unlock(&stru_100024100);
          free(v28);
          a5 = v70;
          v17 = v69;
          goto LABEL_46;
        }
      }

      while (1)
      {
        v31 = v30[15];
        v32 = *v31;
        if (*v31)
        {
          v33 = 0;
          v34 = v31 + 1;
          do
          {
            v33 = dword_100024298[v32 ^ HIBYTE(v33)] ^ (v33 << 8);
            v35 = *v34++;
            v32 = v35;
          }

          while (v35);
        }

        else
        {
          v33 = 0;
        }

        if (v33 <= 1)
        {
          v33 = 1;
        }

        v36 = *(a1 + 8);
        v37 = (*a1 + 8 * (v36 & v33));
        v38 = *v37;
        if (*v37)
        {
          v39 = *v30;
          *v30 = v38;
        }

        else
        {
          v40 = *v18 + 1;
          *v18 = v40;
          if (v40 > v36)
          {
            v41 = sub_100009620(v25, v26);
            v25 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
            if (v25)
            {
              v42 = *v18;
              v43 = *v75;
              *buf = 67109376;
              v80 = v42;
              v81 = 1024;
              v82 = v43;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "event table is screwed up! filled buckets %u / table_mask %u)", buf, 0xEu);
            }
          }

          v38 = *v37;
          v39 = *v30;
          *v30 = *v37;
          if (!v38)
          {
            goto LABEL_41;
          }
        }

        *(v38 + 8) = v30;
LABEL_41:
        *v37 = v30;
        v30[1] = v37;
        v30 = v39;
        if (!v39)
        {
          goto LABEL_42;
        }
      }
    }

    v44 = sub_100009620(0, v23);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1000158A8();
    }
  }

LABEL_46:
  v45 = sub_100002AE8(v76);
  v46 = *a4;
  if (*a4)
  {
    v47 = 0;
    v48 = a4 + 1;
    do
    {
      v47 = dword_100024298[v46 ^ HIBYTE(v47)] ^ (v47 << 8);
      v49 = *v48++;
      v46 = v49;
    }

    while (v49);
  }

  else
  {
    v47 = 0;
  }

  if (v47 <= 1)
  {
    v47 = 1;
  }

  v50 = (*a1 + 8 * (*(a1 + 8) & v47));
  v51 = a5;
  if ((a5 & 0x6000000) == 0)
  {
    v52 = *v50;
    while (v52)
    {
      v53 = v52;
      v52 = *v52;
      v54 = *(v53 + 6);
      if (v45)
      {
        if (v54 != v76)
        {
          continue;
        }
      }

      else if (sub_100002AE8(v54))
      {
        continue;
      }

      if (*(v53 + 5) == a7)
      {
        v55 = *(v53 + 15);
        v56 = strncmp(v55, a4, v17);
        if (!v56 && !v55[v17 - 1])
        {
          if (atomic_fetch_add(v53 + 4, 1u) <= -2)
          {
            v68 = sub_100009620(v56, v57);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              sub_100015960();
            }
          }

          v59 = a8;
          if (*(v53 + 4) == 1)
          {
            *(v53 + 5) = 0;
          }

          v66 = a6;
          v65 = v74;
LABEL_74:
          *(v53 + 5) |= v51;
          *(v53 + 6) = v76;
          *(v53 + 4) = v66;
          *(v53 + 5) = a7;
          *(v53 + 12) = v59;
          if (v65)
          {
            goto LABEL_75;
          }

          return v53;
        }
      }
    }
  }

  v58 = malloc_type_zone_malloc(qword_1000246C0, 0x80uLL, 0x10B00402042220DuLL);
  v53 = v58;
  if (v58)
  {
    *(v58 + 2) = 1;
    *(v58 + 7) = a3;
    *(v58 + 26) = v17;
    *(v58 + 5) = a7;
    v59 = a8;
    *(v58 + 12) = a8;
    *(v58 + 56) = 0u;
    *(v58 + 72) = 0u;
    *(v58 + 88) = 0u;
    *(v58 + 104) = 0u;
    v60 = sub_1000022D8(a4, v17);
    *(v53 + 15) = v60;
    if (v60[v17 - 1])
    {
      v62 = dword_100024698++;
      if (v62 <= 49)
      {
        v63 = sub_100009620(v60, v61);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          sub_1000159E0();
        }
      }
    }

    v64 = *v50;
    if (*v50)
    {
      *(v64 + 1) = v53;
    }

    else
    {
      ++*v18;
    }

    v66 = a6;
    v65 = v74;
    *v50 = v53;
    *v53 = v64;
    *(v53 + 1) = v50;
    goto LABEL_74;
  }

  LOBYTE(v65) = v74;
  if (v74)
  {
LABEL_75:
    a4[v17 - 1] = v65;
  }

  return v53;
}

BOOL sub_100002AE8(int a1)
{
  pthread_mutex_lock(&stru_100024008);
  if (dword_100025858[0] == a1)
  {
    v2 = 1;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v3;
      if (v3 == 31)
      {
        break;
      }

      v5 = dword_100025858[++v3];
    }

    while (v5 != a1);
    v2 = v4 < 0x1F;
  }

  pthread_mutex_unlock(&stru_100024008);
  return v2;
}

_DWORD **sub_100002B70(_DWORD **result, uint64_t a2)
{
  atomic_fetch_add(&dword_10002471C, 1u);
  if (result)
  {
    v3 = result;
    v4 = a2 + 56;
    do
    {
      if ((*(*v3 + 24) & 2) == 0)
      {
        v5 = (*v3)[50];
        if (((0x80u >> (v5 & 7)) & atomic_fetch_or_explicit((v4 + (v5 >> 3)), 0x80u >> (v5 & 7), memory_order_relaxed)) == 0)
        {
          v6 = *v3;
          result = sub_100002D90(*v3);
          v8 = *v3;
          if (result >= *(v6 + 232) - 1)
          {
            atomic_fetch_and_explicit((v4 + (*(v8 + 200) >> 3)), -129 >> (*(v8 + 200) & 7), memory_order_relaxed);
            v9 = *v3;
            if ((*(*v3 + 24) & 1) == 0)
            {
              *(v9 + 192) |= 1uLL;
              *(v9 + 152) = *(a2 + 32);
            }
          }

          else if ((*(v8 + 192) & 0x80) != 0 && *(a2 + 24) == *(v8 + 256))
          {
            atomic_fetch_and_explicit((v4 + (*(v8 + 200) >> 3)), -129 >> (*(v8 + 200) & 7), memory_order_relaxed);
          }

          else
          {
            result = sub_100002450(a2, v7);
            v10 = *v3;
            *(*(*v3 + 54) + 8 * (*v3)[63]) = a2;
            *(v10 + 252) = (*(v10 + 252) + 1) % *(v10 + 232);
          }
        }
      }

      v3 = v3[1];
    }

    while (v3);
  }

  atomic_fetch_add(&dword_10002471C, 0xFFFFFFFF);
  return result;
}

uint64_t sub_100002CCC(uint64_t a1, uint64_t a2)
{
  add = atomic_fetch_add((a1 + 16), 0xFFFFFFFF);
  v3 = (add - 1);
  if (add <= 0)
  {
    v4 = sub_100009620(a1, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      sub_1000154E8();
    }

    v7 = sub_100009620(v5, v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      sub_100015560();
    }

    v10 = sub_100009620(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000155D4();
    }

    MEMORY[0xAA] = -1159983646;
  }

  return v3;
}

uint64_t sub_100002D90(_DWORD *a1)
{
  v3 = a1[62];
  v2 = a1[63];
  if (v3 <= v2)
  {
    return (v2 - v3);
  }

  else
  {
    return (a1[58] - v3 + v2);
  }
}

uint64_t sub_100002DE8(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 8) + 1000000 * *a1;
  atomic_fetch_add(&dword_10002471C, 1u);
  do
  {
    v4 = *(&xmmword_100024758 + v1);
    if (!v4 || (*(v4 + 192) & 2) != 0)
    {
      goto LABEL_26;
    }

    v5 = *(v4 + 144);
    if ((*(v4 + 192) & 4) != 0)
    {
      v7 = *(v4 + 176);
      v6 = v3 - v5;
    }

    else if (!v5 || ((v6 = v3 - v5, v7 = *(v4 + 176), v7 >= 0x3E8) ? (v8 = v6 >= 2 * v7) : (v8 = 0), v8))
    {
      *(v4 + 144) = v3;
LABEL_17:
      if (*(v4 + 248) != *(v4 + 252) && v2 - 1 >= (*(v4 + 176) - v3 + *(v4 + 144)))
      {
        v2 = *(v4 + 176) - v3 + *(v4 + 144);
      }

      goto LABEL_20;
    }

    if (v6 < v7 && sub_100002D90(*(&xmmword_100024758 + v1)) <= *(v4 + 232) / 2)
    {
      goto LABEL_17;
    }

    if (*(v4 + 248) != *(v4 + 252))
    {
      *(v4 + 144) = v3;
      sub_1000033CC(v4);
    }

LABEL_20:
    if ((v3 - *(v4 + 320)) >= 0x141DD76001)
    {
      memset(buffer, 0, sizeof(buffer));
      if ((*(v4 + 192) & 0x20) != 0)
      {
        v9 = proc_pidinfo(*(v4 + 256), 4, 0, buffer, 96);
        if (v9 != 96)
        {
          v11 = sub_100009620(v9, v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = *(v4 + 256);
            *buf = 67109120;
            v16 = v12;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to gather process task information for pid: %i", buf, 8u);
          }
        }
      }

      analytics_send_event_lazy();
      *(v4 + 320) = v3;
    }

LABEL_26:
    v1 += 8;
  }

  while (v1 != 4096);
  atomic_fetch_add(&dword_10002471C, 0xFFFFFFFF);
  return v2;
}

uint64_t sub_10000309C(uint64_t *a1)
{
  v2 = pthread_mutex_lock(&stru_100024100);
  v4 = *(a1 + 5);
  if (v4 <= 0xFFFFFDFF)
  {
    v5 = v4 + 512;
    do
    {
      v6 = *a1;
      v7 = a1[1] & v4;
      v8 = *(*a1 + 8 * v7);
      if (v8)
      {
        do
        {
          v11 = *v8;
          if (!v8[4])
          {
            v12 = *(v8 + 1);
            if (v11)
            {
              *(v11 + 8) = v12;
            }

            *v12 = v11;
            if (!*(v6 + 8 * v7))
            {
              v13 = *(a1 + 4) - 1;
              *(a1 + 4) = v13;
              if (v13 > *(a1 + 2))
              {
                v14 = sub_100009620(v2, v3);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  v9 = *(a1 + 4);
                  v10 = *(a1 + 2);
                  *buf = 67109376;
                  v17 = v9;
                  v18 = 1024;
                  v19 = v10;
                  _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "event table is screwed up! filled buckets %u / table_mask %u)", buf, 0xEu);
                }
              }
            }

            sub_100003290(*(v8 + 15), *(v8 + 26));
            *(v8 + 15) = 0;
            malloc_zone_free(qword_1000246C0, v8);
          }

          v8 = v11;
        }

        while (v11);
        v4 = *(a1 + 5);
      }

      *(a1 + 5) = ++v4;
    }

    while (v4 < v5);
  }

  return pthread_mutex_unlock(&stru_100024100);
}

uint64_t sub_100003290(const char *a1, size_t a2)
{
  v2 = a2;
  if (a1[a2 - 1] && !a1[a2])
  {
    v2 = a2 + 1;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = a1 + 1;
    do
    {
      v5 = dword_100024298[v4 ^ HIBYTE(v5)] ^ (v5 << 8);
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  pthread_mutex_lock(&stru_100024050);
  v9 = *(qword_100025848 + 8 * (dword_100025854 & v8));
  if (!v9)
  {
    goto LABEL_16;
  }

  while (strncmp(v9 + 20, a1, v2) || v9[v2 + 19])
  {
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  v11 = *(v9 + 4) - 1;
  *(v9 + 4) = v11;
  if (v11)
  {
LABEL_16:
    pthread_mutex_unlock(&stru_100024050);
  }

  else
  {
    v12 = *v9;
    v13 = *(v9 + 1);
    if (*v9)
    {
      *(v12 + 1) = v13;
    }

    *v13 = v12;
    --dword_100025850;
    pthread_mutex_unlock(&stru_100024050);
    malloc_zone_free(qword_1000246A8, v9);
  }

  return 0;
}

uint64_t sub_1000033CC(uint64_t a1)
{
  pthread_mutex_lock(a1);
  if ((*(a1 + 192) & 0x800) != 0)
  {
    memset(&v4, 0, sizeof(v4));
    v3 = 0;
    if ((*(a1 + 192) & 0x20) != 0)
    {
      sub_100015814();
    }

    *(a1 + 192) &= ~0x800uLL;
    pthread_attr_init(&v4);
    pthread_attr_setdetachstate(&v4, 2);
    pthread_create(&v3, &v4, sub_1000034A0, a1);
    pthread_attr_destroy(&v4);
  }

  pthread_cond_signal((a1 + 64));
  return pthread_mutex_unlock(a1);
}

uint64_t sub_1000034A0(uint64_t a1)
{
  v2 = "client";
  v3 = *(a1 + 192);
  if ((v3 & 0x20) != 0)
  {
    v2 = "disklogger";
  }

  snprintf(__str, 0x32uLL, "com.apple.fseventsd.%s.%d", v2, *(a1 + 256));
  pthread_setname_np(__str);
  v4 = pthread_self();
  *(a1 + 328) = pthread_mach_thread_np(v4);
  if ((v3 & 0x20) != 0)
  {
    setiopolicy_np(0, 1, 2);
  }

  v158 = (a1 + 260);
  v6 = *(a1 + 260);
  if (v6)
  {
    if (!*(a1 + 352))
    {
      v7 = getpwuid(v6);
      if (v7)
      {
        v6 = strdup(v7->pw_name);
        *(a1 + 352) = v6;
      }

      else
      {
        v9 = sub_100009620(0, v8);
        v6 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (v6)
        {
          sub_1000177FC();
        }
      }
    }

    if (*v158 && *(a1 + 112))
    {
      v6 = sub_10000B748();
    }
  }

  if ((*(a1 + 192) & 0x10000) != 0)
  {
    v10 = (a1 + 112);
    if (*(a1 + 112))
    {
      thread_info_outCnt[0] = 0;
      v11 = sub_100009620(v6, v5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        buf.f_bsize = 136315650;
        *&buf.f_iosize = "send_device_state_event";
        WORD2(buf.f_blocks) = 2048;
        *(&buf.f_blocks + 6) = a1;
        HIWORD(buf.f_bfree) = 2080;
        buf.f_bavail = "client_loop";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: client: %p : %s : DEVICE STATE EVENT", &buf, 0x20u);
      }

      sub_1000021A0(&unk_100025758);
      v13 = sub_100009948(*v10, v12);
      if (v13)
      {
        if (*(v13 + 128))
        {
          v15 = snprintf(&buf, 0x400uLL, "/.fseventsd-config/current_uuid/%s/previous_uuid/%s/last_pruned_event_id/%s");
        }

        else
        {
          v15 = snprintf(&buf, 0x400uLL, "/.fseventsd-config/current_uuid/%s/previous_uuid/NO-UUID/last_pruned_event_id/0");
        }

        v18 = sub_100009620(v15, v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *v10;
          v20 = *(qword_1000246E8 + 8);
          *v171 = 136315906;
          *&v171[4] = "send_device_state_event";
          *&v171[12] = 2080;
          *&v171[14] = &buf;
          v172 = 1024;
          v173 = v19;
          v174 = 1024;
          v175 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: state_event_path(%s) %d (num_devices %d)", v171, 0x22u);
        }
      }

      else
      {
        strcpy(&buf, "/.fseventsd-config/current_uuid/NO-UUID-NO-DEV-INFO");
        v17 = sub_100009620(0, v14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100017870();
        }
      }

      sub_1000024C8(&unk_100025758);
      v21 = strnlen(&buf, 0x400uLL);
      thread_info_outCnt[0] = &buf;
      *&v165.st_dev = v21 + 1;
      v168[0] = 0;
      v169[0] = 0;
      v166[0] = 0;
      v176[0] = 0;
      v167[0] = 0;
      v22 = *(a1 + 216);
      if (v22)
      {
        v23 = v22(*(a1 + 224), 1, &v165, thread_info_outCnt, v168, v167, v169, v166, v176);
        if (v23)
        {
          v25 = v23;
          if (v23 == 268435459)
          {
            *(a1 + 192) |= 2uLL;
          }

          v26 = sub_100009620(v23, v24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = *(a1 + 256);
            *v171 = 136315906;
            *&v171[4] = "send_device_state_event";
            *&v171[12] = 2048;
            *&v171[14] = a1;
            v172 = 1024;
            v173 = v25;
            v174 = 1024;
            v175 = v27;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: client (%p) failed sending device state event (0x%x) to pid %d\n", v171, 0x22u);
          }
        }

        else
        {
          v28 = sub_100009620(v23, v24);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = *(a1 + 256);
            *v171 = 136315650;
            *&v171[4] = "send_device_state_event";
            *&v171[12] = 2048;
            *&v171[14] = a1;
            v172 = 1024;
            v173 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s: client (%p) SENT device state event to pid %d\n", v171, 0x1Cu);
          }

          *(a1 + 192) &= ~0x10000uLL;
        }
      }
    }
  }

  if ((*(a1 + 192) & 0x400) == 0)
  {
    sub_100005500(a1, v5);
    pthread_mutex_lock(a1);
    *(a1 + 192) |= 0x400uLL;
    pthread_mutex_unlock(a1);
  }

  v155 = v3;
  if (*v158)
  {
    pthread_setugid_np(*v158, *(a1 + 264));
    v30 = *(a1 + 352);
    if (v30)
    {
      v31 = initgroups(v30, *(a1 + 264));
      if ((v31 & 0x80000000) != 0)
      {
        v33 = sub_100009620(v31, v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v145 = *(a1 + 352);
          v146 = *(a1 + 260);
          LODWORD(v3) = *(a1 + 264);
          v147 = *__error();
          v148 = __error();
          v149 = strerror(*v148);
          buf.f_bsize = 136316162;
          *&buf.f_iosize = v145;
          WORD2(buf.f_blocks) = 1024;
          *(&buf.f_blocks + 6) = v146;
          WORD1(buf.f_bfree) = 1024;
          HIDWORD(buf.f_bfree) = v3;
          LOBYTE(v3) = v155;
          LOWORD(buf.f_bavail) = 1024;
          *(&buf.f_bavail + 2) = v147;
          HIWORD(buf.f_bavail) = 2080;
          buf.f_files = v149;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "client_loop: initgroups failed for user %s uid %d gid %d (err: %d/%s)", &buf, 0x28u);
        }
      }
    }
  }

  v34 = &off_100024000;
  if (!dword_1000246C8)
  {
    v161 = (a1 + 268);
    v64 = a1 + 368;
    while (1)
    {
      if ((*(a1 + 192) & 0x1ALL) != 0)
      {
        goto LABEL_43;
      }

      pthread_mutex_lock(a1);
      if (!dword_1000246C8 && (*(a1 + 192) & 0x21BLL) == 0)
      {
        if ((v3 & 0x20) != 0)
        {
          if (pthread_cond_wait((a1 + 64), a1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          *&buf.f_bsize = 0;
          buf.f_blocks = 0;
          *v171 = 0;
          *&v171[8] = 0;
          gettimeofday(&buf, 0);
          *v171 = *&buf.f_bsize + 15;
          *&v171[8] = 0;
          if (pthread_cond_timedwait((a1 + 64), a1, v171) == 60 && *(a1 + 248) == *(a1 + 252))
          {
            *(a1 + 192) |= 0x800uLL;
            pthread_mutex_unlock(a1);
            pthread_exit(0);
          }
        }
      }

      pthread_mutex_unlock(a1);
      if (!dword_1000246C8 || (v3 & 0x20) != 0)
      {
        break;
      }

LABEL_256:
      if (dword_1000246C8)
      {
        goto LABEL_43;
      }
    }

    if ((*(a1 + 192) & 2) != 0 || ((*(a1 + 192) & 1) != 0 ? (v66 = sub_100010B68(a1)) : (v66 = 0), (*(a1 + 192) & 2) != 0))
    {
LABEL_236:
      memset(&buf, 0, 40);
      LODWORD(thread_info_outCnt[0]) = 10;
      v132 = thread_info(*(a1 + 328), 3u, &buf, thread_info_outCnt);
      if (v132)
      {
        v134 = v132;
        v135 = sub_100009620(v132, v133);
        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          *v171 = 136315394;
          *&v171[4] = "client_get_thread_info";
          *&v171[12] = 1024;
          *&v171[14] = v134;
          _os_log_error_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "%s : [%d]thread_info", v171, 0x12u);
        }
      }

      else
      {
        *(a1 + 332) = *&buf.f_bsize;
      }

      if ((*(a1 + 192) & 8) != 0)
      {
        v140 = open(".", 0);
        LOBYTE(v3) = v155;
        if (v140 >= 1)
        {
          v141 = v140;
          if (!fcntl(v140, 50, &buf))
          {
            v142 = *(a1 + 120);
            if (v142)
            {
              free(v142);
            }

            *(a1 + 120) = strdup(&buf);
          }

          close(v141);
        }

        *(a1 + 192) &= ~8uLL;
        *(a1 + 192) |= 0x40uLL;
        syscall(348, "/");
        goto LABEL_253;
      }

      LOBYTE(v3) = v155;
      if ((*(a1 + 192) & 0x10) != 0)
      {
        if (*(a1 + 120))
        {
          v136 = syscall(348, *(a1 + 120));
          if (v136)
          {
            v138 = sub_100009620(v136, v137);
            if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
            {
              v139 = *(a1 + 120);
              buf.f_bsize = 136315138;
              *&buf.f_iosize = v139;
              _os_log_error_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "client: failed to chdir back to %s", &buf, 0xCu);
            }

            goto LABEL_253;
          }

          goto LABEL_259;
        }

        if (!sub_10000B748())
        {
LABEL_259:
          *(a1 + 192) &= ~0x10uLL;
        }
      }

LABEL_253:
      v34 = &off_100024000;
      if ((v3 & 0x20) != 0)
      {
        v143 = 1;
        atomic_compare_exchange_strong_explicit(dword_100024700, &v143, 0, memory_order_relaxed, memory_order_relaxed);
        if (v143 == 1)
        {
          sub_10000A794(sub_10000BF8C);
        }
      }

      goto LABEL_256;
    }

    memset(v166, 0, sizeof(v166));
    if ((*(a1 + 192) & 0x200) != 0)
    {
      v166[0] = **(a1 + 136);
      *v171 = strlen(v166[0]) + 1;
      v176[0] = 0x8000000;
      thread_info_outCnt[0] = *(a1 + 168);
      v167[0] = 0;
      v67 = *(a1 + 216);
      if (v67)
      {
        v68 = v67(*(a1 + 224), 1, v171, v166, v176, v167, thread_info_outCnt, v169, v168);
        if (!v68)
        {
          *(a1 + 192) &= ~0x200uLL;
          if ((*(a1 + 192) & 2) != 0)
          {
            goto LABEL_236;
          }

LABEL_115:
          v69 = sub_100002D90(a1);
          if (v69)
          {
            v70 = v69;
            v71 = v69;
            v72 = malloc_type_malloc(8 * v69, 0x2004093837F09uLL);
            if (!v72)
            {
              LOBYTE(v3) = v155;
              v34 = &off_100024000;
              goto LABEL_43;
            }

            v73 = v72;
            v150 = v72;
            if (v70 <= 0)
            {
              qsort(v72, v71, 8uLL, sub_100004B9C);
LABEL_234:
              free(v150);
            }

            else
            {
              v74 = 0;
              v75 = *(a1 + 232);
              do
              {
                *&v72[8 * v74] = *(*(a1 + 432) + 8 * ((v74 + *(a1 + 248)) % v75));
                ++v74;
              }

              while (v70 != v74);
              qsort(v72, v71, 8uLL, sub_100004B9C);
              v77 = 0;
              v78 = *(a1 + 232);
              do
              {
                *(*(a1 + 432) + 8 * ((v77 + *(a1 + 248)) % v78)) = v73[v77];
                ++v77;
              }

              while (v70 != v77);
              v151 = v70;
              v79 = 0;
              v80 = 0;
              v81 = 0;
              LOBYTE(v3) = v155;
              v157 = v64;
              do
              {
                v154 = v79;
                if ((*(a1 + 192) & 2) != 0)
                {
                  break;
                }

                v152 = v80;
                v82 = v151 - v79;
                if ((v151 - v154) >= 0x20)
                {
                  LODWORD(v83) = 32;
                }

                else
                {
                  LODWORD(v83) = v82;
                }

                v153 = v83;
                if (v151 != v154)
                {
                  v88 = 0;
                  v84 = 0;
                  if (v83 <= 1)
                  {
                    v83 = 1;
                  }

                  else
                  {
                    v83 = v83;
                  }

                  v156 = v83;
                  while (1)
                  {
                    v159 = v88;
                    v160 = v84;
                    memset(&v165, 0, sizeof(v165));
                    v81 = *&v150[8 * v154 + 8 * v88];
                    v89 = *(a1 + 200);
                    if (((atomic_fetch_and_explicit((v81 + (v89 >> 3) + 56), ~~(-129 >> (v89 & 7)), memory_order_relaxed) << (v89 & 7)) & 0x80) == 0)
                    {
                      v90 = sub_100009620(v76, v84);
                      v76 = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
                      if (v76)
                      {
                        v124 = *(a1 + 200);
                        buf.f_bsize = 134218240;
                        *&buf.f_iosize = v81;
                        WORD2(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 6) = v124;
                        _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "client loop: event %p did not have my bit (%d) set!", &buf, 0x12u);
                      }
                    }

                    if (*v158)
                    {
                      break;
                    }

LABEL_208:
                    v117 = 0;
                    v118 = *(v81 + 120);
                    do
                    {
                      v119 = *(v64 + v117);
                      if (!v119)
                      {
                        break;
                      }

                      v120 = strlen(*(v64 + v117));
                      v76 = strncmp(v118, v119, v120);
                      if (!v76)
                      {
                        goto LABEL_219;
                      }

                      v117 += 8;
                    }

                    while (v117 != 64);
                    v121 = v160;
                    v166[v160] = v118;
                    *&v171[8 * v160] = *(v81 + 52);
                    v122 = *(v81 + 20);
                    v176[v160] = v122;
                    v167[v160] = *(v81 + 28);
                    thread_info_outCnt[v160] = *(v81 + 32);
                    v169[v160] = *(v81 + 40);
                    v168[v160] = *(v81 + 48);
                    if ((*(a1 + 192) & 0x1000) != 0 && *(a1 + 256) == *(v81 + 24))
                    {
                      v176[v160] = v122 | 0x200000;
                    }

                    v123 = *(v81 + 32);
                    if (v123 > *(a1 + 160))
                    {
                      *(a1 + 160) = v123;
                    }

LABEL_220:
                    v84 = (v121 + 1);
                    v88 = v159 + 1;
                    if (v159 + 1 == v156)
                    {
                      goto LABEL_129;
                    }
                  }

                  v91 = 1;
                  while (2)
                  {
                    if (*(a1 + 300) || (*(v81 + 23) & 6) != 0)
                    {
                      goto LABEL_208;
                    }

                    v92 = *(v81 + 120);
                    if (*v92)
                    {
                      if (strncmp(*(v81 + 120), ".docid/", 7uLL) && strncmp(v92, ".activity/", 0xAuLL))
                      {
                        v93 = 1;
                        goto LABEL_159;
                      }

                      v164 = 0uLL;
                      DWORD2(v164) = *(v81 + 28);
                      v94 = sub_10000A794(sub_10000B7BC);
                      v92 = v164;
                      if (v164)
                      {
                        v93 = 0;
                        goto LABEL_159;
                      }

                      v106 = sub_100009620(v94, v95);
                      v76 = os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);
                      if (v76)
                      {
                        v107 = *(v81 + 28);
                        buf.f_bsize = 136315394;
                        *&buf.f_iosize = "client_process_events";
                        WORD2(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 6) = v107;
                        _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "%s: path for pseudo path  device(%d)  is not available", &buf, 0x12u);
                      }

LABEL_187:
                      if ((*(a1 + 192) & 0x40) == 0 || (v91 & 1) == 0)
                      {
                        goto LABEL_219;
                      }

                      memset(&buf, 0, 512);
                      v113 = *(a1 + 120);
                      if (v113)
                      {
                        v76 = statfs(v113, &buf);
                        if (!v76 && buf.f_fsid.val[0] == *(a1 + 112))
                        {
                          v76 = syscall(348, *(a1 + 120));
                          if (v76)
                          {
                            v125 = sub_100009620(v76, v114);
                            v76 = os_log_type_enabled(v125, OS_LOG_TYPE_ERROR);
                            if (v76)
                            {
                              v126 = *(a1 + 120);
                              LODWORD(v164) = 136315138;
                              *(&v164 + 4) = v126;
                              _os_log_error_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "client: failed to chdir back to %s", &v164, 0xCu);
                            }

LABEL_219:
                            v121 = v160 - 1;
                            goto LABEL_220;
                          }
                        }
                      }

                      else
                      {
                        v76 = sub_10000B748();
                        if (v76)
                        {
                          goto LABEL_219;
                        }
                      }

                      v91 = 0;
                      *(a1 + 192) &= 0xFFFFFFFFFFFFFFAFLL;
                      if (!*(a1 + 260))
                      {
                        goto LABEL_208;
                      }

                      continue;
                    }

                    break;
                  }

                  v93 = 1;
                  v92 = ".";
LABEL_159:
                  if (!lstat(v92, &v165))
                  {
                    if (!*(a1 + 256))
                    {
                      sub_10001791C();
                    }

                    goto LABEL_164;
                  }

                  if (*__error() == 2)
                  {
                    goto LABEL_161;
                  }

                  v76 = __error();
                  if (*v76 == 63)
                  {
                    v76 = strrchr(v92, 47);
                    if (!v76 || (v102 = v76, v76 = strlen((v76 + 1)), v76 < 0xFF) || (v103 = *(v102 + 1)) == 0)
                    {
LABEL_175:
                      if ((v93 & 1) == 0)
                      {
                        free(v92);
                      }

                      goto LABEL_187;
                    }

                    v104 = (v102 + 2);
                    while ((v103 & 0x80) == 0)
                    {
                      v105 = *v104++;
                      v103 = v105;
                      if (!v105)
                      {
                        goto LABEL_175;
                      }
                    }

LABEL_161:
                    v96 = sub_100013194(v92);
                    v97 = access(v96, 4);
                    v98 = *(a1 + 284);
                    *&buf.f_bsize = *v161;
                    *&buf.f_bfree = v98;
                    v99 = sandbox_check_by_audit_token();
                    free(v96);
                    if (!(v97 | v99))
                    {
                      v100 = 0;
                      goto LABEL_185;
                    }

                    v108 = *(a1 + 128);
                    if (v108 < 1)
                    {
                      v100 = 1;
LABEL_185:
                      v64 = v157;
                      if (v93)
                      {
                        goto LABEL_166;
                      }
                    }

                    else
                    {
                      v109 = 0;
                      v110 = *(v81 + 120);
                      v111 = *(a1 + 136);
                      v112 = 8 * v108;
                      while (1)
                      {
                        v76 = strstr(v110, *(v111 + v109));
                        if (v76)
                        {
                          break;
                        }

                        v109 += 8;
                        if (v112 == v109)
                        {
                          v100 = 1;
                          LOBYTE(v3) = v155;
                          goto LABEL_185;
                        }
                      }

                      v115 = *(v111 + v109);
                      if (*(a1 + 112))
                      {
                        if (*v115)
                        {
                          v92 = *(v111 + v109);
                        }

                        else
                        {
                          v92 = ".";
                        }

                        v76 = lstat(v92, &v165);
                        LOBYTE(v3) = v155;
                        v64 = v157;
                        if (v76 || v165.st_uid != *v158)
                        {
                          goto LABEL_206;
                        }

LABEL_164:
                        v101 = *(a1 + 284);
                        *&buf.f_bsize = *v161;
                        *&buf.f_bfree = v101;
                      }

                      else
                      {
                        v76 = lstat(v115, &v165);
                        LOBYTE(v3) = v155;
                        v64 = v157;
                        if (v76 || v165.st_uid != *v158)
                        {
                          goto LABEL_206;
                        }

                        v116 = *(a1 + 284);
                        *&buf.f_bsize = *v161;
                        *&buf.f_bfree = v116;
                      }

                      v76 = sandbox_check_by_audit_token();
                      v100 = v76 != 0;
                      if (v93)
                      {
LABEL_166:
                        if (!v100)
                        {
                          goto LABEL_208;
                        }

                        goto LABEL_187;
                      }
                    }
                  }

                  else
                  {
LABEL_206:
                    v100 = 1;
                    if (v93)
                    {
                      goto LABEL_166;
                    }
                  }

                  free(v92);
                  if (!v100)
                  {
                    goto LABEL_208;
                  }

                  goto LABEL_187;
                }

                v84 = 0;
LABEL_129:
                v85 = *(a1 + 216);
                if (v85 && (*(a1 + 192) & 2) == 0 && v84 >= 1)
                {
                  v76 = v85(*(a1 + 224));
                  if (v76)
                  {
                    if (v76 == 268435459)
                    {
                      *(a1 + 192) |= 2uLL;
                    }

                    v152 = v76;
                    *(a1 + 192) |= 1uLL;
                    if (!*(a1 + 152))
                    {
                      *(a1 + 152) = thread_info_outCnt[0];
                    }

                    v86 = *(a1 + 184);
                    *(a1 + 184) = v86 + 1;
                    if (v86 >= 5)
                    {
                      v87 = sub_100009620(v76, v84);
                      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                      {
                        v130 = *(a1 + 256);
                        buf.f_bsize = 134218496;
                        *&buf.f_iosize = a1;
                        WORD2(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 6) = v130;
                        WORD1(buf.f_bfree) = 1024;
                        HIDWORD(buf.f_bfree) = dword_1000246A0;
                        _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "SLOWDOWN: client %p (pid %d) sleeping due to too many errors (num usleeps %d)", &buf, 0x18u);
                      }

                      v76 = sleep(2u);
                      *(a1 + 184) = 0;
                      LOBYTE(v3) = v155;
                    }
                  }

                  else
                  {
                    ++*(a1 + 312);
                    v76 = strlen(*(v81 + 120));
                    v152 = 0;
                    *(a1 + 304) += v76;
                  }
                }

                if (v151 != v154)
                {
                  if (v153 <= 1)
                  {
                    v127 = 1;
                  }

                  else
                  {
                    v127 = v153;
                  }

                  v128 = &v150[8 * v154];
                  do
                  {
                    v129 = *v128++;
                    v76 = sub_100002CCC(v129, v84);
                    --v127;
                  }

                  while (v127);
                }

                *(a1 + 248) = (*(a1 + 248) + v153) % *(a1 + 232);
                if (v152 == 268435460 || v152 == 268435469)
                {
                  goto LABEL_234;
                }

                v79 = v153 + v154;
                v80 = v152;
              }

              while ((v153 + v154) < v151);
              v131 = v80;
              free(v150);
              v34 = &off_100024000;
              if (v131)
              {
                goto LABEL_43;
              }
            }
          }

          goto LABEL_236;
        }

        v66 = v68;
        if (v68 == 268435459)
        {
          *(a1 + 192) |= 2uLL;
          if ((*(a1 + 192) & 2) != 0)
          {
            goto LABEL_236;
          }

LABEL_113:
          *&buf.f_bsize = 0;
          buf.f_blocks = 0;
          gettimeofday(&buf, 0);
          *&v165.st_dev = *&buf.f_bsize + 1;
          v165.st_ino = 0;
          pthread_mutex_lock(a1);
          pthread_cond_timedwait((a1 + 64), a1, &v165);
          pthread_mutex_unlock(a1);
          goto LABEL_236;
        }
      }
    }

    if ((*(a1 + 192) & 2) != 0)
    {
      goto LABEL_236;
    }

    if (v66)
    {
      goto LABEL_113;
    }

    goto LABEL_115;
  }

LABEL_43:
  if (*(v34 + 434))
  {
    v35 = (v3 & 0x20) == 0;
  }

  else
  {
    v35 = 0;
  }

  if (!v35)
  {
LABEL_47:
    if (*v158 && *(a1 + 112))
    {
      syscall(348, "/");
    }

    pthread_mutex_lock(a1);
    *(a1 + 192) |= 2uLL;
    pthread_mutex_unlock(a1);
    if (atomic_fetch_add_explicit(&dword_10002471C, 0, memory_order_relaxed))
    {
      v36 = 0;
      do
      {
        usleep(0x1388u);
        if (atomic_fetch_add_explicit(&dword_10002471C, 0, memory_order_relaxed))
        {
          v37 = v36 >= 0x1387;
        }

        else
        {
          v37 = 1;
        }

        ++v36;
      }

      while (!v37);
    }

    pthread_mutex_lock(&stru_100024140);
    v38 = sub_100002D90(a1);
    if (v38 >= 1)
    {
      v40 = v38;
      for (i = 0; v40 != i; ++i)
      {
        v42 = *(*(a1 + 432) + 8 * ((i + *(a1 + 248)) % *(a1 + 232)));
        if (v42)
        {
          v43 = *(a1 + 200);
          if (((atomic_fetch_and_explicit((v42 + (v43 >> 3) + 56), ~~(-129 >> (v43 & 7)), memory_order_relaxed) << (v43 & 7)) & 0x80) != 0)
          {
            v38 = sub_100002CCC(v42, v39);
          }

          else
          {
            v50 = sub_100009620(v38, v39);
            v38 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
            if (v38)
            {
              v51 = *(v42 + 20);
              v52 = *(a1 + 200);
              v53 = *(v42 + 56);
              v54 = *(v42 + 57);
              v55 = *(a1 + 248);
              v56 = *(a1 + 252);
              buf.f_bsize = 134220032;
              *&buf.f_iosize = v42;
              WORD2(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 6) = v51;
              WORD1(buf.f_bfree) = 1024;
              HIDWORD(buf.f_bfree) = v52;
              LOWORD(buf.f_bavail) = 1024;
              *(&buf.f_bavail + 2) = v53;
              HIWORD(buf.f_bavail) = 1024;
              LODWORD(buf.f_files) = v54;
              WORD2(buf.f_files) = 1024;
              *(&buf.f_files + 6) = i;
              WORD1(buf.f_ffree) = 1024;
              HIDWORD(buf.f_ffree) = v55;
              LOWORD(buf.f_fsid.val[0]) = 1024;
              *(buf.f_fsid.val + 2) = v56;
              HIWORD(buf.f_fsid.val[1]) = 1024;
              buf.f_owner = v40;
              v47 = v50;
              v48 = "client drain: event %p (mask 0x%x) did not have my bit (%d) set! (0x%x 0x%x) (i %d rd %d wr %d, num_pending %d)";
              v49 = 60;
              goto LABEL_68;
            }
          }
        }

        else
        {
          v44 = sub_100009620(v38, v39);
          v38 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
          if (v38)
          {
            v45 = i + *(a1 + 248);
            v46 = *(a1 + 232);
            buf.f_bsize = 67109120;
            buf.f_iosize = v45 % v46;
            v47 = v44;
            v48 = "client drain: *** encountered a NULL entry at idx %d";
            v49 = 8;
LABEL_68:
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v48, &buf, v49);
          }
        }
      }
    }

    sub_10000B250(a1);
    sub_10000B630(a1);
    pthread_mutex_unlock(&stru_100024140);
    pthread_mutex_lock(a1);
    if ((v155 & 0x20) == 0)
    {
      sub_10000B154(*(a1 + 224), v57);
    }

    free(*(a1 + 208));
    if (*(a1 + 128) >= 1)
    {
      v58 = 0;
      do
      {
        free(*(*(a1 + 136) + 8 * v58));
        *(*(a1 + 136) + 8 * v58++) = 0;
      }

      while (v58 < *(a1 + 128));
    }

    free(*(a1 + 136));
    *(a1 + 136) = 0;
    for (j = 368; j != 432; j += 8)
    {
      free(*(a1 + j));
      *(a1 + j) = 0;
    }

    v60 = *(a1 + 120);
    if (v60)
    {
      free(v60);
    }

    v61 = *(a1 + 352);
    if (v61)
    {
      free(v61);
    }

    v62 = *(a1 + 360);
    if (v62)
    {
      free(v62);
      *(a1 + 360) = 0;
    }

    if ((*(a1 + 192) & 0x1000) != 0)
    {
      pthread_mutex_lock(&stru_100024008);
      v63 = 0;
      while (dword_100025858[v63] != *(a1 + 256))
      {
        if (++v63 == 32)
        {
          goto LABEL_261;
        }
      }

      dword_100025858[v63] = 0;
LABEL_261:
      pthread_mutex_unlock(&stru_100024008);
    }

    pthread_mutex_unlock(a1);
    pthread_cond_destroy((a1 + 64));
    free(a1);
    if ((v155 & 0x20) != 0)
    {
      atomic_fetch_add_explicit(&dword_100024724, 0xFFFFFFFF, memory_order_relaxed);
    }
  }

  atomic_fetch_add_explicit(&dword_100024720, 0xFFFFFFFF, memory_order_relaxed);
  return 0;
}

uint64_t sub_100004B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 32);
  v3 = *(*a2 + 32);
  v4 = v2 > v3;
  if (v2 >= v3)
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

uint64_t sub_100004BBC(int *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = 0;
  address = 0;
  if (!a1)
  {
    v22 = sub_100009620(0, a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100014764(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    v16 = -1;
    v14 = -1;
    v21 = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v14 = a2;
  v16 = 4 * a2;
  v17 = vm_allocate(mach_task_self_, &address, 4 * a2, -150994943);
  if (v17)
  {
    v19 = v17;
    v20 = sub_100009620(v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000145AC(v19);
    }

    v14 = 0;
    address = 0;
    v21 = 4294967294;
    goto LABEL_23;
  }

  v52 = v14;
  if (v14)
  {
    LODWORD(v30) = v14;
    v14 = 0;
    v30 = v30;
    v31 = a3;
    do
    {
      v32 = *v31;
      v31 += 2;
      v33 = v14 + v32;
      v34 = v14 + v32 + 8;
      if (a1[38])
      {
        v33 = v34;
      }

      if (a1[39])
      {
        v14 = v33 + 4;
      }

      else
      {
        v14 = v33;
      }

      --v30;
    }

    while (v30);
  }

  v35 = vm_allocate(mach_task_self_, &v53, v14, -150994943);
  if (!v35)
  {
    v51 = a7;
    if (v52)
    {
      v40 = 0;
      v41 = 0;
      do
      {
        *(address + 4 * v40) = v41;
        v35 = strlcpy((v53 + v41), *(a4 + 8 * v40), 0x400uLL);
        v41 += a3[2 * v40];
        if (a1[38])
        {
          if (a8)
          {
            v42 = *(a8 + 8 * v40);
          }

          else
          {
            v42 = 0;
          }

          *(v53 + v41) = v42;
          v41 += 8;
        }

        if (a1[39])
        {
          if (a9)
          {
            v43 = *(a9 + 4 * v40);
          }

          else
          {
            v43 = 0;
          }

          *(v53 + v41) = v43;
          v41 += 4;
        }

        ++v40;
      }

      while (v52 != v40);
    }

    else
    {
      v41 = 0;
    }

    if (v41 != v14)
    {
      v44 = sub_100009620(v35, v36);
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (v45)
      {
        *buf = 136316162;
        v56 = "callback_client";
        v57 = 1024;
        v58 = v52;
        v59 = 1024;
        v60 = v41;
        v61 = 1024;
        v62 = v14;
        v63 = 1024;
        v64 = v52;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s: ERROR: npaths=%d j=%d paths_blob_size=%d i=%d", buf, 0x24u);
      }

      v47 = sub_100009620(v45, v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1000146CC(v47);
      }
    }

    v48 = sub_100004FC4(*a1, 0x2710u, v52, address, v52, a5, v52, v51, v52, v53, v14);
    v21 = v48;
    if (!v48 || v48 == 268435459)
    {
      goto LABEL_21;
    }

    v49 = time(0);
    if (v49 - qword_100024270 < 5)
    {
      if (v49 - qword_100024270 < 2 || (v50 = a1[34], dword_100024278 == v50))
      {
LABEL_53:
        if (v21 == 268435460)
        {
          ++dword_1000246A0;
          usleep(0x186A0u);
          v21 = 268435460;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v50 = a1[34];
    }

    qword_100024270 = v49;
    dword_100024278 = v50;
    goto LABEL_53;
  }

  v37 = v35;
  v38 = sub_100009620(v35, v36);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    sub_10001463C(v37);
  }

  v53 = 0;
  v21 = 4294967293;
LABEL_21:
  if (address)
  {
    vm_deallocate(mach_task_self_, address, v16);
  }

LABEL_23:
  if (v53)
  {
    vm_deallocate(mach_task_self_, v53, v14);
  }

  return v21;
}

uint64_t sub_100004FC4(int a1, mach_msg_timeout_t timeout, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, int a11)
{
  v15 = a4;
  v16 = 16777472;
  v17 = 4 * a5;
  v18 = a6;
  v19 = 16777472;
  v20 = 4 * a7;
  v21 = a8;
  v22 = 16777472;
  v23 = 8 * a9;
  v24 = a10;
  v25 = 16777472;
  v26 = a11;
  v27 = NDR_record;
  v28 = a3;
  v29 = a5;
  v30 = a7;
  v31 = a9;
  v32 = a11;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_10001B150;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
  }

  v12 = mach_msg(msg, 17, 0x78u, 0, 0, timeout, 0);
  if ((v12 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v12;
}

uint64_t sub_1000050E0(uint64_t a1)
{
  v30 = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
  if (!v30)
  {
    return 12;
  }

  if (qword_100024708)
  {
    *v30 = *qword_100024708;
  }

  else
  {
    *v30 = 0;
    *(v30 + 1) = 0;
  }

  v2 = malloc_type_malloc(4 * *(a1 + 128), 0x100004052888210uLL);
  if (!v2)
  {
    goto LABEL_56;
  }

  v3 = v2;
  if (*(a1 + 128) < 1)
  {
    v12 = *(v30 + 3);
    v6 = (v30 + 8);
    v13 = 8 * v12;
    if (*(v30 + 2) < v12)
    {
      goto LABEL_29;
    }

LABEL_28:
    v12 += 128;
    goto LABEL_29;
  }

  v4 = 0;
  v5 = 0;
  v6 = (v30 + 8);
  do
  {
    v7 = *v6;
    if (v7 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v8 = 0;
      v9 = *(a1 + 112);
      v10 = *v30;
      while (1)
      {
        v11 = *(v10 + 8 * v8);
        if ((!v9 || v9 == *(v11 + 8)) && !strcmp(*(*(a1 + 136) + 8 * v4), *v11) && ((*(a1 + 192) & 0x100) != 0 && (*(v11 + 14) & 1) != 0 || (*(a1 + 192) & 0x100) == 0 && (*(v11 + 14) & 1) == 0))
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_22;
        }
      }

      v3[v4] = v8;
      ++*(v11 + 16);
      LODWORD(v7) = *v6;
    }

    if (v8 >= v7)
    {
LABEL_22:
      v3[v4] = -1;
      ++v5;
    }

    ++v4;
  }

  while (v4 < *(a1 + 128));
  v12 = *(v30 + 3);
  v13 = 8 * v12;
  if (*(v30 + 2) + v5 < v12)
  {
    goto LABEL_29;
  }

  if (v5 <= 127)
  {
    goto LABEL_28;
  }

  v12 += (v5 + 31) & 0x7FFFFFE0;
LABEL_29:
  v14 = malloc_type_calloc(v12, 8uLL, 0x2004093837F09uLL);
  if (!v14)
  {
    goto LABEL_55;
  }

  v15 = v14;
  if (*v30)
  {
    memcpy(v14, *v30, v13);
  }

  v16 = *v6;
  if (*(a1 + 128) < 1)
  {
LABEL_40:
    qsort(v15, v16, 8uLL, sub_1000054C4);
    *v30 = v15;
    *(v30 + 2) = v16;
    *(v30 + 3) = v12;
    v24 = qword_100024708;
    qword_100024708 = v30;
    __dmb(0xBu);
    do
    {
      if (!atomic_fetch_add_explicit(&dword_100024718, 0, memory_order_relaxed))
      {
        break;
      }

      usleep(0x2710u);
    }

    while (qword_100024710 == v24);
    if (v24)
    {
      free(*v24);
      free(v24);
    }

    free(v3);
    return 0;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = v3[v18];
    if (v19 == -1)
    {
      break;
    }

    *(*(a1 + 208) + v17 + 8) = *(*&v15[8 * v19] + 24);
    __dmb(0xBu);
    *(*&v15[8 * v3[v18]] + 24) = *(a1 + 208) + v17;
LABEL_39:
    ++v18;
    v17 += 16;
    if (v18 >= *(a1 + 128))
    {
      goto LABEL_40;
    }
  }

  v20 = malloc_type_malloc(0x20uLL, 0x10300405734DD4FuLL);
  *&v15[8 * v16] = v20;
  if (!v20)
  {
    goto LABEL_47;
  }

  v22 = *(a1 + 136);
  *v20 = strdup(*(v22 + 8 * v18));
  v23 = *&v15[8 * v16];
  if (*v23)
  {
    *(v23 + 8) = *(a1 + 112);
    *(v23 + 12) = strlen(*(v22 + 8 * v18));
    *(v23 + 14) = (*(a1 + 192) >> 8) & 1;
    *(v23 + 16) = 1;
    *(v23 + 24) = *(a1 + 208) + v17;
    ++v16;
    goto LABEL_39;
  }

  free(*&v15[8 * v16]);
LABEL_47:
  v26 = sub_100009620(v20, v21);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_100015664();
  }

  v27 = *v6;
  if (v27 < v16)
  {
    v28 = &v15[8 * v27];
    v29 = v16 - v27;
    do
    {
      if (*v28)
      {
        free(*v28);
      }

      ++v28;
      --v29;
    }

    while (v29);
  }

  free(v15);
LABEL_55:
  free(v3);
LABEL_56:
  free(v30);
  return 12;
}

uint64_t sub_100005500(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v14 = 0;
  if (*(a1 + 240) == -1)
  {
    return 0;
  }

  v2 = a1;
  v3 = dword_100024740;
  if (dword_100024740)
  {
LABEL_3:
    v4 = sub_10000A794(sub_10000A160);
    v6 = v4;
  }

  else
  {
    while (v3 != 10)
    {
      v7 = v3;
      if ((*(v2 + 192) & 0x1ALL) == 0)
      {
        a1 = usleep(0x3D090u);
        v3 = v7 + 1;
        if (!dword_100024740)
        {
          continue;
        }
      }

      if (v7 < 9)
      {
        goto LABEL_3;
      }

      break;
    }

    v8 = sub_100009620(a1, a2);
    v4 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_1000181E4();
    }

    v6 = 0;
  }

  if (*(v2 + 216) && (*(v2 + 192) & 2) == 0)
  {
    if (**(v2 + 136))
    {
      if ((*(v2 + 192) & 1) != 0 && (*(v2 + 192) & 0x4000) == 0)
      {
        v6 = sub_100010B68(v2);
      }

      if (!v6)
      {
        __strlcpy_chk();
        v19 = strlen(__s) + 1;
        v17 = __s;
        v16 = 0x8000000;
        if (!*(v2 + 168))
        {
          *(v2 + 168) = *(v2 + 240);
        }

        v9 = (*(v2 + 216))(*(v2 + 224), 1, &v19, &v17, &v16, 0, v2 + 168, &v15, &v14);
        v6 = v9;
        if (v9)
        {
          if (v9 == 268435459)
          {
            *(v2 + 192) |= 2uLL;
          }

          v11 = sub_100009620(v9, v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_100018220();
          }

          *(v2 + 192) |= 0x200uLL;
        }
      }
    }

    else
    {
      v12 = sub_100009620(v4, v5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10001829C();
      }
    }
  }

  return v6;
}

void *sub_100005740(void *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if ((*(a1[4] + 192) & 0x20) != 0)
  {
    xpc_dictionary_set_string(v2, "metric_type", "global");
    xpc_dictionary_set_int64(v3, "resident_size", a1[6]);
    xpc_dictionary_set_int64(v3, "virtual_size", a1[5]);
    xpc_dictionary_set_int64(v3, "string_table_count", dword_100025850);
    xpc_dictionary_set_int64(v3, "event_id", qword_1000246D0[dword_1000246E0] - *(a1[4] + 160));
    v5 = dword_100024720;
    v6 = "num_clients";
  }

  else
  {
    xpc_dictionary_set_string(v2, "metric_type", "client");
    if (*(a1[4] + 360))
    {
      v4 = *(a1[4] + 360);
    }

    else
    {
      v4 = "unknown";
    }

    xpc_dictionary_set_string(v3, "client_name", v4);
    xpc_dictionary_set_int64(v3, "client_pid", *(a1[4] + 256));
    xpc_dictionary_set_int64(v3, "num_paths", *(a1[4] + 128));
    v5 = *(a1[4] + 304);
    v6 = "allocated_bytes";
  }

  xpc_dictionary_set_int64(v3, v6, v5);
  return v3;
}

BOOL sub_1000058A8(uint64_t a1, unsigned int a2, char *a3)
{
  v5 = *(a1 + 284);
  *v12.val = *(a1 + 268);
  *&v12.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &v12);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  *v12.val = 0;
  v8 = SecTaskCopySigningIdentifier(v6, &v12);
  if (v8)
  {
    v9 = v8;
    v10 = CFStringGetCString(v8, a3, a2, 0x8000100u) != 0;
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v7);
  return v10;
}

uint64_t sub_100005950(char *cStr, uint64_t a2, char *a3)
{
  if (!cStr || !a3)
  {
    v18 = sub_100009620(cStr, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100015A58();
    }

    return 0;
  }

  v4 = a2;
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v5)
  {
    v19 = sub_100009620(0, v6);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100015C4C();
    }

    return 0;
  }

  v7 = v5;
  v8 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, 0);
  if (!v8)
  {
    v20 = sub_100009620(0, v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100015BD0();
    }

    CFRelease(v7);
    return 0;
  }

  v10 = v8;
  v11 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
  v12 = v11;
  if (v11)
  {
    Identifier = CFBundleGetIdentifier(v11);
    if (Identifier)
    {
      CString = CFStringGetCString(Identifier, a3, v4, 0x8000100u);
      if (CString)
      {
        v17 = 1;
        goto LABEL_23;
      }

      v23 = sub_100009620(CString, v16);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100015AD8();
      }
    }

    else
    {
      v22 = sub_100009620(0, v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100015B54();
      }
    }
  }

  v17 = 0;
LABEL_23:
  CFRelease(v7);
  CFRelease(v10);
  if (v12)
  {
    CFRelease(v12);
  }

  return v17;
}

uint64_t sub_100005AEC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 256);
  v5 = -1;
  v6 = dword_1000258D8;
  while (1)
  {
    v8 = *v6;
    v6 += 2;
    v7 = v8;
    if (v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = v3;
    }

    if (v5 == -1)
    {
      v5 = v9;
    }

    if (v4 == v7)
    {
      break;
    }

    v3 = (v3 + 1);
    if (v3 == 512)
    {
      if (v5 == -1)
      {
        v15 = sub_100009620(a1, a2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000156A0();
        }

        return 28;
      }

      v3 = &dword_1000258D8[2 * v5];
      *v3 = v4;
      v3[1] = 0;
      LODWORD(v3) = v5;
      break;
    }
  }

  v10 = &dword_1000258D8[2 * v3];
  if (v10[1] <= 511)
  {
    for (i = 0; i != 512; ++i)
    {
      if (!*(&xmmword_100024758 + i))
      {
        result = 0;
        *(a1 + 200) = i;
        __dmb(0xBu);
        *(&xmmword_100024758 + i) = a1;
        ++v10[1];
        return result;
      }
    }

    if (v3 == v5)
    {
      *v10 = 0;
    }

    v13 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001571C();
    }
  }

  else
  {
    v11 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100015798();
    }
  }

  return 28;
}

uint64_t sub_100005C24(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, _OWORD *a15, uint64_t *a16)
{
  v22 = a2;
  if (a2 && a4 >= 2 && a13)
  {
    return 22;
  }

  v25 = malloc_type_calloc(8 * a8 + 440, 1uLL, 0x10B0040A09B0EA7uLL);
  if (!v25)
  {
    return 12;
  }

  v26 = v25;
  v58 = a13;
  pthread_mutex_init(v25, 0);
  pthread_cond_init((v26 + 64), 0);
  *(v26 + 128) = a4;
  v27 = a4;
  v28 = malloc_type_calloc(a4, 8uLL, 0x10040436913F5uLL);
  *(v26 + 136) = v28;
  if (!v28)
  {
    goto LABEL_48;
  }

  v56 = a7;
  v57 = a1;
  if (!a4)
  {
    goto LABEL_29;
  }

  v29 = 0;
  while (1)
  {
    v30 = *(a3 + 8 * v29);
    if (!v22)
    {
LABEL_19:
      v36 = v30;
      goto LABEL_21;
    }

    if (*v30 == 47 && !v30[1])
    {
      break;
    }

    v31 = strstr(*(a3 + 8 * v29), "/.docid");
    if (v31)
    {
      v32 = strcmp(v31, "/.docid");
      if (v32)
      {
        goto LABEL_22;
      }

      v34 = ".docid";
    }

    else
    {
      v35 = strstr(v30, "/.activity");
      if (!v35)
      {
        goto LABEL_19;
      }

      v32 = strcmp(v35, "/.activity");
      if (v32)
      {
        goto LABEL_22;
      }

      v34 = ".activity";
    }

    *(*(v26 + 136) + 8 * v29) = strdup(v34);
LABEL_23:
    if (a4 == ++v29)
    {
      goto LABEL_29;
    }
  }

  v36 = &unk_10001A42E;
LABEL_21:
  v32 = strdup(v36);
  *(*(v26 + 136) + 8 * v29) = v32;
LABEL_22:
  if (*(*(v26 + 136) + 8 * v29))
  {
    goto LABEL_23;
  }

  v37 = sub_100009620(v32, v33);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    sub_100015DC8();
  }

  if (a4 != v29)
  {
    if (v29 < a4)
    {
      do
      {
        *(*(v26 + 136) + 8 * v29++) = 0;
      }

      while (a4 != v29);
    }

    goto LABEL_48;
  }

LABEL_29:
  *(v26 + 400) = 0u;
  *(v26 + 416) = 0u;
  *(v26 + 368) = 0u;
  *(v26 + 384) = 0u;
  if (a6)
  {
    v38 = (v26 + 368);
    v39 = a6;
    do
    {
      __strlcpy_chk();
      if (__s[strlen(__s) - 1] != 47)
      {
        __strlcat_chk();
      }

      *v38++ = strdup(__s);
      ++a5;
      --v39;
    }

    while (v39);
  }

  *(v26 + 112) = v22;
  *(v26 + 216) = a11;
  *(v26 + 224) = a12;
  *(v26 + 176) = v56;
  *(v26 + 232) = a8;
  *(v26 + 240) = a9;
  *(v26 + 192) = a10;
  *(v26 + 432) = v26 + 440;
  *(v26 + 256) = v57;
  *(v26 + 260) = v58;
  *(v26 + 264) = a14;
  v40 = a15[1];
  *(v26 + 268) = *a15;
  *(v26 + 284) = v40;
  v41 = a15[1];
  *__s = *a15;
  v60 = v41;
  *(v26 + 300) = sub_1000062F8(__s, "com.apple.private.vfs.authorized-access");
  if (!sub_100006430())
  {
    v42 = *(v26 + 256);
    v43 = getpid();
    if (v42 != v43)
    {
      v45 = sub_100009620(v43, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_100015E50();
      }
    }
  }

  v46 = malloc_type_malloc(16 * a4, 0x20040A4A59CD2uLL);
  *(v26 + 208) = v46;
  if (!v46)
  {
LABEL_48:
    v24 = 12;
    goto LABEL_49;
  }

  if (a4)
  {
    v47 = v46 + 8;
    v48 = a4;
    do
    {
      *(v47 - 1) = v26;
      *v47 = 0;
      v47 += 2;
      --v48;
    }

    while (v48);
  }

  pthread_mutex_lock(&stru_100024140);
  v24 = sub_100005AEC(v26, v49);
  if (v24)
  {
LABEL_45:
    pthread_mutex_unlock(&stru_100024140);
LABEL_49:
    free(*(v26 + 208));
    v50 = *(v26 + 136);
    if (v50)
    {
      if (a4)
      {
        v51 = 0;
        v52 = 8 * v27;
        do
        {
          v53 = *(*(v26 + 136) + v51);
          if (v53)
          {
            free(v53);
            *(*(v26 + 136) + v51) = 0;
          }

          v51 += 8;
        }

        while (v52 != v51);
        v50 = *(v26 + 136);
      }

      free(v50);
    }

    for (i = 368; i != 432; i += 8)
    {
      free(*(v26 + i));
      *(v26 + i) = 0;
    }

    pthread_cond_destroy((v26 + 64));
    free(v26);
    v26 = 0;
    goto LABEL_60;
  }

  v24 = sub_1000050E0(v26);
  if (v24)
  {
    sub_10000B630(v26);
    goto LABEL_45;
  }

  pthread_mutex_unlock(&stru_100024140);
LABEL_60:
  *a16 = v26;
  return v24;
}

uint64_t sub_1000060E0(uint64_t a1)
{
  if (!sub_100006F34())
  {
    return 22;
  }

  v2 = *(a1 + 120);
  v3 = 16 * v2;
  v4 = (16 * v2) & 0x80 | (4 * ((v2 >> 1) & 1));
  if ((v2 & 0x20) != 0)
  {
    v4 |= 0x1000uLL;
    pthread_mutex_lock(&stru_100024008);
    v5 = 0;
    while (dword_100025858[v5])
    {
      if (++v5 == 32)
      {
        goto LABEL_8;
      }
    }

    dword_100025858[v5] = *(a1 + 136);
LABEL_8:
    pthread_mutex_unlock(&stru_100024008);
    v2 = *(a1 + 120);
    v3 = 16 * v2;
  }

  v6 = v4 | v3 & 0x100;
  if ((v2 & 0x80) != 0)
  {
    v7 = v6 | 0x4000;
  }

  else
  {
    v7 = v6;
  }

  if ((v2 & 0x80) != 0)
  {
    v8 = 0x2000;
  }

  else
  {
    v8 = 457;
  }

  if ((v2 & 0x40) != 0)
  {
    v7 |= 0x2000uLL;
    *(a1 + 152) = 1;
  }

  if ((v2 & 0x100) != 0)
  {
    v7 |= 0x8000uLL;
    *(a1 + 156) = 1;
  }

  v24 = 0;
  v25 = 0;
  memset(&__attr, 0, sizeof(__attr));
  v9 = *(a1 + 24);
  v10 = *(a1 + 16);
  v11 = *(a1 + 20);
  v12 = *(a1 + 40);
  v13 = *(a1 + 112);
  v14 = *(a1 + 128);
  v15 = *(a1 + 136);
  v16 = *(a1 + 140);
  v17 = *(a1 + 144);
  v18 = *(a1 + 176);
  v23[0] = *(a1 + 160);
  v23[1] = v18;
  v19 = sub_100005C24(v15, v10, v9, v11, (a1 + 48), v12, v13, v8, v14, v7 | (v2 << 7) & 0x10000, sub_100004BBC, a1, v16, v17, v23, &v25);
  if (v19)
  {
    v21 = sub_100009620(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100018AB4();
    }

    return 22;
  }

  atomic_fetch_add_explicit(&dword_100024720, 1u, memory_order_relaxed);
  sub_1000054F0(a1);
  pthread_attr_init(&__attr);
  pthread_attr_setdetachstate(&__attr, 2);
  if ((v7 & 0x4000) != 0)
  {
    pthread_attr_set_qos_class_np(&__attr, QOS_CLASS_USER_INTERACTIVE, 0);
  }

  pthread_create(&v24, &__attr, sub_1000034A0, v25);
  pthread_attr_destroy(&__attr);
  return 0;
}

BOOL sub_1000062F8(_OWORD *a1, const char *a2)
{
  if (a2)
  {
    v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    v4 = a1[1];
    *cf.val = *a1;
    *&cf.val[4] = v4;
    v5 = SecTaskCreateWithAuditToken(0, &cf);
    if (v5)
    {
      v7 = v5;
      *cf.val = 0;
      v8 = SecTaskCopyValueForEntitlement(v5, v3, &cf);
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        v11 = v10 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
        CFRelease(v9);
      }

      else
      {
        v11 = 0;
      }

      if (*cf.val)
      {
        CFRelease(*cf.val);
      }

      CFRelease(v7);
      if (v3)
      {
LABEL_19:
        CFRelease(v3);
      }
    }

    else
    {
      v13 = sub_100009620(0, v6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100015CC8();
      }

      v11 = 0;
      if (v3)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v12 = sub_100009620(a1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100015D48();
    }

    return 0;
  }

  return v11;
}

BOOL sub_100006430()
{
  v0 = __chkstk_darwin();
  memset(v5, 0, 255);
  v1 = *(v0 + 256);
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(v1, buffer, 0x1000u) >= 1)
  {
    v2 = buffer;
  }

  else
  {
    v2 = "(unknown)";
  }

  if (sub_100005950(v2, 255, v5) || (buffer[0] = 0, v4 = csops(), result = 0, !v4) && (buffer[0] & 0x4000000) != 0 && (result = sub_1000058A8(v0, 0xFFu, v5)))
  {
    *(v0 + 360) = strdup(v5);
    return 1;
  }

  return result;
}

void sub_100006568(_BOOL8 a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a4;
    v6 = sub_100009620(a1, a2);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      sub_100013994(v5);
    }
  }

  if (a2 > 0xD)
  {
    goto LABEL_10;
  }

  if (((1 << a2) & 0x2182) != 0)
  {
    return;
  }

  if (a2 == 2)
  {
    if ((dispatch_mach_mig_demux() & 1) == 0)
    {
      msg = dispatch_mach_msg_get_msg();
      mach_msg_destroy(msg);
    }
  }

  else
  {
LABEL_10:
    v8 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100013A54();
    }
  }
}

void sub_100006648(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 5 || *(a1 + 4) != 160)
  {
    v5 = -304;
LABEL_18:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 51) != 1 || *(a1 + 67) != 1 || *(a1 + 83) != 1 || *(a1 + 99) != 1 || *(a1 + 120) != *(a1 + 52) >> 2 || *(a1 + 68) != *(a1 + 124) || *(a1 + 132) != *(a1 + 84) >> 2 || *(a1 + 100) != *(a1 + 136))
  {
    v5 = -300;
    goto LABEL_18;
  }

  v28 = v2;
  v29 = v3;
  v4 = a1 + 160;
  if (*(a1 + 160) || *(a1 + 164) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v6 = (a2 + 28);
    *(a2 + 32) = 0x14000000000000;
    v8 = *(a1 + 12);
    v9 = *(a1 + 28);
    v10 = *(a1 + 112);
    v11 = *(a1 + 116);
    v12 = *(a1 + 40);
    v13 = *(a1 + 52) >> 2;
    v14 = *(a1 + 56);
    v15 = *(a1 + 68);
    v16 = *(a1 + 128);
    v17 = *(a1 + 72);
    v18 = *(a1 + 84) >> 2;
    v19 = *(a1 + 88);
    v20 = *(a1 + 100);
    v21 = *(a1 + 140);
    v22 = *(a1 + 148);
    v23 = *(a1 + 152);
    v24 = *(v4 + 36);
    v27[0] = *(v4 + 20);
    v27[1] = v24;
    v25 = sub_10000688C(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v6, v27);
    mig_deallocate(*(a1 + 88), *(a1 + 100));
    *(a1 + 88) = 0;
    *(a1 + 100) = 0;
    mig_deallocate(*(a1 + 72), *(a1 + 84));
    *(a1 + 72) = 0;
    *(a1 + 84) = 0;
    mig_deallocate(*(a1 + 56), *(a1 + 68));
    *(a1 + 56) = 0;
    *(a1 + 68) = 0;
    mig_deallocate(*(a1 + 40), *(a1 + 52));
    *(a1 + 40) = 0;
    *(a1 + 52) = 0;
    if (v25)
    {
      *(a2 + 32) = v25;
      *(a2 + 24) = NDR_record;
    }

    else
    {
      *a2 |= 0x80000000;
      *(a2 + 4) = 40;
      *(a2 + 24) = 1;
    }
  }
}

uint64_t sub_10000688C(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, signed int a9, unsigned int *a10, int a11, uint64_t a12, unsigned int a13, uint64_t a14, int a15, uint64_t a16, mach_port_name_t *a17, _OWORD *a18)
{
  v18 = a8;
  v20 = a6;
  v22 = a4;
  *egidp = 0;
  pidp = 0;
  v25 = a18[1];
  *atoken.val = *a18;
  *&atoken.val[4] = v25;
  audit_token_to_au32(&atoken, 0, &egidp[1], egidp, 0, 0, &pidp, 0, 0);
  v27 = mach_task_self_;
  *a17 = 0;
  if (v22 == v20)
  {
    v62 = a2;
    if (a9 == a11)
    {
      if (v22 > 0x1000 || a9 > 0x400000)
      {
        v35 = v27;
        v33 = 268435459;
        v38 = sub_100009620(v27, v26);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100013FFC();
        }
      }

      else if (v18 > 0x400000 || a13 > 0x400000)
      {
        v35 = v27;
        v33 = 268435459;
        v39 = sub_100009620(v27, v26);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_100013F7C();
        }
      }

      else if (v22)
      {
        v28 = 0;
        while (*(a5 + 4 * v28) <= v18)
        {
          if (v22 == ++v28)
          {
            goto LABEL_11;
          }
        }

        v35 = v27;
        v33 = 268435459;
        v40 = sub_100009620(v27, v26);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_100013BDC();
        }
      }

      else
      {
LABEL_11:
        if (a9 < 1)
        {
LABEL_15:
          v30 = v27;
          v31 = mach_port_allocate(v27, 1u, a17);
          if (v31)
          {
            v33 = v31;
            v34 = sub_100009620(v31, v32);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_100013C60(v33);
            }

            goto LABEL_35;
          }

          v61 = a7;
          previous = 0;
          v35 = v30;
          v42 = mach_port_request_notification(v30, *a17, 70, 1u, *a17, 0x15u, &previous);
          if (v42)
          {
            v33 = v42;
            v44 = sub_100009620(v42, v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              sub_100013CF0(v33);
            }
          }

          else
          {
            v46 = a14;
            if (previous)
            {
              mach_port_deallocate(mach_task_self_, previous);
              v46 = a14;
            }

            v47 = *a17;
            v48 = a18[1];
            *atoken.val = *a18;
            *&atoken.val[4] = v48;
            v49 = sub_100007074(v62, v47, a3, v22, a5, v18, v61, v46, a15, a16, pidp, egidp[1], egidp[0], &atoken);
            if (v49)
            {
              v51 = v49;
              if (sub_1000071A8(v49, a9, a10, a13, a12))
              {
                v33 = 268435459;
                *v51 = 0;
                sub_10000B078(v51, v52);
                v55 = sub_100009620(v53, v54);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  sub_100013D80();
                }
              }

              else
              {
                if (!sub_1000060E0(v51))
                {
                  return 0;
                }

                v33 = 268435459;
                *v51 = 0;
                sub_10000B078(v51, v57);
                v60 = sub_100009620(v58, v59);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  sub_100013DFC();
                }
              }

              goto LABEL_35;
            }

            v33 = 268435459;
            v56 = sub_100009620(0, v50);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              sub_100013E78();
            }
          }
        }

        else
        {
          v29 = 0;
          while (a10[v29] <= a13)
          {
            if (a9 == ++v29)
            {
              goto LABEL_15;
            }
          }

          v35 = v27;
          v33 = 268435459;
          v41 = sub_100009620(v27, v26);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_100013EF8();
          }
        }
      }
    }

    else
    {
      v35 = v27;
      v33 = 268435459;
      v37 = sub_100009620(v27, v26);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100013B5C();
      }
    }
  }

  else
  {
    v35 = v27;
    v33 = 268435459;
    v36 = sub_100009620(v27, v26);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100013ADC();
    }
  }

  if (*a17)
  {
    mach_port_mod_refs(v35, *a17, 1u, -1);
LABEL_35:
    *a17 = 0;
  }

  return v33;
}

void *sub_100006CFC(int a1, uintptr_t a2, int a3, unsigned int a4, uint64_t a5, int a6, const void *a7, uint64_t a8, int a9, uint64_t a10, int a11, int a12, int a13, _OWORD *a14)
{
  v22 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10B004086E55B40uLL);
  if (!v22)
  {
    v33 = sub_100009620(0, v23);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1000142DC(v33, v34, v35, v36, v37, v38, v39, v40);
    }

    return 0;
  }

  v24 = v22;
  v25 = malloc_type_malloc(a6, 0x86BF7356uLL);
  *(v24 + 4) = v25;
  if (!v25)
  {
    v41 = sub_100009620(0, v26);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_100014264(v41, v42, v43, v44, v45, v46, v47, v48);
    }

    goto LABEL_18;
  }

  memcpy(v25, a7, a6);
  v27 = malloc_type_malloc(8 * a4, 0x10040436913F5uLL);
  *(v24 + 3) = v27;
  if (!v27)
  {
    v49 = sub_100009620(0, v28);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_1000141EC(v49, v50, v51, v52, v53, v54, v55, v56);
    }

    goto LABEL_17;
  }

  if (a4)
  {
    v29 = 0;
    do
    {
      *(*(v24 + 3) + 8 * v29) = *(v24 + 4) + *(a5 + 4 * v29);
      ++v29;
    }

    while (a4 != v29);
  }

  *(v24 + 4) = a3;
  *(v24 + 5) = a4;
  *v24 = a1;
  *(v24 + 1) = a2;
  v30 = sub_1000070E4(a2);
  *(v24 + 1) = v30;
  if (!v30)
  {
    v57 = sub_100009620(0, v31);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_100014174(v57, v58, v59, v60, v61, v62, v63, v64);
    }

LABEL_17:
    free(*(v24 + 4));
LABEL_18:
    free(v24);
    return 0;
  }

  *(v24 + 14) = a8;
  *(v24 + 30) = a9;
  *(v24 + 16) = a10;
  *(v24 + 34) = a11;
  *(v24 + 35) = a12;
  *(v24 + 36) = a13;
  *(v24 + 37) = 1;
  v32 = a14[1];
  *(v24 + 10) = *a14;
  *(v24 + 11) = v32;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10000B6B4;
  handler[3] = &unk_100020808;
  handler[4] = v24;
  dispatch_source_set_cancel_handler(v30, handler);
  dispatch_activate(*(v24 + 1));
  return v24;
}

BOOL sub_100006F34()
{
  if (dword_1000246C8)
  {
    return 0;
  }

  if (dword_100024750)
  {
    return 1;
  }

  pthread_mutex_lock(&stru_100024090);
  if (dword_100024750)
  {
    pthread_mutex_unlock(&stru_100024090);
    return 1;
  }

  v7.tv_sec = 0;
  v7.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v7);
  v7.tv_sec += 10;
  while (!dword_1000246C8)
  {
    v2 = pthread_cond_timedwait(&stru_1000240D0, &stru_100024090, &v7);
    if (dword_100024750)
    {
      v0 = dword_1000246C8 == 0;
      goto LABEL_19;
    }

    v4 = v2;
    if (v2)
    {
      if (v2 == 60)
      {
        v5 = sub_100009620(v2, v3);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_10001831C();
        }
      }

      else
      {
        v6 = sub_100009620(v2, v3);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_10001839C(v4);
        }
      }

      break;
    }
  }

  v0 = 0;
LABEL_19:
  pthread_mutex_unlock(&stru_100024090);
  return v0;
}

void *sub_100007074(int a1, uintptr_t a2, int a3, unsigned int a4, uint64_t a5, int a6, const void *a7, uint64_t a8, int a9, uint64_t a10, int a11, int a12, int a13, _OWORD *a14)
{
  v14 = a14[1];
  v16[0] = *a14;
  v16[1] = v14;
  result = sub_100006CFC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v16);
  if (result)
  {
    result[24] = qword_100024260;
    qword_100024260 = result;
    ++dword_100024268;
  }

  return result;
}

NSObject *sub_1000070E4(uintptr_t handle)
{
  v1 = dispatch_source_create(&_dispatch_source_type_mach_recv, handle, 0, qword_100024248);
  v3 = v1;
  if (v1)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10000AC90;
    handler[3] = &unk_1000207E8;
    handler[4] = v1;
    dispatch_source_set_event_handler(v1, handler);
  }

  else
  {
    v4 = sub_100009620(0, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001387C();
    }
  }

  return v3;
}

uint64_t sub_1000071A8(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 48) = 0u;
  v5 = (a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  if (a2 > 8)
  {
    return 28;
  }

  if (a2 >= 1)
  {
    v10 = a3;
    v11 = a2;
    v12 = a2;
    v13 = a3;
    do
    {
      v14 = *v13++;
      if (strnlen((a5 + v14), 0x401uLL) > 0x400)
      {
        return 22;
      }

      --v12;
    }

    while (v12);
    do
    {
      ++v10;
      __strlcpy_chk();
      *v5++ = strdup(__s1);
      --v11;
    }

    while (v11);
  }

  result = 0;
  *(a1 + 40) = a2;
  return result;
}

uint64_t sub_1000072C0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000021A0(&unk_100025758);
  if (a2)
  {
    v13 = 0;
    v14 = a2;
    v15 = &off_100024000;
    v102 = a4;
    v103 = a6;
    v101 = a2;
    while (1)
    {
      v16 = sub_100009948(*(a6 + 4 * v13), v12);
      if (!v16)
      {
        v24 = v15[233];
        goto LABEL_18;
      }

      v17 = v16;
      v18 = (v16 + 216);
      v19 = v15[233];
      if (*(v16 + 216))
      {
        v20 = *(v16 + 216);
      }

      else
      {
        v20 = v15[233];
      }

      if ((*(v16 + 32) & 0x80) == 0 && (*(v16 + 32) & 4) != 0)
      {
        goto LABEL_58;
      }

      bzero(&v126, 0x878uLL);
      if (strnstr(*(a4 + 8 * v13), ".fseventsd", 0x400uLL) || strnstr(*(a4 + 8 * v13), ".Spotlight-V100", 0x400uLL))
      {
        goto LABEL_119;
      }

      v21 = statfs(*(v17 + 8), &v126);
      if (v21 || v126.f_fsid.val[0] != *v17)
      {
        break;
      }

      v16 = time(0);
      if (v16 - *(v17 + 40) >= 16)
      {
        v23 = sub_100009620(v16, v12);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v98 = *(v17 + 8);
          *buf = 136315138;
          v119 = v98;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Events arrived for %s after an unmount request! Re-initializing.", buf, 0xCu);
        }

        *(v17 + 32) &= ~0x80u;
        *(v17 + 32) |= 0x2004u;
        v16 = sub_10000CA34();
        *(v17 + 32) &= ~0x2000u;
LABEL_56:
        v20 = *v18;
      }

      v19 = v15[233];
LABEL_58:
      if ((*(v17 + 32) & 0x1000) == 0)
      {
        v58 = v17;
        if (v20)
        {
          v24 = v20;
        }

        else
        {
          v24 = v19;
        }

        if ((v58[1].next & 0x40) == 0)
        {
          v59 = v58;
LABEL_65:
          if ((v59[1].next & 2) != 0)
          {
            v60 = v59;
            v61 = sub_100009620(v16, v12);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v97 = *(v60 + 8);
              v126.f_bsize = 136315138;
              *&v126.f_iosize = v97;
              _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "event id's wrapped for volume %s", &v126, 0xCu);
            }

            sub_1000087F4(v24 + 2304);
            sub_10000EDBC(v24, 1);
            *(v24 + 252) = 0;
            *(v24 + 8) = 0;
            v59 = v60;
            sub_10000EFA4(v60, v24);
            *(v60 + 32) &= ~2u;
          }

          v25 = *(a4 + 8 * v13);
          v26 = *(a3 + 8 * v13);
          v108 = v59;
          if (*(a6 + 4 * v13) == v59->have)
          {
            v62 = strncmp(v25, "/.docid/", 8uLL);
            v16 = strncmp(v25, "/.activity/", 0xBuLL);
            have = 1;
            if (v62 && v16 && (have = v108[1].have, have < 1))
            {
              v64 = v25;
            }

            else
            {
              v64 = v25;
              do
              {
                if (*v64 == 47)
                {
                  --have;
                }

                else if (!*v64)
                {
                  break;
                }

                ++v64;
              }

              while (have > 0);
            }

            v112 = 0;
            v26 = &v25[v26] - v64;
            v25 = v64;
          }

          else
          {
            v112 = 0;
          }

LABEL_19:
          v27 = *(a7 + 8 * v13);
          if (v27 > *(v24 + 8))
          {
            *(v24 + 8) = v27;
            v27 = *(a7 + 8 * v13);
          }

          v111 = v27;
          v28 = *(a8 + 8 * v13);
          v109 = *(a5 + 4 * v13);
          v110 = *(a9 + 4 * v13);
          if (v25[v26 - 1])
          {
            v29 = v25[v26];
            v30 = sub_100009620(v16, v12);
            v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
            if (v29)
            {
              if (v31)
              {
                v126.f_bsize = 136315394;
                *&v126.f_iosize = v25;
                WORD2(v126.f_blocks) = 2048;
                *(&v126.f_blocks + 6) = v26;
                _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "add_fname: path <<%s>> has len %zd but no trailing nul char!", &v126, 0x16u);
              }
            }

            else
            {
              if (v31)
              {
                v126.f_bsize = 136315394;
                *&v126.f_iosize = v25;
                WORD2(v126.f_blocks) = 2048;
                *(&v126.f_blocks + 6) = v26;
                _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "add_fname: path <<%s>> has len %zd but should be +1!", &v126, 0x16u);
              }

              ++v26;
            }
          }

          v32 = *(v24 + 2512);
          v113 = v13;
          if (3 * v32 + 3 <= (4 * *(v24 + 2520)))
          {
            v33 = (2 * v32 + 2);
            if (v33 >= 0x80000)
            {
              if (!*(v24 + 2516))
              {
                v34 = sub_100009620(v33, v12);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v95 = *(v24 + 2520);
                  v96 = *(v24 + 2512);
                  v126.f_bsize = 67109376;
                  v126.f_iosize = v95;
                  LOWORD(v126.f_blocks) = 1024;
                  *(&v126.f_blocks + 2) = v96;
                  _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "fname table has grown too large. (filled %d / mask 0x%x)\n", &v126, 0xEu);
                }

                *(v24 + 2516) = 1;
              }

              goto LABEL_82;
            }

            *buf = 0;
            v35 = sub_1000083CC(v33, buf);
            if (v35)
            {
              v37 = v35;
              v100 = v25;
              v38 = pthread_rwlock_wrlock((v24 + 2304));
              v40 = 0;
              v41 = *(v24 + 2504);
              *(v24 + 2504) = v37;
              v42 = *(v24 + 2512);
              *(v24 + 2512) = *buf;
              *(v24 + 2520) = 0;
              while (1)
              {
                v43 = v41[v40];
                if (v43)
                {
                  break;
                }

LABEL_52:
                if (++v40 > v42)
                {
                  pthread_rwlock_unlock((v24 + 2304));
                  free(v41);
                  v25 = v100;
                  goto LABEL_82;
                }
              }

              while (2)
              {
                v44 = v43[5];
                v45 = *v44;
                if (*v44)
                {
                  v46 = 0;
                  v47 = v44 + 1;
                  do
                  {
                    v46 = dword_100024298[v45 ^ HIBYTE(v46)] ^ (v46 << 8);
                    v48 = *v47++;
                    v45 = v48;
                  }

                  while (v48);
                }

                else
                {
                  v46 = 0;
                }

                if (v46 <= 1)
                {
                  v46 = 1;
                }

                v49 = *(v24 + 2512);
                v50 = (*(v24 + 2504) + 8 * (v49 & v46));
                v51 = *v50;
                if (*v50)
                {
                  v52 = *v43;
                  *v43 = v51;
                  goto LABEL_50;
                }

                v53 = *(v24 + 2520) + 1;
                *(v24 + 2520) = v53;
                if (v53 > v49)
                {
                  v54 = sub_100009620(v38, v39);
                  v38 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
                  if (v38)
                  {
                    v55 = *(v24 + 2520);
                    v56 = *(v24 + 2512);
                    v126.f_bsize = 67109376;
                    v126.f_iosize = v55;
                    LOWORD(v126.f_blocks) = 1024;
                    *(&v126.f_blocks + 2) = v56;
                    _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "fname table is screwed up! filled buckets %u / table_mask %u)", &v126, 0xEu);
                  }
                }

                v51 = *v50;
                v52 = *v43;
                *v43 = *v50;
                if (v51)
                {
LABEL_50:
                  *(v51 + 8) = v43;
                }

                *v50 = v43;
                v43[1] = v50;
                v43 = v52;
                if (!v52)
                {
                  goto LABEL_52;
                }

                continue;
              }
            }

            v65 = sub_100009620(0, v36);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              sub_100017758(&v116, v117);
            }
          }

LABEL_82:
          v66 = *v25;
          if (*v25)
          {
            v67 = 0;
            v68 = (v25 + 1);
            do
            {
              v67 = dword_100024298[v66 ^ HIBYTE(v67)] ^ (v67 << 8);
              v69 = *v68++;
              v66 = v69;
            }

            while (v69);
          }

          else
          {
            v67 = 0;
          }

          if (v67 <= 1)
          {
            v70 = 1;
          }

          else
          {
            v70 = v67;
          }

          v71 = pthread_rwlock_wrlock((v24 + 2304));
          v73 = (*(v24 + 2504) + 8 * (*(v24 + 2512) & v70));
          v74 = *v73;
          if (*v73)
          {
            v75 = 0;
            while (1)
            {
              v76 = v74;
              v74 = *v74;
              if (v76[3] == v28)
              {
                v77 = v76[5];
                v71 = strncmp(v77, v25, v26);
                if (!v71 && !v77[v26 - 1])
                {
                  break;
                }
              }

              ++v75;
              if (!v74)
              {
                goto LABEL_98;
              }
            }

LABEL_112:
            pthread_rwlock_unlock((v24 + 2304));
            v86 = *(v76 + 9) | v109;
            v76[2] = v111;
            v76[3] = v28;
            *(v76 + 9) = v86;
            *(v76 + 8) = v110;
          }

          else
          {
            v75 = 0;
LABEL_98:
            v78 = *(v24 + 2548);
            if (v78 < *(v24 + 2544))
            {
              v79 = *(v24 + 2536);
              *(v24 + 2548) = v78 + 1;
              if (v75 > dword_100024728)
              {
                dword_100024728 = v75;
              }

              v76 = (v79 + 48 * v78);
              ++*(v24 + 2524);
              *(v76 + 9) = 0;
              v80 = sub_1000022D8(v25, v26);
              v76[5] = v80;
              if (v80[v26 - 1])
              {
                v82 = dword_10002469C++;
                if (v82 <= 49)
                {
                  v83 = sub_100009620(v80, v81);
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                  {
                    v92 = v76[5];
                    v126.f_bsize = 136315394;
                    *&v126.f_iosize = v92;
                    WORD2(v126.f_blocks) = 2048;
                    *(&v126.f_blocks + 6) = v26;
                    _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "add_fname: path <<%s>> has len %zd", &v126, 0x16u);
                  }
                }
              }

              v84 = *v73;
              if (*v73)
              {
                *(v24 + 2528) += v26;
                v84[1] = v76;
              }

              else
              {
                ++*(v24 + 2520);
                *(v24 + 2528) += v26;
              }

              *v76 = v84;
              *v73 = v76;
              v76[1] = v73;
              goto LABEL_112;
            }

            v85 = sub_100009620(v71, v72);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              v90 = *(v24 + 2544);
              v91 = *(v24 + 2548);
              v126.f_bsize = 67109634;
              v126.f_iosize = v90;
              LOWORD(v126.f_blocks) = 1024;
              *(&v126.f_blocks + 2) = v91;
              HIWORD(v126.f_blocks) = 2080;
              v126.f_bfree = v25;
              _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "too many filenames in the table (max %d cur %d) : path %s\n", &v126, 0x18u);
            }

            pthread_rwlock_unlock((v24 + 2304));
          }

          a4 = v102;
          a6 = v103;
          v13 = v113;
          v14 = v101;
          v15 = &off_100024000;
          if ((v112 & 1) == 0 && *(v24 + 2524) >= 0xAAAu)
          {
            memset(&v126.f_bfree, 0, 24);
            *&v126.f_bsize = v108;
            v126.f_blocks = v24;
            v87 = malloc_type_zone_malloc(qword_1000246B8, 0x40000uLL, 0xD0E26DFDuLL);
            v126.f_bfree = v87;
            if (v87)
            {
              v126.f_bavail = 0x40000;
              *v87 = 1145852723;
              v87[2] = 12;
              LODWORD(v126.f_files) = 12;
              sub_100007DA8(0, (v24 + 2304), sub_100007F94, &v126);
              sub_1000080A0(v108, v24, &v126, 1);
              malloc_zone_free(qword_1000246B8, v126.f_bfree);
              sub_1000087F4(v24 + 2304);
            }

            else
            {
              v89 = sub_100009620(0, v88);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                sub_10001778C(&v114, v115);
              }
            }
          }

          goto LABEL_119;
        }

        v16 = sub_100009948(0xFFFFFFFFLL, v12);
        v59 = v16;
        v24 = v15[233];
        if (v16)
        {
          goto LABEL_65;
        }

LABEL_18:
        v108 = 0;
        v25 = *(a4 + 8 * v13);
        v26 = *(a3 + 8 * v13);
        v112 = 1;
        goto LABEL_19;
      }

LABEL_119:
      if (++v13 == v14)
      {
        goto LABEL_124;
      }
    }

    v57 = sub_100009620(v21, v22);
    v16 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    v18 = &qword_100024748;
    if (v16)
    {
      v93 = *(v17 + 8);
      v94 = *v17;
      *buf = 136315906;
      v119 = "disk_logger_callback";
      v120 = 2080;
      v121 = v93;
      v122 = 1024;
      v123 = v94;
      v124 = 1024;
      v125 = v126.f_fsid.val[0];
      _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%s: Assign to global disk logger - mount_point[%s], di->dev[%d] sfs.f_fsid.val[0]=[%d]", buf, 0x22u);
    }

    goto LABEL_56;
  }

LABEL_124:
  sub_1000024C8(&unk_100025758);
  return 0;
}

void sub_100007DA8(uint64_t a1, pthread_rwlock_t *a2, unsigned int (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (!a1 || (*(a1 + 32) & 0x90) == 0 && (*(a1 + 32) & 4) != 0)
  {
    pthread_rwlock_rdlock(a2);
    v8 = malloc_type_zone_malloc(qword_1000246B0, 8 * *&a2[1].__opaque[12], 0x2004093837F09uLL);
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = *a2[1].__opaque;
      if ((v12 + 1) > 1)
      {
        v13 = (v12 + 1);
      }

      else
      {
        v13 = 1;
      }

      do
      {
        v14 = *(a2[1].__sig + 8 * v10);
        if (v14)
        {
          v15 = *&a2[1].__opaque[12];
          do
          {
            if (v11 < v15)
            {
              v8[v11++] = v14;
            }

            v14 = *v14;
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v13);
      if (!a1 || (*(a1 + 32) & 0x90) == 0 && (*(a1 + 32) & 4) != 0)
      {
        qsort(v8, v11, 8uLL, sub_100007F80);
        if (v11)
        {
          v16 = v11 - 1;
          v17 = v9;
          do
          {
            if (a1 && ((*(a1 + 32) & 0x90) != 0 || (*(a1 + 32) & 4) == 0))
            {
              break;
            }

            v18 = *v17++;
          }

          while (!a3(v18, a4) && v16-- != 0);
        }
      }

      pthread_rwlock_unlock(a2);
      v20 = qword_1000246B0;

      malloc_zone_free(v20, v9);
    }

    else
    {

      pthread_rwlock_unlock(a2);
    }
  }
}

uint64_t sub_100007F94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = strlen(v4);
  v6 = *(a2 + 32);
  if (v5 + v6 + 25 >= *(a2 + 24))
  {
    sub_1000080A0(*a2, *(a2 + 8), a2, 0);
    v7 = *(a2 + 16);
    *(v7 + 4) = 0xC00000000;
    v6 = 12;
    *(a2 + 32) = 12;
    v4 = *(a1 + 40);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v8 = v5 + 1;
  memcpy((v7 + v6), v4, v8);
  v9 = *(a2 + 32) + v8;
  *(a2 + 32) = v9;
  *(*(a2 + 16) + v9) = *(a1 + 16);
  v10 = *(a2 + 32) + 8;
  *(a2 + 32) = v10;
  *(*(a2 + 16) + v10) = *(a1 + 36);
  v11 = *(a2 + 32) + 4;
  *(a2 + 32) = v11;
  *(*(a2 + 16) + v11) = *(a1 + 24);
  v12 = *(a2 + 32) + 8;
  *(a2 + 32) = v12;
  *(*(a2 + 16) + v12) = *(a1 + 32);
  *(a2 + 32) += 4;
  return 0;
}

gzFile sub_1000080A0(gzFile result, uint64_t a2, uint64_t a3, int a4)
{
  v7 = result;
  if (*(a2 + 28))
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_10000EDBC(a2, 1);
    sub_10000EFA4(v7, a2);
    *(a2 + 252) = 0;
    result = sub_100008458(v7, a2, 1);
    if (!result)
    {
      return result;
    }

    v8 = result;
    *(a2 + 28) = 1;
    if (a4)
    {
      goto LABEL_7;
    }
  }

  if (*(a3 + 32) < 0xDu)
  {
    return result;
  }

LABEL_7:
  v9 = *(a3 + 16);
  *v9 = 1145852723;
  v10 = *(a3 + 32);
  *(v9 + 8) = v10;
  *(v9 + 4) = sub_100008360(v9, v10);
  pthread_rwlock_wrlock((a2 + 48));
  if (v8)
  {
    goto LABEL_10;
  }

  v11 = sub_100008458(v7, a2, 0);
  if (v11)
  {
    v8 = v11;
    *(a2 + 28) = 1;
LABEL_10:
    v12 = gzwrite(v8, *(a3 + 16), *(a3 + 32));
    v13 = gzflush(v8, 2);
    if (v13)
    {
      v15 = sub_100009620(v13, v14);
      v13 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        sub_10001750C();
      }
    }

    if (v12 == *(a3 + 32))
    {
      v16 = *a2 + *(a3 + 24);
      *a2 = v16;
      v17 = gzclose(v8);
      if (a4 || v16 >= 0x400000)
      {
        if (v17)
        {
          v22 = __error();
          if (*v22 == 28)
          {
            *(a2 + 28) = 0;
          }

          v24 = sub_100009620(v22, v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1000176A4();
          }

          sub_10000EDBC(a2, 0);
          sub_10000EFA4(v7, a2);
        }

        *(*(a3 + 16) + 4) = 0xC00000000;
        *a2 = 0;
        *(a2 + 252) = 0;
      }

      else
      {
        *(a2 + 252) = 1;
      }
    }

    else
    {
      v18 = sub_100009620(v13, v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100017588();
      }

      if (*__error() == 28)
      {
        *(a2 + 28) = 0;
        v19 = gzclose(v8);
        *(*(a3 + 16) + 4) = 0xC00000000;
        v21 = sub_100009620(v19, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100017630();
        }

        sub_10000EDBC(a2, 0);
        sub_10000EFA4(v7, a2);
      }
    }

    return pthread_rwlock_unlock((a2 + 48));
  }

  *(a2 + 28) = 0;

  return pthread_rwlock_unlock((a2 + 48));
}

uint64_t sub_100008360(_BYTE *a1, int a2)
{
  if (a2)
  {
    v2 = 0;
    do
    {
      v3 = *a1++;
      v2 = dword_100024298[v3 ^ HIBYTE(v2)] ^ (v2 << 8);
      --a2;
    }

    while (a2);
  }

  else
  {
    v4 = *a1;
    if (*a1)
    {
      v2 = 0;
      v5 = a1 + 1;
      do
      {
        v2 = dword_100024298[v4 ^ HIBYTE(v2)] ^ (v2 << 8);
        v6 = *v5++;
        v4 = v6;
      }

      while (v6);
    }

    else
    {
      v2 = 0;
    }
  }

  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void *sub_1000083CC(int a1, unsigned int *a2)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 <= a1);
  v5 = v4 >> 1;
  v6 = malloc_type_malloc(8 * (v4 >> 1), 0x2004093837F09uLL);
  v7 = v6;
  if (v6)
  {
    v8 = v5 - 1;
    bzero(v6, 8 * v8 + 8);
    *a2 = v8;
  }

  return v7;
}

gzFile sub_100008458(uint64_t a1, uint64_t a2, int a3)
{
  memset(&v31, 0, sizeof(v31));
  if ((*(a1 + 32) & 0x1040) != 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    v6 = qword_1000246D0[dword_1000246E0];
    *(a2 + 8) = v6;
  }

  v7 = 0;
  for (i = 0; ; ++i)
  {
    if (*(a2 + 252))
    {
      v9 = open((a2 + 1280), 536870922);
    }

    else
    {
      v7 = v6 + 1;
      snprintf((a2 + 1280), 0x400uLL, "%s/%.16llx", (a2 + 256), v6 + 1);
      v9 = open_dprotected_np((a2 + 1280), 536874498, 4, 0, 384);
    }

    v10 = v9;
    if ((v9 & 0x80000000) == 0)
    {
      break;
    }

    v11 = __error();
    if (*v11 != 17 || i >= 0x64)
    {
      goto LABEL_16;
    }

    v6 = *(a2 + 8) + 1;
    *(a2 + 8) = v6;
  }

  if (fstat(v9, &v31) || (v31.st_mode & 0xF000) != 0x8000)
  {
    __error();
    v11 = close(v10);
LABEL_16:
    v13 = sub_100009620(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100019160();
    }

    v14 = open("/dev/null", 2);
    v10 = v14;
    if ((v14 & 0x80000000) != 0)
    {
      v26 = sub_100009620(v14, v15);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  v16 = strlen((a2 + 256));
  __s2[0] = 0;
  v17 = fcntl(v10, 50, __s2);
  if (v17 || (v17 = strncmp((a2 + 256), __s2, v16), v17) || __s2[v16] != 47)
  {
    if (*__s2 != 0x6C756E2F7665642FLL || v33 != 108)
    {
      v20 = sub_100009620(v17, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100019200();
      }
    }

    close(v10);
    v21 = open("/dev/null", 2);
    v10 = v21;
    if ((v21 & 0x80000000) != 0)
    {
      v27 = sub_100009620(v21, v22);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_38:
        sub_100019278();
      }

LABEL_39:
      v3 = 0;
LABEL_41:
      *(a2 + 28) = 0;
      return v3;
    }
  }

  v3 = gzdopen(v10, "ab");
  if (!v3)
  {
    close(v10);
    goto LABEL_41;
  }

  if (a3)
  {
    pthread_rwlock_wrlock((a2 + 48));
  }

  if (*(a2 + 252))
  {
    goto LABEL_48;
  }

  v23 = *(a2 + 32);
  v24 = *(a2 + 36);
  if (v23 >= v24)
  {
    v29 = malloc_type_calloc(v24 + 100, 8uLL, 0x100004000313F17uLL);
    if (!v29)
    {
      goto LABEL_48;
    }

    v25 = v29;
    v30 = *(a2 + 40);
    if (v30)
    {
      memcpy(v29, v30, 8 * *(a2 + 36));
      free(*(a2 + 40));
    }

    *(a2 + 40) = v25;
    v23 = *(a2 + 32);
    *(a2 + 36) += 100;
  }

  else
  {
    v25 = *(a2 + 40);
  }

  v25[v23] = v7;
  *(a2 + 32) = v23 + 1;
LABEL_48:
  if (a3)
  {
    pthread_rwlock_unlock((a2 + 48));
  }

  return v3;
}

uint64_t sub_1000087F4(uint64_t a1)
{
  pthread_rwlock_wrlock(a1);
  v2 = 0;
  v3 = *(a1 + 200);
  do
  {
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      do
      {
        v5 = *v4;
        v6 = strlen(v4[5]);
        sub_100003290(v4[5], v6 + 1);
        v4[5] = 0;
        v4 = v5;
      }

      while (v5);
      v3 = *(a1 + 200);
    }

    *(v3 + 8 * v2++) = 0;
  }

  while (v2 <= *(a1 + 208));
  *(a1 + 216) = 0;
  *(a1 + 244) = 0;

  return pthread_rwlock_unlock(a1);
}

uint64_t sub_100008898(uint64_t a1, uint64_t a2, int8x8_t *a3, int a4, int a5, unint64_t a6, _DWORD *a7, int *a8, char a9)
{
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v16 = a3->i32[0];
  v17 = 1;
  if (a3->i32[0] > 1145852721)
  {
    if (v16 == 1145852722)
    {
      goto LABEL_9;
    }

    v18 = 1145852723;
  }

  else
  {
    if (v16 == 844319812)
    {
      goto LABEL_9;
    }

    v18 = 861097028;
  }

  if (v16 == v18)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

LABEL_9:
  __s2 = 0;
  __endptr = 0;
  bzero(&v118, 0x588uLL);
  v117 = a2;
  *a7 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  v21 = a3->i32[0];
  v115 = a2;
  if (a3->i32[0] > 1145852720)
  {
    if ((v21 - 1145852721) < 3)
    {
      v22 = a3[1].i32[0];
      goto LABEL_18;
    }
  }

  else if (v21 == 827542596 || v21 == 844319812 || v21 == 861097028)
  {
    v22 = bswap32(a3[1].u32[0]);
    goto LABEL_18;
  }

  v22 = a3[1].i32[0];
  if (v22 > 0x40000)
  {
    v94 = sub_100009620(v19, v20);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      sub_100017DEC();
    }

    return 22;
  }

LABEL_18:
  if (a5)
  {
    v23 = 22;
    if (v22 > 0x40000 || v22 > a4)
    {
      return v23;
    }

    v24 = a3->i32[1];
    a3->i32[1] = 0;
    v25 = sub_100008360(a3, v22);
    if (v21 == 827542596 || v21 == 861097028 || v21 == 844319812)
    {
      v25 = bswap32(v25);
    }

    if (v24 == v25)
    {
      if (a8)
      {
        v26 = 2;
LABEL_31:
        *a8 = v26;
      }
    }

    else
    {
      v27 = sub_100012F68(a3, v22);
      if (v24 != v27)
      {
        v95 = sub_100009620(v27, v28);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          sub_100017E80();
        }

        return v23;
      }

      if (a8)
      {
        v26 = 1;
        goto LABEL_31;
      }
    }
  }

  v29 = a3->i32[0];
  if (a3->i32[0] == 827542596 || v29 == 861097028 || v29 == 844319812)
  {
    sub_100012FD4(a3, a4, v17);
  }

  v30 = malloc_type_malloc(16 * *(v115 + 128), 0x1010040466105CCuLL);
  if (!v30)
  {
    v93 = sub_100009620(0, v31);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      sub_100018170();
    }

    return 12;
  }

  v111 = a6;
  v112 = a7;
  v32 = v30;
  __strlcpy_chk();
  v33 = *(a1 + 16);
  v34 = strlen(v33);
  v36 = v34;
  v113 = v34;
  if (*v33 == 47)
  {
    v113 = v34;
    if (*(v33 + 1))
    {
      *&v126[v34] = 47;
      v113 = v34 + 1;
    }
  }

  v109 = (v115 + 128);
  v37 = *(v115 + 128);
  if (v37 >= 1)
  {
    v38 = *(v115 + 136);
    v39 = *(v115 + 112);
    v40 = v32 + 1;
    do
    {
      v41 = *v38;
      v42 = strlen(*v38);
      *(v40 - 1) = v42;
      if (v39)
      {
        goto LABEL_43;
      }

      v43 = v42;
      if (!strncmp(v33, v41, v36) && v43 >= v36)
      {
        if (v36 == 1 || ((v45 = v41[v36], v45 != 47) ? (v46 = v45 == 0) : (v46 = 1), v46))
        {
          v47 = &v41[v36];
          *v40 = &v41[v36];
          if (v41[v36] == 47)
          {
            *v40 = ++v47;
          }

          *(v40 - 1) = (&v41[v43] - v47);
          goto LABEL_44;
        }
      }

      if (*v41 != 47 || v41[1])
      {
LABEL_43:
        *v40 = v41;
      }

      else
      {
        *(v40 - 1) = 0;
        *v40 = &unk_10001A42E;
      }

LABEL_44:
      v40 += 2;
      ++v38;
      --v37;
    }

    while (v37);
  }

  v48 = &a3[1] + 4;
  __size = 1024 - v113;
  v49 = v115;
  v110 = v115 + 368;
  v50 = v112;
  v51 = a1;
LABEL_63:
  v52 = a3[1].i32[0];
  v53 = a3 + v52;
  while (1)
  {
    if (v48 >= v53)
    {
      goto LABEL_178;
    }

    v54 = v48;
    __s2 = v48;
    v55 = v53 - v48;
    v56 = v48;
    while (*v56)
    {
      ++v56;
      if (!--v55)
      {
        v56 = a3 + v52;
        break;
      }
    }

    v127 = v56 - v48 + 1;
    if (v127 >= 0x401)
    {
      v96 = sub_100009620(844319812, v35);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        sub_1000180F0();
      }

LABEL_178:
      v23 = 0;
      goto LABEL_192;
    }

    v57 = (v56 + 1);
    if ((v56 + 1) >= v53)
    {
      break;
    }

    if (a9 && ((v51[8] & 0xD0) != 0 || (v51[8] & 4) == 0))
    {
      goto LABEL_178;
    }

    if ((v56 + 9) > v53)
    {
      v99 = sub_100009620(844319812, v35);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        sub_100018070();
      }

      goto LABEL_191;
    }

    v48 = v56 + 13;
    v58 = *v57;
    v123 = *v57;
    if ((v56 + 13) > v53)
    {
      v100 = sub_100009620(844319812, v35);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        sub_100017FF0();
      }

      goto LABEL_191;
    }

    v124 = *(v56 + 9);
    v59 = a3->i32[0];
    if (a3->i32[0] == 1145852722 || v59 == 844319812)
    {
      if (v57 + 20 > v53)
      {
        v101 = sub_100009620(844319812, v35);
        if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_191;
        }

        goto LABEL_186;
      }

      v122 = *v48;
      v48 = v57 + 20;
    }

    if (v59 == 1145852723 || v59 == 861097028)
    {
      v60 = (v48 + 8);
      if ((v48 + 8) > v53)
      {
        v102 = sub_100009620(844319812, v35);
        if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_191;
        }

LABEL_186:
        sub_100017EF0();
        goto LABEL_191;
      }

      v61 = *v48;
      v48 += 12;
      v122 = v61;
      if (v48 > v53)
      {
        v103 = sub_100009620(844319812, v35);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          sub_100017F70();
        }

        goto LABEL_191;
      }

      v121 = *v60;
    }

    if (v58 > v111 || (*(v49 + 192) & 0x4000) != 0)
    {
      v105 = strncmp(v54, ".docid/", 7uLL);
      if (v105)
      {
        if (strncmp(v54, ".activity/1/", 0xCuLL))
        {
          strlcpy(&v126[v113], v54, __size);
          v106 = 0;
          v62 = v126;
LABEL_103:
          __s1 = v62;
          v70 = *v109;
          if (v70 >= 1)
          {
            v71 = v127 - 1;
            v72 = __s2;
            v73 = v32 + 1;
            while (1)
            {
              v74 = *(v73 - 1);
              if (v74 <= v71)
              {
                v75 = *v73;
                if (v74 >= 2)
                {
                  v74 -= v75[v74 - 1] == 47;
                }

                if (!strncmp(v75, v72, v74) && (v74 < 2 || !v72[v74] || v72[v74] == 47))
                {
                  break;
                }
              }

              v73 += 2;
              if (!--v70)
              {
LABEL_113:
                v50 = v112;
                v51 = a1;
                v49 = v115;
                goto LABEL_63;
              }
            }

            v51 = a1;
            v49 = v115;
            v50 = v112;
            if (!*(v115 + 112) || *v72 != 47)
            {
              if (*(v115 + 260))
              {
                v76 = __s1;
                memset(&v125, 0, sizeof(v125));
                if (HIDWORD(v106))
                {
                  v76 = *(a1 + 16);
                }

                v77 = *(v115 + 284);
                *&v116.st_dev = *(v115 + 268);
                *&v116.st_uid = v77;
                v78 = sandbox_check_by_audit_token();
                if (lstat(v76, &v125) | v78)
                {
                  if (*__error() != 2)
                  {
                    goto LABEL_166;
                  }

                  memset(&v116, 0, sizeof(v116));
                  v79 = sub_100013194(v76);
                  v80 = access(v79, 4);
                  v81 = sandbox_check_by_audit_token();
                  free(v79);
                  if (v80)
                  {
                    v82 = *v109;
                    if (v82 < 1)
                    {
                      goto LABEL_165;
                    }

                    v83 = 0;
                    v84 = *(v115 + 136);
                    v85 = 8 * v82;
                    while (!strstr(__s1, *(v84 + v83)))
                    {
                      v83 += 8;
                      if (v85 == v83)
                      {
                        goto LABEL_165;
                      }
                    }

                    v92 = *(v84 + v83);
                    if (!*(v115 + 112) || *v92)
                    {
                      if (!lstat(v92, &v116) && v116.st_uid == *(v115 + 260))
                      {
                        goto LABEL_164;
                      }

LABEL_165:
                      v51 = a1;
LABEL_166:
                      v49 = v115;
                      goto LABEL_63;
                    }

                    if (lstat(".", &v116) || v116.st_uid != *(v115 + 260))
                    {
                      goto LABEL_165;
                    }

LABEL_164:
                    if (sandbox_check_by_audit_token())
                    {
                      goto LABEL_165;
                    }
                  }

                  else if (v81)
                  {
                    goto LABEL_165;
                  }
                }

                v72 = __s2;
              }

              v86 = 0;
              v87 = 0;
              do
              {
                v88 = *(v110 + v86);
                if (!v88)
                {
                  break;
                }

                v89 = strlen(*(v110 + v86));
                if (*(v115 + 112))
                {
                  if (!strncmp(v72, v88, v89))
                  {
                    v87 = 1;
                  }
                }

                else if (!strncmp(__s1, v88, v89))
                {
                  goto LABEL_113;
                }

                v86 += 8;
                v50 = v112;
              }

              while (v86 != 64);
              v51 = a1;
              v49 = v115;
              if (!v87 && (v123 > v111 || (*(v115 + 192) & 0x4000) != 0))
              {
                if (!*(v115 + 216) || (*(v115 + 192) & 2) != 0)
                {
                  goto LABEL_178;
                }

                if (v123 > *(v115 + 168) || (*(v115 + 192) & 0x4000) != 0)
                {
                  *(v115 + 168) = v123;
                }

                if (!*(v115 + 112) && *v72 != 47)
                {
                  v90 = v113;
                  if (HIDWORD(v106))
                  {
                    v90 = 1;
                  }

                  v127 += v90;
                  v72 = __s1;
                  __s2 = __s1;
                }

                if (!((*(v115 + 192) >> 8) & 1 | v106 & 1) && v105)
                {
                  v91 = strrchr(v72, 47);
                  if (v91 > v72)
                  {
                    v91[1] = 0;
                    v127 = strlen(v72) + 1;
                  }

                  v124 &= 0xFE23F800;
                }

                v23 = sub_1000132DC(&v117, &v127, &__s2, &v124, a1, &v123, &v122, &v121);
                if (v23 && v23 != 268435460)
                {
                  goto LABEL_192;
                }
              }
            }
          }

          goto LABEL_63;
        }

        v66 = strtoull(v54 + 12, &__endptr, 10);
        v64 = *v51;
        LOBYTE(v106) = 1;
        v67 = &v126[v113];
        if (*v51 != v66)
        {
          v68 = ".activity/1/%lld";
          goto LABEL_99;
        }

LABEL_98:
        strlcpy(v67, v54, __size);
      }

      else
      {
        v63 = strtoull(v54 + 7, &__endptr, 10);
        if (!strncmp(v54, ".activity/1/", 0xCuLL))
        {
          v69 = strtoull(v54 + 12, &__endptr, 10);
          v64 = *v51;
          LOBYTE(v106) = 1;
          v65 = *v51 == v69;
        }

        else
        {
          LOBYTE(v106) = 0;
          v64 = *v51;
          v65 = *v51 == v63;
        }

        v67 = &v126[v113];
        if (v65)
        {
          v49 = v115;
          goto LABEL_98;
        }

        v68 = ".docid/%lld";
        v49 = v115;
LABEL_99:
        snprintf(v67, __size, v68, v64);
        if (__endptr)
        {
          strlcat(v67, __endptr, __size);
        }

        __s2 = v67;
        v127 = strlen(v67) + 1;
      }

      HIDWORD(v106) = 1;
      v62 = &v126[v113 - 1];
      goto LABEL_103;
    }
  }

  v97 = sub_100009620(844319812, v35);
  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
  {
    v98 = a3[1].i32[0];
    v125.st_dev = 134218240;
    *&v125.st_mode = v57 - a3;
    WORD2(v125.st_ino) = 1024;
    *(&v125.st_ino + 6) = v98;
    _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "process_disk_event_buf: ptr out-of-bounds (%ld > max %d)", &v125, 0x12u);
  }

LABEL_191:
  v23 = 22;
LABEL_192:
  sub_100009FA4(&v117, v35);
  *v50 = a3[1].i32[0];
  free(v32);
  return v23;
}

uint64_t sub_100009620(uint64_t a1, uint64_t a2)
{
  if (qword_100024238 != -1)
  {
    sub_100013868();
  }

  return qword_100024240;
}

uint64_t sub_10000967C(uint64_t a1, char *a2)
{
  result = sub_100006F34();
  if (result)
  {
    sub_1000021A0(&unk_100025758);
    v6 = sub_100009948(a1, v5);
    if (v6)
    {
      v8 = v6;
      if ((*(v6 + 32) & 0x40) != 0)
      {
        v11 = sub_100009620(v6, v7);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = *v8;
          v14 = *(v8 + 32);
          v15 = *(qword_1000246E8 + 8);
          v19 = 67109888;
          v20 = v13;
          v21 = 1024;
          v22 = a1;
          v23 = 1024;
          v24 = v14;
          v25 = 1024;
          v26 = v15;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "DI_IGNORE_ME (di->dev  %d) (dev %d) (flags 0x%x) (num_devices %d)", &v19, 0x1Au);
        }

        strcpy(a2, "NO-UUID-VOLUME-IS-IGNORED");
      }

      else if (*v6 == a1)
      {
        v9 = strlen((v6 + 64));
        strncpy(a2, (v8 + 64), v9);
      }

      else
      {
        v12 = sub_100009620(v6, v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v16 = *v8;
          v17 = *(v8 + 32);
          v18 = *(qword_1000246E8 + 8);
          v19 = 67109888;
          v20 = v16;
          v21 = 1024;
          v22 = a1;
          v23 = 1024;
          v24 = v17;
          v25 = 1024;
          v26 = v18;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "NO-UUID-UNKNOWN-DEVICE (di->dev  %d) (dev %d) (flags 0x%x) (num_devices %d)", &v19, 0x1Au);
        }

        strcpy(a2, "NO-UUID-UNKNOWN-DEVICE");
      }
    }

    else
    {
      v10 = sub_100009620(0, v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100018434();
      }

      strcpy(a2, "NO-UUID-NO-DEV-INFO");
    }

    return sub_1000024C8(&unk_100025758);
  }

  else
  {
    strcpy(a2, "NO-UUID-NO-DEV-INFO");
  }

  return result;
}

_DWORD *sub_1000098C4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100009658(result[3], result[8], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 72;
    }
  }

  return result;
}

uint64_t sub_100009948(uint64_t a1, uint64_t a2)
{
  v2 = qword_1000246E8;
  if (!qword_1000246E8)
  {
    return 0;
  }

  if (*(qword_1000246E8 + 8) < 1)
  {
    goto LABEL_15;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = -1;
  do
  {
    if ((*(*(*qword_1000246E8 + v3) + 32) & 0x4010) == 0)
    {
      v7 = *(*qword_1000246E8 + v3);
      if (*v7 == a1)
      {
        if (*(v7 + 216))
        {
          v8 = *qword_1000246E8 + v3;
          return *v8;
        }

        v6 = v4;
      }

      else if (*(v7 + 32))
      {
        v5 = *(*qword_1000246E8 + v3);
      }
    }

    ++v4;
    v3 += 8;
  }

  while (v4 < *(qword_1000246E8 + 8));
  if ((v6 & 0x80000000) == 0)
  {
    v8 = *qword_1000246E8 + 8 * v6;
    return *v8;
  }

  if (!v5)
  {
LABEL_15:
    v9 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100014C60();
    }

    v8 = *v2;
    return *v8;
  }

  return v5;
}

uint64_t sub_100009A48(uint64_t a1, uint64_t a2, const char *a3, unint64_t a4)
{
  v51 = 0;
  if (qword_1000268D8 != -1)
  {
    sub_100017CEC();
  }

  memset(&v50, 0, sizeof(v50));
  dispatch_semaphore_wait(qword_1000268E0, 0xFFFFFFFFFFFFFFFFLL);
  v8 = open(a3, 0x20000000);
  v10 = v8;
  if ((v8 & 0x80000000) != 0 || (v8 = fstat(v8, &v50), v8) || (v50.st_mode & 0xF000) != 0x8000)
  {
    if (a1 && (*(a1 + 32) & 0x1000) == 0 && (v23 = sub_100009620(v8, v9), os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
    {
      v26 = *__error();
      v27 = (v50.st_mode & 0xF000) == 0x8000;
      v28 = getuid();
      v29 = geteuid();
      v30 = getgid();
      v31 = getegid();
      *buf = 136316930;
      v53 = a3;
      v54 = 1024;
      *v55 = v10;
      *&v55[4] = 1024;
      *&v55[6] = v26;
      *v56 = 1024;
      *&v56[2] = v27;
      v57 = 1024;
      *v58 = v28;
      *&v58[4] = 1024;
      *&v58[6] = v29;
      v59 = 1024;
      v60 = v30;
      v61 = 1024;
      v62 = v31;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "read_disk_log: problems with history file: %s (fd %d, errno %d ; is_reg %d; uid %d/%d gid %d/%d)", buf, 0x36u);
      if (v10 < 0)
      {
        goto LABEL_22;
      }
    }

    else if (v10 < 0)
    {
LABEL_22:
      dispatch_semaphore_signal(qword_1000268E0);
      return 22;
    }

    close(v10);
    goto LABEL_22;
  }

  if (!v50.st_size)
  {
    close(v10);
LABEL_57:
    dispatch_semaphore_signal(qword_1000268E0);
    return 0;
  }

  v11 = gzdopen(v10, "r");
  if (v11)
  {
    v13 = v11;
    v14 = &off_100024000;
    ptr = malloc_type_zone_malloc(qword_1000246B8, 0x40000uLL, 0x3B3FAC75uLL);
    if (!ptr)
    {
      gzclose(v13);
      dispatch_semaphore_signal(qword_1000268E0);
      return 12;
    }

    file = v13;
    v15 = *(a2 + 260);
    if (v15)
    {
      pthread_setugid_np(v15, *(a2 + 264));
      v16 = *(a2 + 352);
      if (v16)
      {
        v17 = initgroups(v16, *(a2 + 264));
        if ((v17 & 0x80000000) != 0)
        {
          v19 = sub_100009620(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v41 = *(a2 + 352);
            v42 = *(a2 + 260);
            v43 = *(a2 + 264);
            v48 = *__error();
            v44 = __error();
            v45 = strerror(*v44);
            *buf = 136316162;
            v53 = v41;
            v14 = &off_100024000;
            v54 = 1024;
            *v55 = v42;
            *&v55[4] = 1024;
            *&v55[6] = v43;
            *v56 = 1024;
            *&v56[2] = v48;
            v57 = 2080;
            *v58 = v45;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "read_disk_log: initgroups failed for user %s uid %d gid %d (err: %d/%s)", buf, 0x28u);
          }
        }
      }
    }

    if ((*(a1 + 32) & 0x80) == 0 && (*(a1 + 32) & 4) != 0)
    {
      v47 = 0;
      v32 = 0;
      v33 = 0;
      v21 = 0;
      while (1)
      {
        if ((*(a2 + 192) & 2) != 0 || (0x40000 - v33 >= 0x10000 ? (v34 = 0x10000) : (v34 = 0x40000 - v33), v35 = gzread(file, ptr + v33, v34), v21 = v35, v35 < 1))
        {
LABEL_47:
          v22 = v32 == 0;
          goto LABEL_48;
        }

        *buf = 0;
        v47 += v35;
        if (!v33 && v35 <= 0xB)
        {
          break;
        }

        v33 += v35;
        if (!sub_100008898(a1, a2, ptr, v33, 1, a4, &v51, buf, 1))
        {
          v32 = 1;
        }

        if (v51 && *buf == 2)
        {
          v33 = 0x40000 - v51;
          __memmove_chk();
        }

        else if (v51)
        {
          v33 = 0;
        }

        if ((*(a1 + 32) & 0x80) != 0 || (*(a1 + 32) & 4) == 0)
        {
          goto LABEL_47;
        }
      }

      v40 = sub_100009620(v35, v36);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_100017D00();
      }

      v22 = 1;
LABEL_48:
      v14 = &off_100024000;
      v20 = v47;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
    }

    gzclose(file);
    malloc_zone_free(v14[215], ptr);
    if (v22 && (*(a1 + 32) & 0x80) == 0 && (*(a1 + 32) & 4) != 0 && (*(a2 + 192) & 2) == 0)
    {
      v39 = sub_100009620(v37, v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v53 = a3;
        v54 = 2048;
        *v55 = v20;
        *&v55[8] = 1024;
        *v56 = v21;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "read_disk_log: error processing log file %s (total_read %lld, size %d)", buf, 0x1Cu);
      }
    }

    if (*(a2 + 260))
    {
      pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
    }

    goto LABEL_57;
  }

  v25 = sub_100009620(0, v12);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_100017D7C();
  }

  close(v10);
  dispatch_semaphore_signal(qword_1000268E0);
  return *__error();
}

uint64_t sub_100009FA4(unsigned int *a1, uint64_t a2)
{
  if (*(*a1 + 192))
  {
    v3 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001932C();
    }

    sub_100010B68(*a1);
  }

  v4 = a1[354];
  if (v4)
  {
    v5 = a1 + 258;
    v6 = (*(*a1 + 216))(*(*a1 + 224), v4, a1 + 2, a1 + 258, a1 + 66, a1 + 322, a1 + 98, a1 + 162, a1 + 226);
    v8 = v6;
    if (v6)
    {
      v9 = *a1;
      if (v6 == 268435459)
      {
        *(v9 + 192) |= 2uLL;
      }

      if ((*(v9 + 192) & 2) == 0)
      {
        *(v9 + 192) |= 1uLL;
        v10 = sub_100009620(v6, v7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = a1[354];
          v14 = *(*a1 + 256);
          *buf = 136315906;
          v16 = "client_buffer_flush";
          v17 = 1024;
          v18 = v13;
          v19 = 1024;
          v20 = v14;
          v21 = 1024;
          v22 = v8;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: failed to send %u events to client pid: %d (status: %d)", buf, 0x1Eu);
        }
      }
    }

    if (a1[354])
    {
      v11 = 0;
      do
      {
        free(*&v5[2 * v11]);
        *&v5[2 * v11++] = 0;
      }

      while (v11 < a1[354]);
    }
  }

  else
  {
    v8 = 0;
  }

  a1[354] = 0;
  return v8;
}

uint64_t sub_10000A160(uint64_t a1, uint64_t a2)
{
  v50 = 0;
  v3 = (a1 + 32);
  if ((*(a1 + 32) & 0x50) != 0)
  {
    v4 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100017BC4();
    }
  }

  else if ((*v3 & 0x90) == 0 && (*v3 & 4) != 0)
  {
    v6 = *(a2 + 112);
    if (!v6 || v6 == *a1)
    {
      v7 = *(a1 + 216);
      if (v7 && *(v7 + 16))
      {
        v8 = 0;
        v9 = *(a2 + 240);
        v47 = (v7 + 256);
LABEL_11:
        pthread_rwlock_rdlock((v7 + 48));
        v10 = *(v7 + 32);
        if (v10 < 1)
        {
          LODWORD(v13) = 0;
        }

        else
        {
          v11 = 0;
          v12 = *(v7 + 32);
          do
          {
            LODWORD(v13) = (v11 + v12) >> 1;
            v14 = *(*(v7 + 40) + 8 * v13);
            if (v14 <= v9)
            {
              if (v14 >= v9)
              {
                goto LABEL_22;
              }

              v11 = v13 + 1;
            }

            else
            {
              v12 = (v11 + v12) >> 1;
            }
          }

          while (v11 < v12);
          if (v11 <= 0)
          {
            LODWORD(v13) = 0;
          }

          else
          {
            LODWORD(v13) = v11 - 1;
          }
        }

LABEL_22:
        v48 = *(v7 + 250);
        v49 = *(v7 + 248);
        while (1)
        {
          v15 = v10;
          pthread_rwlock_unlock((v7 + 48));
          v46 = v15;
          if (v13 < v15 - 1)
          {
            v16 = 0;
            v13 = v13;
            v45 = v15 - 1;
            v17 = v15 - 1;
            while ((*(a2 + 192) & 0x1ALL) == 0)
            {
              if ((*v3 & 0x90) != 0 || (*v3 & 4) == 0)
              {
                return 0;
              }

              pthread_rwlock_rdlock((v7 + 48));
              if (v49 != *(v7 + 248) || v48 != *(v7 + 250))
              {
                pthread_rwlock_unlock((v7 + 48));
                *(a2 + 192) |= 1uLL;
                if (v16)
                {
                  v9 = v16;
                }

                goto LABEL_11;
              }

              snprintf(__str, 0x400uLL, "%s/%.16llx", v47, *(*(v7 + 40) + 8 * v13));
              v16 = *(*(v7 + 40) + 8 * v13 + 8);
              pthread_rwlock_unlock((v7 + 48));
              if (sub_100009A48(a1, a2, __str, *(a2 + 240)))
              {
                memset(&v51, 0, 512);
                v18 = statfs(*(a1 + 8), &v51);
                if (v18 || v51.f_fsid.val[0] != *a1)
                {
                  v25 = sub_100009620(v18, v19);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    sub_100017C40();
                  }

                  return 0;
                }
              }

              if (v17 == ++v13)
              {
                LODWORD(v13) = v45;
                break;
              }
            }
          }

          sub_1000033CC(*(v7 + 16));
          if (v8 <= 100)
          {
            v20 = 100;
          }

          else
          {
            v20 = v8;
          }

          v21 = v20 + 1;
          while (1)
          {
            usleep(0x3E8u);
            if ((*v3 & 0x90) != 0)
            {
              break;
            }

            if ((*v3 & 4) == 0)
            {
              break;
            }

            v22 = *(v7 + 16);
            if (!v22 || *(v22 + 248) == *(v22 + 252))
            {
              break;
            }

            if (v21 == ++v8)
            {
              v8 = v21;
              break;
            }
          }

          if ((*v3 & 0x90) != 0 || (*v3 & 4) == 0)
          {
            return 0;
          }

          pthread_rwlock_rdlock((v7 + 48));
          if (v46 > *(*(a1 + 216) + 32) || v49 != *(v7 + 248) || v48 != *(v7 + 250))
          {
            break;
          }

          v10 = *(v7 + 32);
          if (v46 >= v10)
          {
            if ((*v3 & 0x90) != 0 || (*v3 & 4) == 0 || !*(v7 + 16))
            {
              pthread_rwlock_unlock((v7 + 48));
              return 0;
            }

            if (v46 >= 1)
            {
              v38 = *(v7 + 40);
              if (v38)
              {
                snprintf(__str, 0x400uLL, "%s/%.16llx", v47, *(v38 + 8 * v46 - 8));
                sub_100009A48(a1, a2, __str, *(a2 + 240));
              }
            }

            goto LABEL_60;
          }
        }

        *(a2 + 192) |= 1uLL;
LABEL_60:
        v26 = sub_10000AA3C(a1, v7, &v50 + 1);
        if ((*(a1 + 32) & 0x90) == 0 && (*v3 & 4) != 0 && *(v7 + 16))
        {
          pthread_rwlock_unlock((v7 + 48));
          v27 = HIDWORD(v50);
          if (HIDWORD(v50))
          {
            v26[1].i32[0] = HIDWORD(v50);
            v28 = *(a2 + 260);
            if (v28)
            {
              pthread_setugid_np(v28, *(a2 + 264));
              v29 = *(a2 + 352);
              if (v29)
              {
                v30 = initgroups(v29, *(a2 + 264));
                if ((v30 & 0x80000000) != 0)
                {
                  v32 = sub_100009620(v30, v31);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    v39 = *(a2 + 352);
                    v40 = *(a2 + 260);
                    v41 = *(a2 + 264);
                    v42 = *__error();
                    v43 = __error();
                    v44 = strerror(*v43);
                    v51.f_bsize = 136316162;
                    *&v51.f_iosize = v39;
                    WORD2(v51.f_blocks) = 1024;
                    *(&v51.f_blocks + 6) = v40;
                    WORD1(v51.f_bfree) = 1024;
                    HIDWORD(v51.f_bfree) = v41;
                    LOWORD(v51.f_bavail) = 1024;
                    *(&v51.f_bavail + 2) = v42;
                    HIWORD(v51.f_bavail) = 2080;
                    v51.f_files = v44;
                    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "scan_for_old_events: initgroups failed for user %s uid %d gid %d (err: %d/%s)", &v51, 0x28u);
                  }
                }
              }
            }

            v33 = sub_100008898(a1, a2, v26, v27, 0, *(a2 + 240), &v50, 0, 0);
            if (v33)
            {
              v35 = sub_100009620(v33, v34);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                sub_100017CB0();
              }
            }
          }

          if (*(a2 + 260))
          {
            pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
          }
        }

        else
        {
          pthread_rwlock_unlock((v7 + 48));
        }

        free(v26);
        return 0;
      }

      v23 = sub_100009620(a1, a2);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v36 = *(a1 + 8);
        if (v7)
        {
          v37 = *(v7 + 16);
        }

        else
        {
          v37 = 0;
        }

        v51.f_bsize = 136315650;
        *&v51.f_iosize = v36;
        WORD2(v51.f_blocks) = 2048;
        *(&v51.f_blocks + 6) = v7;
        HIWORD(v51.f_bfree) = 2048;
        v51.f_bavail = v37;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "scan_old: bailing out because device mounted @ %s has dls %p and dls->fci %p", &v51, 0x20u);
      }
    }
  }

  return 0;
}

uint64_t sub_10000A794(uint64_t (*a1)(void))
{
  sub_1000021A0(&unk_100025758);
  if (qword_1000246E8)
  {
    v2 = malloc_type_calloc(*(qword_1000246E8 + 8), 8uLL, 0x2004093837F09uLL);
    if (v2)
    {
      v4 = v2;
      memcpy(v2, *qword_1000246E8, 8 * *(qword_1000246E8 + 8));
      v5 = *(qword_1000246E8 + 8);
      if (v5 <= 0)
      {
        sub_1000024C8(&unk_100025758);
        v14 = 0;
      }

      else
      {
        v6 = (v5 - 1);
        v7 = v6 + 1;
        v8 = &v4[8 * v6];
        do
        {
          if ((*(*v8 + 32) & 0x50) != 0)
          {
            *v8 = 0;
          }

          else
          {
            atomic_fetch_add_explicit((*v8 + 36), 1u, memory_order_relaxed);
          }

          v8 -= 8;
          v9 = v7-- <= 1;
        }

        while (!v9);
        sub_1000024C8(&unk_100025758);
        v10 = v6 + 1;
        v11 = &v4[8 * v6];
        v12 = v11;
        while (1)
        {
          if (*v12)
          {
            if ((*(*v12 + 32) & 0x50) == 0)
            {
              v13 = a1();
              if (v13)
              {
                break;
              }
            }
          }

          v12 -= 8;
          v9 = v10-- <= 1;
          if (v9)
          {
            v14 = 0;
            goto LABEL_17;
          }
        }

        v14 = v13;
LABEL_17:
        v15 = v6 + 1;
        do
        {
          if (*v11)
          {
            atomic_fetch_add_explicit((*v11 + 36), 0xFFFFFFFF, memory_order_relaxed);
          }

          v11 -= 8;
          v9 = v15-- <= 1;
        }

        while (!v9);
      }

      free(v4);
    }

    else
    {
      v16 = sub_100009620(0, v3);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100014BE0();
      }

      sub_1000024C8(&unk_100025758);
      return 12;
    }
  }

  else
  {
    sub_1000024C8(&unk_100025758);
    return 0;
  }

  return v14;
}

BOOL sub_10000A960(void *a1)
{
  result = sub_100006F34();
  if (result)
  {
    *a1 = qword_1000246D0[dword_1000246E0];
  }

  return result;
}

_DWORD *sub_10000A9C0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10000A9A0(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

_DWORD *sub_10000AA3C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = *(a2 + 2524);
  if (!v4)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v16 = 0;
  v6 = *(a2 + 2528) + 24 * v4;
  v7 = v6 + 4096;
  if (v6 + 4096 < 0)
  {
    v11 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a2 + 2528);
      v14 = *(a2 + 2524);
      *buf = 134218496;
      v18 = v7;
      v19 = 2048;
      v20 = v13;
      v21 = 1024;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "in mem disk log size is bad: 0x%zx (string size: %zu num items %d)\n", buf, 0x1Cu);
    }

    v4 = 0;
    goto LABEL_8;
  }

  v9 = malloc_type_malloc(v6 + 4096, 0x33E2731BuLL);
  v10 = v9;
  if (v9)
  {
    v15[0] = 0;
    v15[1] = a2;
    v15[2] = v9;
    v15[3] = v7;
    LODWORD(v16) = 12;
    *v9 = 1145852723;
    v9[2] = 12;
    sub_100007DA8(a1, (a2 + 2304), sub_10000ABB0, v15);
    v4 = v16;
    v10[2] = v16;
  }

  else
  {
    v4 = 0;
  }

LABEL_9:
  *a3 = v4;
  return v10;
}

uint64_t sub_10000ABB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = strlen(v4);
  v6 = *(a2 + 32);
  if (v5 + v6 + 25 >= *(a2 + 24))
  {
    return 28;
  }

  v7 = v5 + 1;
  memcpy((*(a2 + 16) + v6), v4, v5 + 1);
  result = 0;
  v9 = *(a2 + 32) + v7;
  *(a2 + 32) = v9;
  *(*(a2 + 16) + v9) = *(a1 + 16);
  v10 = *(a2 + 32) + 8;
  *(a2 + 32) = v10;
  *(*(a2 + 16) + v10) = *(a1 + 36);
  v11 = *(a2 + 32) + 4;
  *(a2 + 32) = v11;
  *(*(a2 + 16) + v11) = *(a1 + 24);
  v12 = *(a2 + 32) + 8;
  *(a2 + 32) = v12;
  *(*(a2 + 16) + v12) = *(a1 + 32);
  *(a2 + 32) += 4;
  return result;
}

void sub_10000AC90(uint64_t a1)
{
  dispatch_source_get_handle(*(a1 + 32));
  v1 = dispatch_mig_server();
  if (v1)
  {
    v3 = sub_100009620(v1, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000138FC();
    }
  }
}

uint64_t sub_10000AD10(mach_msg_header_t *a1, mach_msg_header_t *a2)
{
  if (a1->msgh_id == 70)
  {
    v4 = a1 + ((a1->msgh_size + 3) & 0x1FFFFFFFCLL);
    pidp = 0;
    mig_reply_setup(a1, a2);
    a2[1].msgh_remote_port = -305;
    if (!*v4 && *(v4 + 1) >= 0x34u)
    {
      v5 = *(v4 + 36);
      *atoken.val = *(v4 + 20);
      *&atoken.val[4] = v5;
      audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
      if (!pidp)
      {
        v6 = sub_10000AF74(a1->msgh_local_port);
        if (v6)
        {
          v7 = v6;
          sub_10000AF9C(v6);
          sub_10000B078(v7, v8);
        }
      }
    }

    return 1;
  }

  else
  {

    return sub_10000AE80(a1, a2);
  }
}

uint64_t sub_10000AE14(uint64_t a1)
{
  v1 = sub_10000AF74(a1);
  if (v1)
  {
    v3 = v1;
    nullsub_1();
    sub_10000AF9C(v3);
    sub_10000B078(v3, v4);
  }

  else
  {
    v5 = sub_100009620(0, v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000140F8();
    }
  }

  return 0;
}

uint64_t sub_10000AE80(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 66007) >= 0xFFFFFFF9 && (v5 = *(&off_100020988 + 5 * (v4 - 66000) + 5)) != 0)
  {
    v5(a1, a2);
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

uint64_t sub_10000AF1C(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = sub_10000AE14(a1[3]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10000AF74(int a1)
{
  for (result = qword_100024260; result; result = *(result + 192))
  {
    if (*(result + 4) == a1)
    {
      break;
    }
  }

  return result;
}

void sub_10000AF9C(uint64_t a1)
{
  if (sub_100006F34())
  {
    pthread_mutex_lock(&stru_100024140);
    v2 = 0;
    while (1)
    {
      v3 = *(&xmmword_100024758 + v2);
      if (v3)
      {
        if (*(v3 + 224) == a1)
        {
          break;
        }
      }

      v2 += 8;
      if (v2 == 4096)
      {
        v4 = pthread_mutex_unlock(&stru_100024140);
        v6 = sub_100009620(v4, v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100018B38();
        }

        return;
      }
    }

    pthread_mutex_lock(*(&xmmword_100024758 + v2));
    *(v3 + 192) |= 2uLL;
    pthread_mutex_unlock(v3);
    sub_1000033CC(v3);

    pthread_mutex_unlock(&stru_100024140);
  }
}

void sub_10000B078(uint64_t a1, uint64_t a2)
{
  sub_10000B0B0(a1, a2);

  sub_10000B154(a1, v3);
}

void sub_10000B0B0(uint64_t result, uint64_t a2)
{
  v2 = qword_100024260;
  if (qword_100024260 == result)
  {
    qword_100024260 = *(result + 192);
    --dword_100024268;
  }

  else
  {
    if (!qword_100024260)
    {
      goto LABEL_10;
    }

    do
    {
      v3 = v2;
      v2 = *(v2 + 192);
    }

    while (v2 != result && v2 != 0);
    if (v2)
    {
      *(v3 + 192) = *(v2 + 192);
      --dword_100024268;
    }

    else
    {
LABEL_10:
      v5 = sub_100009620(result, a2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100014534(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }
}

void sub_10000B154(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 148);
  add_explicit = atomic_fetch_add_explicit((a1 + 148), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit <= 0)
  {
    v10 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100014498(a1, v3, v10);
    }
  }

  else if (add_explicit == 1)
  {
    *(a1 + 20) = 0;
    free(*(a1 + 24));
    *(a1 + 24) = 0;
    free(*(a1 + 32));
    *(a1 + 32) = 0;
    for (i = 48; i != 112; i += 8)
    {
      free(*(a1 + i));
      *(a1 + i) = 0;
    }

    if (*a1)
    {
      v6 = mach_port_deallocate(mach_task_self_, *a1);
      if (v6)
      {
        v8 = v6;
        v9 = sub_100009620(v6, v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000143F8(a1, v8);
        }
      }
    }

    *a1 = 0;
    dispatch_source_cancel(*(a1 + 8));
  }
}

uint64_t sub_10000B250(uint64_t a1)
{
  if (qword_100024708)
  {
    v2 = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
    if (v2)
    {
      v3 = v2;
      *v2 = *qword_100024708;
      v4 = malloc_type_malloc(8 * v2[3], 0x2004093837F09uLL);
      if (v4)
      {
        v5 = v4;
        pthread_mutex_lock(&stru_100024180);
        v6 = memcpy(v5, *v3, 8 * *(v3 + 12));
        *v3 = v5;
        if (*(a1 + 128) >= 1)
        {
          v8 = 0;
          v9 = 0;
          while (1)
          {
            v10 = *(v3 + 8);
            if (v10 < 1)
            {
              LODWORD(v11) = 0;
              goto LABEL_31;
            }

            v11 = 0;
            v12 = *(a1 + 112);
            v13 = *v3;
            while (1)
            {
              v14 = v13[v11];
              if (!v12 || v12 == *(v14 + 8))
              {
                v6 = strcmp(*(*(a1 + 136) + 8 * v8), *v14);
                if (!v6)
                {
                  v15 = *(v14 + 24);
                  if (v15)
                  {
                    break;
                  }
                }
              }

LABEL_16:
              if (++v11 == v10)
              {
                LODWORD(v11) = v10;
                goto LABEL_31;
              }
            }

            v16 = 0;
            while (1)
            {
              v17 = v15;
              if (*v15 == a1 && v15 == (*(a1 + 208) + 16 * v8))
              {
                break;
              }

              v15 = v15[1];
              v16 = v17;
              if (!v15)
              {
                goto LABEL_16;
              }
            }

            v18 = v15[1];
            if (v16)
            {
              v16[1] = v18;
            }

            else
            {
              *(v14 + 24) = v18;
              v13 = *v3;
            }

            v17[1] = 0;
            v6 = &v13[v11];
            v19 = *v6;
            v20 = *(*v6 + 24);
            v21 = *(*v6 + 16) - 1;
            *(*v6 + 16) = v21;
            if (v21)
            {
              break;
            }

            if (v20)
            {
              v26 = sub_100009620(v6, v7);
              v6 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
              if (!v6)
              {
                goto LABEL_31;
              }

              v27 = *(*v3 + 8 * v11);
              *buf = 67109376;
              LODWORD(v35[0]) = v11;
              WORD2(v35[0]) = 2048;
              *(v35 + 6) = v27;
              v24 = v26;
              v25 = "remove_paths: prefix_table inconsistent.  refcount == 0 but client_list is non-NULL! prefix_table[%d] = %p";
              goto LABEL_29;
            }

            *(v19 + 8) = -1;
            v6 = memmove(v6, (v6 + 8), 8 * (*(v3 + 8) + ~v11));
            --*(v3 + 8);
            LODWORD(v11) = v11 - 1;
            *(v19 + 24) = v9;
            v9 = v19;
LABEL_31:
            if (v11 >= *(v3 + 8))
            {
              v28 = sub_100009620(v6, v7);
              v6 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
              if (v6)
              {
                v29 = *(*(a1 + 136) + 8 * v8);
                *buf = 136315138;
                v35[0] = v29;
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "remove_paths: did not find prefix header for path %s", buf, 0xCu);
              }
            }

            if (++v8 >= *(a1 + 128))
            {
              goto LABEL_39;
            }
          }

          if (v20)
          {
            goto LABEL_31;
          }

          v22 = sub_100009620(v6, v7);
          v6 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          if (!v6)
          {
            goto LABEL_31;
          }

          v23 = *(*v3 + 8 * v11);
          *buf = 67109376;
          LODWORD(v35[0]) = v11;
          WORD2(v35[0]) = 2048;
          *(v35 + 6) = v23;
          v24 = v22;
          v25 = "remove_paths: prefix_table inconsistent.  refcount > 0 but client_list is NULL! prefix_table[%d] = %p";
LABEL_29:
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x12u);
          goto LABEL_31;
        }

        v9 = 0;
LABEL_39:
        pthread_mutex_unlock(&stru_100024180);
        v31 = qword_100024708;
        qword_100024708 = v3;
        __dmb(0xBu);
        do
        {
          if (!atomic_fetch_add_explicit(&dword_100024718, 0, memory_order_relaxed))
          {
            break;
          }

          usleep(0x2710u);
        }

        while (qword_100024710 == v31);
        if (v31)
        {
          free(*v31);
          free(v31);
        }

        if (v9)
        {
          do
          {
            v32 = *(v9 + 24);
            free(*v9);
            *&v33 = 0xD9D9D9D9D9D9D9D9;
            *(&v33 + 1) = 0xD9D9D9D9D9D9D9D9;
            *v9 = v33;
            *(v9 + 16) = v33;
            free(v9);
            v9 = v32;
          }

          while (v32);
        }

        return 0;
      }

      free(v3);
    }

    return 12;
  }

  return 0;
}

uint64_t sub_10000B630(unint64_t a1)
{
  v1 = *(a1 + 256);
  v2 = &dword_1000258DC;
  v3 = 512;
  do
  {
    if (v1 == *(v2 - 1) && (*v2)-- <= 1)
    {
      *(v2 - 1) = 0;
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  v5 = vdupq_n_s64(a1);
  v6 = &xmmword_100024758;
  v7 = 512;
  do
  {
    v8 = vmovn_s64(vceqq_s64(*v6, v5));
    if (v8.i8[0])
    {
      v6->i64[0] = 0;
    }

    if (v8.i8[4])
    {
      v6->i64[1] = 0;
    }

    ++v6;
    v7 -= 2;
  }

  while (v7);
  return 0;
}

void sub_10000B6B4(uint64_t a1)
{
  v1 = (a1 + 32);
  dispatch_release(*(*(a1 + 32) + 8));
  *(*v1 + 1) = 0;
  v2 = mach_port_mod_refs(mach_task_self_, *(*v1 + 1), 1u, -1);
  if (v2)
  {
    v4 = v2;
    v5 = sub_100009620(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100014354(v1, v4);
    }
  }

  free(*v1);
}

uint64_t sub_10000B7BC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *(a2 + 8))
  {
    return 0;
  }

  *a2 = strdup(*(a1 + 8));
  return 1;
}

void start(int a1, uint64_t a2)
{
  v2 = 3;
  if (a1 == 2)
  {
    if (!strcmp("-d", *(a2 + 8)))
    {
      v2 = 35;
    }

    else
    {
      v2 = 3;
    }
  }

  v3 = getprogname();
  openlog(v3, v2, 24);
  v4 = bootstrap_check_in(bootstrap_port, "com.apple.FSEvents", &dword_100024250);
  if (v4)
  {
    v13 = v4;
    v14 = sub_100009620(v4, v5);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    v17 = "main";
    v18 = 2080;
    v19 = bootstrap_strerror(v13);
    v20 = 1024;
    v21 = v13;
    v10 = "%s: ERROR: bootstrap_check_in() => %s (%d)";
    v11 = v14;
    v12 = 28;
  }

  else
  {
    qword_100024248 = dispatch_queue_create("com.apple.fseventsd.mach_channel_queue", 0);
    qword_100024258 = dispatch_mach_create_f();
    dispatch_set_qos_class_fallback();
    dispatch_mach_connect();
    v15 = 0;
    v6 = pthread_create(&v15, 0, sub_100012130, 0);
    if (!v6)
    {
      dispatch_main();
    }

    v8 = v6;
    v9 = sub_100009620(v6, v7);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      closelog();
      exit(1);
    }

    *buf = 136315394;
    v17 = "main";
    v18 = 1024;
    LODWORD(v19) = v8;
    v10 = "%s: ERROR: pthread_create() => %d";
    v11 = v9;
    v12 = 18;
  }

  _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
  goto LABEL_12;
}

uint64_t sub_10000BA18(uint64_t a1, void *a2)
{
  v3 = sub_10000AF74(a1);
  if (v3)
  {
    v5 = v3;
    nullsub_1();
    sub_100012174(v5, a2);
  }

  else
  {
    v6 = sub_100009620(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001407C();
    }
  }

  return 0;
}

uint64_t sub_10000BAB4(uint64_t a1, uint64_t a2, unint64_t a3, int *a4, int a5)
{
  if (a5)
  {
    v6 = 5;
    v7 = 13;
  }

  else
  {
    v7 = sub_100010EA0(a2, a3);
    v6 = 0;
  }

  *a4 = v7;
  return v6;
}

void sub_10000BB78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_10000BBBC(uint64_t a1)
{
  v2 = pthread_rwlock_init((a1 + 8), 0);
  if (v2)
  {
    v4 = v2;
    v5 = sub_100009620(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000147DC(v4);
    }
  }

  else
  {
    v6 = pthread_key_create(a1, &_free);
    v4 = v6;
    if (v6)
    {
      v8 = sub_100009620(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100014868(v4);
      }
    }
  }

  return v4;
}

uint64_t sub_10000BC5C(uint64_t a1)
{
  v2 = sub_100002260(a1);
  if (v2)
  {
    v3 = *v2;
    if (*v2 >= 1)
    {
      sub_100014B2C();
    }

    --*v2;
    if (v3 < 0)
    {
      return 0;
    }

    v4 = pthread_rwlock_wrlock((a1 + 8));
    v6 = v4;
    if (v4)
    {
      v7 = sub_100009620(v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100014A90(v6);
      }
    }

    return v6;
  }

  else
  {

    return pthread_rwlock_wrlock((a1 + 8));
  }
}

uint64_t sub_10000BD0C(int a1, uint64_t a2, int a3, int a4)
{
  if (a1)
  {
    v7 = open("/dev/fsevents", 0);
    v8 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      return v8;
    }

    v16 = a3;
    v17 = a4;
    v18 = &dword_100024048;
    v15 = a2;
    v9 = ioctl(v7, 0x80187301uLL, &v15);
    if ((v9 & 0x80000000) != 0)
    {
      v13 = v9;
      v14 = sub_100009620(v9, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100014B58();
      }

      close(v8);
      return v13;
    }

    close(v8);
    return 0;
  }

  v11 = dword_100024048;
  if (dword_100024048 < 0)
  {
    return 0;
  }

  dword_100024048 = -1;

  return close(v11);
}

uint64_t sub_10000BE0C(void (*a1)(void))
{
  sub_1000021A0(&unk_100025758);
  v2 = qword_1000246E8;
  if (qword_1000246E8 && *(qword_1000246E8 + 8) >= 1)
  {
    v3 = 0;
    do
    {
      if (*(*v2 + 8 * v3) && (*(*(*v2 + 8 * v3) + 32) & 0x20) != 0)
      {
        a1(*(*v2 + 8 * v3));
      }

      ++v3;
    }

    while (v3 < *(v2 + 8));
  }

  return sub_1000024C8(&unk_100025758);
}

void sub_10000BEAC(const char *a1, char *a2)
{
  v7 = xmmword_10001B110;
  v8 = 0;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (a1 && a2)
  {
    v3 = getattrlist(a1, &v7, v9, 0x14uLL, 0);
    if (v3)
    {
      v5 = sub_100009620(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100014C9C();
      }
    }

    else
    {
      uuid_unparse(v9 + 4, a2);
    }
  }

  else
  {
    v6 = sub_100009620(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100014D40();
    }
  }
}

uint64_t sub_10000BF8C(uint32_t *a1)
{
  v1 = *a1;
  v11 = *a1;
  if ((a1[8] & 0x400) != 0)
  {
    v13 = 0;
    if (dword_1000246C8)
    {
LABEL_23:
      v14.f_bsize = v1;
      ioctl(dword_100024048, 0x80047368uLL, &v14);
      return 0;
    }

    memset(&v14, 0, 512);
    if (qword_100024748)
    {
      v2 = *(qword_100024748 + 16);
      if (v2)
      {
        sub_1000033CC(v2);
      }
    }

    v12 = 0;
    sub_1000021A0(&unk_100025758);
    if (sub_10001232C(&v11, &v13))
    {
LABEL_22:
      sub_1000024C8(&unk_100025758);
      goto LABEL_23;
    }

    v3 = v13;
    if (v13)
    {
      v4 = statfs(*(v13 + 8), &v14);
      if (v4)
      {
        v6 = sub_100009620(v4, v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100014DC0();
        }
      }

      else
      {
        if (sub_10000C854(&v14, &v12))
        {
          goto LABEL_17;
        }

        if (v12 == 2)
        {
          v7 = *(v3 + 32) | 0x9040;
        }

        else
        {
          if (v12 != 1)
          {
            goto LABEL_17;
          }

          v7 = *(v3 + 32) | 0x1000;
        }

        *(v3 + 32) = v7;
      }
    }

LABEL_17:
    if ((*(v3 + 32) & 1) == 0)
    {
      *(v3 + 32) &= ~4u;
      *(v3 + 32) |= 0x80u;
      *(v3 + 32) &= ~0x400u;
      atomic_fetch_add_explicit((v3 + 36), 1u, memory_order_relaxed);
      sub_1000024C8(&unk_100025758);
      if (qword_100024748)
      {
        v8 = *(qword_100024748 + 16);
        if (v8)
        {
          sub_1000033CC(v8);
        }
      }

      sub_10000D738(*v3, 1);
      usleep(0xC350u);
      atomic_fetch_add_explicit((v3 + 36), 0xFFFFFFFF, memory_order_relaxed);
      sub_100010890(v3, v9);
      *(v3 + 40) = time(0);
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_10000C1C4()
{
  zone = malloc_create_zone(0x10000uLL, 0);
  qword_1000246B8 = zone;
  if (zone)
  {
    malloc_set_zone_name(zone, "DiskLoggerBufferZone");
  }

  v42 = 0;
  v1 = sub_10000C670(&v42);
  if (v1 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  sub_10000BBBC(&unk_100025758);
  v3 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  if (!v3)
  {
    free(v42);
    return 12;
  }

  v4 = v3;
  v5 = malloc_type_calloc(v2, 8uLL, 0x2004093837F09uLL);
  if (!v5)
  {
    free(v4);
    v34 = v42;
    goto LABEL_41;
  }

  v6 = v5;
  v40 = v4;
  v7 = 0;
  while (1)
  {
    v41 = 0;
    v8 = malloc_type_calloc(0xE0uLL, 1uLL, 0x1030040A2EC980AuLL);
    v6[v7] = v8;
    if (!v8)
    {
      break;
    }

    v10 = v8;
    v11 = v42;
    v12 = v42 + 2168 * v7;
    v14 = *(v12 + 12);
    v13 = v12 + 48;
    *v8 = v14;
    v15 = strdup(v13 + 40);
    *(v10 + 1) = v15;
    if (sub_10000C724(v13 + 40, __s1))
    {
      *(v6[v7] + 16) = strdup(__s1);
      v15 = *(v6[v7] + 16);
    }

    else
    {
      v17 = sub_100009620(0, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v29 = *v6[v7];
        *buf = 136315650;
        v44 = "init_dev_info";
        v45 = 2080;
        v46 = v13 + 40;
        v47 = 1024;
        v48 = v29;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Could not resolve nofirmlink  path, fallback to mount_point[%s] dev[%d]\n", buf, 0x1Cu);
      }

      *(v6[v7] + 16) = strdup(v13 + 40);
    }

    v18 = v15;
    do
    {
      while (1)
      {
        v20 = *v18++;
        v19 = v20;
        if (v20 != 47)
        {
          break;
        }

        ++*(v6[v7] + 24);
      }
    }

    while (v19);
    v21 = v6[v7];
    if (v15[1])
    {
      ++v21[6];
    }

    v22 = v11[542 * v7 + 16];
    v21[7] = v22;
    v21[8] = 4;
    if ((v22 & 0x4000) != 0)
    {
      v21[8] |= 1u;
      dword_1000246F0 = *v13;
    }

    v41 = 0;
    v23 = sub_10000C854(&v11[542 * v7], &v41);
    if (v23)
    {
      v25 = 256;
    }

    else
    {
      v25 = 64;
    }

    *(v6[v7] + 32) |= v25;
    if (v41 == 2)
    {
      v28 = sub_100009620(v23, v24);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v32 = v6[v7];
        v33 = *(v32 + 8);
        LODWORD(v32) = *v32;
        *buf = 136315650;
        v44 = "init_dev_info";
        v45 = 2080;
        v46 = v33;
        v47 = 1024;
        v48 = v32;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: mount_point(%s) dev(%d) will be completely ignored", buf, 0x1Cu);
      }

      v27 = 32832;
      goto LABEL_33;
    }

    if (v41 == 1)
    {
      v26 = sub_100009620(v23, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v30 = v6[v7];
        v31 = *(v30 + 8);
        LODWORD(v30) = *v30;
        *buf = 136315650;
        v44 = "init_dev_info";
        v45 = 2080;
        v46 = v31;
        v47 = 1024;
        v48 = v30;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: Logging disabled (no_log) completely for device: mount_point(%s) dev(%d)", buf, 0x1Cu);
      }

      v27 = 4096;
LABEL_33:
      *(v6[v7] + 32) |= v27;
    }

    if (++v7 == v2)
    {
      v38 = v40;
      *v40 = v6;
      v40[2] = v2;
      __dmb(0xBu);
      qword_1000246E8 = v38;
      sub_10000A794(sub_10000CA34);
      pthread_create(&qword_100024280, 0, sub_10000D5B0, 0);
      free(v42);
      return 0;
    }
  }

  v35 = sub_100009620(0, v9);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  v37 = v42;
  if (v36)
  {
    sub_100014E40();
  }

  free(v6);
  free(v40);
  v34 = v37;
LABEL_41:
  free(v34);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000C670(void *a1)
{
  v2 = 1000;
  while (1)
  {
    v3 = getfsstat(0, 0, 2);
    if (v3 < 0)
    {
      return 0;
    }

    v4 = 2168 * v3 + 2168;
    result = malloc_type_malloc(v4, 0x100004087E0324AuLL);
    if (!result)
    {
      return result;
    }

    v6 = result;
    result = getfsstat(result, v4, 2);
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    free(v6);
    if (!--v2)
    {
      v6 = 0;
      result = 0xFFFFFFFFLL;
LABEL_7:
      *a1 = v6;
      return result;
    }
  }
}

char *sub_10000C724(const char *a1, char *a2)
{
  v7 = xmmword_10001B128;
  memset(v10, 0, 512);
  v8 = 0;
  v9 = 32;
  DWORD1(v7) = 0x80000000;
  v3 = getattrlist(a1, &v7, v10, 0x420uLL, 0x20u);
  if (v3 == -1)
  {
    v5 = sub_100009620(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100014EC0();
    }

    return 0;
  }

  else if (a2)
  {
    strlcpy(a2, &v10[1] + SDWORD2(v10[1]) + 8, 0x400uLL);
  }

  else
  {
    return &v10[1] + SDWORD2(v10[1]) + 8;
  }

  return a2;
}

uint64_t sub_10000C854(uint64_t a1, int *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  if ((*(a1 + 65) & 0x40) != 0)
  {
    return 1;
  }

  memset(&v8, 0, sizeof(v8));
  snprintf(__str, 0x400uLL, "%s/.fseventsd/no_log", (a1 + 88));
  if ((*(a1 + 65) & 0x10) != 0 && !lstat(__str, &v8))
  {
    if (!a2)
    {
      return 0;
    }

    result = 0;
    v6 = 1;
    goto LABEL_19;
  }

  snprintf(__str, 0x400uLL, "%s/.fseventsd/ignore", (a1 + 88));
  v4 = *(a1 + 64);
  if ((v4 & 0x1000) == 0)
  {
    goto LABEL_9;
  }

  if (!lstat(__str, &v8))
  {
    if (!a2)
    {
      return 0;
    }

    result = 0;
    v6 = 2;
LABEL_19:
    *a2 = v6;
    return result;
  }

  v4 = *(a1 + 64);
LABEL_9:
  if ((v4 & 0x21) != 0)
  {
    return 0;
  }

  if (strcmp((a1 + 72), "apfs"))
  {
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v7 = strstr((a1 + 88), "/Users/");
    result = 0;
    if ((v4 & 0x1000) == 0 || !v7)
    {
      return result;
    }

    goto LABEL_25;
  }

  v9 = 0;
  if (!APFSVolumeRole() && v9 == 576)
  {
    return 1;
  }

  v4 = *(a1 + 64);
  if ((v4 & 0x100000) != 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v4 & 0x1000) == 0)
  {
    return 0;
  }

LABEL_25:
  result = strcmp((a1 + 88), "/dev");
  if (result)
  {
    result = strcmp((a1 + 72), "acfs");
    if (result)
    {
      return (v4 & 0x200) == 0 && strcmp((a1 + 88), "/private/var/wireless/baseband_data");
    }
  }

  return result;
}

uint64_t sub_10000CA34()
{
  v0 = __chkstk_darwin();
  v2 = v0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  memset(&v76, 0, 512);
  v3 = *(v0 + 216);
  if (v3 && v3 != qword_100024748)
  {
    v4 = sub_100009620(v0, v1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100014F64();
    }

    return 0;
  }

  v5 = (v0 + 32);
  if ((*(v0 + 32) & 0x100) == 0 || (*v5 & 0x1000) != 0 && (*v5 & 1) == 0)
  {
    v6 = sub_100009620(v0, v1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000152B8();
    }

    return 0;
  }

  v7 = malloc_type_calloc(0x9F8uLL, 1uLL, 0x595BC342uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  *(v7 + 3) = 0x100002000;
  pthread_rwlock_init((v7 + 48), 0);
  v9 = *(v2 + 8);
  if (*v9 == 47 && v9[1])
  {
    snprintf((v8 + 256), 0x400uLL, "%s/.fseventsd", *(v2 + 8));
  }

  else
  {
    __strlcpy_chk();
  }

  v10 = 1;
  while (1)
  {
    v11 = open((v8 + 256), 0x20000000);
    if ((v11 & 0x80000000) != 0)
    {
      v16 = sub_100009620(v11, v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = *(v2 + 8);
        v20 = *v2;
        buf.f_bsize = 136315906;
        *&buf.f_iosize = "create_dls_callback";
        WORD2(buf.f_blocks) = 2080;
        *(&buf.f_blocks + 6) = v8 + 256;
        HIWORD(buf.f_bfree) = 2080;
        buf.f_bavail = v19;
        LOWORD(buf.f_files) = 1024;
        *(&buf.f_files + 2) = v20;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <2> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
      }

      memset(&v70, 0, sizeof(v70));
    }

    else
    {
      v13 = v11;
      v14 = fstatfs(v11, &v76);
      if (v14 || v76.f_fsid.val[0] != *v2 || v76.f_fsid.val[0] == dword_1000246F0 && (*v5 & 1) == 0)
      {
        v21 = sub_100009620(v14, v15);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(v2 + 8);
          v23 = *v2;
          buf.f_bsize = 136315906;
          *&buf.f_iosize = "create_dls_callback";
          WORD2(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 6) = v8 + 256;
          HIWORD(buf.f_bfree) = 2080;
          buf.f_bavail = v22;
          LOWORD(buf.f_files) = 1024;
          *(&buf.f_files + 2) = v23;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <1> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
        }

LABEL_60:
        close(v13);
LABEL_61:
        free(v8);
        return 0;
      }

      memset(&v70, 0, sizeof(v70));
      if (fstat(v13, &v70) || (v70.st_mode & 0xF000) == 0x4000)
      {
        goto LABEL_55;
      }

      close(v13);
    }

    v17 = *(v2 + 8);
    v18 = *v17;
    if ((v10 & 1) == 0)
    {
      break;
    }

    if (v18 == 47 && !v17[1])
    {
      __strlcpy_chk();
      v10 = 0;
      if ((*(v2 + 28) & 0x4001) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      snprintf((v8 + 256), 0x400uLL, "%s%s", *(v2 + 8), "/private/var/db/fseventsd");
      v10 = 0;
    }
  }

  if (v18 == 47 && v17[1])
  {
    snprintf((v8 + 256), 0x400uLL, "%s/.fseventsd", *(v2 + 8));
  }

  else
  {
    __strlcpy_chk();
  }

LABEL_39:
  unlink((v8 + 256));
  v24 = mkdir((v8 + 256), 0x1C0u);
  if (v24)
  {
    if ((*v5 & 1) == 0 || (v24 = __error(), *v24 != 30))
    {
      v26 = sub_100009620(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100014FD4();
      }
    }
  }

  else
  {
    sub_10000F14C((v8 + 256));
  }

  v27 = open((v8 + 256), 0x20000000);
  if ((v27 & 0x80000000) != 0)
  {
    v39 = sub_100009620(v27, v28);
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      v54 = *(v2 + 8);
      v55 = *v2;
      buf.f_bsize = 136315906;
      *&buf.f_iosize = "create_dls_callback";
      WORD2(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 6) = v8 + 256;
      HIWORD(buf.f_bfree) = 2080;
      buf.f_bavail = v54;
      LOWORD(buf.f_files) = 1024;
      *(&buf.f_files + 2) = v55;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <3> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
    }

    if ((*v5 & 1) == 0)
    {
      v42 = sub_100009620(v40, v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = *(v2 + 8);
        v44 = *v2;
        buf.f_bsize = 136315906;
        *&buf.f_iosize = "create_dls_callback";
        WORD2(buf.f_blocks) = 2080;
        *(&buf.f_blocks + 6) = v8 + 256;
        HIWORD(buf.f_bfree) = 2080;
        buf.f_bavail = v43;
        LOWORD(buf.f_files) = 1024;
        *(&buf.f_files + 2) = v44;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <4> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
      }

      goto LABEL_61;
    }

    strcpy((v8 + 256), "/tmp");
    v13 = open((v8 + 256), 0);
  }

  else
  {
    v13 = v27;
    if (*v5 & 1) != 0 || (*(v2 + 28))
    {
      v36 = sub_100009620(v27, v28);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = *(v2 + 8);
        v38 = *v2;
        buf.f_bsize = 136315906;
        *&buf.f_iosize = "create_dls_callback";
        WORD2(buf.f_blocks) = 2080;
        *(&buf.f_blocks + 6) = v8 + 256;
        HIWORD(buf.f_bfree) = 2080;
        buf.f_bavail = v37;
        LOWORD(buf.f_files) = 1024;
        *(&buf.f_files + 2) = v38;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: Use fallback log directory for read only root fs [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
      }
    }

    else
    {
      v29 = fstatfs(v27, &v76);
      if (v29 || v76.f_fsid.val[0] != *v2 || v76.f_fsid.val[0] == dword_1000246F0 && (*v5 & 1) == 0)
      {
        v31 = sub_100009620(v29, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v68 = *(v2 + 8);
          v69 = *v2;
          buf.f_bsize = 136315906;
          *&buf.f_iosize = "create_dls_callback";
          WORD2(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 6) = v8 + 256;
          HIWORD(buf.f_bfree) = 2080;
          buf.f_bavail = v68;
          LOWORD(buf.f_files) = 1024;
          *(&buf.f_files + 2) = v69;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s: Could not open logging directory <5> [%s] for mount[%s] dev[%d] ", &buf, 0x26u);
        }

        close(v13);
        rmdir((v8 + 256));
        goto LABEL_61;
      }

LABEL_55:
      __s1[0] = 0;
      fstatfs(v13, &v76);
      v32 = fcntl(v13, 50, __s1);
      if (v76.f_fsid.val[0] != *v2 || (v32 = strcmp(__s1, (v8 + 256)), v32))
      {
        v34 = sub_100009620(v32, v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_100015078();
        }

        unlink((v8 + 256));
        goto LABEL_60;
      }
    }
  }

  v45 = sub_10000F440(v13, (v8 + 32), (v8 + 36), (v8 + 40), sub_10000F600, &v72, &v71);
  if (v45)
  {
    v47 = sub_100009620(v45, v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000150F0();
    }

    goto LABEL_61;
  }

  *(v8 + 248) = 65537;
  sub_10000F65C(v8 + 2304);
  v48 = *(v8 + 32);
  if (v48 < 2)
  {
    goto LABEL_91;
  }

  qsort(*(v8 + 40), v48, 8uLL, sub_10000F6E8);
  if (!((v71 - v72) >> 31))
  {
    goto LABEL_91;
  }

  if (*(v8 + 32) < 1)
  {
    LODWORD(v51) = 0;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    while (1)
    {
      snprintf(__s1, 0x400uLL, "%s/%.16llx", (v8 + 256), *(*(v8 + 40) + 8 * v51));
      v49 = lstat(__s1, &v70);
      if (v49)
      {
        break;
      }

      if (v70.st_size)
      {
        tv_sec = v70.st_ctimespec.tv_sec;
        if (v70.st_ctimespec.tv_sec < v52)
        {
          v57 = sub_100009620(v49, v50);
          v49 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
          if (v49)
          {
            buf.f_bsize = 134218498;
            *&buf.f_iosize = v70.st_ctimespec.tv_sec;
            WORD2(buf.f_blocks) = 2048;
            *(&buf.f_blocks + 6) = v52;
            HIWORD(buf.f_bfree) = 2080;
            buf.f_bavail = v8 + 256;
            _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Log files out of order (%ld < %ld) in %s.", &buf, 0x20u);
          }

          goto LABEL_90;
        }
      }

      else
      {
        tv_sec = v52;
      }

      ++v51;
      v52 = tv_sec;
      if (v51 >= *(v8 + 32))
      {
        goto LABEL_90;
      }
    }

    v56 = sub_100009620(v49, v50);
    v49 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      sub_100015168();
    }
  }

LABEL_90:
  if (v51 != *(v8 + 32))
  {
    v67 = sub_100009620(v49, v50);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_1000151D8();
    }

    v58 = 0;
  }

  else
  {
LABEL_91:
    v58 = 1;
  }

  if ((*v5 & 0x2000) == 0)
  {
    sub_10000E8B0(v2, v8);
  }

  v59 = *(v8 + 32);
  if (v59 >= 1)
  {
    v60 = v59 - 1;
    while (sub_10000F700(v8, *(*(v8 + 40) + 8 * v60), &v73))
    {
      memset(&buf, 0, 512);
      if (!statfs(*(v2 + 8), &buf) && buf.f_fsid.val[0] == *v2)
      {
        v61 = v60-- + 1;
        if (v61 > 1)
        {
          continue;
        }
      }

      goto LABEL_103;
    }

    if (v73 > qword_1000246D0[dword_1000246E0])
    {
      qword_1000246D0[dword_1000246E0 ^ 1] = v73;
      atomic_fetch_xor(&dword_1000246E0, 1u);
    }
  }

LABEL_103:
  *(v8 + 8) = 0;
  v62 = sub_10000FFAC(v2, v8);
  if (v62)
  {
    if ((*v5 & 1) == 0 || (v62 = strcmp((v8 + 256), "/tmp"), v62))
    {
      v64 = sub_100009620(v62, v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_100015248();
      }
    }

    goto LABEL_109;
  }

  sub_10001013C(v2, v8, 0);
  if ((v58 & 1) == 0)
  {
LABEL_109:
    sub_10000EDBC(v8, 1);
    sub_10000EFA4(v2, v8);
  }

  *(v2 + 216) = v8;
  if (*(v2 + 32))
  {
    qword_100024748 = v8;
    v65 = v8;
  }

  else
  {
    v65 = qword_100024748;
    if (!qword_100024748)
    {
      return 0;
    }
  }

  v66 = *(v65 + 16);
  if (v66)
  {
    *(v8 + 16) = v66;
  }

  return 0;
}

uint64_t sub_10000D5B0()
{
  pthread_setname_np("com.apple.fseventsd.volume");
  qword_1000246F8 = CFRunLoopGetCurrent();
  setiopolicy_np(0, 1, 2);
  v0 = sub_100012420();
  v2 = v0;
  if ((v0 & 0x80000000) != 0)
  {
    v3 = sub_100009620(v0, v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100015334();
    }
  }

  v4 = CFFileDescriptorCreate(0, v2, 1u, sub_100012498, 0);
  if (v4)
  {
    v6 = v4;
    RunLoopSource = CFFileDescriptorCreateRunLoopSource(0, v4, 0);
    if (RunLoopSource)
    {
      v9 = RunLoopSource;
      CFRunLoopAddSource(qword_1000246F8, RunLoopSource, kCFRunLoopDefaultMode);
      CFRelease(v9);
      CFFileDescriptorEnableCallBacks(v6, 1uLL);
    }

    else
    {
      v11 = sub_100009620(0, v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100015370();
      }

      CFFileDescriptorInvalidate(v6);
      CFRelease(v6);
    }
  }

  else
  {
    v10 = sub_100009620(0, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000153F0();
    }
  }

  CFRunLoopRun();
  return 0;
}