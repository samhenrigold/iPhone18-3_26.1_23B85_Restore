uint64_t sub_2160(uint64_t a1)
{
  std::recursive_mutex::lock((a1 + 168));
  v2 = pthread_self();
  v3 = *(a1 + 256);
  if (!*&v3)
  {
    goto LABEL_17;
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ (v2 >> 32));
  v5 = 0x9DDFEA08EB382D69 * ((v2 >> 32) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = vcnt_s8(v3);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v3)
    {
      v8 = v6 % *&v3;
    }
  }

  else
  {
    v8 = v6 & (*&v3 - 1);
  }

  v9 = *(*(a1 + 248) + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v10[1];
    if (v6 == v11)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (v2 != v10[2])
  {
    goto LABEL_16;
  }

  v13 = 1;
LABEL_18:
  std::recursive_mutex::unlock((a1 + 168));
  return v13;
}

void *sub_2284(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_26C0(uint64_t a1)
{
  v2 = pthread_self();
  v4 = v2;
  std::recursive_mutex::lock((a1 + 168));
  if (*(a1 + 232) == v2)
  {
    v3 = (a1 + 240);
  }

  else
  {
    if (!sub_2160(a1))
    {
      std::recursive_mutex::unlock((a1 + 168));
      std::__shared_mutex_base::lock_shared(a1);
      std::recursive_mutex::lock((a1 + 168));
      v5 = &v4;
      sub_2284((a1 + 248), v2, &v5)[3] = 1;
      goto LABEL_7;
    }

    v5 = &v4;
    v3 = sub_2284((a1 + 248), v2, &v5) + 3;
  }

  ++*v3;
LABEL_7:
  std::recursive_mutex::unlock((a1 + 168));
}

void sub_27A4()
{
  if ((atomic_load_explicit(&qword_6E9638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9638))
  {
    sub_2E6A40();

    __cxa_guard_release(&qword_6E9638);
  }
}

void sub_2820()
{
  if ((atomic_load_explicit(&qword_6FCF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FCF10))
  {
    sub_49BE8(&unk_6FCDC8);
    xmmword_6FCEE8 = 0u;
    *&qword_6FCEF8 = 0u;
    dword_6FCF08 = 1065353216;

    __cxa_guard_release(&qword_6FCF10);
  }
}

NSObject *sub_28BC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "HP_HardwarePlugInInterface.cpp";
      v37 = 1024;
      v38 = 224;
      v18 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_ObjectHasProperty: no plug-in";
LABEL_39:
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
    }

LABEL_40:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a3)
  {
    v19 = sub_5544(14);
    v17 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "HP_HardwarePlugInInterface.cpp";
      v37 = 1024;
      v38 = 225;
      v18 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inAddress is NULL]: HP_HardwarePlugIn_ObjectHasProperty: no address";
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v4 = a2;
  if (*a3 == 1651798132)
  {
    sub_2820();
    v34 = sub_5C838(&unk_6FCDC8);
    if ((v34 & 1) == 0)
    {
      v21 = sub_5544(14);
      v22 = *v21;
      if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "HP_ObjectManager.h";
        v37 = 1024;
        v38 = 98;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): TryExecuteSynchronized: unable to lock object map mutex", buf, 0x12u);
      }

      v23 = __cxa_allocate_exception(0x10uLL);
      *v23 = &off_6DDDD0;
      v23[2] = 560947818;
    }

    v5 = sub_23B090(&xmmword_6FCEE8, v4);
    if (!v5)
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "HP_ObjectManager.h";
        v37 = 1024;
        v38 = 101;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", buf, 0x12u);
      }

      v29 = __cxa_allocate_exception(0x10uLL);
      *v29 = &off_6DDDD0;
      v29[2] = 560947818;
    }

    v6 = atomic_load((v5[3] + 312));
    if (v6)
    {
      v8 = v5[3];
      v7 = v5[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    if (v34 == 1)
    {
      sub_3174(&unk_6FCDC8);
    }

    if (v8)
    {
      if ((sub_5C838(v8 + 24) & 1) == 0)
      {
        v30 = sub_5544(14);
        v31 = *v30;
        if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v36 = "HP_ObjectManager.h";
          v37 = 1024;
          v38 = 126;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): TryExecuteSynchronized: unable to lock object mutex", buf, 0x12u);
        }

        v32 = __cxa_allocate_exception(0x10uLL);
        *v32 = &off_6DDDD0;
        v32[2] = 560947818;
      }

      v12 = (*(**(v8 + 16) + 48))(*(v8 + 16), a3);
      sub_3174(v8 + 24);
      goto LABEL_30;
    }

    v14 = sub_5544(5);
    v12 = *v14;
    if (!*v14)
    {
      goto LABEL_30;
    }

    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v36 = "HP_ObjectManager.h";
      v37 = 1024;
      v38 = 111;
      v39 = 2048;
      v40 = v4;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  sub_2820();
  v33 = v4;
  sub_26C0(&unk_6FCDC8);
  v9 = sub_23B090(&xmmword_6FCEE8, v4);
  if (!v9)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "HP_ObjectManager.h";
      v37 = 1024;
      v38 = 56;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", buf, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 560947818;
  }

  v10 = atomic_load((v9[3] + 312));
  if (v10)
  {
    v11 = v9[3];
    v7 = v9[4];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v11 = 0;
  }

  sub_3174(&unk_6FCDC8);
  if (v11)
  {
    sub_26C0(v11 + 24);
    operator new();
  }

  v13 = sub_5544(5);
  v12 = *v13;
  if (*v13)
  {
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v36 = "HP_ObjectManager.h";
      v37 = 1024;
      v38 = 66;
      v39 = 2048;
      v40 = v33;
LABEL_28:
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HP_Object at ID %lu is invalid.", buf, 0x1Cu);
    }

LABEL_29:
    v12 = 0;
  }

LABEL_30:
  if (v7)
  {
    sub_1A8C0(v7);
  }

  return v12;
}

void sub_3080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_30D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  if (a2)
  {
    sub_422418(va);
    sub_4650(va1);
    JUMPOUT(0x3118);
  }

  JUMPOUT(0x30C8);
}

void sub_310C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a2)
  {
    if (a11)
    {
      sub_1A8C0(a11);
    }

    JUMPOUT(0x315CLL);
  }

  JUMPOUT(0x30C8);
}

void sub_3148(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2C44);
  }

  JUMPOUT(0x30C8);
}

void sub_3150(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2C44);
  }

  JUMPOUT(0x30C8);
}

void sub_3158(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x315CLL);
  }

  JUMPOUT(0x30C8);
}

void sub_3174(uint64_t a1)
{
  v2 = pthread_self();
  v5 = v2;
  std::recursive_mutex::lock((a1 + 168));
  if (*(a1 + 232) == v2)
  {
    v4 = (a1 + 240);
    goto LABEL_7;
  }

  if ((sub_2160(a1) & 1) == 0)
  {
LABEL_8:
    std::recursive_mutex::unlock((a1 + 168));
    return;
  }

  v3 = sub_4740((a1 + 248), v2);
  if (!v3)
  {
    sub_DE7DC("unordered_map::at: key not found");
  }

  if (v3[3] >= 2uLL)
  {
    v6 = &v5;
    v4 = sub_2284((a1 + 248), v2, &v6) + 3;
LABEL_7:
    --*v4;
    goto LABEL_8;
  }

  sub_4828((a1 + 248), v2);
  std::recursive_mutex::unlock((a1 + 168));

  std::__shared_mutex_base::unlock_shared(a1);
}

BOOL sub_327C(uint64_t a1)
{
  v2 = atomic_load((a1 + 96));
  if (v2 == pthread_self())
  {
    return 0;
  }

  v3 = sub_42A43C(a1);
  if ((sub_4AD0(a1) & 1) == 0)
  {
    v5 = atomic_load((a1 + 96));
    if (v5 != pthread_self())
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          *v13 = 136315394;
          *&v13[4] = "RoutingMutex.cpp";
          v14 = 1024;
          v15 = 220;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mutex not owned by current thread", v13, 0x12u);
        }
      }
    }

LABEL_6:
    if ((sub_4AD0(a1) & 1) == 0)
    {
      *v13 = a1 + 200;
      v13[8] = 1;
      std::mutex::lock((a1 + 200));
      v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 25000000;
      while (1)
      {
        if ((*(a1 + 264) & 1) != 0 || v6.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
        {
LABEL_24:
          if (v13[8] == 1)
          {
            std::mutex::unlock(*v13);
          }

          goto LABEL_6;
        }

        v7.__d_.__rep_ = v6.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
        if (v7.__d_.__rep_ >= 1)
        {
          break;
        }

LABEL_23:
        if (std::chrono::steady_clock::now().__d_.__rep_ >= v6.__d_.__rep_)
        {
          goto LABEL_24;
        }
      }

      std::chrono::steady_clock::now();
      v8.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v8.__d_.__rep_)
      {
        v9 = 0;
        goto LABEL_21;
      }

      if (v8.__d_.__rep_ < 1)
      {
        if (v8.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v9 = 0x8000000000000000;
          goto LABEL_21;
        }
      }

      else if (v8.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_19;
      }

      v9 = 1000 * v8.__d_.__rep_;
LABEL_19:
      if (v9 > (v7.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v10.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_22:
        std::condition_variable::__do_timed_wait((a1 + 272), v13, v10);
        std::chrono::steady_clock::now();
        goto LABEL_23;
      }

LABEL_21:
      v10.__d_.__rep_ = v9 + v7.__d_.__rep_;
      goto LABEL_22;
    }
  }

  return v3;
}

void sub_34B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_34C8(uint64_t a1)
{
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit((a1 + 16), memory_order_acquire)))
  {
    atomic_store(0, (a1 + 16));
    v3 = pthread_mutex_unlock((a1 + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CAMutex.cpp";
        v8 = 1024;
        v9 = 152;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "CAMutex.cpp";
    v8 = 1024;
    v9 = 160;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v6, 0x12u);
  }
}

uint64_t sub_3650(uint64_t a1, int *a2)
{
  if (*a2 != 1986095470)
  {
    sub_27A4();
    v22 = (*(qword_6E94F8 + 16))();
    if (*(a1 + 108) != 2)
    {
      v18 = sub_5544(14);
      v19 = sub_468EC(1, *v18, *(v18 + 8));
      v20 = v19;
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "VirtualAudio_PlugIn.mm";
        v25 = 1024;
        v26 = 5543;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): VirtualAudio PlugIn is not initialized yet", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "VirtualAudio PlugIn is not initialized yet");
    }

    v5 = *a2;
    v2 = 1;
    if (*a2 > 1818850144)
    {
      if (v5 <= 1920426612)
      {
        if (v5 <= 1886548847)
        {
          if (v5 > 1868853874)
          {
            if (v5 == 1868853875 || v5 == 1885958772)
            {
              goto LABEL_78;
            }

            v6 = 1886350709;
          }

          else
          {
            if (v5 == 1818850145 || v5 == 1818850162)
            {
              goto LABEL_78;
            }

            v6 = 1819173229;
          }
        }

        else if (v5 <= 1903653474)
        {
          if (v5 == 1886548848 || v5 == 1886549107)
          {
            goto LABEL_78;
          }

          v6 = 1886872690;
        }

        else if (v5 > 1920230245)
        {
          if (v5 == 1920230246)
          {
            goto LABEL_78;
          }

          v6 = 1920297328;
        }

        else
        {
          if (v5 == 1903653475)
          {
            goto LABEL_78;
          }

          v6 = 1919120504;
        }

        goto LABEL_77;
      }

      if (v5 > 1936882283)
      {
        if (v5 > 1987016303)
        {
          if (v5 == 1987016304 || v5 == 1987077486)
          {
            goto LABEL_78;
          }

          v6 = 2019714413;
        }

        else
        {
          if ((v5 - 1986094179) < 2)
          {
            goto LABEL_78;
          }

          v6 = 1936882284;
        }

        goto LABEL_77;
      }

      if (v5 <= 1936745331)
      {
        if (v5 == 1920426613 || v5 == 1936028521)
        {
          goto LABEL_78;
        }

        v6 = 1936225648;
        goto LABEL_77;
      }

      if (v5 == 1936745332)
      {
        goto LABEL_78;
      }

      if (v5 != 1936745573)
      {
        v6 = 1936746862;
        goto LABEL_77;
      }

      v10 = sub_3B34B0();
LABEL_83:
      v2 = v10;
      goto LABEL_78;
    }

    if (v5 > 1667329391)
    {
      if (v5 <= 1685283954)
      {
        if (v5 <= 1668510573)
        {
          if (v5 == 1667329392 || v5 == 1668310627)
          {
            goto LABEL_78;
          }

          v6 = 1668313699;
          goto LABEL_77;
        }

        if (v5 != 1668510574)
        {
          if (v5 == 1668575346)
          {
            goto LABEL_78;
          }

          v6 = 1684632434;
          goto LABEL_77;
        }
      }

      else
      {
        if (v5 > 1701737067)
        {
          if (v5 <= 1768845420)
          {
            if (v5 != 1701737068)
            {
              v6 = 1751480691;
              goto LABEL_77;
            }

LABEL_78:
            sub_210C50(&v22);
            return v2;
          }

          if (v5 == 1768845421)
          {
            goto LABEL_78;
          }

          v6 = 1769304164;
LABEL_77:
          if (v5 == v6)
          {
            goto LABEL_78;
          }

          goto LABEL_84;
        }

        if (v5 == 1685283955)
        {
          goto LABEL_78;
        }

        if (v5 != 1685287790)
        {
          if (v5 == 1701013875)
          {
            v10 = sub_DB94C();
            goto LABEL_83;
          }

LABEL_84:
          v12 = sub_1537C(a1, a2) == 0;
          goto LABEL_85;
        }
      }

      if (!_os_feature_enabled_impl())
      {
        v2 = 0;
        goto LABEL_78;
      }

      v12 = sub_48DC8() == 0;
LABEL_85:
      v2 = !v12;
      goto LABEL_78;
    }

    if (v5 > 1634756194)
    {
      if (v5 > 1651077235)
      {
        if (v5 == 1651077236 || v5 == 1651077731)
        {
          goto LABEL_78;
        }

        v6 = 1651664755;
        goto LABEL_77;
      }

      if (v5 == 1634756195 || v5 == 1634759267)
      {
        goto LABEL_78;
      }

      if (v5 != 1635152483)
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v5 > 1634627951)
      {
        if (v5 == 1634627952 || v5 == 1634627954)
        {
          goto LABEL_78;
        }

        v7 = 30578;
LABEL_63:
        v6 = v7 | 0x616E0000;
        goto LABEL_77;
      }

      if (v5 != 1633907299)
      {
        if (v5 == 1633969267)
        {
          goto LABEL_78;
        }

        v7 = 25459;
        goto LABEL_63;
      }
    }

    v8 = sub_9E618(*(a1 + 128), a2[2]);
    if (!v8)
    {
      v13 = sub_5544(14);
      v14 = sub_468EC(1, *v13, *(v13 + 8));
      v15 = v14;
      if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = a2[2];
        *buf = 136315650;
        v24 = "VirtualAudio_PlugIn.mm";
        v25 = 1024;
        v26 = 5614;
        v27 = 1024;
        v28 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [vaPort is NULL]: VirtualAudio_Port could not be located for ID: %u", buf, 0x18u);
      }

      v17 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v17, "VirtualAudio_Port could not be located for ID: %u");
    }

    if (*a2 == 1635152483)
    {
      v9 = 1885434722;
    }

    else
    {
      v9 = 1885430643;
    }

    *buf = v9;
    v24 = 1735159650;
    v10 = (*(*v8 + 48))(v8, buf);
    goto LABEL_83;
  }

  return 1;
}

uint64_t sub_3D90(unsigned int a1)
{
  sub_26C0(&unk_6FCDC8);
  if (!*(&xmmword_6FCEE8 + 1))
  {
    goto LABEL_20;
  }

  v2 = vcnt_s8(*(&xmmword_6FCEE8 + 8));
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = a1;
    if (*(&xmmword_6FCEE8 + 1) <= a1)
    {
      v3 = a1 % DWORD2(xmmword_6FCEE8);
    }
  }

  else
  {
    v3 = (DWORD2(xmmword_6FCEE8) - 1) & a1;
  }

  v4 = *(xmmword_6FCEE8 + 8 * v3);
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = *v4;
  if (!v5)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == a1)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *(&xmmword_6FCEE8 + 1))
      {
        v6 %= *(&xmmword_6FCEE8 + 1);
      }
    }

    else
    {
      v6 &= *(&xmmword_6FCEE8 + 1) - 1;
    }

    if (v6 != v3)
    {
      goto LABEL_20;
    }

LABEL_16:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (*(v5 + 4) != a1)
  {
    goto LABEL_16;
  }

  v7 = atomic_load((v5[3] + 312));
  if ((v7 & 1) == 0)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  v8 = *(v5[3] + 16);
LABEL_21:
  sub_3174(&unk_6FCDC8);
  return v8;
}

uint64_t sub_3EA4(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  if (!a1)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (!*v11 || !os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315394;
    *&buf[4] = "HP_HardwarePlugInInterface.cpp";
    v21 = 1024;
    v22 = 259;
    v13 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_ObjectIsPropertySettable: no plug-in";
LABEL_17:
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    goto LABEL_18;
  }

  if (!a3)
  {
    v14 = sub_5544(14);
    v12 = *v14;
    if (!*v14 || !os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315394;
    *&buf[4] = "HP_HardwarePlugInInterface.cpp";
    v21 = 1024;
    v22 = 260;
    v13 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inAddress is NULL]: HP_HardwarePlugIn_ObjectIsPropertySettable: no address";
    goto LABEL_17;
  }

  if (!a4)
  {
    v15 = sub_5544(14);
    v12 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v21 = 1024;
      v22 = 261;
      v13 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [outIsSettable is NULL]: HP_HardwarePlugIn_ObjectIsPropertySettable: no place to store return value";
      goto LABEL_17;
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v7 = sub_3D90(a2);
  v8 = v7;
  if (!v7)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v21 = 1024;
      v22 = 264;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theObject is NULL]: HP_HardwarePlugIn_ObjectIsPropertySettable: no object with given ID", buf, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    *v19 = &off_6DDDD0;
    v19[2] = 560947818;
  }

  *buf = v7;
  v9 = (*(*v7 + 24))(v7);
  buf[8] = v9;
  *a4 = (*(*v8 + 56))(v8, a3);
  if (v9)
  {
    (*(*v8 + 32))(v8);
  }

  return 0;
}

void sub_41F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_4208(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, ...)
{
  va_start(va, a10);
  if (a2)
  {
    sub_422418(va);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3F8CLL);
  }

  JUMPOUT(0x41F8);
}

uint64_t sub_4298(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v26 = 1024;
      v27 = 367;
      v19 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_ObjectSetPropertyData: no plug-in";
LABEL_13:
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
    }

LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (!a3)
  {
    v20 = sub_5544(14);
    v18 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v26 = 1024;
      v27 = 368;
      v19 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inAddress is NULL]: HP_HardwarePlugIn_ObjectSetPropertyData: no address";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_2820();
  v13 = sub_3D90(a2);
  v14 = v13;
  if (!v13)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v26 = 1024;
      v27 = 371;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theObject is NULL]: HP_HardwarePlugIn_ObjectSetPropertyData: no object with given ID", buf, 0x12u);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 560947818;
  }

  *buf = v13;
  v15 = (*(*v13 + 24))(v13);
  buf[8] = v15;
  (*(*v14 + 80))(v14, a3, a4, a5, a6, a7, 0);
  if (v15)
  {
    (*(*v14 + 32))(v14);
  }

  return 0;
}

void sub_45B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_45C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, ...)
{
  va_start(va, a10);
  if (a2)
  {
    sub_422418(va);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x43A0);
  }

  JUMPOUT(0x45B8);
}

uint64_t sub_4650(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_46A74();
  }

  (*(*v2 + 48))(v2);

  return sub_4C70(a1);
}

void sub_46BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_26C0(v2);
  if (sub_23B090((v2 + 288), **(a1 + 16)))
  {
    sub_3174(**(a1 + 24) + 24);
  }

  sub_3174(v2);
}

void *sub_4740(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_4828(void *a1, unint64_t a2)
{
  v3 = sub_4740(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
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

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

BOOL sub_4990(uint64_t a1)
{
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit((a1 + 16), memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((a1 + 24));
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "CAMutex.cpp";
        v10 = 1024;
        v11 = 106;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v6;
    }

    atomic_store(v2, (a1 + 16));
  }

  return v3 == 0;
}

unint64_t sub_4AD0(uint64_t a1)
{
  v2 = atomic_load((a1 + 96));
  if (v2 != pthread_self())
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoutingMutex.cpp";
        v10 = 1024;
        v11 = 199;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mutex not owned by current thread", &v8, 0x12u);
      }
    }
  }

  std::mutex::lock((a1 + 104));
  if (*(a1 + 192))
  {
    sub_4E890();
    if (dispatch_get_specific("AudioObjectPropertyListenerManagerQueueKey") != "AudioObjectPropertyListenerManagerQueueKey")
    {
      v3 = AudioObjectIsOnListenerThread() != 0;
      goto LABEL_11;
    }

LABEL_10:
    v3 = 1;
    goto LABEL_11;
  }

  if (!*(a1 + 184))
  {
    goto LABEL_10;
  }

  v4 = *(a1 + 176);
  if (v4 == a1 + 168)
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v3 = sub_4DF80(*(*(v4 + 16) + 456));
      if (v3)
      {
        break;
      }

      v4 = *(v4 + 8);
    }

    while (v4 != a1 + 168);
  }

LABEL_11:
  std::mutex::unlock((a1 + 104));
  return v3;
}

uint64_t sub_4C70(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_4CF4(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 8;
  if (a2)
  {
    v3 = 32;
  }

  v4 = 24;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = *(a1 + v3);
  v6 = *(a1 + v4);
  if (0x4EC4EC4EC4EC4EC5 * ((v5 - v6) >> 4) <= a3)
  {
    HIDWORD(v14) = a3;
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      if (a2)
      {
        v11 = "output";
      }

      else
      {
        v11 = "input";
      }

      sub_53E8(__p, v11);
      if (v16 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136315906;
      v18 = "AggregateDevice_Common.cpp";
      v19 = 1024;
      v20 = 1582;
      v21 = 2080;
      v22 = v12;
      v23 = 1024;
      v24 = HIDWORD(v14);
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::range_error): Requested stream does not exist: out of range. inDirection: %s; inIndex: %u", buf, 0x22u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_36E9A8(exception, "Requested stream does not exist: out of range. inDirection: %s; inIndex: %u", v14, LODWORD(__p[0]));
  }

  return v6 + 208 * a3;
}

uint64_t sub_4EBC(uint64_t result)
{
  if (!*(result + 128))
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AggregateDevice_CommonBase.cpp";
      v20 = 1024;
      v21 = 2332;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v18, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

  if (!*(result + 536))
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AggregateDevice_CommonBase.cpp";
      v20 = 1024;
      v21 = 2333;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v18, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "Invariant failure.");
  }

  for (i = *(result + 640); i != *(result + 648); i += 2)
  {
    if (!*i)
    {
      v3 = sub_5544(14);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          v18 = 136315394;
          v19 = "AggregateDevice_CommonBase.cpp";
          v20 = 1024;
          v21 = 2334;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v18, 0x12u);
        }
      }

      v5 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v5, "Invariant failure.");
    }
  }

  for (j = *(result + 664); j != *(result + 672); j += 2)
  {
    if (!*j)
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "AggregateDevice_CommonBase.cpp";
        v20 = 1024;
        v21 = 2335;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v18, 0x12u);
      }

      v8 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v8, "Invariant failure.");
    }
  }

  if ((*(result + 576) == 0) == (*(result + 584) != 0))
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AggregateDevice_CommonBase.cpp";
      v20 = 1024;
      v21 = 2336;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v18, 0x12u);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v17, "Invariant failure.");
  }

  return result;
}

void sub_5318(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_189A00();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_1DC9A4(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *sub_53E8(void *a1, char *__s)
{
  v4 = strlen(__s);
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
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void *sub_54A0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_755AC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_5544(int a1)
{
  if ((atomic_load_explicit(&qword_6E82C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E82C0))
  {
    sub_284488();
  }

  return qword_6E8158[a1];
}

void sub_55BC(uint64_t a1, const __CFDictionary **a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = sub_11094(*a2, "session going active");
  if (v4)
  {
    v5 = sub_11DA8(v4);
    v6 = (v5 > 0xFFu) & v5;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  if (!*a2)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
  }

  v7 = sub_11198(*a2, "session active");
  if (v7)
  {
    v8 = sub_11DA8(v7);
    v9 = (v8 > 0xFFu) & v8;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 1) = v9;
  if (!*a2)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  v10 = sub_11CA4(*a2, "session input running");
  if (v10)
  {
    v11 = sub_11DA8(v10);
    v12 = (v11 > 0xFFu) & v11;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 2) = v12;
  if (!*a2)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
  }

  v13 = sub_11E34(*a2, "session output running");
  if (v13)
  {
    v14 = sub_11DA8(v13);
    v15 = (v14 > 0xFFu) & v14;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 3) = v15;
  if (!*a2)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
  }

  v16 = sub_1129C(*a2, "session app state");
  if (v16)
  {
    v16 = sub_113A0(v16);
  }

  if ((v16 & 0x100000000) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 4) = v17;
  if (!*a2)
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v29, "Could not construct");
  }

  v18 = sub_11094(*a2, "session reporter IDs");
  if (v18)
  {
    sub_11F38(&v34, v18);
    cf[1] = 0;
    v33 = 0;
    cf[0] = 0;
    if (v36)
    {
      v19 = v34;
      sub_1215C(cf, v34, *(&v34 + 1), (*(&v34 + 1) - v34) >> 3);
      if (v19)
      {
        if (v36)
        {
          operator delete(v19);
        }
      }
    }
  }

  else
  {
    LOBYTE(v34) = 0;
    v36 = 0;
    cf[1] = 0;
    v33 = 0;
    cf[0] = 0;
  }

  *(a1 + 56) = *cf;
  *(a1 + 72) = v33;
  if (!*a2)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v30, "Could not construct");
  }

  sub_120D4(cf, *a2, "session input VAD UIDs");
  if (LOBYTE(cf[1]) == 1 && (v20 = cf[0]) != 0)
  {
    CFRetain(cf[0]);
    CFRelease(v20);
    sub_1227C(&v34, v20);
  }

  else
  {
    v20 = 0;
    v34 = 0uLL;
    v35 = 0;
  }

  sub_12790(a1 + 8);
  *(a1 + 8) = v34;
  *(a1 + 24) = v35;
  v35 = 0;
  v34 = 0uLL;
  cf[0] = &v34;
  sub_11C50(cf);
  if (v20)
  {
    CFRelease(v20);
  }

  if (!*a2)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
  }

  v21 = sub_127D0(*a2, "session output VAD UIDs");
  if (v21)
  {
    v22 = v21;
    CFRetain(v21);
    v23 = CFGetTypeID(v22);
    if (v23 == CFArrayGetTypeID())
    {
      CFRetain(v22);
      CFRelease(v22);
      sub_1227C(&v34, v22);
      goto LABEL_43;
    }

    CFRelease(v22);
  }

  v22 = 0;
  v35 = 0;
  v34 = 0uLL;
LABEL_43:
  sub_12790(a1 + 32);
  *(a1 + 32) = v34;
  *(a1 + 48) = v35;
  v35 = 0;
  v34 = 0uLL;
  cf[0] = &v34;
  sub_11C50(cf);
  if (v22)
  {
    CFRelease(v22);
  }
}

void sub_5AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_46228(va);
  sub_46228(&a9);
  sub_1F1E40(v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_5B94(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, AudioObjectPropertyScope *a6, uint64_t a7)
{
  v7 = a5;
  v11 = *a2;
  if (*a2 <= 1986094178)
  {
    if (v11 != 1769304164 && v11 != 1920230246)
    {
LABEL_21:
      operator new();
    }
  }

  else
  {
    v12 = (v11 - 1986094179) < 2 || v11 == 1987016304;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v467 = 0;
  if (*(a1 + 108) != 2)
  {
    v305 = sub_5544(14);
    v306 = sub_468EC(1, *v305, *(v305 + 8));
    v307 = v306;
    if (v306 && os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 6778;
      _os_log_impl(&dword_0, v307, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): VirtualAudio PlugIn is not initialized yet", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "VirtualAudio PlugIn is not initialized yet");
LABEL_656:
  }

  if (((*(*a1 + 48))() & 1) == 0)
  {
    v309 = sub_5544(14);
    v310 = sub_468EC(1, *v309, *(v309 + 8));
    v311 = 2003332927;
    if (v310)
    {
      v312 = v310;
      if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
      {
        *v491 = *a2;
        *&v491[8] = a2[2];
        sub_22CE0(__p, v491);
      }

      goto LABEL_704;
    }

    goto LABEL_667;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v313 = sub_5544(14);
    v311 = 561211770;
    v314 = sub_468EC(1, *v313, *(v313 + 8));
    if (v314)
    {
      v312 = v314;
      if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
      {
        *v491 = *a2;
        *&v491[8] = a2[2];
        sub_22CE0(__p, v491);
      }

      goto LABEL_704;
    }

    goto LABEL_667;
  }

  if (!a6)
  {
    v315 = sub_5544(14);
    v311 = 561211770;
    v316 = sub_468EC(1, *v315, *(v315 + 8));
    if (v316)
    {
      v312 = v316;
      if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
      {
        *v491 = *a2;
        *&v491[8] = a2[2];
        sub_22CE0(__p, v491);
      }

      goto LABEL_704;
    }

    goto LABEL_667;
  }

  if (((*(*a1 + 56))(a1, a2) & 1) == 0)
  {
    v317 = sub_5544(14);
    v311 = 1852797029;
    v318 = sub_468EC(1, *v317, *(v317 + 8));
    if (v318)
    {
      v312 = v318;
      if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
      {
        *v491 = *a2;
        *&v491[8] = a2[2];
        sub_22CE0(__p, v491);
      }

      goto LABEL_704;
    }

    goto LABEL_667;
  }

  v13 = *a2;
  if (*a2 == 1886350709)
  {
    v14 = sub_5544(2);
    v15 = sub_5544(39);
    v16 = 0;
    *buf = 0x100000002;
    v17 = *(v14 + 8);
    while (1)
    {
      v18 = *&buf[v16];
      if (((v17 & v18) != 0) != ((*(v15 + 8) & v18) != 0))
      {
        break;
      }

      v16 += 4;
      if (v16 == 8)
      {
        goto LABEL_24;
      }
    }

    if ((v17 & v18) == 0)
    {
      v14 = v15;
    }

LABEL_24:
    v20 = *v14;
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v491 = *a2;
        *&v491[8] = a2[2];
        sub_22CE0(__p, v491);
      }
    }

    v13 = *a2;
  }

  if (v13 <= 1920426612)
  {
    if (v13 <= 1701737067)
    {
      if (v13 > 1685283954)
      {
        if (v13 != 1685283955)
        {
          if (v13 == 1685287790)
          {
            sub_27A4();
            (*(qword_6E94F8 + 16))();
            sub_23BF80(*(a1 + 120), *a6);
            return sub_210C08(&v467);
          }

          goto LABEL_201;
        }

        if ((*(*a1 + 64))(a1, a2, a3, a4) != v7)
        {
          v335 = sub_5544(14);
          v311 = 561211770;
          v336 = sub_468EC(1, *v335, *(v335 + 8));
          if (v336)
          {
            v312 = v336;
            if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
            {
              *v491 = *a2;
              *&v491[8] = a2[2];
              sub_22CE0(__p, v491);
            }

            goto LABEL_704;
          }

          goto LABEL_667;
        }

        if (_os_feature_enabled_impl())
        {
          v56 = *sub_5544(8);
          v57 = v56;
          if (v56)
          {
            v58 = v56;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              sub_22170(__p, 1685283955);
              v59 = __p[23] >= 0 ? __p : *__p;
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 7084;
              *&buf[18] = 2080;
              *&buf[20] = v59;
              _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Calling SetProperty() on deprecated property %s.", buf, 0x1Cu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }
          }
        }

        else
        {
          v94 = sub_2450DC();
          v95 = *a6;
          v96 = *a6 != 0;
          *v491 = v94;
          v491[8] = 1;
          sub_47BD8(v94);
          if (*(v94 + 320) != v96)
          {
            v97 = *(v94 + 304);
            if (v97 != v94 + 296)
            {
              if (v95)
              {
                v98 = "En";
              }

              else
              {
                v98 = "Dis";
              }

              do
              {
                strcpy(v486, "sdsdbolg");
                v486[0].__r_.__value_.__s.__data_[9] = 0;
                WORD1(v486[0].__r_.__value_.__r.__words[1]) = 0;
                if ((*(**(v97 + 16) + 16))(*(v97 + 16), v486))
                {
                  LODWORD(__dst) = v95 != 0;
                  (*(**(v97 + 16) + 48))(*(v97 + 16), v486, 0, 0, 4, &__dst);
                  v99 = sub_5544(7);
                  v100 = sub_5544(28);
                  v101 = 0;
                  *buf = 0x100000002;
                  v102 = *(v99 + 8);
                  while (1)
                  {
                    v103 = *&buf[v101];
                    if (((v102 & v103) != 0) != ((*(v100 + 8) & v103) != 0))
                    {
                      break;
                    }

                    v101 += 4;
                    if (v101 == 8)
                    {
                      if ((v102 & 1) == 0)
                      {
                        goto LABEL_248;
                      }

                      goto LABEL_242;
                    }
                  }

                  if ((v102 & v103) == 0)
                  {
                    v99 = v100;
                  }

                  if (*(v99 + 8))
                  {
LABEL_242:
                    v104 = *v99;
                    if (v104 && os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
                    {
                      v105 = (*(**(v97 + 16) + 120))(*(v97 + 16));
                      (*(**(v97 + 16) + 128))(__p);
                      v106 = __p;
                      if (__p[23] < 0)
                      {
                        v106 = *__p;
                      }

                      *buf = 136316162;
                      *&buf[4] = "DeviceManager.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 246;
                      *&buf[18] = 2080;
                      *&buf[20] = v98;
                      *&buf[28] = 1024;
                      *&buf[30] = v105;
                      *&buf[34] = 2080;
                      *&buf[36] = v106;
                      _os_log_impl(&dword_0, v104, OS_LOG_TYPE_DEBUG, "%25s:%-5d %sabled port discovery on device ID %u (uid '%s').", buf, 0x2Cu);
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }
                    }
                  }
                }

LABEL_248:
                v97 = *(v97 + 8);
              }

              while (v97 != v94 + 296);
            }

            *(v94 + 320) = v96;
            v107 = sub_5544(7);
            v108 = sub_5544(28);
            v109 = 0;
            *buf = 0x100000002;
            v110 = *(v107 + 8);
            while (1)
            {
              v111 = *&buf[v109];
              if (((v110 & v111) != 0) != ((*(v108 + 8) & v111) != 0))
              {
                break;
              }

              v109 += 4;
              if (v109 == 8)
              {
                goto LABEL_367;
              }
            }

            if ((v110 & v111) == 0)
            {
              v107 = v108;
            }

LABEL_367:
            v173 = *v107;
            if (v173 && os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
            {
              v174 = "Dis";
              *&buf[4] = "DeviceManager.cpp";
              *buf = 136315650;
              if (v95)
              {
                v174 = "En";
              }

              *&buf[12] = 1024;
              *&buf[14] = 254;
              *&buf[18] = 2080;
              *&buf[20] = v174;
              _os_log_impl(&dword_0, v173, OS_LOG_TYPE_DEBUG, "%25s:%-5d %sabled port discovery for the VAD.", buf, 0x1Cu);
            }
          }

          sub_47C90(v94);
        }
      }

      else
      {
        if (v13 != 1667329392)
        {
          if (v13 == 1668510574)
          {
            sub_27A4();
            (*(qword_6E94F8 + 16))();
            v27 = sub_48FAC(*(a1 + 120), **a6);
            a6[6] = 4;
            **(a6 + 2) = v27;
            return sub_210C08(&v467);
          }

          goto LABEL_201;
        }

        if ((*(*a1 + 64))(a1, a2, a3, a4) != v7)
        {
          v333 = sub_5544(14);
          v311 = 561211770;
          v334 = sub_468EC(1, *v333, *(v333 + 8));
          if (v334)
          {
            v312 = v334;
            if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
            {
              *v491 = *a2;
              *&v491[8] = a2[2];
              sub_22CE0(__p, v491);
            }

            goto LABEL_704;
          }

          goto LABEL_667;
        }

        sub_10FD4(buf, *a6);
        sub_3AB228(a1, *(a1 + 224), *(a1 + 232), *buf);
        if (*buf)
        {
          CFRelease(*buf);
        }
      }

      return sub_210C08(&v467);
    }

    if (v13 <= 1886350708)
    {
      if (v13 == 1701737068)
      {
        *(a1 + 552) = *a6 != 0;
        v54 = *(a1 + 144);
        v55 = *(a1 + 152);
        while (v54 != v55)
        {
          if (*v54)
          {
            sub_18974C(*(*v54 + 872), *(a1 + 552));
          }

          v54 += 8;
        }

        return sub_210C08(&v467);
      }

      if (v13 != 1769304164)
      {
        goto LABEL_201;
      }

      kdebug_trace();
      if ((*(*a1 + 64))(a1, a2, a3, a4) != v7)
      {
        v341 = sub_5544(14);
        v311 = 561211770;
        v342 = sub_468EC(1, *v341, *(v341 + 8));
        if (v342)
        {
          v312 = v342;
          if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
          {
            *v491 = *a2;
            *&v491[8] = a2[2];
            sub_22CE0(__p, v491);
          }

          goto LABEL_704;
        }

        goto LABEL_667;
      }

      if (a6[2] == 8)
      {
        if (*a6)
        {
          v471 = *a6;
          *&v491[8] = 0;
          *&v491[16] = 0;
          *v491 = &v491[8];
          v28 = sub_758D4(1986291046, 0, *(a1 + 144), *(a1 + 152));
          if (sub_1CA64C())
          {
            v486[0].__r_.__value_.__r.__words[0] = a1;
            if (atomic_load_explicit(&qword_6F5A40, memory_order_acquire) != -1)
            {
              *buf = v486;
              *__p = buf;
              std::__call_once(&qword_6F5A40, __p, sub_3AF964);
            }
          }

          sub_CE168();
          sub_53E8(buf, "AOP Audio-1");
          sub_CDEB8(__p, buf);
          if (*&__p[8])
          {
            std::__shared_weak_count::__release_weak(*&__p[8]);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            v113 = sub_3AADE8();
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (!v113)
            {
LABEL_263:
              v479[0] = off_6CE038;
              v479[1] = a1;
              v479[2] = &v471;
              v479[3] = v479;
              sub_ABFC8(&v485, a1, v479);
              sub_DB350(v479);
              size = v485.__r_.__value_.__l.__size_;
              if (v485.__r_.__value_.__l.__size_)
              {
                sub_DA658(a1);
                if (LODWORD(v485.__r_.__value_.__l.__data_) == 1919118966)
                {
                  v116 = sub_DB674(size);
                  if ((v116 & 0x100000000) != 0)
                  {
                    *(a1 + 224) = v116;
                  }

                  v117 = sub_DB910(size);
                  if ((v117 & 0x100000000) != 0)
                  {
                    *(a1 + 228) = v117;
                  }
                }

                v118 = *(a1 + 224);
                v119 = *(a1 + 232);
                v120 = _os_feature_enabled_impl();
                if (v118 == 1668509810)
                {
                  v121 = 1668309362;
                }

                else
                {
                  v121 = v118;
                }

                v122 = v121 == 1668114797;
                v123 = v118 & 0xFFFFFFFF00000000 | v121;
                if ((v120 & v122) != 0)
                {
                  v123 = 0x64706C62636D756CLL;
                }

                *__p = v123;
                *&__p[8] = v119;
                sub_D2868(buf, __p);
                sub_DB9F4(&buf[16], "mode", (a1 + 228));
                memset(v486, 0, 24);
                sub_D2A08(v486, buf, &buf[32], 2uLL);
              }

              v420 = sub_5544(14);
              v421 = sub_468EC(1, *v420, *(v420 + 8));
              v422 = v421;
              if (v421 && os_log_type_enabled(v421, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 6832;
                _os_log_impl(&dword_0, v422, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
              }

              v423 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v423, "Postcondition failure.");
            }
          }

          if (!v28)
          {
            v287 = sub_5544(14);
            v288 = sub_468EC(1, *v287, *(v287 + 8));
            v289 = v288;
            if (v288 && os_log_type_enabled(v288, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 6823;
              _os_log_impl(&dword_0, v289, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [defaultDevice is NULL]: No default VAD could be found!", buf, 0x12u);
            }

            v290 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v290, "No default VAD could be found!");
          }

          sub_27A4();
          buf[0] = (*(qword_6E94F8 + 16))();
          v114 = sub_9F278(v28, 1);
          if (v491 != v114)
          {
            sub_4ABC8(v491, *v114, v114 + 1);
          }

          sub_17DDA0(a1, v491, 1886545251);
          sub_210C50(buf);
          goto LABEL_263;
        }

        v356 = sub_5544(14);
        v357 = sub_468EC(1, *v356, *(v356 + 8));
        v351 = v357;
        if (v357 && os_log_type_enabled(v357, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 6806;
          _os_log_impl(&dword_0, v351, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      else
      {
        v349 = sub_5544(14);
        v350 = sub_468EC(1, *v349, *(v349 + 8));
        v351 = v350;
        if (v350 && os_log_type_enabled(v350, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 6805;
          _os_log_impl(&dword_0, v351, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      v358 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v358, "Precondition failure.");
    }

    if (v13 == 1886350709)
    {
      if ((*(*a1 + 64))(a1, a2, a3, a4) != v7)
      {
        v337 = sub_5544(14);
        v311 = 561211770;
        v338 = sub_468EC(1, *v337, *(v337 + 8));
        if (v338)
        {
          v312 = v338;
          if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
          {
            *v491 = *a2;
            *&v491[8] = a2[2];
            sub_22CE0(__p, v491);
          }

          goto LABEL_704;
        }

        goto LABEL_667;
      }

      v60 = sub_10AA80();
      v61 = *a6;
      if (v60)
      {
        if (v61)
        {
          v62 = sub_139A68(a1, 1);
          *(a1 + 168) = v62;
          if (v62)
          {
            v63 = sub_5544(2);
            v64 = sub_468EC(3, *v63, *(v63 + 8));
            v65 = v64;
            if (v64 && os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 7047;
              *&buf[18] = 1024;
              *&buf[20] = v61;
              _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Queuing up PolicyMute route change command for mute (%u)", buf, 0x18u);
            }

            sub_8703C();
            operator new();
          }
        }

        else
        {
          *buf = sub_A1DA8(a1);
          *&buf[8] = v168;
          if ((sub_134A80(buf) & 1) == 0)
          {
            *(a1 + 168) = 0;
            v169 = sub_5544(2);
            v170 = sub_468EC(3, *v169, *(v169 + 8));
            v171 = v170;
            if (v170 && os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 7060;
              *&buf[18] = 1024;
              *&buf[20] = 0;
              _os_log_impl(&dword_0, v171, OS_LOG_TYPE_DEFAULT, "%25s:%-5d queuing up PolicyMute route change command for mute (%u)", buf, 0x18u);
            }

            sub_8703C();
            operator new();
          }
        }
      }

      else
      {
        *(a1 + 168) = sub_139A68(a1, v61 != 0);
      }

      return sub_210C08(&v467);
    }

    if (v13 != 1920230246)
    {
      goto LABEL_201;
    }

    if ((*(*a1 + 64))(a1, a2, a3, a4) != v7)
    {
      v329 = sub_5544(14);
      v311 = 561211770;
      v330 = sub_468EC(1, *v329, *(v329 + 8));
      if (v330)
      {
        v312 = v330;
        if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
        {
          *v491 = *a2;
          *&v491[8] = a2[2];
          sub_22CE0(__p, v491);
        }

        goto LABEL_704;
      }

      goto LABEL_667;
    }

    __dst_8 = 0;
    v489 = 0;
    __dst = &__dst_8;
    v29 = (a1 + 144);
    v30 = sub_758D4(1986291046, 0, *(a1 + 144), *(a1 + 152));
    if (sub_3AADE8())
    {
      if (!v30)
      {
        v295 = sub_5544(14);
        v296 = sub_468EC(1, *v295, *(v295 + 8));
        v297 = v296;
        if (v296 && os_log_type_enabled(v296, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 7109;
          _os_log_impl(&dword_0, v297, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [defaultDevice is NULL]: No default VAD could be found!", buf, 0x12u);
        }

        v298 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v298, "No default VAD could be found!");
      }

      sub_27A4();
      buf[0] = (*(qword_6E94F8 + 16))();
      v31 = sub_9F278(v30, 1);
      if (&__dst != v31)
      {
        sub_4ABC8(&__dst, *v31, v31 + 1);
      }

      sub_210C50(buf);
    }

    sub_10FD4(&v468, *a6);
    if ((atomic_load_explicit(&qword_6E85B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E85B0))
    {
      sub_28A77C();
      __cxa_guard_release(&qword_6E85B0);
    }

    memset(__p, 0, 24);
    sub_4817C(__p, qword_6E8598, unk_6E85A0, 0xAAAAAAAAAAAAAAABLL * ((unk_6E85A0 - qword_6E8598) >> 3));
    if ((atomic_load_explicit(&qword_6E8590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8590))
    {
      sub_28A6AC();
      __cxa_guard_release(&qword_6E8590);
    }

    memset(v491, 0, 24);
    sub_4817C(v491, qword_6E8578, unk_6E8580, 0xAAAAAAAAAAAAAAABLL * ((unk_6E8580 - qword_6E8578) >> 3));
    if (*__p != *&__p[8])
    {
      v32 = sub_5544(2);
      v33 = *v32;
      if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
      {
        sub_23E748(v486, *__p, *&__p[8]);
        v34 = (v486[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v486 : v486[0].__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 997;
        *&buf[18] = 2080;
        *&buf[20] = v34;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Persistent fake input ports = %s", buf, 0x1Cu);
        if (SHIBYTE(v486[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v486[0].__r_.__value_.__l.__data_);
        }
      }

LABEL_308:
      if (*v491 != *&v491[8])
      {
        v145 = sub_5544(2);
        v146 = *v145;
        if (*v145)
        {
          if (os_log_type_enabled(*v145, OS_LOG_TYPE_DEBUG))
          {
            sub_23E748(v486, *v491, *&v491[8]);
            v147 = (v486[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v486 : v486[0].__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_Utilities.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 999;
            *&buf[18] = 2080;
            *&buf[20] = v147;
            _os_log_impl(&dword_0, v146, OS_LOG_TYPE_DEBUG, "%25s:%-5d Persistent fake output ports = %s", buf, 0x1Cu);
            if (SHIBYTE(v486[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v486[0].__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v469 = sub_23E814(__p);
      sub_88CE8(buf, "input port UIDs");
      v148 = v469;
      if (v469)
      {
        CFRetain(v469);
      }

      *&buf[8] = v148;
      v149 = sub_23E814(v491);
      v474 = v149;
      sub_88CE8(&buf[16], "output port UIDs");
      CFRetain(v149);
      *&buf[24] = v149;
      v471 = buf;
      v472 = (&dword_0 + 2);
      v150 = sub_69CE8(&v471);
      v470 = v150;
      sub_88CE8(&v485, "persistent route");
      CFRetain(v150);
      v485.__r_.__value_.__l.__size_ = v150;
      memset(v486, 0, 24);
      sub_D2A08(v486, &v485, &v485.__r_.__value_.__r.__words[2], 1uLL);
    }

    if (*v491 != *&v491[8])
    {
      goto LABEL_308;
    }

    v461 = v30;
    *buf = v491;
    sub_11C50(buf);
    *buf = __p;
    sub_11C50(buf);
    v478[0] = off_6CE110;
    v478[1] = a1;
    v478[2] = &v468;
    v478[3] = v478;
    sub_ABFC8(&v485, a1, v478);
    sub_DB350(v478);
    v151 = v485.__r_.__value_.__l.__size_;
    if (!v485.__r_.__value_.__l.__size_)
    {
      v482 = 0;
      v411 = sub_5544(14);
      v412 = sub_468EC(1, *v411, *(v411 + 8));
      v413 = v412;
      if (v412 && os_log_type_enabled(v412, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 7125;
        _os_log_impl(&dword_0, v413, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v414 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v414, "Postcondition failure.");
    }

    CFRetain(v485.__r_.__value_.__l.__size_);
    v482 = v151;
    memset(v491, 0, 24);
    v462 = sub_DA658(a1);
    v152 = sub_3A1764(LODWORD(v485.__r_.__value_.__l.__data_));
    v153 = sub_43458(&v468, *(*(a1 + 112) + 144), *(*(a1 + 112) + 408));
    if (!v468)
    {
      v415 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v415, "Could not construct");
    }

    v154 = sub_DB674(v468);
    if ((v154 & 0x100000000) != 0)
    {
      *(a1 + 224) = v154;
    }

    if (!v468)
    {
      v416 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v416, "Could not construct");
    }

    v155 = sub_DB910(v468);
    if ((v155 & 0x100000000) != 0)
    {
      *(a1 + 228) = v155;
    }

    if (!v468)
    {
      v417 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v417, "Could not construct");
    }

    v156 = sub_11094(v468, "optional output mode");
    if (v156 && (v157 = sub_113A0(v156), (v157 & 0x100000000) != 0) || (v158 = sub_11094(v151, "optional output mode")) != 0 && (v157 = sub_113A0(v158), (v157 & 0x100000000) != 0))
    {
      *(a1 + 232) = v157;
      *(a1 + 236) = 1;
    }

    if (sub_DB94C())
    {
      if (!v468)
      {
        v443 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v443, "Could not construct");
      }

      v159 = sub_11094(v468, "echo cancelled input");
      if (v159)
      {
        v159 = sub_113A0(v159);
      }

      if ((v159 & 0x100000000) != 0)
      {
        v160 = v159;
      }

      else
      {
        v160 = 0;
      }
    }

    else
    {
      v160 = 0;
    }

    *(a1 + 556) = v160;
    if (_os_feature_enabled_impl())
    {
      if ((v153 | sub_3A64A0(&v468)))
      {
        v161 = sub_5544(2);
        v162 = sub_5544(35);
        v163 = 0;
        *buf = 0x100000002;
        v164 = *(v161 + 8);
        while (1)
        {
          v165 = *&buf[v163];
          if (((v164 & v165) != 0) != ((*(v162 + 8) & v165) != 0))
          {
            break;
          }

          v163 += 4;
          if (v163 == 8)
          {
            goto LABEL_375;
          }
        }

        if ((v164 & v165) == 0)
        {
          v161 = v162;
        }

LABEL_375:
        v175 = *v161;
        v176 = v175;
        if (v175 && os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          v177 = "Exclusively user-preferred input";
          v178 = *(a1 + 560);
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          if (v153)
          {
            v177 = "Exclusively port routability";
          }

          *&buf[14] = 7182;
          *&buf[18] = 2080;
          *&buf[20] = v177;
          *&buf[28] = 1024;
          *&buf[30] = v178;
          _os_log_impl(&dword_0, v176, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s request, keeping cached mPreferAirPodsInput %u", buf, 0x22u);
        }

        v166 = *(a1 + 560);
      }

      else
      {
        if (!v468)
        {
          v454 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v454, "Could not construct");
        }

        v167 = sub_DB9C0(v468, "studio mic input");
        if ((v167 & 0x100000000) != 0)
        {
          v166 = v167;
        }

        else
        {
          v166 = 0;
        }
      }
    }

    else
    {
      v166 = 0;
    }

    *(a1 + 560) = v166;
    if (!v468)
    {
      v418 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v418, "Could not construct");
    }

    sub_4AA98(&v471, v468);
    if (v472 == 1)
    {
      v179 = v471;
      if (v471)
      {
        v180 = sub_10A424((a1 + 224), &v471);
        v181 = sub_758D4(1986291046, 0, *(a1 + 144), *(a1 + 152));
        if (!v181)
        {
          v444 = sub_5544(14);
          v445 = sub_468EC(1, *v444, *(v444 + 8));
          v446 = v445;
          if (v445 && os_log_type_enabled(v445, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 7200;
            _os_log_impl(&dword_0, v446, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v447 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v447, "Precondition failure.");
        }

        v182 = v181;
        v480 = 0x676C6F6263747970;
        LODWORD(v481) = 0;
        if (sub_10A958(v180))
        {
          *buf = sub_23CD78(v179);
        }

        else
        {
          *buf = 0;
        }

        (*(*v182 + 80))(v182, &v480, 0, 0, 4, buf, 0);
        if (v180 != 1635087471)
        {
          sub_10984C(__p, v179, v180);
          *buf = v180;
          if ((__p[23] & 0x80000000) != 0)
          {
            sub_54A0(&buf[8], *__p, *&__p[8]);
            LODWORD(v180) = *buf;
          }

          else
          {
            *&buf[8] = *__p;
            *&buf[24] = *&__p[16];
          }

          *&buf[32] = 0x756E64656175746FLL;
          *(a1 + 240) = v180;
          if (*(a1 + 271) < 0)
          {
            operator delete(*(a1 + 248));
            v195 = *&buf[32];
          }

          else
          {
            v195 = 0x756E64656175746FLL;
          }

          *(a1 + 248) = *&buf[8];
          *(a1 + 264) = *&buf[24];
          *(a1 + 272) = v195;
          v196 = sub_5544(8);
          v197 = sub_468EC(6, *v196, *(v196 + 8));
          v198 = v197;
          if (v197)
          {
            v199 = v197;
            if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(v486, *(a1 + 240));
              v200 = (v486[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v486 : v486[0].__r_.__value_.__r.__words[0];
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 7219;
              *&buf[18] = 2080;
              *&buf[20] = v200;
              _os_log_impl(&dword_0, v199, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updated to mClientRequestedActivationInfo %s.", buf, 0x1Cu);
              if (SHIBYTE(v486[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v486[0].__r_.__value_.__l.__data_);
              }
            }
          }

          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        CFRelease(v179);
        goto LABEL_439;
      }
    }

    if (v153)
    {
      v183 = sub_5544(8);
      if ((*(v183 + 8) & 1) == 0)
      {
        goto LABEL_439;
      }

      v184 = *v183;
      if (!v184)
      {
        goto LABEL_439;
      }

      v185 = v184;
      if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, *(a1 + 240));
        if (__p[23] >= 0)
        {
          v186 = __p;
        }

        else
        {
          v186 = *__p;
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 7225;
        *&buf[18] = 2080;
        *&buf[20] = v186;
        v187 = "%25s:%-5d Keeping mClientRequestedActivationInfo %s.";
        goto LABEL_404;
      }
    }

    else
    {
      *(a1 + 240) = 1852796517;
      if (*(a1 + 271) < 0)
      {
        operator delete(*(a1 + 248));
      }

      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 0x756E64656175746FLL;
      v188 = sub_5544(8);
      if ((*(v188 + 8) & 1) == 0 || (v189 = *v188) == 0)
      {
LABEL_439:
        if (!v468)
        {
          v419 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v419, "Could not construct");
        }

        sub_4ADFC(buf, v468);
        if (buf[8] == 1)
        {
          v201 = *buf;
          if (*buf)
          {
            sub_3AB228(a1, *(a1 + 224), *(a1 + 232), *buf);
            CFRelease(v201);
          }
        }

        v202 = *(a1 + 228);
        v203 = *(a1 + 240);
        v204 = sub_758D4(1987276900, 0, *(a1 + 144), *(a1 + 152));
        if (!v204)
        {
          goto LABEL_471;
        }

        v205 = v204;
        v206 = *sub_5544(2);
        v207 = v206;
        if (v206 && os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 7756;
          *&buf[18] = 1024;
          *&buf[20] = v202;
          *&buf[24] = 1024;
          *&buf[26] = v203;
          _os_log_impl(&dword_0, v207, OS_LOG_TYPE_DEBUG, "%25s:%-5d ConfigureSpeechDetectionDSP inMode=%u inInitiationContext=%u\n", buf, 0x1Eu);
        }

        if (v203 != 1886352244)
        {
          if (v203 == 1752396914)
          {
            if ((MGGetBoolAnswer() & 1) == 0)
            {
              goto LABEL_467;
            }

            goto LABEL_453;
          }

          if (v202 == 1987208039 || v202 == 1986098036)
          {
LABEL_453:
            strcpy(buf, "dsedtpni");
            buf[9] = 0;
            *&buf[10] = 0;
            if ((*(*v205 + 48))(v205, buf))
            {
              *__p = *(v205 + 8);
              strcpy(buf, "dsedtpni");
              buf[9] = 0;
              *&buf[10] = 0;
              v208 = sub_542F0(__p, buf, 0, 0);
              *(&v211 + 1) = v209;
              *&v211 = v208;
              v210 = v211 >> 32;
              if ((v210 & 0x100000000) != 0 && v210 != 1)
              {
                v212 = *(v205 + 8);
                strcpy(buf, "dsedtpni");
                buf[9] = 0;
                *&buf[10] = 0;
                v213 = AudioObjectSetPropertyData(v212, buf, 0, 0, 4u, &unk_518EC8);
                if (v213)
                {
                  goto LABEL_843;
                }
              }
            }

            sub_23CEF8(v205, 1u);
            v215 = v203 == 1752132965 || v203 == 1969840752;
            sub_23CFBC(v205, v215);
            if ((*(**(v205 + 872) + 368))(*(v205 + 872), 1685287015, 1684628340, 0))
            {
              v216.n128_u64[0] = 0;
              if (v203 == 1684628340)
              {
                v216.n128_f32[0] = 1.0;
              }

              (*(**(v205 + 872) + 384))(*(v205 + 872), 1685287015, 1684628340, 0, v216);
            }

LABEL_471:
            v222 = *(a1 + 144);
            v223 = *(a1 + 152);
            if (v222 != v223)
            {
              while (!*v222 || (*(*(*v222 + 872) + 304) & 0x1FFFFFFFFLL) != 0x173697269)
              {
                v222 += 8;
                if (v222 == v223)
                {
                  goto LABEL_503;
                }
              }
            }

            if (v222 != v223)
            {
              v224 = *v222;
              if (*v222)
              {
                if (v203 == 1886352244)
                {
                  v225 = 0;
                }

                else if (v203 == 1752396914)
                {
                  v225 = MGGetBoolAnswer();
                }

                else
                {
                  v225 = v202 == 1987208039 || v202 == 1986098036;
                }

                v227 = *sub_5544(2);
                v228 = v227;
                if (v227 && os_log_type_enabled(v227, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315906;
                  *&buf[4] = "VirtualAudio_PlugIn.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 7786;
                  *&buf[18] = 1024;
                  *&buf[20] = v202;
                  *&buf[24] = 1024;
                  *&buf[26] = v203;
                  _os_log_impl(&dword_0, v228, OS_LOG_TYPE_DEBUG, "%25s:%-5d ConfigureSecureSpeechDetectionDSP inMode=%u inInitiationContext=%u\n", buf, 0x1Eu);
                }

                if (v225)
                {
                  v230 = v203 == 1752132965 || v203 == 1969840752;
                  sub_23D088(v224, 1651797616, v230);
                  v231 = 1684628340;
                  v232 = 0.0;
                  if (v203 == 1684628340)
                  {
                    v232 = 1.0;
                  }
                }

                else
                {
                  v232 = 0.0;
                  v231 = 1651797616;
                }

                sub_23D088(v224, v231, v232);
              }
            }

LABEL_503:
            v234 = *(a1 + 224);
            v233 = *(a1 + 232);
            v235 = _os_feature_enabled_impl();
            if (v234 == 1668509810)
            {
              v236 = 1668309362;
            }

            else
            {
              v236 = v234;
            }

            v237 = v236 == 1668114797;
            v238 = v234 & 0xFFFFFFFF00000000 | v236;
            if ((v235 & v237) != 0)
            {
              v238 = 0x64706C62636D756CLL;
            }

            *__p = v238;
            *&__p[8] = v233;
            sub_D2868(buf, __p);
            sub_88E68(v491, buf);
            if (*&buf[8])
            {
              CFRelease(*&buf[8]);
            }

            if (*buf)
            {
              CFRelease(*buf);
            }

            sub_DB9F4(buf, "mode", (a1 + 228));
            sub_88E68(v491, buf);
            if (*&buf[8])
            {
              CFRelease(*&buf[8]);
            }

            if (*buf)
            {
              CFRelease(*buf);
            }

            if ((v152 & v462) == 1)
            {
              v239 = *sub_5544(2);
              v240 = v239;
              if (v239)
              {
                v241 = v239;
                if (os_log_type_enabled(v241, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "VirtualAudio_PlugIn.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 7256;
                  _os_log_impl(&dword_0, v241, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route change was redundant, but the beam direction changed.  Updating the route change description.", buf, 0x12u);
                }
              }

              *__p = 1919050851;
              sub_3AAE2C(buf, __p);
              sub_88E68(v491, buf);
              if (*&buf[8])
              {
                CFRelease(*&buf[8]);
              }

              if (*buf)
              {
                CFRelease(*buf);
              }

              sub_27A4();
              LOBYTE(v471) = (*(qword_6E94F8 + 16))();
              sub_AEEB4(buf, *(a1 + 120));
              sub_AF140(v486, a1, buf);
              sub_172230(__p, &v486[0].__r_.__value_.__l.__data_);
              sub_88E68(v491, __p);
              if (*&__p[8])
              {
                CFRelease(*&__p[8]);
              }

              if (*__p)
              {
                CFRelease(*__p);
              }

              if (v486[0].__r_.__value_.__r.__words[0])
              {
                CFRelease(v486[0].__r_.__value_.__l.__data_);
              }

              sub_76304(buf);
              sub_210C50(&v471);
            }

            sub_DBAC0(v29);
            v242 = *(*(a1 + 112) + 472);
            *buf = v242;
            buf[4] = BYTE4(v242);
            v243 = *(a1 + 144);
            v244 = *(a1 + 152);
            if (v243 != v244)
            {
              do
              {
                if (*v243)
                {
                  sub_21F4BC(*v243, buf);
                }

                ++v243;
              }

              while (v243 != v244);
              v243 = *(a1 + 144);
              v244 = *(a1 + 152);
            }

            v245 = sub_758D4(1986291046, 0, v243, v244);
            if ((v152 & 1) == 0)
            {
              v246 = v245;
              if (sub_3AADE8())
              {
                sub_27A4();
                __p[0] = (*(qword_6E94F8 + 16))();
                v247 = sub_9F278(v246, 1);
                sub_44E44(buf, v247);
                v248 = sub_17DDA0(a1, &__dst, 1886545251);
                if ((v248 & sub_17DDA0(a1, buf, 1886613611)) == 1)
                {
                  sub_3AAF00(*(a1 + 144), *(a1 + 152));
                }

                sub_477A0(*&buf[8]);
                sub_210C50(__p);
              }

              sub_27A4();
              v486[0].__r_.__value_.__s.__data_[0] = (*(qword_6E94F8 + 16))();
              sub_17D4C0(a1);
              v249 = *(a1 + 216);
              __p[0] = 0;
              __p[8] = 0;
              v250 = *(v249 + 16) == 1 && (sub_98A64(__p, *(v249 + 8)), __p[8] = 1, *__p) && CFDictionaryGetCount(*__p) != 0;
              sub_43E6C(buf, (a1 + 224), v250, *(a1 + 556));
              sub_18859C(a1, v29, *buf, *&buf[8], *(a1 + 472) != 0);
              sub_477A0(*&buf[24]);
              if (__p[8] == 1 && *__p)
              {
                CFRelease(*__p);
              }

              sub_210C50(v486);
            }

            v251 = *(a1 + 216);
            LOBYTE(v471) = 0;
            LOBYTE(v472) = 0;
            if (*(v251 + 16) == 1)
            {
              sub_98A64(&v471, *(v251 + 8));
              LOBYTE(v472) = 1;
              if (v471)
              {
                v252 = sub_35CCF0(&v471);
                if (sub_3AB348(*v252))
                {
                  v253 = sub_35CCF0(&v471);
                  v254 = sub_3AB438(*v253);
                  v255 = sub_758D4(1986291046, 0, *(a1 + 144), *(a1 + 152));
                  if (!v461)
                  {
                    v456 = sub_5544(14);
                    v457 = sub_468EC(1, *v456, *(v456 + 8));
                    v458 = v457;
                    if (v457)
                    {
                      v459 = v457;
                      if (os_log_type_enabled(v459, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315394;
                        *&buf[4] = "VirtualAudio_PlugIn.mm";
                        *&buf[12] = 1024;
                        *&buf[14] = 7308;
                        _os_log_impl(&dword_0, v459, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
                      }
                    }

                    v460 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v460, "Precondition failure.");
                  }

                  sub_223B6C(*(*(v255 + 872) + 432), v254);
                }
              }
            }

            sub_DEDF0(buf, a1);
            v256 = *buf;
            LODWORD(v480) = *buf;
            sub_DF828(__p, "siri input source", &v480);
            sub_88E68(v491, __p);
            if (*&__p[8])
            {
              CFRelease(*&__p[8]);
            }

            if (*__p)
            {
              CFRelease(*__p);
            }

            v257 = *sub_5544(2);
            v258 = v257;
            if (v257)
            {
              v259 = v257;
              if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
              {
                sub_22170(v486, v256);
                v260 = (v486[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v486 : v486[0].__r_.__value_.__r.__words[0];
                *__p = 136315650;
                *&__p[4] = "VirtualAudio_PlugIn.mm";
                *&__p[12] = 1024;
                *&__p[14] = 7319;
                *&__p[18] = 2080;
                *&__p[20] = v260;
                _os_log_impl(&dword_0, v259, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Siri input source: %s.", __p, 0x1Cu);
                if (SHIBYTE(v486[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v486[0].__r_.__value_.__l.__data_);
                }
              }
            }

            if (v256 == 1936679529 || v256 == 1936024681)
            {
              if ((buf[31] & 0x80000000) != 0)
              {
                sub_54A0(v486, *&buf[8], *&buf[16]);
              }

              else
              {
                v486[0] = *&buf[8];
              }

              v261 = HIBYTE(v486[0].__r_.__value_.__r.__words[2]);
              if ((v486[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v261 = v486[0].__r_.__value_.__l.__size_;
              }

              if (!v261)
              {
                v291 = sub_5544(14);
                v292 = sub_468EC(1, *v291, *(v291 + 8));
                v293 = v292;
                if (v292)
                {
                  v294 = v292;
                  if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "VirtualAudio_PlugIn.mm";
                    *&__p[12] = 1024;
                    *&__p[14] = 7325;
                    _os_log_impl(&dword_0, v294, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid UUID for out of band speech input device", __p, 0x12u);
                  }
                }
              }

              sub_3AB148(__p, v486);
              sub_88E68(v491, __p);
              if (*&__p[8])
              {
                CFRelease(*&__p[8]);
              }

              if (*__p)
              {
                CFRelease(*__p);
              }

              v262 = *sub_5544(2);
              v263 = v262;
              if (v262)
              {
                v264 = v262;
                if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
                {
                  v265 = v486;
                  if ((v486[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v265 = v486[0].__r_.__value_.__r.__words[0];
                  }

                  *__p = 136315650;
                  *&__p[4] = "VirtualAudio_PlugIn.mm";
                  *&__p[12] = 1024;
                  *&__p[14] = 7328;
                  *&__p[18] = 2080;
                  *&__p[20] = v265;
                  _os_log_impl(&dword_0, v264, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Siri input source UUID: %s.", __p, 0x1Cu);
                }
              }

              if (SHIBYTE(v486[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v486[0].__r_.__value_.__l.__data_);
              }
            }

            if ((buf[31] & 0x80000000) != 0)
            {
              operator delete(*&buf[8]);
            }

            if (v152)
            {
              if (!*sub_5544(2))
              {
                v284 = *sub_5544(2);
                v285 = v284;
                if (v284)
                {
                  v286 = v284;
                  if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = "VirtualAudio_PlugIn.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 7349;
                    *&buf[18] = 2080;
                    *&buf[20] = "client request";
                    _os_log_impl(&dword_0, v286, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route configuration change completed [ %s ]. Route description: Redundant.", buf, 0x1Cu);
                  }
                }

                goto LABEL_610;
              }
            }

            else
            {
              v282 = *(a1 + 144);
              v283 = *(a1 + 152);
              while (v282 != v283)
              {
                if (*v282)
                {
                  sub_18974C(*(*v282 + 872), *(a1 + 552));
                }

                v282 += 8;
              }
            }

            v266 = v482;
            sub_53E8(v465, "  ");
            sub_B0954(__p, v266, 2, v465);
            if (v466 < 0)
            {
              operator delete(v465[0]);
            }

            v267 = *sub_5544(2);
            v268 = v267;
            if (v267)
            {
              v269 = v267;
              if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 7344;
                *&buf[18] = 2080;
                *&buf[20] = "client request";
                _os_log_impl(&dword_0, v269, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route configuration change completed [ %s ]. Route description:", buf, 0x1Cu);
              }
            }

            for (i = *&__p[8]; i != __p; i = *(i + 8))
            {
              v271 = *sub_5544(2);
              v272 = v271;
              if (v271)
              {
                v273 = v271;
                if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
                {
                  v274 = (i + 16);
                  if (*(i + 39) < 0)
                  {
                    v274 = *v274;
                  }

                  *buf = 136315650;
                  *&buf[4] = "VirtualAudio_PlugIn.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 7344;
                  *&buf[18] = 2080;
                  *&buf[20] = v274;
                  _os_log_impl(&dword_0, v273, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s", buf, 0x1Cu);
                }
              }
            }

            if (*&__p[16])
            {
              v275 = *&__p[8];
              v276 = *(*__p + 8);
              v277 = **&__p[8];
              *(v277 + 8) = v276;
              *v276 = v277;
              *&__p[16] = 0;
              while (v275 != __p)
              {
                v278 = *(v275 + 8);
                sub_D16F0(v275);
                v275 = v278;
              }
            }

            sub_DF8F4(a1);
LABEL_610:
            sub_E2798(buf, &v482, v491);
            v279 = v482;
            v280 = *buf;
            v482 = *buf;
            *buf = v279;
            if (v279)
            {
              CFRelease(v279);
            }

            a6[6] = 8;
            **(a6 + 2) = CFRetain(v280);
            if (v472 == 1 && v471)
            {
              CFRelease(v471);
            }

            *buf = v491;
            sub_65830(buf);
            if (v280)
            {
              CFRelease(v280);
            }

            if (v485.__r_.__value_.__l.__size_)
            {
              CFRelease(v485.__r_.__value_.__l.__size_);
            }

            if (v468)
            {
              CFRelease(v468);
            }

            sub_477A0(__dst_8);
            return sub_210C08(&v467);
          }
        }

LABEL_467:
        sub_23CEF8(v205, 0);
        sub_23CFBC(v205, 0);
        strcpy(buf, "dbedtpni");
        buf[9] = 0;
        *&buf[10] = 0;
        if (!(*(*v205 + 48))(v205, buf))
        {
          goto LABEL_471;
        }

        *__p = *(v205 + 8);
        strcpy(buf, "dbedtpni");
        buf[9] = 0;
        *&buf[10] = 0;
        v217 = sub_542F0(__p, buf, 0, 0);
        *(&v220 + 1) = v218;
        *&v220 = v217;
        v219 = v220 >> 32;
        if ((v219 & 0x100000000) == 0)
        {
          goto LABEL_471;
        }

        if (v219 == 1)
        {
          goto LABEL_471;
        }

        v221 = *(v205 + 8);
        strcpy(buf, "dbedtpni");
        buf[9] = 0;
        *&buf[10] = 0;
        v213 = AudioObjectSetPropertyData(v221, buf, 0, 0, 4u, &unk_518EC8);
        if (!v213)
        {
          goto LABEL_471;
        }

LABEL_843:
        v455 = __cxa_allocate_exception(0x10uLL);
        *v455 = &off_6DDDD0;
        v455[2] = v213;
      }

      v185 = v189;
      if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, *(a1 + 240));
        if (__p[23] >= 0)
        {
          v190 = __p;
        }

        else
        {
          v190 = *__p;
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 7234;
        *&buf[18] = 2080;
        *&buf[20] = v190;
        v187 = "%25s:%-5d Resetting mClientRequestedActivationInfo %s.";
LABEL_404:
        _os_log_impl(&dword_0, v185, OS_LOG_TYPE_DEBUG, v187, buf, 0x1Cu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    goto LABEL_439;
  }

  if (v13 > 1936882283)
  {
    if (v13 > 1986094179)
    {
      switch(v13)
      {
        case 1986094180:
          sub_27A4();
          (*(qword_6E94F8 + 16))(&qword_6E94F8);
          sub_10FD4(&v470, *a6);
          v66 = *sub_5544(2);
          v67 = v66;
          if (v66)
          {
            v68 = v66;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              sub_3AB700(__p, v470);
              v69 = __p[23] >= 0 ? __p : *__p;
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 7424;
              *&buf[18] = 2080;
              *&buf[20] = v69;
              _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEFAULT, "%25s:%-5d kVirtualAudioPlugInPropertyDeleteVAD - input dictionary: %s", buf, 0x1Cu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }
          }

          sub_27A4();
          v70 = atomic_load(&qword_6E9558);
          if (v70 == pthread_self())
          {
            if (*(a1 + 288))
            {
              *__p = off_6CE308;
              *&__p[24] = __p;
              sub_51FD0(buf, 0, __p);
              sub_4C70(__p);
              if (!v470)
              {
                v373 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v373, "Could not construct");
              }

              if (!sub_D077C(v470, "VAD type 4cc"))
              {
                v378 = sub_5544(14);
                v379 = sub_468EC(1, *v378, *(v378 + 8));
                v380 = v379;
                if (v379 && os_log_type_enabled(v379, OS_LOG_TYPE_ERROR))
                {
                  *v491 = 136315394;
                  *&v491[4] = "VirtualAudio_PlugIn.mm";
                  *&v491[12] = 1024;
                  *&v491[14] = 8324;
                  _os_log_impl(&dword_0, v380, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioPlugInPropertyDeleteVAD - kVirtualAudioPlugInPropertyVADKey is required", v491, 0x12u);
                }

                v381 = __cxa_allocate_exception(0x10uLL);
                *v381 = &off_6DDDD0;
                v381[2] = 1852797029;
              }

              if (!v470)
              {
                v382 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v382, "Could not construct");
              }

              v71 = sub_3ACCFC(v470);
              v72 = *sub_5544(2);
              v73 = v72;
              if (v72 && os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                *v491 = 136315650;
                *&v491[4] = "VirtualAudio_PlugIn.mm";
                *&v491[12] = 1024;
                *&v491[14] = 8328;
                *&v491[18] = 2048;
                *&v491[20] = v71;
                _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Deleting VAD (ID: %lu)", v491, 0x1Cu);
              }

              v74 = *(a1 + 144);
              v75 = *(a1 + 152);
              if (v74 != v75)
              {
                while (!*v74 || *(*v74 + 8) != v71)
                {
                  if (++v74 == v75)
                  {
                    goto LABEL_190;
                  }
                }
              }

              if (v74 != v75)
              {
                v83 = *v74;
                if (*v74)
                {
                  v84 = *(v83 + 384);
                  if (v84 != 1986095474 && v84 != 1986884979)
                  {
                    v429 = sub_5544(14);
                    v430 = sub_468EC(1, *v429, *(v429 + 8));
                    v431 = v430;
                    if (v430 && os_log_type_enabled(v430, OS_LOG_TYPE_ERROR))
                    {
                      *v491 = 136315394;
                      *&v491[4] = "VirtualAudio_PlugIn.mm";
                      *&v491[12] = 1024;
                      *&v491[14] = 8334;
                      _os_log_impl(&dword_0, v431, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v491, 0x12u);
                    }

                    v432 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v432, "Precondition failure.");
                  }

                  if (v84 == 1986884979)
                  {
                    v86 = 19;
                  }

                  else
                  {
                    v86 = 20;
                  }

                  LODWORD(v474) = v86;
                  v87 = sub_9F278(v83, 1);
                  sub_44E44(&__dst, v87);
                  if (v489 == 1)
                  {
                    v88 = *(__dst + 7);
                    v89 = sub_9E618(*(a1 + 128), v88);
                    v90 = v89;
                    if (v89)
                    {
                      v91 = *(v89 + 96);
                      v486[0].__r_.__value_.__r.__words[0] = *(v89 + 88);
                      v486[0].__r_.__value_.__l.__size_ = v91;
                      if (v91)
                      {
                        atomic_fetch_add_explicit(&v91->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      }

                      sub_25704(v491, v486, "", 8344);
                      v92 = *(*v491 + 184);
                      if (*&v491[8])
                      {
                        sub_1A8C0(*&v491[8]);
                      }

                      if (v91)
                      {
                        std::__shared_weak_count::__release_weak(v91);
                      }

                      if ((v92 & 0x40) != 0)
                      {
                        sub_22E9A4(v90, 0);
                      }
                    }

                    *&v485.__r_.__value_.__r.__words[1] = 0uLL;
                    v485.__r_.__value_.__r.__words[0] = &v485.__r_.__value_.__l.__size_;
                    if (*(a1 + 280) == 1986095474)
                    {
                      if (v88 != *(a1 + 284))
                      {
                        v433 = sub_5544(14);
                        v434 = sub_468EC(1, *v433, *(v433 + 8));
                        v435 = v434;
                        if (v434 && os_log_type_enabled(v434, OS_LOG_TYPE_ERROR))
                        {
                          *v491 = 136315394;
                          *&v491[4] = "VirtualAudio_PlugIn.mm";
                          *&v491[12] = 1024;
                          *&v491[14] = 8355;
                          _os_log_impl(&dword_0, v435, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v491, 0x12u);
                        }

                        v436 = __cxa_allocate_exception(0x10uLL);
                        std::logic_error::logic_error(v436, "Precondition failure.");
                      }

                      sub_3A9B74(&v480, *(a1 + 128), v88);
                      v93 = v481;
                      if (!v481 || v481->__shared_owners_ == -1)
                      {
                        v407 = sub_5544(14);
                        v408 = sub_468EC(1, *v407, *(v407 + 8));
                        v409 = v408;
                        if (v408 && os_log_type_enabled(v408, OS_LOG_TYPE_ERROR))
                        {
                          *v491 = 136315394;
                          *&v491[4] = "VirtualAudio_PlugIn.mm";
                          *&v491[12] = 1024;
                          *&v491[14] = 8357;
                          _os_log_impl(&dword_0, v409, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v491, 0x12u);
                        }

                        v410 = __cxa_allocate_exception(0x10uLL);
                        std::logic_error::logic_error(v410, "Precondition failure.");
                      }

                      v482 = v480;
                      v483 = v481;
                      atomic_fetch_add_explicit(&v481->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      sub_3A9E30(&v471, &v482, 1);
                      *v491 = 1986291046;
                      *&v491[8] = v471;
                      *&v491[16] = v472;
                      *&v491[24] = v473;
                      if (v473)
                      {
                        v472->__shared_weak_owners_ = &v491[16];
                        v471 = &v472;
                        v472 = 0;
                        v473 = 0;
                      }

                      else
                      {
                        *&v491[8] = &v491[16];
                      }

                      sub_3ACD7C(v486, v491, 1);
                      sub_4B14C(v485.__r_.__value_.__l.__size_);
                      v172 = v486[0].__r_.__value_.__l.__size_;
                      v485 = v486[0];
                      if (v486[0].__r_.__value_.__r.__words[2])
                      {
                        *(v486[0].__r_.__value_.__l.__size_ + 16) = &v485.__r_.__value_.__l.__size_;
                        v486[0].__r_.__value_.__r.__words[0] = &v486[0].__r_.__value_.__l.__size_;
                        *&v486[0].__r_.__value_.__r.__words[1] = 0uLL;
                        v172 = 0;
                      }

                      else
                      {
                        v485.__r_.__value_.__r.__words[0] = &v485.__r_.__value_.__l.__size_;
                      }

                      sub_4B14C(v172);
                      sub_4B0F4(*&v491[16]);
                      sub_4B0F4(v472);
                      if (v483)
                      {
                        std::__shared_weak_count::__release_weak(v483);
                      }

                      std::__shared_weak_count::__release_weak(v93);
                    }

                    *&v491[24] = 0;
                    operator new();
                  }

                  v400 = sub_5544(14);
                  v401 = sub_468EC(1, *v400, *(v400 + 8));
                  v402 = v401;
                  if (v401 && os_log_type_enabled(v401, OS_LOG_TYPE_ERROR))
                  {
                    *v491 = 136315394;
                    *&v491[4] = "VirtualAudio_PlugIn.mm";
                    *&v491[12] = 1024;
                    *&v491[14] = 8340;
                    _os_log_impl(&dword_0, v402, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v491, 0x12u);
                  }

                  v403 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v403, "Precondition failure.");
                }
              }

LABEL_190:
              v76 = sub_5544(14);
              v77 = sub_468EC(1, *v76, *(v76 + 8));
              v78 = v77;
              if (v77 && os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                *v491 = 136315650;
                *&v491[4] = "VirtualAudio_PlugIn.mm";
                *&v491[12] = 1024;
                *&v491[14] = 8331;
                *&v491[18] = 2048;
                *&v491[20] = v71;
                _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [vad is NULL]: No VAD of id %lu found", v491, 0x1Cu);
              }

              v79 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v79, "No VAD of id %lu found");
            }

            v370 = sub_5544(14);
            v371 = sub_468EC(1, *v370, *(v370 + 8));
            v369 = v371;
            if (v371 && os_log_type_enabled(v371, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 8317;
              _os_log_impl(&dword_0, v369, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          else
          {
            v367 = sub_5544(14);
            v368 = sub_468EC(1, *v367, *(v367 + 8));
            v369 = v368;
            if (v368 && os_log_type_enabled(v368, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 8316;
              _os_log_impl(&dword_0, v369, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          v372 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v372, "Precondition failure.");
        case 1987016304:
          sub_27A4();
          (*(qword_6E94F8 + 16))(&qword_6E94F8);
          __dst = off_6CE1A0;
          p_dst = &__dst;
          sub_51FD0(v491, 0, &__dst);
          sub_4C70(&__dst);
          if (*(a1 + 472))
          {
            v49 = sub_758D4(1986291046, 0, *(a1 + 144), *(a1 + 152));
            if (v49)
            {
              v50 = sub_9F278(v49, 1);
              if (v50[2])
              {
                v51 = sub_9E618(*(a1 + 128), *(*v50 + 28));
                if (v51)
                {
                  v52 = *(v51 + 96);
                  *__p = *(v51 + 88);
                  *&__p[8] = v52;
                  if (v52)
                  {
                    atomic_fetch_add_explicit(&v52->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_25704(buf, __p, "", 7518);
                  v53 = *(*buf + 144);
                  if (*&buf[8])
                  {
                    sub_1A8C0(*&buf[8]);
                  }

                  if (v52)
                  {
                    std::__shared_weak_count::__release_weak(v52);
                  }

                  if (v53 == 1885892674 || v53 == 1885892706 || v53 == 1886152047)
                  {
                    if (v53 == 1886152047)
                    {
                      operator new();
                    }

                    operator new();
                  }

                  v448 = sub_5544(14);
                  v449 = sub_468EC(1, *v448, *(v448 + 8));
                  v450 = v449;
                  if (v449)
                  {
                    v451 = v449;
                    if (os_log_type_enabled(v451, OS_LOG_TYPE_ERROR))
                    {
                      sub_22170(__p, v53);
                      v452 = __p[23] >= 0 ? __p : *__p;
                      *buf = 136315650;
                      *&buf[4] = "VirtualAudio_PlugIn.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 7523;
                      *&buf[18] = 2080;
                      *&buf[20] = v452;
                      _os_log_impl(&dword_0, v451, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error routing to partner port - Default VAD not routed to bluetooth (routed to %s)", buf, 0x1Cu);
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }
                    }
                  }

                  v453 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v453, "Error routing to partner port - Default VAD not routed to bluetooth (routed to %s)");
                }
              }

              v319 = sub_5544(14);
              v320 = sub_468EC(1, *v319, *(v319 + 8));
              v321 = v320;
              if (v320 && os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 7516;
                _os_log_impl(&dword_0, v321, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error routing to partner port - No output port found for default vad", buf, 0x12u);
              }

              v322 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v322, "Error routing to partner port - No output port found for default vad");
            }

            v359 = sub_5544(14);
            v360 = sub_468EC(1, *v359, *(v359 + 8));
            v361 = v360;
            if (v360 && os_log_type_enabled(v360, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 7511;
              _os_log_impl(&dword_0, v361, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No default VAD found", buf, 0x12u);
            }

            v362 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v362, "No default VAD found");
          }

          v352 = sub_5544(14);
          v353 = sub_468EC(1, *v352, *(v352 + 8));
          v354 = v353;
          if (v353 && os_log_type_enabled(v353, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 7508;
            _os_log_impl(&dword_0, v354, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error routing to partner port - Not in colistening route", buf, 0x12u);
          }

          v355 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v355, "Error routing to partner port - Not in colistening route");
        case 2019714413:
          if ((*(*a1 + 64))(a1, a2, a3, a4) == v7)
          {
            v23 = *(a1 + 216);
            if (!*a6 || !*(v23 + 24))
            {
              *(v23 + 24) = *a6;
              if (*(v23 + 24))
              {
                v24 = *sub_5544(2);
                v25 = v24;
                if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  v26 = *(v23 + 40);
                  *buf = 136315650;
                  *&buf[4] = "VirtualAudio_PlugIn.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 353;
                  *&buf[18] = 1024;
                  *&buf[20] = v26;
                  _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling client with beam index %u.", buf, 0x18u);
                }

                (*(v23 + 24))(*(v23 + 40), *(v23 + 32));
              }

              return sub_210C08(&v467);
            }

            v424 = sub_5544(14);
            v311 = 2003329396;
            v425 = sub_468EC(1, *v424, *(v424 + 8));
            v312 = v425;
            if (v425 && os_log_type_enabled(v425, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 349;
              _os_log_impl(&dword_0, v312, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Attempt to register an external beamforming handler while one is already registered.", buf, 0x12u);
            }

LABEL_705:

            v343 = __cxa_allocate_exception(0x10uLL);
            *v343 = &off_6DDDD0;
            v343[2] = v311;
          }

          v323 = sub_5544(14);
          v311 = 561211770;
          v324 = sub_468EC(1, *v323, *(v323 + 8));
          if (v324)
          {
            v312 = v324;
            if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
            {
              *v491 = *a2;
              *&v491[8] = a2[2];
              sub_22CE0(__p, v491);
            }

LABEL_704:

            goto LABEL_705;
          }

          goto LABEL_667;
      }

LABEL_201:
      sub_20BAC(a1, a2, a3, a4, v7, a6);
      return sub_210C08(&v467);
    }

    if (v13 != 1936882284)
    {
      if (v13 != 1986094179)
      {
        goto LABEL_201;
      }

      sub_27A4();
      (*(qword_6E94F8 + 16))(&qword_6E94F8);
      sub_10FD4(&v482, *a6);
      v35 = *sub_5544(2);
      v36 = v35;
      if (v35)
      {
        v37 = v35;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          sub_3AB700(__p, v482);
          v38 = __p[23] >= 0 ? __p : *__p;
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 7405;
          *&buf[18] = 2080;
          *&buf[20] = v38;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d kVirtualAudioPlugInPropertyCreateVAD - input dictionary: %s", buf, 0x1Cu);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }
      }

      sub_27A4();
      v39 = atomic_load(&qword_6E9558);
      if (v39 != pthread_self())
      {
        v363 = sub_5544(14);
        v364 = sub_468EC(1, *v363, *(v363 + 8));
        v365 = v364;
        if (v364 && os_log_type_enabled(v364, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 8272;
          _os_log_impl(&dword_0, v365, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v366 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v366, "Precondition failure.");
      }

      *v491 = off_6CE278;
      *&v491[24] = v491;
      sub_51FD0(buf, 0, v491);
      sub_4C70(v491);
      if (!v482)
      {
        goto LABEL_761;
      }

      if (sub_D077C(v482, "VAD type 4cc"))
      {
        v40 = v482;
        if (!v482)
        {
          goto LABEL_761;
        }

        v41 = CFStringCreateWithBytes(0, "port id array", 13, 0x8000100u, 0);
        *__p = v41;
        if (!v41)
        {
          v383 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v383, "Could not construct");
        }

        v42 = CFDictionaryContainsKey(v40, v41);
        if (*__p)
        {
          CFRelease(*__p);
        }

        if (v42)
        {
          if (!v482)
          {
            goto LABEL_761;
          }

          if (!sub_3AD458(v482, "mirror vad"))
          {
            if (!v482)
            {
              goto LABEL_761;
            }

            v43 = sub_3ACCFC(v482);
            v44 = v43;
            if (v43 == 1986095474 || v43 == 1986884979)
            {
              if (v482)
              {
                v45 = sub_379E24(v482, "port id array");
                if (v45)
                {
                  sub_281670(__p, v45);
                  v46 = 0;
                  memset(v486, 0, 24);
                  if (__p[24])
                  {
                    v47 = *__p;
                    sub_46980(v486, *__p, *&__p[8], (*&__p[8] - *__p) >> 2);
                    if (v47 && (__p[24] & 1) != 0)
                    {
                      operator delete(v47);
                    }

                    v46 = v486[0].__r_.__value_.__r.__words[0];
                  }
                }

                else
                {
                  v46 = 0;
                  __p[0] = 0;
                  __p[24] = 0;
                  memset(v486, 0, 24);
                }

                if (v486[0].__r_.__value_.__l.__size_ - v46 != 4)
                {
                  v389 = sub_5544(14);
                  v390 = sub_468EC(1, *v389, *(v389 + 8));
                  v391 = v390;
                  if (v390 && os_log_type_enabled(v390, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "VirtualAudio_PlugIn.mm";
                    *&__p[12] = 1024;
                    *&__p[14] = 8262;
                    _os_log_impl(&dword_0, v391, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioPlugInPropertyCreateVAD - must specify a single port type with kVirtualAudioPlugInPortIDsKey.", __p, 0x12u);
                  }

                  v392 = __cxa_allocate_exception(0x10uLL);
                  *v392 = &off_6DDDD0;
                  v392[2] = 1852797029;
                }

                v124 = *sub_5544(2);
                v125 = v124;
                if (v124)
                {
                  v126 = v124;
                  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_22170(&__dst, v44);
                    v127 = v489 >= 0 ? &__dst : __dst;
                    v128 = *v46;
                    *__p = 136315906;
                    *&__p[4] = "VirtualAudio_PlugIn.mm";
                    *&__p[12] = 1024;
                    *&__p[14] = 8265;
                    *&__p[18] = 2080;
                    *&__p[20] = v127;
                    *&__p[28] = 2048;
                    *&__p[30] = v128;
                    _os_log_impl(&dword_0, v126, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Create VAD of type %s with port ID %lu.", __p, 0x26u);
                    if (SHIBYTE(v489) < 0)
                    {
                      operator delete(__dst);
                    }
                  }
                }

                v129 = *v46;
                operator delete(v46);
                LODWORD(v469) = v44;
                if (v44 == 1986884979)
                {
                  v130 = 19;
                }

                else
                {
                  v130 = 20;
                }

                LODWORD(v474) = v130;
                if (!sub_2727D0(*(a1 + 112), v130))
                {
                  v393 = sub_5544(14);
                  v394 = sub_468EC(1, *v393, *(v393 + 8));
                  v395 = v394;
                  if (v394 && os_log_type_enabled(v394, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "VirtualAudio_PlugIn.mm";
                    *&__p[12] = 1024;
                    *&__p[14] = 8284;
                    _os_log_impl(&dword_0, v395, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
                  }

                  v396 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v396, "Precondition failure.");
                }

                v131 = *(a1 + 128);
                v132 = sub_758D4(1986291046, 0, *(a1 + 144), *(a1 + 152));
                if (v132)
                {
                  v133 = sub_9F278(v132, 1);
                  v136 = *v133;
                  v134 = v133 + 1;
                  v135 = v136;
                  if (v136 == v134)
                  {
LABEL_298:
                    v139 = sub_9E618(v131, v129);
                    v140 = v139;
                    if (v139)
                    {
                      v141 = *(v139 + 96);
                      *__p = *(v139 + 88);
                      *&__p[8] = v141;
                      if (v141)
                      {
                        atomic_fetch_add_explicit(&v141->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      }

                      sub_25704(&__dst, __p, "", 1051);
                      if (v141)
                      {
                        std::__shared_weak_count::__release_weak(v141);
                      }

                      v142 = *sub_5544(2);
                      v143 = v142;
                      if (v142)
                      {
                        v144 = v142;
                        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                        {
                          if (*(__dst + 303) < 0)
                          {
                            sub_54A0(v486, __dst[35], __dst[36]);
                          }

                          else
                          {
                            v486[0] = *(__dst + 35);
                          }

                          v191 = v486;
                          if ((v486[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v191 = v486[0].__r_.__value_.__r.__words[0];
                          }

                          *__p = 136315650;
                          *&__p[4] = "VirtualAudio_PlugIn.mm";
                          *&__p[12] = 1024;
                          *&__p[14] = 1053;
                          *&__p[18] = 2080;
                          *&__p[20] = v191;
                          _os_log_impl(&dword_0, v144, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Requested port is %s", __p, 0x1Cu);
                          if (SHIBYTE(v486[0].__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v486[0].__r_.__value_.__l.__data_);
                          }
                        }
                      }

                      v192 = __dst;
                      v193 = *(__dst + 36);
                      if (v193 == 1885433953 || v193 == 1885433975)
                      {
                        if ((__dst[23] & 0x40) != 0)
                        {
                          sub_22E9A4(v140, 1);
                        }

                        v194 = __dst_8;
                        v471 = v192;
                        v472 = __dst_8;
                        if (__dst_8)
                        {
                          atomic_fetch_add_explicit(&__dst_8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                          sub_1A8C0(v194);
                        }

                        *&__p[24] = 0;
                        operator new();
                      }

                      v437 = sub_5544(14);
                      v438 = sub_468EC(1, *v437, *(v437 + 8));
                      v439 = v438;
                      if (v438)
                      {
                        v440 = v438;
                        if (os_log_type_enabled(v440, OS_LOG_TYPE_ERROR))
                        {
                          sub_22170(v486, v192[36]);
                          v441 = (v486[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v486 : v486[0].__r_.__value_.__r.__words[0];
                          *__p = 136315650;
                          *&__p[4] = "VirtualAudio_PlugIn.mm";
                          *&__p[12] = 1024;
                          *&__p[14] = 1055;
                          *&__p[18] = 2080;
                          *&__p[20] = v441;
                          _os_log_impl(&dword_0, v440, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported port type %s specified for VAD creation", __p, 0x1Cu);
                          if (SHIBYTE(v486[0].__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v486[0].__r_.__value_.__l.__data_);
                          }
                        }
                      }

                      v442 = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(v442, "Unsupported port type %s specified for VAD creation");
                    }

                    v404 = sub_5544(14);
                    v405 = sub_468EC(1, *v404, *(v404 + 8));
                    v406 = v405;
                    if (v405 && os_log_type_enabled(v405, OS_LOG_TYPE_ERROR))
                    {
                      *__p = 136315650;
                      *&__p[4] = "VirtualAudio_PlugIn.mm";
                      *&__p[12] = 1024;
                      *&__p[14] = 1049;
                      *&__p[18] = 1024;
                      *&__p[20] = v129;
                      _os_log_impl(&dword_0, v406, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): No virtual audio port found with port id %u", __p, 0x18u);
                    }

                    v302 = __cxa_allocate_exception(0x10uLL);
                    v303 = &std::logic_error::~logic_error;
                    std::logic_error::logic_error(v302, "No virtual audio port found with port id %u");
LABEL_651:
                    __cxa_throw(v302, v304, v303);
                  }

                  while (*(v135 + 7) != v129)
                  {
                    v137 = v135[1];
                    if (v137)
                    {
                      do
                      {
                        v138 = v137;
                        v137 = *v137;
                      }

                      while (v137);
                    }

                    else
                    {
                      do
                      {
                        v138 = v135[2];
                        v12 = *v138 == v135;
                        v135 = v138;
                      }

                      while (!v12);
                    }

                    v135 = v138;
                    if (v138 == v134)
                    {
                      goto LABEL_298;
                    }
                  }

                  v299 = sub_5544(14);
                  v300 = sub_468EC(1, *v299, *(v299 + 8));
                  v301 = v300;
                  if (v300 && os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315650;
                    *&__p[4] = "VirtualAudio_PlugIn.mm";
                    *&__p[12] = 1024;
                    *&__p[14] = 1045;
                    *&__p[18] = 1024;
                    *&__p[20] = v129;
                    _os_log_impl(&dword_0, v301, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Default VAD is using the requested port %u", __p, 0x18u);
                  }

                  v302 = __cxa_allocate_exception(0x10uLL);
                  v303 = &std::runtime_error::~runtime_error;
                  std::runtime_error::runtime_error(v302, "Default VAD is using the requested port %u");
                }

                else
                {
                  v397 = sub_5544(14);
                  v398 = sub_468EC(1, *v397, *(v397 + 8));
                  v399 = v398;
                  if (v398 && os_log_type_enabled(v398, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "VirtualAudio_PlugIn.mm";
                    *&__p[12] = 1024;
                    *&__p[14] = 1039;
                    _os_log_impl(&dword_0, v399, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No default VAD found !", __p, 0x12u);
                  }

                  v302 = __cxa_allocate_exception(0x10uLL);
                  v303 = &std::runtime_error::~runtime_error;
                  std::runtime_error::runtime_error(v302, "No default VAD found !");
                }

                goto LABEL_651;
              }

LABEL_761:
              v388 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v388, "Could not construct");
            }

            v426 = sub_5544(14);
            v427 = sub_468EC(1, *v426, *(v426 + 8));
            v376 = v427;
            if (v427 && os_log_type_enabled(v427, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 8257;
              v377 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioPlugInPropertyCreateVAD - kVirtualAudioPlugInPropertyVADKey must be either  kVirtualAudioDeviceTypeMusic or kVirtualAudioDeviceTypePerAppAirPlay";
              goto LABEL_809;
            }

LABEL_810:

            v428 = __cxa_allocate_exception(0x10uLL);
            *v428 = &off_6DDDD0;
            v428[2] = 1852797029;
          }

          v386 = sub_5544(14);
          v387 = sub_468EC(1, *v386, *(v386 + 8));
          v376 = v387;
          if (!v387 || !os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_810;
          }

          *__p = 136315394;
          *&__p[4] = "VirtualAudio_PlugIn.mm";
          *&__p[12] = 1024;
          *&__p[14] = 8250;
          v377 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioPlugInPropertyCreateVAD - kVirtualAudioPlugInMirrorVADKey is not supported";
        }

        else
        {
          v384 = sub_5544(14);
          v385 = sub_468EC(1, *v384, *(v384 + 8));
          v376 = v385;
          if (!v385 || !os_log_type_enabled(v385, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_810;
          }

          *__p = 136315394;
          *&__p[4] = "VirtualAudio_PlugIn.mm";
          *&__p[12] = 1024;
          *&__p[14] = 8247;
          v377 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioPlugInPropertyCreateVAD - kVirtualAudioPlugInPortIDsKey is required";
        }
      }

      else
      {
        v374 = sub_5544(14);
        v375 = sub_468EC(1, *v374, *(v374 + 8));
        v376 = v375;
        if (!v375 || !os_log_type_enabled(v375, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_810;
        }

        *__p = 136315394;
        *&__p[4] = "VirtualAudio_PlugIn.mm";
        *&__p[12] = 1024;
        *&__p[14] = 8244;
        v377 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioPlugInPropertyCreateVAD - kVirtualAudioPlugInPropertyVADKey is required";
      }

LABEL_809:
      _os_log_impl(&dword_0, v376, OS_LOG_TYPE_ERROR, v377, __p, 0x12u);
      goto LABEL_810;
    }

    if ((*(*a1 + 64))(a1, a2, a3, a4) != v7)
    {
      v339 = sub_5544(14);
      v311 = 561211770;
      v340 = sub_468EC(1, *v339, *(v339 + 8));
      if (v340)
      {
        v312 = v340;
        if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
        {
          *v491 = *a2;
          *&v491[8] = a2[2];
          sub_22CE0(__p, v491);
        }

        goto LABEL_704;
      }

LABEL_667:
      v312 = 0;
      goto LABEL_705;
    }

    if (*(a1 + 112))
    {
      v80 = sub_8703C();
      (*(*v80 + 352))(v80, *(a1 + 112), *a6, *(a6 + 1));
      v81 = *sub_5544(2);
      v82 = v81;
      if (v81 && os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 7367;
        _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SerializationContext is ready. Allowing all devices", buf, 0x12u);
      }

      sub_CE168();
      if (_os_feature_enabled_impl())
      {
        dword_709710 = 0;
        operator new();
      }

      v112 = sub_2450DC();
      (*(**(v112 + 288) + 24))(*(v112 + 288), &dword_6E7200);
      return sub_210C08(&v467);
    }

    v347 = sub_5544(14);
    v348 = sub_468EC(1, *v347, *(v347 + 8));
    v346 = v348;
    if (v348 && os_log_type_enabled(v348, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 7364;
      _os_log_impl(&dword_0, v346, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_709;
  }

  if (v13 > 1936225647)
  {
    if (v13 == 1936225648)
    {
      v48 = sub_68E60();
      operator new();
    }

    if (v13 != 1936745573)
    {
      goto LABEL_201;
    }

    if ((*(*a1 + 64))(a1, a2, a3, a4) != v7)
    {
      v327 = sub_5544(14);
      v311 = 561211770;
      v328 = sub_468EC(1, *v327, *(v327 + 8));
      if (v328)
      {
        v312 = v328;
        if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
        {
          *v491 = *a2;
          *&v491[8] = a2[2];
          sub_22CE0(__p, v491);
        }

        goto LABEL_704;
      }

      goto LABEL_667;
    }

    if (*(a1 + 112))
    {
      sub_8703C();
      operator new();
    }

    v344 = sub_5544(14);
    v345 = sub_468EC(1, *v344, *(v344 + 8));
    v346 = v345;
    if (v345 && os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 7383;
      _os_log_impl(&dword_0, v346, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_709:

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
    goto LABEL_656;
  }

  if (v13 == 1920426613)
  {
    if ((*(*a1 + 64))(a1, a2, a3, a4) == v7)
    {
      *(a1 + 200) = *a6;
      return sub_210C08(&v467);
    }

    v331 = sub_5544(14);
    v311 = 561211770;
    v332 = sub_468EC(1, *v331, *(v331 + 8));
    if (v332)
    {
      v312 = v332;
      if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
      {
        *v491 = *a2;
        *&v491[8] = a2[2];
        sub_22CE0(__p, v491);
      }

      goto LABEL_704;
    }

    goto LABEL_667;
  }

  if (v13 != 1936028521)
  {
    goto LABEL_201;
  }

  if ((*(*a1 + 64))(a1, a2, a3, a4) != v7)
  {
    v325 = sub_5544(14);
    v311 = 561211770;
    v326 = sub_468EC(1, *v325, *(v325 + 8));
    if (v326)
    {
      v312 = v326;
      if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
      {
        *v491 = *a2;
        *&v491[8] = a2[2];
        sub_22CE0(__p, v491);
      }

      goto LABEL_704;
    }

    goto LABEL_667;
  }

  sub_10FD4(__p, *a6);
  sub_55BC(buf, __p);
  if (*__p)
  {
    CFRelease(*__p);
  }

  sub_128D4(a1, buf);
  if (v476)
  {
    v477 = v476;
    operator delete(v476);
  }

  *__p = &buf[32];
  sub_11C50(__p);
  *__p = &buf[8];
  sub_11C50(__p);
  return sub_210C08(&v467);
}

void sub_EAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t *buf)
{
  __cxa_guard_abort(&qword_6E8590);
  buf = &STACK[0x220];
  sub_11C50(&buf);
  sub_4BA7C(&a28);
  sub_477A0(*(v39 - 184));
  sub_210C08(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_10270(uint64_t a1, int *a2, uint64_t a3, const char *a4)
{
  if (*a2 != 1986095470)
  {
    v6 = a3;
    sub_27A4();
    v42 = (*(qword_6E94F8 + 16))();
    if (*(a1 + 108) != 2)
    {
      v27 = sub_5544(14);
      v28 = sub_468EC(1, *v27, *(v27 + 8));
      v29 = v28;
      if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "VirtualAudio_PlugIn.mm";
        v45 = 1024;
        *v46 = 5721;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): VirtualAudio PlugIn is not initialized yet", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "VirtualAudio PlugIn is not initialized yet");
    }

    if ((*(*a1 + 48))(a1, a2))
    {
      if ((v6 == 0) == (a4 == 0))
      {
        v9 = *a2;
        v4 = 8;
        if (*a2 <= 1769304163)
        {
          if (v9 <= 1667329391)
          {
            if (v9 <= 1634756194)
            {
              if (v9 <= 1634627951)
              {
                if (v9 != 1633907299)
                {
                  if (v9 != 1633969267)
                  {
                    v10 = 1634624371;
                    goto LABEL_72;
                  }

LABEL_73:
                  v4 = 4;
                }

LABEL_74:
                sub_210C50(&v42);
                return v4;
              }

              if (v9 != 1634627952)
              {
                if (v9 != 1634627954)
                {
                  v11 = 1634629490;
                  goto LABEL_47;
                }

                if (v6 == 8 && a4)
                {
                  goto LABEL_74;
                }

                v17 = sub_5544(14);
                v18 = sub_468EC(1, *v17, *(v17 + 8));
                if (v18)
                {
                  v14 = v18;
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    v39 = *a2;
                    v40 = a2[2];
                    sub_22CE0(__p, &v39);
                  }

LABEL_122:

LABEL_123:
                  v38 = __cxa_allocate_exception(0x10uLL);
                  *v38 = &off_6DDDD0;
                  v38[2] = 561211770;
                }

                goto LABEL_101;
              }

              if ((v6 | 4) == 4)
              {
                goto LABEL_74;
              }

              v22 = sub_5544(14);
              v23 = sub_468EC(1, *v22, *(v22 + 8));
              v21 = v23;
              if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v44 = "VirtualAudio_PlugIn.mm";
                v45 = 1024;
                *v46 = 5735;
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
              }

              goto LABEL_97;
            }

            if (v9 <= 1651077235)
            {
              if (v9 == 1634756195 || v9 == 1634759267)
              {
                goto LABEL_74;
              }

              v11 = 1635152483;
              goto LABEL_47;
            }

            if (v9 == 1651077236 || v9 == 1651077731)
            {
              goto LABEL_74;
            }

            v10 = 1651664755;
LABEL_72:
            if (v9 == v10)
            {
              goto LABEL_73;
            }

LABEL_103:
            v4 = sub_E1CEC(a1, a2);
            goto LABEL_74;
          }

          if (v9 <= 1685283954)
          {
            if (v9 > 1668510573)
            {
              if (v9 == 1668510574)
              {
                goto LABEL_73;
              }

              if (v9 != 1668575346)
              {
                if (v9 != 1684632434)
                {
                  goto LABEL_103;
                }

                if (v6 == 8 && a4)
                {
                  goto LABEL_73;
                }

                v12 = sub_5544(14);
                v13 = sub_468EC(1, *v12, *(v12 + 8));
                if (v13)
                {
                  v14 = v13;
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    v39 = *a2;
                    v40 = a2[2];
                    sub_22CE0(__p, &v39);
                  }

                  goto LABEL_122;
                }

LABEL_101:
                v14 = 0;
                goto LABEL_123;
              }

              if ((v6 | 4) == 4)
              {
                goto LABEL_74;
              }

              v19 = sub_5544(14);
              v20 = sub_468EC(1, *v19, *(v19 + 8));
              v21 = v20;
              if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v44 = "VirtualAudio_PlugIn.mm";
                v45 = 1024;
                *v46 = 5765;
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
              }

LABEL_97:

              v24 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v24, "Precondition failure.");
            }

            if (v9 == 1667329392 || v9 == 1668310627)
            {
              goto LABEL_74;
            }

            v11 = 1668313699;
LABEL_47:
            if (v9 != v11)
            {
              goto LABEL_103;
            }

            goto LABEL_74;
          }

          if (v9 > 1701737067)
          {
            if (v9 == 1701737068 || v9 == 1751480691)
            {
              goto LABEL_73;
            }

            v10 = 1768845421;
            goto LABEL_72;
          }

          if (v9 == 1685283955)
          {
            goto LABEL_73;
          }

          if (v9 != 1685287790)
          {
            v10 = 1701013875;
            goto LABEL_72;
          }

LABEL_43:
          v4 = 0;
          goto LABEL_74;
        }

        if (v9 <= 1920426612)
        {
          if (v9 > 1886549106)
          {
            if (v9 <= 1919120503)
            {
              if (v9 == 1886549107 || v9 == 1886872690)
              {
                goto LABEL_74;
              }

              v11 = 1903653475;
              goto LABEL_47;
            }

            if (v9 == 1919120504)
            {
              goto LABEL_73;
            }

            if (v9 != 1920230246)
            {
              v10 = 1920297328;
              goto LABEL_72;
            }
          }

          else
          {
            if (v9 > 1885958771)
            {
              if (v9 == 1885958772)
              {
                if (v6 == 8 && a4)
                {
                  goto LABEL_74;
                }

                v25 = sub_5544(14);
                v26 = sub_468EC(1, *v25, *(v25 + 8));
                if (v26)
                {
                  v14 = v26;
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    v39 = *a2;
                    v40 = a2[2];
                    sub_22CE0(__p, &v39);
                  }

                  goto LABEL_122;
                }

                goto LABEL_101;
              }

              if (v9 == 1886350709)
              {
                goto LABEL_73;
              }

              v10 = 1886548848;
              goto LABEL_72;
            }

            if (v9 != 1769304164)
            {
              if (v9 == 1819173229)
              {
                goto LABEL_74;
              }

              v10 = 1868853875;
              goto LABEL_72;
            }
          }

          v4 = 32;
          goto LABEL_74;
        }

        if (v9 > 1936882283)
        {
          if (v9 > 1987016303)
          {
            if (v9 == 1987016304)
            {
              goto LABEL_74;
            }

            if (v9 == 1987077486)
            {
              goto LABEL_73;
            }

            v16 = 2019714413;
          }

          else
          {
            if ((v9 - 1986094179) < 2)
            {
              goto LABEL_43;
            }

            v16 = 1936882284;
          }

          if (v9 != v16)
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (v9 > 1936745331)
          {
            if (v9 == 1936745332)
            {
              sub_2682E4(buf, *(a1 + 112));
              v4 = (4 * *&v46[2]);
              sub_4E0BC(buf);
              goto LABEL_74;
            }

            if (v9 == 1936745573)
            {
              goto LABEL_73;
            }

            v10 = 1936746862;
            goto LABEL_72;
          }

          if (v9 != 1920426613)
          {
            if (v9 == 1936028521)
            {
              goto LABEL_74;
            }

            v10 = 1936225648;
            goto LABEL_72;
          }
        }

        v4 = 16;
        goto LABEL_74;
      }

      v35 = sub_5544(14);
      v36 = sub_468EC(1, *v35, *(v35 + 8));
      if (!v36)
      {
        v33 = 0;
        v34 = 561211770;
        goto LABEL_119;
      }

      v33 = v36;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v39 = *a2;
        v40 = a2[2];
        sub_22CE0(__p, &v39);
      }

      v34 = 561211770;
    }

    else
    {
      v31 = sub_5544(14);
      v32 = sub_468EC(1, *v31, *(v31 + 8));
      if (!v32)
      {
        v33 = 0;
        v34 = 2003332927;
        goto LABEL_119;
      }

      v33 = v32;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v39 = *a2;
        v40 = a2[2];
        sub_22CE0(__p, &v39);
      }

      v34 = 2003332927;
    }

LABEL_119:
    v37 = __cxa_allocate_exception(0x10uLL);
    *v37 = &off_6DDDD0;
    v37[2] = v34;
  }

  return 4;
}

void *sub_10FD4(void *result, CFTypeRef cf)
{
  v2 = result;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_11068(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DB160(v1);
  _Unwind_Resume(a1);
}

const void *sub_11094(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_11148(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x110F8);
}

const void *sub_11198(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_1124C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x111FCLL);
}

const void *sub_1129C(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_11350(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x11300);
}

uint64_t sub_113A0(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_517100);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_517110), xmmword_517120);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

uint64_t sub_116C8(uint64_t a1, int *a2)
{
  if (*a2 != 1986095470)
  {
    sub_27A4();
    v15 = (*(qword_6E94F8 + 16))();
    if (*(a1 + 108) != 2)
    {
      v11 = sub_5544(14);
      v12 = sub_468EC(1, *v11, *(v11 + 8));
      v13 = v12;
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "VirtualAudio_PlugIn.mm";
        v18 = 1024;
        v19 = 5640;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): VirtualAudio PlugIn is not initialized yet", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "VirtualAudio PlugIn is not initialized yet");
    }

    v2 = 0;
    v5 = *a2;
    if (*a2 > 1769304163)
    {
      if (v5 > 1920426612)
      {
        if (v5 > 1936882283)
        {
          if (v5 > 1987016303)
          {
            if (v5 == 1987016304)
            {
              goto LABEL_70;
            }

            if (v5 == 1987077486)
            {
              goto LABEL_71;
            }

            v8 = 2019714413;
          }

          else
          {
            if ((v5 - 1986094179) < 2)
            {
              goto LABEL_70;
            }

            v8 = 1936882284;
          }
        }

        else
        {
          if (v5 > 1936745331)
          {
            if (v5 == 1936745332)
            {
              goto LABEL_71;
            }

            if (v5 == 1936745573)
            {
              v9 = sub_3B34B0();
              goto LABEL_74;
            }

            v7 = 1936746862;
            goto LABEL_64;
          }

          if (v5 == 1920426613 || v5 == 1936028521)
          {
            goto LABEL_70;
          }

          v8 = 1936225648;
        }

        if (v5 != v8)
        {
          goto LABEL_65;
        }

        goto LABEL_70;
      }

      if (v5 > 1886549106)
      {
        if (v5 <= 1919120503)
        {
          if (v5 == 1886549107 || v5 == 1886872690)
          {
            goto LABEL_71;
          }

          v7 = 1903653475;
          goto LABEL_64;
        }

        if (v5 == 1919120504)
        {
          goto LABEL_71;
        }

        if (v5 != 1920230246)
        {
          v7 = 1920297328;
          goto LABEL_64;
        }
      }

      else if (v5 > 1885958771)
      {
        if (v5 == 1885958772)
        {
          goto LABEL_71;
        }

        if (v5 != 1886350709)
        {
          v7 = 1886548848;
          goto LABEL_64;
        }
      }

      else if (v5 != 1769304164)
      {
        if (v5 == 1819173229)
        {
          goto LABEL_71;
        }

        v7 = 1868853875;
LABEL_64:
        if (v5 != v7)
        {
LABEL_65:
          v9 = sub_201D4(a1, a2);
LABEL_74:
          v2 = v9;
        }

LABEL_71:
        sub_210C50(&v15);
        return v2;
      }
    }

    else
    {
      if (v5 <= 1667329391)
      {
        if (v5 > 1634756194)
        {
          if (v5 > 1651077235)
          {
            if (v5 == 1651077236 || v5 == 1651077731)
            {
              goto LABEL_71;
            }

            v7 = 1651664755;
          }

          else
          {
            if (v5 == 1634756195 || v5 == 1634759267)
            {
              goto LABEL_71;
            }

            v7 = 1635152483;
          }
        }

        else
        {
          if (v5 > 1634627951)
          {
            if (v5 == 1634627952 || v5 == 1634627954)
            {
              goto LABEL_71;
            }

            v6 = 30578;
          }

          else
          {
            if (v5 == 1633907299 || v5 == 1633969267)
            {
              goto LABEL_71;
            }

            v6 = 25459;
          }

          v7 = v6 | 0x616E0000;
        }

        goto LABEL_64;
      }

      if (v5 > 1685283954)
      {
        if (v5 > 1701737067)
        {
          if (v5 != 1701737068)
          {
            if (v5 == 1751480691)
            {
              goto LABEL_71;
            }

            v7 = 1768845421;
            goto LABEL_64;
          }
        }

        else if (v5 != 1685283955 && v5 != 1685287790)
        {
          v7 = 1701013875;
          goto LABEL_64;
        }
      }

      else if (v5 > 1668510573)
      {
        if (v5 != 1668510574)
        {
          if (v5 == 1668575346)
          {
            goto LABEL_71;
          }

          v7 = 1684632434;
          goto LABEL_64;
        }
      }

      else if (v5 != 1667329392)
      {
        if (v5 == 1668310627)
        {
          goto LABEL_71;
        }

        v7 = 1668313699;
        goto LABEL_64;
      }
    }

LABEL_70:
    v2 = 1;
    goto LABEL_71;
  }

  return 0;
}

void sub_11C50(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_482B4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

const void *sub_11CA4(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_11D58(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x11D08);
}

uint64_t sub_11DA8(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    v4 = 1;
  }

  else
  {
    v5 = CFNumberGetTypeID();
    if (v5 == CFGetTypeID(a1))
    {
      v3 = sub_1E0430(a1);
      v4 = HIBYTE(v3);
    }

    else
    {
      LOBYTE(v3) = 0;
      v4 = 0;
    }
  }

  return v3 | (v4 << 8);
}

const void *sub_11E34(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_11EE8(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x11E98);
}

void sub_11F38(uint64_t a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Count = CFArrayGetCount(a2);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_121D8(&v20, Count);
    if (Count <= 0)
    {
      v10 = v20;
      v9 = v21;
      v8 = v22;
LABEL_22:
      *a1 = v10;
      *(a1 + 8) = v9;
      *(a1 + 16) = v8;
      *(a1 + 24) = 1;
    }

    else
    {
      v6 = 0;
      v7 = Count & 0x7FFFFFFF;
      v9 = v21;
      v8 = v22;
      v10 = v20;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        v12 = sub_45B7C(ValueAtIndex);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v14 = v12;
        if (v9 >= v8)
        {
          v15 = v9 - v10;
          v16 = (v9 - v10) >> 3;
          v17 = v16 + 1;
          if ((v16 + 1) >> 61)
          {
            sub_189A00();
          }

          if ((v8 - v10) >> 2 > v17)
          {
            v17 = (v8 - v10) >> 2;
          }

          if (v8 - v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_1E2544(v18);
          }

          v19 = (8 * v16);
          v8 = 0;
          *v19 = v14;
          v9 = v19 + 1;
          memcpy(0, v10, v15);
          if (v10)
          {
            operator delete(v10);
          }

          v10 = 0;
        }

        else
        {
          *v9++ = v12;
        }

        if (v7 == ++v6)
        {
          goto LABEL_22;
        }
      }

      *a1 = 0;
      *(a1 + 24) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

void sub_120D4(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = sub_11E34(a2, __s);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t *sub_1215C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_45E90(result, a4);
  }

  return result;
}

void sub_121BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_121D8(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1E2544(a2);
    }

    sub_189A00();
  }
}

void sub_1227C(uint64_t a1, const void *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  Count = CFArrayGetCount(a2);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  sub_124B4(a1, Count);
  if (Count >= 1)
  {
    v6 = 0;
    v7 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
      sub_125D8(__p, ValueAtIndex);
      v10 = *(a1 + 8);
      v9 = *(a1 + 16);
      if (v10 >= v9)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_189A00();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v13;
        }

        v27[4] = a1;
        if (v15)
        {
          sub_1D8BB8(v15);
        }

        v16 = 24 * v12;
        v17 = *__p;
        *(v16 + 16) = v26;
        *v16 = v17;
        __p[1] = 0;
        v26 = 0;
        __p[0] = 0;
        v18 = 24 * v12 + 24;
        v19 = *(a1 + 8) - *a1;
        v20 = 24 * v12 - v19;
        memcpy((v16 - v19), *a1, v19);
        v21 = *a1;
        *a1 = v20;
        *(a1 + 8) = v18;
        v22 = *(a1 + 16);
        *(a1 + 16) = 0;
        v27[2] = v21;
        v27[3] = v22;
        v27[0] = v21;
        v27[1] = v21;
        sub_12574(v27);
        v23 = SHIBYTE(v26);
        *(a1 + 8) = v18;
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v11 = *__p;
        *(v10 + 16) = v26;
        *v10 = v11;
        *(a1 + 8) = v10 + 24;
      }

      ++v6;
    }

    while (v7 != v6);
  }
}

const void **sub_124B4(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_1D8BB8(a2);
    }

    sub_189A00();
  }

  return result;
}

uint64_t sub_12574(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_125D8(uint64_t a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  return sub_1267C(a1, a2);
}

void *sub_1267C(uint64_t a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {

    return sub_53E8(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(theString);
    maxBufLen = 0;
    v10.location = 0;
    v10.length = Length;
    CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    sub_1DAEC8(a1, maxBufLen, 0);
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v11.location = 0;
    v11.length = Length;
    return CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
  }
}

void sub_12774(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_12790(uint64_t a1)
{
  if (*a1)
  {
    sub_482B4(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

const void *sub_127D0(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_12884(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x12834);
}

void sub_128D4(uint64_t a1, char *a2)
{
  v4 = sub_5544(2);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        memset(&v228, 0, sizeof(v228));
        std::string::append(&v228, "[ ", 2uLL);
        if (*a2)
        {
          v7 = 1;
        }

        else
        {
          v7 = a2[1];
        }

        std::to_string(&v229, v7);
        v8 = std::string::insert(&v229, 0, "activating: ", 0xCuLL);
        v9 = *&v8->__r_.__value_.__l.__data_;
        v230.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&v230.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        v10 = std::string::append(&v230, "; ", 2uLL);
        v11 = *&v10->__r_.__value_.__l.__data_;
        v232 = v10->__r_.__value_.__r.__words[2];
        *__p = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        if (v232 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if (v232 >= 0)
        {
          v13 = HIBYTE(v232);
        }

        else
        {
          v13 = __p[1];
        }

        std::string::append(&v228, v12, v13);
        if (SHIBYTE(v232) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v230.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v229.__r_.__value_.__l.__data_);
        }

        std::to_string(&v229, a2[2]);
        v14 = std::string::insert(&v229, 0, "input IO: ", 0xAuLL);
        v15 = *&v14->__r_.__value_.__l.__data_;
        v230.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&v230.__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        v16 = std::string::append(&v230, "; ", 2uLL);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v232 = v16->__r_.__value_.__r.__words[2];
        *__p = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        if (v232 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if (v232 >= 0)
        {
          v19 = HIBYTE(v232);
        }

        else
        {
          v19 = __p[1];
        }

        std::string::append(&v228, v18, v19);
        if (SHIBYTE(v232) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v230.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v229.__r_.__value_.__l.__data_);
        }

        std::to_string(&v229, a2[3]);
        v20 = std::string::insert(&v229, 0, "output IO: ", 0xBuLL);
        v21 = *&v20->__r_.__value_.__l.__data_;
        v230.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&v230.__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        v22 = std::string::append(&v230, "; ", 2uLL);
        v23 = *&v22->__r_.__value_.__l.__data_;
        v232 = v22->__r_.__value_.__r.__words[2];
        *__p = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        if (v232 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        if (v232 >= 0)
        {
          v25 = HIBYTE(v232);
        }

        else
        {
          v25 = __p[1];
        }

        std::string::append(&v228, v24, v25);
        if (SHIBYTE(v232) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v230.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v229.__r_.__value_.__l.__data_);
        }

        std::string::append(&v228, "IDs: { ", 7uLL);
        __p[1] = 0;
        __p[0] = 0;
        v232 = 0;
        sub_1215C(__p, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
        v26 = __p[0];
        if (__p[1] != __p[0])
        {
          v27 = 0;
          v28 = (__p[1] - __p[0]) >> 3;
          v29 = v28 - 1;
          if (v28 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = (__p[1] - __p[0]) >> 3;
          }

          do
          {
            std::to_string(&v230, v26[v27]);
            if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v230;
            }

            else
            {
              v31 = v230.__r_.__value_.__r.__words[0];
            }

            if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v230.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v230.__r_.__value_.__l.__size_;
            }

            std::string::append(&v228, v31, size);
            if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v230.__r_.__value_.__l.__data_);
            }

            if (v27 < v29)
            {
              std::string::append(&v228, ", ", 2uLL);
            }

            ++v27;
          }

          while (v30 != v27);
        }

        std::string::append(&v228, " } ]", 4uLL);
        if (v26)
        {
          operator delete(v26);
        }

        v33 = &v228;
        if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = v228.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 8434;
        *&buf[18] = 2080;
        *&buf[20] = v33;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session info: %s", buf, 0x1Cu);
        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v34 = *(a1 + 144);
  v35 = *(a1 + 152);
  v36 = (a1 + 144);
  v183 = 0;
  v184 = 0;
  v182 = 0;
  sub_14DE0(&v182, v34, v35, (v35 - v34) >> 3);
  v185 = 0;
  v186 = 0;
  v187 = 0;
  memset(buf, 0, 24);
  sub_4817C(buf, *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  v37 = sub_483C4(*buf, *&buf[8], &v182);
  __p[0] = buf;
  sub_11C50(__p);
  v230.__r_.__value_.__r.__words[0] = v37;
  if (v37)
  {
    v38 = sub_5544(2);
    if (*(v38 + 8))
    {
      v39 = *v38;
      if (v39)
      {
        v40 = v39;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          sub_48540(__p, *(v37 + 400));
          v41 = v232 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1613;
          *&buf[18] = 2080;
          *&buf[20] = v41;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found input VAD: %s", buf, 0x1Cu);
          if (SHIBYTE(v232) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    sub_5318(&v185, &v230);
  }

  memset(buf, 0, 24);
  sub_4817C(buf, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  v42 = sub_483C4(*buf, *&buf[8], &v182);
  __p[0] = buf;
  sub_11C50(__p);
  v229.__r_.__value_.__r.__words[0] = v42;
  if (v42 && v37 != v42)
  {
    v43 = sub_5544(2);
    if (*(v43 + 8))
    {
      v44 = *v43;
      if (v44)
      {
        v45 = v44;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          sub_48540(__p, *(v42 + 400));
          v46 = v232 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1620;
          *&buf[18] = 2080;
          *&buf[20] = v46;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found output VAD: %s", buf, 0x1Cu);
          if (SHIBYTE(v232) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    sub_5318(&v185, &v229);
  }

  if (v185 == v186)
  {
    v48 = sub_5544(2);
    if (*(v48 + 8))
    {
      v49 = *v48;
      if (v49)
      {
        v50 = v49;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1639;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d No VAD found for session, using default VAD", buf, 0x12u);
        }
      }
    }

    v47 = v182;
    __p[0] = sub_758D4(1986291046, 0, v182, v183);
    if (!__p[0])
    {
      v171 = sub_5544(14);
      v172 = sub_468EC(1, *v171, *(v171 + 8));
      v173 = v172;
      if (v172 && os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1641;
        _os_log_impl(&dword_0, v173, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [defaultVAD is NULL]: No default VAD", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "No default VAD");
    }

    sub_5318(&v185, __p);
  }

  else
  {
    v47 = v182;
  }

  v178 = a1;
  v180 = a2;
  if (v47)
  {
    v183 = v47;
    operator delete(v47);
  }

  v51 = v185;
  v52 = v186;
  while (v51 != v52)
  {
    v53 = *(*v51 + 872);
    memset(buf, 0, 24);
    sub_1215C(buf, *(v53 + 144), *(v53 + 152), (*(v53 + 152) - *(v53 + 144)) >> 3);
    __p[1] = 0;
    __p[0] = 0;
    v232 = 0;
    sub_1215C(__p, *(v180 + 7), *(v180 + 8), (*(v180 + 8) - *(v180 + 7)) >> 3);
    v54 = *buf;
    v55 = *&buf[8];
    std::__sort<std::__less<long long,long long> &,long long *>();
    v56 = __p[0];
    v57 = __p[1];
    std::__sort<std::__less<long long,long long> &,long long *>();
    if ((*v180 & 1) == 0 && v180[1] != 1)
    {
      memset(&v230, 0, sizeof(v230));
      v229.__r_.__value_.__r.__words[0] = v54;
      v228.__r_.__value_.__r.__words[0] = v56;
      v227.__r_.__value_.__r.__words[0] = 0;
      if (v54 == v55)
      {
        goto LABEL_117;
      }

      while (2)
      {
        if (v56 == v57)
        {
          v65 = v227.__r_.__value_.__r.__words[0];
          do
          {
            v65 = sub_A2FEC(&v230, v65, v54) + 8;
            v54 += 8;
          }

          while (v54 != v55);
          goto LABEL_117;
        }

        if (*v54 < *v56)
        {
          v62 = sub_A2FEC(&v230, v227.__r_.__value_.__l.__data_, v54);
          v63 = &v229;
          v64 = &v227;
          v56 = v54;
          v54 = v62;
          goto LABEL_130;
        }

        v63 = &v228;
        if (*v56 >= *v54)
        {
          v64 = &v229;
LABEL_130:
          v64->__r_.__value_.__r.__words[0] = (v54 + 8);
        }

        v63->__r_.__value_.__r.__words[0] = (v56 + 8);
        v54 = v229.__r_.__value_.__r.__words[0];
        if (v229.__r_.__value_.__l.__data_ == v55)
        {
          goto LABEL_117;
        }

        v56 = v228.__r_.__value_.__r.__words[0];
        continue;
      }
    }

    memset(&v230, 0, sizeof(v230));
    if (v54 == v55)
    {
      v58 = 0;
LABEL_116:
      while (v56 != v57)
      {
        v58 = sub_A2FEC(&v230, v58, v56) + 8;
        v56 += 8;
      }
    }

    else
    {
      v58 = 0;
      while (v56 != v57)
      {
        v59 = *v56;
        v60 = *v54;
        if (*v56 >= *v54)
        {
          v61 = sub_A2FEC(&v230, v58, v54);
          v56 += 8 * (v60 >= v59);
          v54 += 8;
        }

        else
        {
          v61 = sub_A2FEC(&v230, v58, v56);
          v56 += 8;
        }

        v58 = v61 + 8;
        if (v54 == v55)
        {
          goto LABEL_116;
        }
      }

      while (v54 != v55)
      {
        v58 = sub_A2FEC(&v230, v58, v54) + 8;
        v54 += 8;
      }
    }

LABEL_117:
    (*(*v53 + 528))(v53, &v230);
    if (v230.__r_.__value_.__r.__words[0])
    {
      v230.__r_.__value_.__l.__size_ = v230.__r_.__value_.__r.__words[0];
      operator delete(v230.__r_.__value_.__l.__data_);
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (*buf)
    {
      operator delete(*buf);
    }

    v51 += 8;
  }

  if (v180[1])
  {
    memset(buf, 0, 24);
    sub_4817C(buf, *(v180 + 4), *(v180 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(v180 + 5) - *(v180 + 4)) >> 3));
    v66 = sub_483C4(*buf, *&buf[8], v36);
    if (v66)
    {
      __p[0] = buf;
      sub_11C50(__p);
    }

    else
    {
      v66 = sub_758D4(1986291046, 0, *(v178 + 144), *(v178 + 152));
      __p[0] = buf;
      sub_11C50(__p);
      if (!v66)
      {
        v167 = sub_5544(14);
        v168 = sub_468EC(1, *v167, *(v167 + 8));
        v169 = v168;
        if (v168 && os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 8455;
          _os_log_impl(&dword_0, v169, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [outputVAD is NULL]: No output VAD", buf, 0x12u);
        }

        v170 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v170, "No output VAD");
      }
    }

    v216 = *v180;
    sub_A7D38(buf, aGoingActive, &v216);
    v215 = v180[1];
    sub_A7D38(&buf[16], aStayingActive, &v215);
    sub_22170(v212, *(v178 + 224));
    if ((v213 & 0x80u) == 0)
    {
      v67 = v212;
    }

    else
    {
      v67 = v212[0];
    }

    if (v67)
    {
      if ((v213 & 0x80u) == 0)
      {
        v68 = v213;
      }

      else
      {
        v68 = v212[1];
      }

      cf = CFStringCreateWithBytes(0, v67, v68, 0x8000100u, 0);
      if (!cf)
      {
        v69 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v69, "Could not construct");
      }
    }

    else
    {
      cf = 0;
    }

    sub_88CE8(v234, "category");
    v70 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v234[1] = v70;
    sub_22170(v209, *(v178 + 228));
    if ((v210 & 0x80u) == 0)
    {
      v71 = v209;
    }

    else
    {
      v71 = v209[0];
    }

    if (v71)
    {
      if ((v210 & 0x80u) == 0)
      {
        v72 = v210;
      }

      else
      {
        v72 = v209[1];
      }

      v211 = CFStringCreateWithBytes(0, v71, v72, 0x8000100u, 0);
      if (!v211)
      {
        v73 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v73, "Could not construct");
      }
    }

    else
    {
      v211 = 0;
    }

    sub_88CE8(v235, "mode");
    v74 = v211;
    if (v211)
    {
      CFRetain(v211);
    }

    v235[1] = v74;
    sub_A7E20(&v207, (v178 + 448), *(v178 + 228));
    if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v207;
    }

    else
    {
      v75 = v207.__r_.__value_.__r.__words[0];
    }

    if (v75)
    {
      if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = v207.__r_.__value_.__l.__size_;
      }

      v208 = CFStringCreateWithBytes(0, v75, v76, 0x8000100u, 0);
      if (!v208)
      {
        v77 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v77, "Could not construct");
      }
    }

    else
    {
      v208 = 0;
    }

    sub_88CE8(v236, "active devices");
    v78 = v208;
    if (v208)
    {
      CFRetain(v208);
    }

    v236[1] = v78;
    sub_AEEB4(v202, *(v178 + 120));
    sub_88BA4(v203, v202);
    sub_A84F4(&v205, (v178 + 448), v203);
    if ((v205.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &v205;
    }

    else
    {
      v79 = v205.__r_.__value_.__r.__words[0];
    }

    if (v79)
    {
      if ((v205.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = HIBYTE(v205.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v80 = v205.__r_.__value_.__l.__size_;
      }

      v206 = CFStringCreateWithBytes(0, v79, v80, 0x8000100u, 0);
      if (!v206)
      {
        v81 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v81, "Could not construct");
      }
    }

    else
    {
      v206 = 0;
    }

    sub_88CE8(v237, "active on demand devices");
    v82 = v206;
    if (v206)
    {
      CFRetain(v206);
    }

    v237[1] = v82;
    v83 = *(v180 + 1);
    sub_88CE8(&v238, "session app state");
    LODWORD(__p[0]) = v83;
    if (!CFNumberCreate(0, kCFNumberIntType, __p))
    {
      v175 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v175, "Could not construct");
    }

    v84 = v180[2];
    sub_88CE8(v240, "session input running");
    if (v84)
    {
      v85 = kCFBooleanTrue;
    }

    else
    {
      v85 = kCFBooleanFalse;
    }

    v240[1] = v85;
    v86 = v180[3];
    sub_88CE8(v241, "session output running");
    if (v86)
    {
      v87 = kCFBooleanTrue;
    }

    else
    {
      v87 = kCFBooleanFalse;
    }

    v241[1] = v87;
    LODWORD(__p[0]) = *(v178 + 472) != 0;
    v201 = CFNumberCreate(0, kCFNumberIntType, __p);
    if (!v201)
    {
      v176 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v176, "Could not construct");
    }

    sub_88CE8(v242, "expanse session");
    v88 = v201;
    if (v201)
    {
      CFRetain(v201);
    }

    v242[1] = v88;
    v89 = sub_8703C();
    v90 = (*(*v89 + 8))(v89);
    if (v90 > 7)
    {
      v91 = "unknown";
    }

    else
    {
      v91 = off_6BD200[v90];
    }

    sub_53E8(v198, v91);
    if ((v199 & 0x80u) == 0)
    {
      v92 = v198;
    }

    else
    {
      v92 = v198[0];
    }

    if (v92)
    {
      if ((v199 & 0x80u) == 0)
      {
        v93 = v199;
      }

      else
      {
        v93 = v198[1];
      }

      v200 = CFStringCreateWithBytes(0, v92, v93, 0x8000100u, 0);
      if (!v200)
      {
        v94 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v94, "Could not construct");
      }
    }

    else
    {
      v200 = 0;
    }

    sub_88CE8(v243, "session user pref");
    v95 = v200;
    if (v200)
    {
      CFRetain(v200);
    }

    v243[1] = v95;
    v96 = *(v66 + 872);
    if (v96)
    {
      (*(*v96 + 536))(&v193);
    }

    else
    {
      v193 = 0;
      v194 = 0;
      v195 = 0;
    }

    sub_53E8(&v196, "{ ");
    v97 = v193;
    v177 = v194;
    if (v193 != v194)
    {
      v98 = 0;
      do
      {
        if (v98)
        {
          std::string::append(&v196, ", ", 2uLL);
        }

        std::string::append(&v196, "{ ", 2uLL);
        v179 = v97;
        v99 = *v97;
        v100 = v97[1];
        if (v99 != v100)
        {
          v101 = 0;
          do
          {
            if (v101)
            {
              std::string::append(&v196, ", ", 2uLL);
            }

            std::to_string(&v223, *(v99 + 32));
            v102 = std::string::insert(&v223, 0, "[ ", 2uLL);
            v103 = *&v102->__r_.__value_.__l.__data_;
            v224.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
            *&v224.__r_.__value_.__l.__data_ = v103;
            v102->__r_.__value_.__l.__size_ = 0;
            v102->__r_.__value_.__r.__words[2] = 0;
            v102->__r_.__value_.__r.__words[0] = 0;
            v104 = std::string::append(&v224, "/", 1uLL);
            v105 = *&v104->__r_.__value_.__l.__data_;
            v225.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
            *&v225.__r_.__value_.__l.__data_ = v105;
            v104->__r_.__value_.__l.__size_ = 0;
            v104->__r_.__value_.__r.__words[2] = 0;
            v104->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v222, *v99);
            if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v106 = &v222;
            }

            else
            {
              v106 = v222.__r_.__value_.__r.__words[0];
            }

            if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v107 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v107 = v222.__r_.__value_.__l.__size_;
            }

            v108 = std::string::append(&v225, v106, v107);
            v109 = *&v108->__r_.__value_.__l.__data_;
            v226.__r_.__value_.__r.__words[2] = v108->__r_.__value_.__r.__words[2];
            *&v226.__r_.__value_.__l.__data_ = v109;
            v108->__r_.__value_.__l.__size_ = 0;
            v108->__r_.__value_.__r.__words[2] = 0;
            v108->__r_.__value_.__r.__words[0] = 0;
            v110 = std::string::append(&v226, "/", 1uLL);
            v111 = *&v110->__r_.__value_.__l.__data_;
            v227.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
            *&v227.__r_.__value_.__l.__data_ = v111;
            v110->__r_.__value_.__l.__size_ = 0;
            v110->__r_.__value_.__r.__words[2] = 0;
            v110->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v221, *(v99 + 28));
            if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v112 = &v221;
            }

            else
            {
              v112 = v221.__r_.__value_.__r.__words[0];
            }

            if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v113 = HIBYTE(v221.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v113 = v221.__r_.__value_.__l.__size_;
            }

            v114 = std::string::append(&v227, v112, v113);
            v115 = *&v114->__r_.__value_.__l.__data_;
            v228.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
            *&v228.__r_.__value_.__l.__data_ = v115;
            v114->__r_.__value_.__l.__size_ = 0;
            v114->__r_.__value_.__r.__words[2] = 0;
            v114->__r_.__value_.__r.__words[0] = 0;
            v116 = std::string::append(&v228, " ", 1uLL);
            v117 = *&v116->__r_.__value_.__l.__data_;
            v229.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
            *&v229.__r_.__value_.__l.__data_ = v117;
            v116->__r_.__value_.__l.__size_ = 0;
            v116->__r_.__value_.__r.__words[2] = 0;
            v116->__r_.__value_.__r.__words[0] = 0;
            sub_22170(&v218, *(v99 + 8));
            if ((v220 & 0x80u) == 0)
            {
              v118 = &v218;
            }

            else
            {
              v118 = v218;
            }

            if ((v220 & 0x80u) == 0)
            {
              v119 = v220;
            }

            else
            {
              v119 = v219;
            }

            v120 = std::string::append(&v229, v118, v119);
            v121 = *&v120->__r_.__value_.__l.__data_;
            v230.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
            *&v230.__r_.__value_.__l.__data_ = v121;
            v120->__r_.__value_.__l.__size_ = 0;
            v120->__r_.__value_.__r.__words[2] = 0;
            v120->__r_.__value_.__r.__words[0] = 0;
            v122 = std::string::append(&v230, " ]", 2uLL);
            v123 = *&v122->__r_.__value_.__l.__data_;
            v232 = v122->__r_.__value_.__r.__words[2];
            *__p = v123;
            v122->__r_.__value_.__l.__size_ = 0;
            v122->__r_.__value_.__r.__words[2] = 0;
            v122->__r_.__value_.__r.__words[0] = 0;
            if (v232 >= 0)
            {
              v124 = __p;
            }

            else
            {
              v124 = __p[0];
            }

            if (v232 >= 0)
            {
              v125 = HIBYTE(v232);
            }

            else
            {
              v125 = __p[1];
            }

            std::string::append(&v196, v124, v125);
            if (SHIBYTE(v232) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v230.__r_.__value_.__l.__data_);
            }

            if (v220 < 0)
            {
              operator delete(v218);
            }

            if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v229.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v228.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v221.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v227.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v226.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v222.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v225.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v224.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v223.__r_.__value_.__l.__data_);
            }

            v99 += 40;
            v101 = 1;
          }

          while (v99 != v100);
        }

        std::string::append(&v196, " }", 2uLL);
        v97 = v179 + 3;
        v98 = 1;
      }

      while (v179 + 3 != v177);
    }

    std::string::append(&v196, " }", 2uLL);
    if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v126 = &v196;
    }

    else
    {
      v126 = v196.__r_.__value_.__r.__words[0];
    }

    if (v126)
    {
      if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v127 = HIBYTE(v196.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v127 = v196.__r_.__value_.__l.__size_;
      }

      v197 = CFStringCreateWithBytes(0, v126, v127, 0x8000100u, 0);
      if (!v197)
      {
        v128 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v128, "Could not construct");
      }
    }

    else
    {
      v197 = 0;
    }

    sub_88CE8(v244, "session available formats");
    v129 = v197;
    if (v197)
    {
      CFRetain(v197);
    }

    v244[1] = v129;
    v130 = *(v66 + 872);
    if (v130)
    {
      (*(*v130 + 544))(&v188);
    }

    else
    {
      v188 = 0;
      v189 = 0;
      v190 = 0;
    }

    sub_53E8(&v191, "{ ");
    v131 = v188;
    v132 = v189;
    if (v188 != v189)
    {
      v133 = 0;
      do
      {
        if (v133)
        {
          std::string::append(&v191, ", ", 2uLL);
        }

        std::to_string(&v223, *(v131 + 8));
        v134 = std::string::insert(&v223, 0, "[ ", 2uLL);
        v135 = *&v134->__r_.__value_.__l.__data_;
        v224.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
        *&v224.__r_.__value_.__l.__data_ = v135;
        v134->__r_.__value_.__l.__size_ = 0;
        v134->__r_.__value_.__r.__words[2] = 0;
        v134->__r_.__value_.__r.__words[0] = 0;
        v136 = std::string::append(&v224, "/", 1uLL);
        v137 = *&v136->__r_.__value_.__l.__data_;
        v225.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
        *&v225.__r_.__value_.__l.__data_ = v137;
        v136->__r_.__value_.__l.__size_ = 0;
        v136->__r_.__value_.__r.__words[2] = 0;
        v136->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v222, *v131);
        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v138 = &v222;
        }

        else
        {
          v138 = v222.__r_.__value_.__r.__words[0];
        }

        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v139 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v139 = v222.__r_.__value_.__l.__size_;
        }

        v140 = std::string::append(&v225, v138, v139);
        v141 = *&v140->__r_.__value_.__l.__data_;
        v226.__r_.__value_.__r.__words[2] = v140->__r_.__value_.__r.__words[2];
        *&v226.__r_.__value_.__l.__data_ = v141;
        v140->__r_.__value_.__l.__size_ = 0;
        v140->__r_.__value_.__r.__words[2] = 0;
        v140->__r_.__value_.__r.__words[0] = 0;
        v142 = std::string::append(&v226, "/", 1uLL);
        v143 = *&v142->__r_.__value_.__l.__data_;
        v227.__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
        *&v227.__r_.__value_.__l.__data_ = v143;
        v142->__r_.__value_.__l.__size_ = 0;
        v142->__r_.__value_.__r.__words[2] = 0;
        v142->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v221, *(v131 + 7));
        if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v144 = &v221;
        }

        else
        {
          v144 = v221.__r_.__value_.__r.__words[0];
        }

        if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v145 = HIBYTE(v221.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v145 = v221.__r_.__value_.__l.__size_;
        }

        v146 = std::string::append(&v227, v144, v145);
        v147 = *&v146->__r_.__value_.__l.__data_;
        v228.__r_.__value_.__r.__words[2] = v146->__r_.__value_.__r.__words[2];
        *&v228.__r_.__value_.__l.__data_ = v147;
        v146->__r_.__value_.__l.__size_ = 0;
        v146->__r_.__value_.__r.__words[2] = 0;
        v146->__r_.__value_.__r.__words[0] = 0;
        v148 = std::string::append(&v228, " ", 1uLL);
        v149 = *&v148->__r_.__value_.__l.__data_;
        v229.__r_.__value_.__r.__words[2] = v148->__r_.__value_.__r.__words[2];
        *&v229.__r_.__value_.__l.__data_ = v149;
        v148->__r_.__value_.__l.__size_ = 0;
        v148->__r_.__value_.__r.__words[2] = 0;
        v148->__r_.__value_.__r.__words[0] = 0;
        sub_22170(&v218, *(v131 + 2));
        if ((v220 & 0x80u) == 0)
        {
          v150 = &v218;
        }

        else
        {
          v150 = v218;
        }

        if ((v220 & 0x80u) == 0)
        {
          v151 = v220;
        }

        else
        {
          v151 = v219;
        }

        v152 = std::string::append(&v229, v150, v151);
        v153 = *&v152->__r_.__value_.__l.__data_;
        v230.__r_.__value_.__r.__words[2] = v152->__r_.__value_.__r.__words[2];
        *&v230.__r_.__value_.__l.__data_ = v153;
        v152->__r_.__value_.__l.__size_ = 0;
        v152->__r_.__value_.__r.__words[2] = 0;
        v152->__r_.__value_.__r.__words[0] = 0;
        v154 = std::string::append(&v230, " ]", 2uLL);
        v155 = *&v154->__r_.__value_.__l.__data_;
        v232 = v154->__r_.__value_.__r.__words[2];
        *__p = v155;
        v154->__r_.__value_.__l.__size_ = 0;
        v154->__r_.__value_.__r.__words[2] = 0;
        v154->__r_.__value_.__r.__words[0] = 0;
        if (v232 >= 0)
        {
          v156 = __p;
        }

        else
        {
          v156 = __p[0];
        }

        if (v232 >= 0)
        {
          v157 = HIBYTE(v232);
        }

        else
        {
          v157 = __p[1];
        }

        std::string::append(&v191, v156, v157);
        if (SHIBYTE(v232) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v230.__r_.__value_.__l.__data_);
        }

        if (v220 < 0)
        {
          operator delete(v218);
        }

        if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v229.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v221.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v226.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v224.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v223.__r_.__value_.__l.__data_);
        }

        v131 += 5;
        v133 = 1;
      }

      while (v131 != v132);
    }

    std::string::append(&v191, " }", 2uLL);
    if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v158 = &v191;
    }

    else
    {
      v158 = v191.__r_.__value_.__r.__words[0];
    }

    if (v158)
    {
      if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v159 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v159 = v191.__r_.__value_.__l.__size_;
      }

      v192 = CFStringCreateWithBytes(0, v158, v159, 0x8000100u, 0);
      if (!v192)
      {
        v160 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v160, "Could not construct");
      }
    }

    else
    {
      v192 = 0;
    }

    sub_88CE8(&v245, "session selected format");
    v161 = v192;
    if (v192)
    {
      CFRetain(v192);
    }

    v246[0] = v161;
    v217[0] = buf;
    v217[1] = 13;
    v162 = sub_69CE8(v217);
    v163 = 0;
    v181[1] = v162;
    do
    {
      v164 = v246[v163];
      if (v164)
      {
        CFRelease(v164);
      }

      v165 = v246[v163 - 1];
      if (v165)
      {
        CFRelease(v165);
      }

      v163 -= 2;
    }

    while (v163 != -26);
    if (v192)
    {
      CFRelease(v192);
    }

    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v191.__r_.__value_.__l.__data_);
    }

    if (v188)
    {
      v189 = v188;
      operator delete(v188);
    }

    if (v197)
    {
      CFRelease(v197);
    }

    if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v196.__r_.__value_.__l.__data_);
    }

    __p[0] = &v193;
    sub_A9CA4(__p);
    if (v200)
    {
      CFRelease(v200);
    }

    if (v199 < 0)
    {
      operator delete(v198[0]);
    }

    if (v201)
    {
      CFRelease(v201);
    }

    if (v206)
    {
      CFRelease(v206);
    }

    if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v205.__r_.__value_.__l.__data_);
    }

    sub_7624C(v204);
    sub_76304(v202);
    if (v208)
    {
      CFRelease(v208);
    }

    if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v207.__r_.__value_.__l.__data_);
    }

    if (v211)
    {
      CFRelease(v211);
    }

    if (v210 < 0)
    {
      operator delete(v209[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v213 < 0)
    {
      operator delete(v212[0]);
      if (!v162)
      {
LABEL_395:
        v181[0] = v162;
        memset(buf, 0, 24);
        sub_1215C(buf, *(v180 + 7), *(v180 + 8), (*(v180 + 8) - *(v180 + 7)) >> 3);
        v166 = *buf;
        sub_A9D34(v181, *buf, *&buf[8], 8, 0);
        if (v166)
        {
          operator delete(v166);
        }

        if (v162)
        {
          CFRelease(v162);
          CFRelease(v162);
        }

        goto LABEL_399;
      }
    }

    else if (!v162)
    {
      goto LABEL_395;
    }

    CFRetain(v162);
    goto LABEL_395;
  }

LABEL_399:
  if (v185)
  {
    operator delete(v185);
  }
}

void sub_14548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_14DE0(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      sub_1DC9A4(a4);
    }

    sub_189A00();
  }
}

void sub_14E5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_14E78(uint64_t a1, int *a2, int *a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *a2;
  if (*a2 > 1919774834)
  {
    if (v5 > 1986098019)
    {
      v6 = v5 == 1986098020 || v5 == 1986817377;
      v7 = 1986229104;
    }

    else
    {
      v6 = v5 == 1919774835 || v5 == 1936878960;
      v7 = 1937208929;
    }
  }

  else if (v5 > 1684633186)
  {
    v6 = v5 == 1684633187 || v5 == 1836478308;
    v7 = 1918987632;
  }

  else
  {
    v6 = v5 == 1064725619 || v5 == 1668443504;
    v7 = 1668705648;
  }

  if (v6 || v5 == v7)
  {
    *a3 = 1986817381;
    *a4 = a2[1];
    *a5 = a2[2];
  }

  else
  {
    sub_14F64(a1, a2, a3, a4, a5);
  }
}

void sub_14F64(uint64_t a1, int *a2, int *a3, _DWORD *a4, _DWORD *a5)
{
  *a4 = a2[1];
  *a5 = a2[2];
  v5 = *a2;
  if (*a2 > 1852601890)
  {
    if (v5 <= 1937125987)
    {
      if (v5 > 1936682094)
      {
        if (v5 <= 1936748066)
        {
          if (v5 == 1936682095)
          {
            goto LABEL_72;
          }

          if (v5 != 1936744814)
          {
            return;
          }
        }

        else if (v5 != 1936748067)
        {
          if (v5 == 1936941859 || v5 == 1936945763)
          {
LABEL_26:
            v5 = 1685287523;
LABEL_72:
            *a3 = v5;
            return;
          }

          return;
        }

        v5 = 1936744814;
        goto LABEL_72;
      }

      if (v5 <= 1935946357)
      {
        if (v5 == 1852601891)
        {
LABEL_51:
          v5 = 1852601964;
          goto LABEL_72;
        }

        v9 = 1852601964;
LABEL_50:
        if (v5 != v9)
        {
          return;
        }

        goto LABEL_51;
      }

      if (v5 != 1935946358)
      {
        if (v5 != 1936553332)
        {
          return;
        }

        v5 = 1937072749;
        goto LABEL_72;
      }
    }

    else
    {
      if (v5 > 1953002100)
      {
        if (v5 <= 1986290210)
        {
          if (v5 == 1953002101)
          {
            *a4 = 1886679669;
            v5 = 1836414053;
            goto LABEL_72;
          }

          v8 = 1983013986;
        }

        else
        {
          if (v5 == 1986290211 || v5 == 1987013741)
          {
LABEL_69:
            v5 = 1986817381;
            goto LABEL_72;
          }

          v8 = 1987013732;
        }

LABEL_68:
        if (v5 != v8)
        {
          return;
        }

        goto LABEL_69;
      }

      if (v5 <= 1937140835)
      {
        if (v5 != 1937125988 && v5 != 1937138723)
        {
          return;
        }
      }

      else if (v5 != 1937140836 && v5 != 1937140845)
      {
        if (v5 != 1953002099)
        {
          return;
        }

        *a4 = 1886679669;
        v5 = 1936682095;
        goto LABEL_72;
      }
    }

    v5 = 1937072758;
    goto LABEL_72;
  }

  if (v5 > 1835295842)
  {
    if (v5 <= 1836462691)
    {
      if (v5 > 1836281890)
      {
        if (v5 != 1836281891 && v5 != 1836281966)
        {
          if (v5 != 1836414053)
          {
            return;
          }

          goto LABEL_72;
        }

        v5 = 1936744814;
        goto LABEL_71;
      }

      if (v5 == 1835295843)
      {
        goto LABEL_58;
      }

      v6 = 25715;
LABEL_57:
      if (v5 != (v6 | 0x6D640000))
      {
        return;
      }

LABEL_58:
      *a4 = 1886679669;
      v5 = 1684370292;
      goto LABEL_72;
    }

    if (v5 <= 1836475426)
    {
      if (v5 != 1836462692)
      {
        v7 = 12915;
LABEL_64:
        if (v5 != (v7 | 0x6D760000))
        {
          return;
        }
      }
    }

    else if (v5 != 1836475427 && v5 != 1836475490)
    {
      v7 = 29539;
      goto LABEL_64;
    }

    v5 = 1986817381;
LABEL_71:
    *a4 = 1886679669;
    goto LABEL_72;
  }

  if (v5 > 1784767338)
  {
    if (v5 > 1818456941)
    {
      if (v5 != 1818456942)
      {
        if (v5 != 1819501422)
        {
          v6 = 25635;
          goto LABEL_57;
        }

        goto LABEL_26;
      }

LABEL_44:
      v5 = 1668047723;
      goto LABEL_72;
    }

    if (v5 == 1784767339)
    {
      goto LABEL_72;
    }

    v9 = 1818455660;
    goto LABEL_50;
  }

  if (v5 > 1668510306)
  {
    if (v5 == 1668510307)
    {
      goto LABEL_44;
    }

    v8 = 1684157046;
    goto LABEL_68;
  }

  if (v5 == 1668506403 || v5 == 1668506475)
  {
    goto LABEL_44;
  }
}

uint64_t sub_1537C(uint64_t a1, _DWORD *a2)
{
  for (i = *(a1 + 56); i != *(a1 + 64); i += 24)
  {
    if (sub_15414(i, a2) && (*(**(i + 16) + 16))(*(i + 16), a2))
    {
      result = *(i + 16);
    }

    else
    {
      result = 0;
    }

    if (result)
    {
      return result;
    }
  }

  return 0;
}

BOOL sub_15414(int *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 != 707406378 && v2 != 707406378 && v2 != v3)
  {
    return 0;
  }

  v6 = *a1;
  v7 = *a2 == 707406378 || v6 == 707406378;
  if (!v7 && v6 != *a2)
  {
    return 0;
  }

  v9 = a1[2];
  v10 = a2[2];
  return v9 == -1 || v9 == v10 || v10 == -1;
}

uint64_t sub_154BC(void *a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0;
  (*(*a1 + 704))(a1, a2, &v14 + 4, &v14, &v13);
  for (i = a1[41]; i != a1[42]; ++i)
  {
    v4 = *i;
    v5 = *(*i + 12);
    v6 = (*(**i + 144))(*i);
    v7 = (*(*v4 + 152))(v4);
    if (HIDWORD(v14) == 1668047723 && v13 == 0)
    {
      if (v5 == 1668047723 && v7 == 0)
      {
        return v4;
      }
    }

    else if (v5 == HIDWORD(v14) && v6 == v14 && v7 == v13)
    {
      return v4;
    }
  }

  return 0;
}

BOOL sub_15614(uint64_t a1, int *a2)
{
  if (*a2 != 1651798132)
  {
    sub_27A4();
    v36 = (*(qword_6E94F8 + 16))();
    v6 = *a2;
    v4 = 1;
    if (*a2 > 1702248803)
    {
      if (v6 <= 1920165218)
      {
        if (v6 > 1853059699)
        {
          if (v6 > 1886413411)
          {
            if (v6 <= 1902539641)
            {
              if (v6 <= 1886807138)
              {
                if (v6 != 1886413412)
                {
                  v7 = 1886413426;
                  goto LABEL_182;
                }

LABEL_183:
                v28 = (**(a1 + 872) + 16);
LABEL_184:
                v27 = (*v28)();
                goto LABEL_185;
              }

              if (v6 == 1886807139)
              {
                goto LABEL_183;
              }

              v7 = 1886807154;
LABEL_182:
              if (v6 == v7)
              {
                goto LABEL_183;
              }

LABEL_208:
              v27 = sub_1B80C(a1, a2);
              goto LABEL_185;
            }

            if (v6 <= 1919773027)
            {
              if (v6 != 1902539642)
              {
                v16 = 1918987632;
                goto LABEL_192;
              }

LABEL_186:
              sub_210C50(&v36);
              return v4;
            }

            if (v6 == 1919773028)
            {
              goto LABEL_186;
            }

            v16 = 1919774835;
LABEL_192:
            if (v6 != v16)
            {
              goto LABEL_208;
            }

            goto LABEL_193;
          }

          if (v6 <= 1869838182)
          {
            if (v6 != 1853059700)
            {
              if (v6 == 1869574756)
              {
                goto LABEL_183;
              }

              v7 = 1869575794;
              goto LABEL_182;
            }

            goto LABEL_186;
          }

          if (v6 <= 1885631345)
          {
            if (v6 != 1869838183)
            {
              v7 = 1885434482;
              goto LABEL_182;
            }

            goto LABEL_186;
          }

          if (v6 == 1885631346)
          {
            goto LABEL_183;
          }

          v13 = 1886216547;
          goto LABEL_171;
        }

        if (v6 > 1769302371)
        {
          if (v6 <= 1836348004)
          {
            if (v6 == 1769302372 || v6 == 1818326127)
            {
              goto LABEL_183;
            }

            v7 = 1835888484;
            goto LABEL_182;
          }

          if (v6 > 1852729710)
          {
            if (v6 == 1852729711)
            {
              goto LABEL_186;
            }

            v13 = 1853059619;
          }

          else
          {
            if (v6 == 1836348005)
            {
              goto LABEL_183;
            }

            v13 = 1852012899;
          }

          goto LABEL_171;
        }

        if (v6 <= 1718641516)
        {
          if (v6 == 1702248804 || v6 == 1702392685)
          {
            goto LABEL_183;
          }

          v13 = 1718383987;
          goto LABEL_171;
        }

        if (v6 <= 1735682403)
        {
          if (v6 != 1718641517)
          {
            if (v6 != 1719165555)
            {
              goto LABEL_208;
            }

            v4 = ((*(**(a1 + 872) + 560))(*(a1 + 872), a2[1]) >> 32) & 1;
          }

          goto LABEL_186;
        }

        if (v6 == 1735682404)
        {
          goto LABEL_186;
        }

        if (v6 != 1752657012)
        {
          goto LABEL_208;
        }

        goto LABEL_139;
      }

      if (v6 > 1953002353)
      {
        if (v6 <= 1986098019)
        {
          if (v6 <= 1969844081)
          {
            if (v6 == 1953002354 || v6 == 1953719148)
            {
              goto LABEL_183;
            }

            v13 = 1969318244;
          }

          else
          {
            if (v6 > 1983996970)
            {
              if (v6 == 1983996971)
              {
                goto LABEL_183;
              }

              v7 = 1983997011;
              goto LABEL_182;
            }

            if (v6 == 1969844082)
            {
              goto LABEL_183;
            }

            v13 = 1970303087;
          }

          goto LABEL_171;
        }

        if (v6 <= 1986294895)
        {
          if (v6 > 1986225267)
          {
            if (v6 == 1986225268)
            {
              goto LABEL_183;
            }

            v16 = 1986225518;
            goto LABEL_192;
          }

          if (v6 != 1986098020)
          {
            v7 = 1986225266;
            goto LABEL_182;
          }

LABEL_193:
          v30 = *(a1 + 792);
          if (!v30)
          {
            v31 = sub_5544(14);
            v32 = *v31;
            if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *v38 = "VirtualAudio_Device.cpp";
              *&v38[8] = 1024;
              *&v38[10] = 2090;
              _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Precondition failure.");
          }

          v28 = (*v30 + 48);
          goto LABEL_184;
        }

        if (v6 <= 2020111982)
        {
          if (v6 != 1986294896)
          {
            v7 = 1986361444;
            goto LABEL_182;
          }

          goto LABEL_186;
        }

        if (v6 != 2020111983 && v6 != 2021027692)
        {
          goto LABEL_208;
        }

        v18 = a2[1];
        v19 = 1869968496;
LABEL_198:
        v21 = v18 == v19;
LABEL_199:
        v4 = v21;
        goto LABEL_186;
      }

      if (v6 > 1936879203)
      {
        if (v6 > 1937208928)
        {
          if (v6 > 1952998001)
          {
            if (v6 == 1952998002)
            {
              goto LABEL_183;
            }

            v14 = 29293;
          }

          else
          {
            if (v6 == 1937208929)
            {
              goto LABEL_193;
            }

            v14 = 25188;
          }

          v7 = v14 | 0x74680000;
          goto LABEL_182;
        }

        if (v6 == 1936879204)
        {
          goto LABEL_183;
        }

        if (v6 != 1936946787)
        {
          v7 = 1937138532;
          goto LABEL_182;
        }

        goto LABEL_186;
      }

      if (v6 <= 1936744802)
      {
        if (v6 != 1920165219)
        {
          if (v6 == 1935762281)
          {
            goto LABEL_183;
          }

          v7 = 1935962992;
          goto LABEL_182;
        }

        goto LABEL_186;
      }

      if (v6 > 1936876643)
      {
        if (v6 == 1936876644)
        {
          goto LABEL_183;
        }

        v16 = 1936878960;
        goto LABEL_192;
      }

      if (v6 == 1936744803)
      {
        goto LABEL_183;
      }

      if (v6 != 1936876403)
      {
        goto LABEL_208;
      }

      goto LABEL_202;
    }

    if (v6 > 1668443503)
    {
      if (v6 <= 1684893795)
      {
        if (v6 <= 1684238450)
        {
          if (v6 <= 1684104047)
          {
            if (v6 == 1668443504)
            {
              goto LABEL_193;
            }

            if (v6 == 1668577648)
            {
              goto LABEL_186;
            }

            v16 = 1668705648;
            goto LABEL_192;
          }

          if (v6 > 1684107363)
          {
            if (v6 == 1684107364)
            {
              goto LABEL_183;
            }

            v13 = 1684236338;
          }

          else
          {
            if (v6 == 1684104048)
            {
              goto LABEL_186;
            }

            v13 = 1684104051;
          }

LABEL_171:
          if (v6 != v13)
          {
            goto LABEL_208;
          }

          goto LABEL_186;
        }

        if (v6 > 1684498540)
        {
          if (v6 > 1684500588)
          {
            if (v6 == 1684500589)
            {
              goto LABEL_183;
            }

            v15 = 28786;
          }

          else
          {
            if (v6 == 1684498541)
            {
              goto LABEL_183;
            }

            v15 = 26736;
          }

          v7 = v15 | 0x64670000;
          goto LABEL_182;
        }

        if (v6 > 1684365923)
        {
          if (v6 == 1684365924)
          {
            goto LABEL_183;
          }

          v7 = 1684370276;
          goto LABEL_182;
        }

        if (v6 == 1684238451)
        {
          goto LABEL_186;
        }

        v8 = 1684304756;
        goto LABEL_56;
      }

      if (v6 <= 1685287010)
      {
        if (v6 > 1685276754)
        {
          if ((v6 - 1685278561) <= 0x11 && ((1 << (v6 - 97)) & 0x20003) != 0)
          {
            goto LABEL_183;
          }

          v7 = 1685276755;
          goto LABEL_182;
        }

        if (v6 == 1684893796)
        {
          goto LABEL_183;
        }

        if (v6 != 1685025633)
        {
          v7 = 1685087596;
          goto LABEL_182;
        }

        goto LABEL_186;
      }

      if (v6 <= 1685483629)
      {
        if ((v6 - 1685287011) < 2)
        {
          goto LABEL_183;
        }

        if (v6 == 1685287523)
        {
LABEL_202:
          v11 = a2[1];
          v12 = 1768845428;
LABEL_203:
          if (v11 == v12)
          {
            goto LABEL_183;
          }

          goto LABEL_207;
        }

        v8 = 1685288051;
LABEL_56:
        if (v6 != v8)
        {
          goto LABEL_208;
        }

        v11 = a2[1];
        v12 = 1869968496;
        goto LABEL_203;
      }

      if (v6 == 1685483630)
      {
        goto LABEL_183;
      }

      if (v6 == 1685484390)
      {
        goto LABEL_193;
      }

      v17 = 1701733224;
LABEL_123:
      if (v6 != v17)
      {
        goto LABEL_208;
      }

      v18 = a2[1];
      v19 = 1768845428;
      goto LABEL_198;
    }

    if (v6 > 1635083360)
    {
      if (v6 <= 1650881393)
      {
        if (v6 > 1635152992)
        {
          v10 = v6 - 1635152993;
          if (v10 <= 0xE && ((1 << v10) & 0x4015) != 0)
          {
            goto LABEL_183;
          }

          goto LABEL_208;
        }

        if (v6 == 1635083361 || v6 == 1635083378)
        {
          if (a2[1] == 1768845428)
          {
            v4 = sub_54800(a1) ^ 1;
            goto LABEL_186;
          }

          goto LABEL_207;
        }

        v17 = 1635148648;
        goto LABEL_123;
      }

      if (v6 > 1651861091)
      {
        if (v6 <= 1668047202)
        {
          if (v6 == 1651861092)
          {
            goto LABEL_186;
          }

          v13 = 1667658618;
          goto LABEL_171;
        }

        if (v6 == 1668047203)
        {
          goto LABEL_183;
        }

        if (v6 != 1668247661)
        {
          goto LABEL_208;
        }

        (*(**(a1 + 872) + 504))(buf);
        v22 = *&v38[4];
        if (!*&v38[4])
        {
          goto LABEL_166;
        }

        v23 = &v38[4];
        do
        {
          v24 = v22;
          v25 = v23;
          v26 = *(v22 + 28);
          if (v26 >= 0x70636F70)
          {
            v23 = v22;
          }

          v22 = *(v22 + 8 * (v26 < 0x70636F70));
        }

        while (v22);
        if (v23 == &v38[4])
        {
          goto LABEL_166;
        }

        if (v26 < 0x70636F70)
        {
          v24 = v25;
        }

        if (*(v24 + 7) > 0x70636F70u)
        {
LABEL_166:
          v23 = &v38[4];
        }

        (*(**(a1 + 872) + 504))(&v34);
        sub_477A0(v35);
        sub_477A0(*&v38[4]);
        if (v23 != &v35)
        {
          v27 = (*(**(a1 + 872) + 368))(*(a1 + 872), 1685287015, 2019976293, 0);
LABEL_185:
          v4 = v27;
          goto LABEL_186;
        }

LABEL_207:
        v4 = 0;
        goto LABEL_186;
      }

      if (v6 != 1650881394)
      {
        if (v6 == 1651664739)
        {
          goto LABEL_183;
        }

        v7 = 1651798898;
        goto LABEL_182;
      }
    }

    else
    {
      if (v6 <= 1633973867)
      {
        if (v6 <= 1633904998)
        {
          if (v6 == 1165513555 || v6 == 1633776747)
          {
            goto LABEL_183;
          }

          v9 = 25449;
        }

        else
        {
          if (v6 > 1633907569)
          {
            if (v6 == 1633907570)
            {
              goto LABEL_183;
            }

            v13 = 1633970532;
            goto LABEL_171;
          }

          if (v6 == 1633904999)
          {
            goto LABEL_183;
          }

          v9 = 28525;
        }

        v7 = v9 | 0x61630000;
        goto LABEL_182;
      }

      if (v6 > 1634692198)
      {
        if (v6 > 1634890858)
        {
          if (v6 == 1634890859)
          {
            goto LABEL_183;
          }

          v7 = 1635020147;
        }

        else
        {
          if (v6 == 1634692199)
          {
            goto LABEL_183;
          }

          v7 = 1634755428;
        }

        goto LABEL_182;
      }

      if (v6 == 1633973868)
      {
        goto LABEL_183;
      }

      if (v6 != 1634035054)
      {
        v13 = 1634300531;
        goto LABEL_171;
      }
    }

LABEL_139:
    v20 = a2[1];
    v21 = v20 == 1869968496 || v20 == 1768845428;
    goto LABEL_199;
  }

  v3 = atomic_load((a1 + 952));
  return v3 != 0;
}

_BYTE *sub_163C8(uint64_t a1, int *a2, uint64_t a3, char *a4, UInt32 *a5, double *a6)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v145 = sub_5544(14);
    if (*v145 && os_log_type_enabled(*v145, OS_LOG_TYPE_ERROR))
    {
      v186 = *a2;
      LODWORD(v187[0]) = a2[2];
      sub_22CE0(cf, &v186);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v147 = sub_5544(14);
    if (*v147 && os_log_type_enabled(*v147, OS_LOG_TYPE_ERROR))
    {
      v186 = *a2;
      LODWORD(v187[0]) = a2[2];
      sub_22CE0(cf, &v186);
    }

    v148 = __cxa_allocate_exception(0x10uLL);
    *v148 = &off_6DDDD0;
    v148[2] = 561211770;
  }

  if (!a6)
  {
    v149 = sub_5544(14);
    if (*v149 && os_log_type_enabled(*v149, OS_LOG_TYPE_ERROR))
    {
      v186 = *a2;
      LODWORD(v187[0]) = a2[2];
      sub_22CE0(cf, &v186);
    }

    v150 = __cxa_allocate_exception(0x10uLL);
    *v150 = &off_6DDDD0;
    v150[2] = 561211770;
  }

  if (*a2 == 1651798132)
  {
    v12 = atomic_load((a1 + 952));

    return AudioObjectGetPropertyData(v12, a2, a3, a4, a5, a6);
  }

  sub_27A4();
  v188 = (*(qword_6E94F8 + 16))();
  v14 = *a2;
  if (*a2 <= 1702248803)
  {
    if (v14 > 1668443503)
    {
      if (v14 <= 1684893795)
      {
        if (v14 > 1684238450)
        {
          if (v14 <= 1684498540)
          {
            if (v14 <= 1684365923)
            {
              if (v14 != 1684238451)
              {
                v15 = 1684304756;
                goto LABEL_227;
              }

              v95 = *a5;
              if (v95 == (*(*a1 + 64))(a1, a2, a3, a4))
              {
                memset(cf, 0, 24);
                sub_4625C(cf, a4, &a4[4 * (a3 >> 2)], a3 >> 2);
                *buf = *cf;
                *&buf[16] = *&cf[16];
                strcpy(&buf[24], "cwdv");
                BYTE2(v197) = 0;
                LODWORD(v199) = 3;
                *(&v200 + 1) = 0;
                v201 = 0;
                *&v200 = &v200 + 8;
                v202 = 44739242;
                v204 = 0;
                v205 = 0;
                v203 = 0;
                (*(**(a1 + 872) + 512))(cf);
                sub_179A58(&v186, a1, cf, a2[1]);
                sub_65310(cf);
                sub_1141D8(&v180, v186, v187);
                v96 = sub_5544(2);
                v97 = sub_5544(35);
                v98 = 0;
                *cf = 0x100000002;
                v99 = *(v96 + 8);
                while (1)
                {
                  v100 = *&cf[v98];
                  if (((v99 & v100) != 0) != ((*(v97 + 8) & v100) != 0))
                  {
                    break;
                  }

                  v98 += 4;
                  if (v98 == 8)
                  {
                    goto LABEL_397;
                  }
                }

                if ((v99 & v100) == 0)
                {
                  v96 = v97;
                }

                v99 = *(v96 + 8);
LABEL_397:
                if (v99)
                {
                  v137 = *v96;
                  if (v137)
                  {
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
                    {
                      p_p = &__p;
                      std::to_string(&__p, *(a1 + 8));
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_p = __p.__r_.__value_.__r.__words[0];
                      }

                      v139 = &v184;
                      sub_22170(&v184, a2[1]);
                      if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v139 = v184.__r_.__value_.__r.__words[0];
                      }

                      sub_10898C(&v183, *buf, *&buf[8]);
                      v140 = SHIBYTE(v183.__r_.__value_.__r.__words[2]);
                      v141 = v183.__r_.__value_.__r.__words[0];
                      sub_B13D8(&v182, v180.__r_.__value_.__l.__data_);
                      v142 = &v183;
                      if (v140 < 0)
                      {
                        v142 = v141;
                      }

                      if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v143 = &v182;
                      }

                      else
                      {
                        v143 = v182.__r_.__value_.__r.__words[0];
                      }

                      *cf = 136316418;
                      *&cf[4] = "VirtualAudio_Device.cpp";
                      *&cf[12] = 1024;
                      *&cf[14] = 2608;
                      *&cf[18] = 2080;
                      *&cf[20] = p_p;
                      v190 = 2080;
                      v191 = v139;
                      v192 = 2080;
                      v193 = v142;
                      v194 = 2080;
                      v195 = v143;
                      _os_log_impl(&dword_0, v137, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning connected ports for device id %s, scope '%s' and VirtualAudioPortTypes %s: %s", cf, 0x3Au);
                      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v182.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v183.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v184.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }
                  }
                }

                if (v180.__r_.__value_.__r.__words[0])
                {
                  CFRetain(v180.__r_.__value_.__l.__data_);
                  v144 = v180.__r_.__value_.__r.__words[0];
                }

                else
                {
                  v144 = 0;
                }

                *a6 = v144;
                sub_A0804(&v180);
                sub_477A0(v187[0]);
                sub_46934(buf);
                goto LABEL_231;
              }

              v169 = sub_5544(14);
              if (*v169 && os_log_type_enabled(*v169, OS_LOG_TYPE_ERROR))
              {
                v186 = *a2;
                LODWORD(v187[0]) = a2[2];
                sub_22CE0(cf, &v186);
              }

LABEL_519:
              v177 = 561211770;
LABEL_520:
              v179 = __cxa_allocate_exception(0x10uLL);
              *v179 = &off_6DDDD0;
              v179[2] = v177;
            }

            if (v14 != 1684365924)
            {
              v15 = 1684370276;
              goto LABEL_227;
            }

LABEL_228:
            v56 = *a5;
            if (v56 == (*(*a1 + 64))(a1, a2, a3, a4))
            {
              goto LABEL_229;
            }

            v151 = sub_5544(14);
            if (*v151 && os_log_type_enabled(*v151, OS_LOG_TYPE_ERROR))
            {
              v186 = *a2;
              LODWORD(v187[0]) = a2[2];
              sub_22CE0(cf, &v186);
            }

            goto LABEL_519;
          }

          if (v14 > 1684500588)
          {
            if (v14 == 1684500589)
            {
              goto LABEL_228;
            }

            v34 = 28786;
          }

          else
          {
            if (v14 == 1684498541)
            {
              goto LABEL_228;
            }

            v34 = 26736;
          }

          v15 = v34 | 0x64670000;
LABEL_227:
          if (v14 == v15)
          {
            goto LABEL_228;
          }

LABEL_293:
          sub_56740(a1, a2, a3, a4, a5, a6);
          goto LABEL_231;
        }

        if (v14 > 1684104047)
        {
          if (v14 <= 1684107363)
          {
            if (v14 != 1684104048)
            {
              if (v14 != 1684104051)
              {
                goto LABEL_293;
              }

              v23 = *a5;
              if (v23 != (*(*a1 + 64))(a1, a2, a3, a4))
              {
                v157 = sub_5544(14);
                if (*v157 && os_log_type_enabled(*v157, OS_LOG_TYPE_ERROR))
                {
                  v186 = *a2;
                  LODWORD(v187[0]) = a2[2];
                  sub_22CE0(cf, &v186);
                }

                goto LABEL_519;
              }

              memset(cf, 0, 24);
              sub_4625C(cf, a4, &a4[4 * (a3 >> 2)], a3 >> 2);
              v187[0] = 0;
              v187[1] = 0;
              __p.__r_.__value_.__r.__words[2] = &v186;
              v186 = v187;
              __p.__r_.__value_.__r.__words[0] = a1;
              __p.__r_.__value_.__l.__size_ = cf;
              v24 = a2[1];
              if (v24 == 1768845428 || v24 == 1735159650)
              {
                sub_2152B8(&__p, 1);
                v24 = a2[1];
              }

              if (v24 == 1869968496 || v24 == 1735159650)
              {
                sub_2152B8(&__p, 0);
              }

              sub_1141D8(v181, v186, v187);
              v25 = sub_5544(2);
              v26 = sub_5544(35);
              v27 = 0;
              *buf = 0x100000002;
              v28 = *(v25 + 8);
              while (1)
              {
                v29 = *&buf[v27];
                if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
                {
                  break;
                }

                v27 += 4;
                if (v27 == 8)
                {
                  goto LABEL_372;
                }
              }

              if ((v28 & v29) == 0)
              {
                v25 = v26;
              }

              v28 = *(v25 + 8);
LABEL_372:
              if (v28)
              {
                v129 = *v25;
                if (v129)
                {
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
                  {
                    v130 = &v184;
                    std::to_string(&v184, *(a1 + 8));
                    if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v130 = v184.__r_.__value_.__r.__words[0];
                    }

                    v131 = &v183;
                    sub_22170(&v183, a2[1]);
                    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v131 = v183.__r_.__value_.__r.__words[0];
                    }

                    sub_10898C(&v182, *cf, *&cf[8]);
                    v132 = SHIBYTE(v182.__r_.__value_.__r.__words[2]);
                    v133 = v182.__r_.__value_.__r.__words[0];
                    sub_B13D8(&v180, v181[0]);
                    v134 = &v182;
                    if (v132 < 0)
                    {
                      v134 = v133;
                    }

                    if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v135 = &v180;
                    }

                    else
                    {
                      v135 = v180.__r_.__value_.__r.__words[0];
                    }

                    *buf = 136316418;
                    *&buf[4] = "VirtualAudio_Device.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 2654;
                    *&buf[18] = 2080;
                    *&buf[20] = v130;
                    *&buf[28] = 2080;
                    v197 = v131;
                    v198 = 2080;
                    v199 = v134;
                    LOWORD(v200) = 2080;
                    *(&v200 + 2) = v135;
                    _os_log_impl(&dword_0, v129, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning active streams for device id %s, scope '%s' and VirtualAudioPortTypes %s: %s", buf, 0x3Au);
                    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v180.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v182.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v183.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v184.__r_.__value_.__l.__data_);
                    }
                  }
                }
              }

              if (v181[0])
              {
                CFRetain(v181[0]);
                v136 = v181[0];
              }

              else
              {
                v136 = 0;
              }

              *a6 = v136;
              sub_A0804(v181);
              sub_477A0(v187[0]);
              v46 = *cf;
              if (!*cf)
              {
                goto LABEL_231;
              }

              *&cf[8] = *cf;
              goto LABEL_425;
            }

            goto LABEL_280;
          }

          if (v14 == 1684107364)
          {
            goto LABEL_228;
          }

          if (v14 != 1684236338 || a2[1] != 1869968496 || !(*(**(a1 + 872) + 352))(*(a1 + 872)))
          {
            goto LABEL_293;
          }

          v49 = *a5;
          if (v49 < (*(*a1 + 64))(a1, a2, a3, a4))
          {
            v178 = sub_5544(14);
            if (*v178 && os_log_type_enabled(*v178, OS_LOG_TYPE_ERROR))
            {
              v186 = *a2;
              LODWORD(v187[0]) = a2[2];
              sub_22CE0(cf, &v186);
            }

            goto LABEL_519;
          }

          v50 = (*(**(a1 + 872) + 360))(*(a1 + 872));
LABEL_300:
          *a6 = v50;
          goto LABEL_231;
        }

        if (v14 != 1668443504)
        {
          if (v14 != 1668577648)
          {
            v22 = 1668705648;
LABEL_221:
            if (v14 != v22)
            {
              goto LABEL_293;
            }

            goto LABEL_222;
          }

          v108 = *a5;
          if (v108 != (*(*a1 + 64))(a1, a2, a3, a4))
          {
            v170 = sub_5544(14);
            if (*v170 && os_log_type_enabled(*v170, OS_LOG_TYPE_ERROR))
            {
              v186 = *a2;
              LODWORD(v187[0]) = a2[2];
              sub_22CE0(cf, &v186);
            }

            goto LABEL_519;
          }

          v19 = *(a1 + 984);
LABEL_421:
          *a6 = v19;
          goto LABEL_231;
        }

LABEL_222:
        v54 = *(a1 + 792);
        if (v54)
        {
          v55 = (*v54 + 72);
LABEL_230:
          (*v55)();
          goto LABEL_231;
        }

        v152 = sub_5544(14);
        v153 = *v152;
        if (*v152 && os_log_type_enabled(*v152, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2734;
          _os_log_impl(&dword_0, v153, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        goto LABEL_449;
      }

      if (v14 <= 1685287010)
      {
        if (v14 > 1685276754)
        {
          if ((v14 - 1685278561) <= 0x11 && ((1 << (v14 - 97)) & 0x20003) != 0)
          {
            goto LABEL_228;
          }

          v20 = 18515;
          goto LABEL_63;
        }

        if (v14 == 1684893796)
        {
          goto LABEL_228;
        }

        if (v14 != 1685025633)
        {
          v15 = 1685087596;
          goto LABEL_227;
        }

        v102 = *(a1 + 304);
        v103 = *(a1 + 312);
        if (((v103 - v102) & 0x7FFFFFFF8) != 0)
        {
          if (v103 == v102)
          {
            v88 = 0;
          }

          else
          {
            v88 = *v102;
          }

LABEL_429:
          (*(*v88 + 72))(v88, a2, a3, a4, a5, a6);
          goto LABEL_231;
        }

LABEL_349:
        v94 = 0;
        goto LABEL_350;
      }

      if (v14 <= 1685483629)
      {
        if ((v14 - 1685287011) < 2 || v14 == 1685287523)
        {
          goto LABEL_228;
        }

        v20 = 29811;
LABEL_63:
        v15 = v20 | 0x64730000;
        goto LABEL_227;
      }

      if (v14 != 1685483630)
      {
        if (v14 == 1685484390)
        {
          goto LABEL_222;
        }

        if (v14 != 1701733224)
        {
          goto LABEL_293;
        }

        v35 = *a5;
        if (v35 < (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v161 = sub_5544(14);
          if (*v161 && os_log_type_enabled(*v161, OS_LOG_TYPE_ERROR))
          {
            v186 = *a2;
            LODWORD(v187[0]) = a2[2];
            sub_22CE0(cf, &v186);
          }

          goto LABEL_519;
        }

        strcpy(buf, "scapbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        sub_2153AC(cf, a1, buf);
        v36 = sub_5544(1);
        if ((*(v36 + 8) & 1) != 0 && *v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
        {
          v184.__r_.__value_.__r.__words[0] = *a2;
          LODWORD(v184.__r_.__value_.__r.__words[1]) = a2[2];
          sub_22CE0(&v186, &v184);
        }

        goto LABEL_158;
      }

      v112 = sub_5544(1);
      v39 = *v112;
      if (*v112 && os_log_type_enabled(*v112, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2565;
        v40 = "%25s:%-5d kAudioDevicePropertyVoiceProcessingIsEnabled is a write-only property";
        goto LABEL_333;
      }

LABEL_334:
      *a5 = 0;
      goto LABEL_231;
    }

    if (v14 <= 1635083360)
    {
      if (v14 <= 1633973867)
      {
        if (v14 <= 1633904998)
        {
          if (v14 == 1165513555 || v14 == 1633776747)
          {
            goto LABEL_228;
          }

          v16 = 25449;
        }

        else
        {
          if (v14 > 1633907569)
          {
            if (v14 != 1633907570)
            {
              v15 = 1633970532;
              goto LABEL_227;
            }

            goto LABEL_228;
          }

          if (v14 == 1633904999)
          {
            goto LABEL_228;
          }

          v16 = 28525;
        }

        v15 = v16 | 0x61630000;
        goto LABEL_227;
      }

      if (v14 > 1634692198)
      {
        if (v14 > 1634890858)
        {
          if (v14 != 1634890859)
          {
            v15 = 1635020147;
            goto LABEL_227;
          }
        }

        else if (v14 != 1634692199)
        {
          v15 = 1634755428;
          goto LABEL_227;
        }

        goto LABEL_228;
      }

      if (v14 == 1633973868)
      {
        goto LABEL_228;
      }

      if (v14 != 1634035054)
      {
        if (v14 != 1634300531)
        {
          goto LABEL_293;
        }

        v45 = *(a1 + 872);
        memset(buf, 0, 24);
        sub_1215C(buf, *(v45 + 144), *(v45 + 152), (*(v45 + 152) - *(v45 + 144)) >> 3);
        v43 = *buf;
        sub_209124(*buf, *&buf[8], a5, a6);
LABEL_168:
        if (v43)
        {
          v46 = v43;
          goto LABEL_425;
        }

        goto LABEL_231;
      }

      v109 = *a5;
      if (v109 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v171 = sub_5544(14);
        if (*v171 && os_log_type_enabled(*v171, OS_LOG_TYPE_ERROR))
        {
          v186 = *a2;
          LODWORD(v187[0]) = a2[2];
          sub_22CE0(cf, &v186);
        }

        goto LABEL_519;
      }

      v110 = a2[1];
      if (v110 == 1768845428)
      {
        v111 = 408;
        goto LABEL_420;
      }

      if (v110 == 1869968496)
      {
        v111 = 409;
LABEL_420:
        v19 = *(a1 + v111);
        goto LABEL_421;
      }

      v176 = sub_5544(14);
      v122 = *v176;
      if (*v176 && os_log_type_enabled(*v176, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2661;
        v123 = "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): invalid property scope for kVirtualAudioDevicePropertyAudioEnhancementProcessingIsEnabled";
        goto LABEL_514;
      }

      goto LABEL_515;
    }

    if (v14 <= 1650881393)
    {
      if (v14 > 1635152992)
      {
        v21 = v14 - 1635152993;
        if (v21 <= 0xE && ((1 << v21) & 0x4015) != 0)
        {
          goto LABEL_228;
        }

        goto LABEL_293;
      }

      if (v14 != 1635083361 && v14 != 1635083378)
      {
        if (v14 != 1635148648)
        {
          goto LABEL_293;
        }

        v41 = *a5;
        if (v41 < (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v163 = sub_5544(14);
          if (*v163 && os_log_type_enabled(*v163, OS_LOG_TYPE_ERROR))
          {
            v186 = *a2;
            LODWORD(v187[0]) = a2[2];
            sub_22CE0(cf, &v186);
          }

          goto LABEL_519;
        }

        strcpy(buf, "bsapbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        sub_2153AC(cf, a1, buf);
        v42 = sub_5544(1);
        if ((*(v42 + 8) & 1) != 0 && *v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
        {
          v184.__r_.__value_.__r.__words[0] = *a2;
          LODWORD(v184.__r_.__value_.__r.__words[1]) = a2[2];
          sub_22CE0(&v186, &v184);
        }

LABEL_158:
        v43 = *cf;
        v44 = *&cf[8] - *cf;
        if (*&cf[8] != *cf)
        {
          memmove(a6, *cf, *&cf[8] - *cf);
        }

        *a5 = v44;
        goto LABEL_168;
      }

      v84 = sub_5544(1);
      v39 = *v84;
      if (!*v84 || !os_log_type_enabled(*v84, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_334;
      }

      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2720;
      v40 = "%25s:%-5d Audit token management props are a write-only properties";
      goto LABEL_333;
    }

    if (v14 <= 1651861091)
    {
      if (v14 != 1650881394)
      {
        if (v14 != 1651664739)
        {
          v15 = 1651798898;
          goto LABEL_227;
        }

        goto LABEL_228;
      }

      v119 = *a5;
      if (v119 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v173 = sub_5544(14);
        if (*v173 && os_log_type_enabled(*v173, OS_LOG_TYPE_ERROR))
        {
          v186 = *a2;
          LODWORD(v187[0]) = a2[2];
          sub_22CE0(cf, &v186);
        }

        goto LABEL_519;
      }

      v120 = a2[1];
      if (v120 == 1768845428 || v120 == 1869968496)
      {
        goto LABEL_229;
      }

      v121 = sub_5544(14);
      v122 = *v121;
      if (*v121 && os_log_type_enabled(*v121, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2667;
        v123 = "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): invalid property scope for kVirtualAudioDevicePropertyBufferFrameSizeIsRestricted";
LABEL_514:
        _os_log_impl(&dword_0, v122, OS_LOG_TYPE_ERROR, v123, buf, 0x12u);
      }

LABEL_515:
      v177 = 2003332927;
      goto LABEL_520;
    }

    if (v14 > 1668047202)
    {
      if (v14 == 1668047203)
      {
        goto LABEL_228;
      }

      if (v14 != 1668247661)
      {
        goto LABEL_293;
      }

      v19 = (*(**(a1 + 872) + 376))(*(a1 + 872), 1685287015, 2019976293, 0);
      goto LABEL_421;
    }

    if (v14 == 1651861092)
    {
      v91 = *a5;
      if (v91 == (*(*a1 + 64))(a1, a2, a3, a4))
      {
        *cf = 0;
        LODWORD(v186) = 4;
        *buf = 1718839674;
        *&buf[4] = *(a2 + 1);
        (*(*a1 + 72))(a1, buf, 0, 0, &v186, cf);
        v92 = (*(*a1 + 648))(a1);
        LODWORD(v93) = *cf;
        sub_2161C0(a5, a6, v93 / v92);
        goto LABEL_231;
      }

      v168 = sub_5544(14);
      if (*v168 && os_log_type_enabled(*v168, OS_LOG_TYPE_ERROR))
      {
        v186 = *a2;
        LODWORD(v187[0]) = a2[2];
        sub_22CE0(cf, &v186);
      }

      goto LABEL_519;
    }

    if (v14 != 1667658618)
    {
      goto LABEL_293;
    }

    v31 = *a5;
    if (v31 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v159 = sub_5544(14);
      if (*v159 && os_log_type_enabled(*v159, OS_LOG_TYPE_ERROR))
      {
        v186 = *a2;
        LODWORD(v187[0]) = a2[2];
        sub_22CE0(cf, &v186);
      }

      goto LABEL_519;
    }

    v32 = sub_214E14(a1, *a6);
LABEL_205:
    *a6 = v32;
    goto LABEL_231;
  }

  if (v14 <= 1919774834)
  {
    if (v14 > 1853059699)
    {
      if (v14 > 1886413411)
      {
        if (v14 <= 1886807153)
        {
          if (v14 == 1886413412 || v14 == 1886413426)
          {
            goto LABEL_228;
          }

          v15 = 1886807139;
          goto LABEL_227;
        }

        if (v14 > 1918987631)
        {
          if (v14 != 1918987632)
          {
            v15 = 1919773028;
            goto LABEL_227;
          }

          goto LABEL_222;
        }

        if (v14 == 1886807154)
        {
          goto LABEL_228;
        }

        if (v14 != 1902539642)
        {
          goto LABEL_293;
        }

        v33 = *a5;
        if (v33 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v160 = sub_5544(14);
          if (*v160 && os_log_type_enabled(*v160, OS_LOG_TYPE_ERROR))
          {
            v186 = *a2;
            LODWORD(v187[0]) = a2[2];
            sub_22CE0(cf, &v186);
          }

          goto LABEL_519;
        }

        v19 = *(a1 + 272);
        goto LABEL_421;
      }

      if (v14 <= 1869838182)
      {
        if (v14 != 1853059700)
        {
          if (v14 != 1869574756)
          {
            v15 = 1869575794;
            goto LABEL_227;
          }

          goto LABEL_228;
        }

        v113 = *a5;
        if (v113 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v172 = sub_5544(14);
          if (*v172 && os_log_type_enabled(*v172, OS_LOG_TYPE_ERROR))
          {
            v186 = *a2;
            LODWORD(v187[0]) = a2[2];
            sub_22CE0(cf, &v186);
          }

          goto LABEL_519;
        }

        sub_56740(a1, a2, a3, a4, a5, a6);
        if (sub_B4754(*(a1 + 304), *(a1 + 312)) && sub_212ECC(*(a1 + 872)))
        {
          *a6 = *a6 * 0.0625;
        }

        v114 = sub_5544(1);
        v115 = sub_5544(37);
        v116 = 0;
        *buf = 0x100000002;
        v117 = *(v114 + 8);
        while (1)
        {
          v118 = *&buf[v116];
          if (((v117 & v118) != 0) != ((*(v115 + 8) & v118) != 0))
          {
            break;
          }

          v116 += 4;
          if (v116 == 8)
          {
            goto LABEL_361;
          }
        }

        if ((v117 & v118) == 0)
        {
          v114 = v115;
        }

        v117 = *(v114 + 8);
LABEL_361:
        if ((v117 & 1) == 0)
        {
          goto LABEL_231;
        }

        v126 = *v114;
        if (!v126 || !os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_231;
        }

        v127 = *a6;
        v186 = *(a1 + 384);
        sub_68108(cf, &v186);
        v128 = cf[23] >= 0 ? cf : *cf;
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2531;
        *&buf[18] = 2048;
        *&buf[20] = v127;
        *&buf[28] = 2080;
        v197 = v128;
        _os_log_impl(&dword_0, v126, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client request to get nominal sample rate (%f) on VAD: '%s'.", buf, 0x26u);
        if ((cf[23] & 0x80000000) == 0)
        {
          goto LABEL_231;
        }

        v46 = *cf;
LABEL_425:
        operator delete(v46);
        goto LABEL_231;
      }

      if (v14 <= 1885631345)
      {
        if (v14 != 1869838183)
        {
          v15 = 1885434482;
          goto LABEL_227;
        }

        v89 = *a5;
        if (v89 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v167 = sub_5544(14);
          if (*v167 && os_log_type_enabled(*v167, OS_LOG_TYPE_ERROR))
          {
            v186 = *a2;
            LODWORD(v187[0]) = a2[2];
            sub_22CE0(cf, &v186);
          }

          goto LABEL_519;
        }

        v50 = caulk::mach::details::retain_os_object(*(*(a1 + 944) + 8), v90);
        goto LABEL_300;
      }

      if (v14 == 1885631346)
      {
        goto LABEL_228;
      }

      if (v14 != 1886216547)
      {
        goto LABEL_293;
      }

      v52 = *a5;
      if (v52 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v165 = sub_5544(14);
        if (*v165 && os_log_type_enabled(*v165, OS_LOG_TYPE_ERROR))
        {
          v186 = *a2;
          LODWORD(v187[0]) = a2[2];
          sub_22CE0(cf, &v186);
        }

        goto LABEL_519;
      }

      v32 = (*(**(a1 + 872) + 240))(*(a1 + 872));
      goto LABEL_205;
    }

    if (v14 <= 1769302371)
    {
      if (v14 <= 1718641516)
      {
        if (v14 == 1702248804 || v14 == 1702392685)
        {
          goto LABEL_228;
        }

        if (v14 != 1718383987)
        {
          goto LABEL_293;
        }

        v38 = sub_5544(1);
        v39 = *v38;
        if (!*v38 || !os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_334;
        }

        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2713;
        v40 = "%25s:%-5d kVirtualAudioDeviceSilenceOutputImmediately is a write-only property";
        goto LABEL_333;
      }

      if (v14 <= 1735682403)
      {
        if (v14 != 1718641517)
        {
          if (v14 != 1719165555)
          {
            goto LABEL_293;
          }

          v17 = *a5;
          if (v17 != (*(*a1 + 64))(a1, a2, a3, a4))
          {
            v156 = sub_5544(14);
            if (*v156 && os_log_type_enabled(*v156, OS_LOG_TYPE_ERROR))
            {
              v186 = *a2;
              LODWORD(v187[0]) = a2[2];
              sub_22CE0(cf, &v186);
            }

            goto LABEL_519;
          }

          v18 = (*(**(a1 + 872) + 560))(*(a1 + 872), a2[1]);
          if ((v18 & 0x100000000) != 0)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_421;
        }

        v86 = *(a1 + 304);
        v87 = *(a1 + 312);
        if (((v87 - v86) & 0x7FFFFFFF8) != 0)
        {
          if (v87 == v86)
          {
            v88 = 0;
          }

          else
          {
            v88 = *v86;
          }

          goto LABEL_429;
        }

        goto LABEL_349;
      }

      if (v14 == 1735682404)
      {
        goto LABEL_228;
      }

      if (v14 != 1752657012)
      {
        goto LABEL_293;
      }

      v51 = *a5;
      if (v51 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v164 = sub_5544(14);
        if (*v164 && os_log_type_enabled(*v164, OS_LOG_TYPE_ERROR))
        {
          v186 = *a2;
          LODWORD(v187[0]) = a2[2];
          sub_22CE0(cf, &v186);
        }

        goto LABEL_519;
      }

      v32 = sub_1630D0(*(a1 + 872), a2[1] == 1768845428);
      goto LABEL_205;
    }

    if (v14 <= 1836348004)
    {
      if (v14 == 1769302372 || v14 == 1818326127)
      {
        goto LABEL_228;
      }

      v15 = 1835888484;
      goto LABEL_227;
    }

    if (v14 <= 1852729710)
    {
      if (v14 != 1836348005)
      {
        if (v14 != 1852012899)
        {
          goto LABEL_293;
        }

        v30 = *a5;
        if (v30 == (*(*a1 + 64))(a1, a2, a3, a4))
        {
          goto LABEL_229;
        }

        v158 = sub_5544(14);
        if (*v158 && os_log_type_enabled(*v158, OS_LOG_TYPE_ERROR))
        {
          v186 = *a2;
          LODWORD(v187[0]) = a2[2];
          sub_22CE0(cf, &v186);
        }

        goto LABEL_519;
      }

      goto LABEL_228;
    }

    if (v14 == 1852729711)
    {
      v94 = (*(**(a1 + 872) + 480))(*(a1 + 872));
LABEL_350:
      sub_5440C(v94, a5, a6);
      goto LABEL_231;
    }

    if (v14 != 1853059619)
    {
      goto LABEL_293;
    }

    v53 = *a5;
    if (v53 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v166 = sub_5544(14);
      if (*v166 && os_log_type_enabled(*v166, OS_LOG_TYPE_ERROR))
      {
        v186 = *a2;
        LODWORD(v187[0]) = a2[2];
        sub_22CE0(cf, &v186);
      }

      goto LABEL_519;
    }

    sub_D6978(buf, a1, a2[1]);
    sub_215088(buf, a5, a6);
    sub_477A0(*&buf[8]);
  }

  else
  {
    if (v14 > 1953002092)
    {
      if (v14 <= 1983997010)
      {
        if (v14 <= 1969318243)
        {
          if (v14 == 1953002093 || v14 == 1953002354)
          {
            goto LABEL_228;
          }

          v15 = 1953719148;
          goto LABEL_227;
        }

        if (v14 <= 1970303086)
        {
          if (v14 == 1969318244)
          {
            v85 = (*(**(a1 + 872) + 120))(*(a1 + 872));
            sub_5440C(v85, a5, a6);
            goto LABEL_231;
          }

          v15 = 1969844082;
          goto LABEL_227;
        }

        if (v14 != 1970303087)
        {
          v15 = 1983996971;
          goto LABEL_227;
        }

LABEL_280:
        v81 = *a5;
        if (v81 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v155 = sub_5544(14);
          if (*v155 && os_log_type_enabled(*v155, OS_LOG_TYPE_ERROR))
          {
            v186 = *a2;
            LODWORD(v187[0]) = a2[2];
            sub_22CE0(cf, &v186);
          }

          goto LABEL_519;
        }

        if ((a3 | 4) == 4)
        {
          *&buf[8] = 0;
          *&buf[16] = 0;
          *buf = &buf[8];
          v82 = a2[1];
          if (v82 == 1768845428 || v82 == 1735159650)
          {
            sub_47714(buf, *(a1 + 880), (a1 + 888));
            v82 = a2[1];
          }

          if (v82 == 1869968496 || v82 == 1735159650)
          {
            sub_47714(buf, *(a1 + 904), (a1 + 912));
          }

          sub_1141D8(cf, *buf, &buf[8]);
          if (*cf)
          {
            CFRetain(*cf);
            v83 = *cf;
          }

          else
          {
            v83 = 0;
          }

          *a6 = v83;
          sub_A0804(cf);
          sub_477A0(*&buf[8]);
          goto LABEL_231;
        }

        v174 = sub_5544(14);
        v175 = *v174;
        if (*v174 && os_log_type_enabled(*v174, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2574;
          _os_log_impl(&dword_0, v175, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

LABEL_449:
        v154 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v154, "Precondition failure.");
      }

      if (v14 <= 1986294895)
      {
        if (v14 <= 1986225267)
        {
          if (v14 != 1983997011)
          {
            v15 = 1986225266;
            goto LABEL_227;
          }

          goto LABEL_228;
        }

        if (v14 == 1986225268)
        {
          goto LABEL_228;
        }

        v22 = 1986225518;
        goto LABEL_221;
      }

      if (v14 <= 2020111982)
      {
        if (v14 != 1986294896)
        {
          v15 = 1986361444;
          goto LABEL_227;
        }

        v19 = *(a1 + 384);
        goto LABEL_421;
      }

      if (v14 == 2020111983)
      {
        v101 = sub_5544(1);
        v39 = *v101;
        if (!*v101 || !os_log_type_enabled(*v101, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_334;
        }

        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2707;
        v40 = "%25s:%-5d kVolumeControlSetExternalHWVolumeNotificationHandler is a write-only property";
        goto LABEL_333;
      }

      if (v14 != 2021027692)
      {
        goto LABEL_293;
      }

      v80 = sub_5544(1);
      v39 = *v80;
      if (!*v80 || !os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_334;
      }

      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2701;
      v40 = "%25s:%-5d kVirtualAudioDeviceSetExternalVolumeHandler is a write-only property";
LABEL_333:
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, v40, buf, 0x12u);
      goto LABEL_334;
    }

    if (v14 <= 1936878959)
    {
      if (v14 > 1935962991)
      {
        if (v14 > 1936876402)
        {
          if (v14 != 1936876403)
          {
            if (v14 == 1936876644)
            {
              v47 = *a5;
              if (v47 >= (*(*a1 + 64))(a1, a2, a3, a4))
              {
LABEL_229:
                v55 = (**(a1 + 872) + 40);
                goto LABEL_230;
              }

              v48 = sub_5544(14);
              if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
              {
                v186 = *a2;
                LODWORD(v187[0]) = a2[2];
                sub_22CE0(cf, &v186);
              }

              goto LABEL_519;
            }

            goto LABEL_293;
          }
        }

        else if (v14 != 1935962992)
        {
          v15 = 1936744803;
          goto LABEL_227;
        }

        goto LABEL_228;
      }

      if (v14 != 1919774835)
      {
        if (v14 == 1920165219)
        {
          if (sub_DB94C() && ((v104 = *(*(a1 + 872) + 288), v104 == 0x6563696D63706172) || v104 == 0x6563696D636D696DLL))
          {
            v105 = sub_2162B4(a1);
          }

          else
          {
            v105 = 0;
          }

          v124 = sub_5544(1);
          v125 = *v124;
          if (*v124 && os_log_type_enabled(*v124, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2928;
            *&buf[18] = 1024;
            *&buf[20] = v105;
            _os_log_impl(&dword_0, v125, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route has Echo cancelled input : %u", buf, 0x18u);
          }

          sub_5440C(v105, a5, a6);
          goto LABEL_231;
        }

        v15 = 1935762281;
        goto LABEL_227;
      }

      goto LABEL_222;
    }

    if (v14 > 1937138531)
    {
      if (v14 > 1952997987)
      {
        if (v14 != 1952997988)
        {
          v15 = 1952998002;
          goto LABEL_227;
        }

        goto LABEL_228;
      }

      if (v14 == 1937138532)
      {
        goto LABEL_228;
      }

      v22 = 1937208929;
      goto LABEL_221;
    }

    if (v14 == 1936878960)
    {
      goto LABEL_222;
    }

    if (v14 == 1936879204)
    {
      v106 = *a5;
      if (v106 >= (*(*a1 + 64))(a1, a2, a3, a4))
      {
        goto LABEL_229;
      }

      v107 = sub_5544(14);
      if (*v107 && os_log_type_enabled(*v107, OS_LOG_TYPE_ERROR))
      {
        v186 = *a2;
        LODWORD(v187[0]) = a2[2];
        sub_22CE0(cf, &v186);
      }

      goto LABEL_519;
    }

    if (v14 != 1936946787)
    {
      goto LABEL_293;
    }

    v37 = *a5;
    if (v37 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v162 = sub_5544(14);
      if (*v162 && os_log_type_enabled(*v162, OS_LOG_TYPE_ERROR))
      {
        v186 = *a2;
        LODWORD(v187[0]) = a2[2];
        sub_22CE0(cf, &v186);
      }

      goto LABEL_519;
    }

    *a6 = sub_215C1C(a1);
  }

LABEL_231:
  v57 = *a2;
  if (*a2 == 1987013741)
  {
    v58 = sub_5544(1);
    v59 = sub_5544(39);
    v60 = 0;
    *buf = 0x100000002;
    v61 = *(v58 + 8);
    while (1)
    {
      v62 = *&buf[v60];
      if (((v61 & v62) != 0) != ((*(v59 + 8) & v62) != 0))
      {
        break;
      }

      v60 += 4;
      if (v60 == 8)
      {
        if ((v61 & 1) == 0)
        {
          goto LABEL_243;
        }

        goto LABEL_240;
      }
    }

    if ((v61 & v62) == 0)
    {
      v58 = v59;
    }

    if (*(v58 + 8))
    {
LABEL_240:
      v63 = *v58;
      if (v63 && os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        __p.__r_.__value_.__r.__words[0] = *a2;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = a2[2];
        sub_22CE0(cf, &__p);
      }
    }

LABEL_243:
    v57 = *a2;
    if (*a2 == 1987013741)
    {
      if (a2[2])
      {
        v64 = sub_5544(1);
        if (*(v64 + 8))
        {
          v65 = *v64;
          if (*v64)
          {
            if (os_log_type_enabled(*v64, OS_LOG_TYPE_DEBUG))
            {
              v66 = *a6;
              v67 = a2[2];
              *buf = 136315906;
              *&buf[4] = "VirtualAudio_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2946;
              *&buf[18] = 2048;
              *&buf[20] = v66;
              *&buf[28] = 1024;
              LODWORD(v197) = v67;
              _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d Individual volume %f for %u", buf, 0x22u);
            }
          }
        }
      }

      v57 = *a2;
    }
  }

  if (v57 == 1836414053)
  {
    v68 = sub_5544(1);
    v69 = sub_5544(39);
    v70 = 0;
    *buf = 0x100000002;
    v71 = *(v68 + 8);
    while (1)
    {
      v72 = *&buf[v70];
      if (((v71 & v72) != 0) != ((*(v69 + 8) & v72) != 0))
      {
        break;
      }

      v70 += 4;
      if (v70 == 8)
      {
        if ((v71 & 1) == 0)
        {
          goto LABEL_262;
        }

        goto LABEL_259;
      }
    }

    if ((v71 & v72) == 0)
    {
      v68 = v69;
    }

    if (*(v68 + 8))
    {
LABEL_259:
      v73 = *v68;
      if (v73 && os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        __p.__r_.__value_.__r.__words[0] = *a2;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = a2[2];
        sub_22CE0(cf, &__p);
      }
    }
  }

LABEL_262:
  if (*a2 == 1064725619)
  {
    v74 = sub_5544(1);
    v75 = sub_5544(39);
    v76 = 0;
    *buf = 0x100000002;
    v77 = *(v74 + 8);
    while (1)
    {
      v78 = *&buf[v76];
      if (((v77 & v78) != 0) != ((*(v75 + 8) & v78) != 0))
      {
        break;
      }

      v76 += 4;
      if (v76 == 8)
      {
        if ((v77 & 1) == 0)
        {
          return sub_210C50(&v188);
        }

        goto LABEL_271;
      }
    }

    if ((v77 & v78) == 0)
    {
      v74 = v75;
    }

    if (*(v74 + 8))
    {
LABEL_271:
      v79 = *v74;
      if (v79 && os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
      {
        __p.__r_.__value_.__r.__words[0] = *a2;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = a2[2];
        sub_22CE0(cf, &__p);
      }
    }
  }

  return sub_210C50(&v188);
}