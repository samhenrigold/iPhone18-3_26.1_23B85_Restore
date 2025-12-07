void sub_10003FD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003FAF0(va);
  _Unwind_Resume(a1);
}

void sub_10003FD5C(uint64_t a1, int a2, void *a3)
{
  v41 = 0xE00000001;
  LODWORD(v42) = 1;
  HIDWORD(v42) = a2;
  v38 = 648;
  v6 = sysctl(&v41, 4u, &v44, &v38, 0, 0);
  if (v38)
  {
    v7 = (v6 | v47 & 4) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_10003F3F4(a1, &v41);
  v9 = *(a1 + 8);
  if (!v9)
  {
    v10 = *(a1 + 1760);
    if (v10 && (LODWORD(v44) = 0, (v11 = v10(*(a1 + 120), 0, &v44)) != 0))
    {
      v12 = *(a1 + 1792);
      if (v12)
      {
        v13 = v11;
        v9 = v12();
        v11 = v13;
      }

      else
      {
        v9 = 0;
      }

      (*(a1 + 1776))(v11);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 8) = v9;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v14 = a3[1] - *a3;
  if (!v14)
  {
LABEL_61:
    sub_10003E200();
  }

  v35 = v9;
  v36 = v8;
  v37 = a1;
  v15 = 0;
  v17 = v41;
  v16 = v42;
  v18 = 0xCCCCCCCCCCCCCCCDLL * ((v42 - v41) >> 5);
  v19 = v14 >> 3;
  if (v18 <= 1)
  {
    v18 = 1;
  }

  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  v21 = -v18;
LABEL_25:
  if (v16 == v17)
  {
    goto LABEL_37;
  }

  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = v41 + 160 * v22++;
    while (*(v24 + 3) != *(*a3 + 8 * v15))
    {
      ++v22;
      v24 += 160;
      if (v21 + v22 == 1)
      {
        if (v23)
        {
          goto LABEL_24;
        }

LABEL_37:
        v44 = 0uLL;
        v45 = 0;
        v46 = -1;
        v49 = 0;
        v50 = 0;
        v48 = 0;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0;
        v46 = *(*a3 + 8 * v15);
        v27 = v39;
        if (v39 >= v40)
        {
          v28 = sub_10004A8E0(&v38, &v44);
        }

        else
        {
          sub_10004AAD8(&v38, v39, &v44);
          v28 = (v27 + 160);
        }

        v39 = v28;
        if ((SHIBYTE(v53) & 0x80000000) == 0)
        {
          if ((SBYTE7(v52) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }

LABEL_45:
          operator delete(v51);
          v29 = v48;
          if (v48)
          {
            goto LABEL_46;
          }

LABEL_23:
          if ((SHIBYTE(v45) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

LABEL_53:
          operator delete(v44);
          goto LABEL_24;
        }

        operator delete(*(&v52 + 1));
        if (SBYTE7(v52) < 0)
        {
          goto LABEL_45;
        }

LABEL_42:
        v29 = v48;
        if (!v48)
        {
          goto LABEL_23;
        }

LABEL_46:
        v30 = v49;
        v31 = v29;
        if (v49 != v29)
        {
          do
          {
            v32 = *(v30 - 65);
            v30 -= 11;
            if (v32 < 0)
            {
              operator delete(*v30);
            }
          }

          while (v30 != v29);
          v31 = v48;
        }

        v49 = v29;
        operator delete(v31);
        if (SHIBYTE(v45) < 0)
        {
          goto LABEL_53;
        }

LABEL_24:
        if (++v15 == v20)
        {
          if (v39 != v38)
          {
            v33 = 0;
            if (0xCCCCCCCCCCCCCCCDLL * ((v39 - v38) >> 5) <= 1)
            {
              v34 = 1;
            }

            else
            {
              v34 = 0xCCCCCCCCCCCCCCCDLL * ((v39 - v38) >> 5);
            }

            do
            {
              if (sub_10003D984(v37, v35, *(v38 + v33 + 24), v36, v38 + v33 + 32))
              {
                *(v38 + v33 + 152) = 1;
              }

              v33 += 160;
              --v34;
            }

            while (v34);
          }

          goto LABEL_61;
        }

        goto LABEL_25;
      }
    }

    v25 = v39;
    if (v39 >= v40)
    {
      v26 = sub_10004A8E0(&v38, v24);
    }

    else
    {
      sub_10004AAD8(&v38, v39, v24);
      v26 = (v25 + 160);
    }

    v39 = v26;
    v23 = 1;
    if (!(v21 + v22))
    {
      goto LABEL_24;
    }
  }
}

void sub_100040198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10003FAF0(va);
  _Unwind_Resume(a1);
}

void sub_100040528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10003D168(&a42);
  _Unwind_Resume(a1);
}

uint64_t sub_1000405FC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = sub_10004FCA4(a1 + 968, a2, a3);
  if (result)
  {
    if (*(a1 + 1752) == 1)
    {
      *a3 = 3;
    }

    else if (*a3 == 4)
    {
      v7 = result;
      sub_100040674(a1, a2, a3);
      return v7;
    }
  }

  return result;
}

void sub_100040674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000093F0((a1 + 1664), *(a3 + 264));
  if (v5)
  {
    v6 = v5;
    *(a3 + 272) = v5[2];
    *(a3 + 280) = *(v5 + 7);
    if (sub_100010524(2048))
    {
      sub_100010668("MachProcess::RefineWatchpointStopInfo mach exception addr 0x%llx moved in to nearest watchpoint, 0x%llx-0x%llx", *(a3 + 264), v6[2], v6[2] + *(v6 + 1) - 1);
    }
  }

  else
  {
    *(a3 + 272) = *(a3 + 264);
  }

  *(a3 + 284) = 0;
  v17 = 0;
  sub_10004F578(a1 + 968, a2, &v18);
  if (v18 && *(v18 + 184))
  {
    v7 = sub_100008DB0(&v17);
    v8 = v19;
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    v17 = 0;
    v8 = v19;
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = v17;
    if (!v17)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = v17;
  if (!v17)
  {
    return;
  }

LABEL_12:
  v15 = v7;
  v10 = 0;
  do
  {
    v11 = v7 + 24 * v10;
    if (*(v11 + 8) && *(v11 + 16))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = *(*(v11 + 8) + 72 * v12 + 8);
        if (!strcmp(v14, "esr"))
        {
          operator new();
        }

        if (!strcmp(v14, "far"))
        {
          operator new();
        }

        v12 = v13++;
      }

      while (*(v11 + 16) > v12);
      v9 = v17;
      v7 = v15;
    }

    ++v10;
  }

  while (v10 < v9);
}

uint64_t sub_100040AE4(int *a1)
{
  result = a1[1];
  if (!result)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = a1;
      v10 = 0u;
      v11 = 0u;
      *v9 = 0u;
      v8 = 12;
      if (sysctlnametomib("sysctl.proc_cputype", v9, &v8))
      {
        result = 0;
      }

      else
      {
        v5 = v8;
        v9[v8] = v3;
        v8 = v5 + 1;
        v7 = 0;
        v6 = 4;
        if (sysctl(v9, v5 + 1, &v7, &v6, 0, 0))
        {
          result = 0;
        }

        else
        {
          result = v7;
        }
      }

      v4[1] = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100040BE8(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 1224);
  pthread_mutex_lock((a1 + 1224));
  v5 = *(a1 + 1216);
  if (v5 == 9)
  {
    if (sub_100010524(2))
    {
      sub_10000B3E8(a2);
      sub_100010668("MachProcess::SetState(%s) ignoring new state since current state is exited");
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if (v5 == a2)
  {
    if (sub_100010524(2))
    {
      sub_10000B3E8(a2);
      sub_100010668("MachProcess::SetState(%s) ignoring redundant state change...");
    }

    goto LABEL_7;
  }

  if (a2 - 1 > 8)
  {
    v6 = 1;
  }

  else
  {
    v6 = dword_100067020[a2 - 1];
  }

  if (sub_100010524(2))
  {
    v9 = sub_10000B3E8(a2);
    v10 = sub_10000B3E8(v5);
    sub_100010668("MachProcess::SetState(%s) upating state (previous state was %s), event_mask = 0x%8.8x", v9, v10, v6);
  }

  *(a1 + 1216) = a2;
  if (a2 == 4)
  {
    ++*(a1 + 444);
  }

LABEL_8:
  result = pthread_mutex_unlock(v4);
  if (v6)
  {
    sub_10001283C((a1 + 1288), v6);
    sub_10001283C((a1 + 1464), v6);
    if (v6 == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    sub_10001289C((a1 + 1464), v8);

    return sub_100012A00(a1 + 1288, v6, 0);
  }

  return result;
}

void sub_100040D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10003D024(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100040D88(_DWORD *a1)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::%s(arg = %p) thread starting...", "STDIOThread", a1);
  }

  pthread_setname_np("stdio monitoring thread");
  *__p = 0u;
  v26 = 0u;
  v2 = a1[4];
  if (v2 == a1[5])
  {
    v3 = -1;
  }

  else
  {
    v3 = a1[5];
  }

  v4 = v2 >= 0;
  v5 = v3 >= 0;
  while ((v2 & 0x80000000) == 0 || (v3 & 0x80000000) == 0)
  {
    pthread_testcancel();
    memset(&v24, 0, sizeof(v24));
    if (v4 && __darwin_check_fd_set_overflow(v2, &v24, 0))
    {
      v24.fds_bits[v2 >> 5] |= 1 << v2;
    }

    if (v5 && __darwin_check_fd_set_overflow(v3, &v24, 0))
    {
      v24.fds_bits[v3 >> 5] |= 1 << v3;
    }

    if (v2 <= v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = v2;
    }

    v7 = select(v6 + 1, &v24, 0, 0, 0);
    if (sub_100010524(2))
    {
      sub_100010668("select (nfds, &read_fds, NULL, NULL, NULL) => %d", v7);
    }

    if ((v7 & 0x80000000) != 0)
    {
      v10 = *__error();
      if (sub_1000104C8(2))
      {
        __p[0] = (v10 | 0x200000000);
        if (SHIBYTE(v26) < 0)
        {
          *__p[1] = 0;
          *&v26 = 0;
        }

        else
        {
          LOBYTE(__p[1]) = 0;
          HIBYTE(v26) = 0;
        }

        sub_10001035C(__p, "select (nfds, &read_fds, NULL, NULL, NULL) => %d", v11, v12, v13, v14, v15, v16, v7);
      }

      if (v10 == 9)
      {
        goto LABEL_55;
      }
    }

    else if (v7)
    {
      v27[1023] = 0;
      if (v4 && __darwin_check_fd_set_overflow(v2, &v24, 0) && ((v24.fds_bits[v2 >> 5] >> v2) & 1) != 0)
      {
        while (1)
        {
          v8 = read(v2, v27, 0x3FFuLL);
          v9 = v8;
          if ((v8 & 0x8000000000000000) != 0)
          {
            v17 = *__error();
            if (sub_100010524(2))
            {
              v18 = strerror(v17);
              sub_100010668("read (stdout_fd,) => %zd   errno: %d (%s)", v9, v17, v18);
            }

            goto LABEL_36;
          }

          if (!v8)
          {
            break;
          }

          sub_100043BB4(a1, v27, v8);
        }

        if (sub_100010524(2))
        {
          sub_100010668("read (stdout_fd,) => %zd  (reached EOF for child STDOUT)", 0);
        }

        v2 = -1;
        if (v5)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_36:
        if (v5)
        {
LABEL_37:
          if (__darwin_check_fd_set_overflow(v3, &v24, 0) && ((v24.fds_bits[v3 >> 5] >> v3) & 1) != 0)
          {
            while (1)
            {
              v19 = read(v3, v27, 0x3FFuLL);
              v20 = v19;
              if ((v19 & 0x8000000000000000) != 0)
              {
                break;
              }

              if (!v19)
              {
                if (sub_100010524(2))
                {
                  sub_100010668("read (stderr_fd,) => %zd  (reached EOF for child STDERR)", 0);
                }

                v3 = -1;
                goto LABEL_51;
              }

              sub_100043BB4(a1, v27, v19);
            }

            v21 = *__error();
            if (sub_100010524(2))
            {
              v22 = strerror(v21);
              sub_100010668("read (stderr_fd,) => %zd   errno: %d (%s)", v20, v21, v22);
            }
          }
        }
      }
    }

LABEL_51:
    v4 = v2 >= 0;
    v5 = v3 >= 0;
  }

  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::%s (%p): thread exiting...", "STDIOThread", a1);
  }

LABEL_55:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  return 0;
}

void sub_100041130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    v35 = a1;
    operator delete(__p);
    a1 = v35;
  }

  _Unwind_Resume(a1);
}

pthread_mutex_t *sub_100041174(pthread_mutex_t *result, int a2, int a3, int a4)
{
  v4 = result;
  result[8].__opaque[24] = a2;
  *&result[8].__opaque[28] = a3;
  *&result[8].__opaque[32] = a4;
  v5 = *&result[8].__opaque[40];
  if (a2)
  {
    if (!v5)
    {
      if (sub_100010524(2))
      {
        sub_100010668("MachProcess::%s()", "StartProfileThread");
      }

      return pthread_create(&v4[8].__opaque[40], 0, sub_10004125C, v4);
    }
  }

  else if (v5)
  {
    sub_10001283C((result + 656), 1);
    pthread_join(*&v4[8].__opaque[40], 0);
    *&v4[8].__opaque[40] = 0;

    return sub_10001289C((v4 + 656), 1);
  }

  return result;
}

uint64_t sub_10004125C(uint64_t a1)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::%s(arg = %p) thread starting...", "ProfileThread", a1);
  }

  pthread_setname_np("performance profiling thread");
  while (*(a1 + 544) == 1)
  {
    pthread_mutex_lock((a1 + 1224));
    v2 = *(a1 + 1216);
    pthread_mutex_unlock((a1 + 1224));
    if (v2 != 5)
    {
      if (v2 == 1 || v2 == 8)
      {
        return 0;
      }

      goto LABEL_17;
    }

    sub_10004BB84(a1 + 104, *(a1 + 552), &__p);
    if (v11 < 0)
    {
      if (!*&__p.tv_usec)
      {
        goto LABEL_16;
      }

      tv_sec = __p.tv_sec;
    }

    else
    {
      if (!v11)
      {
        goto LABEL_17;
      }

      tv_sec = &__p;
    }

    sub_10004479C(a1, tv_sec);
    if (v11 < 0)
    {
LABEL_16:
      operator delete(__p.tv_sec);
    }

LABEL_17:
    v4 = *(a1 + 548);
    v5 = v4 / 0xF4240uLL;
    v6 = v4 % 0xF4240;
    gettimeofday(&__p, 0);
    v9.tv_sec = __p.tv_sec;
    v9.tv_nsec = 1000 * __p.tv_usec;
    if (v6 | v5)
    {
      v7 = 1000 * __p.tv_usec + v6;
      v9.tv_sec = __p.tv_sec + v5 + v7 / 1000000000;
      v9.tv_nsec = v7 % 1000000000;
    }

    if (sub_1000128FC(a1 + 656, 1u, &v9))
    {
      return 0;
    }
  }

  return 0;
}

void sub_1000413F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100041410(uint64_t a1, uint64_t a2)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::Resume ()");
  }

  pthread_mutex_lock((a1 + 1224));
  v4 = *(a1 + 1216);
  pthread_mutex_unlock((a1 + 1224));
  if (v4 == 5)
  {
    if (sub_100010510())
    {
      sub_100010544(0, "Resume() - task 0x%x is already running, ignoring...", *(a1 + 120));
    }

    return 1;
  }

  if (v4 == 4)
  {
    if (a1 + 832 != a2)
    {
      sub_100048E3C((a1 + 832), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    }

    sub_100048D6C((a1 + 856), a2 + 24);
    sub_100041518(a1);
    return 1;
  }

  result = sub_100010510();
  if (result)
  {
    v6 = *(a1 + 120);
    v7 = sub_10000B3E8(v4);
    sub_100010544(0, "Resume() - task 0x%x has state %s, can't continue...", v6, v7);
    return 0;
  }

  return result;
}

uint64_t sub_100041518(uint64_t a1)
{
  v2 = (a1 + 904);
  pthread_mutex_lock((a1 + 904));
  v3 = *(a1 + 1744);
  *(a1 + 1748) = v3;
  if (v3)
  {
    if (sub_100010524(2))
    {
      sub_100010668("MachProcess::PrivateResume() - task 0x%x resuming (with unhandled interrupt signal %i)...", *(a1 + 120), *(a1 + 1748));
    }
  }

  else if (sub_100010524(2))
  {
    sub_100010668("MachProcess::PrivateResume() - task 0x%x resuming...", *(a1 + 120));
  }

  sub_1000425EC(a1);
  sub_1000510DC(a1 + 968, a1, (a1 + 832));
  if (sub_100010F74((a1 + 832), 6))
  {
    v4 = 6;
  }

  else
  {
    v4 = 5;
  }

  sub_100040BE8(a1, v4);
  sub_10004B460(a1 + 104);
  return pthread_mutex_unlock(v2);
}

void sub_1000415F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10003D024(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100041604(_DWORD *a1)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::Kill ()");
  }

  v2 = sub_1000418AC(a1, 1, 0, 0);
  if (sub_100010524(2))
  {
    v3 = sub_10000B3E8(v2);
    sub_100010668("MachProcess::Kill() DoSIGSTOP() state = %s", v3);
  }

  *__error() = 0;
  if (sub_100010510())
  {
    sub_100010544(0, "Sending ptrace PT_KILL to terminate inferior process pid %d.", *a1);
  }

  ptrace(8, *a1, 0, 0);
  *v27 = 0u;
  v28 = 0u;
  LODWORD(v27[0]) = *__error();
  HIDWORD(v27[0]) = 2;
  LOBYTE(v27[1]) = 0;
  HIBYTE(v28) = 0;
  v4 = sub_1000104C8(2);
  v5 = LODWORD(v27[0]);
  if (LODWORD(v27[0]))
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  if (v6 == 1)
  {
    v7 = *a1;
    v8 = sub_10001026C(v27);
    sub_1000103F8(v27, "MachProcess::Kill() DoSIGSTOP() ::ptrace (PT_KILL, pid=%u, 0, 0) => 0x%8.8x (%s)", v9, v10, v11, v12, v13, v14, v7, v5, v8);
  }

  sub_100010C48(__p, 5u, 0);
  v15 = *(a1 + 104);
  if (v15)
  {
    *(a1 + 105) = v15;
    operator delete(v15);
    *(a1 + 104) = 0;
    *(a1 + 105) = 0;
    *(a1 + 106) = 0;
  }

  *(a1 + 52) = *__p;
  *(a1 + 106) = v24;
  __p[1] = 0;
  v24 = 0;
  __p[0] = 0;
  v16 = *(a1 + 107);
  if (v16)
  {
    operator delete(v16);
    *(a1 + 107) = 0;
    *(a1 + 108) = 0;
    *(a1 + 109) = 0;
    v16 = __p[0];
  }

  *(a1 + 107) = v25;
  *(a1 + 54) = v26;
  v26 = 0uLL;
  v25 = 0;
  if (v16)
  {
    __p[1] = v16;
    operator delete(v16);
  }

  sub_100041518(a1);
  v17 = 0;
  v18 = -10000;
  while (1)
  {
    pthread_mutex_lock((a1 + 306));
    v19 = a1[304];
    pthread_mutex_unlock((a1 + 306));
    if (v19 == 9)
    {
      break;
    }

    usleep(0x2710u);
    v17 += 10000;
    v18 += 10000;
    if (v18 >= 0xF1B30)
    {
      v17 = 1000000;
      break;
    }
  }

  if (sub_100010510())
  {
    pthread_mutex_lock((a1 + 306));
    v20 = a1[304];
    pthread_mutex_unlock((a1 + 306));
    v21 = sub_10000B3E8(v20);
    sub_100010544(0, "Waited %u ms for process to be reaped (state = %s)", v17 / 0x3E8, v21);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[1]);
  }

  return 1;
}

void sub_100041880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000418AC(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  pthread_mutex_lock((a1 + 1224));
  v8 = *(a1 + 1216);
  pthread_mutex_unlock((a1 + 1224));
  if (sub_100010524(2))
  {
    v9 = sub_10000B3E8(v8);
    sub_100010668("MachProcess::DoSIGSTOP() state = %s", v9);
  }

  if (v8 - 5 >= 2)
  {
    if (a2)
    {
      if (sub_100010524(512))
      {
        sub_100010668("MachProcess::%s (remove = %d)", "DisableAllBreakpoints", 1);
      }

      sub_1000099AC((a1 + 1640), a1);
      sub_100009ABC((a1 + 1640));
      if (sub_100010524(2048))
      {
        sub_100010668("MachProcess::%s (remove = %d)", "DisableAllWatchpoints", 1);
      }

      sub_100009A34((a1 + 1664), a1);
      sub_100009ABC((a1 + 1664));
    }

    v10 = sub_1000517F4(a1 + 968, 17);
    if (a4)
    {
      *a4 = v10;
    }

    if (v10 != -1)
    {
      pthread_mutex_lock((a1 + 1224));
      v11 = *(a1 + 1216);
      pthread_mutex_unlock((a1 + 1224));
      return v11;
    }

    if (sub_100010524(2))
    {
      v12 = sub_10000B3E8(v8);
      sub_100010668("MachProcess::DoSIGSTOP() state = %s -- resuming process", v12);
    }

    if (a3)
    {
      v13 = 5;
    }

    else
    {
      v13 = 10;
    }

    sub_100010C48(__p, v13, 0);
    v14 = *(a1 + 832);
    if (v14)
    {
      *(a1 + 840) = v14;
      operator delete(v14);
    }

    *(a1 + 832) = *__p;
    *(a1 + 848) = v21;
    __p[1] = 0;
    v21 = 0;
    __p[0] = 0;
    v15 = *(a1 + 856);
    if (v15)
    {
      operator delete(v15);
      v15 = __p[0];
    }

    *(a1 + 856) = v22;
    *(a1 + 864) = v23;
    v23 = 0uLL;
    v22 = 0;
    if (v15)
    {
      __p[1] = v15;
      operator delete(v15);
    }

    sub_100041518(a1);
    sub_10001289C((a1 + 1288), 1);
    pthread_mutex_lock((a1 + 1224));
    v8 = *(a1 + 1216);
    pthread_mutex_unlock((a1 + 1224));
    a2 = 0;
  }

  if (sub_100010524(2))
  {
    v16 = sub_10000B3E8(v8);
    sub_100010668("MachProcess::DoSIGSTOP() state = %s -- sending SIGSTOP", v16);
  }

  gettimeofday(__p, 0);
  v19.tv_sec = __p[0] + SLODWORD(__p[1]) / 1000000 + 2;
  v19.tv_nsec = 1000 * LODWORD(__p[1]) % 1000000000;
  sub_100041D00(a1, 17, &v19);
  if (a2)
  {
    if (sub_100010524(512))
    {
      sub_100010668("MachProcess::%s (remove = %d)", "DisableAllBreakpoints", 1);
    }

    sub_1000099AC((a1 + 1640), a1);
    sub_100009ABC((a1 + 1640));
    if (sub_100010524(2048))
    {
      sub_100010668("MachProcess::%s (remove = %d)", "DisableAllWatchpoints", 1);
    }

    sub_100009A34((a1 + 1664), a1);
    sub_100009ABC((a1 + 1664));
  }

  v17 = sub_1000517F4(a1 + 968, 17);
  if (a4)
  {
    *a4 = v17;
  }

  pthread_mutex_lock((a1 + 1224));
  v11 = *(a1 + 1216);
  pthread_mutex_unlock((a1 + 1224));
  return v11;
}

BOOL sub_100041C00(uint64_t a1)
{
  pthread_mutex_lock((a1 + 1224));
  v2 = *(a1 + 1216);
  pthread_mutex_unlock((a1 + 1224));
  if ((v2 - 5) > 1)
  {
    result = sub_100010524(2);
    if (!result)
    {
      return result;
    }

    sub_100010668("MachProcess::Interrupt() - process already stopped, no interrupt sent");
    return 0;
  }

  if (*(a1 + 1744))
  {
    result = sub_100010524(2);
    if (!result)
    {
      return result;
    }

    sub_100010668("MachProcess::Interrupt() - previously sent an interrupt signal %i that hasn't been received yet, interrupt aborted");
    return 0;
  }

  *(a1 + 1744) = 17;
  if (sub_100041D00(a1, 17, 0))
  {
    if (sub_100010524(2))
    {
      sub_100010668("MachProcess::Interrupt() - sent %i signal to interrupt process", *(a1 + 1744));
    }

    return 1;
  }

  else
  {
    *(a1 + 1744) = 0;
    result = sub_100010524(2);
    if (result)
    {
      sub_100010668("MachProcess::Interrupt() - failed to send %i signal to interrupt process");
      return 0;
    }
  }

  return result;
}

BOOL sub_100041D00(pid_t *a1, uint64_t a2, const timespec *a3)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::Signal (signal = %d, timeout = %p)", a2, a3);
  }

  pthread_mutex_lock((a1 + 306));
  v6 = a1[304];
  pthread_mutex_unlock((a1 + 306));
  if (kill(*a1, a2))
  {
    v17[0] = *__error();
    v17[1] = 2;
    v19 = 0;
    v20 = 0;
    __p = 0;
    sub_10001035C(v17, "kill (pid = %d, signo = %i)", v7, v8, v9, v10, v11, v12, *a1, a2);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  else
  {
    v14 = sub_100010524(2);
    if (a3 && (v6 - 5) <= 1)
    {
      if (v14)
      {
        sub_100010668("MachProcess::Signal (signal = %d, timeout = %p) waiting for signal to stop process...", a2, a3);
      }

      sub_1000128FC((a1 + 366), 2u, a3);
      pthread_mutex_lock((a1 + 306));
      v15 = a1[304];
      pthread_mutex_unlock((a1 + 306));
      if (sub_100010524(2))
      {
        v16 = sub_10000B3E8(v15);
        sub_100010668("MachProcess::Signal (signal = %d, timeout = %p) state = %s", a2, a3, v16);
      }

      return v15 - 7 < 0xFFFFFFFE;
    }

    else
    {
      if (v14)
      {
        sub_100010668("MachProcess::Signal (signal = %d, timeout = %p) not waiting...", a2, a3);
      }

      return 1;
    }
  }
}

void sub_100041E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100041E8C(unsigned int *a1, char *a2, uint64_t a3)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::SendEvent (event = %s) to pid: %d", a2, *a1);
  }

  if (!*a1)
  {
    return 0;
  }

  return sub_100041F20(a1, a2, a3);
}

BOOL sub_100041F20(unsigned int *a1, char *a2, uint64_t a3)
{
  if (a2 && *a2)
  {
    v6 = objc_alloc_init(NSAutoreleasePool);
    if (strcmp(a2, "BackgroundApplication"))
    {
      v7 = a1 + 430;
      if (*(a1 + 1743) < 0)
      {
        if (!*(a1 + 216))
        {
          goto LABEL_20;
        }

        v7 = *v7;
      }

      else if (!*(a1 + 1743))
      {
LABEL_20:
        result = sub_100010510();
        if (result)
        {
          sub_1000107A0("Tried to send event %s to a process that has no bundle ID.", a2);
          return 0;
        }

        return result;
      }

      v12 = [NSString stringWithUTF8String:v7];
      v13 = +[NSMutableDictionary dictionary];
      v14 = a1[110];
      if ((v14 & 0x10) == 0)
      {
        v15 = *a1;
        if (v15)
        {
          if ([objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:v15])
          {
            v16 = a1[110] | 8;
          }

          else
          {
            v17 = [objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:*a1];
            v16 = a1[110];
            if (v17)
            {
              v16 |= 4u;
            }
          }

          v14 = v16 | 0x10;
          a1[110] = v14;
        }
      }

      if ((v14 & 4) != 0)
      {
        if ((sub_100048358(v13, a2, a3) & 1) == 0)
        {
          goto LABEL_66;
        }

        v18 = sub_100048FB8(v12, v13, a3, 0);
        if (sub_100010524(2))
        {
          sub_100010668("Called BKSCallOpenApplicationFunction to send event.");
        }
      }

      else
      {
        v18 = 1;
      }

      v19 = a1[110];
      if ((v19 & 0x10) == 0)
      {
        v20 = *a1;
        if (v20)
        {
          if ([objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:v20])
          {
            v21 = a1[110] | 8;
          }

          else
          {
            v27 = [objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:*a1];
            v21 = a1[110];
            if (v27)
            {
              v21 |= 4u;
            }
          }

          v19 = v21 | 0x10;
          a1[110] = v19;
        }
      }

      if ((v19 & 8) == 0)
      {
        goto LABEL_57;
      }

      if (sub_1000485C8(v13, a2, a3))
      {
        v18 = sub_1000496E4(v12, v13, a3, 0);
        if (sub_100010524(2))
        {
          sub_100010668("Called FBSCallOpenApplicationFunction to send event.");
          if (v18)
          {
            goto LABEL_58;
          }

LABEL_62:
          if (sub_100010510())
          {
            sub_10001026C(a3);
            sub_1000107A0("Failed to send event: %s, error: %s.");
          }

LABEL_64:
          v28 = 0;
          goto LABEL_65;
        }

LABEL_57:
        if (v18)
        {
          goto LABEL_58;
        }

        goto LABEL_62;
      }

LABEL_66:
      [v6 drain];
      return 0;
    }

    v9 = a1[110];
    if ((v9 & 0x10) == 0)
    {
      v10 = *a1;
      if (v10)
      {
        if ([objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:v10])
        {
          v11 = a1[110] | 8;
        }

        else
        {
          v22 = [objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:*a1];
          v11 = a1[110];
          if (v22)
          {
            v11 |= 4u;
          }
        }

        v9 = v11 | 0x10;
        a1[110] = v9;
      }
    }

    if ((v9 & 4) != 0)
    {
      v23 = sub_100048FB8(0, 0, a3, 0);
      v9 = a1[110];
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v23 = 1;
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_47;
      }
    }

    v24 = *a1;
    if (v24)
    {
      if ([objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:v24])
      {
        v25 = a1[110] | 8;
      }

      else
      {
        v26 = [objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:*a1];
        v25 = a1[110];
        if (v26)
        {
          v25 |= 4u;
        }
      }

      v9 = v25 | 0x10;
      a1[110] = v9;
    }

LABEL_47:
    if ((v9 & 8) != 0)
    {
      if ((sub_1000496E4(0, 0, a3, 0) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if ((v23 & 1) == 0)
    {
LABEL_51:
      if (sub_100010510())
      {
        sub_10001026C(a3);
        sub_1000107A0("Failed to background application, error: %s.");
      }

      goto LABEL_64;
    }

LABEL_58:
    v28 = 1;
LABEL_65:
    [v6 drain];
    return v28;
  }

  if (sub_100010510())
  {
    sub_1000107A0("SendEvent called with NULL event data.");
  }

  std::string::assign((a3 + 8), "SendEvent called with empty event data");
  return 0;
}

void sub_100042300(uint64_t a1, int a2)
{
  if (sub_100010524(512))
  {
    sub_100010668("MachProcess::%s (remove = %d)", "DisableAllBreakpoints", a2);
  }

  sub_1000099AC((a1 + 1640), a1);
  if (a2)
  {

    sub_100009ABC((a1 + 1640));
  }
}

void sub_100042384(uint64_t a1, int a2)
{
  if (sub_100010524(2048))
  {
    sub_100010668("MachProcess::%s (remove = %d)", "DisableAllWatchpoints", a2);
  }

  sub_100009A34((a1 + 1664), a1);
  if (a2)
  {

    sub_100009ABC((a1 + 1664));
  }
}

uint64_t sub_100042408(unsigned int *a1)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::Detach()");
  }

  v18 = -1;
  v2 = sub_1000418AC(a1, 1, 1, &v18);
  if (sub_100010524(2))
  {
    v3 = sub_10000B3E8(v2);
    sub_100010668("MachProcess::Detach() DoSIGSTOP() returned %s", v3);
  }

  *(a1 + 105) = *(a1 + 104);
  *(a1 + 108) = 0;
  sub_100039B08((a1 + 270));
  *&v14 = sub_100050660((a1 + 242), v18);
  *(&v14 + 1) = -4294967291;
  v15 = -1;
  sub_100010C7C(a1 + 104, &v14);
  sub_100010B58(a1 + 104, 5u, 0);
  v17 = a1 + 226;
  pthread_mutex_lock((a1 + 226));
  sub_1000425EC(a1);
  pthread_mutex_unlock((a1 + 226));
  sub_10004B754((a1 + 26));
  *__error() = 0;
  v4 = *a1;
  v5 = ptrace(11, *a1, 1, 0);
  v6 = *__error();
  v14 = v6 | 0x200000000uLL;
  v15 = 0;
  v16 = 0;
  if (sub_1000104C8(2) || v6 | v5)
  {
    sub_1000103F8(&v14, "::ptrace (PT_DETACH, %u, (caddr_t)1, 0)", v7, v8, v9, v10, v11, v12, v4);
  }

  sub_10004B460((a1 + 26));
  sub_10004B254((a1 + 26));
  a1[2] = 0;
  sub_10003CE70(a1, 1);
  sub_100040BE8(a1, 8u);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(*(&v14 + 1));
  }

  return 1;
}

void sub_1000425B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10003D024(va);
  _Unwind_Resume(a1);
}

void sub_1000425CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000425EC(uint64_t a1)
{
  v2 = (a1 + 904);
  v24 = a1 + 904;
  pthread_mutex_lock((a1 + 904));
  v3 = *(a1 + 880);
  v4 = *(a1 + 888);
  if (v3 != v4)
  {
    v19 = v2;
    v5 = 0;
    do
    {
      if (sub_100010524(8))
      {
        sub_100010668("Replying to exception %u...", 625320909 * (v5 >> 3));
      }

      v6 = sub_10004FFA8((a1 + 968), *(v3 + v5 + 2052));
      if (v6 && (v7 = sub_100010EF4(a1 + 832, v6, 0)) != 0)
      {
        v8 = *(v7 + 3);
        if (v8)
        {
          sub_100011018(a1 + 832, v6);
        }
      }

      else
      {
        v8 = 0;
      }

      v20 = sub_10003BDE4(v3 + v5, a1, v8);
      v22 = 0;
      v21 = 0uLL;
      v23 = 0;
      if (sub_1000104C8(8))
      {
        sub_10001035C(&v20, "Error replying to exception", v9, v10, v11, v12, v13, v14);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(*(&v21 + 4));
      }

      v5 += 2088;
    }

    while (v3 + v5 != v4);
    v15 = *(a1 + 888);
    v16 = *(a1 + 880);
    while (v15 != v16)
    {
      v17 = *(v15 - 24);
      if (v17)
      {
        *(v15 - 16) = v17;
        operator delete(v17);
      }

      v15 -= 2088;
    }

    *(a1 + 888) = v16;
    v2 = v19;
  }

  return pthread_mutex_unlock(v2);
}

unint64_t sub_1000427C8(uint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  __p = 0;
  v31 = 0;
  v32 = 0;
  v7 = sub_1000094F8((a1 + 1640), a2, a3, &__p);
  if (!v7)
  {
    v8 = sub_10004BA0C(a1 + 104, a2, a3, a4);
    v24 = __p;
    if (__p)
    {
      goto LABEL_29;
    }

    return v8;
  }

  v8 = 0;
  v9 = 0;
  v28 = a3;
  v10 = a3 + a2;
  do
  {
    v11 = *(__p + v9);
    if ((*(v11 + 24) & 5) != 1 || *(v11 + 28) != -1 || (v12 = *(v11 + 4), !v12) || ((v13 = *(v11 + 16), v14 = v13 + v12, v10 > v13) ? (v15 = v14 > a2) : (v15 = 0), !v15))
    {
      v26 = 1882;
      v27 = "intersects";
      goto LABEL_34;
    }

    if (v10 >= v14)
    {
      v16 = v13 + v12;
    }

    else
    {
      v16 = v10;
    }

    if (v13 <= a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = *(v11 + 16);
    }

    v18 = a2 >= v13;
    v19 = a2 - v13;
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v10 <= a2)
    {
      v26 = 1883;
      v27 = "addr <= intersect_addr && intersect_addr < addr + size";
      goto LABEL_34;
    }

    if (v14 <= a2)
    {
      v26 = 1885;
      v27 = "addr < intersect_addr + intersect_size && intersect_addr + intersect_size <= addr + size";
      goto LABEL_34;
    }

    v21 = v16 - v17;
    if (v20 + v16 - v17 > v12)
    {
      v26 = 1886;
      v27 = "opcode_offset + intersect_size <= bp->ByteSize()";
LABEL_34:
      __assert_rtn("WriteMemory", "MachProcess.mm", v26, v27);
    }

    v22 = v17 - (v8 + a2);
    if (v17 > v8 + a2)
    {
      v23 = sub_10004BA0C(a1 + 104, v8 + a2, v17 - (v8 + a2), &a4[v8]);
      v8 += v23;
      if (v23 != v22)
      {
        break;
      }
    }

    memcpy((v11 + v20 + 8), &a4[v8], v21);
    v8 += v21;
    ++v9;
  }

  while (v7 != v9);
  if (v28 > v8)
  {
    v8 += sub_10004BA0C(a1 + 104, v8 + a2, v28 - v8, &a4[v8]);
  }

  v24 = __p;
  if (__p)
  {
LABEL_29:
    v31 = v24;
    operator delete(v24);
  }

  return v8;
}

void sub_1000429CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    v13 = a1;
    operator delete(__p);
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_1000429F8(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (sub_100010524(512))
  {
    sub_100010668("MachProcess::CreateBreakpoint(addr = 0x%8.8llx, length = %llu, hardware = %i)", a2, a3, a4);
  }

  v8 = sub_100009344(a1 + 1640, a2);
  if (v8)
  {
    v9 = v8;
    ++*v8;
  }

  else
  {
    v9 = sub_100009138((a1 + 1640), a2, a3, a4);
  }

  if (sub_100042AF4(a1, a2))
  {
    if (sub_100010524(512))
    {
      sub_100010668("MachProcess::CreateBreakpoint(addr = 0x%8.8llx, length = %llu) => %p", a2, a3, v9);
    }
  }

  else
  {
    if (!*v9 || (v10 = *v9 - 1, (*v9 = v10) == 0))
    {
      sub_100009278((a1 + 1640), a2);
    }

    return 0;
  }

  return v9;
}

uint64_t sub_100042AF4(uint64_t a1, unint64_t a2)
{
  if (sub_100010524(512))
  {
    sub_100010668("MachProcess::EnableBreakpoint(addr = 0x%8.8llx)", a2);
  }

  result = sub_100009344(a1 + 1640, a2);
  if (result)
  {
    v5 = result;
    if (*(result + 24))
    {
      if (sub_100010510())
      {
        sub_10001080C("MachProcess::EnableBreakpoint(addr = 0x%8.8llx): breakpoint already enabled.", a2);
      }

      return 1;
    }

    if ((*(result + 24) & 2) != 0)
    {
      v6 = sub_100051774(a1 + 968, result);
      *(v5 + 28) = v6;
      if (v6 != -1)
      {
        *(v5 + 24) |= 1u;
        return 1;
      }
    }

    v7 = *(v5 + 4);
    if (!v7)
    {
      sub_10005932C();
    }

    v8 = sub_100008E74();
    if (sub_10004B91C(a1 + 104, a2, v7, (v5 + 8)) != v7)
    {
      result = sub_100010510();
      if (!result)
      {
        return result;
      }

      sub_1000107A0("MachProcess::EnableBreakpoint(addr = 0x%8.8llx): unable to read memory at breakpoint address.");
      return 0;
    }

    if (sub_10004BA0C(a1 + 104, a2, v7, v8) != v7)
    {
      result = sub_100010510();
      if (!result)
      {
        return result;
      }

      sub_1000107A0("MachProcess::EnableBreakpoint(addr = 0x%8.8llx): unable to write breakpoint opcode to memory.");
      return 0;
    }

    if (sub_10004B91C(a1 + 104, a2, v7, __s2) == v7)
    {
      if (!memcmp(v8, __s2, v7))
      {
        *(v5 + 24) |= 1u;
        sub_1000514F4(a1 + 968);
        if (sub_100010524(512))
        {
          sub_100010668("MachProcess::EnableBreakpoint(addr = 0x%8.8llx) : SUCCESS.", a2);
        }

        return 1;
      }

      if (!sub_100010510())
      {
        return 0;
      }

      v9 = "MachProcess::EnableBreakpoint(addr = 0x%8.8llx): breakpoint opcode verification failed.";
    }

    else
    {
      if (!sub_100010510())
      {
        return 0;
      }

      v9 = "MachProcess::EnableBreakpoint(addr = 0x%8.8llx): unable to read memory to verify breakpoint opcode.";
    }

    sub_1000107A0(v9, a2);
    return 0;
  }

  return result;
}

uint64_t **sub_100042CCC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  if (sub_100010524(2048))
  {
    sub_100010668("MachProcess::CreateWatchpoint(addr = 0x%8.8llx, length = %llu, flags = 0x%8.8x, hardware = %i)", a2, a3, a4, a5);
  }

  if (sub_100009344(a1 + 1664, a2))
  {
    return 0;
  }

  v10 = sub_100009138((a1 + 1664), a2, a3, a5);
  *(v10 + 24) = (8 * (a4 & 3)) | v10[3] & 0xE7 | 4;
  v11 = sub_100042DDC(a1, a2);
  v12 = sub_100010524(2048);
  if (!v11)
  {
    if (v12)
    {
      sub_100010668("MachProcess::CreateWatchpoint(addr = 0x%8.8llx, length = %llu) => FAILED", a2, a3);
    }

    sub_100009278((a1 + 1664), a2);
    return 0;
  }

  if (v12)
  {
    sub_100010668("MachProcess::CreateWatchpoint(addr = 0x%8.8llx, length = %llu) => %p", a2, a3, v10);
  }

  return v10;
}

uint64_t sub_100042DDC(uint64_t a1, unint64_t a2)
{
  if (sub_100010524(2048))
  {
    sub_100010668("MachProcess::EnableWatchpoint(addr = 0x%8.8llx)", a2);
  }

  result = sub_100009344(a1 + 1664, a2);
  if (result)
  {
    v5 = result;
    if (*(result + 24))
    {
      v7 = *(result + 16);
      if (sub_100010510())
      {
        sub_10001080C("MachProcess::EnableWatchpoint(addr = 0x%8.8llx): watchpoint already enabled.", v7);
      }
    }

    else
    {
      v6 = sub_100051748(a1 + 968, result);
      *(v5 + 28) = v6;
      if (v6 == -1)
      {
        return 0;
      }

      *(v5 + 24) |= 1u;
    }

    return 1;
  }

  return result;
}

BOOL sub_100042E90(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_100009344(a1 + 1640, a2);
  if (!v6)
  {
    result = sub_100010510();
    if (!result)
    {
      return result;
    }

    sub_1000107A0("MachProcess::DisableBreakpoint(addr = 0x%8.8llx, remove = %d) invalid breakpoint address", a2, a3);
    return 0;
  }

  v7 = v6;
  if ((*(v6 + 24) & 1) == 0)
  {
    if (a3)
    {
      if (!*v6 || (v8 = *v6 - 1, (*v6 = v8) == 0))
      {
        sub_1000514F4(a1 + 968);
        sub_100009278((a1 + 1640), a2);
        return 1;
      }
    }

    return 1;
  }

  if (a3)
  {
    if (*v6)
    {
      v10 = *v6 - 1;
      *v6 = v10;
      if (v10)
      {
        return 1;
      }
    }
  }

  if (sub_100010524(513))
  {
    sub_100010668("MachProcess::DisableBreakpoint(addr = 0x%8.8llx, remove = %d)", a2, a3);
  }

  if (*(v7 + 28) == -1)
  {
    v11 = *(v7 + 4);
    if (!v11)
    {
      sub_100059358();
    }

    v12 = sub_100008E74();
    __chkstk_darwin(v12);
    if (sub_10004B91C(a1 + 104, a2, v11, &v17 - ((v11 + 15) & 0x1FFFFFFF0)) != v11)
    {
      if (sub_100010510())
      {
        sub_10001080C("MachProcess::DisableBreakpoint: unable to read memory at 0x%8.8llx", a2);
      }

      return 0;
    }

    if (*(v7 + 24))
    {
      if (!memcmp(&v17 - ((v11 + 15) & 0x1FFFFFFF0), v12, v11))
      {
        v13 = sub_10004BA0C(a1 + 104, a2, v11, (v7 + 8));
        if (v13 != v11)
        {
          if (sub_100010510())
          {
            sub_1000107A0("MachProcess::DisableBreakpoint(addr = 0x%8.8llx, remove = %d) memory write failed when restoring original opcode", a2, a3);
          }

          return 0;
        }

        v14 = 1;
LABEL_32:
        __chkstk_darwin(v13);
        if (sub_10004B91C(a1 + 104, a2, v11, &v17 - ((v11 + 15) & 0x1FFFFFFF0)) == v11)
        {
          if (!memcmp((v7 + 8), &v17 - ((v11 + 15) & 0x1FFFFFFF0), v11))
          {
            *(v7 + 28) = -1;
            *(v7 + 24) &= ~1u;
            if (a3)
            {
              if (!*v7 || (v16 = *v7 - 1, (*v7 = v16) == 0))
              {
                sub_1000514F4(a1 + 968);
                sub_100009278((a1 + 1640), a2);
              }
            }

            if (sub_100010524(512))
            {
              sub_100010668("MachProcess::DisableBreakpoint(addr = 0x%8.8llx, remove = %d) => success", a2, a3);
            }

            return 1;
          }

          v15 = sub_100010510();
          if (v14)
          {
            if (v15)
            {
              sub_1000107A0("MachProcess::DisableBreakpoint(addr = 0x%8.8llx, remove = %d) : failed to restore original opcode");
            }
          }

          else if (v15)
          {
            sub_1000107A0("MachProcess::DisableBreakpoint(addr = 0x%8.8llx, remove = %d) : opcode changed");
          }
        }

        else if (sub_100010510())
        {
          sub_10001080C("MachProcess::DisableBreakpoint: unable to disable breakpoint 0x%8.8llx", a2);
        }

        return 0;
      }

      v13 = sub_100010510();
      if (v13)
      {
        sub_10001080C("MachProcess::DisableBreakpoint(addr = 0x%8.8llx, remove = %d) expected a breakpoint opcode but didn't find one.", a2, a3);
      }
    }

    else
    {
      v13 = sub_100010524(513);
      if (v13)
      {
        sub_100010668("MachProcess::DisableBreakpoint(addr = 0x%8.8llx, remove = %d) is not enabled", a2, a3);
      }
    }

    v14 = 0;
    goto LABEL_32;
  }

  result = sub_10005177C(a1 + 968, v7);
  if (result)
  {
    *(v7 + 28) = -1;
    *(v7 + 24) &= ~1u;
    if (a3)
    {
      sub_1000514F4(a1 + 968);
      sub_100009278((a1 + 1640), a2);
    }

    if (sub_100010524(512))
    {
      sub_100010668("MachProcess::DisableBreakpoint(addr = 0x%8.8llx, remove = %d) (hardware) => success", a2, a3);
    }

    return 1;
  }

  return result;
}

BOOL sub_100043274(uint64_t a1, unint64_t a2, int a3)
{
  if (sub_100010524(2048))
  {
    sub_100010668("MachProcess::%s(addr = 0x%8.8llx, remove = %d)", "DisableWatchpoint", a2, a3);
  }

  v6 = sub_100009344(a1 + 1664, a2);
  if (!v6)
  {
    result = sub_100010510();
    if (!result)
    {
      return result;
    }

    sub_1000107A0("MachProcess::DisableWatchpoint(addr = 0x%8.8llx, remove = %d) invalid watchpoint ID", a2, a3);
    return 0;
  }

  v7 = v6;
  if (!a3 || !*v6 || (v8 = *v6 - 1, (*v6 = v8) == 0))
  {
    v9 = *(v6 + 16);
    if (sub_100010524(2048))
    {
      sub_100010668("MachProcess::DisableWatchpoint(addr = 0x%8.8llx, remove = %d)", v9, a3);
    }

    if (*(v7 + 28) != -1)
    {
      result = sub_100051750(a1 + 968, v7);
      if (!result)
      {
        return result;
      }

      *(v7 + 28) = -1;
      *(v7 + 24) &= ~1u;
      if (a3)
      {
        sub_100009278((a1 + 1664), v9);
      }

      if (sub_100010524(2048))
      {
        sub_100010668("MachProcess::Disablewatchpoint(addr = 0x%8.8llx, remove = %d) (hardware) => success", v9, a3);
        return 1;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000433B4(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 904);
  pthread_mutex_lock((a1 + 904));
  if (*(a1 + 880) == *(a1 + 888))
  {
    sub_10004B3A4(a1 + 104);
  }

  if (sub_100010524(8))
  {
    sub_100010668("MachProcess::ExceptionMessageReceived()");
  }

  v5 = *(a1 + 888);
  if (v5 >= *(a1 + 896))
  {
    v9 = sub_10004AEFC((a1 + 880), a2);
  }

  else
  {
    memcpy(*(a1 + 888), a2, 0x800uLL);
    v6 = *(a2 + 2056);
    *(v5 + 2048) = *(a2 + 2048);
    *(v5 + 2056) = v6;
    *(v5 + 2064) = 0;
    *(v5 + 2080) = 0;
    *(v5 + 2072) = 0;
    v7 = *(a2 + 2064);
    v8 = *(a2 + 2072);
    if (v8 != v7)
    {
      if (((v8 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100038A60();
    }

    v9 = (v5 + 2088);
    *(a1 + 888) = v5 + 2088;
  }

  *(a1 + 888) = v9;
  return pthread_mutex_unlock(v4);
}

void sub_1000434E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = *v5;
  if (*v5)
  {
    *(v4 + 2072) = v7;
    operator delete(v7);
  }

  *(v3 + 888) = v4;
  sub_10003D024(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004351C(int *a1)
{
  v2 = (a1 + 226);
  v30 = (a1 + 226);
  pthread_mutex_lock((a1 + 226));
  if (sub_100010524(8))
  {
    sub_100010668("%s: %llu exception messages.", "task_t MachProcess::ExceptionMessageBundleComplete()", 0x77A9AF922545A3CDLL * ((*(a1 + 111) - *(a1 + 110)) >> 3));
  }

  v3 = *(a1 + 110);
  v4 = *(a1 + 111);
  if (v3 == v4)
  {
    if (sub_100010524(8))
    {
      sub_100010668("%s empty exception messages bundle (%llu exceptions).", "task_t MachProcess::ExceptionMessageBundleComplete()", 0x77A9AF922545A3CDLL * ((*(a1 + 111) - *(a1 + 110)) >> 3));
    }

    v20 = a1[30];
    goto LABEL_73;
  }

  *(a1 + 1752) = 0;
  v5 = a1[30];
  if (!*a1)
  {
    goto LABEL_59;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0x77A9AF922545A3CDLL * ((v4 - v3) >> 3);
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = (v3 + 2072);
  while (*(v9 - 6) != v5)
  {
LABEL_16:
    v9 += 261;
    if (!--v8)
    {
      goto LABEL_37;
    }
  }

  ++v7;
  if (*(v9 - 4) != 5 || (v14 = *(v9 - 1), *v9 - v14 != 16) || *v14 != 65539)
  {
    v10 = 0;
LABEL_9:
    v11 = a1[436];
    if (v11)
    {
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v6 |= v13;
    goto LABEL_16;
  }

  v10 = *(v14 + 8);
  if (v10 != 5)
  {
    goto LABEL_9;
  }

  *__p = 0u;
  v34 = 0u;
  v15 = sub_10004D838((a1 + 26), __p);
  if (SHIBYTE(v34) < 0)
  {
    v16 = v15;
    operator delete(__p[1]);
    v15 = v16;
  }

  if (v15 != -1)
  {
    v17 = v15 + 4;
    LODWORD(v29.tv_sec) = 0;
    if (sub_10004B91C((a1 + 26), v15 + 4, 4uLL, &v29) == 4)
    {
      if (!LODWORD(v29.tv_sec))
      {
        *(a1 + 1752) = 1;
        *__p = 0u;
        v34 = 0u;
        v18 = a1[30];
        v19 = sub_10004CDBC((a1 + 26), __p, 1);
        if (v18 != v19 && sub_100010524(2))
        {
          sub_100010668("exec: task changed from 0x%4.4x to 0x%4.4x", v18, v19);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[1]);
        }
      }
    }

    else if (sub_100010510())
    {
      sub_100010544(0, "error: failed to read all_image_infos.infoArrayCount from 0x%8.8llx", v17);
    }
  }

LABEL_37:
  if (*(a1 + 1752) == 1)
  {
    v21 = *a1;
    v34 = 0u;
    v35 = 0u;
    *__p = 0u;
    v29.tv_sec = 12;
    if (sysctlnametomib("sysctl.proc_cputype", __p, &v29))
    {
      v22 = 0;
    }

    else
    {
      tv_sec = v29.tv_sec;
      *(__p + v29.tv_sec) = v21;
      v29.tv_sec = tv_sec + 1;
      v32 = 0;
      v31 = 4;
      if (sysctl(__p, tv_sec + 1, &v32, &v31, 0, 0))
      {
        v22 = 0;
      }

      else
      {
        v22 = v32;
      }
    }

    if (a1[1] != v22)
    {
      if (sub_100010510())
      {
        sub_100010544(0, "arch changed from 0x%8.8x to 0x%8.8x", a1[1], v22);
      }

      a1[1] = v22;
      sub_100008B88(v22, 0);
    }

    sub_1000509C8(a1 + 121);
    sub_100039B08((a1 + 270));
    sub_1000097EC(a1 + 205);
    sub_10004DB7C((a1 + 26));
  }

  if (!a1[436])
  {
    goto LABEL_59;
  }

  if ((v6 & 1) == 0)
  {
    if (sub_100010524(2))
    {
      sub_100010668("MachProcess::ExceptionMessageBundleComplete(): didn't get signal %i after MachProcess::Interrupt()", a1[436]);
    }

    goto LABEL_59;
  }

  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::ExceptionMessageBundleComplete(): process successfully interrupted with signal %i", a1[436]);
  }

  a1[436] = 0;
  if (!a1[437])
  {
LABEL_59:
    v24 = 0;
    goto LABEL_60;
  }

  v24 = v7 == 1;
  if (v7 == 1 && sub_100010524(2))
  {
    sub_100010668("MachProcess::ExceptionMessageBundleComplete(): auto resuming due to unhandled interrupt signal %i", a1[437]);
  }

  a1[437] = 0;
LABEL_60:
  sub_1000513E4((a1 + 242), a1);
  sub_100039B08((a1 + 270));
  v25 = *(a1 + 110);
  if (*(a1 + 111) != v25)
  {
    v26 = 0;
    v27 = 2048;
    do
    {
      if (*(v25 + v27) == v5)
      {
        sub_1000508BC((a1 + 242), v25 + v27);
      }

      if (sub_1000104C8(8))
      {
        sub_10003B7EC((*(a1 + 110) + v27 - 2048));
      }

      ++v26;
      v25 = *(a1 + 110);
      v27 += 2088;
    }

    while (v26 < 0x77A9AF922545A3CDLL * ((*(a1 + 111) - v25) >> 3));
  }

  if (sub_1000104C8(4))
  {
    sub_10005105C((a1 + 242));
  }

  LOBYTE(v31) = 0;
  if ((v24 | !sub_100051460((a1 + 242), &v31)))
  {
    sub_100041518(a1);
  }

  else
  {
    gettimeofday(__p, 0);
    v29.tv_sec = __p[0] + SLODWORD(__p[1]) / 1000000 + 1;
    v29.tv_nsec = 1000 * LODWORD(__p[1]) % 1000000000;
    sub_100012980((a1 + 322), 1u, &v29);
    sub_100040BE8(a1, 4u);
  }

  v2 = v30;
  v20 = a1[30];
  if (v30)
  {
LABEL_73:
    pthread_mutex_unlock(v2);
  }

  return v20;
}

void sub_100043A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, pthread_mutex_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_10003D024(&a14);
  _Unwind_Resume(a1);
}

void sub_100043AEC(uint64_t a1, const char *a2)
{
  if (a2 && *a2)
  {
    if (sub_100010524(2))
    {
      sub_100010668("MachProcess::%s(%s)", "SetExitInfo", a2);
    }

    std::string::assign((a1 + 80), a2);
  }

  else
  {
    if (sub_100010524(2))
    {
      sub_100010668("MachProcess::%s(NULL)", "SetExitInfo");
    }

    if (*(a1 + 103) < 0)
    {
      **(a1 + 80) = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      *(a1 + 80) = 0;
      *(a1 + 103) = 0;
    }
  }
}

uint64_t sub_100043BB4(uint64_t a1, const char *a2, std::string::size_type a3)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::%s (<%llu> %s) ...", "AppendSTDOUT", a3, a2);
  }

  pthread_mutex_lock((a1 + 456));
  std::string::append((a1 + 520), a2, a3);
  sub_10001283C((a1 + 1288), 8);
  sub_100012A00(a1 + 1288, 8, 0);
  return pthread_mutex_unlock((a1 + 456));
}

void sub_100043C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10003D024(va);
  _Unwind_Resume(a1);
}

size_t sub_100043C70(uint64_t a1, void *a2, size_t a3)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::%s (&%p[%llu]) ...", "GetAvailableSTDOUT", a2, a3);
  }

  pthread_mutex_lock((a1 + 456));
  v6 = *(a1 + 543);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = *(a1 + 543);
    if (*(a1 + 543))
    {
      goto LABEL_5;
    }

LABEL_10:
    a3 = 0;
    goto LABEL_17;
  }

  v7 = *(a1 + 528);
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = (a1 + 520);
  if (v7 <= a3)
  {
    if ((v6 & 0x80000000) != 0)
    {
      v8 = *v8;
    }

    memcpy(a2, v8, v7);
    if (*(a1 + 543) < 0)
    {
      **(a1 + 520) = 0;
      *(a1 + 528) = 0;
    }

    else
    {
      *(a1 + 520) = 0;
      *(a1 + 543) = 0;
    }

    a3 = v7;
  }

  else
  {
    v9 = (a1 + 520);
    if ((v6 & 0x80000000) != 0)
    {
      v9 = *v8;
    }

    memcpy(a2, v9, a3);
    std::string::erase((a1 + 520), 0, a3);
  }

LABEL_17:
  pthread_mutex_unlock((a1 + 456));
  return a3;
}

void sub_100043D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10003D024(va);
  _Unwind_Resume(a1);
}

void sub_100044584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  sub_10003D168(v51 - 80);
  _Unwind_Resume(a1);
}

pthread_mutex_t *sub_10004479C(uint64_t a1, const char *a2)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::%s (%s) ...", "SignalAsyncProfileData", a2);
  }

  v9 = (a1 + 568);
  pthread_mutex_lock((a1 + 568));
  v4 = strlen(a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100048CE0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, a2, v4);
  }

  *(&__dst + v5) = 0;
  sub_100044904(a1 + 632, &__dst);
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  sub_10001283C((a1 + 1288), 16);
  sub_100012A00(a1 + 1288, 16, 0);
  result = v9;
  if (v9)
  {
    return pthread_mutex_unlock(v9);
  }

  return result;
}

void sub_1000448D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, pthread_mutex_t *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10003D024(&a17);
  _Unwind_Resume(a1);
}

void sub_100044904(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100038A60();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10003888C();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

size_t sub_100044A4C(uint64_t a1, void *a2, size_t a3)
{
  if (sub_100010524(2))
  {
    sub_100010668("MachProcess::%s (&%p[%llu]) ...", "GetAsyncProfileData", a2, a3);
  }

  pthread_mutex_lock((a1 + 568));
  v6 = *(a1 + 632);
  if (v6 == *(a1 + 640))
  {
    goto LABEL_11;
  }

  v7 = v6[23];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v6[23];
    if (v6[23])
    {
      goto LABEL_6;
    }

LABEL_11:
    a3 = 0;
    goto LABEL_24;
  }

  v8 = *(v6 + 1);
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v8 <= a3)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v6 = *v6;
    }

    memcpy(a2, v6, v8);
    v9 = *(a1 + 632);
    v10 = *(a1 + 640);
    if ((v9 + 24) != v10)
    {
      do
      {
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        *v9 = *(v9 + 24);
        *(v9 + 16) = *(v9 + 40);
        *(v9 + 47) = 0;
        v11 = (v9 + 48);
        *(v9 + 24) = 0;
        v9 += 24;
      }

      while (v11 != v10);
      v10 = *(a1 + 640);
    }

    while (v10 != v9)
    {
      v12 = *(v10 - 1);
      v10 -= 3;
      if (v12 < 0)
      {
        operator delete(*v10);
      }
    }

    *(a1 + 640) = v9;
    a3 = v8;
  }

  else
  {
    if ((v7 & 0x80000000) != 0)
    {
      v6 = *v6;
    }

    memcpy(a2, v6, a3);
    std::string::erase(*(a1 + 632), 0, a3);
  }

LABEL_24:
  pthread_mutex_unlock((a1 + 568));
  return a3;
}

void sub_100044BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10003D024(va);
  _Unwind_Resume(a1);
}

void sub_100044BD8(pid_t *a1, pid_t a2, int8x16_t **a3, char *a4, size_t a5)
{
  sub_10003CE70(a1, 0);
  if (!a2)
  {
    return;
  }

  *__p = 0u;
  v28 = 0u;
  if (getpgid(a2) < 0)
  {
    LODWORD(__p[0]) = *__error();
    HIDWORD(__p[0]) = 2;
    if (SHIBYTE(v28) < 0)
    {
      *__p[1] = 0;
      *&v28 = 0;
    }

    else
    {
      LOBYTE(__p[1]) = 0;
      HIBYTE(v28) = 0;
    }

    v17 = sub_10001026C(__p);
    v18 = "No such process";
    if (v17)
    {
      v18 = v17;
    }

    snprintf(a4, a5, "%s", v18);
    if (sub_100010510())
    {
      sub_1000107A0("MachProcess::AttachForDebug pid %d does not exist", a2);
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_54;
  }

  sub_100040BE8(a1, 2u);
  *a1 = a2;
  if (!sub_10004D0B8((a1 + 26), a3, __p))
  {
    v14 = sub_10001026C(__p);
    v15 = "unable to start the exception thread";
    if (v14)
    {
      v15 = v14;
    }

    snprintf(a4, a5, "%s", v15);
    if (sub_100010524(2))
    {
      sub_100010668("error: failed to attach to pid %d", a2);
    }

    if (sub_100010510())
    {
      v16 = getpid();
      sub_1000107A0("[LaunchAttach] END (%d) MachProcess::AttachForDebug failed to start exception thread attaching to pid %i: %s", v16, a2, a4);
    }

    *a1 = 0;
    if (SHIBYTE(v28) < 0)
    {
      goto LABEL_54;
    }

    return;
  }

  if (sub_100010510())
  {
    v10 = getpid();
    sub_100010544(0, "[LaunchAttach] (%d) About to ptrace(PT_ATTACHEXC, %d)...", v10, a2);
  }

  *__error() = 0;
  v11 = ptrace(14, a2, 0, 0);
  v12 = *__error();
  if (sub_100010510())
  {
    v13 = getpid();
    sub_100010544(0, "[LaunchAttach] (%d) Completed ptrace(PT_ATTACHEXC, %d) == %d", v13, a2, v11);
  }

  if (!v11)
  {
    __p[0] = 0;
    if (SHIBYTE(v28) < 0)
    {
      *__p[1] = 0;
      *&v28 = 0;
      if (LODWORD(__p[0]))
      {
        goto LABEL_35;
      }
    }

    else
    {
      LOBYTE(__p[1]) = 0;
      HIBYTE(v28) = 0;
    }

LABEL_45:
    a1[110] |= 1u;
    usleep(0x3D090u);
    if (sub_100010510())
    {
      v24 = getpid();
      sub_100010544(0, "[LaunchAttach] (%d) Done napping after ptrace(PT_ATTACHEXC)'ing", v24);
    }

    if (sub_100010524(2))
    {
      sub_100010668("successfully attached to pid %d", a2);
    }

    if (SHIBYTE(v28) < 0)
    {
      goto LABEL_54;
    }

    return;
  }

  __p[0] = (v12 | 0x100000000);
  if (SHIBYTE(v28) < 0)
  {
    *__p[1] = 0;
    *&v28 = 0;
  }

  else
  {
    LOBYTE(__p[1]) = 0;
    HIBYTE(v28) = 0;
  }

  if (sub_100010510())
  {
    v19 = sub_10001026C(__p);
    sub_1000107A0("MachProcess::AttachForDebug failed to ptrace(PT_ATTACHEXC) pid %i: %s", a2, v19);
  }

  if (!LODWORD(__p[0]))
  {
    goto LABEL_45;
  }

LABEL_35:
  v20 = sub_10001026C(__p);
  snprintf(a4, a5, "%s", v20);
  if (sub_100010510())
  {
    v21 = getpid();
    sub_1000107A0("[LaunchAttach] (%d) MachProcess::AttachForDebug error: failed to attach to pid %d", v21, a2);
  }

  *v30 = 0xE00000001;
  v31 = 1;
  v32 = a2;
  v29 = 648;
  if (!sysctl(v30, 4u, buffer, &v29, 0, 0) && (v35 & 8) != 0)
  {
    if (proc_pidinfo(a2, 13, 0, buffer, 64) == 64)
    {
      v22 = v34;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == getpid())
    {
      v23 = sub_10001026C(__p);
      snprintf(a4, a5, "%s - Failed to attach to pid %d, AttachForDebug() unable to ptrace(PT_ATTACHEXC)", v23, *a1);
    }

    else
    {
      v25 = sub_10001026C(__p);
      snprintf(a4, a5, "%s - process %d is already being debugged by pid %d", v25, a2, v22);
      if (sub_100010510())
      {
        v26 = getpid();
        sub_1000107A0("[LaunchAttach] (%d) MachProcess::AttachForDebug pid %d is already being debugged by pid %d", v26, a2, v22);
      }
    }
  }

  if (SHIBYTE(v28) < 0)
  {
LABEL_54:
    operator delete(__p[1]);
  }
}

void sub_100045070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000450A0(int a1)
{
  *v3 = 0xE00000001;
  v4 = 1;
  v5 = a1;
  v2 = 648;
  return !sysctl(v3, 4u, v6, &v2, 0, 0) && (v6[33] & 8) != 0;
}

uint64_t sub_100045140(int a1)
{
  if (proc_pidinfo(a1, 13, 0, buffer, 64) == 64)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000451D0(void *a1, void *a2, void *a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  v7 = +[NSProcessInfo processInfo];
  if (v7)
  {
    objc_msgSend_operatingSystemVersion(v7);
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = 0;
  }

LABEL_4:
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  [v6 drain];
  return 1;
}

const __CFString *sub_100045278(const char *a1, int a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = strlen(a1);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100048CE0();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v46 = v7;
  if (v7)
  {
    memcpy(&__dst, a1, v7);
  }

  *(&__dst + v8) = 0;
  sub_10004586C(v47, &__dst);
  if (v46 < 0)
  {
    operator delete(__dst);
  }

  v10 = v48;
  if ((v48 & 0x80u) != 0)
  {
    v10 = v47[1];
  }

  if (!v10)
  {
    if (sub_100010524(2))
    {
      sub_100010668("MachProcess::PrepareForAttach(): path '%s' doesn't contain .app, we can't tell springboard to wait for launch...", a1);
    }

LABEL_43:
    v9 = 0;
    if (v48 < 0)
    {
      goto LABEL_57;
    }

    return v9;
  }

  if (a2 != 5 && a2)
  {
    goto LABEL_43;
  }

  if ((v48 & 0x80u) == 0)
  {
    v11 = v47;
  }

  else
  {
    v11 = v47[0];
  }

  v9 = sub_100045C04(v11, a4);
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  sub_10003914C(v9, v43);
  if (sub_100010524(2))
  {
    v12 = v47;
    if ((v48 & 0x80u) != 0)
    {
      v12 = v47[0];
    }

    v13 = v43;
    if (v44 < 0)
    {
      v13 = v43[0];
    }

    sub_100010668("CopyBundleIDForPath (%s, err_str) returned @%s", v12, v13);
  }

  if (v9)
  {
    v14 = objc_alloc_init(NSAutoreleasePool);
    v15 = [+[NSFileManager defaultManager](NSFileManager stringWithFileSystemRepresentation:"stringWithFileSystemRepresentation:length:" length:"/dev/null", 9];
    v16 = +[NSMutableDictionary dictionary];
    v17 = +[NSMutableDictionary dictionary];
    if (sub_100010524(2))
    {
      v18 = v43;
      if (v44 < 0)
      {
        v18 = v43[0];
      }

      sub_100010668("Calling BKSSystemService openApplication: @%s,options include stdio path: %s, BKSDebugOptionKeyDebugOnNextLaunch & BKSDebugOptionKeyWaitForDebugger)", v18, "/dev/null");
    }

    [v16 setObject:v15 forKey:FBSDebugOptionKeyStandardOutPath];
    [v16 setObject:v15 forKey:FBSDebugOptionKeyStandardErrorPath];
    v19 = [NSNumber numberWithBool:1];
    [v16 setObject:v19 forKey:FBSDebugOptionKeyWaitForDebugger];
    v20 = [NSNumber numberWithBool:1];
    [v16 setObject:v20 forKey:FBSDebugOptionKeyDebugOnNextLaunch];
    [v17 setObject:v16 forKey:FBSOpenApplicationOptionKeyDebuggingOptions];
    v21 = objc_alloc_init(FBSSystemService);
    v22 = [v21 createClientPort];
    v37 = 0;
    v38 = &v37;
    v39 = 0x3052000000;
    v40 = sub_100045E90;
    v41 = sub_100045EA0;
    v42 = dispatch_semaphore_create(0);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    if (sub_100010510())
    {
      v23 = getpid();
      v24 = v43;
      if (v44 < 0)
      {
        v24 = v43[0];
      }

      sub_100010544(0, "[LaunchAttach] START (%d) requesting FBS launch of app with bundle ID '%s'", v23, v24);
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3254779904;
    v32[2] = sub_100045EAC;
    v32[3] = &unk_10006D5D8;
    v32[4] = v21;
    v32[5] = &v33;
    v32[6] = &v37;
    [v21 openApplication:v9 options:v17 clientPort:v22 withResult:v32];
    v25 = dispatch_time(0, 9000000000);
    if (dispatch_semaphore_wait(v38[5], v25))
    {
      if (sub_100010510())
      {
        v26 = v43;
        if (v44 < 0)
        {
          v26 = v43[0];
        }

        sub_1000107A0("timed out trying to launch %s.", v26);
      }

      std::string::assign((a4 + 8), "debugserver timed out waiting for openApplication to complete.");
      *a4 = 111;
      if (*(a4 + 31) < 0)
      {
        **(a4 + 8) = 0;
        *(a4 + 16) = 0;
      }

      else
      {
        *(a4 + 8) = 0;
        *(a4 + 31) = 0;
      }
    }

    else
    {
      v27 = v34[3];
      if (v27)
      {
        __p[0] = 0;
        __p[1] = 0;
        v31 = 0;
        sub_100045FB8(v27, __p, a4);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (sub_100010510())
        {
          v28 = v43;
          if (v44 < 0)
          {
            v28 = v43[0];
          }

          sub_1000107A0("unable to launch the application with CFBundleIdentifier '%s' bks_error = %ld", v28, v34[3]);
        }
      }
    }

    dispatch_release(v38[5]);
    [v14 drain];
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    if (sub_100010524(2))
    {
      sub_100010668("Successfully set DebugOnNextLaunch.");
    }
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
    if ((v48 & 0x80000000) == 0)
    {
      return v9;
    }

    goto LABEL_57;
  }

  if (v48 < 0)
  {
LABEL_57:
    operator delete(v47[0]);
  }

  return v9;
}

void sub_1000457C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  if (*(v29 - 113) < 0)
  {
    operator delete(*(v29 - 136));
  }

  if (*(v29 - 65) < 0)
  {
    operator delete(*(v29 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_10004586C(uint64_t *__return_ptr a1@<X8>, void **__src@<X0>)
{
  v2 = __src;
  v4 = *(__src + 23);
  v5 = *(__src + 23);
  v6 = __src;
  v7 = v5;
  if (v4 < 0)
  {
    v6 = *__src;
    v7 = __src[1];
    if (!v7)
    {
      goto LABEL_66;
    }
  }

  else if (!*(__src + 23))
  {
    goto LABEL_66;
  }

  v8 = &v7[v6];
  v9 = v6;
  v10 = &v7[v6];
  while (2)
  {
    for (i = (v9 + 3); ; i = (i + 1))
    {
      v9 = (i - 2);
      if (*(i - 3) != 46)
      {
        if (v9 == v8)
        {
          goto LABEL_18;
        }

        continue;
      }

      if (v9 == v8)
      {
        goto LABEL_18;
      }

      if (*v9 == 97)
      {
        if ((i - 1) == v8)
        {
          goto LABEL_18;
        }

        if (*(i - 1) == 112)
        {
          break;
        }
      }
    }

    if (i != v8)
    {
      if (*i == 112)
      {
        v10 = i - 3;
      }

      continue;
    }

    break;
  }

LABEL_18:
  if (v10 == v8)
  {
    goto LABEL_66;
  }

  v12 = (v10 - v6);
  if (v12 == -1)
  {
    goto LABEL_66;
  }

  if (v4 < 0)
  {
    if (v12 != __src[1] - 4)
    {
      goto LABEL_32;
    }

    v2 = *__src;
    v5 = __src[1];
  }

  else if (v12 != (v5 - 4))
  {
    while (1)
    {
LABEL_32:
      v14 = v2;
      if ((v5 & 0x80) != 0)
      {
        v14 = *v2;
      }

      if (v12[v14 + 4] == 47)
      {
        if (v5 < 0)
        {
          v23 = v2;
          v2 = *v2;
          v5 = v23[1];
        }

        if (v5 >= (v12 + 4))
        {
          v24 = (v12 + 4);
        }

        else
        {
          v24 = v5;
        }

        if (v24 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v24 >= 0x17)
          {
            operator new();
          }

          *(a1 + 23) = v24;
          if (v24)
          {
            memmove(a1, v2, v24);
          }

          *(a1 + v24) = 0;
          return;
        }

LABEL_82:
        sub_100048CE0();
      }

      v15 = v2;
      if (v5 < 0)
      {
        v15 = *v2;
        v5 = v2[1];
      }

      if (v5 >= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v5;
      }

      if (v16 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_82;
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v26) = v16;
      if (v16)
      {
        memmove(&__dst, v15, v16);
      }

      *(&__dst + v16) = 0;
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      *v2 = __dst;
      v2[2] = v26;
      v5 = *(v2 + 23);
      v17 = v2;
      v18 = v5;
      if (*(v2 + 23) < 0)
      {
        v17 = *v2;
        v18 = v2[1];
      }

      if (!v18)
      {
        goto LABEL_66;
      }

      v19 = &v18[v17];
      v20 = v17;
      v21 = &v18[v17];
      while (2)
      {
        for (j = v20 + 3; ; ++j)
        {
          v20 = j - 2;
          if (*(j - 3) != 46)
          {
            if (v20 == v19)
            {
              goto LABEL_64;
            }

            continue;
          }

          if (v20 == v19)
          {
            goto LABEL_64;
          }

          if (*v20 == 97)
          {
            if (j - 1 == v19)
            {
              goto LABEL_64;
            }

            if (*(j - 1) == 112)
            {
              break;
            }
          }
        }

        if (j != v19)
        {
          if (*j == 112)
          {
            v21 = j - 3;
          }

          continue;
        }

        break;
      }

LABEL_64:
      if (v21 != v19)
      {
        v12 = (v21 - v17);
        if (v12 != -1)
        {
          continue;
        }
      }

LABEL_66:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }
  }

  if (v5 >= (v12 + 4))
  {
    v13 = (v12 + 4);
  }

  else
  {
    v13 = v5;
  }

  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_82;
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v13;
  if (v13)
  {
    memmove(a1, v2, v13);
  }

  *(a1 + v13) = 0;
}

const __CFString *sub_100045C04(char *a1, uint64_t a2)
{
  sub_100038C28(v11, a1);
  v4 = sub_100038DF4(v11);
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if (sub_10003914C(v4, __p))
  {
    if (sub_100010524(2))
    {
      v5 = __p;
      if (v10 < 0)
      {
        v5 = __p[0];
      }

      sub_100010668("%s() extracted CFBundleIdentifier: %s", "CopyBundleIDForPath", v5);
    }

    CFRetain(v4);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_30:
    operator delete(__p[0]);
    goto LABEL_7;
  }

  if (stat(a1, &v8) < 0)
  {
    *a2 = *__error();
    *(a2 + 4) = 2;
    if (*(a2 + 31) < 0)
    {
      **(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      *(a2 + 8) = 0;
      *(a2 + 31) = 0;
    }

    v7 = sub_10001026C(a2);
    snprintf(__str, 0x400uLL, "%s: %s", v7, a1);
    if (__str[0])
    {
      std::string::assign((a2 + 8), __str);
    }

    else if (*(a2 + 31) < 0)
    {
      **(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      *(a2 + 8) = 0;
      *(a2 + 31) = 0;
    }

    if (sub_100010524(2))
    {
      sub_100010668("%s() error: %s", "CopyBundleIDForPath", __str);
    }
  }

  else
  {
    *a2 = 0xFFFFFFFFLL;
    if (*(a2 + 31) < 0)
    {
      **(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      *(a2 + 8) = 0;
      *(a2 + 31) = 0;
    }

    snprintf(__str, 0x400uLL, "failed to extract CFBundleIdentifier from %s", a1);
    if (__str[0])
    {
      std::string::assign((a2 + 8), __str);
    }

    else if (*(a2 + 31) < 0)
    {
      **(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      *(a2 + 8) = 0;
      *(a2 + 31) = 0;
    }

    if (sub_100010524(2))
    {
      sub_100010668("%s() error: failed to extract CFBundleIdentifier from '%s'", "CopyBundleIDForPath", a1);
    }
  }

  v4 = 0;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_30;
  }

LABEL_7:
  sub_100038C9C(v11);
  return v4;
}

intptr_t sub_100045EAC(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v3 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_100045F08(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void sub_100045F68(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void sub_100045FB8(int a1, uint64_t a2, uint64_t a3)
{
  *a3 = a1;
  *(a3 + 4) = 5;
  if (*(a3 + 31) < 0)
  {
    **(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 31) = 0;
  }

  v5 = FBSOpenApplicationErrorCodeToString();
  *(&__s.__r_.__value_.__s + 23) = 17;
  strcpy(&__s, "unknown FBS error");
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_6;
    }
  }

  else if (*(a2 + 23))
  {
LABEL_6:
    std::string::operator=(&__s, a2);
    goto LABEL_10;
  }

  if (v5)
  {
    std::string::assign(&__s, [v5 UTF8String]);
  }

LABEL_10:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    p_s = __s.__r_.__value_.__r.__words[0];
    if (!__s.__r_.__value_.__r.__words[0])
    {
      goto LABEL_15;
    }
  }

  else
  {
    p_s = &__s;
  }

  if (p_s->__r_.__value_.__s.__data_[0])
  {
    std::string::assign((a3 + 8), p_s);
    goto LABEL_17;
  }

LABEL_15:
  if ((*(a3 + 31) & 0x80000000) == 0)
  {
    *(a3 + 8) = 0;
    *(a3 + 31) = 0;
LABEL_17:
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

  **(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1000460CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000460E8(int a1, uint64_t a2, uint64_t a3)
{
  *a3 = a1;
  *(a3 + 4) = 4;
  if (*(a3 + 31) < 0)
  {
    **(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 31) = 0;
  }

  v5 = BKSOpenApplicationErrorCodeToString();
  *(&__s.__r_.__value_.__s + 23) = 17;
  strcpy(&__s, "unknown BKS error");
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_6;
    }
  }

  else if (*(a2 + 23))
  {
LABEL_6:
    std::string::operator=(&__s, a2);
    goto LABEL_10;
  }

  if (v5)
  {
    std::string::assign(&__s, [v5 UTF8String]);
  }

LABEL_10:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    p_s = __s.__r_.__value_.__r.__words[0];
    if (!__s.__r_.__value_.__r.__words[0])
    {
      goto LABEL_15;
    }
  }

  else
  {
    p_s = &__s;
  }

  if (p_s->__r_.__value_.__s.__data_[0])
  {
    std::string::assign((a3 + 8), p_s);
    goto LABEL_17;
  }

LABEL_15:
  if ((*(a3 + 31) & 0x80000000) == 0)
  {
    *(a3 + 8) = 0;
    *(a3 + 31) = 0;
LABEL_17:
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

  **(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1000461FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100046218(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == 5)
  {
    v3 = FBSSystemService_ptr;
    goto LABEL_7;
  }

  if (a2 != 4)
  {
    return 0;
  }

  v3 = BKSSystemService_ptr;
LABEL_7:
  v5 = objc_alloc_init(*v3);
  v6 = [v5 pidForApplication:a1];

  return v6;
}

void sub_100046288(void *a1, int a2, char a3, uint64_t a4)
{
  if (!a1)
  {
    return;
  }

  if (a2 != 4)
  {
    if (a2 != 5)
    {
      return;
    }

    if (a3)
    {
      goto LABEL_10;
    }

    v4 = a1;
    sub_1000462FC(a1, a4);
    goto LABEL_9;
  }

  if ((a3 & 1) == 0)
  {
    v4 = a1;
    sub_1000463F8(a1, a4);
LABEL_9:
    a1 = v4;
  }

LABEL_10:

  CFRelease(a1);
}

id sub_1000462FC(void *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithBool:1];
  [v5 setObject:v6 forKey:FBSDebugOptionKeyCancelDebugOnNextLaunch];
  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:v5 forKey:FBSOpenApplicationOptionKeyDebuggingOptions];
  if ((sub_1000496E4(a1, v7, a2, 0) & 1) == 0 && sub_100010510())
  {
    v8 = [a1 UTF8String];
    v9 = sub_10001026C(a2);
    sub_1000107A0("error trying to cancel debug on next launch for %s: %s", v8, v9);
  }

  return [v4 drain];
}

id sub_1000463F8(void *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithBool:1];
  [v5 setObject:v6 forKey:BKSDebugOptionKeyCancelDebugOnNextLaunch];
  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:v5 forKey:BKSOpenApplicationOptionKeyDebuggingOptions];
  if ((sub_100048FB8(a1, v7, a2, 0) & 1) == 0 && sub_100010510())
  {
    v8 = [a1 UTF8String];
    v9 = sub_10001026C(a2);
    sub_1000107A0("error trying to cancel debug on next launch for %s: %s", v8, v9);
  }

  return [v4 drain];
}

uint64_t sub_1000464F4(unsigned int *a1, const char *a2, const char **a3, char **a4, const char *a5, char *a6, char *a7, char *a8, unsigned __int8 a9, int a10, int a11, char *a12, int8x16_t **a13, uint64_t a14)
{
  sub_10003CE70(a1, 0);
  if (sub_100010524(2))
  {
    sub_100010668("%s( path = '%s', argv = %p, envp = %p, launch_flavor = %u, disable_aslr = %d)", "LaunchForDebug", a2, a3, a4, a10, a11);
  }

  sub_100040BE8(a1, 3u);
  if (a10 > 3)
  {
    if (a10 != 4)
    {
      v22 = a14;
      if (a10 != 5)
      {
        goto LABEL_30;
      }

      v30 = strlen(a2);
      if (v30 <= 0x7FFFFFFFFFFFFFF7)
      {
        v31 = v30;
        if (v30 >= 0x17)
        {
          operator new();
        }

        v60 = v30;
        if (v30)
        {
          memcpy(&__p, a2, v30);
        }

        *(&__p + v31) = 0;
        sub_10004586C(&__dst, &__p);
        if (v60 < 0)
        {
          operator delete(__p);
          v44 = v62;
          if ((v62 & 0x80000000) == 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v44 = v62;
          if ((v62 & 0x80000000) == 0)
          {
LABEL_58:
            if (!v44)
            {
              goto LABEL_71;
            }

            a1[110] |= 0x18u;
            p_dst = &__dst;
            goto LABEL_70;
          }
        }

        if (!*(&__dst + 1))
        {
          goto LABEL_71;
        }

        a1[110] |= 0x18u;
        p_dst = __dst;
LABEL_70:
        if (!sub_100046E60(a1, p_dst, a3, a4, a9, a11 != 0, a12, a13, a14))
        {
LABEL_71:
          result = sub_100010510();
          v23 = a3;
          if (result)
          {
            v48 = &__dst;
            if (v62 < 0)
            {
              v48 = __dst;
            }

            result = sub_100010544(0, "Failed to launch '%s' with FBS", v48);
          }

          goto LABEL_86;
        }

LABEL_79:
        v49 = 0;
        result = *a1;
        v23 = a3;
        if ((v62 & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_80;
      }

LABEL_102:
      sub_100048CE0();
    }

    v36 = strlen(a2);
    if (v36 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_102;
    }

    v37 = v36;
    if (v36 >= 0x17)
    {
      operator new();
    }

    v58 = v36;
    if (v36)
    {
      memcpy(&__src, a2, v36);
    }

    *(&__src + v37) = 0;
    sub_10004586C(&__dst, &__src);
    if (v58 < 0)
    {
      operator delete(__src);
      v46 = v62;
      if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v46 = v62;
      if ((v62 & 0x80000000) == 0)
      {
LABEL_64:
        if (!v46)
        {
          goto LABEL_82;
        }

        a1[110] |= 0x14u;
        v47 = &__dst;
        goto LABEL_78;
      }
    }

    if (!*(&__dst + 1))
    {
      goto LABEL_82;
    }

    a1[110] |= 0x14u;
    v47 = __dst;
LABEL_78:
    if (sub_100046E60(a1, v47, a3, a4, a9, a11 != 0, a12, a13, a14))
    {
      goto LABEL_79;
    }

LABEL_82:
    result = sub_100010510();
    v23 = a3;
    if (result)
    {
      v51 = &__dst;
      if (v62 < 0)
      {
        v51 = __dst;
      }

      result = sub_100010544(0, "Failed to launch '%s' with BKS", v51);
    }

LABEL_86:
    v49 = 1;
    if ((v62 & 0x80000000) == 0)
    {
LABEL_87:
      if ((v49 & 1) == 0)
      {
        return result;
      }

LABEL_88:
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_7;
    }

LABEL_80:
    v50 = result;
    operator delete(__dst);
    result = v50;
    if ((v49 & 1) == 0)
    {
      return result;
    }

    goto LABEL_88;
  }

  if (a10 == 1)
  {
    v33 = sub_100008B70();
    v34 = sub_100008B7C();
    v23 = a3;
    v35 = sub_1000472D4(a2, v33, v34, a3, a4, a5, a6, a7, a8, a9, a1, a11, a14);
    *a1 = v35;
    if (!v35)
    {
      goto LABEL_35;
    }

LABEL_7:
    std::string::assign(a1 + 1, a2);
    v25 = *v23;
    if (*v23)
    {
      v26 = v23 + 1;
      do
      {
        v28 = strlen(v25);
        if (v28 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_100048CE0();
        }

        v29 = v28;
        if (v28 >= 0x17)
        {
          operator new();
        }

        v62 = v28;
        if (v28)
        {
          memmove(&__dst, v25, v28);
        }

        *(&__dst + v29) = 0;
        sub_100044904((a1 + 12), &__dst);
        if (v62 < 0)
        {
          operator delete(__dst);
        }

        v27 = *v26++;
        v25 = v27;
      }

      while (v27);
    }

    sub_10004D0B8((a1 + 26), a13, a14);
    if (*a14)
    {
      if (!sub_10001026C(a14))
      {
        std::string::assign((a14 + 8), "unable to start the exception thread");
      }

      if (sub_100010510())
      {
        sub_100010544(0, "Could not get inferior's Mach exception port, sending ptrace PT_KILL and exiting.");
      }

      ptrace(8, *a1, 0, 0);
      result = 0;
      *a1 = 0;
      return result;
    }

    if (sub_100010524(2))
    {
      sub_100010668("MachProcess::%s()", "StartSTDIOThread");
    }

    pthread_create(a1 + 56, 0, sub_100040D88, a1);
    if (a10 == 1)
    {
      sub_100040BE8(a1, 2u);
      *__error() = 0;
      if (sub_100010510())
      {
        v38 = getpid();
        sub_100010544(0, "[LaunchAttach] (%d) About to ptrace(PT_ATTACHEXC, %d)...", v38, *a1);
      }

      v39 = ptrace(14, *a1, 0, 0);
      v40 = *__error();
      if (sub_100010510())
      {
        v41 = getpid();
        sub_100010544(0, "[LaunchAttach] (%d) Completed ptrace(PT_ATTACHEXC, %d) == %d", v41, *a1, v39);
      }

      if (v39)
      {
        sub_100040BE8(a1, 9u);
        v53[0] = v40;
        v53[1] = 2;
        v55 = 0;
        v56 = 0;
        v54 = 0;
        if (sub_100010524(2))
        {
          v42 = *a1;
          v43 = sub_10001026C(v53);
          sub_100010668("error: failed to attach to spawned pid %d (err = %i, errno = %i (%s))", v42, v39, v40, v43);
        }

        snprintf(&__dst, 0x400uLL, "Failed to attach to pid %d, LaunchForDebug() unable to ptrace(PT_ATTACHEXC)", *a1);
        if (__dst)
        {
          std::string::assign((a14 + 8), &__dst);
        }

        else if (*(a14 + 31) < 0)
        {
          **(a14 + 8) = 0;
          *(a14 + 16) = 0;
        }

        else
        {
          *(a14 + 8) = 0;
          *(a14 + 31) = 0;
        }

        if (SHIBYTE(v56) < 0)
        {
          operator delete(v54);
        }

        return *a1;
      }

      a1[110] |= 1u;
      if (sub_100010524(2))
      {
        sub_100010668("successfully spawned pid %d", *a1);
      }
    }

    *a14 = 0;
    if ((*(a14 + 31) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_37;
  }

  v22 = a14;
  if (a10 == 2)
  {
    v23 = a3;
    v24 = sub_100046D64(a2, a3, v21, a1);
    *a1 = v24;
    if (v24)
    {
      goto LABEL_7;
    }

LABEL_35:
    if (*a14)
    {
      return *a1;
    }

    *a14 = 0xFFFFFFFFLL;
    if ((*(a14 + 31) & 0x80000000) == 0)
    {
LABEL_93:
      *(a14 + 8) = 0;
      *(a14 + 31) = 0;
      return *a1;
    }

LABEL_37:
    **(a14 + 8) = 0;
    *(a14 + 16) = 0;
    return *a1;
  }

LABEL_30:
  if (sub_100010510())
  {
    sub_100010544(0, "Failed to launch: invalid launch flavor: %d", a10);
  }

  *v22 = 0xFFFFFFFFLL;
  result = 0;
  if (*(v22 + 31) < 0)
  {
    **(v22 + 8) = 0;
    *(v22 + 16) = 0;
  }

  else
  {
    *(v22 + 8) = 0;
    *(v22 + 31) = 0;
  }

  return result;
}

void sub_100046CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100046D64(const char *a1, char *const *a2, uint64_t a3, _DWORD *a4)
{
  v13 = 0;
  sub_100012484(&v12);
  v7 = sub_100012588(&v12, &v13);
  v8 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    if (!v7)
    {
      ptrace(0, 0, 0, 0);
      ptrace(12, 0, 0, 0);
      v11 = getgid();
      if (!setgid(v11))
      {
        setpgid(0, 0);
        sleep(1u);
        execv(a1, a2);
      }

      exit(127);
    }

    setpgid(v7, v7);
    if (a4)
    {
      v9 = v12;
      LODWORD(v12) = -1;
      a4[3] = v9;
      a4[4] = v9;
      a4[5] = v9;
    }
  }

  sub_100012490(&v12);
  return v8;
}

uint64_t sub_100046E60(std::string *a1, char *a2, const char **a3, char **a4, uint64_t a5, uint64_t a6, char *a7, int8x16_t **a8, uint64_t a9)
{
  v11 = a6;
  v12 = a5;
  if (sub_100010524(2))
  {
    sub_100010668("%s( '%s', argv)", "BoardServiceLaunchForDebug", a2);
  }

  sub_100040BE8(a1, 3u);
  v17 = sub_100047B34(a1, a2, a3, a4, v12, v11, a7, a9);
  LODWORD(a1->__r_.__value_.__l.__data_) = v17;
  if (v17)
  {
    std::string::assign(a1 + 1, a2);
    v18 = *a3;
    if (*a3)
    {
      v19 = a3 + 1;
      do
      {
        v21 = strlen(v18);
        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100048CE0();
        }

        v22 = v21;
        if (v21 >= 0x17)
        {
          operator new();
        }

        v29 = v21;
        if (v21)
        {
          memmove(&__dst, v18, v21);
        }

        *(&__dst + v22) = 0;
        sub_100044904(&a1[2], &__dst);
        if (v29 < 0)
        {
          operator delete(__dst);
        }

        v20 = *v19++;
        v18 = v20;
      }

      while (v20);
    }

    sub_10004D0B8(&a1[4].__r_.__value_.__l.__size_, a8, a9);
    if (*a9)
    {
      if (sub_10001026C(a9))
      {
        if (!sub_100010510())
        {
LABEL_19:
          ptrace(8, a1->__r_.__value_.__l.__data_, 0, 0);
          result = 0;
          LODWORD(a1->__r_.__value_.__l.__data_) = 0;
          return result;
        }
      }

      else
      {
        std::string::assign((a9 + 8), "unable to start the exception thread");
        if (!sub_100010510())
        {
          goto LABEL_19;
        }
      }

      v23 = getpid();
      sub_100010544(0, "[LaunchAttach] END (%d) Could not get inferior's Mach exception port, sending ptrace PT_KILL to pid %i and exiting.", v23, LODWORD(a1->__r_.__value_.__l.__data_));
      goto LABEL_19;
    }

    if (sub_100010524(2))
    {
      sub_100010668("MachProcess::%s()", "StartSTDIOThread");
    }

    pthread_create(&a1[18].__r_.__value_.__r.__words[2], 0, sub_100040D88, a1);
    sub_100040BE8(a1, 2u);
    if (sub_100010510())
    {
      v25 = getpid();
      sub_100010544(0, "[LaunchAttach] (%d) About to ptrace(PT_ATTACHEXC, %d)...", v25, LODWORD(a1->__r_.__value_.__l.__data_));
    }

    v26 = ptrace(14, a1->__r_.__value_.__l.__data_, 0, 0);
    if (sub_100010510())
    {
      v27 = getpid();
      sub_100010544(0, "[LaunchAttach] (%d) Completed ptrace(PT_ATTACHEXC, %d) == %d", v27, LODWORD(a1->__r_.__value_.__l.__data_), v26);
    }

    if (v26)
    {
      operator new();
    }

    LODWORD(a1[18].__r_.__value_.__r.__words[1]) |= 1u;
    if (sub_100010510())
    {
      sub_100010544(0, "[LaunchAttach] successfully attached to pid %d", LODWORD(a1->__r_.__value_.__l.__data_));
    }
  }

  return LODWORD(a1->__r_.__value_.__l.__data_);
}

void sub_100047280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if (a24 < 0)
    {
LABEL_5:
      operator delete(a19);
      _Unwind_Resume(a1);
    }
  }

  else if (a24 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000472D4(const char *a1, cpu_type_t a2, unsigned int a3, char *const *a4, char *const *a5, const char *a6, char *a7, char *a8, char *a9, unsigned __int8 a10, _DWORD *a11, int a12, int *a13)
{
  v18 = a9;
  v113 = a3;
  v114 = a2;
  if (sub_100010524(2))
  {
    sub_100010668("%s(path='%s', argv=%p, envp=%p, working_dir=%s, stdin=%s, stdout=%s stderr=%s, no-stdio=%i)", "PosixSpawnChildForPTraceDebugging", a1, a4, a5, a6, a7, a8, a9, a10);
  }

  v112 = 0;
  v19 = posix_spawnattr_init(&v112);
  *a13 = v19;
  a13[1] = 2;
  if (*(a13 + 31) < 0)
  {
    **(a13 + 1) = 0;
    *(a13 + 2) = 0;
    if (!*a13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(a13 + 8) = 0;
    *(a13 + 31) = 0;
    if (!v19)
    {
LABEL_7:
      if (!sub_1000104C8(2))
      {
        goto LABEL_9;
      }
    }
  }

  sub_1000103F8(a13, "::posix_spawnattr_init(&attr)", v20, v21, v22, v23, v24, v25);
LABEL_9:
  if (*a13)
  {
    return 0;
  }

  if (a12)
  {
    v26 = 398;
  }

  else
  {
    v26 = 142;
  }

  v110 = -1;
  v111 = 0;
  posix_spawnattr_setsigmask(&v112, &v111);
  posix_spawnattr_setsigdefault(&v112, &v110);
  v27 = posix_spawnattr_setflags(&v112, v26);
  *a13 = v27;
  a13[1] = 2;
  if (*(a13 + 31) < 0)
  {
    **(a13 + 1) = 0;
    *(a13 + 2) = 0;
    if (!*a13)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(a13 + 8) = 0;
    *(a13 + 31) = 0;
    if (!v27)
    {
LABEL_17:
      if (!sub_1000104C8(2))
      {
        goto LABEL_21;
      }
    }
  }

  v34 = " | _POSIX_SPAWN_DISABLE_ASLR";
  if (!a12)
  {
    v34 = &unk_10005B2EA;
  }

  sub_1000103F8(a13, "::posix_spawnattr_setflags(&attr, POSIX_SPAWN_START_SUSPENDED%s)", v28, v29, v30, v31, v32, v33, v34);
LABEL_21:
  if (*a13)
  {
    return 0;
  }

  if (v114)
  {
    v118[0] = 0;
    if (v113)
    {
      v36 = dlsym(0xFFFFFFFFFFFFFFFELL, "posix_spawnattr_setarchpref_np");
      if (v36)
      {
        v43 = v36(&v112, 1, &v114, &v113, v118);
        *a13 = v43;
        a13[1] = 1;
        if (*(a13 + 31) < 0)
        {
          **(a13 + 1) = 0;
          *(a13 + 2) = 0;
          v43 = *a13;
        }

        else
        {
          *(a13 + 8) = 0;
          *(a13 + 31) = 0;
        }

        if (!v43 && !sub_1000104C8(2))
        {
          goto LABEL_40;
        }

        sub_1000103F8(a13, "::posix_spawnattr_setarchpref_np(&attr, 1, cpu_type = 0x%8.8x, cpu_subtype = 0x%8.8x, count => %llu)", v37, v38, v39, v40, v41, v42, v114, v113, v118[0]);
        if (*a13 || v118[0] != 1)
        {
          return 0;
        }

        if (!v43)
        {
          goto LABEL_42;
        }
      }
    }

    v44 = posix_spawnattr_setbinpref_np(&v112, 1uLL, &v114, v118);
    *a13 = v44;
    a13[1] = 2;
    if (*(a13 + 31) < 0)
    {
      **(a13 + 1) = 0;
      *(a13 + 2) = 0;
      if (!*a13)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *(a13 + 8) = 0;
      *(a13 + 31) = 0;
      if (!v44)
      {
LABEL_38:
        if (sub_1000104C8(2))
        {
          goto LABEL_39;
        }

LABEL_40:
        if (*a13 || v118[0] != 1)
        {
          return 0;
        }

        goto LABEL_42;
      }
    }

LABEL_39:
    sub_1000103F8(a13, "::posix_spawnattr_setbinpref_np(&attr, 1, cpu_type = 0x%8.8x, count => %llu)", v45, v46, v47, v48, v49, v50, v114, v118[0]);
    goto LABEL_40;
  }

LABEL_42:
  sub_100012484(&v109);
  v108 = 0;
  v51 = posix_spawn_file_actions_init(&v108);
  v58 = v51;
  *a13 = v51;
  a13[1] = 2;
  if (*(a13 + 31) < 0)
  {
    **(a13 + 1) = 0;
    *(a13 + 2) = 0;
    v58 = *a13;
    if (*a13)
    {
      goto LABEL_47;
    }
  }

  else
  {
    *(a13 + 8) = 0;
    *(a13 + 31) = 0;
    if (v51)
    {
      goto LABEL_47;
    }
  }

  if (!sub_1000104C8(2))
  {
    v107 = 0;
    goto LABEL_58;
  }

LABEL_47:
  sub_1000103F8(a13, "::posix_spawn_file_actions_init(&file_actions)", v52, v53, v54, v55, v56, v57);
  v107 = 0;
  if (!v58)
  {
LABEL_58:
    v105 = -1;
    if (!a7 && !a8 && !a9)
    {
      if (a10)
      {
        a8 = 0;
        v18 = 0;
        v105 = -1;
        goto LABEL_69;
      }

      v105 = sub_1000124E4(&v109, 131074);
      if (v105)
      {
        a8 = 0;
        v18 = 0;
        goto LABEL_69;
      }

      v18 = sub_100012574(&v109);
      v105 = 0;
      a8 = v18;
      a7 = v18;
    }

    if ((a10 & 1) == 0 && a7 && *a7)
    {
LABEL_70:
      if ((a10 & 1) != 0 || !a8 || !*a8)
      {
        a8 = "/dev/null";
      }

      if ((a10 & 1) != 0 || !v18 || !*v18)
      {
        v18 = "/dev/null";
      }

      v66 = posix_spawn_file_actions_addopen(&v108, 0, a7, 0x20000, 0);
      *a13 = v66;
      a13[1] = 2;
      if (*(a13 + 31) < 0)
      {
        **(a13 + 1) = 0;
        *(a13 + 2) = 0;
        if (!*a13)
        {
          goto LABEL_82;
        }
      }

      else
      {
        *(a13 + 8) = 0;
        *(a13 + 31) = 0;
        if (!v66)
        {
LABEL_82:
          if (!sub_1000104C8(2))
          {
            goto LABEL_84;
          }
        }
      }

      sub_1000103F8(a13, "::posix_spawn_file_actions_addopen (&file_actions, filedes=STDIN_FILENO, path='%s')", v67, v68, v69, v70, v71, v72, a7);
LABEL_84:
      v73 = posix_spawn_file_actions_addopen(&v108, 1, a8, 131585, 0x1A0u);
      *a13 = v73;
      a13[1] = 2;
      if (*(a13 + 31) < 0)
      {
        **(a13 + 1) = 0;
        *(a13 + 2) = 0;
        if (!*a13)
        {
          goto LABEL_88;
        }
      }

      else
      {
        *(a13 + 8) = 0;
        *(a13 + 31) = 0;
        if (!v73)
        {
LABEL_88:
          if (!sub_1000104C8(2))
          {
            goto LABEL_90;
          }
        }
      }

      sub_1000103F8(a13, "::posix_spawn_file_actions_addopen (&file_actions, filedes=STDOUT_FILENO, path='%s')", v74, v75, v76, v77, v78, v79, a8);
LABEL_90:
      v80 = posix_spawn_file_actions_addopen(&v108, 2, v18, 131585, 0x1A0u);
      *a13 = v80;
      a13[1] = 2;
      if (*(a13 + 31) < 0)
      {
        **(a13 + 1) = 0;
        *(a13 + 2) = 0;
        if (!*a13)
        {
          goto LABEL_94;
        }
      }

      else
      {
        *(a13 + 8) = 0;
        *(a13 + 31) = 0;
        if (!v80)
        {
LABEL_94:
          if (!sub_1000104C8(2))
          {
            goto LABEL_96;
          }
        }
      }

      sub_1000103F8(a13, "::posix_spawn_file_actions_addopen (&file_actions, filedes=STDERR_FILENO, path='%s')", v81, v82, v83, v84, v85, v86, v18);
LABEL_96:
      if (a6)
      {
        chdir(a6);
      }

      v87 = posix_spawnp(&v107, a1, &v108, &v112, a4, a5);
      *a13 = v87;
      a13[1] = 2;
      if (*(a13 + 31) < 0)
      {
        **(a13 + 1) = 0;
        *(a13 + 2) = 0;
        if (*a13)
        {
          goto LABEL_103;
        }
      }

      else
      {
        *(a13 + 8) = 0;
        *(a13 + 31) = 0;
        if (v87)
        {
          goto LABEL_103;
        }
      }

      if (!sub_1000104C8(2))
      {
        goto LABEL_104;
      }

LABEL_103:
      sub_1000103F8(a13, "::posix_spawnp(pid => %i, path = '%s', file_actions = %p, attr = %p, argv = %p, envp = %p)", v88, v89, v90, v91, v92, v93, v107, a1, &v108, &v112, a4, a5);
      goto LABEL_104;
    }

LABEL_69:
    a7 = "/dev/null";
    goto LABEL_70;
  }

  if (a6)
  {
    chdir(a6);
  }

  v59 = posix_spawnp(&v107, a1, 0, &v112, a4, a5);
  *a13 = v59;
  a13[1] = 2;
  if (*(a13 + 31) < 0)
  {
    **(a13 + 1) = 0;
    *(a13 + 2) = 0;
    if (!*a13)
    {
      goto LABEL_54;
    }

LABEL_55:
    sub_1000103F8(a13, "::posix_spawnp(pid => %i, path = '%s', file_actions = %p, attr = %p, argv = %p, envp = %p)", v60, v61, v62, v63, v64, v65, v107, a1, 0, &v112, a4, a5);
    goto LABEL_56;
  }

  *(a13 + 8) = 0;
  *(a13 + 31) = 0;
  if (v59)
  {
    goto LABEL_55;
  }

LABEL_54:
  if (sub_1000104C8(2))
  {
    goto LABEL_55;
  }

LABEL_56:
  v105 = -1;
LABEL_104:
  if (*a13)
  {
    v107 = 0;
  }

  if (a11 && !v105)
  {
    v94 = v109;
    LODWORD(v109) = -1;
    a11[3] = v94;
    a11[4] = v94;
    a11[5] = v94;
  }

  posix_spawnattr_destroy(&v112);
  v95 = v107;
  if (v107)
  {
    v119 = 0u;
    v120 = 0u;
    *v118 = 0u;
    v117 = 12;
    if (sysctlnametomib("sysctl.proc_cputype", v118, &v117))
    {
      v96 = 0;
    }

    else
    {
      v97 = v117;
      *(v118 + v117) = v95;
      v117 = v97 + 1;
      v116 = 0;
      v115 = 4;
      if (sysctl(v118, v97 + 1, &v116, &v115, 0, 0))
      {
        v96 = 0;
      }

      else
      {
        v96 = v116;
      }
    }

    if (sub_100010524(2))
    {
      sub_100010668("MachProcess::%s() pid=%i, cpu_type=0x%8.8x", "PosixSpawnChildForPTraceDebugging", v107, v96);
    }

    if (v96)
    {
      sub_100008B88(v96, 0);
    }
  }

  if (!v58)
  {
    *v118 = 0u;
    v119 = 0u;
    v118[0] = posix_spawn_file_actions_destroy(&v108) | 0x200000000;
    LOBYTE(v118[1]) = 0;
    HIBYTE(v119) = 0;
    if (LODWORD(v118[0]) || sub_1000104C8(2))
    {
      sub_1000103F8(v118, "::posix_spawn_file_actions_destroy(&file_actions)", v98, v99, v100, v101, v102, v103);
      if (SHIBYTE(v119) < 0)
      {
        operator delete(v118[1]);
      }
    }
  }

  v104 = v107;
  sub_100012490(&v109);
  return v104;
}

void sub_100047AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (*(v21 - 113) < 0)
  {
    operator delete(*(v21 - 136));
  }

  sub_100012490(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100047B34(unsigned int *a1, char *a2, uint64_t *a3, char **a4, char a5, int a6, char *a7, uint64_t a8)
{
  if (*a3)
  {
    if (sub_100010524(2))
    {
      sub_100010668("%s( '%s', argv, %p)", "BoardServiceForkChildForPTraceDebugging", a2, a1);
    }

    v63 = objc_alloc_init(NSAutoreleasePool);
    v16 = -1;
    v17 = 1;
    v18 = a3;
    do
    {
      v19 = *v18++;
      --v17;
      ++v16;
    }

    while (v19);
    v62 = a6;
    __s = a7;
    if (a3[1])
    {
      v20 = -v17;
      v21 = [NSMutableArray arrayWithCapacity:-v17 - (v16 != 0)];
      if (v20 >= 2)
      {
        for (i = 1; i != v20; ++i)
        {
          if (!a3[i])
          {
            break;
          }

          v23 = [NSString stringWithUTF8String:?];
          if (!v23)
          {
            break;
          }

          [(NSMutableArray *)v21 addObject:v23];
        }
      }
    }

    else
    {
      v21 = 0;
    }

    if (*a4)
    {
      v25 = objc_alloc_init(NSMutableDictionary);
      v26 = *a4;
      if (*a4)
      {
        v27 = a4 + 1;
        do
        {
          v29 = strchr(v26, 61);
          if (v29 && v29 != v26)
          {
            [v25 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v29 + 1), objc_msgSend([NSString alloc], "initWithBytes:length:encoding:", *(v27 - 1), v29 - v26, 4)}];
          }

          v28 = *v27++;
          v26 = v28;
        }

        while (v28);
      }
    }

    else
    {
      v25 = 0;
    }

    v30 = +[NSFileManager defaultManager];
    v31 = sub_100012484(&v65);
    if ((a5 & 1) != 0 || sub_1000124E4(&v65, 131074))
    {
      goto LABEL_25;
    }

    v37 = sub_100012574(&v65);
    if (sub_100010524(2))
    {
      sub_100010668("%s() successfully opened primary pty, secondary is %s", "BoardServiceForkChildForPTraceDebugging", v37);
    }

    if (!v37 || !*v37 || (chmod(v37, 0x1FFu), (v32 = [(NSFileManager *)v30 stringWithFileSystemRepresentation:v37 length:strlen(v37)]) == 0))
    {
LABEL_25:
      v32 = [(NSFileManager *)v30 stringWithFileSystemRepresentation:"/dev/null" length:9, v31];
    }

    v33 = sub_100045C04(a2, a8);
    if (!v33)
    {
      [v63 drain];
      v24 = 0;
LABEL_76:
      sub_100012490(&v65);
      return v24;
    }

    v64 = 0;
    v34 = a1[110];
    if ((v34 & 0x10) == 0)
    {
      v35 = *a1;
      if (v35)
      {
        if ([objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:v35])
        {
          v36 = a1[110] | 8;
        }

        else
        {
          v38 = [objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:*a1];
          v36 = a1[110];
          if (v38)
          {
            v36 |= 4u;
          }
        }

        v34 = v36 | 0x10;
        a1[110] = v34;
      }
    }

    if ((v34 & 4) != 0)
    {
      v40 = +[NSMutableDictionary dictionary];
      v41 = v40;
      if (v21)
      {
        [v40 setObject:v21 forKey:BKSDebugOptionKeyArguments];
      }

      if (v25)
      {
        [v41 setObject:v25 forKey:BKSDebugOptionKeyEnvironment];
      }

      [v41 setObject:v32 forKey:BKSDebugOptionKeyStandardOutPath];
      [v41 setObject:v32 forKey:BKSDebugOptionKeyStandardErrorPath];
      v42 = [NSNumber numberWithBool:1];
      [v41 setObject:v42 forKey:BKSDebugOptionKeyWaitForDebugger];
      if (v62)
      {
        v43 = [NSNumber numberWithBool:1];
        [v41 setObject:v43 forKey:BKSDebugOptionKeyDisableASLR];
      }

      v44 = +[NSMutableDictionary dictionary];
      [v44 setObject:v41 forKey:BKSOpenApplicationOptionKeyDebuggingOptions];
      v45 = [NSNumber numberWithBool:1];
      [v44 setObject:v45 forKey:BKSOpenApplicationOptionKeyUnlockDevice];
      *__p = 0u;
      v67 = 0u;
      sub_100048358(v44, __s, __p);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(__p[1]);
      }

      v39 = sub_100048FB8(v33, v44, a8, &v64);
      v34 = a1[110];
      if ((v34 & 0x10) != 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v39 = 0;
      if ((v34 & 0x10) != 0)
      {
LABEL_59:
        if ((v34 & 8) != 0)
        {
          v49 = +[NSMutableDictionary dictionary];
          v50 = v49;
          if (v21)
          {
            [v49 setObject:v21 forKey:FBSDebugOptionKeyArguments];
          }

          if (v25)
          {
            [v50 setObject:v25 forKey:FBSDebugOptionKeyEnvironment];
          }

          [v50 setObject:v32 forKey:FBSDebugOptionKeyStandardOutPath];
          [v50 setObject:v32 forKey:FBSDebugOptionKeyStandardErrorPath];
          v51 = [NSNumber numberWithBool:1];
          [v50 setObject:v51 forKey:FBSDebugOptionKeyWaitForDebugger];
          if (v62)
          {
            v52 = [NSNumber numberWithBool:1];
            [v50 setObject:v52 forKey:FBSDebugOptionKeyDisableASLR];
          }

          v53 = +[NSMutableDictionary dictionary];
          [v53 setObject:v50 forKey:FBSOpenApplicationOptionKeyDebuggingOptions];
          v54 = [NSNumber numberWithBool:1];
          [v53 setObject:v54 forKey:FBSOpenApplicationOptionKeyUnlockDevice];
          v55 = [NSNumber numberWithBool:1];
          [v53 setObject:v55 forKey:FBSOpenApplicationOptionKeyPromptUnlockDevice];
          v56 = [LSApplicationProxy applicationProxyForBundleURL:[NSURL fileURLWithPath:[NSString stringWithUTF8String:a2] isDirectory:1]];
          if (v56)
          {
            if (sub_100010510())
            {
              sub_100010544(0, "Sending AppProxy info: sequence no: %lu, GUID: %s.", [v56 sequenceNumber], objc_msgSend(objc_msgSend(objc_msgSend(v56, "cacheGUID"), "UUIDString"), "UTF8String"));
            }

            v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v56 sequenceNumber]);
            [v53 setObject:v57 forKey:FBSOpenApplicationOptionKeyLSSequenceNumber];
            v58 = [objc_msgSend(v56 "cacheGUID")];
            [v53 setObject:v58 forKey:FBSOpenApplicationOptionKeyLSCacheGUID];
          }

          *__p = 0u;
          v67 = 0u;
          sub_1000485C8(v53, __s, __p);
          if (SHIBYTE(v67) < 0)
          {
            operator delete(__p[1]);
          }

          v39 = sub_1000496E4(v33, v53, a8, &v64);
        }

        if (v39)
        {
          v59 = v65;
          LODWORD(v65) = -1;
          a1[3] = v59;
          a1[4] = v59;
          a1[5] = v59;
          sub_10003914C(v33, (a1 + 430));
        }

        [v63 drain];
        v24 = v64;
        goto LABEL_76;
      }
    }

    v46 = *a1;
    if (v46)
    {
      if ([objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:v46])
      {
        v47 = a1[110] | 8;
      }

      else
      {
        v48 = [objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:*a1];
        v47 = a1[110];
        if (v48)
        {
          v47 |= 4u;
        }
      }

      v34 = v47 | 0x10;
      a1[110] = v34;
    }

    goto LABEL_59;
  }

  return 0;
}

void sub_100048284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100012490(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1000482C8(unsigned int *a1)
{
  v1 = a1[110];
  if ((v1 & 0x10) == 0)
  {
    v3 = *a1;
    if (v3)
    {
      if ([objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:v3])
      {
        v4 = a1[110] | 8;
      }

      else
      {
        v5 = [objc_alloc_init(BKSApplicationStateMonitor) mostElevatedApplicationStateForPID:*a1];
        v4 = a1[110];
        if (v5)
        {
          v4 |= 4u;
        }
      }

      v1 = v4 | 0x10;
      a1[110] = v1;
    }
  }

  return (v1 >> 2) & 1;
}

uint64_t sub_100048358(void *a1, char *__s, uint64_t a3)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_100049CDC(__s, &__p);
  v5 = __p;
  v6 = v19;
  if (__p == v19)
  {
    v7 = 0;
    if (__p)
    {
      goto LABEL_26;
    }

    return v7 & 1;
  }

  v7 = 0;
  v16 = BKSOpenApplicationOptionKeyActivateSuspended;
  v8 = BKSActivateForEventOptionTypeBackgroundContentFetching;
  v9 = BKSOpenApplicationOptionKeyActivateForEvent;
  do
  {
    if (*(v5 + 23) < 0)
    {
      sub_100034C98(&v17, *v5, v5[1]);
    }

    else
    {
      v10 = *v5;
      v17.__r_.__value_.__r.__words[2] = v5[2];
      *&v17.__r_.__value_.__l.__data_ = v10;
    }

    if (!std::string::compare(&v17, "BackgroundContentFetching"))
    {
      if (sub_100010510())
      {
        sub_100010544(0, "Setting ActivateForEvent key in options dictionary.");
      }

      [a1 setObject:+[NSDictionary dictionaryWithObject:forKey:](NSDictionary forKey:{"dictionaryWithObject:forKey:", +[NSDictionary dictionary](NSDictionary, "dictionary"), v8), v9}];
      v7 = 1;
LABEL_17:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_3;
      }

LABEL_18:
      operator delete(v17.__r_.__value_.__l.__data_);
      goto LABEL_3;
    }

    if (std::string::compare(&v17, "ActivateSuspended"))
    {
      if (sub_100010510())
      {
        v11 = &v17;
        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v11 = v17.__r_.__value_.__r.__words[0];
        }

        sub_1000107A0("Unrecognized event type: %s.  Ignoring.", v11);
      }

      std::string::assign((a3 + 8), "Unrecognized event data");
      goto LABEL_17;
    }

    if (sub_100010510())
    {
      sub_100010544(0, "Setting ActivateSuspended key in options dictionary.");
    }

    [a1 setObject:&__kCFBooleanTrue forKey:v16];
    v7 = 1;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_18;
    }

LABEL_3:
    v5 += 3;
  }

  while (v5 != v6);
  v5 = __p;
  if (!__p)
  {
    return v7 & 1;
  }

LABEL_26:
  v12 = v19;
  v13 = v5;
  if (v19 != v5)
  {
    do
    {
      v14 = *(v12 - 1);
      v12 -= 3;
      if (v14 < 0)
      {
        operator delete(*v12);
      }
    }

    while (v12 != v5);
    v13 = __p;
  }

  v19 = v5;
  operator delete(v13);
  return v7 & 1;
}

uint64_t sub_1000485C8(void *a1, char *__s, uint64_t a3)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_100049CDC(__s, &__p);
  v5 = __p;
  v6 = v19;
  if (__p == v19)
  {
    v7 = 0;
    if (__p)
    {
      goto LABEL_26;
    }

    return v7 & 1;
  }

  v7 = 0;
  v16 = FBSOpenApplicationOptionKeyActivateSuspended;
  v8 = FBSActivateForEventOptionTypeBackgroundContentFetching;
  v9 = FBSOpenApplicationOptionKeyActivateForEvent;
  do
  {
    if (*(v5 + 23) < 0)
    {
      sub_100034C98(&v17, *v5, v5[1]);
    }

    else
    {
      v10 = *v5;
      v17.__r_.__value_.__r.__words[2] = v5[2];
      *&v17.__r_.__value_.__l.__data_ = v10;
    }

    if (!std::string::compare(&v17, "BackgroundContentFetching"))
    {
      if (sub_100010510())
      {
        sub_100010544(0, "Setting ActivateForEvent key in options dictionary.");
      }

      [a1 setObject:+[NSDictionary dictionaryWithObject:forKey:](NSDictionary forKey:{"dictionaryWithObject:forKey:", +[NSDictionary dictionary](NSDictionary, "dictionary"), v8), v9}];
      v7 = 1;
LABEL_17:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_3;
      }

LABEL_18:
      operator delete(v17.__r_.__value_.__l.__data_);
      goto LABEL_3;
    }

    if (std::string::compare(&v17, "ActivateSuspended"))
    {
      if (sub_100010510())
      {
        v11 = &v17;
        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v11 = v17.__r_.__value_.__r.__words[0];
        }

        sub_1000107A0("Unrecognized event type: %s.  Ignoring.", v11);
      }

      std::string::assign((a3 + 8), "Unrecognized event data.");
      goto LABEL_17;
    }

    if (sub_100010510())
    {
      sub_100010544(0, "Setting ActivateSuspended key in options dictionary.");
    }

    [a1 setObject:&__kCFBooleanTrue forKey:v16];
    v7 = 1;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_18;
    }

LABEL_3:
    v5 += 3;
  }

  while (v5 != v6);
  v5 = __p;
  if (!__p)
  {
    return v7 & 1;
  }

LABEL_26:
  v12 = v19;
  v13 = v5;
  if (v19 != v5)
  {
    do
    {
      v14 = *(v12 - 1);
      v12 -= 3;
      if (v14 < 0)
      {
        operator delete(*v12);
      }
    }

    while (v12 != v5);
    v13 = __p;
  }

  v19 = v5;
  operator delete(v13);
  return v7 & 1;
}

uint64_t sub_100048838(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = *(a1 + 112);
    v4 = *(a1 + 104);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 104);
    }

    *(a1 + 112) = v2;
    operator delete(v4);
  }

  sub_10003ABF0(a1 + 80, *(a1 + 88));
  return a1;
}

uint64_t sub_1000488F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_100048938(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v14 == 1)
  {
    v6 = (a1 + *(*a1 - 24));
    rdbuf = v6->__rdbuf_;
    fmtflags = v6->__fmtflags_;
    v9 = v6[1].__fmtflags_;
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, &std::ctype<char>::id);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((fmtflags & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_100048AE4(rdbuf, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100048A7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100048A5CLL);
}

uint64_t sub_100048AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100048CE0();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_100048CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_100048CF8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 65);
        v3 -= 11;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_100048D6C(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = result;
      if (v3 > result[2] << 6)
      {
        v5 = *result;
        if (v5)
        {
          operator delete(v5);
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
          v3 = *(a2 + 8);
        }

        if ((v3 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_100038A60();
      }

      memmove(*result, *a2, (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      result = v4;
      v3 = *(a2 + 8);
    }

    result[1] = v3;
  }

  return result;
}

char *sub_100048E3C(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_100038A60();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

uint64_t sub_100048FB8(id a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v8 = objc_alloc_init(BKSSystemService);
  v9 = v8;
  if (!a1)
  {
    a1 = [v8 systemApplicationBundleIdentifier];
    if (!a1)
    {
      std::string::assign((a3 + 8), "No system application to message.");
      return 0;
    }
  }

  v10 = [v9 createClientPort];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3052000000;
  v47 = sub_100045E90;
  v48 = sub_100045EA0;
  v49 = dispatch_semaphore_create(0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4812000000;
  v34 = sub_100049414;
  v35 = sub_100049430;
  v36 = "";
  v38 = 0;
  v39 = 0;
  __p = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = [a1 UTF8String];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = "<Unknown Bundle ID>";
  }

  v13 = [a2 description];
  if (sub_100010510())
  {
    v14 = getpid();
    sub_100010544(0, "[LaunchAttach] START (%d) templated *Board launcher: app lunch request for '%s' - options:\n%s", v14, v12, [v13 UTF8String]);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3254779904;
  v25[2] = sub_100049444;
  v25[3] = &unk_10006D608;
  v26 = a4 != 0;
  v25[6] = &v40;
  v25[7] = &v27;
  v25[4] = a1;
  v25[5] = v9;
  v25[8] = &v31;
  v25[9] = &v44;
  v25[10] = v12;
  [v9 openApplication:a1 options:a2 clientPort:v10 withResult:v25];
  v15 = dispatch_time(0, 30000000000);
  v16 = dispatch_semaphore_wait(v45[5], v15);
  dispatch_release(v45[5]);
  if (sub_100010510())
  {
    v17 = getpid();
    sub_100010544(0, "[LaunchAttach] END (%d) templated *Board launcher finished app lunch request for '%s'", v17, v12);
  }

  if (v16)
  {
    if (sub_100010510())
    {
      v18 = getpid();
      sub_1000107A0("[LaunchAttach] END (%d) timed out trying to send openApplication to %s.", v18, v12);
    }

    *a3 = 111;
    if (*(a3 + 31) < 0)
    {
      **(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 31) = 0;
    }

    std::string::assign((a3 + 8), "timed out trying to launch app");
  }

  else
  {
    v19 = *(v41 + 6);
    if (!v19)
    {
      if (a4)
      {
        *a4 = *(v28 + 6);
        if (sub_100010524(2))
        {
          sub_100010668("Out of completion handler, pid from block %d and passing out: %d", *(v28 + 6), *a4);
        }
      }

      v20 = 1;
      goto LABEL_21;
    }

    if (*(v32 + 71) < 0)
    {
      sub_100034C98(v23, v32[6], v32[7]);
    }

    else
    {
      *v23 = *(v32 + 3);
      v24 = v32[8];
    }

    sub_1000460E8(v19, v23, a3);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (sub_100010510())
    {
      v22 = getpid();
      sub_1000107A0("[LaunchAttach] END (%d) unable to launch the application with CFBundleIdentifier '%s' bks_error = %ld", v22, v12, *(v41 + 6));
    }
  }

  v20 = 0;
LABEL_21:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  return v20;
}

void sub_1000493A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Block_object_dispose((v47 - 168), 8);
  _Block_object_dispose((v47 - 136), 8);
  _Unwind_Resume(a1);
}

__n128 sub_100049414(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  *(&a2[3] + 8) = 0uLL;
  a2[3].n128_u64[0] = 0;
  return result;
}

void sub_100049430(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

intptr_t sub_100049444(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [a2 code];
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v4 = [objc_msgSend(a2 "localizedDescription")];
    if (v4)
    {
      std::string::assign((*(*(a1 + 64) + 8) + 48), v4);
      if (sub_100010510())
      {
        v5 = getpid();
        sub_1000107A0("[LaunchAttach] END (%d) In app launch attempt, got error localizedDescription '%s'.", v5, v4);
      }

      v6 = [+[NSString stringWithFormat:](NSString UTF8String:@"%@"];
      if (sub_100010510())
      {
        v7 = getpid();
        sub_1000107A0("[LaunchAttach] END (%d) In app launch attempt, got error NSError object description: '%s'.", v7, v6);
      }
    }

    if (sub_100010524(2))
    {
      v8 = "<unknown error>";
      if (v4)
      {
        v8 = v4;
      }

      sub_100010668("In completion handler for send event, got error %s(%ld).", v8, *(*(*(a1 + 48) + 8) + 24));
    }
  }

  else if (*(a1 + 88) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) pidForApplication:*(a1 + 32)];
    if (sub_100010510())
    {
      sub_100010544(0, "[LaunchAttach] In completion handler, got pid for bundle id '%s', pid: %d.");
    }
  }

  else if (sub_100010510())
  {
    sub_100010544(0, "[LaunchAttach] In completion handler, launch was successful, debugserver did not ask for the pid");
  }

  v9 = *(*(*(a1 + 72) + 8) + 40);

  return dispatch_semaphore_signal(v9);
}

void sub_1000495E0(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 3);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  v4 = *(a2 + 72);

  _Block_object_assign((a1 + 72), v4, 8);
}

void sub_100049670(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t sub_1000496E4(id a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v8 = objc_alloc_init(FBSSystemService);
  v9 = v8;
  if (!a1)
  {
    a1 = [v8 systemApplicationBundleIdentifier];
    if (!a1)
    {
      std::string::assign((a3 + 8), "No system application to message.");
      return 0;
    }
  }

  v10 = [v9 createClientPort];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3052000000;
  v47 = sub_100045E90;
  v48 = sub_100045EA0;
  v49 = dispatch_semaphore_create(0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4812000000;
  v34 = sub_100049414;
  v35 = sub_100049430;
  v36 = "";
  v38 = 0;
  v39 = 0;
  __p = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = [a1 UTF8String];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = "<Unknown Bundle ID>";
  }

  v13 = [a2 description];
  if (sub_100010510())
  {
    v14 = getpid();
    sub_100010544(0, "[LaunchAttach] START (%d) templated *Board launcher: app lunch request for '%s' - options:\n%s", v14, v12, [v13 UTF8String]);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3254779904;
  v25[2] = sub_100049B40;
  v25[3] = &unk_10006D608;
  v26 = a4 != 0;
  v25[6] = &v40;
  v25[7] = &v27;
  v25[4] = a1;
  v25[5] = v9;
  v25[8] = &v31;
  v25[9] = &v44;
  v25[10] = v12;
  [v9 openApplication:a1 options:a2 clientPort:v10 withResult:v25];
  v15 = dispatch_time(0, 30000000000);
  v16 = dispatch_semaphore_wait(v45[5], v15);
  dispatch_release(v45[5]);
  if (sub_100010510())
  {
    v17 = getpid();
    sub_100010544(0, "[LaunchAttach] END (%d) templated *Board launcher finished app lunch request for '%s'", v17, v12);
  }

  if (v16)
  {
    if (sub_100010510())
    {
      v18 = getpid();
      sub_1000107A0("[LaunchAttach] END (%d) timed out trying to send openApplication to %s.", v18, v12);
    }

    *a3 = 111;
    if (*(a3 + 31) < 0)
    {
      **(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 31) = 0;
    }

    std::string::assign((a3 + 8), "timed out trying to launch app");
  }

  else
  {
    v19 = v41[3];
    if (!v19)
    {
      if (a4)
      {
        *a4 = *(v28 + 6);
        if (sub_100010524(2))
        {
          sub_100010668("Out of completion handler, pid from block %d and passing out: %d", *(v28 + 6), *a4);
        }
      }

      v20 = 1;
      goto LABEL_21;
    }

    if (*(v32 + 71) < 0)
    {
      sub_100034C98(v23, v32[6], v32[7]);
    }

    else
    {
      *v23 = *(v32 + 3);
      v24 = v32[8];
    }

    sub_100045FB8(v19, v23, a3);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (sub_100010510())
    {
      v22 = getpid();
      sub_1000107A0("[LaunchAttach] END (%d) unable to launch the application with CFBundleIdentifier '%s' bks_error = %ld", v22, v12, v41[3]);
    }
  }

  v20 = 0;
LABEL_21:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  return v20;
}

void sub_100049AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Block_object_dispose((v47 - 168), 8);
  _Block_object_dispose((v47 - 136), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100049B40(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [a2 code];
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v4 = [objc_msgSend(a2 "localizedDescription")];
    if (v4)
    {
      std::string::assign((*(*(a1 + 64) + 8) + 48), v4);
      if (sub_100010510())
      {
        v5 = getpid();
        sub_1000107A0("[LaunchAttach] END (%d) In app launch attempt, got error localizedDescription '%s'.", v5, v4);
      }

      v6 = [+[NSString stringWithFormat:](NSString UTF8String:@"%@"];
      if (sub_100010510())
      {
        v7 = getpid();
        sub_1000107A0("[LaunchAttach] END (%d) In app launch attempt, got error NSError object description: '%s'.", v7, v6);
      }
    }

    if (sub_100010524(2))
    {
      v8 = "<unknown error>";
      if (v4)
      {
        v8 = v4;
      }

      sub_100010668("In completion handler for send event, got error %s(%ld).", v8, *(*(*(a1 + 48) + 8) + 24));
    }
  }

  else if (*(a1 + 88) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) pidForApplication:*(a1 + 32)];
    if (sub_100010510())
    {
      sub_100010544(0, "[LaunchAttach] In completion handler, got pid for bundle id '%s', pid: %d.");
    }
  }

  else if (sub_100010510())
  {
    sub_100010544(0, "[LaunchAttach] In completion handler, launch was successful, debugserver did not ask for the pid");
  }

  v9 = *(*(*(a1 + 72) + 8) + 40);

  return dispatch_semaphore_signal(v9);
}

void sub_100049CDC(char *__s, void ***a2)
{
  v4 = *a2;
  v5 = a2[1];
  while (v5 != v4)
  {
    v6 = *(v5 - 1);
    v5 -= 3;
    if (v6 < 0)
    {
      operator delete(*v5);
    }
  }

  a2[1] = v4;
  if (__s && *__s)
  {
    while (1)
    {
      v7 = strchr(__s, 58);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = v7 - __s;
      if (v7 != __s)
      {
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_26;
        }

        if (v9 >= 0x17)
        {
          operator new();
        }

        v13 = v7 - __s;
        memmove(&__dst, __s, v9);
        *(&__dst + v9) = 0;
        sub_100044904(a2, &__dst);
        if (v13 < 0)
        {
          operator delete(__dst);
        }
      }

      __s = v8 + 1;
      if (!v8[1])
      {
        return;
      }
    }

    v10 = strlen(__s);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_26:
      sub_100048CE0();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    v13 = v10;
    if (v10)
    {
      memmove(&__dst, __s, v10);
    }

    *(&__dst + v11) = 0;
    sub_100044904(a2, &__dst);
    if (v13 < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_100049EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char **sub_100049EC8(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 2088;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100049F3C(__int128 **a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x2E8BA2E8BA2E8BALL)
  {
    sub_100038A60();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_10003888C();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_100034C98(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  v7 = v6;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  v8 = v6 + 88;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 + v7 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      v16 = *(v12 + 40);
      v17 = *(v12 + 56);
      *(v13 + 72) = *(v12 + 72);
      *(v13 + 56) = v17;
      *(v13 + 40) = v16;
      *(v13 + 24) = v15;
      v12 = (v12 + 88);
      v13 += 88;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 = (v9 + 88);
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_10004A134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004A1A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A148(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 65);
      v3 -= 11;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t sub_10004A1A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 11;
      *(a1 + 16) = v2 - 11;
      if (*(v2 - 65) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10004A320(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100059384(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004A448(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100059384(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004A460(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_10004A4AC(float *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_11:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_11;
  }

  return v8;
}

void sub_10004A77C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10003888C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_10004A8E0(void **a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_100038A60();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_10003888C();
  }

  v17 = 32 * ((a1[1] - *a1) >> 5);
  sub_10004AAD8(a1, v17, a2);
  v6 = (160 * v2 + 160);
  v7 = *a1;
  v8 = a1[1];
  v9 = (v17 + *a1 - v8);
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = (v17 + *a1 - v8);
    do
    {
      v12 = *v10;
      *(v11 + 2) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      *(v11 + 3) = *(v10 + 3);
      v13 = *(v10 + 3);
      *(v11 + 2) = *(v10 + 2);
      *(v11 + 3) = v13;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      *(v11 + 8) = 0;
      *(v11 + 4) = *(v10 + 4);
      *(v11 + 10) = *(v10 + 10);
      *(v10 + 8) = 0;
      *(v10 + 9) = 0;
      *(v10 + 10) = 0;
      *(v11 + 88) = *(v10 + 88);
      v14 = *(v10 + 104);
      *(v11 + 15) = *(v10 + 15);
      *(v11 + 104) = v14;
      *(v10 + 14) = 0;
      *(v10 + 15) = 0;
      *(v10 + 13) = 0;
      v15 = *(v10 + 8);
      *(v11 + 18) = *(v10 + 18);
      *(v11 + 8) = v15;
      *(v10 + 17) = 0;
      *(v10 + 18) = 0;
      *(v10 + 16) = 0;
      v11[152] = v10[152];
      v10 += 160;
      v11 += 160;
    }

    while (v10 != v8);
    do
    {
      sub_10004ADD0(a1, v7);
      v7 += 160;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_10004AAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004AEA4(va);
  _Unwind_Resume(a1);
}

void *sub_10004AAD8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100034C98(a2, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v5;
  }

  *(a2 + 24) = *(a3 + 3);
  v6 = a3[3];
  *(a2 + 32) = a3[2];
  *(a2 + 48) = v6;
  result = sub_10004ABE4((a2 + 64), a3 + 8);
  *(a2 + 88) = *(a3 + 88);
  if (*(a3 + 127) < 0)
  {
    result = sub_100034C98((a2 + 104), *(a3 + 13), *(a3 + 14));
  }

  else
  {
    v8 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 15);
    *(a2 + 104) = v8;
  }

  if (*(a3 + 151) < 0)
  {
    result = sub_100034C98((a2 + 128), *(a3 + 16), *(a3 + 17));
  }

  else
  {
    v9 = a3[8];
    *(a2 + 144) = *(a3 + 18);
    *(a2 + 128) = v9;
  }

  *(a2 + 152) = *(a3 + 152);
  return result;
}

void sub_10004ABA0(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  sub_100048CF8((v1 + 64));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10004ABE4(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((v2 - *a2) >> 3)) < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_100038A60();
  }

  return a1;
}

void ****sub_10004AD4C(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 65);
          v4 -= 11;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_10004ADD0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 151) < 0)
  {
    operator delete(*(a2 + 128));
    if ((*(a2 + 127) & 0x80000000) == 0)
    {
LABEL_3:
      v3 = *(a2 + 64);
      if (!v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 127) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 104));
  v3 = *(a2 + 64);
  if (!v3)
  {
LABEL_4:
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_8:
  v4 = *(a2 + 72);
  v5 = v3;
  if (v4 != v3)
  {
    do
    {
      v6 = *(v4 - 65);
      v4 -= 11;
      if (v6 < 0)
      {
        operator delete(*v4);
      }
    }

    while (v4 != v3);
    v5 = *(a2 + 64);
  }

  *(a2 + 72) = v3;
  operator delete(v5);
  if (*(a2 + 23) < 0)
  {
LABEL_15:
    v7 = *a2;

    operator delete(v7);
  }
}

uint64_t sub_10004AEA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 160;
    sub_10004ADD0(v4, i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10004AEFC(void *a1, void *a2)
{
  v2 = 0x77A9AF922545A3CDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x1F6310ACA0DBB5)
  {
    sub_100038A60();
  }

  if (0xEF535F244A8B479ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xEF535F244A8B479ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x77A9AF922545A3CDLL * ((a1[2] - *a1) >> 3)) >= 0xFB18856506DDALL)
  {
    v5 = 0x1F6310ACA0DBB5;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x1F6310ACA0DBB5)
    {
      operator new();
    }

    sub_10003888C();
  }

  v6 = (8 * ((a1[1] - *a1) >> 3));
  memcpy(v6, a2, 0x80CuLL);
  v6[258] = 0;
  v6[260] = 0;
  v6[259] = 0;
  v7 = a2[258];
  v8 = a2[259];
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100038A60();
  }

  v9 = v6 + 261;
  v10 = *a1;
  v11 = a1[1];
  v12 = v6 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      memcpy(v14, v13, 0x800uLL);
      v15 = *(v13 + 514);
      *(v14 + 256) = v13[256];
      *(v14 + 514) = v15;
      *(v14 + 258) = 0;
      *(v14 + 2072) = 0u;
      *(v14 + 129) = *(v13 + 129);
      *(v14 + 260) = v13[260];
      *(v13 + 129) = 0u;
      v13[260] = 0;
      v13 += 261;
      v14 += 2088;
    }

    while (v13 != v11);
    do
    {
      v16 = v10[258];
      if (v16)
      {
        v10[259] = v16;
        operator delete(v16);
      }

      v10 += 261;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_10004B13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 2072) = v6;
    operator delete(v6);
  }

  sub_10004B160(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004B160(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 2088;
        *(a1 + 16) = v2 - 2088;
        v5 = *(v2 - 24);
        if (!v5)
        {
          break;
        }

        *(v2 - 16) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 2088;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10004B1D0(uint64_t a1, uint64_t a2)
{
  *a1 = off_10006D648;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_100051934(a1 + 24);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 302) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  return a1;
}

uint64_t sub_10004B254(uint64_t result)
{
  v1 = result;
  v2 = (result + 296);
  if (*(result + 296))
  {
    result = sub_10004B754(result);
  }

  *(v1 + 16) = 0;
  *v2 = 0;
  *(v2 + 6) = 0;
  return result;
}

uint64_t sub_10004B294(uint64_t a1)
{
  *a1 = off_10006D648;
  if (*(a1 + 296))
  {
    sub_10004B754(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 296) = 0;
  *(a1 + 302) = 0;
  sub_100008ED0(a1 + 312, *(a1 + 320));
  sub_10005194C(a1 + 24);
  return a1;
}

void sub_10004B30C(uint64_t a1)
{
  *a1 = off_10006D648;
  if (*(a1 + 296))
  {
    sub_10004B754(a1);
  }

  *(a1 + 16) = 0;
  *(a1 + 296) = 0;
  *(a1 + 302) = 0;
  sub_100008ED0(a1 + 312, *(a1 + 320));
  sub_10005194C(a1 + 24);

  operator delete();
}

uint64_t sub_10004B3A4(uint64_t a1)
{
  *__p = 0u;
  v13 = 0u;
  v1 = *(a1 + 16);
  __p[0] = (task_suspend(*(a1 + 16)) | 0x100000000);
  LOBYTE(__p[1]) = 0;
  HIBYTE(v13) = 0;
  v2 = sub_1000104C8(0x2000);
  if (LODWORD(__p[0]))
  {
    v9 = 1;
  }

  else
  {
    v9 = v2;
  }

  if (v9 != 1)
  {
    return 0;
  }

  sub_1000103F8(__p, "::task_suspend(target_task = 0x%4.4x)", v3, v4, v5, v6, v7, v8, v1);
  result = LODWORD(__p[0]);
  if (SHIBYTE(v13) < 0)
  {
    v11 = LODWORD(__p[0]);
    operator delete(__p[1]);
    return v11;
  }

  return result;
}

void sub_10004B444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004B460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 4;
  }

  *__p = 0u;
  v24 = 0u;
  LODWORD(__p[0]) = sub_10004B5E8(v1, task_info_out);
  HIDWORD(__p[0]) = 1;
  LOBYTE(__p[1]) = 0;
  HIBYTE(v24) = 0;
  if (LODWORD(__p[0]))
  {
    return LODWORD(__p[0]);
  }

  v4 = task_info_out[0];
  if (*(a1 + 309) == 1 && task_info_out[0] == 2)
  {
    __p[0] = (task_resume(v1) | 0x100000000);
    if (SHIBYTE(v24) < 0)
    {
      *__p[1] = 0;
      *&v24 = 0;
    }

    else
    {
      LOBYTE(__p[1]) = 0;
      HIBYTE(v24) = 0;
    }

    v6 = sub_1000104C8(0x2000);
    if (LODWORD(__p[0]))
    {
      v13 = 1;
    }

    else
    {
      v13 = v6;
    }

    if (v13 == 1)
    {
      sub_1000103F8(__p, "::task_resume double-resume after exec-start-stopped(target_task = 0x%4.4x)", v7, v8, v9, v10, v11, v12, v1);
    }

    v4 = task_info_out[0];
  }

  *(a1 + 309) = 0;
  if (v4 >= 1)
  {
    __p[0] = (task_resume(v1) | 0x100000000);
    if (SHIBYTE(v24) < 0)
    {
      *__p[1] = 0;
      *&v24 = 0;
    }

    else
    {
      LOBYTE(__p[1]) = 0;
      HIBYTE(v24) = 0;
    }

    v14 = sub_1000104C8(0x2000);
    if (LODWORD(__p[0]))
    {
      v21 = 1;
    }

    else
    {
      v21 = v14;
    }

    if (v21 == 1)
    {
      sub_1000103F8(__p, "::task_resume(target_task = 0x%4.4x)", v15, v16, v17, v18, v19, v20, v1);
    }
  }

  result = LODWORD(__p[0]);
  if (SHIBYTE(v24) < 0)
  {
    v22 = LODWORD(__p[0]);
    operator delete(__p[1]);
    return v22;
  }

  return result;
}

void sub_10004B5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004B5E8(uint64_t a1, task_info_t task_info_out)
{
  if (!task_info_out)
  {
    return 4;
  }

  *__p = 0u;
  v22 = 0u;
  task_info_outCnt = 10;
  v4 = task_info(a1, 0x12u, task_info_out, &task_info_outCnt);
  __p[0] = (v4 | 0x100000000);
  LOBYTE(__p[1]) = 0;
  HIBYTE(v22) = 0;
  v5 = sub_1000104C8(0x2000);
  if (v4)
  {
    v12 = 1;
  }

  else
  {
    v12 = v5;
  }

  if (v12 == 1)
  {
    sub_1000103F8(__p, "::task_info(target_task = 0x%4.4x, flavor = TASK_BASIC_INFO, task_info_out => %p, task_info_outCnt => %u)", v6, v7, v8, v9, v10, v11, a1, task_info_out, task_info_outCnt);
  }

  if (sub_1000104C8(0x2000))
  {
    v13 = sub_1000104C8(1);
    if (LODWORD(__p[0]))
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      v15 = task_info_out[5];
      v16 = task_info_out[6];
      if (sub_100010510())
      {
        v19 = ((v16 / 1000000.0) + v15);
        sub_100010668("task_basic_info = { suspend_count = %i, virtual_size = 0x%8.8llx, resident_size = 0x%8.8llx, user_time = %f, system_time = %f }", *task_info_out, *(task_info_out + 1), *(task_info_out + 3), v19, v19);
      }
    }
  }

  result = LODWORD(__p[0]);
  if (SHIBYTE(v22) < 0)
  {
    v18 = LODWORD(__p[0]);
    operator delete(__p[1]);
    return v18;
  }

  return result;
}

void sub_10004B730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004B754(uint64_t a1)
{
  *__p = 0u;
  v32 = 0u;
  LODWORD(__p[0]) = sub_10003C244(a1 + 64, *(a1 + 16));
  HIDWORD(__p[0]) = 1;
  LOBYTE(__p[1]) = 0;
  HIBYTE(v32) = 0;
  v2 = *(a1 + 304);
  v3 = *(a1 + 296);
  *(a1 + 304) = 0;
  __p[0] = (pthread_cancel(v3) | 0x200000000);
  LOBYTE(__p[1]) = 0;
  HIBYTE(v32) = 0;
  v4 = sub_1000104C8(0x2000);
  if (LODWORD(__p[0]))
  {
    v11 = 1;
  }

  else
  {
    v11 = v4;
  }

  if (v11 == 1)
  {
    sub_1000103F8(__p, "::pthread_cancel(thread = %p)", v5, v6, v7, v8, v9, v10, *(a1 + 296));
  }

  __p[0] = (pthread_join(*(a1 + 296), 0) | 0x200000000);
  if (SHIBYTE(v32) < 0)
  {
    *__p[1] = 0;
    *&v32 = 0;
  }

  else
  {
    LOBYTE(__p[1]) = 0;
    HIBYTE(v32) = 0;
  }

  v12 = sub_1000104C8(0x2000);
  if (LODWORD(__p[0]))
  {
    v19 = 1;
  }

  else
  {
    v19 = v12;
  }

  if (v19 == 1)
  {
    sub_1000103F8(__p, "::pthread_join(thread = %p, value_ptr = NULL)", v13, v14, v15, v16, v17, v18, *(a1 + 296));
  }

  v20 = mach_task_self_;
  __p[0] = (mach_port_deallocate(mach_task_self_, v2) | 0x100000000);
  if (SHIBYTE(v32) < 0)
  {
    *__p[1] = 0;
    *&v32 = 0;
  }

  else
  {
    LOBYTE(__p[1]) = 0;
    HIBYTE(v32) = 0;
  }

  v21 = sub_1000104C8(0x2000);
  if (LODWORD(__p[0]))
  {
    v28 = 1;
  }

  else
  {
    v28 = v21;
  }

  if (v28 == 1)
  {
    sub_1000103F8(__p, "::mach_port_deallocate(task = 0x%4.4x, name = 0x%4.4x)", v22, v23, v24, v25, v26, v27, v20, v2);
    v29 = LODWORD(__p[0]);
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 308) = 0;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  return v29;
}

void sub_10004B8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10004B91C(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = sub_100051EAC(a1 + 24, v5, a2, a4, a3);
  if (sub_100010524(32))
  {
    sub_100010668("MachTask::ReadMemory(addr = 0x%8.8llx, size = %llu, buf = %p) => %llu bytes read", a2, a3, a4, v8);
  }

  if (sub_1000104C8(128) || (v9 = sub_1000104C8(64), a3 <= 8) && v9)
  {
    sub_10000FAA4(v11, a4, v8, 0);
    sub_10000FCA0(v11, 0, v8, a2, 0, 0x10u, 0);
    nullsub_1();
  }

  return v8;
}

unint64_t sub_10004BA0C(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = sub_100052064(a1 + 24, v5, a2, a4, a3);
  if (sub_100010524(32))
  {
    sub_100010668("MachTask::WriteMemory(addr = 0x%8.8llx, size = %llu, buf = %p) => %llu bytes written", a2, a3, a4, v8);
  }

  if (sub_1000104C8(128) || (v9 = sub_1000104C8(64), a3 <= 8) && v9)
  {
    sub_10000FAA4(v11, a4, v8, 0);
    sub_10000FCA0(v11, 0, v8, a2, 0, 0x10u, 0);
    nullsub_1();
  }

  return v8;
}

uint64_t sub_10004BAFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = sub_100051C00(a1 + 24, v4, a2, a3);
  if (sub_100010524(32))
  {
    sub_100010668("MachTask::MemoryRegionInfo(addr = 0x%8.8llx) => %i  (start = 0x%8.8llx, size = 0x%8.8llx, permissions = %u)", a2, v6, *a3, *(a3 + 8), *(a3 + 16));
  }

  return v6;
}

void sub_10004BB84(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v3 = a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    buffer.tv_sec = 0x1900000006;
    v62 = 4;
    if (dword_100074570 == -1)
    {
      if (sysctl(&buffer, 2u, &dword_100074570, &v62, 0, 0))
      {
        return;
      }
    }

    v6 = mach_host_self();
    host_info_outCnt = 4;
    if (host_statistics(v6, 3, &host_info_out, &host_info_outCnt))
    {
      return;
    }
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    return;
  }

  v8 = **(a1 + 8);
  if (sub_10004B5E8(*(a1 + 16), task_info_out))
  {
    return;
  }

  v60 = a3;
  pid = v8;
  if ((v3 & 2) != 0)
  {
    gettimeofday(&buffer, 0);
  }

  v9 = 0;
  v74 = 0;
  v73 = 0;
  v75 = 0;
  if ((v3 & 4) != 0)
  {
    act_list = 0;
    act_listCnt[0] = 0;
    if (task_threads(v7, &act_list, act_listCnt))
    {
      v9 = 0;
      goto LABEL_53;
    }

    if (!act_listCnt[0])
    {
      v9 = 0;
      v23 = 0;
LABEL_52:
      mach_vm_deallocate(mach_task_self_, act_list, v23);
      goto LABEL_53;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      thread_info_outCnt[0] = 6;
      if (thread_info(act_list[v12], 4u, &host_info_outCnt, thread_info_outCnt))
      {
        goto LABEL_17;
      }

      thread_info_outCnt[0] = 10;
      if (thread_info(act_list[v12], 3u, &v62, thread_info_outCnt))
      {
        goto LABEL_17;
      }

      if ((v65 & 2) == 0)
      {
        break;
      }

LABEL_16:
      mach_port_deallocate(mach_task_self_, act_list[v12]);
LABEL_17:
      if (++v12 >= act_listCnt[0])
      {
        v23 = 4 * act_listCnt[0];
        v9 = v10;
        goto LABEL_52;
      }
    }

    v13 = sub_10004EDFC(act_list[v12]);
    v14 = v10;
    v15 = v10 >> 3;
    if (((v10 >> 3) + 1) >> 61)
    {
      sub_100038A60();
    }

    if (v10 >> 3 != -1)
    {
      if (!(((v10 >> 3) + 1) >> 61))
      {
        operator new();
      }

      sub_10003888C();
    }

    *(8 * v15) = v13;
    v10 = 8 * v15 + 8;
    memcpy(0, 0, v14);
    if ((v3 & 8) != 0 && arg)
    {
      if (!proc_pidinfo(pid, 5, arg, &buffer, 112) || !LOBYTE(v84[0]))
      {
        BYTE7(v87) = 0;
        LOBYTE(__p[0]) = 0;
        sub_100044904(&v73, __p);
        if (SBYTE7(v87) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v16 = strlen(v84);
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100048CE0();
      }

      v17 = v16;
      if (v16 >= 0x17)
      {
        operator new();
      }

      BYTE7(v87) = v16;
      if (v16)
      {
        memcpy(__p, v84, v16);
      }

      *(__p + v17) = 0;
      sub_100044904(&v73, __p);
      if (SBYTE7(v87) < 0)
      {
        tv_sec = __p[0];
        goto LABEL_42;
      }
    }

    else
    {
      BYTE7(v82) = 0;
      LOBYTE(buffer.tv_sec) = 0;
      sub_100044904(&v73, &buffer.tv_sec);
      if (SBYTE7(v82) < 0)
      {
        tv_sec = buffer.tv_sec;
LABEL_42:
        operator delete(tv_sec);
      }
    }

LABEL_43:
    v19 = v63 + v62;
    v20 = HIDWORD(v63) + HIDWORD(v62);
    if (HIDWORD(v63) + HIDWORD(v62) > 999999)
    {
      v20 = HIDWORD(v63) + HIDWORD(v62) - 1000000;
      ++v19;
    }

    v21 = v11;
    v22 = v11 >> 3;
    if (((v11 >> 3) + 1) >> 61)
    {
      sub_100038A60();
    }

    if (v11 >> 3 != -1)
    {
      if (!(((v11 >> 3) + 1) >> 61))
      {
        operator new();
      }

      sub_10003888C();
    }

    *(8 * v22) = 1000000 * v19 + v20;
    v11 = 8 * v22 + 8;
    memcpy(0, 0, v21);
    goto LABEL_16;
  }

LABEL_53:
  act_list = 0;
  *thread_info_outCnt = 0;
  *act_listCnt = 0;
  v68 = 0;
  buffer = task_info_out[0];
  v82 = task_info_out[1];
  *&v83 = v77;
  v24 = sub_100040AE4(*(a1 + 8));
  if (sub_100051D2C(a1 + 24, v3, v7, &buffer, v24, pid, &host_info_outCnt, &act_list, act_listCnt, thread_info_outCnt, &v68))
  {
    sub_10004CBD0(&v62);
    if (v3)
    {
      sub_100048938(&v62, "num_cpu:", 8);
      v25 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v25, &buffer, 1);
      sub_100048938(&v62, "host_user_ticks:", 16);
      v26 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v26, &buffer, 1);
      sub_100048938(&v62, "host_sys_ticks:", 15);
      v27 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v27, &buffer, 1);
      sub_100048938(&v62, "host_idle_ticks:", 16);
      v28 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v28, &buffer, 1);
    }

    if ((v3 & 2) != 0)
    {
      sub_100048938(&v62, "elapsed_usec:", 13);
      v29 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v29, &buffer, 1);
      sub_100048938(&v62, "task_used_usec:", 15);
      v30 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v30, &buffer, 1);
    }

    if ((v3 & 4) != 0 && v9)
    {
      v31 = 0;
      if ((v9 >> 3) <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v9 >> 3;
      }

      v33 = "thread_used_id:";
      do
      {
        v34 = sub_100048938(&v62, v33, 15);
        *(v34 + *(*v34 - 24) + 8) = *(v34 + *(*v34 - 24) + 8) & 0xFFFFFFB5 | 8;
        v35 = std::ostream::operator<<();
        *(v35 + *(*v35 - 24) + 8) = *(v35 + *(*v35 - 24) + 8) & 0xFFFFFFB5 | 2;
        LOBYTE(buffer.tv_sec) = 59;
        sub_100048938(v35, &buffer, 1);
        sub_100048938(&v62, "thread_used_usec:", 17);
        v36 = std::ostream::operator<<();
        LOBYTE(buffer.tv_sec) = 59;
        sub_100048938(v36, &buffer, 1);
        if ((v3 & 8) == 0)
        {
          goto LABEL_66;
        }

        sub_100048938(&v62, "thread_used_name:", 17);
        v37 = v73 + 24 * v31;
        v38 = v37[23];
        if (v38 < 0)
        {
          v38 = *(v37 + 1);
          if (v38)
          {
            v37 = *v37;
LABEL_73:
            v39 = v32;
            v40 = v3;
            v41 = v33;
            v42 = v62;
            v43 = &v62 + *(v62 - 24);
            if (*(v43 + 36) == -1)
            {
              std::ios_base::getloc((&v62 + *(v62 - 24)));
              v44 = std::locale::use_facet(&buffer, &std::ctype<char>::id);
              (v44->__vftable[2].~facet_0)(v44, 32);
              std::locale::~locale(&buffer);
              v42 = v62;
            }

            *(v43 + 36) = 48;
            *(&v64[-2] + *(v42 - 24)) = *(&v64[-2] + *(v42 - 24)) & 0xFFFFFFB5 | 8;
            *(&v64[-2] + *(v42 - 24)) = *(&v64[-2] + *(v42 - 24)) & 0xFFFFFF4F | 0x80;
            *(&v64[2] + *(v42 - 24)) = 2;
            do
            {
              ++v37;
              std::ostream::operator<<();
              --v38;
            }

            while (v38);
            v45 = v62;
            *(&v64[-2] + *(v62 - 24)) = *(&v64[-2] + *(v62 - 24)) & 0xFFFFFFB5 | 2;
            v46 = (&v62 + *(v45 - 24));
            if (v46[1].__fmtflags_ == -1)
            {
              std::ios_base::getloc(v46);
              v47 = std::locale::use_facet(&buffer, &std::ctype<char>::id);
              (v47->__vftable[2].~facet_0)(v47, 32);
              std::locale::~locale(&buffer);
            }

            v46[1].__fmtflags_ = 32;
            v33 = v41;
            v3 = v40;
            v32 = v39;
          }
        }

        else if (v37[23])
        {
          goto LABEL_73;
        }

        LOBYTE(buffer.tv_sec) = 59;
        sub_100048938(&v62, &buffer, 1);
LABEL_66:
        ++v31;
      }

      while (v31 != v32);
    }

    if ((v3 & 0x20) != 0)
    {
      sub_100048938(&v62, "total:", 6);
      v48 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v48, &buffer, 1);
    }

    if ((v3 & 0x40) != 0)
    {
      if ((atomic_load_explicit(byte_10047DB90, memory_order_acquire) & 1) == 0)
      {
        sub_1000593A8();
      }

      sub_100048938(&v62, "used:", 5);
      v49 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v49, &buffer, 1);
      if ((v3 & 0x100) != 0)
      {
        sub_100048938(&v62, "anonymous:", 10);
        v50 = std::ostream::operator<<();
        LOBYTE(buffer.tv_sec) = 59;
        sub_100048938(v50, &buffer, 1);
      }

      sub_100048938(&v62, "phys_footprint:", 15);
      v51 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v51, &buffer, 1);
    }

    if ((v3 & 0x8000) != 0)
    {
      sub_100048938(&v62, "mem_cap:", 8);
      v52 = std::ostream::operator<<();
      LOBYTE(buffer.tv_sec) = 59;
      sub_100048938(v52, &buffer, 1);
    }

    if ((v3 & 0x200) != 0 && !proc_pid_rusage(pid, 2, __p))
    {
      mach_absolute_time();
      v85 = 0;
      v83 = 0u;
      memset(v84, 0, sizeof(v84));
      buffer = 0;
      v82 = 0u;
      pm_sample_task_and_pid();
      *(&v84[5] + 4) = v87;
      *(&v84[6] + 4) = vextq_s8(v88, v88, 8uLL);
      *(&v84[16] + 8) = v90;
      *(&v84[17] + 1) = v89;
      pm_energy_impact();
      sub_100048938(&v62, "energy:", 7);
      v53 = std::ostream::operator<<();
      v80 = 59;
      sub_100048938(v53, &v80, 1);
    }

    if ((v3 & 0x400) != 0)
    {
      LODWORD(buffer.tv_sec) = -1;
      LODWORD(__p[0]) = -1;
      if (!proc_get_cpumon_params() && (buffer.tv_sec & 0x80000000) == 0 && (__p[0] & 0x80000000) == 0)
      {
        sub_100048938(&v62, "cpu_cap_p:", 10);
        v54 = std::ostream::operator<<();
        v80 = 59;
        sub_100048938(v54, &v80, 1);
        sub_100048938(&v62, "cpu_cap_t:", 10);
        v55 = std::ostream::operator<<();
        v80 = 59;
        sub_100048938(v55, &v80, 1);
      }
    }

    sub_100048938(&v62, "--end--;", 8);
    std::stringbuf::str();
    if (*(v60 + 23) < 0)
    {
      operator delete(*v60);
    }

    *v60 = buffer;
    v60[2] = v82;
    if (v67 < 0)
    {
      operator delete(v66);
    }

    std::locale::~locale(v64);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  v56 = v73;
  if (v73)
  {
    v57 = v74;
    v58 = v73;
    if (v74 != v73)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v73;
    }

    v74 = v56;
    operator delete(v58);
  }
}

void sub_10004CAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_10003CAEC(&STACK[0x210]);
  if (a17)
  {
    operator delete(a17);
  }

  if (*(a14 + 23) < 0)
  {
    operator delete(*a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10004CBD0(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = a1 + 8;
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  std::locale::locale((a1 + 16));
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_100034D34(v2);
  return a1;
}

void sub_10004CD78(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v2;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10004CDBC(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 16);
  if (result)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = a1;
      result = sub_10004CE10(*v6, a2, 0xAu, 0x2710u);
      *(v7 + 16) = result;
    }
  }

  return result;
}

uint64_t sub_10004CE10(uint64_t a1, uint64_t a2, unsigned int a3, useconds_t a4)
{
  if (!a1)
  {
    return 0;
  }

  *__p = 0u;
  v28 = 0u;
  v6 = mach_task_self_;
  v26 = 0;
  if (!a3)
  {
LABEL_26:
    v11 = 0;
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v4 = a1;
  v8 = a1;
  v25 = a1;
  v9 = 1;
  v10 = a3;
  v11 = 1;
  while (1)
  {
    if (sub_100010510())
    {
      v12 = getpid();
      sub_100010544(0, "[LaunchAttach] (%d) about to task_for_pid(%d)", v12, v4);
    }

    __p[0] = (task_for_pid(v6, v4, &v26) | 0x100000000);
    if (SHIBYTE(v28) < 0)
    {
      *__p[1] = 0;
      *&v28 = 0;
    }

    else
    {
      LOBYTE(__p[1]) = 0;
      HIBYTE(v28) = 0;
    }

    v13 = sub_1000104C8(0x2000);
    v14 = __p[0];
    v15 = LODWORD(__p[0]) || v13;
    if (v15 != 1)
    {
      break;
    }

    if (sub_10001026C(__p))
    {
      v16 = sub_10001026C(__p);
    }

    else
    {
      v16 = "success";
    }

    snprintf(__str, 0x400uLL, "::task_for_pid(target_tport = 0x%4.4x, pid = %d, &task) => err = 0x%8.8x (%s)", v6, v8, v14, v16);
    if (LODWORD(__p[0]))
    {
      if (__str[0])
      {
        std::string::assign(&__p[1], __str);
      }

      else if (SHIBYTE(v28) < 0)
      {
        *__p[1] = 0;
        *&v28 = 0;
      }

      else
      {
        LOBYTE(__p[1]) = 0;
        HIBYTE(v28) = 0;
      }

      if (sub_100010510())
      {
        sub_1000107A0("[LaunchAttach] MachTask::TaskPortForProcessID task_for_pid(%d) failed: %s", v25, __str);
      }
    }

    sub_1000103F8(__p, __str, v17, v18, v19, v20, v21, v22);
    if (!LODWORD(__p[0]))
    {
      break;
    }

    usleep(a4);
    v11 = v9++ < a3;
    if (!--v10)
    {
      goto LABEL_26;
    }
  }

  if (sub_100010510())
  {
    v24 = getpid();
    sub_100010544(0, "[LaunchAttach] (%d) successfully task_for_pid(%d)'ed", v24, v4);
  }

  v4 = v26;
  if (SHIBYTE(v28) < 0)
  {
LABEL_27:
    operator delete(__p[1]);
  }

LABEL_28:
  if (!v11)
  {
    return 0;
  }

  return v4;
}

void sub_10004D060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10004D084(_BOOL8 result)
{
  if (result)
  {
    return sub_10004B5E8(result, task_info_out) == 0;
  }

  return result;
}

BOOL sub_10004D0B8(uint64_t a1, int8x16_t **a2, uint64_t a3)
{
  if (sub_100010524(8))
  {
    sub_100010668("MachTask::%s()", "StartExceptionThread");
  }

  v7 = *(a1 + 16);
  if (!v7 && ((v11 = *(a1 + 8)) == 0 || (v7 = sub_10004CE10(*v11, v6, 0xAu, 0x2710u), (*(a1 + 16) = v7) == 0)) || sub_10004B5E8(v7, task_info_out))
  {
    result = sub_100010510();
    if (!result)
    {
      return result;
    }

    sub_1000107A0("MachTask::%s (): task invalid, exception thread start failed.", "StartExceptionThread");
    return 0;
  }

  v8 = mach_task_self_;
  v9 = (a1 + 304);
  v10 = mach_port_allocate(mach_task_self_, 1u, (a1 + 304));
  *a3 = v10;
  *(a3 + 4) = 1;
  if (*(a3 + 31) < 0)
  {
    **(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (*a3)
    {
      return 0;
    }
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 31) = 0;
    if (v10)
    {
      return 0;
    }
  }

  inserted = mach_port_insert_right(v8, *v9, *v9, 0x14u);
  *a3 = inserted;
  *(a3 + 4) = 1;
  if (*(a3 + 31) < 0)
  {
    **(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (!*a3)
    {
      goto LABEL_19;
    }

    return 0;
  }

  *(a3 + 8) = 0;
  *(a3 + 31) = 0;
  if (inserted)
  {
    return 0;
  }

LABEL_19:
  v14 = (a1 + 64);
  sub_10003C080((a1 + 64), *(a1 + 16));
  v15 = *(a1 + 64);
  if (!v15)
  {
    std::string::assign((a3 + 8), "failed to get exception port info");
    return 0;
  }

  v17 = *a2;
  v16 = a2[1];
  if (*a2 != v16)
  {
    v18 = v16 - v17 - 4;
    if (v18 < 0x3C || v14 < v16 && v17 < a1 + 68)
    {
      goto LABEL_41;
    }

    v19 = (v18 >> 2) + 1;
    v20 = (v17 + 4 * (v19 & 0x7FFFFFFFFFFFFFF8));
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    v22.i32[1] = -1;
    v22.i64[1] = -1;
    v22.i32[0] = *(a1 + 64);
    v23 = v17 + 1;
    v24 = v19 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v22 = vbicq_s8(v22, v23[-1]);
      v21 = vbicq_s8(v21, *v23);
      v23 += 2;
      v24 -= 8;
    }

    while (v24);
    v25 = vandq_s8(v21, v22);
    *v25.i8 = vand_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
    v15 = v25.i32[0] & v25.i32[1];
    *v14 = v25.i32[0] & v25.i32[1];
    v17 = v20;
    if (v19 != (v19 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_41:
      do
      {
        v26 = v17->i32[0];
        v17 = (v17 + 4);
        v15 &= ~v26;
        *v14 = v15;
      }

      while (v17 != v16);
    }
  }

  *a3 = task_set_exception_ports(v7, v15, *v9, -2147483647, 5);
  *(a3 + 4) = 1;
  if (*(a3 + 31) < 0)
  {
    **(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 31) = 0;
  }

  if (sub_1000104C8(8) || *a3)
  {
    sub_1000103F8(a3, "::task_set_exception_ports(task = 0x%4.4x, exception_mask = 0x%8.8x, new_port = 0x%4.4x, behavior = 0x%8.8x, new_flavor = 0x%8.8x)", v27, v28, v29, v30, v31, v32, v7, *v14, *v9, 2147483649, 5);
    if (*a3)
    {
      return 0;
    }
  }

  v33 = pthread_create((a1 + 296), 0, sub_10004D3D0, a1);
  *a3 = v33;
  *(a3 + 4) = 1;
  if (*(a3 + 31) < 0)
  {
    **(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v33 = *a3;
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 31) = 0;
  }

  return v33 == 0;
}

uint64_t sub_10004D3D0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (sub_100010524(8))
  {
    sub_100010668("MachTask::%s(arg = %p) starting thread...", "ExceptionThread", a1);
  }

  pthread_setname_np("exception monitoring thread");
  v19 = 0;
  v3 = pthread_self();
  if (!pthread_getschedparam(v3, &v19, &v20))
  {
    v20.sched_priority = 47;
    v4 = pthread_self();
    pthread_setschedparam(v4, v19, &v20);
  }

  v5 = *(a1 + 16);
  cf = 0;
  if (sub_1000482C8(v2))
  {
    v6 = BKSWatchdogAssertionCreateForPID();
    if (v6)
    {
      cf = v6;
    }
  }

  v7 = 0;
  while ((*(a1 + 304) - 1) <= 0xFFFFFFFD)
  {
    pthread_testcancel();
    __p = 0;
    v27 = 0;
    v28 = 0;
    bzero(v22, 0x80CuLL);
    if (v7)
    {
      v8 = 1282;
    }

    else
    {
      v8 = 1026;
    }

    v9 = sub_10003BC3C(v22, *(a1 + 304), v8, v7 != 0, 0);
    if (v9)
    {
      if (v9 == 268451843)
      {
        if (v7)
        {
          v10 = sub_10004351C(v2);
          v5 = v10;
          if (v10 && !sub_10004B5E8(v10, x))
          {
            if (sub_100010524(8))
            {
              sub_100010668("got a timeout, continuing...");
            }

            v11 = 0;
            v7 = 0;
          }

          else
          {
            if (sub_100010524(8))
            {
              sub_100010668("task has exited...");
            }

            sub_100040BE8(v2, 9u);
            v7 = 0;
            v11 = 1;
          }

          goto LABEL_51;
        }

        goto LABEL_38;
      }

      if (v9 == 268451845)
      {
        if ((*(a1 + 304) - 1) >= 0xFFFFFFFE)
        {
          if (sub_100010524(8))
          {
            sub_100010668("thread cancelled...");
          }

          goto LABEL_41;
        }

        if (!v5 || sub_10004B5E8(v5, x))
        {
          if (sub_100010524(8))
          {
            sub_100010668("task has exited...");
          }

          sub_100040BE8(v2, 9u);
LABEL_41:
          v11 = 1;
          goto LABEL_51;
        }

        v16 = sub_100010524(8);
        v15 = "interrupted, but task still valid, continuing...";
        if (v16)
        {
LABEL_37:
          sub_100010668(v15);
        }
      }

      else
      {
        v14 = sub_100010524(8);
        v15 = "got some other error, do something about it??? nah, continuing for now...";
        if (v14)
        {
          goto LABEL_37;
        }
      }
    }

    else if (sub_10003BD7C(v22, v5))
    {
      v12.i64[0] = v23;
      v12.i64[1] = v24;
      v13 = v12;
      v13.i32[3] = v25;
      v13.i32[1] = v23;
      if ((vminv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v13, v5)))) & 1) == 0)
      {
        goto LABEL_50;
      }

      x[0] = -1;
      if (pid_for_task(v23, x) || *v2 == x[0])
      {
        if (sub_100010524(8))
        {
          sub_100010668("task port changed from 0x%4.4x to 0x%4.4x", v5, v23);
        }

        v5 = v23;
        *(a1 + 16) = v23;
        *(a1 + 309) = *(a1 + 308);
        *(a1 + 308) = 0;
LABEL_50:
        sub_1000433B4(v2, v22);
        v11 = 0;
        ++v7;
        goto LABEL_51;
      }

      if (sub_100010510())
      {
        sub_1000107A0("Got an exec mach message but the pid of the new task and the pid of the old task do not match, something is wrong.");
      }

      goto LABEL_41;
    }

LABEL_38:
    v11 = 0;
LABEL_51:
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    if (v11)
    {
      break;
    }
  }

  if (sub_100010524(8))
  {
    sub_100010668("MachTask::%s (%p): thread exiting...", "ExceptionThread", a1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void sub_10004D7DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10003CE5C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10004D804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10004DD44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D838(uint64_t a1, uint64_t a2)
{
  task_info_outCnt = 4;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v4 = 0;
      if (*a2)
      {
        return -1;
      }

      goto LABEL_7;
    }

    v4 = sub_10004CE10(*v5, a2, 0xAu, 0x2710u);
    *(a1 + 16) = v4;
  }

  if (*a2)
  {
    return -1;
  }

LABEL_7:
  v7 = task_info(v4, 0x11u, task_info_out, &task_info_outCnt);
  *a2 = v7;
  *(a2 + 4) = 1;
  if (*(a2 + 31) < 0)
  {
    **(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v7 = *a2;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 31) = 0;
  }

  if (v7)
  {
    return -1;
  }

  else
  {
    return *task_info_out;
  }
}

mach_vm_address_t sub_10004D8F4(uint64_t a1, mach_vm_size_t size, unsigned int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return -1;
  }

  address = 0;
  if (mach_vm_allocate(v3, &address, size, 1))
  {
    return -1;
  }

  if (mach_vm_protect(v3, address, size, 0, a3 & 4 | (__rbit32(a3) >> 30)))
  {
    mach_vm_deallocate(v3, address, size);
    return -1;
  }

  result = address;
  v8 = *(a1 + 320);
  if (!v8)
  {
LABEL_13:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = v8[4];
      if (address >= v10)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_13;
      }
    }

    if (v10 >= address)
    {
      return result;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_13;
    }
  }
}

BOOL sub_10004DA3C(uint64_t a1, mach_vm_address_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 312);
  if (v3 == (a1 + 320))
  {
    return 0;
  }

  v4 = *(a1 + 312);
  while (v4[4] != a2)
  {
    v5 = v4[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v4[2];
        v7 = *v6 == v4;
        v4 = v6;
      }

      while (!v7);
    }

    v4 = v6;
    if (v6 == (a1 + 320))
    {
      return 0;
    }
  }

  v9 = v4[1];
  if (v9)
  {
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v11 = v4;
    do
    {
      v10 = v11[2];
      v7 = *v10 == v11;
      v11 = v10;
    }

    while (!v7);
  }

  v13 = v4[5];
  if (v3 == v4)
  {
    *(a1 + 312) = v10;
  }

  v14 = *(a1 + 320);
  --*(a1 + 328);
  sub_100009B98(v14, v4);
  operator delete(v4);
  if (!getenv("DEBUGSERVER_ZOMBIE_ALLOCATIONS"))
  {
    return mach_vm_deallocate(v2, a2, v13) == 0;
  }

  mach_vm_protect(v2, a2, v13, 0, 0);
  return 1;
}

void sub_10004DB7C(uint64_t a1)
{
  v2 = a1 + 320;
  sub_100008ED0(a1 + 312, *(a1 + 320));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = v2;
}

uint64_t sub_10004DBB4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_10004DCD0(void *a1)
{
  *a1 = &off_10006D678;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  operator delete();
}

void *sub_10004DD44(void *a1)
{
  *a1 = &off_10006D678;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  return a1;
}

uint64_t sub_10004DD98(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  v7 = ++dword_10047DF98;
  *(a1 + 16) = a5;
  *(a1 + 20) = v7;
  *(a1 + 24) = 1;
  sub_1000108B8((a1 + 32), 2);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = sub_100008E18();
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = a3;
  *(a1 + 376) = 0;
  v12 = 0;
  v8 = sub_100008DB0(&v12);
  v9 = v12;
  *(a1 + 192) = v8;
  *(a1 + 200) = v9;
  *(a1 + 376) = dlsym(0xFFFFFFFFFFFFFFFELL, "_pthread_qos_class_decode");
  v10 = *(a1 + 16);
  if (!v10 || (thread_info_outCnt = 10, thread_info(v10, 3u, (a1 + 96), &thread_info_outCnt)))
  {
    *(a1 + 128) = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
  }

  if (sub_100010524(5))
  {
    sub_100010668("MachThread::MachThread(process = %p, tid = 0x%8.8llx, seq_id = %u)", a1, *(a1 + 8), *(a1 + 20));
  }

  return a1;
}

uint64_t sub_10004DEBC(uint64_t a1)
{
  if (sub_100010524(5))
  {
    sub_100010668("MachThread::~MachThread() for tid = 0x%8.8llx (%u)", *(a1 + 8), *(a1 + 20));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  v2 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  if (pthread_mutex_destroy((a1 + 32)) && !pthread_mutex_unlock((a1 + 32)))
  {
    pthread_mutex_destroy((a1 + 32));
  }

  return a1;
}

void sub_10004DF80(uint64_t a1)
{
  if (sub_100010524(5))
  {
    sub_100010668("MachThread::%s()", "Suspend");
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v9[0] = thread_suspend(v2);
    v9[1] = 1;
    v11 = 0;
    v12 = 0;
    __p = 0;
    if (v9[0])
    {
      sub_1000104C8(4);
    }

    else
    {
      ++*(a1 + 136);
      if (!sub_1000104C8(4))
      {
        return;
      }
    }

    sub_1000103F8(v9, "::thread_suspend (%4.4x)", v3, v4, v5, v6, v7, v8, *(a1 + 16));
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }
  }
}

BOOL sub_10004E038(_DWORD *a1, int a2)
{
  if (sub_100010524(5))
  {
    sub_100010668("MachThread::%s()", "SetSuspendCountBeforeResume");
  }

  *__p = 0u;
  v16 = 0u;
  v4 = a1[4];
  if (v4)
  {
    if (a2)
    {
      v5 = a1 + 24;
      thread_info_outCnt = 10;
      if (thread_info(v4, 3u, a1 + 24, &thread_info_outCnt))
      {
LABEL_6:
        *(v5 + 4) = 0;
        *v5 = 0u;
        *(v5 + 1) = 0u;
        goto LABEL_22;
      }

      v6 = a1[32];
      a1[34] -= v6;
      if (v6 >= 1)
      {
LABEL_10:
        v5 = a1 + 24;
        do
        {
          __p[0] = (thread_resume(a1[4]) | 0x100000000);
          if (SHIBYTE(v16) < 0)
          {
            *__p[1] = 0;
            *&v16 = 0;
          }

          else
          {
            LOBYTE(__p[1]) = 0;
            HIBYTE(v16) = 0;
          }

          if ((sub_1000104C8(4) || LODWORD(__p[0])) && (sub_1000103F8(__p, "::thread_resume (%4.4x)", v7, v8, v9, v10, v11, v12, a1[4]), LODWORD(__p[0])))
          {
            v13 = a1[4];
            if (!v13)
            {
              goto LABEL_6;
            }

            thread_info_outCnt = 10;
            if (thread_info(v13, 3u, a1 + 24, &thread_info_outCnt))
            {
              goto LABEL_6;
            }

            v6 = a1[32];
          }

          else
          {
            --v6;
          }
        }

        while (v6 > 0);
      }
    }

    else
    {
      v6 = a1[34];
      a1[34] = 0;
      if (v6 >= 1)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_22:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  return v4 != 0;
}