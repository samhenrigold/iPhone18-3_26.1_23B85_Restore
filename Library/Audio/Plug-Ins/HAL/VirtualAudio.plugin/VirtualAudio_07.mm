void sub_8A6EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, __int128 buf, __int128 a21, int a22, __int16 a23, __int16 a24, int a25)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v25);
  if (a19)
  {
    sub_1A8C0(a19);
  }

  if (a2 == 3)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v28[2]);
      p_p = __p;
      if (a17 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a21) = 2080;
      *(&a21 + 4) = p_p;
      WORD6(a21) = 2080;
      *(&a21 + 14) = "";
      a24 = 1024;
      a25 = 56;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a17 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v32 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v33 = v32;
      v34 = sub_5544(14);
      v35 = *v34;
      if (!*v34 || !os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v36 = (*(*v33 + 16))(v33);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a21) = 2080;
      *(&a21 + 4) = v36;
      WORD6(a21) = 2080;
      *(&a21 + 14) = "";
      a24 = 1024;
      a25 = 56;
      v37 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v38 = v35;
      v39 = 44;
    }

    else
    {
      v40 = sub_5544(14);
      v41 = *v40;
      if (!*v40 || !os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a21) = 2080;
      *(&a21 + 4) = "";
      WORD6(a21) = 1024;
      *(&a21 + 14) = 56;
      v37 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v38 = v41;
      v39 = 34;
    }

    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, v37, &buf, v39);
  }

LABEL_19:
  __cxa_end_catch();
  if (!a11)
  {
    JUMPOUT(0x8A600);
  }

  JUMPOUT(0x8A5F8);
}

void *sub_8AA24(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  *a1 = &off_6DACD8;
  a1[1] = v5;
  return a1;
}

uint64_t sub_8AA90(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_8AAAC(void *a1)
{
  *a1 = &off_6DD2E0;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_8AAFC(uint64_t a1, int a2)
{
  sub_8AFBC(&v11, (a1 + 32), 71);
  v3 = v11;
  if (v11)
  {
    v4 = sub_5544(17);
    v5 = sub_5544(25);
    v6 = 0;
    *buf = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&buf[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_10:
        v9 = *v4;
        if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "OrientationIODelegate.cpp";
          v16 = 1024;
          v17 = 93;
          v18 = 1024;
          v19 = a2;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Received Device Orientation [%d] Update", buf, 0x18u);
        }

LABEL_13:
        sub_8BD14(&v13, *(v3 + 8), *(v3 + 16));
        v10 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v10);
          sub_8BEE4();
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          sub_8BEE4();
        }

        operator new();
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

    if (*(v4 + 8))
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (v12)
  {
    sub_1A8C0(v12);
  }
}

void sub_8AD00(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_8AD18(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 buf, __int128 a21, int a22, __int16 a23, __int16 a24, int a25)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v26 = __cxa_begin_catch(a1);
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v26[2]);
        p_p = __p;
        if (a15 >= 0)
        {
          p_p = &__p;
        }

        LODWORD(buf) = 136316162;
        *(&buf + 4) = "StandardUtilities.h";
        WORD6(buf) = 1024;
        *(&buf + 14) = 660;
        WORD1(a21) = 2080;
        *(&a21 + 4) = p_p;
        WORD6(a21) = 2080;
        *(&a21 + 14) = "";
        a24 = 1024;
        a25 = 75;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a15 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v30 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v31 = v30;
        v32 = sub_5544(14);
        v33 = *v32;
        if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
        {
          v34 = (*(*v31 + 16))(v31);
          LODWORD(buf) = 136316162;
          *(&buf + 4) = "StandardUtilities.h";
          WORD6(buf) = 1024;
          *(&buf + 14) = 665;
          WORD1(a21) = 2080;
          *(&a21 + 4) = v34;
          WORD6(a21) = 2080;
          *(&a21 + 14) = "";
          a24 = 1024;
          a25 = 75;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).", &buf, 0x2Cu);
        }
      }

      else
      {
        v35 = sub_5544(14);
        v36 = *v35;
        if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 136315906;
          *(&buf + 4) = "StandardUtilities.h";
          WORD6(buf) = 1024;
          *(&buf + 14) = 670;
          WORD1(a21) = 2080;
          *(&a21 + 4) = "";
          WORD6(a21) = 1024;
          *(&a21 + 14) = 75;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).", &buf, 0x22u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x8ACCCLL);
  }

  JUMPOUT(0x8AD08);
}

std::__shared_weak_count *sub_8AFBC(uint64_t *a1, uint64_t *a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = a2[1];
  if (!v5 || (result = std::__shared_weak_count::lock(v5), (a1[1] = result) == 0) || (v8 = *a2, *a1 = *a2, !v8))
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v13 = "StandardUtilities.h";
        v14 = 1024;
        v15 = 284;
        v16 = 2080;
        v17 = "";
        v18 = 1024;
        v19 = a3;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_8B114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_8B144(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_8B198(uint64_t *a1)
{
  v16[0] = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6 = sub_5544(17);
        v7 = sub_5544(25);
        v8 = 0;
        *buf = 0x100000002;
        v9 = *(v6 + 8);
        while (1)
        {
          v10 = *&buf[v8];
          if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
          {
            break;
          }

          v8 += 4;
          if (v8 == 8)
          {
            if ((v9 & 1) == 0)
            {
              goto LABEL_17;
            }

            goto LABEL_12;
          }
        }

        if ((v9 & v10) == 0)
        {
          v6 = v7;
        }

        if (*(v6 + 8))
        {
LABEL_12:
          v11 = *v6;
          if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = (v5 + 24);
            if (*(v5 + 47) < 0)
            {
              v12 = *v12;
            }

            v13 = *(a1 + 4);
            *buf = 136315906;
            *&buf[4] = "OrientationIODelegate.cpp";
            v19 = 1024;
            v20 = 104;
            v21 = 2080;
            v22 = v12;
            v23 = 1024;
            v24 = v13;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Notifying %s about Device Orientation %d", buf, 0x22u);
          }
        }

LABEL_17:
        v17 = *(a1 + 4);
        v14 = *(v5 + 72);
        if (!v14)
        {
          sub_46A74();
        }

        (*(*v14 + 48))(v14, &v17);
      }

      sub_1A8C0(v4);
    }
  }

  return sub_8B144(v16);
}

void sub_8B360(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, __int128 buf, __int128 a19, int a20, __int16 a21, __int16 a22, int a23)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1A8C0(v23);
  if (a2 == 3)
  {
    v26 = __cxa_begin_catch(a1);
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v26[2]);
      p_p = __p;
      if (a16 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a19) = 2080;
      *(&a19 + 4) = p_p;
      WORD6(a19) = 2080;
      *(&a19 + 14) = "";
      a22 = 1024;
      a23 = 107;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a16 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x8B320);
  }

  v30 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v31 = v30;
    v32 = sub_5544(14);
    v33 = *v32;
    if (!*v32 || !os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v34 = (*(*v31 + 16))(v31);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a19) = 2080;
    *(&a19 + 4) = v34;
    WORD6(a19) = 2080;
    *(&a19 + 14) = "";
    a22 = 1024;
    a23 = 107;
    v35 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v36 = v33;
    v37 = 44;
  }

  else
  {
    v38 = sub_5544(14);
    v39 = *v38;
    if (!*v38 || !os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a19) = 2080;
    *(&a19 + 4) = "";
    WORD6(a19) = 1024;
    *(&a19 + 14) = 107;
    v35 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v36 = v39;
    v37 = 34;
  }

  _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, v35, &buf, v37);
  goto LABEL_17;
}

void sub_8B60C(void *a1, unsigned int *a2)
{
  v3 = *a2;
  if ((atomic_load_explicit(&qword_6E84D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E84D8))
  {
    byte_6E84D0 = sub_289AA4();
    __cxa_guard_release(&qword_6E84D8);
  }

  if (byte_6E84D0 == 1)
  {
    v4 = *sub_5544(25);
    v5 = v4;
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "DSPChain.mm";
        v34 = 1024;
        v35 = 2761;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No device orientation based stereo channel swap due to defaults", buf, 0x12u);
      }
    }
  }

  else
  {
    v6 = a1[2];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = a1[1];
        if (v8)
        {
          v25 = v7;
          v30 = v8 + 48;
          v31 = 1;
          sub_26C0(v8 + 48);
          v10 = a1[3];
          for (i = a1[4]; v10 != i; v10 += 2)
          {
            v12 = *v10;
            v11 = v10[1];
            v13 = sub_8BF50(v8, *v10, v11, 0);
            if (!v13)
            {
              v21 = sub_5544(14);
              v22 = sub_468EC(1, *v21, *(v21 + 8));
              v23 = v22;
              if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v33 = "DSPChain.mm";
                v34 = 1024;
                v35 = 2772;
                _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Postcondition failure.");
            }

            v14 = sub_5544(25);
            if (*(v14 + 8))
            {
              v15 = *v14;
              if (v15)
              {
                v16 = v15;
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  sub_22170(v28, v12);
                  v17 = v29;
                  v18 = v28[0];
                  sub_22170(__p, v11);
                  v19 = v28;
                  if (v17 < 0)
                  {
                    v19 = v18;
                  }

                  v20 = __p;
                  if (v27 < 0)
                  {
                    v20 = __p[0];
                  }

                  *buf = 136316162;
                  v33 = "DSPChain.mm";
                  v34 = 1024;
                  v35 = 2774;
                  v36 = 2080;
                  v37 = v19;
                  v38 = 2080;
                  v39 = v20;
                  v40 = 1024;
                  v41 = v3;
                  _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating {%s, %s} with orientation of %d", buf, 0x2Cu);
                  if (v27 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v29 < 0)
                  {
                    operator delete(v28[0]);
                  }
                }
              }
            }

            (*(*v13 + 80))(v13, v11, 0, 0, v3);
          }

          sub_3174(v8 + 48);
          v7 = v25;
        }

        sub_1A8C0(v7);
      }
    }
  }
}

BOOL sub_8BA60(uint64_t a1, AudioUnitParameterID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outValue = 0.0;
  v4 = *(a1 + 72);
  return v4 && AudioUnitGetParameter(*(v4 + 16), a2, a3, a4, &outValue) == 0;
}

uint64_t sub_8BAA4(void *a1, uint64_t a2, AudioUnitScope a3, AudioUnitElement a4, AudioUnitParameterValue a5)
{
  v10 = sub_5544(25);
  if (*(v10 + 8))
  {
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, a2);
        if (v20 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        v13 = (*(*a1 + 168))(a1);
        v14 = v13;
        if (v13)
        {
          v15 = CFGetTypeID(v13);
          if (v15 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        *buf = 136316418;
        v22 = "DSPProcessorManager.cpp";
        v23 = 1024;
        v24 = 527;
        v25 = 2080;
        v26 = v12;
        v27 = 1024;
        v28 = a2;
        v29 = 2112;
        v30 = v14;
        v31 = 2048;
        v32 = a5;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting parameter '%s' (%u) on Audio Unit with name %@ to value %f", buf, 0x36u);
        if (v14)
        {
          CFRelease(v14);
        }

        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v16 = a1[9];
  if (v16)
  {
    return AudioUnitSetParameter(*(v16 + 16), a2, a3, a4, a5, 0);
  }

  else
  {
    return 4294967246;
  }
}

void sub_8BCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  sub_1DB0E0(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_8BD14(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  *a1 = a2;
  if (!this)
  {
    a1[1] = 0;
LABEL_5:
    sub_175EA0();
  }

  v4 = std::__shared_weak_count::lock(this);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

BOOL sub_8BD58(int a1)
{
  if (a1 > 1885500277)
  {
    if (a1 > 1986358382)
    {
      if (a1 == 2020369200)
      {
        return sub_45168();
      }

      v1 = 1986358383;
    }

    else
    {
      if (a1 == 1885500278)
      {
        return sub_45168();
      }

      v1 = 1885826148;
    }
  }

  else
  {
    if (a1 <= 1836281974)
    {
      if (a1 != 1650550370)
      {
        v1 = 1835298935;
        goto LABEL_12;
      }

      return sub_45168();
    }

    if (a1 == 1836281975)
    {
      return sub_45168();
    }

    v1 = 1852073334;
  }

LABEL_12:
  if (a1 == v1)
  {
    return sub_45168();
  }

  return 0;
}

uint64_t sub_8BE08(unsigned int a1, unsigned int a2)
{
  LOBYTE(v2) = a2;
  if (a1 == 1685287015)
  {
    v3 = a2 & 0xFFFFFF00;
    v4 = 0x100000000;
  }

  else
  {
    v5 = sub_72320(&qword_6E6D18, a1, a2);
    if (v5 == &unk_6E6D20)
    {
      v4 = 0;
      LOBYTE(v2) = 0;
      v3 = 0;
    }

    else
    {
      v2 = *(v5 + 9);
      v3 = v2 & 0xFFFFFF00;
      v4 = 0x100000000;
    }
  }

  return v4 | v3 | v2;
}

uint64_t *sub_8BE90(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_8BEE4()
{
  if ((atomic_load_explicit(&qword_709F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709F28))
  {
    qword_709F20 = dispatch_queue_create("VirtualAudioIODelegateQueue", 0);

    __cxa_guard_release(&qword_709F28);
  }
}

uint64_t sub_8BF50(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 48;
  sub_26C0(a1 + 48);
  if (*(a1 + 32) == *(a1 + 24))
  {
LABEL_6:
    v13 = 0;
  }

  else
  {
    v9 = 1;
    while (1)
    {
      v10 = sub_8C098(a1, v9 - 1);
      v11 = v10;
      if (v10)
      {
        if ((*(*v10 + 160))(v10) == a2)
        {
          break;
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 3) <= v9++)
      {
        goto LABEL_6;
      }
    }

    if ((*(*v11 + 64))(v11, a3, a4, 0))
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  sub_3174(v8);
  return v13;
}

uint64_t sub_8C098(uint64_t a1, unsigned int a2)
{
  sub_26C0(a1 + 48);
  v4 = *(a1 + 24);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v4) >> 3) <= a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 24 * a2 + 8);
  }

  sub_3174(a1 + 48);
  return v5;
}

unint64_t sub_8C10C(uint64_t a1)
{
  result = sub_8C098(a1, 0);
  if (result)
  {
    v2 = result;
    v11 = 0;
    v10 = 0;
    if ((*(*result + 40))(result, 3700, &v11, &v10, 0, 0))
    {
      return 0;
    }

    else
    {
      v9 = 0;
      if ((*(*v2 + 48))(v2, 3700, &v9, &v11, 0, 0))
      {
        v3 = 1;
      }

      else
      {
        v3 = v9 == 0;
      }

      if (v3 || (*(*v2 + 40))(v2, 14, &v11, &v10, 0, 0))
      {
        v4 = 0;
        v5 = 0;
        v6 = 0;
      }

      else
      {
        v8 = 0;
        v7 = (*(*v2 + 48))(v2, 14, &v8, &v11, 0, 0);
        v5 = v8 & 0xFFFFFF00;
        v4 = v8;
        if (v7)
        {
          v5 = 0;
          v4 = 0;
        }

        v6 = (v7 == 0) << 32;
      }

      return v6 | v5 | v4;
    }
  }

  return result;
}

uint64_t sub_8C294(uint64_t a1, AudioUnitPropertyID a2, void *outData, UInt32 *ioDataSize, AudioUnitScope inScope, AudioUnitElement inElement)
{
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  return AudioUnitGetProperty(v7, a2, inScope, inElement, outData, ioDataSize);
}

void sub_8C2C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v17 = *(a1 + 32);
  if (v17 == v3)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "DSPGraphChain.cpp";
      v24 = 1024;
      v25 = 275;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  do
  {
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = 0;
    v6 = (*(*v5 + 232))(v5, 1, &v21);
    if (v6)
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "DSPGraphChain.cpp";
        v24 = 1024;
        v25 = 283;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unexpected error from GetBusCount", buf, 0x12u);
      }

      v13 = __cxa_allocate_exception(0x10uLL);
      *v13 = &off_6DDDD0;
      v13[2] = v6;
    }

    for (i = *(a2 + 40); i < v21; ++i)
    {
      v8 = (*(*v5 + 136))(v5, 1, i);
      v9 = *(v8 + 16);
      v19[0] = *v8;
      v19[1] = v9;
      v20 = *(v8 + 32);
      sub_902B0(a2, v19);
      v10 = sub_5544(25);
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_618A4(&v18, v19);
        }
      }
    }

    if (v4)
    {
      sub_1A8C0(v4);
    }

    v3 += 24;
  }

  while (v3 != v17);
}

uint64_t sub_8C708(uint64_t a1, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v6 = *(a1 + 80);
  if (v6)
  {
    AudioConverterDispose(v6);
    *(a1 + 80) = 0;
  }

  outAudioConverter = 0;
  if (sub_5FB04(a2, a3))
  {
    goto LABEL_4;
  }

  v15 = AudioConverterNew(a2, a3, &outAudioConverter);
  v13 = v15;
  if (!v15)
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
    if (mChannelsPerFrame == 1)
    {
      v19 = a3->mChannelsPerFrame;
      if (v19 >= 2)
      {
        v20 = 4 * v19;
        __chkstk_darwin(v15);
        bzero(&v27 - ((v20 + 15) & 0x7FFFFFFF0), v20);
        v21 = AudioConverterSetProperty(outAudioConverter, 0x63686D70u, v20, &v27 - ((v20 + 15) & 0x7FFFFFFF0));
        if (v21)
        {
          v22 = sub_5544(25);
          v23 = *v22;
          if (*v22)
          {
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v31 = "DSPReformatter.cpp";
              v32 = 1024;
              v33 = 93;
              v34 = 1024;
              LODWORD(v35) = v21;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d setting mono channel map property on converter", buf, 0x18u);
            }
          }
        }
      }
    }

    else if (mChannelsPerFrame == 2 && a3->mChannelsPerFrame == 1)
    {
      LODWORD(inPropertyData.__r_.__value_.__l.__data_) = 1;
      v24 = AudioConverterSetProperty(outAudioConverter, 0x646D6978u, 4u, &inPropertyData);
      if (v24)
      {
        v25 = sub_5544(25);
        v26 = *v25;
        if (*v25)
        {
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v31 = "DSPReformatter.cpp";
            v32 = 1024;
            v33 = 101;
            v34 = 1024;
            LODWORD(v35) = v24;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d setting perform downmix property on converter", buf, 0x18u);
          }
        }
      }
    }

LABEL_4:
    v7 = *&a2->mSampleRate;
    v8 = *&a2->mBytesPerPacket;
    *(a1 + 32) = *&a2->mBitsPerChannel;
    *a1 = v7;
    *(a1 + 16) = v8;
    v9 = *&a3->mSampleRate;
    v10 = *&a3->mBitsPerChannel;
    *(a1 + 56) = *&a3->mBytesPerPacket;
    *(a1 + 40) = v9;
    v11 = outAudioConverter;
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    v12 = sub_5544(25);
    if ((*(v12 + 8) & 1) != 0 && *v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
    {
      sub_618A4(&inPropertyData, a1);
    }

    return 0;
  }

  v16 = sub_5544(14);
  v17 = *v16;
  if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "DSPReformatter.cpp";
    v32 = 1024;
    v33 = 82;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", buf, 0x12u);
  }

  return v13;
}

void sub_8CAF0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  _Unwind_Resume(exception_object);
}

void sub_8CB14(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(a1 + 1216))
  {
    if (*(a1 + 1232) == 1)
    {

      sub_909B4(a1, a2, a3, a4, a5, a6, a7);
    }

    else if (*(a1 + 448) == 1)
    {
      WORD1(__p[0]) = *(a1 + 682);
      LOWORD(__p[0]) = *(a1 + 682);
      HIWORD(v35) = *(a1 + 682) == 0;
      LOWORD(v35) = *(a1 + 682);
      v17 = __p[0];
      atomic_compare_exchange_strong((a1 + 680), &v17, v35);
      v18 = 400;
      if (!*(a1 + 682))
      {
        v18 = 424;
      }

      v19 = (a1 + v18);
      v20 = *(a1 + v18 + 8) - *(a1 + v18);
      if (v20)
      {
        v21 = 0;
        v22 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
        v32 = v22 - 1;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        v24 = 8;
        v25 = 16;
        do
        {
          v26 = a5;
          if (v21)
          {
            v26 = (*(a1 + 984) + v25 - 16);
          }

          v27 = a7;
          if (v32 != v21)
          {
            v27 = (*(a1 + 984) + v25);
          }

          v28 = *v26;
          v36 = *v27;
          v29 = *v19;
          if ((*(**(*v19 + v24) + 224))(*(*v19 + v24)))
          {
            __p[0] = v28;
            __p[1] = 0;
            if (a4 >= 2)
            {
              __p[1] = a5[1];
            }

            (*(**(v29 + v24) + 120))(*(v29 + v24), a2, a3);
          }

          else if (v36)
          {
            (*(**(v29 + v24) + 112))(*(v29 + v24), a2, a3);
          }

          ++v21;
          v24 += 24;
          v25 += 32;
        }

        while (v23 != v21);
      }
    }
  }

  else
  {
    if (a6)
    {
      v10 = 0;
      v11 = a6;
      do
      {
        v12 = a7[v10];
        mNumberBuffers = v12->mNumberBuffers;
        if (mNumberBuffers)
        {
          v14 = 0;
          p_mData = &v12->mBuffers[0].mData;
          do
          {
            if (*p_mData)
            {
              bzero(*p_mData, *(p_mData - 1));
              mNumberBuffers = v12->mNumberBuffers;
            }

            ++v14;
            p_mData += 2;
          }

          while (v14 < mNumberBuffers);
        }

        ++v10;
      }

      while (v10 != v11);
    }

    v16 = sub_5544(14);
    if (*(a1 + 735) < 0)
    {
      sub_54A0(__p, *(a1 + 712), *(a1 + 720));
    }

    else
    {
      *__p = *(a1 + 712);
      v38 = *(a1 + 728);
    }

    v30 = __p;
    if (v38 < 0)
    {
      v30 = __p[0];
    }

    sub_51E48(1, v16, "", 288, "", "ERROR: HAL Speaker Protection is not available for DSP chain %s", v30);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_8CE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 936) & 0xFFFFFFFDLL) == 1)
  {
    sub_8D290(&v19, (a1 + 944), "", 684);
    v6 = v19;
    if ((*(*v19 + 88))(v19, 0) > **(a1 + 984))
    {
      v7 = (*(*v6 + 96))(v6, 0);
      (*(*v7 + 120))(v7, *(a1 + 1008));
      **(a1 + 1008) = (*(*a1 + 104))(a1);
      sub_61EEC(a1, 1);
      v8 = *(a4 + 16);
      *buf = *a4;
      *&buf[16] = v8;
      v21 = *(a4 + 32);
      v9 = *(a1 + 1008);
      v10 = *(v9 + 4);
      v11 = v9[1];
      v22 = *v9;
      v23 = v11;
      v24 = v10;
      memset(__p, 0, sizeof(__p));
      sub_638B0(__p, buf, &v25, 2);
    }

    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_Simple.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 685;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v12 = sub_5544(14);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AggregateDevice_Simple.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 682;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v14, "Precondition failure.");
}

void sub_8D22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  __cxa_free_exception(v14);
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count *sub_8D290(uint64_t *a1, uint64_t *a2, char *a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = a2[1];
  if (!v7 || (result = std::__shared_weak_count::lock(v7), (a1[1] = result) == 0) || (v10 = *a2, *a1 = *a2, !v10))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v14 = strrchr(a3, 47);
        if (v14)
        {
          v13 = v14 + 1;
        }

        else
        {
          v13 = a3;
        }
      }

      else
      {
        v13 = 0;
      }

      *buf = 136315906;
      v17 = "StandardUtilities.h";
      v18 = 1024;
      v19 = 284;
      v20 = 2080;
      v21 = v13;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_8D404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_8D434(std::mutex *a1, int a2, unsigned int a3)
{
  sub_4DFC0(a1);
  v6 = 272;
  if (a2)
  {
    v6 = 296;
  }

  v7 = (&a1->__m_.__sig + v6);
  if (a3 >= ((v7[1] - *v7) >> 4))
  {
    v18 = a3;
    v9 = sub_5544(14);
    v10 = sub_468EC(1, *v9, *(v9 + 8));
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (a2)
        {
          v13 = "output";
        }

        else
        {
          v13 = "input";
        }

        sub_53E8(__p, v13);
        v14 = __p[0];
        if (v20 >= 0)
        {
          v14 = __p;
        }

        v15 = (v7[1] - *v7) >> 4;
        *buf = 136316162;
        v22 = "Device_HAL_Common.mm";
        v23 = 1024;
        v24 = 377;
        v25 = 1024;
        v26 = v18;
        v27 = 2080;
        v28 = v14;
        v29 = 2048;
        v30 = v15;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::range_error): Requested index %u, but %s stream has only %lu streams.", buf, 0x2Cu);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_36E9A8(exception, "Requested index %u, but %s stream has only %lu streams.", v17, __p[0], __p[1]);
  }

  return *(*v7 + 16 * a3);
}

uint64_t sub_8D634(uint64_t a1, int a2)
{
  v2 = 272;
  if (a2)
  {
    v2 = 296;
  }

  return (*(a1 + v2 + 8) - *(a1 + v2)) >> 4;
}

uint64_t sub_8D684(uint64_t a1, AudioUnitScope inScope, void *outData)
{
  if (inScope - 3 <= 0xFFFFFFFD)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "DSPProcessorManager.cpp";
      v14 = 1024;
      v15 = 834;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input");
  }

  v12 = 4;
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  Property = AudioUnitGetProperty(v4, 0xBu, inScope, 0, outData, &v12);
  if (Property)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "DSPProcessorManager.cpp";
        v14 = 1024;
        v15 = 836;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", &v12, 0x12u);
      }
    }
  }

  return Property;
}

uint64_t sub_8D850(uint64_t a1, int a2, unsigned int a3)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "DSPProcessorManager.cpp";
      v19 = 1024;
      v20 = 585;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input");
  }

  v3 = 112;
  if (a2 == 1)
  {
    v3 = 88;
  }

  v4 = (a1 + v3);
  v5 = *(a1 + v3);
  if (0xAAAAAAAAAAAAAAABLL * ((v4[1] - v5) >> 4) <= a3)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v12 = -1431655765 * ((v4[1] - *v4) >> 4);
      *buf = 136316162;
      v18 = "DSPProcessorManager.cpp";
      v19 = 1024;
      v20 = 589;
      v21 = 1024;
      v22 = a3;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = a2;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): inElement (%u) cannot exceed bus count (%u) for scope: %u", buf, 0x24u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(v13, "inElement (%u) cannot exceed bus count (%u) for scope: %u", v14, a3, *buf);
  }

  return v5 + 48 * a3;
}

uint64_t sub_8DA94(uint64_t a1)
{
  v2 = a1 + 48;
  v12 = a1 + 48;
  v13 = 1;
  sub_26C0(a1 + 48);
  v11 = 0;
  for (i = *(a1 + 24); i != *(a1 + 32); i += 24)
  {
    v4 = (*(**(i + 8) + 256))(*(i + 8), 2, 0, &v11);
    if (v4)
    {
      v7 = sub_5544(14);
      v8 = sub_468EC(1, *v7, *(v7 + 8));
      v9 = v8;
      if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "DSPChain.mm";
        v16 = 1024;
        v17 = 1884;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stat) [error stat is an error]: Unexpected error from HasStaticChannelCountForBus", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v4;
    }

    v5 = v11;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  sub_3174(v2);
  return v5;
}

void sub_8DC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_8DC7C(void *a1, AudioUnitScope inScope, unsigned int a3, _BYTE *a4)
{
  *a4 = 0;
  if (inScope - 3 <= 0xFFFFFFFD)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      ioDataSize = 136315394;
      v35 = "DSPProcessorManager.cpp";
      v36 = 1024;
      v37 = 748;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input", &ioDataSize, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input");
  }

  outData = 0;
  ioDataSize = 4;
  v8 = a1[9];
  if (v8)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  Property = AudioUnitGetProperty(v9, 0xBu, inScope, 0, &outData, &ioDataSize);
  if (Property)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      ioDataSize = 136315394;
      v35 = "DSPProcessorManager.cpp";
      v36 = 1024;
      v37 = 751;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", &ioDataSize, 0x12u);
    }

    v13 = sub_5544(25);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v15 = (*(*a1 + 160))(a1);
      sub_22170(v31, v15);
      v16 = v32;
      v17 = v31[0];
      sub_22170(__p, Property);
      v18 = v31;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if (v30 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      ioDataSize = 136316162;
      v35 = "DSPProcessorManager.cpp";
      v36 = 1024;
      v37 = 761;
      v38 = 2080;
      v39 = v18;
      v40 = 1024;
      v41 = Property;
      v42 = 2080;
      v43 = v19;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP (%s) static channel query failed with error: (%d) %s", &ioDataSize, 0x2Cu);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }
  }

  else
  {
    if (outData <= a3)
    {
      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        ioDataSize = 136315650;
        v35 = "DSPProcessorManager.cpp";
        v36 = 1024;
        v37 = 752;
        v38 = 1024;
        LODWORD(v39) = inScope;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): inElement cannot exceed bus count for scope: %u", &ioDataSize, 0x18u);
      }

      v27 = __cxa_allocate_exception(0x10uLL);
      sub_1DE494(v27, "inElement cannot exceed bus count for scope: %u", v28);
    }

    v20 = 14;
    if (inScope == 1)
    {
      v20 = 11;
    }

    *a4 = *(a1[v20] + 48 * a3 + 40);
  }

  return Property;
}

uint64_t sub_8E078(uint64_t a1)
{
  v2 = 1;
  if ((*(a1 + 468) & 0x20) != 0)
  {
    v2 = *(a1 + 484);
  }

  sub_26C0(a1 + 48);
  v3 = *(a1 + 32) - *(a1 + 24);
  if (v3)
  {
    v4 = 0;
    v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    do
    {
      v7 = 0;
      v8 = *(a1 + 24) + 24 * v4;
      v9 = 1;
      do
      {
        v10 = v7;
        v11 = (*(**(v8 + 8) + 136))(*(v8 + 8), v9, 0);
        if ((*(v11 + 12) & 0x20) != 0)
        {
          v12 = *(v11 + 28);
          if (v12 <= v2)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v2)
          {
            goto LABEL_13;
          }

          v12 = 1;
        }

        v2 = v12;
LABEL_13:
        v9 = 2;
        v7 = 1;
      }

      while ((v10 & 1) == 0);
      ++v4;
    }

    while (v4 != v6);
  }

  sub_3174(a1 + 48);
  return v2;
}

uint64_t sub_8E1AC(uint64_t a1, AudioUnitPropertyID a2, UInt32 *outDataSize, BOOL *a4, AudioUnitScope inScope, AudioUnitElement inElement)
{
  outWritable = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  result = AudioUnitGetPropertyInfo(v8, a2, inScope, inElement, outDataSize, &outWritable);
  if (a4)
  {
    *a4 = outWritable != 0;
  }

  return result;
}

BOOL sub_8E21C(uint64_t a1)
{
  ioDataSize = 4;
  v1 = *(a1 + 72);
  if (v1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  outData = 0;
  return AudioUnitGetProperty(v2, 0x15u, 0, 0, &outData, &ioDataSize) || outData == 0;
}

double sub_8E280(OpaqueAudioComponentInstance *a1)
{
  ioDataSize = 8;
  if (a1)
  {
    a1 = *(a1 + 2);
  }

  outData = 0.0;
  Property = AudioUnitGetProperty(a1, 0xCu, 0, 0, &outData, &ioDataSize);
  result = outData;
  if (Property)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_8E2F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2288C(v11);
  v4 = *(a1 + 136);
  for (i = *(a1 + 144); v4 != i; v4 += 8)
  {
    (*(**v4 + 208))(v16);
    if ((v17 & 0x80u) == 0)
    {
      v6 = v16;
    }

    else
    {
      v6 = v16[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = v16[1];
    }

    sub_22564(&v12, v6, v7);
    std::ios_base::getloc((&v12 + *(v12 - 24)));
    v8 = std::locale::use_facet(&v18, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  sub_8E878(a2, v11);
  v12 = v9;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_8E574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275074(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8E5B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2288C(v14);
  sub_22170(__p, 1685287015);
  if ((v13 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v5 = v13;
  }

  else
  {
    v5 = __p[1];
  }

  sub_22564(&v15, v4, v5);
  sub_22564(&v15, " ", 1);
  v6 = std::ostream::operator<<();
  sub_22564(v6, " ", 1);
  v7 = (*(*a1 + 136))(a1);
  if (v7 == 1684234860)
  {
    v8 = "dB";
  }

  else
  {
    v8 = "Scalar";
  }

  if (v7 == 1684234860)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

  sub_22564(v6, v8, v9);
  sub_22564(v6, " ", 1);
  std::ostream::operator<<();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  sub_8E878(a2, v14);
  v15 = v10;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

const void *sub_8E878(void *a1, uint64_t a2)
{
  result = sub_22C94(a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

std::string *sub_8E920(std::string *a1, uint64_t a2, int a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  v6 = *(a2 + 8);
  if (v6 != a2)
  {
    while (1)
    {
      if (a3)
      {
        sub_FC33C(__p, v6 + 16);
        v7 = v16 >= 0 ? __p : __p[0];
        v8 = v16 >= 0 ? HIBYTE(v16) : __p[1];
        std::string::append(a1, v7, v8);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        sub_88A00(&v13, (v6 + 16), "", 3185);
        v9 = v13;
        os_unfair_lock_lock(v13 + 132);
        if (SHIBYTE(v9[145]._os_unfair_lock_opaque) < 0)
        {
          sub_54A0(__p, *&v9[140]._os_unfair_lock_opaque, *&v9[142]._os_unfair_lock_opaque);
        }

        else
        {
          *__p = *&v9[140]._os_unfair_lock_opaque;
          v16 = *&v9[144]._os_unfair_lock_opaque;
        }

        os_unfair_lock_unlock(v9 + 132);
        if (v16 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        if (v16 >= 0)
        {
          v11 = HIBYTE(v16);
        }

        else
        {
          v11 = __p[1];
        }

        std::string::append(a1, v10, v11);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }

        if (v14)
        {
          sub_1A8C0(v14);
        }
      }

      v6 = *(v6 + 8);
      if (v6 == a2)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_8EAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_8EB20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v10 = sub_5544(17);
  if ((*(v10 + 8) & 1) != 0 && *v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    sub_618A4(&__p, a4);
  }

  v11 = *(a1 + 24);
  if (qword_6FCB80 != -1)
  {
    dispatch_once(&qword_6FCB80, &stru_6C4FA0);
  }

  if (off_6FCBA8)
  {
    v12 = off_6FCBA8(v11, a3, a2, a5 ^ 1u, a4, 4096);
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = -1;
  }

  v13 = sub_5544(17);
  v14 = *v13;
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    *buf = 136315906;
    v18 = "AggregateDevice.h";
    v19 = 1024;
    v20 = 718;
    v21 = 1024;
    v22 = v12;
    v23 = 2080;
    v24 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d setting node format: %s", buf, 0x22u);
  }
}

uint64_t sub_8ED8C(uint64_t a1, unint64_t *a2)
{
  if (memcmp(a1, a2, 0x24uLL) || memcmp((a1 + 40), a2 + 5, 0x24uLL) || memcmp((a1 + 80), a2 + 10, 0x24uLL) || memcmp((a1 + 120), a2 + 15, 0x24uLL) || *(a1 + 192) != a2[24] || !sub_65A20(*(a1 + 160), a2[20]))
  {
    return 0;
  }

  v4 = *(a1 + 176);
  v5 = a2[22];

  return sub_65A20(v4, v5);
}

void sub_8EE40(void *result)
{
  if (*(result + 448) != 1)
  {
    return;
  }

  v2 = sub_8C10C(result);
  if (HIDWORD(v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = 24;
  }

  v69.mSampleRate = *sub_649C8(result);
  *&v69.mFormatID = xmmword_517260;
  *&v69.mBytesPerFrame = xmmword_517270;
  memset(v68, 0, 64);
  v66 = 0;
  v67 = 0uLL;
  sub_8FCCC(&v66, 4uLL);
  v64 = 0;
  v65 = 0uLL;
  sub_8FCCC(&v64, 2uLL);
  sub_9001C(inInputData, &v69, v3);
  (*(*result + 200))(&v58, result);
  if (v60 != v59)
  {
    v4 = v61 / 0x66;
    v5 = *(v59 + 8 * v4) - 4080 * v4 + 40 * v61;
    v6 = *(v59 + 8 * ((v62 + v61) / 0x66)) - 4080 * ((v62 + v61) / 0x66) + 40 * (v62 + v61);
    if (v5 != v6)
    {
      v7 = *v5;
      v8 = *(v5 + 16);
      v74 = *(v5 + 32);
      v73[0] = v7;
      v73[1] = v8;
      v9 = v67;
      if (v67 >= *(&v67 + 1))
      {
        v11 = (v67 - v66) >> 4;
        if ((v11 + 1) >> 60)
        {
          sub_189A00();
        }

        v12 = (*(&v67 + 1) - v66) >> 3;
        if (v12 <= v11 + 1)
        {
          v12 = v11 + 1;
        }

        if (*(&v67 + 1) - v66 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        *&buf.mBitsPerChannel = &v66;
        if (v13)
        {
          sub_2CAE8C(v13);
        }

        buf.mSampleRate = 0.0;
        *&buf.mFormatID = 16 * v11;
        *&buf.mBytesPerPacket = 16 * v11;
        *&buf.mBytesPerFrame = 0;
        sub_9001C((16 * v11), v73, v3);
        *&buf.mBytesPerPacket += 16;
        v14 = (v66 + *&buf.mFormatID - v67);
        sub_90200(v66, v67, v14);
        v15 = v66;
        v16 = *(&v67 + 1);
        v66 = v14;
        v55 = *&buf.mBytesPerPacket;
        v67 = *&buf.mBytesPerPacket;
        *&buf.mBytesPerPacket = v15;
        *&buf.mBytesPerFrame = v16;
        *&buf.mSampleRate = v15;
        *&buf.mFormatID = v15;
        sub_8FD7C(&buf);
        v10 = v55;
      }

      else
      {
        sub_9001C(v67, v73, v3);
        v10 = v9 + 16;
      }

      *&v67 = v10;
      sub_1DC9A4(1uLL);
    }
  }

  v57[0] = 0;
  v17 = sub_907D4(result);
  if (!v17)
  {
    v41 = sub_5544(14);
    v42 = sub_468EC(1, *v41, *(v41 + 8));
    v43 = v42;
    if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "DSPChain.mm";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1667;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *&v73[0] = result + 6;
  BYTE8(v73[0]) = 1;
  sub_26C0((result + 6));
  v18 = *(result[3] + 24 * v17 - 16);
  v19 = (*(*v18 + 232))(v18, 2, v57);
  if (v19)
  {
    v37 = sub_5544(14);
    v38 = sub_468EC(1, *v37, *(v37 + 8));
    v39 = v38;
    if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "DSPChain.mm";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1674;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unexpected error from GetBusCount", &buf, 0x12u);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    *v40 = &off_6DDDD0;
    v40[2] = v19;
  }

  v20 = v57[0];
  sub_3174((result + 6));
  if (v20 > 1)
  {
    v45 = sub_5544(14);
    v46 = sub_468EC(1, *v45, *(v45 + 8));
    v47 = v46;
    if (v46 && os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "DSPChain.mm";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1619;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &buf, 0x12u);
    }

LABEL_57:

    v50 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v50, "Invariant failure.");
  }

  if (v20 == 1)
  {
    v21 = sub_65088(result);
    v22 = v65;
    if (v65 >= *(&v65 + 1))
    {
      v24 = (v65 - v64) >> 4;
      if ((v24 + 1) >> 60)
      {
        sub_189A00();
      }

      v25 = (*(&v65 + 1) - v64) >> 3;
      if (v25 <= v24 + 1)
      {
        v25 = v24 + 1;
      }

      if (*(&v65 + 1) - v64 >= 0x7FFFFFFFFFFFFFF0uLL)
      {
        v26 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      *&buf.mBitsPerChannel = &v64;
      if (v26)
      {
        sub_2CAE8C(v26);
      }

      buf.mSampleRate = 0.0;
      *&buf.mFormatID = 16 * v24;
      *&buf.mBytesPerPacket = 16 * v24;
      *&buf.mBytesPerFrame = 0;
      sub_9001C((16 * v24), v21, v3);
      *&buf.mBytesPerPacket += 16;
      v27 = (v64 + *&buf.mFormatID - v65);
      sub_90200(v64, v65, v27);
      v28 = v64;
      v29 = *(&v65 + 1);
      v64 = v27;
      v56 = *&buf.mBytesPerPacket;
      v65 = *&buf.mBytesPerPacket;
      *&buf.mBytesPerPacket = v28;
      *&buf.mBytesPerFrame = v29;
      *&buf.mSampleRate = v28;
      *&buf.mFormatID = v28;
      sub_8FD7C(&buf);
      v23 = v56;
    }

    else
    {
      sub_9001C(v65, v21, v3);
      v23 = (v22 + 16);
    }

    *&v65 = v23;
    if (v23 != v64)
    {
      sub_1DC9A4(1uLL);
    }

    sub_269EF8();
  }

  if (!v62)
  {
    v48 = sub_5544(14);
    v49 = sub_468EC(1, *v48, *(v48 + 8));
    v47 = v49;
    if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "DSPChain.mm";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1626;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &buf, 0x12u);
    }

    goto LABEL_57;
  }

  v30 = inInputData[0];
  mDataByteSize = inInputData[0]->mBuffers[0].mDataByteSize;
  if (mDataByteSize <= 0x5F)
  {
    v51 = sub_5544(14);
    v52 = sub_468EC(1, *v51, *(v51 + 8));
    v53 = v52;
    if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "DSPChain.mm";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 1631;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &buf, 0x12u);
    }

    v54 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v54, "Invariant failure.");
  }

  bzero(inInputData[0]->mBuffers[0].mData, mDataByteSize);
  mData = v30->mBuffers[0].mData;
  *mData = *"";
  mData[1] = unk_519228;
  mData[2] = xmmword_519238;
  mData[3] = unk_519248;
  mData[4] = xmmword_519258;
  mData[5] = unk_519268;
  v33 = *(v59 + 8 * (v61 / 0x66)) - 4080 * (v61 / 0x66) + 40 * v61;
  buf = v69;
  v34 = *v33;
  v35 = *(v33 + 16);
  v36 = *(v33 + 32);
  *&v71.mBytesPerPacket = v35;
  *&v71.mSampleRate = v34;
  *&v71.mBitsPerChannel = v36;
  v72 = 0;
  sub_8C708(&buf, &buf, &v71);
  sub_90828(v72, v3, inInputData[0], 0x100000CFEEDFACFLL);
  (*(*result + 168))(result, v68, v3, 0, 0, 0, 0);
  sub_6AD0C(result);
  sub_914D8(&buf);
  sub_91510(&v58);
  sub_5D988(inInputData);
  *&buf.mSampleRate = &v64;
  sub_915DC(&buf);
  operator delete(0);
  *&buf.mSampleRate = &v66;
  sub_915DC(&buf);
}

void sub_8F8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_91510(&a20);
  sub_5D988(&a26);
  if (v34)
  {
    operator delete(v34);
  }

  a20 = &a28;
  sub_915DC(&a20);
  if (v35)
  {
    operator delete(v35);
  }

  a20 = &a31;
  sub_915DC(&a20);
  _Unwind_Resume(a1);
}

uint64_t *sub_8FCCC(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    sub_2CAE8C(a2);
  }

  return result;
}

void sub_8FD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_8FD7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8FD7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    sub_5D988((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_8FDCC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (qword_6FCB80 != -1)
  {
    dispatch_once(&qword_6FCB80, &stru_6C4FA0);
  }

  if (off_6FCB90)
  {
    v3 = off_6FCB90(v2);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = -1;
  }

  v4 = sub_5544(17);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "AggregateDevice.h";
    v10 = 1024;
    v11 = 724;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d initializing issue detector", &v8, 0x18u);
  }

LABEL_10:
  if (*(a1 + 32) == 1)
  {
    v6 = sub_5544(17);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
      {
        v8 = 136315394;
        v9 = "AggregateDevice.h";
        v10 = 1024;
        v11 = 725;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Issue detector is bypassed. Audio analysis errors will be silenced. ", &v8, 0x12u);
      }
    }
  }
}

uint64_t sub_8FF68(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v4 = a3;
  if (!a3)
  {
    v4 = *a2;
  }

  v6 = malloc_type_calloc(1uLL, (16 * v4) | 8, 0x10800404ACF7207uLL);
  if (v6)
  {
    *v6 = v4;
    *a1 = v6;
    *(a1 + 8) = 2;
    if (v4)
    {
      v9 = *a2;
      v8 = (a2 + 4);
      v7 = v9;
      v10 = v4;
      v11 = v6 + 4;
      do
      {
        if (!v7)
        {
          break;
        }

        *(v11 - 1) = *(v8 - 1);
        v12 = *v8;
        v8 += 2;
        *v11 = v12;
        v11 += 2;
        --v7;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
LABEL_10:
    *a1 = 0;
    *(a1 + 8) = 2;
  }

  return a1;
}

unsigned int **sub_9001C(unsigned int **a1, uint64_t a2, int a3)
{
  if ((*(a2 + 12) & 0x20) != 0)
  {
    v6 = *(a2 + 28);
    if (!v6)
    {
LABEL_12:
      *a1 = 0;
      *(a1 + 2) = 0;
      return a1;
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = malloc_type_calloc(1uLL, (16 * v6) | 8u, 0x10800404ACF7207uLL);
  if (!v7)
  {
    goto LABEL_12;
  }

  *v7 = v6;
  *a1 = v7;
  *(a1 + 2) = 1;
  if (!a3)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "VAAudioBufferList.cpp";
      v20 = 1024;
      v21 = 57;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): data buffer frame size must be non-zero", &v18, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "data buffer frame size must be non-zero");
  }

  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 24);
  if ((*(a2 + 12) & 0x20) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a2 + 28);
  }

  v12 = (v10 * a3);
  do
  {
    v13 = &v7[v8];
    v13[2] = v11;
    v13[3] = v12;
    *(v13 + 2) = malloc_type_calloc(1uLL, v12, 0x473B1AD9uLL);
    ++v9;
    v7 = *a1;
    v8 += 4;
  }

  while (v9 < **a1);
  return a1;
}

void sub_90200(unsigned int **a1, unsigned int **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = a3 + v6 * 8;
      *v7 = 0;
      *(v7 + 8) = 0;
      sub_5D7F4((a3 + v6 * 8), &v5[v6]);
      v6 += 2;
    }

    while (&v5[v6] != a2);
    do
    {
      sub_5D988(v5);
      v5 += 2;
    }

    while (v5 != a2);
  }
}

__n128 sub_902B0(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 102 * ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x66)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1DC9A4(v12);
    }

    a1[4] = v7 - 102;
    v16 = *v5;
    a1[1] = (v5 + 1);
    sub_1DC8A0(a1, &v16);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = v5[v8 / 0x66] - 4080 * (v8 / 0x66) + 40 * v8;
  result = *a2;
  v15 = *(a2 + 16);
  *(v13 + 32) = *(a2 + 32);
  *v13 = result;
  *(v13 + 16) = v15;
  ++a1[5];
  return result;
}

void sub_907A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_907D4(uint64_t a1)
{
  sub_26C0(a1 + 48);
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  sub_3174(a1 + 48);
  return 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
}

void sub_90828(OpaqueAudioConverter *a1, UInt32 a2, AudioBufferList *inInputData, AudioBufferList *outOutputData)
{
  if (a1)
  {

    AudioConverterConvertComplexBuffer(a1, a2, inInputData, outOutputData);
  }

  else
  {
    v14 = 0;
    if (sub_5DCB8(&inInputData->mNumberBuffers, outOutputData, &v14))
    {
      if (!v14)
      {
        v6 = outOutputData->mNumberBuffers >= inInputData->mNumberBuffers ? inInputData->mNumberBuffers : outOutputData->mNumberBuffers;
        if (v6)
        {
          p_mData = &outOutputData->mBuffers[0].mData;
          v8 = &inInputData->mBuffers[0].mData;
          do
          {
            if (*p_mData != *v8)
            {
              v9 = *(p_mData - 1);
              v10 = *(v8 - 1);
              v11 = v9 >= v10 ? v10 : v9;
              if (v11)
              {
                memcpy(*p_mData, *v8, v11);
              }
            }

            p_mData += 2;
            v8 += 2;
            --v6;
          }

          while (v6);
        }
      }
    }

    else
    {
      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "DSPReformatter.cpp";
        v17 = 1024;
        v18 = 149;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: No converter in place even though buffer lists differ in structure", buf, 0x12u);
      }
    }
  }
}

void sub_909B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(a1 + 448) == 1)
  {
    WORD1(v154[0]) = *(a1 + 682);
    LOWORD(v154[0]) = *(a1 + 682);
    WORD1(v153) = *(a1 + 682) == 0;
    LOWORD(v153) = *(a1 + 682);
    v8 = v154[0];
    atomic_compare_exchange_strong((a1 + 680), &v8, v153);
    v9 = 400;
    if (!*(a1 + 682))
    {
      v9 = 424;
    }

    v10 = (a1 + v9);
    v11 = *(a1 + v9 + 8) - *(a1 + v9);
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
      v15 = v14 - 1;
      if (v14 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v14;
      }

      v17 = 8;
      do
      {
        v18 = *v10;
        v19 = (*(**(*v10 + v17) + 136))(*(*v10 + v17), 1, 0);
        v20 = (*(**(v18 + v17) + 136))(*(v18 + v17), 2, 0);
        if (v13)
        {
          v21 = *(*(a1 + 984) + v12);
          v154[0] = v21;
          if (v21)
          {
            sub_A5B24(v21, *(v19 + 24) * a3);
          }
        }

        else
        {
          v154[0] = 0;
        }

        if (v15 == v13)
        {
          v153 = 0;
          v22 = a7;
        }

        else
        {
          v22 = a7;
          v23 = *(*(a1 + 984) + v12 + 16);
          v153 = v23;
          if (v23)
          {
            sub_A5B24(v23, *(v20 + 24) * a3);
            if (v153)
            {
              v22 = &v153;
            }

            else
            {
              v22 = a7;
            }
          }
        }

        v24 = v154[0];
        if ((*(**(v18 + v17) + 224))(*(v18 + v17)))
        {
          if (v24)
          {
            v25 = v154;
          }

          else
          {
            v25 = a5;
          }

          (*(**(v18 + v17) + 120))(*(v18 + v17), a2, a3, a4, v25, a6, v22);
        }

        else
        {
          (*(**(v18 + v17) + 112))(*(v18 + v17), a2, a3, *v22);
        }

        ++v13;
        v12 += 32;
        v17 += 24;
      }

      while (v16 != v13);
    }
  }

  v26 = a1;
  v27 = *(a1 + 1160);
  if (v27)
  {
    v28 = v27 + 17;
    v29 = atomic_load(v27 + 17);
    v30 = v29 & 1;
    v31 = atomic_load(v27 + 16);
    v32 = v30;
    atomic_compare_exchange_strong(v27 + 17, &v32, v31 & 1);
    if (v32 == v30)
    {
      caulk::mach::semaphore::signal_all_or_error((v27 + 96));
    }

    v33 = atomic_load(v28);
    if (v33)
    {
      if (*(a1 + 448) == 1)
      {
        WORD1(v154[0]) = *(a1 + 682);
        LOWORD(v154[0]) = *(a1 + 682);
        WORD1(v153) = *(a1 + 682) == 0;
        LOWORD(v153) = *(a1 + 682);
        v34 = v154[0];
        atomic_compare_exchange_strong((a1 + 680), &v34, v153);
        v35 = 400;
        if (!*(a1 + 682))
        {
          v35 = 424;
        }

        v36 = (*(a1 + v35 + 8) - *(a1 + v35)) >> 3;
        v37 = (*(***(a1 + 1160) + 136))(**(a1 + 1160), 1, 0);
        v38 = *(*(a1 + 984) + 0x5555555555555560 * v36 - 16);
        v154[0] = v38;
        sub_A5B24(v38, *(v37 + 24) * a3);
        v39 = *a7;
        mNumberBuffers = (*a7)->mNumberBuffers;
        if (mNumberBuffers)
        {
          v41 = 0;
          mBuffers = v39->mBuffers;
          v43 = (*a7)->mNumberBuffers;
          do
          {
            mNumberChannels = mBuffers->mNumberChannels;
            ++mBuffers;
            v41 += mNumberChannels;
            --v43;
          }

          while (v43);
        }

        else
        {
          v41 = 0;
        }

        v48 = *v38;
        if (v48)
        {
          v49 = 0;
          v50 = (v38 + 2);
          do
          {
            v51 = *v50;
            v50 += 4;
            v49 += v51;
            --v48;
          }

          while (v48);
          if (v41 && v49)
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = v39->mBuffers;
            if (v41 >= v49)
            {
              v41 = v49;
            }

            do
            {
              if (mNumberBuffers)
              {
                v58 = 0;
                p_mNumberChannels = &v57->mNumberChannels;
                v60 = v52;
                while (1)
                {
                  v61 = *p_mNumberChannels;
                  p_mNumberChannels += 4;
                  v62 = v60 - v61;
                  if (v60 < v61)
                  {
                    break;
                  }

                  ++v58;
                  v60 = v62;
                  if (mNumberBuffers == v58)
                  {
                    v60 = v55;
                    goto LABEL_52;
                  }
                }

                v56 = v58;
LABEL_52:
                v63 = 0;
                v64 = v57;
                v65 = v52;
                while (1)
                {
                  v66 = v64->mNumberChannels;
                  ++v64;
                  v67 = v65 - v66;
                  if (v65 < v66)
                  {
                    break;
                  }

                  ++v63;
                  v65 = v67;
                  if (mNumberBuffers == v63)
                  {
                    v55 = v60;
                    goto LABEL_57;
                  }
                }

                v54 = v63;
                v55 = v60;
                v53 = v65;
              }

LABEL_57:
              v68 = &v38[4 * v54 + 2];
              v69 = *v68;
              v70 = v68[1];
              v71 = 4 * v69;
              if (4 * v69 <= v70)
              {
                v72 = &v57[v56];
                v73 = v72->mNumberChannels;
                v74 = (*(v68 + 1) + 4 * v53);
                v75 = 4 * v69;
                v76 = v72->mData + 4 * v55;
                v77 = v70 / v71;
                do
                {
                  *v74 = *v76;
                  v74 = (v74 + v75);
                  v76 += v73;
                  --v77;
                }

                while (v77);
              }

              v52 = (v52 + 1);
            }

            while (v52 < v41);
          }
        }

        v45 = *(a1 + 1160);
        v47 = v154;
        v46 = a2;
      }

      else
      {
        v45 = *(a1 + 1160);
        v47 = a5;
        v46 = a2;
      }

      sub_2C1E1C(v45, v46, a3, v47, a7);
    }
  }

  v78 = *(a1 + 1168);
  if (v78)
  {
    if (*(v78 + 12))
    {
      v79 = *a7;
      v80 = *v78;
      v81 = v78[1];
      if ((*(v78 + 68) & 0x20) != 0 && v79->mNumberBuffers != (v81 - v80) >> 7)
      {
        v139 = sub_5544(25);
        sub_51E48(1, v139, "", 2704, "", "Meters could not process input data: %u", -50);
        return;
      }

      if (v81 != v80)
      {
        v82 = 0;
        v140 = a3;
        v83 = v79->mBuffers;
        v84 = byte_6E4D80;
        v145 = a3 - (v79 & 0xFFFFFFFC);
        v85 = *(v78 + 17);
        v86 = *v78;
        v87 = (v78[1] - *v78) >> 7;
        v88 = vdupq_n_s64(0x3CD203AF9EE75616uLL);
        v89 = vdupq_n_s64(0x430C6BF526340000uLL);
        v152 = v79->mBuffers;
        v148 = byte_6E4D80;
        v143 = v87;
        v141 = v89;
        v142 = v88;
        do
        {
          if ((v85 & 0x20) != 0)
          {
            v90 = v82;
          }

          else
          {
            v90 = 0;
          }

          if ((v85 & 0x20) != 0)
          {
            v91 = 0;
          }

          else
          {
            v91 = v82;
          }

          if ((v85 & 0x20) != 0)
          {
            v92 = 1;
          }

          else
          {
            v92 = *(v78 + 21);
          }

          v93 = (v80 + (v82 << 7));
          mData = v83[v90].mData;
          if (*(v93 + 12) != a3)
          {
            if (*(v93 + 1) == 0.0)
            {
              *(v93 + 8) = xmmword_517250;
              *(v93 + 4) = 0x3FEFFEF71A09F35FLL;
              v95 = 0.999937347;
              v96 = 0.999873687;
            }

            else
            {
              v95 = *(v93 + 2);
              v96 = *(v93 + 4);
            }

            *(v93 + 3) = 1.0 - pow(v95, v140);
            *(v93 + 5) = 1.0 - pow(v96, v140);
            *(v93 + 12) = a3;
            v83 = v152;
            v84 = v148;
            v87 = v143;
            v89 = v141;
            v88 = v142;
          }

          v97 = &mData[4 * v91];
          if ((v97 & 0xF) != 0 || ((v92 == 1) & v84) == 0)
          {
            v99 = *(v93 + 8);
            v100 = 0.0;
            v101 = a3;
          }

          else
          {
            v102 = *(v93 + 5);
            v103 = 0uLL;
            if ((a3 + 3) >= 7)
            {
              v104 = &mData[4 * v91];
              v105 = a3 / 4;
              do
              {
                v106 = *v104++;
                v103 = vmaxq_f32(v103, vabsq_f32(v106));
                v102 = vmlaq_f32(v102, vdupq_n_s32(0x3DEAEB81u), vsubq_f32(vmulq_f32(v106, v106), v102));
                --v105;
              }

              while (v105);
              v97 += 4 * (a3 / 4 - 1) + 4;
            }

            if (v103.f32[1] > v103.f32[0])
            {
              v103.f32[0] = v103.f32[1];
            }

            if (v103.f32[2] > v103.f32[0])
            {
              v103.f32[0] = v103.f32[2];
            }

            if (v103.f32[3] <= v103.f32[0])
            {
              v100 = v103.f32[0];
            }

            else
            {
              v100 = v103.f32[3];
            }

            v99 = ((vaddv_f32(*v102.f32) + v102.f32[2]) + v102.f32[3]) * 0.25;
            v107 = vabsq_f32(v102);
            v108 = vcvt_hight_f64_f32(v107);
            v109 = vcvtq_f64_f32(*v107.f32);
            *(v93 + 5) = vandq_s8(v102, vuzp1q_s32(vandq_s8(vcgtq_f64(v109, v88), vcgtq_f64(v89, v109)), vandq_s8(vcgtq_f64(v108, v88), vcgtq_f64(v89, v108))));
            v101 = v145;
          }

          if (v101 >= 1)
          {
            do
            {
              v110 = *v97;
              if (*v97 < 0.0)
              {
                v110 = -*v97;
              }

              if (v110 > v100)
              {
                v100 = v110;
              }

              v99 = v99 + ((v110 * v110) - v99) * 0.03;
              v97 += v92;
              --v101;
            }

            while (v101);
          }

          if (v100 > *(v93 + 13))
          {
            *(v93 + 13) = v100;
          }

          if (v99 != 0.0 && fabs(v99) == INFINITY)
          {
            v93[56] = 1;
            v99 = 0.0;
            v100 = 1.0;
          }

          v111 = *v93;
          if (v111 == 1)
          {
            v112.f64[0] = v100;
          }

          else
          {
            v113 = *(v93 + 13);
            v112.f64[0] = v100;
            if (v113 > v112.f64[0])
            {
              v112.f64[0] = v113 + (v112.f64[0] - v113) * *(v93 + 5);
            }
          }

          v114 = *(v93 + 25) + a3;
          *(v93 + 25) = v114;
          v115 = *(v93 + 15);
          if (v114 >= (*(v93 + 1) * 0.907029478))
          {
            v115 = v115 - v115 * *(v93 + 3);
          }

          if (v115 < v112.f64[0])
          {
            *(v93 + 25) = 0;
            v115 = v112.f64[0];
          }

          v116 = sqrt(v99) * 1.41421356;
          if ((v111 & 1) == 0)
          {
            v117 = *(v93 + 14);
            if (v117 > v116)
            {
              v116 = v117 + (v116 - v117) * *(v93 + 5);
            }
          }

          if (v116 > v115)
          {
            v116 = v115;
          }

          v118 = fabs(v99);
          if (v118 >= 1.0e15 || v118 <= 1.0e-15)
          {
            v99 = 0.0;
          }

          *(v93 + 8) = v99;
          v112.f64[1] = v116;
          v120 = vabsq_f64(v112);
          *(v93 + 104) = vandq_s8(v112, vandq_s8(vcgtq_f64(v120, v88), vcgtq_f64(v89, v120)));
          v121 = fabs(v115);
          if (v121 >= 1.0e15 || v121 <= 1.0e-15)
          {
            v123 = 0.0;
          }

          else
          {
            v123 = v115;
          }

          *(v93 + 15) = v123;
          ++v82;
          v80 = v86;
        }

        while (v82 < v87);
        v26 = a1;
        v78 = *(a1 + 1168);
      }
    }

    v124 = *v78;
    v125 = v78[1];
    if (*v78 != v125)
    {
      v126 = v78[17];
      do
      {
        v127 = *(v124 + 112);
        if (v127 <= 0.000001)
        {
          v129 = 3270508544;
        }

        else
        {
          *&v128 = log10(v127) * 20.0;
          v129 = v128;
        }

        v130 = *(v124 + 120);
        if (v130 <= 0.000001)
        {
          v132 = 0xC2F0000000000000;
        }

        else
        {
          *&v131 = log10(v130) * 20.0;
          v132 = v131 << 32;
        }

        v133 = *(v124 + 52);
        *v126 = v132 | v129;
        v126[1] = v133;
        v126 += 2;
        *(v124 + 56) = 0;
        *(v124 + 52) = 0;
        v124 += 128;
      }

      while (v124 != v125);
    }

    v134 = v78[17];
    if (v134 != v78[18])
    {
      v135 = *(v26 + 456);
      v136 = 0.0;
      if (v135 > 0.0)
      {
        v136 = a3 / v135;
      }

      v137 = *v134;
      v138 = **(v26 + 1176);
      if (qword_6EB708 != -1)
      {
        dispatch_once(&qword_6EB708, &stru_6BD028);
      }

      if (off_6EB790)
      {
        off_6EB790(v138, 0, a2, v137, v136);
      }
    }
  }
}

uint64_t sub_9145C(uint64_t a1, AudioTimeStamp *inTimeStamp, UInt32 inNumberFrames, UInt32 inNumberInputBufferLists, const AudioBufferList **inInputBufferLists, UInt32 inNumberOutputBufferLists, AudioBufferList **ioOutputBufferLists)
{
  ioActionFlags = 512;
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  return AudioUnitProcessMultiple(v8, &ioActionFlags, inTimeStamp, inNumberFrames, inNumberInputBufferLists, inInputBufferLists, inNumberOutputBufferLists, ioOutputBufferLists);
}

uint64_t sub_914B8(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return AudioUnitReset(v2, 0, 0);
}

uint64_t sub_914D8(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    AudioConverterDispose(v2);
    *(a1 + 80) = 0;
  }

  return a1;
}

uint64_t sub_91510(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 51;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 102;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_915DC(unsigned int ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 2;
        sub_5D988(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_91660(uint64_t a1)
{
  sub_8BEE4();
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t *sub_916FC(uint64_t a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

std::__shared_weak_count *sub_917BC(uint64_t *a1, uint64_t *a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = a2[1];
  if (!v5 || (result = std::__shared_weak_count::lock(v5), (a1[1] = result) == 0) || (v8 = *a2, *a1 = *a2, !v8))
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v13 = "StandardUtilities.h";
        v14 = 1024;
        v15 = 284;
        v16 = 2080;
        v17 = "";
        v18 = 1024;
        v19 = a3;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_91914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_91944(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v31 = a1;
  v32 = v2;
  v33 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_917BC(&v36, &v32, 137);
  v3 = v36;
  if (v36)
  {
    v5 = *(v36 + 8);
    v4 = *(v36 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_921B4(&v34);
    if (v4)
    {
      v6 = v34;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = std::__shared_weak_count::lock(v4);
      if (v7 && v5)
      {
        v8 = sub_5544(25);
        v9 = *v8;
        if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
        {
          if (*(v5 + 47) < 0)
          {
            sub_54A0(__p, *(v5 + 24), *(v5 + 32));
          }

          else
          {
            *__p = *(v5 + 24);
            v39 = *(v5 + 40);
          }

          v14 = __p;
          if (v39 < 0)
          {
            v14 = __p[0];
          }

          *buf = 136315650;
          v43 = "SpeakerInterferenceMitigationIODelegate.cpp";
          v44 = 1024;
          v45 = 54;
          v46 = 2080;
          v47 = v14;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Adding speaker interference mitigation IO delegate %s", buf, 0x1Cu);
          if (SHIBYTE(v39) < 0)
          {
            operator delete(__p[0]);
          }
        }

        std::mutex::lock(v6);
        v16 = (v6 + 72);
        v15 = *(v6 + 72);
        if (v15)
        {
          v17 = (v6 + 72);
          do
          {
            v18 = sub_6F834(v15 + 4, (v3 + 24));
            if ((v18 & 0x80u) == 0)
            {
              v17 = v15;
            }

            v15 = *(v15 + ((v18 >> 4) & 8));
          }

          while (v15);
          if (v16 != v17)
          {
            if ((sub_6F834((v3 + 24), v17 + 4) & 0x80) == 0)
            {
              atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v19 = v17[8];
              v17[7] = v5;
              v17[8] = v4;
              if (v19)
              {
                std::__shared_weak_count::__release_weak(v19);
              }

              goto LABEL_66;
            }

            if ((sub_6F834((v3 + 24), v17 + 4) & 0x80) == 0)
            {
              if ((sub_6F834(v17 + 4, (v3 + 24)) & 0x80) == 0)
              {
                v40 = v17;
                v41 = v17;
                goto LABEL_64;
              }

              v25 = v17[1];
              if (v25)
              {
                v26 = v17[1];
                do
                {
                  v27 = v26;
                  v26 = *v26;
                }

                while (v26);
              }

              else
              {
                v28 = v17;
                do
                {
                  v27 = v28[2];
                  v23 = *v27 == v28;
                  v28 = v27;
                }

                while (!v23);
              }

              if (v27 == v16 || (v29 = v17[1], v30 = sub_6F834((v3 + 24), v27 + 4), v25 = v29, v30 < 0))
              {
                if (v25)
                {
                  v41 = v27;
                  v17 = v27;
                }

                else
                {
                  v41 = v17++;
                }

                goto LABEL_63;
              }

LABEL_59:
              v17 = sub_6F86C(v6 + 64, &v41, (v3 + 24));
LABEL_63:
              v17 = *v17;
LABEL_64:
              if (!v17)
              {
                operator new();
              }

LABEL_66:
              std::mutex::unlock(v6);
              v24 = atomic_load((v6 + 88));
              sub_92664(v5, v24 & 1);
            }
          }

          v15 = *v17;
        }

        else
        {
          v17 = (v6 + 72);
        }

        v20 = v17;
        if (*(v6 + 64) == v17)
        {
          goto LABEL_60;
        }

        if (v15)
        {
          v21 = v15;
          do
          {
            v20 = v21;
            v21 = v21[1];
          }

          while (v21);
        }

        else
        {
          v22 = v17;
          do
          {
            v20 = v22[2];
            v23 = *v20 == v22;
            v22 = v20;
          }

          while (v23);
        }

        if ((sub_6F834(v20 + 4, (v3 + 24)) & 0x80) != 0)
        {
LABEL_60:
          if (v15)
          {
            v41 = v20;
            v17 = v20 + 1;
          }

          else
          {
            v41 = v17;
          }

          goto LABEL_63;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v7 = 0;
    }

    v10 = sub_5544(25);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 47) >= 0)
      {
        v12 = v3 + 24;
      }

      else
      {
        v12 = *(v3 + 24);
      }

      *buf = 136315650;
      v43 = "SpeakerInterferenceMitigationIODelegate.cpp";
      v44 = 1024;
      v45 = 69;
      v46 = 2080;
      v47 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add speaker interference mitigation IO delegate for chain %s to central callback handler", buf, 0x1Cu);
    }

    if (v7)
    {
      sub_1A8C0(v7);
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    else if (!v4)
    {
LABEL_23:
      if (v35)
      {
        sub_1A8C0(v35);
      }

      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      goto LABEL_27;
    }

    std::__shared_weak_count::__release_weak(v4);
    goto LABEL_23;
  }

LABEL_27:
  if (v37)
  {
    sub_1A8C0(v37);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  return sub_8BE90(&v31);
}

void sub_91E54(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void **__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 buf, __int128 a29, int a30, __int16 a31, __int16 a32, int a33)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_92704(&a22);
  std::mutex::unlock(v35);
  sub_1A8C0(v34);
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  if (a15)
  {
    sub_1A8C0(a15);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  if (a21)
  {
    sub_1A8C0(a21);
  }

  if (a2 == 3)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = sub_5544(14);
    v40 = *v39;
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v38[2]);
      p_p = __p;
      if (a19 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a29) = 2080;
      *(&a29 + 4) = p_p;
      WORD6(a29) = 2080;
      *(&a29 + 14) = "";
      a32 = 1024;
      a33 = 141;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_25:
    __cxa_end_catch();
    JUMPOUT(0x91AF4);
  }

  v42 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v43 = v42;
    v44 = sub_5544(14);
    v45 = *v44;
    if (!*v44 || !os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v46 = (*(*v43 + 16))(v43);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a29) = 2080;
    *(&a29 + 4) = v46;
    WORD6(a29) = 2080;
    *(&a29 + 14) = "";
    a32 = 1024;
    a33 = 141;
    v47 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v48 = v45;
    v49 = 44;
  }

  else
  {
    v50 = sub_5544(14);
    v51 = *v50;
    if (!*v50 || !os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a29) = 2080;
    *(&a29 + 4) = "";
    WORD6(a29) = 1024;
    *(&a29 + 14) = 141;
    v47 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v48 = v51;
    v49 = 34;
  }

  _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, v47, &buf, v49);
  goto LABEL_25;
}

void sub_921B4(void *a1)
{
  if (!qword_6E6790 || (v2 = std::__shared_weak_count::lock(qword_6E6790)) == 0 || !qword_6E6788)
  {
    operator new();
  }

  *a1 = qword_6E6788;
  a1[1] = v2;
}

void sub_92398(_Unwind_Exception *a1)
{
  sub_20D854(&v2[4].~__shared_weak_count);
  std::mutex::~mutex(v3);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(a1);
}

void sub_92664(uint64_t a1, char a2)
{
  sub_8BEE4();
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

char **sub_92704(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_ED13C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_92750(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_927A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v10 = a1;
  v11[0] = v1;
  v11[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  v12 = *(a1 + 16);
  sub_917BC(&v15, v11, 178);
  v4 = v15;
  if (v15)
  {
    v5 = sub_5544(25);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      if (*(v4 + 47) < 0)
      {
        sub_54A0(__p, *(v4 + 24), *(v4 + 32));
      }

      else
      {
        *__p = *(v4 + 24);
        v14 = *(v4 + 40);
      }

      v7 = __p;
      if (v14 < 0)
      {
        v7 = __p[0];
      }

      v18 = "SpeakerInterferenceMitigationIODelegate.cpp";
      v19 = 1024;
      v20 = 184;
      v8 = "true";
      *buf = 136315906;
      if (!v3)
      {
        v8 = "false";
      }

      v21 = 2080;
      v22 = v7;
      v23 = 2080;
      v24 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Handling speaker interference mitigation IO delegate for chain %s. Mitigating? %s", buf, 0x26u);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_92E50(v4 + 48, v3);
  }

  if (v16)
  {
    sub_1A8C0(v16);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_92750(&v10);
}

void sub_92948(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, __int128 buf, __int128 a23, int a24, __int16 a25, __int16 a26, int a27)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a21)
  {
    sub_1A8C0(a21);
  }

  if (a2 == 3)
  {
    v29 = __cxa_begin_catch(a1);
    v30 = sub_5544(14);
    v31 = *v30;
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v29[2]);
      p_p = __p;
      if (a18 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a23) = 2080;
      *(&a23 + 4) = p_p;
      WORD6(a23) = 2080;
      *(&a23 + 14) = "";
      a26 = 1024;
      a27 = 187;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a18 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v33 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v34 = v33;
      v35 = sub_5544(14);
      v36 = *v35;
      if (!*v35 || !os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v37 = (*(*v34 + 16))(v34);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a23) = 2080;
      *(&a23 + 4) = v37;
      WORD6(a23) = 2080;
      *(&a23 + 14) = "";
      a26 = 1024;
      a27 = 187;
      v38 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v39 = v36;
      v40 = 44;
    }

    else
    {
      v41 = sub_5544(14);
      v42 = *v41;
      if (!*v41 || !os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a23) = 2080;
      *(&a23 + 4) = "";
      WORD6(a23) = 1024;
      *(&a23 + 14) = 187;
      v38 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v39 = v42;
      v40 = 34;
    }

    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, v38, &buf, v40);
  }

LABEL_19:
  __cxa_end_catch();
  if (!a11)
  {
    JUMPOUT(0x92910);
  }

  JUMPOUT(0x92908);
}

void sub_92C20(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v15 = v7 + 48;
        v16 = 1;
        sub_47BD8(v7 + 48);
        v8 = *sub_5544(25);
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            if (*(v7 + 735) < 0)
            {
              sub_54A0(__p, *(v7 + 712), *(v7 + 720));
            }

            else
            {
              *__p = *(v7 + 712);
              v14 = *(v7 + 728);
            }

            v11 = __p;
            if (v14 < 0)
            {
              v11 = __p[0];
            }

            *buf = 136315906;
            v18 = "DSPChain.mm";
            v19 = 1024;
            v20 = 2796;
            v21 = 2080;
            v22 = v11;
            v23 = 1024;
            v24 = v4;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating graph %s with speaker interference mitigation state: %d", buf, 0x22u);
            if (SHIBYTE(v14) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v12.n128_u64[0] = 0;
        if (v4)
        {
          v12.n128_f32[0] = 1.0;
        }

        (*(*v7 + 72))(v7, 1685287015, 1717789543, 0, v12);
        sub_47C90(v7 + 48);
      }

      sub_1A8C0(v6);
    }
  }
}

void sub_92E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_216C10(va);
  sub_1A8C0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_92E50(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_46A74();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_92EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v10 = sub_8BE08(a2, a3);
  if (HIDWORD(v10))
  {
    v18 = v10;
    if (sub_8BD58(v10))
    {
      v19 = *(a1 + 1216);
      if (!v19)
      {
        v22 = sub_5544(14);
        v23 = *v22;
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 735) < 0)
          {
            sub_54A0(__dst, *(a1 + 712), *(a1 + 720));
          }

          else
          {
            *__dst = *(a1 + 712);
            v29 = *(a1 + 728);
          }

          v24 = __dst;
          if (v29 < 0)
          {
            v24 = __dst[0];
          }

          *buf = 136315650;
          v31 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
          v32 = 1024;
          v33 = 124;
          v34 = 2080;
          v35 = v24;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): HAL Speaker Protection is not available for DSP chain %s", buf, 0x1Cu);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "HAL Speaker Protection is not available for DSP chain %s");
      }

      v20 = *(v19 + 16);
      v21 = *(v19 + 148);

      return sub_1DC770(v20, v21, v18, a5);
    }

    else
    {

      return sub_93214(a1, 1685287015, v18, a4, a5);
    }
  }

  else
  {
    v11 = sub_5544(25);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__dst, a2);
      v13 = SHIBYTE(v29);
      v14 = __dst[0];
      sub_22170(__p, a3);
      v15 = __dst;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v27 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315906;
      v31 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
      v32 = 1024;
      v33 = 135;
      v34 = 2080;
      v35 = v15;
      v36 = 2080;
      v37 = v16;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d TranslateToDSPGraphParameter failure for AU subtype %s as graph parameter %s", buf, 0x26u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    return 4294967246;
  }
}

uint64_t sub_93214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v10 = sub_8BE08(a2, a3);
  v11 = sub_5544(25);
  v12 = *v11;
  if (HIDWORD(v10))
  {
    if (v12 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v27, a3);
      if (v28 >= 0)
      {
        v18 = v27;
      }

      else
      {
        v18 = v27[0];
      }

      sub_22170(__p, a2);
      v19 = v26;
      v20 = __p[0];
      sub_22170(v23, v10);
      v21 = __p;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v24 >= 0)
      {
        v22 = v23;
      }

      else
      {
        v22 = v23[0];
      }

      *buf = 136316162;
      v30 = "DSPGraphChain.cpp";
      v31 = 1024;
      v32 = 252;
      v33 = 2080;
      v34 = v18;
      v35 = 2080;
      v36 = v21;
      v37 = 2080;
      v38 = *&v22;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Translatating DSPParameter <%s, %s> as graph parameter %s", buf, 0x30u);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    return sub_96EBC(a1, 1685287015, v10, a4, a5);
  }

  else
  {
    if (v12 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v27, a3);
      v13 = v28;
      v14 = v27[0];
      sub_22170(__p, a2);
      v15 = v27;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v26 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136316162;
      v30 = "DSPGraphChain.cpp";
      v31 = 1024;
      v32 = 257;
      v33 = 2080;
      v34 = v15;
      v35 = 2080;
      v36 = v16;
      v37 = 2048;
      v38 = a5;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting DSPParameter %s for AU subtype %s: %f", buf, 0x30u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    return sub_96EBC(a1, a2, a3, a4, a5);
  }
}

void sub_934E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9352C(uint64_t a1, unsigned int a2, const void *a3)
{
  if (!a1)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "HP_HardwarePlugInInterface.cpp";
      v23 = 1024;
      v24 = 676;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceStop: no plug-in", __p, 0x12u);
    }

    v18 = 1852797029;
LABEL_24:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v18;
  }

  sub_2820();
  v5 = sub_3D90(a2);
  if (!v5 || ((v6 = v5, v7 = *(v5 + 12), v7 != 1633773415) ? (v8 = v7 == 1633969526) : (v8 = 1), !v8))
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "HP_HardwarePlugInInterface.cpp";
        v23 = 1024;
        v24 = 680;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceStop: no device with given ID", __p, 0x12u);
      }
    }

    v18 = 560227702;
    goto LABEL_24;
  }

  v9 = sub_5544(5);
  v10 = sub_5544(32);
  v11 = 0;
  *__p = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&__p[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      goto LABEL_14;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

LABEL_14:
  (*(*v6 + 112))(__p, v6);
  if (v25 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = *__p;
  }

  sub_51E48(3, v9, "", 683, "", "Client request to stop IO proc ID %p on VAD: '%s'.", a3, v14);
  if (v25 < 0)
  {
    operator delete(*__p);
  }

  (*(*v6 + 392))(v6, a3);
  return 0;
}

void sub_93AE8(uint64_t a1, uint64_t a2)
{
  if (!a2 || sub_552D0(a1, a2))
  {
    operator new();
  }

  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2)
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "HP_Device.cpp";
      v7 = 1024;
      v8 = 1281;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): IOProc wasn't previously added", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 1852797029;
}

NSObject *sub_93D0C(uint64_t a1)
{
  v2 = atomic_load((a1 + 200));
  if (v2 == pthread_self())
  {
    v11 = 0;
    v3 = sub_42A2A8(a1 + 208, &v11);
    v4 = v11;
    if (v11 != v3)
    {
      v5 = sub_5544(14);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v13 = "IOMonitor.h";
          v14 = 1024;
          v15 = 68;
          v16 = 1024;
          v17 = v3;
          v18 = 1024;
          v19 = v4;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: By definition, the IO thread is singular and not reentrant. As a result, it is a deep logic error if the IO thread already owns mIOThreadCallingNormalMutex. trySucceeded (%u) and outWasLocked (%u) imply this logic error.", buf, 0x1Eu);
        }
      }
    }
  }

  else
  {
    if (!sub_42A43C(a1))
    {
      v8 = sub_5544(14);
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v13 = "IOMonitor.h";
          v14 = 1024;
          v15 = 59;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Could not take io monitor core lock in the normal thread.", buf, 0x12u);
        }
      }
    }

    if (sub_42A43C(a1 + 104))
    {
      return (&dword_0 + 1);
    }

    else
    {
      v10 = sub_5544(14);
      v3 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v13 = "IOMonitor.h";
          v14 = 1024;
          v15 = 62;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Could not take io proc lock in the normal thread.", buf, 0x12u);
        }

        return 0;
      }
    }
  }

  return v3;
}

void sub_93F24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_93F30(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 400))(a2, *(result + 16));
  }

  return result;
}

void sub_93F70(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 54) == 1)
  {
    *(a2 + 54) = 0;
    --*(a1 + 112);
    sub_55360(a1, a2);

    sub_5540C(a1);
  }
}

void sub_93FC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    for (i = *(a1 + 8); i != *(a1 + 16); ++i)
    {
      if (*i == a2 || *(*i + 8) == a2)
      {
        sub_93F70(a1, *i);
        return;
      }
    }
  }

  else
  {
    v3 = *(a1 + 116);
    if (v3)
    {
      *(a1 + 116) = v3 - 1;
    }
  }
}

void sub_94014(void *a1, uint64_t a2)
{
  v4 = a1[32];
  for (i = *(v4 + 8); i != *(v4 + 16); i += 8)
  {
    if (*i == a2)
    {
      if (a2)
      {
LABEL_7:
        sub_212280(v4, a2);
        if (*(a1[32] + 112))
        {
          return;
        }

        v6 = a2 == 0;
        goto LABEL_26;
      }

      break;
    }

    if (*(*i + 8) == a2)
    {
      goto LABEL_7;
    }
  }

  v7 = a1[31];
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  if (v8 == v9)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    while (1)
    {
      v10 = *v8;
      if (*v8 == a2)
      {
        break;
      }

      if (*(v10 + 8) == a2)
      {
        goto LABEL_17;
      }

      if (++v8 == v9)
      {
        v10 = 0;
        goto LABEL_17;
      }
    }

    v10 = a2;
LABEL_17:
    v11 = v10 != 0;
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  if (!v11)
  {
    return;
  }

LABEL_20:
  sub_93FC8(v7, a2);
  v12 = a1[31];
  if (a2 || *(v12 + 116))
  {
    if (!a2 || *(v12 + 112))
    {
      return;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

LABEL_26:
  v13 = *(*a1 + 592);

  v13(a1, v6);
}

uint64_t *sub_94168(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 872))
  {
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v43 = 1024;
      v44 = 4201;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = atomic_load((a1 + 560));
  if (v4 != pthread_self())
  {
    v5 = atomic_load((a1 + 664));
    if (v5 != pthread_self() && (sub_4DF80(*(a1 + 456)) & 1) == 0)
    {
      v36 = sub_5544(14);
      v37 = *v36;
      if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        v43 = 1024;
        v44 = 4203;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v38, "Precondition failure.");
    }
  }

  v6 = sub_5544(1);
  v7 = sub_5544(32);
  v8 = 0;
  *buf = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&buf[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

  if (*(v6 + 8))
  {
LABEL_13:
    v11 = *v6;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = (*(*a1 + 528))(a1);
      v13 = "false";
      *&buf[4] = "VirtualAudio_Device.cpp";
      *buf = 136315650;
      if (v12)
      {
        v13 = "true";
      }

      v43 = 1024;
      v44 = 4205;
      v45 = 2080;
      v46 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d StopIOEngine: IsIOEngineRunning is currently %s", buf, 0x1Cu);
    }
  }

LABEL_18:
  v40 = a1;
  sub_27A4();
  v41 = sub_2E6B94(a1);
  if (*(a1 + 940) == 1)
  {
    v14 = sub_5544(1);
    if (*(v14 + 8))
    {
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          sub_68108(&__p, (a1 + 384));
          v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v43 = 1024;
          v44 = 4214;
          v45 = 2080;
          v46 = v16;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s lost 1 buffer on last start/stop cycle (this is common and not likely a bug).", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  v17 = *(a1 + 940);
  if ((v17 & 0xFFFFFFFE) == 2)
  {
    v18 = sub_5544(1);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
    {
      sub_68108(&__p, (a1 + 384));
      v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v21 = *(a1 + 940);
      *buf = 136315906;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v43 = 1024;
      v44 = 4215;
      v45 = 2080;
      v46 = v20;
      v47 = 1024;
      v48 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device %s lost %u buffers on last start/stop cycle (this is not necessarily a bug, but if it persists, please file a radar against Audio - Routing).", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v17 = *(a1 + 940);
  }

  if (v17 >= 4)
  {
    v22 = sub_5544(1);
    v23 = *v22;
    if (*v22)
    {
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        sub_68108(&__p, (a1 + 384));
        v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v25 = *(a1 + 940);
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_Device.cpp";
        v43 = 1024;
        v44 = 4216;
        v45 = 2080;
        v46 = v24;
        v47 = 1024;
        v48 = v25;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d %s lost %u buffers on last start/stop cycle.", buf, 0x22u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v26 = *(a1 + 937);
  v27 = std::uncaught_exceptions();
  v29 = sub_4DF80(*(a1 + 456)) && (v28 = *(a1 + 248), !*(v28 + 112)) && *(v28 + 116) == 0;
  *(a1 + 937) = v29;
  (*(**(a1 + 872) + 272))(*(a1 + 872), a2);
  __p.__r_.__value_.__r.__words[0] = 0x676C6F626E6E696FLL;
  LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
  if (AudioObjectPropertiesChanged())
  {
    v30 = sub_5544(14);
    v31 = *v30;
    if (*v30)
    {
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        v43 = 1024;
        v44 = 4224;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theError): got an error calling the listeners", buf, 0x12u);
      }
    }
  }

  if (std::uncaught_exceptions() > v27)
  {
    *(a1 + 937) = v26;
  }

  return sub_6A300(&v40);
}

void sub_947F8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2)
  {
    sub_6A300(&a13);
    __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      __cxa_rethrow();
    }

    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "VirtualAudio_Device.cpp";
        WORD6(buf) = 1024;
        *(&buf + 14) = 4232;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): error stopping IO on the active device", &buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  _Unwind_Resume(a1);
}

int **sub_9498C(uint64_t a1, unsigned int a2)
{
  v91 = a2;
  sub_51AF8(a1);
  if (!*(a1 + 536))
  {
    v71 = sub_5544(14);
    v72 = *v71;
    if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "AggregateDevice_Common.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 577;
      _os_log_impl(&dword_0, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mHALIOProcID is NULL]: No HAL IO Proc has been set.", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "No HAL IO Proc has been set.");
  }

  if (!*(a1 + 576))
  {
    v74 = sub_5544(14);
    v75 = *v74;
    if (*v74 && os_log_type_enabled(*v74, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "AggregateDevice_Common.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 578;
      _os_log_impl(&dword_0, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mClientIOProc is NULL]: No client IO Proc has been set.", __p, 0x12u);
    }

    v76 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v76, "No client IO Proc has been set.");
  }

  v90[0] = &v91;
  v90[1] = a1;
  v4 = sub_51840(a1, a2, 0);
  v5 = v4;
  if ((v4 & 3) != 3)
  {
    if ((v4 & 3) == 0)
    {
      v6 = sub_5544(17);
      sub_51E48(2, v6, "", 597, "", "Stop is called on an already stopped device");
    }

    if (v91 == 1)
    {
      if ((v5 & 1) == 0)
      {
        return sub_9648C(v90);
      }
    }

    else if (v91 || (v5 & 2) == 0)
    {
      return sub_9648C(v90);
    }

    v12 = sub_95C3C(a1);
    v13 = *(a1 + 248);
    v14 = *(a1 + 256);
    while (v13 != v14)
    {
      (*(**v13 + 32))();
      v13 += 16;
    }

    v15 = sub_5544(17);
    v16 = sub_5544(32);
    v17 = 0;
    *__p = 0x100000002;
    v18 = *(v15 + 8);
    while (1)
    {
      v19 = *&__p[v17];
      if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
      {
        break;
      }

      v17 += 4;
      if (v17 == 8)
      {
        goto LABEL_47;
      }
    }

    if ((v18 & v19) == 0)
    {
      v15 = v16;
    }

LABEL_47:
    sub_22170(__p, v91);
    v34 = v103[3];
    v35 = *__p;
    v36 = (*(*a1 + 120))(a1);
    v37 = __p;
    if (v34 < 0)
    {
      v37 = v35;
    }

    sub_51E48(3, v15, "", 616, "", "Stopping IO type %s on AggregateDevice %u.", v37, v36);
    if ((v103[3] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    kdebug_trace();
    if (v91 == 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = *(a1 + 536);
    }

    v39 = AudioDeviceStop(*(a1 + 128), v38);
    kdebug_trace();
    if (v39)
    {
      v40 = sub_5544(17);
      sub_22170(__p, v39);
      v41 = v103[3];
      v42 = *__p;
      sub_23148(&v105, (a1 + 8));
      v43 = __p;
      if (v41 < 0)
      {
        v43 = v42;
      }

      if (v105.__m_.__opaque[15] >= 0)
      {
        sig = &v105;
      }

      else
      {
        sig = v105.__m_.__sig;
      }

      sub_51E48(1, v40, "", 621, "", "FAIL with status %s on AggregateDevice %s.", v43, sig);
      if (v105.__m_.__opaque[15] < 0)
      {
        operator delete(v105.__m_.__sig);
      }

      if ((v103[3] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v45 = *(a1 + 136);
    if (v45)
    {
      sub_30CED8(v45);
    }

    v46 = sub_95D20(a1);
    if (sub_95E00(a1))
    {
      sub_95E50(a1, 0);
      v47 = 0;
      goto LABEL_117;
    }

    v48 = *(a1 + 128);
    v88 = 0x676C6F62676F696ELL;
    v89 = 0;
    v49 = sub_5544(14);
    if ((*(v49 + 8) & 1) != 0 && *v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_DEBUG))
    {
      v104.__cv_.__sig = v88;
      *v104.__cv_.__opaque = v89;
      sub_22CE0(&v105, &v104);
    }

    *__p = v88;
    *&__p[8] = v89;
    if (AudioObjectHasProperty(v48, __p))
    {
      memset(v105.__m_.__opaque, 0, sizeof(v105.__m_.__opaque));
      v105.__m_.__sig = 850045863;
      memset(v104.__cv_.__opaque, 0, sizeof(v104.__cv_.__opaque));
      v104.__cv_.__sig = 1018212795;
      v101 = 0;
      sub_745E8(v100, v48, &v88, &v104, &v105, &v101);
      v95 = v48;
      v96 = v88;
      v97 = v89;
      v98 = 0;
      v99 = 0;
      if (sub_36F1E0(&v95))
      {
        v87 = v12;
        for (i = 2000; ; i += (std::chrono::system_clock::now().__d_.__rep_ - v52.__d_.__rep_) / -1000)
        {
          v51 = sub_36F1E0(&v95);
          v47 = HIDWORD(v51);
          if (HIDWORD(v51))
          {
            v12 = v87;
            goto LABEL_115;
          }

          if (!v51)
          {
            v62 = sub_5544(14);
            v12 = v87;
            if ((*(v62 + 8) & 1) == 0)
            {
              goto LABEL_114;
            }

            v47 = *v62;
            if (*v62)
            {
              if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
              {
                v92 = v88;
                v93 = v89;
                sub_22CE0(v94, &v92);
              }

              goto LABEL_114;
            }

            goto LABEL_115;
          }

          if (i <= 0)
          {
            v70 = sub_5544(14);
            v47 = 2003329396;
            v12 = v87;
            if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
            {
              v92 = v88;
              v93 = v89;
              sub_22CE0(v94, &v92);
            }

            goto LABEL_115;
          }

          v52.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v53 = sub_5544(14);
          if (*(v53 + 8))
          {
            v54 = *v53;
            if (*v53)
            {
              if (os_log_type_enabled(*v53, OS_LOG_TYPE_DEBUG))
              {
                *__p = 136315906;
                *&__p[4] = "HALPropertySynchronizer.h";
                *&__p[12] = 1024;
                *&__p[14] = 354;
                *&__p[18] = 2080;
                *v103 = "with timeout";
                *&v103[8] = 1024;
                *&v103[10] = v48;
                _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", __p, 0x22u);
              }
            }
          }

          sub_27A4();
          v94[0] = sub_2E6B08();
          *__p = &v105;
          __p[8] = 1;
          std::mutex::lock(&v105);
          v55.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
          while ((v101 & 1) == 0 && v55.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
          {
            v56.__d_.__rep_ = v55.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
            if (v56.__d_.__rep_ >= 1)
            {
              std::chrono::steady_clock::now();
              v57.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
              if (v57.__d_.__rep_)
              {
                if (v57.__d_.__rep_ < 1)
                {
                  if (v57.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                  {
                    goto LABEL_93;
                  }

                  v58 = 0x8000000000000000;
                }

                else
                {
                  if (v57.__d_.__rep_ > 0x20C49BA5E353F7)
                  {
                    v58 = 0x7FFFFFFFFFFFFFFFLL;
                    goto LABEL_94;
                  }

LABEL_93:
                  v58 = 1000 * v57.__d_.__rep_;
LABEL_94:
                  if (v58 > (v56.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                  {
                    v59.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_97:
                    std::condition_variable::__do_timed_wait(&v104, __p, v59);
                    std::chrono::steady_clock::now();
                    goto LABEL_98;
                  }
                }
              }

              else
              {
                v58 = 0;
              }

              v59.__d_.__rep_ = v58 + v56.__d_.__rep_;
              goto LABEL_97;
            }

LABEL_98:
            if (std::chrono::steady_clock::now().__d_.__rep_ >= v55.__d_.__rep_)
            {
              break;
            }
          }

          if (__p[8] == 1)
          {
            std::mutex::unlock(*__p);
          }

          sub_1DB4C4(v94);
        }
      }

      v61 = sub_5544(14);
      if ((*(v61 + 8) & 1) == 0)
      {
        goto LABEL_114;
      }

      v47 = *v61;
      if (*v61)
      {
        if (os_log_type_enabled(*v61, OS_LOG_TYPE_DEBUG))
        {
          *__p = 136315650;
          *&__p[4] = "HALPropertySynchronizer.h";
          *&__p[12] = 1024;
          *&__p[14] = 322;
          *&__p[18] = 1024;
          *v103 = v48;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", __p, 0x18u);
        }

LABEL_114:
        v47 = 0;
      }

LABEL_115:
      sub_73C20(v100);
      std::condition_variable::~condition_variable(&v104);
      std::mutex::~mutex(&v105);
    }

    else
    {
      v60 = sub_5544(14);
      v47 = 2003332927;
      if (*v60 && os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
      {
        v104.__cv_.__sig = v88;
        *v104.__cv_.__opaque = v89;
        sub_22CE0(&v105, &v104);
      }
    }

    sub_95E50(a1, v47 == 0);
LABEL_117:
    v63 = *(a1 + 112);
    v64 = *(a1 + 88);
    if (v63)
    {
      if (v64)
      {
        *(a1 + 88) = 0;
        *&__p[16] = 0;
        *__p = off_6D0708;
        *&__p[8] = 0;
        *&v103[4] = 0;
        v65 = *(v63 + 24);
        *(v63 + 24) = v64;
        if (v65)
        {
          (*(*v65 + 8))(v65);
        }

        v66 = *&v103[4];
        *__p = off_6D0708;
        *&v103[4] = 0;
        if (v66)
        {
          (*(*v66 + 8))(v66);
        }

        caulk::concurrent::message::~message(__p);
        v67 = *(a1 + 112);
        sub_4F08C();
        caulk::concurrent::messenger::enqueue(&unk_70A4E0, v67);
        *(a1 + 112) = 0;
      }
    }

    else if (v64)
    {
      v68 = sub_5544(17);
      sub_51E48(1, v68, "", 657, "", "AudioIOMonitor is valid, but IOMonitorCloseMsg is null. Not closing capture");
    }

    *(a1 + 104) = 0;
    if (v12)
    {
      v77 = sub_5544(14);
      v78 = *v77;
      if (*v77 && os_log_type_enabled(*v77, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "AggregateDevice_Common.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 666;
        _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (willStopResult): Error calling WillStopIO on physical devices.", __p, 0x12u);
      }

      LODWORD(v47) = v12;
    }

    else if (v39)
    {
      v79 = sub_5544(14);
      v80 = *v79;
      if (*v79 && os_log_type_enabled(*v79, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "AggregateDevice_Common.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 670;
        _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stopResult): Unable to stop IO.", __p, 0x12u);
      }

      LODWORD(v47) = v39;
    }

    else if (v47)
    {
      v81 = sub_5544(14);
      v82 = *v81;
      if (*v81 && os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v105, v47);
        v83 = v105.__m_.__opaque[15] >= 0 ? &v105 : v105.__m_.__sig;
        *__p = 136315650;
        *&__p[4] = "AggregateDevice_Common.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 674;
        *&__p[18] = 2080;
        *v103 = v83;
        _os_log_impl(&dword_0, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (isRunningResult): Error waiting to receive kAudioDevicePropertyDeviceIsRunning property notification while stopping I/O proc: %s", __p, 0x1Cu);
        if (v105.__m_.__opaque[15] < 0)
        {
          operator delete(v105.__m_.__sig);
        }
      }
    }

    else
    {
      if (!v46)
      {
        return sub_9648C(v90);
      }

      v84 = sub_5544(14);
      v85 = *v84;
      if (*v84 && os_log_type_enabled(*v84, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "AggregateDevice_Common.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 678;
        _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (didStopResult): Error calling DidStopIO on physical devices.", __p, 0x12u);
      }

      LODWORD(v47) = v46;
    }

    v86 = __cxa_allocate_exception(0x10uLL);
    *v86 = &off_6DDDD0;
    v86[2] = v47;
  }

  v7 = sub_5544(17);
  v8 = sub_5544(32);
  v9 = 0;
  *__p = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&__p[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_24;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_24:
  sub_22170(__p, v91);
  v20 = v103[3];
  v21 = *__p;
  v22 = (*(*a1 + 120))(a1);
  v23 = __p;
  if (v20 < 0)
  {
    v23 = v21;
  }

  sub_51E48(3, v7, "", 600, "", "Stopping IO type %s on AggregateDevice %u.", v23, v22);
  if ((v103[3] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  kdebug_trace();
  if (v91 == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(a1 + 536);
  }

  v25 = AudioDeviceStop(*(a1 + 128), v24);
  kdebug_trace();
  if (v25)
  {
    v26 = sub_5544(17);
    sub_22170(__p, v25);
    v27 = v103[3];
    v28 = *__p;
    sub_23148(&v105, (a1 + 8));
    v29 = __p;
    if (v27 < 0)
    {
      v29 = v28;
    }

    if (v105.__m_.__opaque[15] >= 0)
    {
      v30 = &v105;
    }

    else
    {
      v30 = v105.__m_.__sig;
    }

    sub_51E48(1, v26, "", 605, "", "FAIL with status %s on AggregateDevice %s.", v29, v30);
    if (v105.__m_.__opaque[15] < 0)
    {
      operator delete(v105.__m_.__sig);
    }

    if ((v103[3] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "AggregateDevice_Common.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 608;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stopResult): Unable to stop IO.", __p, 0x12u);
    }

    v33 = __cxa_allocate_exception(0x10uLL);
    *v33 = &off_6DDDD0;
    v33[2] = v25;
  }

  return sub_9648C(v90);
}

void sub_95B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_73C20(&a31);
  std::condition_variable::~condition_variable((v42 - 216));
  std::mutex::~mutex((v42 - 168));
  sub_9648C(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_95C3C(uint64_t a1)
{
  v1 = (a1 + 184);
  v2 = *(a1 + 192);
  if (v2 != (a1 + 184))
  {
    do
    {
      v3 = v2[3];
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = v2[2];
          if (v6)
          {
            (*(*v6 + 160))(v6);
          }

          sub_1A8C0(v5);
        }
      }

      v2 = v2[1];
    }

    while (v2 != v1);
  }

  return 0;
}

uint64_t sub_95D20(uint64_t a1)
{
  v1 = (a1 + 184);
  v2 = *(a1 + 192);
  if (v2 != (a1 + 184))
  {
    do
    {
      v3 = v2[3];
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = v2[2];
          if (v6)
          {
            (*(*v6 + 168))(v6);
          }

          sub_1A8C0(v5);
        }
      }

      v2 = v2[1];
    }

    while (v2 != v1);
  }

  return 0;
}

BOOL sub_95E00(uint64_t a1)
{
  if (*(a1 + 440) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 448);
  v2 = pthread_self();
  return pthread_equal(v1, v2) != 0;
}

uint64_t sub_95E50(void *a1, uint64_t a2)
{
  result = (*(*a1 + 584))(a1);
  v6 = a1[31];
  v5 = a1[32];
  while (v6 != v5)
  {
    v7 = *v6;
    v6 += 2;
    result = (*(*v7 + 40))(v7, a2);
  }

  return result;
}

void sub_95EE4(uint64_t result)
{
  v1 = *(result + 664);
  v2 = *(result + 672);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 2;
    sub_3B85D8(v3);
  }
}

void sub_95F1C(uint64_t a1)
{
  v2 = **(a1 + 64);
  sub_67600(v8, (a1 + 8));
  sub_67600(v9, (a1 + 32));
  v10 = *(a1 + 56);
  if (!*v2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v12 = 1024;
      v13 = 502;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(v2 + 8))
  {
    sub_68E60();
    *buf = v2;
    sub_67600(&buf[8], v8);
    sub_67600(v14, v9);
    v14[3] = v10;
    operator new();
  }

  v3 = sub_5544(13);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CoreTelephonyInterface.cpp";
    v12 = 1024;
    v13 = 506;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d No CommCenter process active.", buf, 0x12u);
  }

  sub_477A0(v9[1]);
  sub_477A0(v8[1]);
}

void sub_96198(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, __int128 buf, __int128 a25, int a26, __int16 a27, __int16 a28, int a29)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v29);
  if (a2 == 3)
  {
    v32 = __cxa_begin_catch(a1);
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v32[2]);
      p_p = __p;
      if (a23 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a25) = 2080;
      *(&a25 + 4) = p_p;
      WORD6(a25) = 2080;
      *(&a25 + 14) = "";
      a28 = 1024;
      a29 = 514;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a23 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x960ACLL);
  }

  v36 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v37 = v36;
    v38 = sub_5544(14);
    v39 = *v38;
    if (!*v38 || !os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v40 = (*(*v37 + 16))(v37);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a25) = 2080;
    *(&a25 + 4) = v40;
    WORD6(a25) = 2080;
    *(&a25 + 14) = "";
    a28 = 1024;
    a29 = 514;
    v41 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v42 = v39;
    v43 = 44;
  }

  else
  {
    v44 = sub_5544(14);
    v45 = *v44;
    if (!*v44 || !os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a25) = 2080;
    *(&a25 + 4) = "";
    WORD6(a25) = 1024;
    *(&a25 + 14) = 514;
    v41 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v42 = v45;
    v43 = 34;
  }

  _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, v41, &buf, v43);
  goto LABEL_19;
}

void sub_96450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  __cxa_end_catch();
  sub_477A0(a15);
  JUMPOUT(0x961F0);
}

int **sub_9648C(int **a1)
{
  v2 = **a1;
  if (!v2)
  {
    v3 = a1[1];
    v4 = 160;
    do
    {
      v5 = v2;
      v6 = *&v3[v4];
      v7 = *&v3[v4 + 2];
      while (v6 != v7)
      {
        sub_6AD0C(*(*v6 + 152));
        v6 += 16;
      }

      LOBYTE(v2) = 1;
      v4 = 166;
    }

    while ((v5 & 1) == 0);
  }

  return a1;
}

void sub_9650C(unint64_t *a1)
{
  v2 = atomic_load(a1 + 38);
  if (v2 == pthread_self())
  {
    v3 = atomic_load(a1 + 38);
    if (v3 != pthread_self())
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315394;
          v13 = "IOMonitor.h";
          v14 = 1024;
          v15 = 107;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: It is illegal to call Unlock_Normal from the io thread when it does not own mIOThreadCallingNormalMutex.", &v12, 0x12u);
        }
      }
    }

    sub_42A318((a1 + 26));
  }

  else
  {
    v4 = atomic_load(a1 + 25);
    if (v4 != pthread_self())
    {
      v8 = sub_5544(14);
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315394;
          v13 = "IOMonitor.h";
          v14 = 1024;
          v15 = 99;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: It is illegal to call Unlock_Normal from a thread that does not own the mIOProcThreadMutex.", &v12, 0x12u);
        }
      }
    }

    sub_42A318((a1 + 13));
    v5 = atomic_load(a1 + 12);
    if (v5 != pthread_self())
    {
      v10 = sub_5544(14);
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315394;
          v13 = "IOMonitor.h";
          v14 = 1024;
          v15 = 102;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: It is illegal to call Unlock_Normal from a thread that does not own the IO Monitor.", &v12, 0x12u);
        }
      }
    }

    sub_42A318(a1);
  }
}

void sub_9671C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_96754(uint64_t a1)
{
  v2[0] = a1;
  sub_96A50(a1);
  return sub_67794(v2);
}

void sub_967BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    v22 = __cxa_begin_catch(a1);
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v22[2]);
      p_p = __p;
      if (a15 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a17) = 2080;
      *(&a17 + 4) = p_p;
      WORD6(a17) = 2080;
      *(&a17 + 14) = "";
      a20 = 1024;
      a21 = 98;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x96784);
  }

  v26 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v27 = v26;
    v28 = sub_5544(14);
    v29 = *v28;
    if (!*v28 || !os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v30 = (*(*v27 + 16))(v27);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a17) = 2080;
    *(&a17 + 4) = v30;
    WORD6(a17) = 2080;
    *(&a17 + 14) = "";
    a20 = 1024;
    a21 = 98;
    v31 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v32 = v29;
    v33 = 44;
  }

  else
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (!*v34 || !os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a17) = 2080;
    *(&a17 + 4) = "";
    WORD6(a17) = 1024;
    *(&a17 + 14) = 98;
    v31 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v32 = v35;
    v33 = 34;
  }

  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v31, &buf, v33);
  goto LABEL_17;
}

void sub_96A50(uint64_t a1)
{
  v2 = *a1;
  v3 = sub_5544(13);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        sub_2942EC(v49, (a1 + 8));
        v5 = v50;
        v6 = v49[0];
        sub_2942EC(__p, v2 + 3);
        v7 = v49;
        if (v5 < 0)
        {
          v7 = v6;
        }

        if (v48 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *buf = 136315906;
        v52 = "CoreTelephonyInterface.cpp";
        v53 = 1024;
        v54 = 474;
        v55 = 2080;
        v56 = v7;
        v57 = 2080;
        v58 = v8;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Deactivating Route: %s Current: %s", buf, 0x26u);
        if (v48 < 0)
        {
          operator delete(__p[0]);
        }

        if (v50 < 0)
        {
          operator delete(v49[0]);
        }
      }
    }
  }

  v9 = *(a1 + 8);
  if (v9 != (a1 + 16))
  {
    v10 = v2 + 4;
    do
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = *(v9 + 8);
        v13 = v2 + 4;
        do
        {
          v14 = *(v11 + 32);
          v15 = v14 >= v12;
          v16 = v14 < v12;
          if (v15)
          {
            v13 = v11;
          }

          v11 = *(v11 + 8 * v16);
        }

        while (v11);
        if (v13 != v10 && v12 >= *(v13 + 8))
        {
          v17 = v13[5];
          if (v17)
          {
            if (v17 < v9[5])
            {
              v18 = sub_5544(13);
              v19 = *v18;
              if (*v18)
              {
                if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v52 = "CoreTelephonyInterface.cpp";
                  v53 = 1024;
                  v54 = 262;
                  _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Removing more inputs than we have", buf, 0x12u);
                }
              }
            }

            v20 = v13[5];
            v21 = v9[5];
            v15 = v20 >= v21;
            v22 = v20 - v21;
            if (!v15)
            {
              v22 = 0;
            }

            v13[5] = v22;
          }
        }
      }

      v23 = v9[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v9[2];
          v25 = *v24 == v9;
          v9 = v24;
        }

        while (!v25);
      }

      v9 = v24;
    }

    while (v24 != (a1 + 16));
  }

  v26 = *(a1 + 32);
  if (v26 != (a1 + 40))
  {
    v27 = v2 + 7;
    do
    {
      v28 = *v27;
      if (*v27)
      {
        v29 = *(v26 + 8);
        v30 = v2 + 7;
        do
        {
          v31 = *(v28 + 32);
          v15 = v31 >= v29;
          v32 = v31 < v29;
          if (v15)
          {
            v30 = v28;
          }

          v28 = *(v28 + 8 * v32);
        }

        while (v28);
        if (v30 != v27 && v29 >= *(v30 + 8))
        {
          v33 = v30[5];
          if (v33)
          {
            if (v33 < v26[5])
            {
              v34 = sub_5544(13);
              v35 = *v34;
              if (*v34)
              {
                if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v52 = "CoreTelephonyInterface.cpp";
                  v53 = 1024;
                  v54 = 273;
                  _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Removing more outputs than we have", buf, 0x12u);
                }
              }
            }

            v36 = v30[5];
            v37 = v26[5];
            v15 = v36 >= v37;
            v38 = v36 - v37;
            if (!v15)
            {
              v38 = 0;
            }

            v30[5] = v38;
          }
        }
      }

      v39 = v26[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v26[2];
          v25 = *v40 == v26;
          v26 = v40;
        }

        while (!v25);
      }

      v26 = v40;
    }

    while (v40 != (a1 + 40));
  }

  v41 = *(a1 + 56);
  if (v41)
  {
    if (v2[9] > v41)
    {
      v42 = sub_5544(13);
      v43 = *v42;
      if (*v42)
      {
        if (os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v52 = "CoreTelephonyInterface.cpp";
          v53 = 1024;
          v54 = 280;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d Removing more NR count than we have", buf, 0x12u);
        }
      }
    }

    v44 = v2[9];
    v45 = *(a1 + 56);
    v15 = v44 >= v45;
    v46 = v44 - v45;
    if (!v15)
    {
      v46 = 0;
    }

    v2[9] = v46;
  }

  sub_687A8(v2);
}

void sub_96E9C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_96EBC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = sub_8BF50(a1, a2, a3, a4);
  if (!v6)
  {
    return 4294967246;
  }

  v8 = *(*v6 + 80);
  v7.n128_f32[0] = a5;

  return v8(v7);
}

void sub_96F48(uint64_t a1)
{
  v1 = *(a1 + 152);
  v2 = atomic_load((*(v1 + 360) + 16));
  if (v2)
  {
    sub_EB670(*(v1 + 360));
  }

  v3 = *(v1 + 360);
  sub_8BD14(&v45, *(v1 + 8), *(v1 + 16));
  v5 = v45;
  v4 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 40);
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
    v5 = v45;
  }

  if (v5)
  {
    if (*(*v5 + 80))(v5) && ((*(*v5 + 144))(v5, 1936748595))
    {
      v7 = 1836281975;
      v8 = 1685287015;
    }

    else
    {
      v9 = (*(*v5 + 144))(v5, 1936748595);
      if (v9)
      {
        v8 = 1936748595;
      }

      else
      {
        v8 = 0;
      }

      if (v9)
      {
        v7 = 16;
      }

      else
      {
        v7 = -1;
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = -1;
  }

  *(v3 + 48) = v8;
  sub_53E8(__p, "measuredWattsParameterID");
  v47[0] = __p;
  *(sub_9793C((v3 + 56), __p, v47) + 56) = v7;
  if (v51 < 0)
  {
    operator delete(*__p);
  }

  v10 = *(v3 + 48);
  sub_53E8(__p, "modelledWattsParameterID");
  v47[0] = __p;
  v11 = sub_9793C((v3 + 56), __p, v47);
  if (v10 == 1685287015)
  {
    v12 = 1835298935;
  }

  else
  {
    v12 = -1;
  }

  if (v10 == 1936748595)
  {
    v12 = 15;
  }

  *(v11 + 56) = v12;
  if (v51 < 0)
  {
    operator delete(*__p);
  }

  v13 = *(v3 + 40);
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = v14;
      v16 = *(v3 + 32);
      if (v16)
      {
        v17 = *(v3 + 56);
        if (v17 != (v3 + 64))
        {
          do
          {
            v18 = (*(*v16 + 56))(v16, *(v3 + 48), *(v17 + 14), 0);
            v19 = *(v17 + 14);
            *__p = v17 + 4;
            v20 = sub_6F8FC((v3 + 56), v17 + 4, __p);
            if (v18)
            {
              v21 = v19;
            }

            else
            {
              v21 = -1;
            }

            *(v20 + 56) = v21;
            v22 = v17[1];
            if (v22)
            {
              do
              {
                v23 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v23 = v17[2];
                v24 = *v23 == v17;
                v17 = v23;
              }

              while (!v24);
            }

            v17 = v23;
          }

          while (v23 != (v3 + 64));
        }
      }

      sub_1A8C0(v15);
    }
  }

  if (v46)
  {
    sub_1A8C0(v46);
  }

  v25 = *(v1 + 360);
  v26 = atomic_load((v25 + 16));
  v27 = sub_5544(14);
  if (v26)
  {
    v43 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "PowerLogManager.cpp";
      v49 = 1024;
      v50 = 253;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): BeginPowerLogTracking()/EndPowerLogTracking() mismatch.", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "BeginPowerLogTracking()/EndPowerLogTracking() mismatch.");
  }

  if (*(v27 + 8))
  {
    v28 = *v27;
    if (*v27)
    {
      if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
      {
        *__p = 136315394;
        *&__p[4] = "PowerLogManager.cpp";
        v49 = 1024;
        v50 = 255;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d BeginPowerLogTracking()", __p, 0x12u);
      }
    }
  }

  v29 = *(v25 + 56);
  if (v29 != (v25 + 64))
  {
    do
    {
      if (*(v29 + 14) != -1)
      {
        v34 = *(v25 + 8);
        if (v34 && std::__shared_weak_count::lock(v34))
        {
          operator new();
        }

        sub_175EA0();
      }

      v30 = v29[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v29[2];
          v24 = *v31 == v29;
          v29 = v31;
        }

        while (!v24);
      }

      v29 = v31;
    }

    while (v31 != (v25 + 64));
  }

  v32 = sub_5544(14);
  if (*(v32 + 8))
  {
    v33 = *v32;
    if (*v32)
    {
      if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
      {
        *__p = 136315394;
        *&__p[4] = "PowerLogManager.cpp";
        v49 = 1024;
        v50 = 262;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d No power parameters to measure.", __p, 0x12u);
      }
    }
  }

  v35 = *(v1 + 1184);
  if (v35)
  {
    v36 = *v35;
    if (*v35)
    {
      v37 = v36[1];
      if (v37)
      {
        v38 = std::__shared_weak_count::lock(v37);
        if (v38)
        {
          v39 = v38;
          v40 = *v36;
          if (*v36)
          {
            v41 = v36[2];
            if (v41)
            {
              v42 = 2;
              goto LABEL_72;
            }

            v41 = v36[3];
            if (v41)
            {
              v42 = 3;
LABEL_72:
              (*(*v41 + 24))(v41, v40);
              while (++v42 != 4)
              {
                v41 = v36[v42];
                if (v41)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          sub_1A8C0(v39);
        }
      }
    }
  }
}

void sub_9784C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_1A8C0(v26);
  if (a17)
  {
    sub_1A8C0(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_9793C(uint64_t **a1, void ***a2, _OWORD **a3)
{
  v3 = *sub_6F86C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

unint64_t sub_979DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_8BE08(a2, a3);
  if (HIDWORD(v8))
  {
    v16 = v8;
    if (sub_8BD58(v8))
    {
      v17 = *(a1 + 1216);
      if (!v17)
      {
        v18 = sub_5544(14);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 735) < 0)
          {
            sub_54A0(__dst, *(a1 + 712), *(a1 + 720));
          }

          else
          {
            *__dst = *(a1 + 712);
            v25 = *(a1 + 728);
          }

          v20 = __dst;
          if (v25 < 0)
          {
            v20 = __dst[0];
          }

          *buf = 136315650;
          v27 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
          v28 = 1024;
          v29 = 72;
          v30 = 2080;
          v31 = v20;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): HAL Speaker Protection is not available for DSP chain %s", buf, 0x1Cu);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "HAL Speaker Protection is not available for DSP chain %s");
      }

      return sub_97D28(v17, v16);
    }

    else
    {

      return sub_A20E0(a1, 1685287015, v16, a4);
    }
  }

  else
  {
    v9 = sub_5544(25);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__dst, a2);
      v11 = SHIBYTE(v25);
      v12 = __dst[0];
      sub_22170(__p, a3);
      v13 = __dst;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v23 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315906;
      v27 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
      v28 = 1024;
      v29 = 83;
      v30 = 2080;
      v31 = v13;
      v32 = 2080;
      v33 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d TranslateToDSPGraphParameter failure for AU subtype %s as graph parameter %s", buf, 0x26u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    return 0;
  }
}

unint64_t sub_97D28(uint64_t a1, unsigned int a2)
{
  v15 = a2;
  v3 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  if (*(a1 + 148))
  {
    v4 = 1768845428;
  }

  else
  {
    v4 = 1869968496;
  }

  LODWORD(__p[0]) = v3;
  buf.mSelector = 1684498541;
  *&buf.mScope = v4;
  v5 = sub_542F0(__p, &buf, 4, &v15);
  *(&v7 + 1) = v6;
  *&v7 = v5;
  v8 = ((v7 >> 32) >> 32) & (HIDWORD(v5) != 0);
  if ((((v7 >> 32) >> 32) & (HIDWORD(v5) != 0)) == 0)
  {
    v9 = sub_5544(25);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, v15);
        if (v14 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        buf.mSelector = 136315906;
        *&buf.mScope = "DSPHALInterface.cpp";
        v17 = 1024;
        v18 = 165;
        v19 = 2080;
        v20 = v11;
        v21 = 1024;
        v22 = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPHALInterface::HasDSPParameter(%s) = %u", &buf, 0x22u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v8;
}

void sub_97EC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = sub_5544(17);
  v4 = *v3;
  if (*v3)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "HapticDebugIODelegate.cpp";
      v7 = 1024;
      v8 = 248;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HapticDebugDelegate not instantiated yet", &v5, 0x12u);
    }
  }

  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_6:
    sub_97F98(v2);
  }
}

void sub_97F98(uint64_t a1)
{
  v2 = sub_5544(17);
  v3 = sub_5544(27);
  v4 = 0;
  *buf = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&buf[v4];
    if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
    {
      break;
    }

    v4 += 4;
    if (v4 == 8)
    {
      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

  if (*(v2 + 8))
  {
LABEL_9:
    v7 = *v2;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = atomic_load((a1 + 32));
      *&buf[4] = "HapticDebugIODelegate.cpp";
      *buf = 136315650;
      if (v8)
      {
        v9 = "enabled";
      }

      else
      {
        v9 = "disabled";
      }

      v15 = 1024;
      v16 = 122;
      v17 = 2080;
      v18 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Current enabled state is %s", buf, 0x1Cu);
    }
  }

LABEL_15:
  v10 = atomic_load((a1 + 32));
  if (v10)
  {
    if ((atomic_exchange((a1 + 64), 1u) & 1) == 0)
    {
      v11 = sub_1F79E8(**(a1 + 24), COERCE_DOUBLE(1735159650));
      v12 = sub_5544(17);
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "HapticDebugIODelegate.cpp";
          v15 = 1024;
          v16 = 130;
          v17 = 1024;
          LODWORD(v18) = v11;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Buffer Frame Size: %u", buf, 0x18u);
        }
      }

      operator new();
    }

    sub_364008(a1);
  }
}

void sub_986A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf, __int128 a18)
{
  if (v20)
  {
    operator delete(v20);
  }

  sub_1A8C0(v19);
  if (a2 == 1)
  {
    v23 = __cxa_begin_catch(a1);
    atomic_store(0, (v18 + 64));
    v24 = sub_5544(17);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v26 = (*(*v23 + 16))(v23);
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "HapticDebugIODelegate.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 153;
      WORD1(a18) = 2080;
      *(&a18 + 4) = v26;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d Caught exception %s while configuring haptic debug captures", &buf, 0x1Cu);
    }

    __cxa_end_catch();
    JUMPOUT(0x984C4);
  }

  _Unwind_Resume(a1);
}

void sub_9886C(uint64_t a1)
{
  sub_8BD14(&v2, *(a1 + 8), *(a1 + 16));
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1A8C0(v1);
    sub_8BEE4();
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    sub_8BEE4();
  }

  operator new();
}

uint64_t sub_9893C(uint64_t a1, char *a2, int *a3)
{
  sub_88CE8(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_989D4(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_98A08(char *a1)
{
  if (a1)
  {
    sub_98A08(*a1);
    sub_98A08(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *sub_98A64(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

uint64_t sub_98AA0(void *a1, CFTypeRef *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_189A00();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_1DB8DC(v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v7;
    v11[3] = 0;
    sub_98A64((8 * v7), *a2);
    v11[2] = 8 * v7 + 8;
    sub_76010(a1, v11);
    v6 = a1[1];
    result = sub_760C0(v11);
  }

  else
  {
    result = sub_98A64(v3, *a2);
    v6 = result + 8;
  }

  a1[1] = v6;
  return result;
}

uint64_t sub_98B84(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_98BB0(uint64_t *a1, uint64_t *a2, unsigned int ***a3, const void *a4, uint64_t a5, uint64_t *a6, const void **a7)
{
  v67 = 0;
  v68 = 0;
  v69 = 0;
  sub_99AD4(&v67, a4, a5, (a5 - a4) >> 3);
  v9 = a6[46];
  v10 = a6[47];
  if (v9 != v10)
  {
    v11 = v68;
    v12 = a6[46];
    do
    {
      if (v11 >= v69)
      {
        v13 = v67;
        v14 = v11 - v67;
        v15 = (v11 - v67) >> 3;
        v16 = v15 + 1;
        if ((v15 + 1) >> 61)
        {
          sub_189A00();
        }

        v17 = v69 - v67;
        if ((v69 - v67) >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          sub_1DB8DC(v18);
        }

        v19 = (8 * v15);
        *v19 = v9;
        v11 = (v19 + 1);
        memcpy(0, v13, v14);
        v67 = 0;
        v69 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v11 = v9;
        v11 += 8;
      }

      v68 = v11;
      v12 += 472;
      v9 += 472;
    }

    while (v12 != v10);
  }

  v20 = sub_5544(8);
  if (*(v20 + 8))
  {
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5552;
        v90 = 2048;
        v91 = (v68 - v67) >> 3;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d %lu alternate route(s) required... Attempting to build if needed...", buf, 0x1Cu);
      }
    }
  }

  if (!_os_feature_enabled_impl())
  {
    sub_263A98(a1, a2, &v67, 0, a6, a3, a7);
    goto LABEL_97;
  }

  v22 = v67;
  v62 = v68;
  if (v67 == v68)
  {
LABEL_85:
    (*(*a6 + 16))(a6, a3);
    goto LABEL_97;
  }

  v23 = a2 + 70;
  while (1)
  {
    v64 = v22;
    v24 = *v22;
    v25 = *v23;
    if (!*v23)
    {
      goto LABEL_30;
    }

    v26 = *(v24 + 4);
    v27 = v23;
    do
    {
      if (*(v25 + 28) >= v26)
      {
        v27 = v25;
      }

      v25 = *(v25 + 8 * (*(v25 + 28) < v26));
    }

    while (v25);
    if (v27 == v23 || v26 < *(v27 + 7))
    {
LABEL_30:
      v27 = v23;
    }

    v23 = a2 + 70;
    if (((v27 == a2 + 70) & sub_99B90(v24, (a6 + 19), a3, (a6 + 1))) == 1)
    {
      break;
    }

    if (!*(v24 + 56))
    {
      goto LABEL_86;
    }

LABEL_82:
    v22 = v64 + 1;
    if (v64 + 1 == v62)
    {
      goto LABEL_85;
    }
  }

  v66 = sub_99D18(a2, v24);
  v28 = sub_5544(8);
  v29 = *v28;
  if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(v73, *(v24 + 60));
    v30 = SHIBYTE(v75);
    v31 = v73[0];
    sub_10898C(&__p, *(v24 + 8), *(v24 + 16));
    v32 = v73;
    if (v30 < 0)
    {
      v32 = v31;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v34 = "Optional";
    if (!*(v24 + 56))
    {
      v34 = "Mandatory";
    }

    *buf = 136316162;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 5814;
    v90 = 2080;
    v91 = v32;
    v92 = 2080;
    v93 = p_p;
    v94 = 2080;
    v95 = v34;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alternate device specification is for VAD type %s and uses port types %s. VAD is %s", buf, 0x30u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(v73[0]);
    }
  }

  v35 = sub_805C8(*a2, *(v24 + 64));
  v36 = *(v24 + 64);
  v74 = v35[8] == 1668510820;
  v75 = v36;
  v76 = v66;
  v77 = 0;
  v78 = 0;
  v73[0] = v35;
  v73[1] = a6 + 3;
  v79 = 0;
  v80 = 0;
  v38 = sub_456B8(v73);
  v39 = v73[0];
  if (v73[0] != v38)
  {
    v40 = v37;
    do
    {
      v41 = sub_5544(8);
      v42 = *v41;
      if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(&__p, *(v24 + 60));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &__p;
        }

        else
        {
          v43 = __p.__r_.__value_.__r.__words[0];
        }

        sub_3FEB1C(&v96, (v38 + 2));
        v44 = SHIBYTE(v96.__r_.__value_.__r.__words[2]);
        v45 = v96.__r_.__value_.__r.__words[0];
        *v86 = *(v24 + 64);
        *&v86[4] = v66;
        v87 = 0;
        v88 = 0;
        sub_879F8(&v85, v86);
        v46 = &v96;
        if (v44 < 0)
        {
          v46 = v45;
        }

        v47 = &v85;
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v47 = v85.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5825;
        v90 = 2080;
        v91 = v43;
        v92 = 2080;
        v93 = v46;
        v94 = 2080;
        v95 = v47;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Checking whether the alternate device specification for %s allows abstract route %s for category/mode %s...", buf, 0x30u);
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (sub_9B594(v24, (v38 + 2)))
      {
        v48 = sub_5544(8);
        v49 = *v48;
        if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(&__p, *(v24 + 60));
          v50 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v51 = __p.__r_.__value_.__r.__words[0];
          sub_3FEB1C(&v96, (v38 + 2));
          v52 = &__p;
          if (v50 < 0)
          {
            v52 = v51;
          }

          v53 = &v96;
          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v53 = v96.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5832;
          v90 = 2080;
          v91 = v52;
          v92 = 2080;
          v93 = v53;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alternate device specification for %s allows abstract route %s... Building concrete route...", buf, 0x26u);
          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v54 = *(v24 + 60);
        v72[0] = 0;
        v72[1] = 0;
        v71 = v72;
        sub_84C38(buf, a6 + 6, v54);
        sub_7FE64(&v71, *buf, &buf[8]);
        sub_4B0F4(*&buf[8]);
        sub_9B6B8(*(v24 + 192), a6[1], a6[2]);
        v81 = *(v24 + 64);
        v82 = v66;
        v83 = 0;
        v84 = 0;
        operator new();
      }

      v55 = v38[1];
      v38 = *v40;
      while (v55 != v38)
      {
        if (sub_4B65C((v40 + 1), (v55 + 2)))
        {
          v38 = v55;
          break;
        }

        v55 = v55[1];
      }
    }

    while (v38 != v39);
  }

  v23 = a2 + 70;
  if (*(v24 + 56))
  {
    goto LABEL_82;
  }

LABEL_86:
  v56 = sub_5544(8);
  v57 = *v56;
  if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_DEBUG))
  {
    v58 = *(v24 + 4);
    v59 = v58 > 0x1E ? "????" : off_6CFB08[v58];
    sub_53E8(v73, v59);
    v60 = v75 >= 0 ? v73 : v73[0];
    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 5892;
    v90 = 2080;
    v91 = v60;
    _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to build a concrete route for mandatory alternate route %s", buf, 0x1Cu);
    if (SHIBYTE(v75) < 0)
    {
      operator delete(v73[0]);
    }
  }

  sub_20301C(a1, 1);
LABEL_97:
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }
}

void sub_99938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, void *a46)
{
  sub_84FE4((v46 - 136));
  if (a44 == 1)
  {
    sub_86BF8(&a40);
  }

  sub_4B0F4(a46);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_99AD4(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_99B50(result, a4);
  }

  return result;
}

void sub_99B34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_99B50(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1DB8DC(a2);
  }

  sub_189A00();
}

uint64_t sub_99B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 160);
  if (!v5 || (v9 = (*(*v5 + 48))(v5), (v10 = *(a1 + 224)) == 0))
  {
    sub_46A74();
  }

  return v9 & (*(*v10 + 48))(v10, a3, a4, a2);
}

uint64_t sub_99C4C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = MGGetSInt32Answer();
  if (v6 == 7)
  {
    v8 = sub_99D84(v6, v7);
    if (v8 != 197 && sub_99D84(v8, v9) != 4)
    {
      v10 = *(a1 + 592);
      if (v10)
      {
        v11 = a1 + 592;
        do
        {
          v12 = *(v10 + 28);
          v13 = v12 >= a3;
          v14 = v12 < a3;
          if (v13)
          {
            v11 = v10;
          }

          v10 = *(v10 + 8 * v14);
        }

        while (v10);
        if (v11 != a1 + 592 && *(v11 + 28) <= a3)
        {
          if (a2 == 1836021360)
          {
            v15 = 1835232630;
          }

          else
          {
            v15 = a2;
          }

          if (a2 == 1768776806)
          {
            return 1835230310;
          }

          else
          {
            return v15;
          }
        }
      }
    }
  }

  return a2;
}

uint64_t sub_99D18(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 72;
  result = sub_99C4C(a1, *(*(a2 + 80) + 16), *(a2 + 60));
  v5 = *(a2 + 80);
  if (v5 == v3)
  {
    return *(v5 + 16);
  }

  v6 = *(a2 + 80);
  while (*(v6 + 16) != result)
  {
    v6 = *(v6 + 8);
    if (v6 == v3)
    {
      return *(v5 + 16);
    }
  }

  if (v6 == v3)
  {
    return *(v5 + 16);
  }

  return result;
}

uint64_t sub_99D84(uint64_t a1, uint64_t a2)
{
  if (byte_6E669C == 1)
  {
    return dword_6E6698;
  }

  byte_6E669C = 1;
  v3 = MGGetProductType();
  if (v3 > 2158787295)
  {
    if (v3 > 3196158496)
    {
      if (v3 > 3711192743)
      {
        if (v3 > 3885279869)
        {
          if (v3 <= 4068102501)
          {
            if (v3 > 3953847431)
            {
              if (v3 > 4055323050)
              {
                if (v3 == 4055323051)
                {
                  result = 58;
                  goto LABEL_483;
                }

                if (v3 == 4067129264)
                {
                  result = 139;
                  goto LABEL_483;
                }
              }

              else
              {
                if (v3 == 3953847432)
                {
                  result = 170;
                  goto LABEL_483;
                }

                if (v3 == 4025247511)
                {
                  result = 133;
                  goto LABEL_483;
                }
              }

              goto LABEL_482;
            }

            if (v3 == 3885279870)
            {
              result = 32;
              goto LABEL_483;
            }

            if (v3 != 3933865620)
            {
              if (v3 == 3933982784)
              {
                result = 53;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_373;
          }

          if (v3 <= 4231109336)
          {
            switch(v3)
            {
              case 4068102502:
                result = 168;
                goto LABEL_483;
              case 4172444931:
                result = 132;
                goto LABEL_483;
              case 4201643249:
                result = 35;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v3 > 4240173201)
          {
            if (v3 == 4240173202)
            {
              result = 2;
              goto LABEL_483;
            }

            if (v3 == 4242862982)
            {
              result = 80;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v3 != 4231109337)
          {
            if (v3 == 4232256925)
            {
              result = 114;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_391:
          result = 198;
          goto LABEL_483;
        }

        if (v3 <= 3825599859)
        {
          if (v3 <= 3767261005)
          {
            switch(v3)
            {
              case 3711192744:
                result = 84;
                goto LABEL_483;
              case 3742999858:
                result = 159;
                goto LABEL_483;
              case 3743999268:
                result = 24;
                goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v3 == 3767261006)
          {
            result = 153;
            goto LABEL_483;
          }

          if (v3 != 3801472101)
          {
            if (v3 == 3819635030)
            {
              result = 160;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_346;
        }

        if (v3 <= 3863625341)
        {
          switch(v3)
          {
            case 3825599860:
              result = 20;
              goto LABEL_483;
            case 3839750255:
              result = 169;
              goto LABEL_483;
            case 3856877970:
              result = 110;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v3 > 3865922941)
        {
          if (v3 == 3865922942)
          {
            result = 56;
            goto LABEL_483;
          }

          if (v3 == 3867318491)
          {
            result = 162;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v3 != 3863625342)
        {
          if (v3 == 3865897231)
          {
            result = 79;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_392;
      }

      if (v3 > 3455223060)
      {
        if (v3 <= 3637438249)
        {
          if (v3 <= 3571532205)
          {
            if (v3 == 3455223061)
            {
              result = 83;
              goto LABEL_483;
            }

            if (v3 == 3540156652)
            {
              result = 93;
              goto LABEL_483;
            }

            v9 = 3543203160;
            goto LABEL_276;
          }

          if (v3 <= 3599094682)
          {
            if (v3 == 3571532206)
            {
              result = 151;
              goto LABEL_483;
            }

            if (v3 == 3585085679)
            {
              result = 10;
              goto LABEL_483;
            }

LABEL_482:
            result = 0;
            goto LABEL_483;
          }

          if (v3 != 3599094683)
          {
            if (v3 != 3636345305)
            {
              goto LABEL_482;
            }

            goto LABEL_355;
          }

LABEL_392:
          result = 97;
          goto LABEL_483;
        }

        if (v3 <= 3670339450)
        {
          if (v3 == 3637438250)
          {
            result = 52;
            goto LABEL_483;
          }

          if (v3 != 3645319985)
          {
            if (v3 == 3663011141)
            {
              result = 156;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_400;
        }

        if (v3 > 3683904381)
        {
          if (v3 == 3683904382)
          {
            result = 137;
            goto LABEL_483;
          }

          v5 = 3707345671;
          goto LABEL_367;
        }

        if (v3 == 3670339451)
        {
          goto LABEL_373;
        }

        if (v3 != 3677894691)
        {
          goto LABEL_482;
        }

LABEL_390:
        result = 102;
        goto LABEL_483;
      }

      if (v3 > 3242623366)
      {
        if (v3 <= 3361025852)
        {
          switch(v3)
          {
            case 3242623367:
              result = 15;
              goto LABEL_483;
            case 3300281076:
              result = 54;
              goto LABEL_483;
            case 3348380076:
              result = 4;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v3 <= 3402870383)
        {
          if (v3 != 3361025853)
          {
            if (v3 == 3397214291)
            {
              result = 74;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_397;
        }

        if (v3 == 3402870384)
        {
          result = 70;
          goto LABEL_483;
        }

        v7 = 3417429877;
LABEL_371:
        if (v3 != v7)
        {
          goto LABEL_482;
        }

        goto LABEL_372;
      }

      if (v3 <= 3217792189)
      {
        if (v3 != 3196158497)
        {
          if (v3 == 3196805751)
          {
            result = 7;
            goto LABEL_483;
          }

          if (v3 == 3215673114)
          {
            result = 75;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_355;
      }

      if (v3 == 3217792190)
      {
        goto LABEL_373;
      }

      if (v3 == 3228373941)
      {
        goto LABEL_393;
      }

      if (v3 != 3241053352)
      {
        goto LABEL_482;
      }

LABEL_405:
      result = 107;
      goto LABEL_483;
    }

    if (v3 > 2673319455)
    {
      if (v3 > 2903084587)
      {
        if (v3 <= 3054476160)
        {
          if (v3 <= 2943112656)
          {
            switch(v3)
            {
              case 2903084588:
                result = 85;
                goto LABEL_483;
              case 2940697645:
                result = 38;
                goto LABEL_483;
              case 2941181571:
                result = 41;
                goto LABEL_483;
            }
          }

          else if (v3 > 2979575959)
          {
            if (v3 == 2979575960)
            {
              result = 155;
              goto LABEL_483;
            }

            if (v3 == 3001488778)
            {
              result = 34;
              goto LABEL_483;
            }
          }

          else
          {
            if (v3 == 2943112657)
            {
              result = 149;
              goto LABEL_483;
            }

            if (v3 == 2959111092)
            {
              result = 95;
              goto LABEL_483;
            }
          }

          goto LABEL_482;
        }

        if (v3 <= 3128362814)
        {
          if (v3 == 3054476161)
          {
            goto LABEL_252;
          }

          if (v3 == 3101941570)
          {
            goto LABEL_282;
          }

          v11 = 3104290450;
LABEL_322:
          if (v3 == v11)
          {
            result = 197;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v3 <= 3143587591)
        {
          if (v3 != 3128362815)
          {
            if (v3 == 3133873109)
            {
              result = 62;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_372:
          result = 196;
          goto LABEL_483;
        }

        if (v3 == 3143587592)
        {
          result = 166;
          goto LABEL_483;
        }

        v10 = 3184375231;
LABEL_336:
        if (v3 == v10)
        {
          result = 77;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v3 > 2751865417)
      {
        if (v3 <= 2795618602)
        {
          switch(v3)
          {
            case 2751865418:
              result = 143;
              goto LABEL_483;
            case 2781508713:
              result = 6;
              goto LABEL_483;
            case 2793418701:
              result = 19;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v3 <= 2823174121)
        {
          if (v3 == 2795618603)
          {
            result = 42;
            goto LABEL_483;
          }

          if (v3 == 2797549163)
          {
            result = 113;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v3 != 2823174122)
        {
          v5 = 2880863278;
          goto LABEL_367;
        }

        goto LABEL_394;
      }

      if (v3 > 2702125346)
      {
        switch(v3)
        {
          case 2702125347:
            result = 3;
            goto LABEL_483;
          case 2722529672:
            result = 28;
            goto LABEL_483;
          case 2730762296:
            result = 112;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v3 != 2673319456)
      {
        if (v3 == 2688879999)
        {
          result = 39;
          goto LABEL_483;
        }

        v8 = 2692844695;
LABEL_298:
        if (v3 == v8)
        {
          result = 199;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_403;
    }

    if (v3 > 2454275342)
    {
      if (v3 > 2614323574)
      {
        if (v3 > 2625074842)
        {
          if (v3 <= 2634105756)
          {
            if (v3 == 2625074843)
            {
              result = 161;
              goto LABEL_483;
            }

            v6 = 2628394914;
LABEL_208:
            if (v3 != v6)
            {
              goto LABEL_482;
            }

LABEL_252:
            result = 101;
            goto LABEL_483;
          }

          if (v3 != 2634105757)
          {
            if (v3 == 2644487444)
            {
              result = 92;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_390;
        }

        if (v3 != 2614323575)
        {
          if (v3 != 2619317134)
          {
            if (v3 != 2622433984)
            {
              goto LABEL_482;
            }

            goto LABEL_319;
          }

          goto LABEL_402;
        }

LABEL_399:
        result = 50;
        goto LABEL_483;
      }

      if (v3 > 2487868871)
      {
        if (v3 == 2487868872)
        {
          goto LABEL_405;
        }

        if (v3 != 2516717268)
        {
          if (v3 == 2566016329)
          {
            result = 94;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_403:
        result = 73;
        goto LABEL_483;
      }

      if (v3 == 2454275343)
      {
        result = 63;
        goto LABEL_483;
      }

      if (v3 != 2458172802)
      {
        v4 = 2468178735;
LABEL_187:
        if (v3 == v4)
        {
          result = 120;
          goto LABEL_483;
        }

        goto LABEL_482;
      }
    }

    else
    {
      if (v3 > 2288107368)
      {
        if (v3 <= 2336512886)
        {
          if (v3 != 2288107369)
          {
            if (v3 == 2309863438)
            {
              result = 37;
              goto LABEL_483;
            }

            if (v3 == 2311900306)
            {
              result = 14;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_406;
        }

        if (v3 > 2418348557)
        {
          if (v3 == 2418348558)
          {
            result = 135;
            goto LABEL_483;
          }

          if (v3 == 2445473385)
          {
            result = 124;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v3 == 2336512887)
        {
          goto LABEL_398;
        }

        if (v3 != 2385671069)
        {
          goto LABEL_482;
        }

        goto LABEL_399;
      }

      if (v3 <= 2236272847)
      {
        if (v3 != 2158787296)
        {
          if (v3 == 2159747553)
          {
            result = 26;
            goto LABEL_483;
          }

          if (v3 != 2162679683)
          {
            goto LABEL_482;
          }

          goto LABEL_401;
        }

LABEL_232:
        result = 69;
        goto LABEL_483;
      }

      if (v3 != 2236272848)
      {
        if (v3 != 2262113699)
        {
          if (v3 == 2270970153)
          {
            result = 21;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_404;
      }
    }

LABEL_355:
    result = 87;
    goto LABEL_483;
  }

  if (v3 <= 1302273957)
  {
    if (v3 > 676119127)
    {
      if (v3 > 952317140)
      {
        if (v3 <= 1169082143)
        {
          if (v3 > 1085318933)
          {
            if (v3 <= 1114644380)
            {
              if (v3 == 1085318934)
              {
                result = 131;
                goto LABEL_483;
              }

              if (v3 == 1110205732)
              {
                result = 48;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            if (v3 == 1114644381)
            {
              result = 82;
              goto LABEL_483;
            }

            v5 = 1119807502;
LABEL_367:
            if (v3 == v5)
            {
              result = 51;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v3 != 952317141)
          {
            if (v3 != 1036038801)
            {
              if (v3 == 1060988941)
              {
                result = 9;
                goto LABEL_483;
              }

              goto LABEL_482;
            }

            goto LABEL_290;
          }

LABEL_398:
          result = 121;
          goto LABEL_483;
        }

        if (v3 <= 1280441782)
        {
          switch(v3)
          {
            case 1169082144:
              result = 33;
              goto LABEL_483;
            case 1234705395:
              result = 125;
              goto LABEL_483;
            case 1260109173:
              result = 45;
              goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v3 > 1293446024)
        {
          if (v3 != 1293446025)
          {
            if (v3 == 1294429942)
            {
              result = 147;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_389;
        }

        if (v3 != 1280441783)
        {
          if (v3 == 1280909812)
          {
            result = 152;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_396:
        result = 78;
        goto LABEL_483;
      }

      if (v3 > 776033018)
      {
        if (v3 > 851437780)
        {
          if (v3 <= 910181309)
          {
            if (v3 == 851437781)
            {
              result = 29;
              goto LABEL_483;
            }

            if (v3 == 896202454)
            {
              result = 71;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v3 == 910181310)
          {
            goto LABEL_395;
          }

          v11 = 910313402;
          goto LABEL_322;
        }

        if (v3 == 776033019)
        {
          result = 57;
          goto LABEL_483;
        }

        if (v3 != 810906663)
        {
          if (v3 != 820711327)
          {
            goto LABEL_482;
          }

          goto LABEL_232;
        }

LABEL_319:
        result = 98;
        goto LABEL_483;
      }

      if (v3 <= 746003605)
      {
        if (v3 == 676119128)
        {
          result = 146;
          goto LABEL_483;
        }

        if (v3 == 689804742)
        {
          result = 36;
          goto LABEL_483;
        }

        v7 = 698697055;
        goto LABEL_371;
      }

      if (v3 == 746003606)
      {
        goto LABEL_252;
      }

      if (v3 == 749116821)
      {
        result = 165;
        goto LABEL_483;
      }

      if (v3 != 761631964)
      {
        goto LABEL_482;
      }

LABEL_394:
      result = 109;
      goto LABEL_483;
    }

    if (v3 <= 337183580)
    {
      if (v3 > 133314239)
      {
        if (v3 <= 228444037)
        {
          if (v3 == 133314240)
          {
            result = 40;
            goto LABEL_483;
          }

          if (v3 != 157833461)
          {
            if (v3 == 173258742)
            {
              result = 59;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          goto LABEL_396;
        }

        if (v3 > 262180326)
        {
          if (v3 == 262180327)
          {
            result = 123;
            goto LABEL_483;
          }

          if (v3 == 330877086)
          {
            result = 43;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        if (v3 != 228444038)
        {
          v4 = 253148925;
          goto LABEL_187;
        }

LABEL_400:
        result = 72;
        goto LABEL_483;
      }

      if (v3 <= 42878381)
      {
        switch(v3)
        {
          case 23433786:
            result = 61;
            goto LABEL_483;
          case 33245053:
            result = 68;
            goto LABEL_483;
          case 40511012:
            result = 134;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v3 == 42878382)
      {
        result = 12;
        goto LABEL_483;
      }

      if (v3 != 79936591)
      {
        v10 = 88647037;
        goto LABEL_336;
      }

LABEL_404:
      result = 76;
      goto LABEL_483;
    }

    if (v3 <= 363237282)
    {
      if (v3 > 344862119)
      {
        switch(v3)
        {
          case 344862120:
            result = 115;
            goto LABEL_483;
          case 355234908:
            result = 129;
            goto LABEL_483;
          case 358923952:
            result = 126;
            goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v3 == 337183581)
      {
        result = 11;
        goto LABEL_483;
      }

      if (v3 == 340218669)
      {
        result = 111;
        goto LABEL_483;
      }

      if (v3 != 341800273)
      {
        goto LABEL_482;
      }

      goto LABEL_346;
    }

    if (v3 <= 502329936)
    {
      if (v3 != 363237283)
      {
        if (v3 == 425046865)
        {
          result = 157;
          goto LABEL_483;
        }

        if (v3 == 445396642)
        {
          result = 117;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v3 <= 555503453)
    {
      if (v3 == 502329937)
      {
        result = 22;
        goto LABEL_483;
      }

      v5 = 551446205;
      goto LABEL_367;
    }

    if (v3 != 555503454)
    {
      if (v3 == 574536383)
      {
        result = 30;
        goto LABEL_483;
      }

      goto LABEL_482;
    }

LABEL_402:
    result = 106;
    goto LABEL_483;
  }

  if (v3 > 1733600852)
  {
    if (v3 > 2023824666)
    {
      if (v3 <= 2085054104)
      {
        if (v3 > 2078329140)
        {
          if (v3 <= 2081274471)
          {
            if (v3 == 2078329141)
            {
              result = 31;
              goto LABEL_483;
            }

            if (v3 == 2080700391)
            {
              result = 46;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

          if (v3 != 2081274472)
          {
            if (v3 == 2084894489)
            {
              result = 164;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_401:
          result = 122;
          goto LABEL_483;
        }

        if (v3 == 2023824667)
        {
          goto LABEL_282;
        }

        if (v3 != 2032616841)
        {
          if (v3 == 2048538371)
          {
            result = 60;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

LABEL_395:
        result = 25;
        goto LABEL_483;
      }

      if (v3 > 2103978417)
      {
        if (v3 <= 2141052861)
        {
          if (v3 != 2103978418)
          {
            if (v3 == 2132302344)
            {
              result = 148;
              goto LABEL_483;
            }

            goto LABEL_482;
          }

LABEL_389:
          result = 96;
          goto LABEL_483;
        }

        if (v3 != 2141052862)
        {
          v7 = 2144123136;
          goto LABEL_371;
        }

LABEL_373:
        result = 195;
        goto LABEL_483;
      }

      if (v3 == 2085054105)
      {
        result = 158;
        goto LABEL_483;
      }

      if (v3 != 2089455188)
      {
        v8 = 2095883268;
        goto LABEL_298;
      }

LABEL_397:
      result = 105;
      goto LABEL_483;
    }

    if (v3 > 1868379042)
    {
      if (v3 <= 1908832378)
      {
        if (v3 != 1868379043)
        {
          if (v3 == 1878257790)
          {
            result = 81;
            goto LABEL_483;
          }

          if (v3 == 1895344378)
          {
            result = 86;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_282;
      }

      if (v3 > 2001966016)
      {
        if (v3 != 2001966017)
        {
          if (v3 == 2021146989)
          {
            result = 18;
            goto LABEL_483;
          }

          goto LABEL_482;
        }

        goto LABEL_346;
      }

      if (v3 != 1908832379)
      {
        if (v3 == 1990293942)
        {
          result = 140;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_391;
    }

    if (v3 <= 1756509289)
    {
      if (v3 == 1733600853)
      {
        result = 128;
        goto LABEL_483;
      }

      if (v3 == 1737882206)
      {
        result = 116;
        goto LABEL_483;
      }

      v9 = 1744899922;
LABEL_276:
      if (v3 != v9)
      {
        goto LABEL_482;
      }

      goto LABEL_373;
    }

    if (v3 == 1756509290)
    {
      result = 144;
      goto LABEL_483;
    }

    if (v3 == 1770142589)
    {
      result = 163;
      goto LABEL_483;
    }

    v6 = 1834147427;
    goto LABEL_208;
  }

  if (v3 <= 1429914405)
  {
    if (v3 > 1373516432)
    {
      if (v3 > 1408738133)
      {
        if (v3 > 1415625991)
        {
          if (v3 == 1415625992)
          {
            result = 136;
            goto LABEL_483;
          }

          if (v3 == 1419435331)
          {
            result = 142;
            goto LABEL_483;
          }
        }

        else
        {
          if (v3 == 1408738134)
          {
            result = 150;
            goto LABEL_483;
          }

          if (v3 == 1412429328)
          {
            result = 65;
            goto LABEL_483;
          }
        }

        goto LABEL_482;
      }

      if (v3 != 1373516433)
      {
        if (v3 == 1380747801)
        {
          result = 127;
          goto LABEL_483;
        }

        if (v3 == 1402208364)
        {
          result = 130;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_282:
      result = 100;
      goto LABEL_483;
    }

    if (v3 <= 1353145732)
    {
      if (v3 != 1302273958)
      {
        if (v3 == 1309571158)
        {
          result = 141;
          goto LABEL_483;
        }

        if (v3 == 1325975682)
        {
          result = 67;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_406:
      result = 108;
      goto LABEL_483;
    }

    if (v3 != 1353145733)
    {
      if (v3 != 1364038516)
      {
        if (v3 == 1371389549)
        {
          result = 27;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      goto LABEL_372;
    }

LABEL_346:
    result = 88;
    goto LABEL_483;
  }

  if (v3 > 1573906121)
  {
    if (v3 > 1625227433)
    {
      if (v3 > 1701146936)
      {
        if (v3 == 1701146937)
        {
          result = 49;
          goto LABEL_483;
        }

        if (v3 == 1721691077)
        {
          result = 16;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      if (v3 != 1625227434)
      {
        if (v3 == 1644180312)
        {
          result = 145;
          goto LABEL_483;
        }

        goto LABEL_482;
      }

LABEL_393:
      result = 104;
      goto LABEL_483;
    }

    if (v3 == 1573906122)
    {
      result = 138;
      goto LABEL_483;
    }

    if (v3 == 1602181456)
    {
      result = 154;
      goto LABEL_483;
    }

    if (v3 != 1608945770)
    {
      goto LABEL_482;
    }

LABEL_290:
    result = 192;
    goto LABEL_483;
  }

  if (v3 <= 1540760352)
  {
    switch(v3)
    {
      case 1429914406:
        result = 23;
        goto LABEL_483;
      case 1434404433:
        result = 17;
        goto LABEL_483;
      case 1517755655:
        result = 171;
        goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v3 > 1554479184)
  {
    if (v3 == 1554479185)
    {
      result = 167;
      goto LABEL_483;
    }

    if (v3 == 1559256613)
    {
      result = 55;
      goto LABEL_483;
    }

    goto LABEL_482;
  }

  if (v3 == 1540760353)
  {
    result = 5;
    goto LABEL_483;
  }

  if (v3 != 1549248876)
  {
    goto LABEL_482;
  }

  result = 172;
LABEL_483:
  dword_6E6698 = result;
  return result;
}